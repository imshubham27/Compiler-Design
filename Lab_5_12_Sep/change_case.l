%{
#include<stdio.h>
%}
%%
[a-z] {printf("%c",yytext[0]-32);}
[A-Z] {printf("%c",yytext[0]+32);}
. ECHO ;
%%
int yywrap()
{
 return 1;
}
int main()
{
 yyin= fopen("Sample.txt","r");
 yylex();
 return 0;
}
