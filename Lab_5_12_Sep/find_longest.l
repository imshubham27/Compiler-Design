%{
#include<stdio.h>
#include<string.h>
int lon=0;
char s[20];
%}
%%
[A-Za-z]*[ \t\n] {if(yyleng>lon) {lon=yyleng;strcpy(s,yytext);}}
.  ;
%%
int yywrap()
{
 return 1;
}
int main()
{
 //yyin= fopen("Sample1.txt","r");
 yylex();
 printf("longest length %d\n",(lon-1));
 printf("Longest word is %s",s);
 return 0;
}

