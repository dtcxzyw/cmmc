/*
    SPDX-License-Identifier: Apache-2.0
    Copyright 2022 Yingwei Zheng and Bingzhen Wang
    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at
        http://www.apache.org/licenses/LICENSE-2.0
    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/

%defines
%skeleton "lalr1.cc"
%locations
%define api.token.constructor
%define api.value.type variant
%define api.location.type { std::pair<uint32_t, yy::location> }
%define parse.error verbose
%define api.prefix {SysY}

%code requires {
  #include <cmmc/Support/Arena.hpp>
  #include <cmmc/Frontend/Driver.hpp>
  using namespace cmmc;
}
%param { cmmc::DriverImpl& driver }
%code {

}

%token END 0 "End of file"
// Literals
%token <IntegerStorage> INT "Integer"
%token <double> FLOAT "Float"
%token <char> CHAR "Char"
%token <String> STRING "String"

%token <String> ID "Identifier"
%token <String> TYPE "Type"

// Control Flow Keywords
%token IF ELSE WHILE DO FOR CONTINUE BREAK RETURN GOTO SWITCH CASE
// Qualifier Keywords
%token CONST
// Aggregate Keywords
%token STRUCT UNION
// Unary/Binary Operators
%token INC DEC
%token PLUS MINUS MUL DIV REM
%token NOT BNOT AND BAND OR BOR XOR
%token LT GT LE GE EQ NE
%token ASSIGN
// Compound assignments
%token PLUS_ASSIGN MINUS_ASSIGN MUL_ASSIGN DIV_ASSIGN REM_ASSIGN
%token BAND_ASSIGN BOR_ASSIGN XOR_ASSIGN SHL_ASSIGN SHR_ASSIGN
// Miscellaneous
// . ; , # ? :
%token DOT SEMI COMMA SHARP QUEST COLON
// ( ) [ ] { }
%token LP RP LB RB LC RC
%token ERR

%left COMMA
%right ASSIGN SELECT QUEST COLON PLUS_ASSIGN MINUS_ASSIGN MUL_ASSIGN DIV_ASSIGN REM_ASSIGN BAND_ASSIGN BOR_ASSIGN XOR_ASSIGN SHL_ASSIGN SHR_ASSIGN
%left OR
%left AND
%left BOR
%left XOR
%left BAND
%left EQ NE
%left LT LE GT GE
%left SHL SHR
%left PLUS MINUS
%left MUL DIV REM
%right UPLUS UMINUS BNOT NOT PREFIX_INC PREFIX_DEC INC DEC DEREF ADDRESS EXPLICIT_CAST
%left LB LP DOT SUFFIX_INC SUFFIX_DEC

// Please refer to https://stackoverflow.com/questions/12731922/reforming-the-grammar-to-remove-shift-reduce-conflict-in-if-then-else
%precedence THEN
%precedence ELSE

%%

%type <TypeRef> QualifiedSpecifier;
%type <TypeRef> Specifier;
%type <TypeRef> StructSpecifier;
%type <NamedVar> VarDec;
%type <FunctionDeclaration> FunDec;
%type <ArgList> VarList;
%type <NamedArg> ParamDec;
%type <ExprPack> CompSt;
%type <ExprPack> StmtList;
%type <Expr*> Stmt;
%type <Expr*> Exp;
%type <Expr*> ExpCommaSep;
%type <ExprPack> Args;
%type <VarDefList> DefList;
%type <VarDef> Def;
%type <VarList> DecList;
%type <NamedVar> Dec;
%type <Expr*> Initializer;
%type <ExprPack> InitializerList;
%type <Expr*> ForOptional;

%start Program;

Program: ExtDefList END { driver.markEnd(); CMMC_NONTERMINAL(@$, Program, @1); }
;
ExtDefList: ExtDef ExtDefList { CMMC_NONTERMINAL(@$, ExtDefList, @1, @2); }
| %empty { CMMC_EMPTY(@$, ExtDefList); }
;
ExtDef: QualifiedSpecifier SEMI { driver.addOpaqueType(std::move($1)); CMMC_NONTERMINAL(@$, ExtDef, @1, @2); }
| Def { driver.addGlobalDef(std::move($1.type), std::move($1.var)); CMMC_NONTERMINAL(@$, ExtDef, @1); }
| QualifiedSpecifier FunDec CompSt { $2.retType = $1; driver.addFunctionDef({std::move($2), std::move($3)}); CMMC_NONTERMINAL(@$, ExtDef, @1, @2, @3); }
| QualifiedSpecifier FunDec SEMI { $2.retType = $1; driver.addFunctionDecl(std::move($2)); CMMC_NONTERMINAL(@$, ExtDef, @1, @2, @3); }
;
/* specifier */
QualifiedSpecifier: Specifier { $$ = std::move($1); CMMC_NONTERMINAL(@$, QualifiedSpecifier, @1); }
| CONST Specifier { $$ = std::move($2); $$.qualifier.isConst = true;  CMMC_NONTERMINAL(@$, QualifiedSpecifier, @1, @2); }
Specifier: TYPE { $$ = { $1, TypeLookupSpace::Default, Qualifier{ false, $1.prefix().front() != 'u' } }; CMMC_NONTERMINAL(@$, Specifier, @1); }
| StructSpecifier { $$ = std::move($1); CMMC_NONTERMINAL(@$, Specifier, @1); }
;
StructSpecifier: STRUCT ID LC DefList RC { $$ = { $2, TypeLookupSpace::Struct, Qualifier::getDefault() }; driver.addStructType(castLoc(@1), std::move($2), std::move($4)); CMMC_NONTERMINAL(@$, StructSpecifier, @1, @2, @3, @4, @5); }
| STRUCT ID { $$ = { std::move($2), TypeLookupSpace::Struct, Qualifier::getDefault() }; CMMC_NONTERMINAL(@$, StructSpecifier, @1, @2); }
;
/* declarator */
VarDec: ID { $$ = { castLoc(@1), std::move($1), ArraySize{}, nullptr }; CMMC_NONTERMINAL(@$, VarDec, @1); }
| VarDec LB Exp RB { $$ = std::move($1); $$.arraySize.push_back(std::move($3)); CMMC_NONTERMINAL(@$, VarDec, @1, @2, @3, @4); }
| VarDec LB RB { $$ = std::move($1); $$.arraySize.push_back(nullptr); CMMC_NONTERMINAL(@$, VarDec, @1, @2, @3); }
;
FunDec: ID LP VarList RP { $$.loc = castLoc(@1); $$.symbol = std::move($1); $$.args = std::move($3); CMMC_NONTERMINAL(@$, FunDec, @1, @2, @3, @4); }
| ID LP RP { $$.loc = castLoc(@1); $$.symbol = std::move($1); CMMC_NONTERMINAL(@$, FunDec, @1, @2, @3); }
;
VarList: ParamDec COMMA VarList { CMMC_CONCAT_PACK($$, $1, $3); CMMC_NONTERMINAL(@$, VarList, @1, @2, @3); }
| ParamDec { $$ = { std::move($1) }; CMMC_NONTERMINAL(@$, VarList, @1); }
;
ParamDec: QualifiedSpecifier VarDec { $$ = NamedArg{ std::move($1), std::move($2) }; CMMC_NONTERMINAL(@$, ParamDec, @1, @2); }
| QualifiedSpecifier { $$ = NamedArg{ std::move($1), NamedVar{} }; CMMC_NONTERMINAL(@$, ParamDec, @1); }
;
/* statement */
CompSt: LC StmtList RC { $$ = std::move($2); CMMC_NONTERMINAL(@$, CompSt, @1, @2, @3); }
StmtList: Stmt StmtList { CMMC_CONCAT_PACK($$, $1, $2); CMMC_NONTERMINAL(@$, StmtList, @1, @2); }
| %empty { $$ = {}; CMMC_EMPTY(@$, StmtList);}
;
Stmt: ExpCommaSep SEMI { $$ = $1; CMMC_NONTERMINAL(@$, Stmt, @1, @2); }
| CompSt { $$ = CMMC_SCOPE(@1, $1); CMMC_NONTERMINAL(@$, Stmt, @1); }
| RETURN Exp SEMI { $$ = CMMC_RETURN(@1, $2); CMMC_NONTERMINAL(@$, Stmt, @1, @2, @3); }
| RETURN SEMI { $$ = CMMC_RETURN(@1, nullptr); CMMC_NONTERMINAL(@$, Stmt, @1, @2); }
| IF LP Exp RP Stmt %prec THEN { $$ = CMMC_IF(@1, $3, $5); CMMC_NONTERMINAL(@$, Stmt, @1, @2, @3, @4, @5); }
| IF LP Exp RP Stmt ELSE Stmt { $$ = CMMC_IF_ELSE(@1, $3, $5, $7); CMMC_NONTERMINAL(@$, Stmt, @1, @2, @3, @4, @5, @6, @7); }
| WHILE LP Exp RP Stmt { $$ = CMMC_WHILE(@1, $3, $5); CMMC_NONTERMINAL(@$, Stmt, @1, @2, @3, @4, @5); }
| BREAK SEMI { $$ = CMMC_BREAK(@1); CMMC_NONTERMINAL(@$, Stmt, @1, @2); }
| CONTINUE SEMI { $$ = CMMC_CONTINUE(@1); CMMC_NONTERMINAL(@$, Stmt, @1, @2); }
| Def { $$ = CMMC_DEF($1); CMMC_NONTERMINAL(@$, Stmt, @1); }
| SEMI { $$ = CMMC_EMPTY_STMT(@1); CMMC_NONTERMINAL(@$, Stmt, @1); }
| FOR LP Stmt ForOptional SEMI ForOptional RP Stmt { $$ = CMMC_FOR_LOOP(@1, $3, $4, $6, $8); CMMC_NONTERMINAL(@$, Stmt, @1, @2, @3, @4, @5, @6, @7, @8); }
| DO Stmt WHILE LP Exp RP SEMI { $$ = CMMC_DO_WHILE(@1, $2, $5); CMMC_NONTERMINAL(@$, Stmt, @1, @2, @3, @4, @5, @6, @7); }
;
ExpCommaSep: Exp COMMA ExpCommaSep { $$ = CMMC_COMMA_OP(@2, $1, $3); CMMC_NONTERMINAL(@$, ExpCommaSep, @1, @2, @3); }
| Exp { $$ = $1; CMMC_NONTERMINAL(@$, ExpCommaSep, @1); }
;
ForOptional: Exp { $$ = $1; CMMC_NONTERMINAL(@$, ForOptional, @1); }
| %empty { $$ = nullptr; CMMC_EMPTY(@$, ForOptional); }
;
DefList: Def DefList { CMMC_CONCAT_PACK($$, $1, $2); CMMC_NONTERMINAL(@$, DefList, @1, @2); }
| %empty { $$ = {}; CMMC_EMPTY(@$, DefList); }
;
Def: QualifiedSpecifier DecList SEMI { $$ = VarDef{castLoc(@1), std::move($1), std::move($2)}; CMMC_NONTERMINAL(@$, Def, @1, @2, @3); }
;
DecList: Dec { $$ = {$1}; CMMC_NONTERMINAL(@$, DecList, @1); }
| Dec COMMA DecList { CMMC_CONCAT_PACK($$, $1, $3); CMMC_NONTERMINAL(@$, DecList, @1, @2, @3); }
;
Dec: VarDec { $$ = $1; CMMC_NONTERMINAL(@$, Dec, @1); }
| VarDec ASSIGN Initializer { $$ = $1; $$.initialValue = $3; CMMC_NONTERMINAL(@$, Dec, @1, @2, @3); }
;
Initializer: Exp { $$ = $1; CMMC_NONTERMINAL(@$, Initializer, @1); }
| LC InitializerList RC { $$ = CMMC_ARRAY_INITIALIZER(@1, $2); CMMC_NONTERMINAL(@$, Initializer, @1, @2, @3); }
| LC RC { $$ = CMMC_ARRAY_INITIALIZER(@1, ExprPack{}); CMMC_NONTERMINAL(@$, Initializer, @1, @2); }
;
InitializerList: Initializer COMMA InitializerList { CMMC_CONCAT_PACK($$, $1, $3); CMMC_NONTERMINAL(@$, InitializerList, @1, @2, @3); }
| Initializer { $$ = { $1 }; CMMC_NONTERMINAL(@$, InitializerList, @1); }
;
/* Expression */
Exp : Exp ASSIGN Exp { $$ = CMMC_BINARY_OP(@2, Assign, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp AND Exp { $$ = CMMC_BINARY_OP(@2, LogicalAnd, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp OR Exp { $$ = CMMC_BINARY_OP(@2, LogicalOr, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp LT Exp { $$ = CMMC_BINARY_OP(@2, LessThan, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp LE Exp { $$ = CMMC_BINARY_OP(@2, LessEqual, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp GT Exp { $$ = CMMC_BINARY_OP(@2, GreaterThan, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp GE Exp { $$ = CMMC_BINARY_OP(@2, GreaterEqual, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp NE Exp { $$ = CMMC_BINARY_OP(@2, NotEqual, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp EQ Exp { $$ = CMMC_BINARY_OP(@2, Equal, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp PLUS Exp { $$ = CMMC_BINARY_OP(@2, Add, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp MINUS Exp { $$ = CMMC_BINARY_OP(@2, Sub, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp MUL Exp { $$ = CMMC_BINARY_OP(@2, Mul, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp DIV Exp { $$ = CMMC_BINARY_OP(@2, Div, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp REM Exp { $$ = CMMC_BINARY_OP(@2, Rem, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp BAND Exp { $$ = CMMC_BINARY_OP(@2, BitwiseAnd, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp BOR Exp { $$ = CMMC_BINARY_OP(@2, BitwiseOr, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp XOR Exp { $$ = CMMC_BINARY_OP(@2, Xor, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp SHL Exp { $$ = CMMC_BINARY_OP(@2, ShiftLeft, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp SHR Exp { $$ = CMMC_BINARY_OP(@2, ShiftRight, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| LP Exp COMMA Exp RP { $$ = CMMC_COMMA_OP(@3, $2, $4); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3, @4, @5); }
| LP Exp RP { $$ = $2; CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| LP Specifier RP Exp %prec EXPLICIT_CAST { $$ = CMMC_CAST_OP(@2, std::move($2), $4); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3, @4); } 
| INC Exp %prec PREFIX_INC {$$ = CMMC_SELF_INCDEC_OP(@1, PrefixInc, $2); CMMC_NONTERMINAL(@$, Exp, @1, @2);}
| DEC Exp %prec PREFIX_DEC {$$ = CMMC_SELF_INCDEC_OP(@1, PrefixDec, $2); CMMC_NONTERMINAL(@$, Exp, @1, @2);}
| Exp INC %prec SUFFIX_INC {$$ = CMMC_SELF_INCDEC_OP(@2, SuffixInc, $1); CMMC_NONTERMINAL(@$, Exp, @1, @2);}
| Exp DEC %prec SUFFIX_DEC {$$ = CMMC_SELF_INCDEC_OP(@2, SuffixDec, $1); CMMC_NONTERMINAL(@$, Exp, @1, @2);}
| BAND Exp %prec ADDRESS {$$ = CMMC_ADDRESS_OP(@1, $2); CMMC_NONTERMINAL(@$, Exp, @1, @2);}
| MUL Exp %prec DEREF {$$ = CMMC_DEREF_OP(@1, $2); CMMC_NONTERMINAL(@$, Exp, @1, @2);}
| MINUS Exp %prec UMINUS { $$ = CMMC_UNARY_OP(@1, Neg, $2); CMMC_NONTERMINAL(@$, Exp, @1, @2); }
| PLUS Exp %prec UPLUS { $$ = CMMC_UNARY_OP(@1, Positive, $2); CMMC_NONTERMINAL(@$, Exp, @1, @2); }
| NOT Exp { $$ = CMMC_UNARY_OP(@1, LogicalNot, $2); CMMC_NONTERMINAL(@$, Exp, @1, @2); }
| BNOT Exp { $$ = CMMC_UNARY_OP(@1, BitwiseNot, $2); CMMC_NONTERMINAL(@$, Exp, @1, @2); }
| Exp LP Args RP { $$ = CMMC_CALL(@2, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3, @4); }
| Exp LP RP { $$ = CMMC_CALL(@2, $1, ExprPack{}); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp LB Exp RB { $$ = CMMC_ARRAY_INDEX(@2, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3, @4); }
| Exp DOT ID { $$ = CMMC_STRUCT_INDEX(@3, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| ID { $$ = CMMC_ID(@1, $1); CMMC_NONTERMINAL(@$, Exp, @1); }
| INT { $$ = CMMC_INT(@1, $1.val, $1.width, $1.isSigned); CMMC_NONTERMINAL(@$, Exp, @1); }
| FLOAT { $$ = CMMC_FLOAT(@1, $1, true); CMMC_NONTERMINAL(@$, Exp, @1); }
| CHAR { $$ = CMMC_CHAR(@1, $1); CMMC_NONTERMINAL(@$, Exp, @1); }
| STRING { $$ = CMMC_STRING(@1, $1); CMMC_NONTERMINAL(@$, Exp, @1); }
| Exp QUEST Exp COLON Exp %prec SELECT { $$ = CMMC_SELECT(@2, $1, $3, $5); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3, @4, @5); }
| Exp PLUS_ASSIGN Exp { $$ = CMMC_COMPOUND_ASSIGN_OP(@2, Add, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp MINUS_ASSIGN Exp { $$ = CMMC_COMPOUND_ASSIGN_OP(@2, Sub, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp MUL_ASSIGN Exp { $$ = CMMC_COMPOUND_ASSIGN_OP(@2, Mul, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp DIV_ASSIGN Exp { $$ = CMMC_COMPOUND_ASSIGN_OP(@2, Div, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp REM_ASSIGN Exp { $$ = CMMC_COMPOUND_ASSIGN_OP(@2, Rem, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp BAND_ASSIGN Exp { $$ = CMMC_COMPOUND_ASSIGN_OP(@2, BitwiseAnd, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp BOR_ASSIGN Exp { $$ = CMMC_COMPOUND_ASSIGN_OP(@2, BitwiseOr, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp XOR_ASSIGN Exp { $$ = CMMC_COMPOUND_ASSIGN_OP(@2, Xor, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp SHL_ASSIGN Exp { $$ = CMMC_COMPOUND_ASSIGN_OP(@2, ShiftLeft, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp SHR_ASSIGN Exp { $$ = CMMC_COMPOUND_ASSIGN_OP(@2, ShiftRight, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
;
Args: Exp COMMA Args { CMMC_CONCAT_PACK($$, $1, $3); CMMC_NONTERMINAL(@$, Args, @1, @2, @3); }
| Exp { $$ = { $1 }; CMMC_NONTERMINAL(@$, Args, @1); }
;
%%
void SysY::parser::error(const location_type& l, const std::string& m) {
    reportError() << l << ": "sv << m << '\n';
}
