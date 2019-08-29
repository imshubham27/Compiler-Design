#include<stdio.h>
#include<string.h>

void main()

{
char a[100];

int i=2,j=0;

printf("Enter Line:\n");

gets(a);

if(a[0]=='/')

{

if(a[1]=='/')

printf("It is a comment.\n");

else if(a[1]=='*')

{

for(i=2;i<=100;i++)

{

if(a[i]=='*'&&a[i+1]=='/')

{

printf("It is a comment.\n");

j=1;

break;

}

else

continue;

}

if(j==0)

printf("It is not a comment.\n");

}

else

printf("It is not a comment\n");

}

else

printf("It is not a comment\n");

}

