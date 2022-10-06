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
%option noyywrap batch
%{
#include <cmmc/Frontend/Driver.hpp>
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
    String val = String::get(yytext); return Parser::make_TYPE(val, {CMMC_RECORD(TYPE, val), loc});
  };
%}
[ \t]+ loc.step ();
[\n]+ loc.lines (yyleng); loc.step ();
[\r]+ loc.step ();

"//" { 
  char c;
  // ignore the following chars until seeing a newline character
  do c = yyinput();
  while(c != '\n' && c != '\0'); 
  // put the newline character back to the input buffer
  if(c == '\n')
    unput(c); 
}

"/*" {
  char c1 = yyinput();
  auto consume = [&](char ch) {
    if(ch == '\n')
      loc.lines(1);
    else 
      loc.columns(1);
  };
  while(true) {
    if(c1 == '\0') {
      CMMC_COMMENT_ERROR();
      break;
    }
    consume(c1);
    char c2 = yyinput();
    if(c1 == '*' && c2 == '/') {
      consume(c2);
      break;
    }
    c1 = c2;
  }
}

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

"const" { CMMC_TERMINAL(CONST); }

"+=" { CMMC_TERMINAL(PLUS_ASSIGN); }
"-=" { CMMC_TERMINAL(MINUS_ASSIGN); }
"*=" { CMMC_TERMINAL(MUL_ASSIGN); }
"/=" { CMMC_TERMINAL(DIV_ASSIGN); }
"%=" { CMMC_TERMINAL(REM_ASSIGN); }
"&=" { CMMC_TERMINAL(BAND_ASSIGN); }
"|=" { CMMC_TERMINAL(BOR_ASSIGN); }
"^=" { CMMC_TERMINAL(XOR_ASSIGN); }
"+" { CMMC_TERMINAL(PLUS); }
"-" { CMMC_TERMINAL(MINUS); }
"*" { CMMC_TERMINAL(MUL); }
"/" { CMMC_TERMINAL(DIV); }
"%" { CMMC_TERMINAL(REM); }
"!" { CMMC_TERMINAL(NOT); }
"~" { CMMC_TERMINAL(BNOT); }
"&&" { CMMC_TERMINAL(AND); }
"&" { CMMC_TERMINAL(BAND); }
"^" { CMMC_TERMINAL(XOR); }
"||" { CMMC_TERMINAL(OR); }
"|" { CMMC_TERMINAL(BOR); }
"<" { CMMC_TERMINAL(LT); }
">" { CMMC_TERMINAL(GT); }
"<=" { CMMC_TERMINAL(LE); }
">=" { CMMC_TERMINAL(GE); }
"==" { CMMC_TERMINAL(EQ); }
"!=" { CMMC_TERMINAL(NE); }
"=" { CMMC_TERMINAL(ASSIGN); }

"." { CMMC_TERMINAL(DOT); }
";" { CMMC_TERMINAL(SEMI); }
"," { CMMC_TERMINAL(COMMA); }
"#" { CMMC_TERMINAL(SHARP); }
"?" { CMMC_TERMINAL(QUEST); }
":" { CMMC_TERMINAL(COLON); }

"(" { CMMC_TERMINAL(LP); }
")" { CMMC_TERMINAL(RP); }
"[" { CMMC_TERMINAL(LB); }
"]" { CMMC_TERMINAL(RB); }
"{" { CMMC_TERMINAL(LC); }
"}" { CMMC_TERMINAL(RC); }

"void" { return emitType(); }
"int" { return emitType(); }
"char" { return emitType(); }
"float" { return emitType(); }

"0"[xX][0-9A-Fa-f]+ { uintmax_t val = strtoull(yytext, NULL, 16); return Parser::make_INT(val, {CMMC_RECORD(INT, val), loc}); }
0|([1-9][0-9]*) { uintmax_t val = strtoull(yytext, NULL, 10); return Parser::make_INT(val, {CMMC_RECORD(INT, val), loc}); }
"0"[1-7][0-7]* { uintmax_t val = strtoull(yytext, NULL, 8); return Parser::make_INT(val, {CMMC_RECORD(INT, val), loc}); }
([0-9]+)?"."[0-9]+([eE][+-]?[1-9][0-9]*)? { double val = strtod(yytext, NULL); return Parser::make_FLOAT(val, {CMMC_RECORD(FLOAT, val), loc}); }
([0-9]+)([eE]-?[1-9][0-9]*) { double val = strtod(yytext, NULL); return Parser::make_FLOAT(val, {CMMC_RECORD(FLOAT, val), loc}); }
([0-9]+)"." { double val = strtod(yytext, NULL); return Parser::make_FLOAT(val, {CMMC_RECORD(FLOAT, val), loc}); }
0[xX][0-9a-fA-F]*"."[0-9a-fA-F]*[pP][+-]?[0-9]+ { double val = strtod(yytext, NULL); return Parser::make_FLOAT(val, {CMMC_RECORD(FLOAT, val), loc}); }
[a-zA-Z_][a-zA-Z_0-9]* { String val = String::get(yytext); return Parser::make_ID(val, {CMMC_RECORD(ID, val), loc}); }
"'"."'" { char ch = yytext[1]; return Parser::make_CHAR(ch, {CMMC_RECORD(CHAR, ch), loc}); }
"'\\x"[0-9a-fA-F][0-9a-fA-F]"'" { char ch = strtol(yytext+3, NULL, 16); return Parser::make_CHAR(ch, {CMMC_RECORD(CHAR, ch), loc}); }

<<EOF>> return Parser::make_END({0,loc});

. { CMMC_LEXER_ERROR(yytext); }
%%
