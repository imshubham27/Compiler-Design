%{
#include<stdio.h>
%}
%%
[a-zA-Z]  {printf("ALPHA \n");}
[0-9]  {printf("DIGIT \n");}
.ECHO;
%%
int yywrap(){return 1;}
int main()
{
yyin = fopen("testalpha.txt","r");
yylex();
return 0;
}
