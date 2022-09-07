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
%option noyywrap nounput noinput batch
%{

#undef yywrap
#define yywrap() 1

#include "cmmc/Frontend/Driver.hpp"
%}
%{
  // Code run each time a pattern is matched.
  # define YY_USER_ACTION  loc.columns (yyleng);
%}
%%
%{
  // A handy shortcut to the location held by the driver.
  yy::location& loc = driver.location();
  // Code run each time yylex is called.
  loc.step ();

  auto emitType = [&]{
    StringAST val{yytext}; CMMC_RECORD(TYPE, 0, val); return yy::parser::make_TYPE(val, loc);
  };
%}
[ \t]+ loc.step ();
[\n]+ loc.lines (yyleng); loc.step ();

"if" { CMMC_TERMINAL(IF); }
"else" { CMMC_TERMINAL(ELSE); }
"while" { CMMC_TERMINAL(WHILE); }
"do" { CMMC_TERMINAL(DO); }
"for" { CMMC_TERMINAL(FOR); }
"continue" { CMMC_TERMINAL(CONTINUE); }
"break" { CMMC_TERMINAL(BREAK); }
"return" { CMMC_TERMINAL(RETURN); }
"goto" { CMMC_TERMINAL(GOTO); }
"switch" { CMMC_TERMINAL(SWITCH); }
"case" { CMMC_TERMINAL(CASE); }

"struct" { CMMC_TERMINAL(STRUCT); }
"union" { CMMC_TERMINAL(UNION); }

"+" { CMMC_TERMINAL(ADD); }
"-" { CMMC_TERMINAL(SUB); }
"*" { CMMC_TERMINAL(MUL); }
"/" { CMMC_TERMINAL(DIV); }
"%" { CMMC_TERMINAL(REM); }
"!" { CMMC_TERMINAL(LNOT); }
"~" { CMMC_TERMINAL(BNOT); }
"&&" { CMMC_TERMINAL(LAND); }
"&" { CMMC_TERMINAL(BAND); }
"^" { CMMC_TERMINAL(XOR); }
"||" { CMMC_TERMINAL(LOR); }
"|" { CMMC_TERMINAL(BOR); }
"<" { CMMC_TERMINAL(LT); }
">" { CMMC_TERMINAL(GT); }
"<=" { CMMC_TERMINAL(LE); }
">=" { CMMC_TERMINAL(GE); }
"==" { CMMC_TERMINAL(EQ); }
"!=" { CMMC_TERMINAL(NEQ); }
"=" { CMMC_TERMINAL(ASSIGN); }

"." { CMMC_TERMINAL(DOT); }
";" { CMMC_TERMINAL(SEMI); }
"," { CMMC_TERMINAL(COMMA); }
"#" { CMMC_TERMINAL(SHARP); }

"(" { CMMC_TERMINAL(LP); }
")" { CMMC_TERMINAL(RP); }
"[" { CMMC_TERMINAL(LB); }
"]" { CMMC_TERMINAL(RB); }
"{" { CMMC_TERMINAL(LC); }
"}" { CMMC_TERMINAL(RC); }

"int" { return emitType(); }
"char" { return emitType(); }
"float" { return emitType(); }
0|[1-9][0-9]* { uintmax_t val = strtoull(yytext, NULL, 10); CMMC_RECORD(INT, 0, val); return yy::parser::make_INT(val, loc); }
[a-zA-Z_][a-zA-Z_0-9]* { StringAST val{yytext}; CMMC_RECORD(ID, 0, val); return yy::parser::make_ID(val, loc); }
"'"."'" { char ch = yytext[1]; CMMC_RECORD(CHAR, 0, ch); return yy::parser::make_CHAR(ch, loc); }

<<EOF>> return yy::parser::make_END(loc);
%%
