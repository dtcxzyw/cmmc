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
%define parse.assert
%define parse.trace
%define parse.error verbose
%define api.prefix {Spl}

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
%token <uintmax_t> INT "Integer"
%token <double> FLOAT "Float"
%token <char> CHAR "Char"
%token <String> String "String"

%token <String> ID "Identifier"
%token <String> TYPE "Type"

// Control Flow Keywords
%token IF ELSE WHILE DO FOR CONTINUE BREAK RETURN GOTO SWITCH CASE
// Aggregate Keywords
%token STRUCT UNION
// Unary/Binary Operators
%token INC DEC
%token PLUS MINUS MUL DIV REM
%token NOT BNOT AND BAND OR BOR XOR
%token LT GT LE GE EQ NE
%token ASSIGN
// Compound assignments
%token PLUS_ASSIGN MINUS_ASSIGN MUL_ASSIGN DIV_ASSIGN
// Miscellaneous
// . ; , #
%token DOT SEMI COMMA SHARP QUEST COLON
// ( ) [ ] { }
%token LP RP LB RB LC RC
%token ERR

%left COMMA
%right ASSIGN SELECT QUEST COLON PLUS_ASSIGN MINUS_ASSIGN MUL_ASSIGN DIV_ASSIGN
%left OR
%left AND
%left BOR
%left XOR
%left BAND
%left EQ NE
%left LT LE GT GE
%left PLUS MINUS
%left MUL DIV REM
%right UMINUS BNOT NOT PREFIX_INC PREFIX_DEC INC DEC
%left LB LP DOT SUFFIX_INC SUFFIX_DEC
%precedence ERR
%precedence FAKE_ERR
%precedence NORMAL

// Please refer to https://stackoverflow.com/questions/12731922/reforming-the-grammar-to-remove-shift-reduce-conflict-in-if-then-else
%precedence THEN
%precedence ELSE

%%

%type <TypeRef> Specifier;
%type <TypeRef> StructSpecifier;
%type <VarList> ExtDecList;
%type <NamedVar> VarDec;
%type <FunctionDeclaration> FunDec;
%type <ArgList> VarList;
%type <NamedArg> ParamDec;
%type <ExprPack> CompSt;
%type <ExprPack> StmtList;
%type <Expr*> Stmt;
%type <Expr*> Exp;
%type <ExprPack> Args;
%type <VarDefList> DefList;
%type <VarDef> Def;
%type <VarList> DecList;
%type <NamedVar> Dec;
%type <Expr*> ForOptional;

%start Program;

Program: ExtDefList END { driver.markEnd(); CMMC_NONTERMINAL(@$, Program, @1); }
;
ExtDefList: ExtDef ExtDefList { CMMC_NONTERMINAL(@$, ExtDefList, @1, @2); }
| %empty { CMMC_EMPTY(@$, ExtDefList); }
;
ExtDef: Specifier ExtDecList SEMI { driver.addGlobalDef($1, $2); CMMC_NONTERMINAL(@$, ExtDef, @1, @2, @3); }
| Specifier SEMI { driver.addOpaqueType($1); CMMC_NONTERMINAL(@$, ExtDef, @1, @2); }
| Specifier FunDec CompSt { $2.retType = $1; driver.addFunctionDef({$2, $3}); CMMC_NONTERMINAL(@$, ExtDef, @1, @2, @3); }
| Specifier ExtDecList error { CMMC_MISS_SEMI(@3); }
| Specifier error { CMMC_MISS_SEMI(@2); }
| error ExtDecList SEMI { CMMC_MISS_SPECIFIER(@2); }
| error SEMI { CMMC_MISS_SPECIFIER(@2); }
;
ExtDecList: VarDec { $$ = { $1 }; CMMC_NONTERMINAL(@$, ExtDecList, @1); }
| VarDec COMMA ExtDecList { CMMC_CONCAT_PACK($$, $1, $3); CMMC_NONTERMINAL(@$, ExtDecList, @1, @2, @3); }
;
/* specifier */
Specifier: TYPE { $$ = { $1, TypeLookupSpace::Default, {} }; CMMC_NONTERMINAL(@$, Specifier, @1); }
| StructSpecifier { $$ = $1; CMMC_NONTERMINAL(@$, Specifier, @1); }
;
StructSpecifier: STRUCT ID LC DefList RC { $$ = { $2, TypeLookupSpace::Struct, {} }; driver.addStructType($2, $4); CMMC_NONTERMINAL(@$, StructSpecifier, @1, @2, @3, @4, @5); }
| STRUCT ID { $$ = { $2, TypeLookupSpace::Struct, {} }; CMMC_NONTERMINAL(@$, StructSpecifier, @1, @2); }
| STRUCT ID LC DefList error %prec FAKE_ERR { CMMC_MISS_RC(@$); }
| STRUCT TYPE error { CMMC_BAD_STRUCT(@$); }
;
/* declarator */
VarDec: ID { $$ = { $1, ArraySize{}, nullptr }; CMMC_NONTERMINAL(@$, VarDec, @1); }
| VarDec LB INT RB { $$ = $1; $$.arraySize.push_back(CMMC_INT(@3, $3, 32U, true)); CMMC_NONTERMINAL(@$, VarDec, @1, @2, @3, @4); }
| VarDec LB INT error %prec FAKE_ERR { CMMC_MISS_RB(@$); }
| ERR {}
;
FunDec: ID LP VarList RP { $$.symbol = $1; $$.args = $3; CMMC_NONTERMINAL(@$, FunDec, @1, @2, @3, @4); }
| ID LP RP { $$.symbol = $1; CMMC_NONTERMINAL(@$, FunDec, @1, @2, @3); }
| ID LP VarList error %prec FAKE_ERR { CMMC_MISS_RP(@$); }
| ID LP error %prec FAKE_ERR { CMMC_MISS_RP(@$); }
;
VarList: ParamDec COMMA VarList { CMMC_CONCAT_PACK($$, $1, $3); CMMC_NONTERMINAL(@$, VarList, @1, @2, @3); }
| ParamDec { $$ = { $1 }; CMMC_NONTERMINAL(@$, VarList, @1); }
;
ParamDec: Specifier VarDec { $$ = NamedArg{ $1, $2 }; CMMC_NONTERMINAL(@$, ParamDec, @1, @2); }
;
/* statement */
CompSt: LC DefList StmtList RC { CMMC_SCOPE_GEN($$, $2, $3); CMMC_NONTERMINAL(@$, CompSt, @1, @2, @3, @4); }
// | LC DefList StmtList error { CMMC_MISS_RC(@$); }
StmtList: Stmt StmtList { CMMC_CONCAT_PACK($$, $1, $2); CMMC_NONTERMINAL(@$, StmtList, @1, @2); }
| %empty { $$ = {}; CMMC_EMPTY(@$, StmtList);}
;
Stmt: Exp SEMI { $$ = $1; CMMC_NONTERMINAL(@$, Stmt, @1, @2); }
| CompSt { $$ = CMMC_SCOPE(@1, $1); CMMC_NONTERMINAL(@$, Stmt, @1); }
| RETURN Exp SEMI { $$ = CMMC_RETURN(@1, $2); CMMC_NONTERMINAL(@$, Stmt, @1, @2, @3); }
| RETURN SEMI { $$ = CMMC_RETURN(@1, nullptr); CMMC_NONTERMINAL(@$, Stmt, @1, @2); }
| IF LP Exp RP Stmt %prec THEN { $$ = CMMC_IF(@1, $3, $5); CMMC_NONTERMINAL(@$, Stmt, @1, @2, @3, @4, @5); }
| IF LP Exp RP Stmt ELSE Stmt { $$ = CMMC_IF_ELSE(@1, $3, $5, $7); CMMC_NONTERMINAL(@$, Stmt, @1, @2, @3, @4, @5, @6, @7); }
| WHILE LP Exp RP Stmt { $$ = CMMC_WHILE(@1, $3, $5); CMMC_NONTERMINAL(@$, Stmt, @1, @2, @3, @4, @5); }
| DO Stmt WHILE LP Exp RP SEMI { CMMC_NEED_EXTENSION(@$, DoWhile); $$ = CMMC_DO_WHILE(@1, $2, $5); CMMC_NONTERMINAL(@$, Stmt, @1, @2, @3, @4, @5, @6, @7); }
| BREAK SEMI { CMMC_NEED_EXTENSION(@$, Break); $$ = CMMC_BREAK(@1); CMMC_NONTERMINAL(@$, Stmt, @1, @2); }
| CONTINUE SEMI { CMMC_NEED_EXTENSION(@$, Continue); $$ = CMMC_CONTINUE(@1); CMMC_NONTERMINAL(@$, Stmt, @1, @2); }
| FOR LP Stmt ForOptional SEMI ForOptional RP Stmt { CMMC_NEED_EXTENSION(@$, ForLoop); $$ = CMMC_FOR_LOOP(@1, $3, $4, $6, $8); CMMC_NONTERMINAL(@$, Stmt, @1, @2, @3, @4, @5, @6, @7, @8); }
| Exp error %prec FAKE_ERR { CMMC_MISS_SEMI(@$); }
| RETURN Exp error %prec FAKE_ERR { CMMC_MISS_SEMI(@$); }
| RETURN error %prec FAKE_ERR { CMMC_MISS_SEMI(@$); }
| IF LP Exp error Stmt %prec FAKE_ERR { CMMC_MISS_RP(@$); }
| IF LP Exp error Stmt ELSE Stmt %prec FAKE_ERR { CMMC_MISS_RP(@$); }
| WHILE LP Exp error Stmt %prec FAKE_ERR { CMMC_MISS_RP(@$); }
| SEMI { CMMC_NEED_EXTENSION(@$, EmptyStmt); $$ = CMMC_EMPTY_STMT(@1); CMMC_NONTERMINAL(@$, Stmt, @1); }
;
ForOptional: Exp { $$ = $1; CMMC_NONTERMINAL(@$, ForOptional, @1); }
| %empty { $$ = nullptr; CMMC_EMPTY(@$, ForOptional); }
;
/* local definition */
DefList: Def DefList %prec NORMAL { CMMC_CONCAT_PACK($$, $1, $2); CMMC_NONTERMINAL(@$, DefList, @1, @2); }
| DefList error DecList SEMI %prec FAKE_ERR { CMMC_MISS_SPECIFIER(@2); }
| %empty { $$ = {}; CMMC_EMPTY(@$, DefList); }
;
Def: Specifier DecList SEMI { $$ = VarDef{castLoc(@1), std::move($1), std::move($2)}; CMMC_NONTERMINAL(@$, Def, @1, @2, @3); }
| Specifier DecList error %prec FAKE_ERR { CMMC_MISS_SEMI(@$); }
;
DecList: Dec { $$ = {$1}; CMMC_NONTERMINAL(@$, DecList, @1); }
| Dec COMMA DecList { CMMC_CONCAT_PACK($$, $1, $3); CMMC_NONTERMINAL(@$, DecList, @1, @2, @3); }
;
Dec: VarDec { $$ = $1; CMMC_NONTERMINAL(@$, Dec, @1); }
| VarDec ASSIGN Exp { $$ = $1; $$.initialValue = $3; CMMC_NONTERMINAL(@$, Dec, @1, @2, @3); }
;
/* Expression */
Exp : Exp ASSIGN Exp { $$ = CMMC_BINARY_OP(@2, Assign, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp PLUS_ASSIGN Exp { CMMC_NEED_EXTENSION(@$, CompoundAssign); $$ = CMMC_COMPOUND_ASSIGN_OP(@2, Add, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp MINUS_ASSIGN Exp { CMMC_NEED_EXTENSION(@$, CompoundAssign); $$ = CMMC_COMPOUND_ASSIGN_OP(@2, Sub, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp MUL_ASSIGN Exp { CMMC_NEED_EXTENSION(@$, CompoundAssign); $$ = CMMC_COMPOUND_ASSIGN_OP(@2, Mul, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp DIV_ASSIGN Exp { CMMC_NEED_EXTENSION(@$, CompoundAssign); $$ = CMMC_COMPOUND_ASSIGN_OP(@2, Div, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| INC Exp %prec PREFIX_INC { CMMC_NEED_EXTENSION(@$, IncDec); $$ = CMMC_SELF_INCDEC_OP(@1, PrefixInc, $2); CMMC_NONTERMINAL(@$, Exp, @1, @2);}
| DEC Exp %prec PREFIX_DEC { CMMC_NEED_EXTENSION(@$, IncDec); $$ = CMMC_SELF_INCDEC_OP(@1, PrefixDec, $2); CMMC_NONTERMINAL(@$, Exp, @1, @2);}
| Exp INC %prec SUFFIX_INC { CMMC_NEED_EXTENSION(@$, IncDec); $$ = CMMC_SELF_INCDEC_OP(@2, SuffixInc, $1); CMMC_NONTERMINAL(@$, Exp, @1, @2);}
| Exp DEC %prec SUFFIX_DEC { CMMC_NEED_EXTENSION(@$, IncDec); $$ = CMMC_SELF_INCDEC_OP(@2, SuffixDec, $1); CMMC_NONTERMINAL(@$, Exp, @1, @2);}
| Exp QUEST Exp COLON Exp %prec SELECT { CMMC_NEED_EXTENSION(@$, Select); $$ = CMMC_SELECT(@2, $1, $3, $5); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3, @4, @5); }
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
| Exp REM Exp { CMMC_NEED_EXTENSION(@$, Remainder); $$ = CMMC_BINARY_OP(@2, Rem, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp BAND Exp { CMMC_NEED_EXTENSION(@$, BitwiseAnd); $$ = CMMC_BINARY_OP(@2, BitwiseAnd, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp BOR Exp { CMMC_NEED_EXTENSION(@$, BitwiseOr); $$ = CMMC_BINARY_OP(@2, BitwiseOr, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp XOR Exp { CMMC_NEED_EXTENSION(@$, Xor); $$ = CMMC_BINARY_OP(@2, Xor, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| LP Exp RP { $$ = $2; CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| MINUS Exp %prec UMINUS { $$ = CMMC_UNARY_OP(@1, Neg, $2); CMMC_NONTERMINAL(@$, Exp, @1, @2); }
| NOT Exp { $$ = CMMC_UNARY_OP(@1, LogicalNot, $2); CMMC_NONTERMINAL(@$, Exp, @1, @2); }
| BNOT Exp { CMMC_NEED_EXTENSION(@$, BitwiseNot); $$ = CMMC_UNARY_OP(@1, BitwiseNot, $2); CMMC_NONTERMINAL(@$, Exp, @1, @2); }
| ID LP Args RP { $$ = CMMC_CALL(@2, CMMC_ID(@1, $1), $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3, @4); }
| ID LP RP { $$ = CMMC_CALL(@2, CMMC_ID(@1, $1), ExprPack{}); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp LB Exp RB { $$ = CMMC_ARRAY_INDEX(@2, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3, @4); }
| Exp DOT ID { $$ = CMMC_STRUCT_INDEX(@3, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| ID { $$ = CMMC_ID(@1, $1); CMMC_NONTERMINAL(@$, Exp, @1); }
| INT { $$ = CMMC_INT(@1, $1, 32U, true); CMMC_NONTERMINAL(@$, Exp, @1); }
| FLOAT { $$ = CMMC_FLOAT(@1, $1, true); CMMC_NONTERMINAL(@$, Exp, @1); }
| CHAR { $$ = CMMC_CHAR(@1, $1); CMMC_NONTERMINAL(@$, Exp, @1); }
| LP Exp error { CMMC_MISS_RP(@$); }
| ID LP Args error { CMMC_MISS_RP(@$); }
| ID LP error { CMMC_MISS_RP(@$); }
| Exp LB Exp error { CMMC_MISS_RB(@$); }
| Exp ERR Exp error {}
| ERR error {}
;
Args: Exp COMMA Args { CMMC_CONCAT_PACK($$, $1, $3); CMMC_NONTERMINAL(@$, Args, @1, @2, @3); }
| Exp { $$ = { $1 }; CMMC_NONTERMINAL(@$, Args, @1); }
;
%%
void Spl::parser::error(const location_type&, const std::string&) {
    // reportError() << l << ": " << m << '\n';
}
