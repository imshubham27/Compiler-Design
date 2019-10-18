%{
#include<stdio.h>

%}
%%
[a-zA-Z0-9._]*@[a-zA-Z0-9]*"."[a-zA-Z]* {printf("valid");}
.*	{printf("not valid");}
%%
int yywrap()
{
return 1;
}
int main()
{
yyin=fopen("email.txt","r");
yylex();
return 0;
}
