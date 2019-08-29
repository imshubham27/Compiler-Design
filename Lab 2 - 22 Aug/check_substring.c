#include <stdio.h>
#include <string.h>

int main() {
    char str[100];
    char sub[100];
    int len1, len2, i;

    printf("Enter string: ");
    scanf("%s", str);
    printf("Enter substring to check: ");
    scanf("%s", sub);

    len1 = strlen(str);
    len2 = strlen(sub);
    if (len1 < len2) {
        printf("Not a substring");
        return 0;
    }

    for (i = 0; i < len1-len2+1; i++) {
        if (!strncmp(&str[i], sub, len2))
            break;
    }

    if (i == len1-len2+1)
        printf("Not a substring!\n");
    else
        printf("Is a substring.\n");
    return 0;
}
