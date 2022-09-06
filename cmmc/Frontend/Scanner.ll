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
%}
[ \t]+ loc.step ();
[\n]+ loc.lines (yyleng); loc.step ();

"if" return yy::parser::make_IF(loc);
"else" return yy::parser::make_ELSE(loc);
"while" return yy::parser::make_WHILE(loc);
"do" return yy::parser::make_DO(loc);
"for" return yy::parser::make_FOR(loc);
"continue" return yy::parser::make_CONTINUE(loc);
"break" return yy::parser::make_BREAK(loc);
"return" return yy::parser::make_RETURN(loc);
"goto" return yy::parser::make_GOTO(loc);
"switch" return yy::parser::make_SWITCH(loc);
"case" return yy::parser::make_CASE(loc);

"struct" return yy::parser::make_STRUCT(loc);
"union" return yy::parser::make_UNION(loc);

"+" return yy::parser::make_ADD(loc);
"-" return yy::parser::make_SUB(loc);
"*" return yy::parser::make_MUL(loc);
"/" return yy::parser::make_DIV(loc);
"%" return yy::parser::make_REM(loc);
"!" return yy::parser::make_LNOT(loc);
"~" return yy::parser::make_BNOT(loc);
"&&" return yy::parser::make_LAND(loc);
"&" return yy::parser::make_BAND(loc);
"^" return yy::parser::make_XOR(loc);
"||" return yy::parser::make_LOR(loc);
"|" return yy::parser::make_BOR(loc);
"<" return yy::parser::make_LT(loc);
">" return yy::parser::make_GT(loc);
"<=" return yy::parser::make_LE(loc);
">=" return yy::parser::make_GE(loc);
"==" return yy::parser::make_EQ(loc);
"!=" return yy::parser::make_NEQ(loc);
"=" return yy::parser::make_ASSIGN(loc);

"." return yy::parser::make_DOT(loc);
";" return yy::parser::make_SEMI(loc);
"," return yy::parser::make_COMMA(loc);
"#" return yy::parser::make_SHARP(loc);

"(" return yy::parser::make_LP(loc);
")" return yy::parser::make_RP(loc);
"[" return yy::parser::make_LB(loc);
"]" return yy::parser::make_RB(loc);
"{" return yy::parser::make_LC(loc);
"}" return yy::parser::make_RC(loc);

[0-9]+ return yy::parser::make_INT(strtol(yytext, NULL, 10), loc);

[a-zA-Z_]+[a-zA-Z_0-9]* return yy::parser::make_ID(yytext, loc);
<<EOF>> return yy::parser::make_END(loc);
%%
