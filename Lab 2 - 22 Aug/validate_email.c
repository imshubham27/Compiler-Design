#include <stdio.h>
#include <ctype.h>
#include <string.h>

int main() {
    char str[100];
    int i, len, valid = 1;
    printf("Enter Email: ");
    fgets(str, 100, stdin);
    len = strlen(str);
    for (i = 0; i < len && str[i] != '@'; i++) {
        if (isalpha(str[i]))
            continue;
        if (isdigit(str[i]) && i != 0)
            continue;
        if (str[i] == '_')
            continue;
        if (str[i] == '.')
            continue;
        valid = 0;
        break;
    }
    if (!valid || !i || i == len) {
        printf("Invalid Email!\n");
        printf("(Before @)\n");
        return 0;
    }
    i++;

    for (; i < len && str[i] != '.'; i++) {
        if (isalpha(str[i]) && islower(str[i]))
            continue;
        if (isdigit(str[i]))
            continue;
        valid = 0;
        break;
    }
    if (!valid || i == len || str[i-1] == '@') {
        printf("Invalid Email!\n");
        printf("(Before .)\n");
        return 0;
    }
    i++;

    for (; i < len && str[i] != '\n'; i++) {
        if (isalpha(str[i]) && islower(str[i]))
            continue;
        if (str[i] == '.')
            continue;
        valid = 0;
        break;
    }

    if (valid) {
        printf("Email is valid.\n");
    } else {
        printf("Invalid Email!\n");
        printf("(After .)\n");
    }
    return 0;
}
