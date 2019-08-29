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

            ch = fgetc(fptr);
        }
        printf("\n The number of words in the  file are : %d\n", wrd);
    }
    fclose(fptr);
}
