%{
#include<stdio.h>
%}
%%
"if"|"else"|"int"|"char"|"while"|"switch"|"for"|"float"|"void" {printf("\n KEYWORD \n");}
.ECHO;
%%
int yywrap(){return 1;}
int main()
{
yyin = fopen("testkeyword.txt","r");
yylex();
return 0;
}
