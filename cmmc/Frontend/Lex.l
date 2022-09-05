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
%{
#include "cmmc/Frontend/ParserDecl.h"
%}
%%
"if" { return IF; }
"else" { return ELSE; }
"while" { return WHILE; }
"do" { return DO; }
"for" { return FOR; }
"continue" { return CONTINUE; }
"break" { return BREAK; }
"return" { return RETURN; }
"goto" { return GOTO; }
"switch" { return SWITCH; }
"case" { return CASE; }

"struct" { return STRUCT; }
"union" { return UNION; }

"+" { return ADD; }
"-" { return SUB; }
"*" { return MUL; }
"/" { return DIV; }
"%" { return MOD; }
"!" { return LNOT; }
"~" { return BNOT; }
"&&" { return LAND; }
"&" { return BAND; }
"^" { return XOR; }
"||" { return LOR; }
"|" { return BOR; }
"<" { return LT; }
">" { return GT; }
"<=" { return LE; }
">=" { return GE; }
"==" { return EQ; }
"!=" { return NEQ; }
"=" { return ASSIGN; }

"." { return DOT; }
":" { return SEMI; }
"," { return COMMA; }
"#" { return SHARP; }

"(" { return LP; }
")" { return RP; }
"[" { return LB; }
"]" { return RB; }
"{" { return LC; }
"}" { return RC; }

[0-9]+ { yylval = atoi(yytext); return INT; }

[a-zA-Z_]+[a-zA-Z_0-9]* { return ID; }
