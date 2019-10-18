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
 int i,c=0;
 yylex();
 for(i=2;i<=num/2;i++)
 {if(num%i==0){c=c+1;}}
 if(c==0)
 printf("PRIME");
 else
 printf("COMPOSITE");
 yylex();
 return 0;
}
