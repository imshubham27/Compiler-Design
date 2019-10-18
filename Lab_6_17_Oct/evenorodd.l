%{
#include<stdio.h>
int num;
%}
%%
[0-9]+ {num=atoi(yytext);}
%%
int yywrap()
{
 return 1;
}
int main()
{
 yylex();
 if(num%2==0)
 {printf("EVEN");}
 else
 {printf("ODD");}
 yylex();
 return 0;
}
