%{
#include<stdio.h>
%}
%%
[A-Ua-u] {printf("%c",(yytext[0]+5));}
[V-Zv-z] {printf("%c",yytext[0]-(26-5));}
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
