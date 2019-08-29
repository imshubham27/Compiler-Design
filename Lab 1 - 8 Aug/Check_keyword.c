#include<stdio.h>
#include<string.h>

void main()
{
    char keywords[32][10]={"auto","double","int","struct","break","enum","case","register","typedef","char","extern","return","union","const","float","short","unsigned","continue","for","signed","void","default","goto","sizeof","volatile","do","if","static","while"};
    char str[10];
    int k=0;
    printf("Enter the word: ");
    gets(str);
    for (int i=0;i<32;i++){
        if(strcmp(str,keywords[i])==0)
        {
            k=1;
        }
    }
    if(k==1)
        printf("It's a keyword ");
    else
        printf("It's not a keyword");

}
