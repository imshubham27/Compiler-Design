#include <stdio.h>
#include <stdlib.h>

void main()
{
    FILE *fptr;
    char ch;
    int wrd = 1, c = 0, v = 0, cons = 0;
    char fname[20];

    fptr = fopen("Sample_file.txt", "r");
    if (fptr == NULL)
    {
        printf("Error opening file.");
    }
    else
    {
        ch = fgetc(fptr);
        printf(" The content of the file are : ");
        while (ch != EOF)
        {
            printf("%c", ch);
            if (ch == ' ' || ch == '\n')
            {
                wrd++;
            }
            else if (isdigit(ch))
                c++;
            else if ((ch == 'a') || (ch == 'A') || (ch == 'e') || (ch == 'E') || (ch == 'i') || (ch == 'I') || (ch == 'o') || (ch == 'O') || (ch == 'u') || (ch == 'U'))
                v++;
            else
            {
                cons++;
            }

            ch = fgetc(fptr);
        }
        printf("\n The number of words in the  file are : %d\n", wrd);
        printf(" The number of digits in a file are : %d\n\n", c);
        printf(" The number of vowels & consonants in a file are : %d & %d repectively\n\n", v, cons);
    }
    fclose(fptr);
}