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

"if" return yy::Parser::make_IF(loc);
"else" return yy::Parser::make_ELSE(loc);
"while" return yy::Parser::make_WHILE(loc);
"do" return yy::Parser::make_DO(loc);
"for" return yy::Parser::make_FOR(loc);
"continue" return yy::Parser::make_CONTINUE(loc);
"break" return yy::Parser::make_BREAK(loc);
"return" return yy::Parser::make_RETURN(loc);
"goto" return yy::Parser::make_GOTO(loc);
"switch" return yy::Parser::make_SWITCH(loc);
"case" return yy::Parser::make_CASE(loc);

"struct" return yy::Parser::make_STRUCT(loc);
"union" return yy::Parser::make_UNION(loc);

"+" return yy::Parser::make_ADD(loc);
"-" return yy::Parser::make_SUB(loc);
"*" return yy::Parser::make_MUL(loc);
"/" return yy::Parser::make_DIV(loc);
"%" return yy::Parser::make_REM(loc);
"!" return yy::Parser::make_LNOT(loc);
"~" return yy::Parser::make_BNOT(loc);
"&&" return yy::Parser::make_LAND(loc);
"&" return yy::Parser::make_BAND(loc);
"^" return yy::Parser::make_XOR(loc);
"||" return yy::Parser::make_LOR(loc);
"|" return yy::Parser::make_BOR(loc);
"<" return yy::Parser::make_LT(loc);
">" return yy::Parser::make_GT(loc);
"<=" return yy::Parser::make_LE(loc);
">=" return yy::Parser::make_GE(loc);
"==" return yy::Parser::make_EQ(loc);
"!=" return yy::Parser::make_NEQ(loc);
"=" return yy::Parser::make_ASSIGN(loc);

"." return yy::Parser::make_DOT(loc);
":" return yy::Parser::make_SEMI(loc);
"," return yy::Parser::make_COMMA(loc);
"#" return yy::Parser::make_SHARP(loc);

"(" return yy::Parser::make_LP(loc);
")" return yy::Parser::make_RP(loc);
"[" return yy::Parser::make_LB(loc);
"]" return yy::Parser::make_RB(loc);
"{" return yy::Parser::make_LC(loc);
"}" return yy::Parser::make_RC(loc);

[0-9]+ return yy::Parser::make_INT(strtol(yytext, NULL, 10), loc);

[a-zA-Z_]+[a-zA-Z_0-9]* return yy::Parser::make_ID(yytext, loc);
<<EOF>> return yy::Parser::make_END(loc);
%%
