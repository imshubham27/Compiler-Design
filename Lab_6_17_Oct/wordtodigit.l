%{
#include <stdio.h>
#include <string.h>
int val=0;
%}
%%
"zero"	    {val=0;}
"one"       { val=val + 1 }
"one "       { val=val + 1; yytext += 4;}
"two"       { val=val + 2; }
"two "       { val=val + 2; yytext += 4;}
"three"     { val=val + 3; }
"three "     { val=val + 3; yytext += 6;}
"four"      { val=val + 4; }
"four "      { val=val + 4; yytext += 5;}
"five"      { val=val + 5; }
"five "      { val=val + 5; yytext += 5;}
"six"       { val=val + 6; }
"six "       { val=val + 6; yytext += 4;}
"seven"     { val=val + 7; }
"seven "     { val=val + 7; yytext += 6;}
"eight"     { val=val + 8; }
"eight "     { val=val + 8; yytext += 6;}
"nine"      { val=val + 9; }
"nine "      { val=val + 9; yytext += 5;}
"ten"       { val=val + 10; }
"eleven"    { val=val + 11; }
"twelve"    { val=val + 12; }
"thirteen"  { val=val + 13; }
"fourteen"  { val=val + 14; }
"fifteen"   { val=val + 15; }
"sixteen"   { val=val + 16; }
"seventeen" { val=val + 17; }
"eighteen"  { val=val + 18; }
"nineteen"  { val=val + 19; }
"twenty"    { val=val + 20; }
"twenty "    { val=val + 20; yytext += 7;}
"thirty"    { val=val + 30; }
"thirty "    { val=val + 30; yytext += 7;}
"fourty"    { val=val + 40; }
"fourty "    { val=val + 40; yytext += 7;}
"fifty"     { val=val + 50; }
"fifty "     { val=val + 50; yytext += 6;}
"sixty"     { val=val + 60; }
"sixty "     { val=val + 60; yytext += 6;}
"seventy"   { val=val + 70; }
"seventy "   { val=val + 70; yytext += 9;}
"eighty"    { val=val + 80; }
"eighty "    { val=val + 80; yytext += 7;}
"ninety"    { val=val + 90; }
"ninety "    { val=val + 90; yytext += 7;}
"hundred"   { val=val + 100; }
"hundred "  { yytext += 8;  }
"thousand"  { printf("000"); }
"thousand " { yytext += 9; }
.       ECHO;
%%
int yywrap() { return 1; }
int main()
{
    yylex();
    return 0;
}
