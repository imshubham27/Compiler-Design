%{
#include<stdio.h>
int operand_count=0;
int operator_count =0;
%}
%%
[a-zA-Z0-9] {operand_count++;}
[+-/*] {operator_count++;} 
. ;
%%
int yywrap(){return 1;}
int main()
{
printf("Enter the expression ");
yylex();
printf("Number of operators %d \n",operator_count);
printf("Number of operands %d \n",operand_count);
return 0;
}
