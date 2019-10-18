%{
#include<stdio.h>
%}
%%
[a-zA-Z0-9]*(st)[a-zA-Z0-9]* {printf("it is a substring!");}
.* {printf("it is not a substring!");}
%%
int main()
{
yyin=fopen("substring.txt","r");
yylex();
return 0;
}

