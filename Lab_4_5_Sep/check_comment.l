%{
#include<stdio.h>

%}
%%
"//".* {printf("single line comment");}
("/*")[a-zA-Z0-9\n" ".]*("*/")  {printf("multiline comment");}

.	;
%%
int main()
{
yyin=fopen("comment.txt","r");
yylex();

return 0;
}
