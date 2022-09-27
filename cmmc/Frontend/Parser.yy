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
%token <StringAST> String "String"

%token <StringAST> ID "Identifier"
%token <StringAST> TYPE "Type"

// Control Flow Keywords
%token IF ELSE WHILE DO FOR CONTINUE BREAK RETURN GOTO SWITCH CASE
// Aggregate Keywords
%token STRUCT UNION
// Unary/Binary Operators
%token PLUS MINUS MUL DIV REM
%token NOT BNOT AND BAND OR BOR XOR
%token LT GT LE GE EQ NE
%token ASSIGN
// Miscellaneous
// . ; , #
%token DOT SEMI COMMA SHARP
// ( ) [ ] { }
%token LP RP LB RB LC RC
%token ERR

%right NOT BNOT
%left MUL DIV REM
%left PLUS MINUS
%left LT LE GT GE
%left EQ NE
%left BAND
%left XOR
%left BOR
%left AND
%left OR
// %right ASSIGN
%left COMMA

%nonassoc ELSE

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

%start Program;

Program: ExtDefList END { driver.markEnd(); CMMC_NONTERMINAL(@$, Program, @1); }
;
ExtDefList: ExtDef ExtDefList { CMMC_NONTERMINAL(@$, ExtDefList, @1, @2); }
| %empty { CMMC_EMPTY(@$, ExtDefList); }
;
ExtDef: Specifier ExtDecList SEMI { driver.addGlobalDef($1, $2); CMMC_NONTERMINAL(@$, ExtDef, @1, @2, @3); }
| Specifier SEMI { driver.addOpaqueType($1); CMMC_NONTERMINAL(@$, ExtDef, @1, @2); }
| Specifier FunDec CompSt { $2.retType = $1; driver.addFunctionDef({$2, $3}); CMMC_NONTERMINAL(@$, ExtDef, @1, @2, @3); }
;
ExtDecList: VarDec { $$ = { $1 }; CMMC_NONTERMINAL(@$, ExtDecList, @1); }
| VarDec COMMA ExtDecList { CMMC_CONCAT_PACK($$, $1, $3); CMMC_NONTERMINAL(@$, ExtDecList, @1, @2, @3); }
;
/* specifier */
Specifier: TYPE { $$ = { $1, TypeLookupSpace::Default }; CMMC_NONTERMINAL(@$, Specifier, @1); }
| StructSpecifier { $$ = $1; CMMC_NONTERMINAL(@$, Specifier, @1); }
;
StructSpecifier: STRUCT ID LC DefList RC { $$ = { $2, TypeLookupSpace::Struct }; driver.addStructType($2, $4); CMMC_NONTERMINAL(@$, StructSpecifier, @1, @2, @3, @4, @5); }
| STRUCT ID { $$ = { $2, TypeLookupSpace::Struct }; CMMC_NONTERMINAL(@$, StructSpecifier, @1, @2); }
| STRUCT ID LC DefList error { CMMC_MISS_RC(@$); }
;
/* declarator */
VarDec: ID { $$ = { $1, ArraySize{}, nullptr }; CMMC_NONTERMINAL(@$, VarDec, @1); }
| VarDec LB INT RB { $$ = $1; $$.arraySize.push_back(static_cast<uint32_t>($3)); CMMC_NONTERMINAL(@$, VarDec, @1, @2, @3, @4); }
;
FunDec: ID LP VarList RP { $$.symbol = $1; $$.args = $3; CMMC_NONTERMINAL(@$, FunDec, @1, @2, @3, @4); }
| ID LP RP { $$.symbol = $1; CMMC_NONTERMINAL(@$, FunDec, @1, @2, @3); }
| ID LP VarList error { CMMC_MISS_RP(@$); }
| ID LP { CMMC_MISS_RP(@$); }
;
VarList: ParamDec COMMA VarList { CMMC_CONCAT_PACK($$, $1, $3); CMMC_NONTERMINAL(@$, VarList, @1, @2, @3); }
| ParamDec { $$ = { $1 }; CMMC_NONTERMINAL(@$, VarList, @1); }
;
ParamDec: Specifier VarDec { $$ = NamedArg{ $1, $2 }; CMMC_NONTERMINAL(@$, ParamDec, @1, @2); }
;
/* statement */
CompSt: LC DefList StmtList RC { CMMC_SCOPE_GEN($$, $2, $3); CMMC_NONTERMINAL(@$, CompSt, @1, @2, @3, @4); }
| LC DefList StmtList error { CMMC_MISS_RC(@$); }
StmtList: Stmt StmtList { CMMC_CONCAT_PACK($$, $1, $2); CMMC_NONTERMINAL(@$, StmtList, @1, @2); }
| %empty { $$ = {}; CMMC_EMPTY(@$, StmtList);}
;
Stmt: Exp SEMI { $$ = $1; CMMC_NONTERMINAL(@$, Stmt, @1, @2); }
| CompSt { $$ = CMMC_SCOPE($1); CMMC_NONTERMINAL(@$, Stmt, @1); }
| RETURN Exp SEMI { $$ = CMMC_RETURN($2); CMMC_NONTERMINAL(@$, Stmt, @1, @2, @3); }
| RETURN SEMI { $$ = CMMC_RETURN(nullptr); CMMC_NONTERMINAL(@$, Stmt, @1, @2); }
| IF LP Exp RP Stmt { $$ = CMMC_IF($3, $5); CMMC_NONTERMINAL(@$, Stmt, @1, @2, @3, @4, @5); }
| IF LP Exp RP Stmt ELSE Stmt { $$ = CMMC_IF_ELSE($3, $5, $7); CMMC_NONTERMINAL(@$, Stmt, @1, @2, @3, @4, @5, @6, @7); }
| WHILE LP Exp RP Stmt { $$ = CMMC_WHILE($3, $5); CMMC_NONTERMINAL(@$, Stmt, @1, @2, @3, @4, @5); }
| Exp error { CMMC_MISS_SEMI(@$); }
| RETURN Exp error { CMMC_MISS_SEMI(@$); }
| IF LP Exp Stmt { CMMC_MISS_RP(@$); }
| IF LP Exp Stmt ELSE Stmt { CMMC_MISS_RP(@$); }
;
/* local definition */
DefList: Def DefList { CMMC_CONCAT_PACK($$, $1, $2); CMMC_NONTERMINAL(@$, DefList, @1, @2); }
| %empty { $$ = {}; CMMC_EMPTY(@$, DefList); }
;
Def: Specifier DecList SEMI { $$ = VarDef{$1, $2}; CMMC_NONTERMINAL(@$, Def, @1, @2, @3); }
;
DecList: Dec { $$ = {$1}; CMMC_NONTERMINAL(@$, DecList, @1); }
| Dec COMMA DecList { CMMC_CONCAT_PACK($$, $1, $3); CMMC_NONTERMINAL(@$, DecList, @1, @2, @3); }
;
Dec: VarDec { $$ = $1; CMMC_NONTERMINAL(@$, Dec, @1); }
| VarDec ASSIGN Exp { $$ = $1; $$.initialValue = $3; CMMC_NONTERMINAL(@$, Dec, @1, @2, @3); }
;
/* Expression */
Exp : Exp ASSIGN Exp { $$ = CMMC_BINARY_OP(Assign, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp AND Exp { $$ = CMMC_BINARY_OP(LogicalAnd, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp OR Exp { $$ = CMMC_BINARY_OP(LogicalOr, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp LT Exp { $$ = CMMC_BINARY_OP(LessThan, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp LE Exp { $$ = CMMC_BINARY_OP(LessEqual, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp GT Exp { $$ = CMMC_BINARY_OP(GreaterThan, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp GE Exp { $$ = CMMC_BINARY_OP(GreaterEqual, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp NE Exp { $$ = CMMC_BINARY_OP(NotEqual, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp EQ Exp { $$ = CMMC_BINARY_OP(Equal, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp PLUS Exp { $$ = CMMC_BINARY_OP(Add, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp MINUS Exp { $$ = CMMC_BINARY_OP(Sub, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp MUL Exp { $$ = CMMC_BINARY_OP(Mul, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp DIV Exp { $$ = CMMC_BINARY_OP(Div, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp REM Exp { CMMC_EXTENSION(Remainder); $$ = CMMC_BINARY_OP(Rem, $1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| LP Exp RP { $$ = $2; CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| MINUS Exp { $$ = CMMC_UNARY_OP(Neg, $2); CMMC_NONTERMINAL(@$, Exp, @1, @2); }
| NOT Exp { $$ = CMMC_UNARY_OP(LogicalNot, $2); CMMC_NONTERMINAL(@$, Exp, @1, @2); }
| Exp LP Args RP { $$ = CMMC_CALL($1, $3); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3, @4); }
| Exp LP RP { $$ = CMMC_CALL($1, ExprPack{}); CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| Exp LB Exp RB { CMMC_NONTERMINAL(@$, Exp, @1, @2, @3, @4); }
| Exp DOT ID { CMMC_NONTERMINAL(@$, Exp, @1, @2, @3); }
| ID { $$ = CMMC_ID($1); CMMC_NONTERMINAL(@$, Exp, @1); }
| INT { $$ = CMMC_INT($1, 32, true); CMMC_NONTERMINAL(@$, Exp, @1); }
| FLOAT { $$ = CMMC_FLOAT($1, true); CMMC_NONTERMINAL(@$, Exp, @1); }
| CHAR { $$ = CMMC_CHAR($1); CMMC_NONTERMINAL(@$, Exp, @1); }
| LP Exp { CMMC_MISS_RP(@$); }
| Exp LP Args { CMMC_MISS_RP(@$); }
| Exp LP { CMMC_MISS_RP(@$); }
| Exp LB Exp { CMMC_MISS_RB(@$); }
| Exp ERR {}
| ERR {}
;
Args: Exp COMMA Args { CMMC_CONCAT_PACK($$, $1, $3); CMMC_NONTERMINAL(@$, Args, @1, @2, @3); }
| Exp { $$ = { $1 }; CMMC_NONTERMINAL(@$, Args, @1); }
;
%%
void yy::parser::error(const location_type& l, const std::string& m) {
    // reportError() << l << ": " << m << '\n';
}
