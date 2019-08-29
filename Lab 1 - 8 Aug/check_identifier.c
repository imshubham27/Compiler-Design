#include<stdio.h>
#include<string.h>

void main()
{
    char keywords[32][10]={"auto","double","int","struct","break","enum","case","register","typedef","char","extern","return","union","const","float","short","unsigned","continue","for","signed","void","default","goto","sizeof","volatile","do","if","static","while"};
    char str[10];
    printf("Enter a word: ");
    gets(str);
    int a,k,i=1,j;
    while(i<strlen(str)){
        if((str[i]>='A'&&str[i]<='Z')||(str[i]>='a'&&str[i]<='z')||str[i]=='-'||(str[i]>='0'&& str[i]<='9'))
        a=1;
    else{
             a=0;
        break;
    }
        i++;
    }
    if((str[0]>='A'&&str[0]<='Z')||(str[0]>='a'&&str[0]<='z')||str[0]=='_')
        k=1;
    else
        k=0;
    
        for (i=0;i<32;i++){
        if(strcmp(str,keywords[i])==0)
            j=0;
        else
        {
            j=1
        }
        
    }

        if(a+k+j==3)
            printf("It's an identifier");
        else
            printf("It's not an identifier");

}
