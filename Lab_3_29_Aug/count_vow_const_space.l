%{
#include<stdio.h>
int vow_count=0;
int const_count =0;
int space_count=0;
int dig_count=0;
%}
%%
[aeiouAEIOU] {vow_count++;}
[a-zA-Z] {const_count++;} 
[0-9] {dig_count++;}
[ \t] {space_count++;}
. ;
%%
int yywrap(){return 1;}
int main()
{
printf("Enter the string: ");
yylex();
printf("Number of vowels %d \n",vow_count);
printf("Number of consonants %d \n",const_count);
printf("Number of spaces %d \n",space_count);
printf("Number of digits %d \n",dig_count);
return 0;
}
