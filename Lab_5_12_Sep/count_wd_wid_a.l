%{
#include<stdio.h>
int c=0;
%}
%%
^(a|A)[A-Za-z]*[ \t\n] {printf("%s",yytext);c++;}
[ ](a|A)[A-Za-z]*[ \t\n] {printf("%s",yytext);c++;}
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
 printf("words are %d\n",c);
 return 0;
}
