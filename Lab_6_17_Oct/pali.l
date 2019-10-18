%{
#include<stdio.h>
#include<string.h>
int len;
char a[20];
char str[20];
%}
%%
[A-Za-z0-9]* {len=yyleng;strcpy(a,yytext);}
%%
int yywrap()
{
 return 1;
}
int main()
{
 int i,j,flag;
 yylex();
 printf("INPUT WORD IS : %s",a);
 for(i=0,j=len-1;i<=len-1,j>=0;i++,j--)
 {str[i]=a[j];}
 printf("\nREVERSED STRING IS %s",str);
 if(strcmp(str,a)==0)
 {printf("\n PALINDROME");}
 else
 {printf("\n NOT A PALINDROME");}
 return 0;
}
