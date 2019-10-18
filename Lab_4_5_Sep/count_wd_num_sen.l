%{
#include<stdio.h>
int now=0;
int nod=0;
int nos=0;
%}
%%

[0-9]* {nod++;}
[.] {nos++;}
[ \t] {now++;}
. ;

%%
int main()
{
yyin=fopen("abc.txt","r");
yylex();
printf("no of words-%d\n",now+1-nod);
printf("no of numbers-%d\n",nod);
printf("no of sentence-%d\n",nos);
return 0;
}
