%{
#include<stdio.h>
int flag=1;
%}

%%
[ \t\n]+[aA][nN][dD][ \t\n]+ {flag=0;}
[ \t\n]+[bB][uU][tT][ \t\n]+ {flag=0;}
[ \t\n]+[oO][rR][ \t\n]+ {flag=0;}
. {;}
%%


int yywrap()
{
return 1;
}

int main()
{
  printf("Enter the sentence: ");
  yylex();

  if(flag==1)
    printf("\n the given sentence is simple sentence\n");
  else
    printf("\n the given sentence is compound sentence\n");
  return 0;
}



