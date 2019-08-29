#include <stdio.h>
#include <string.h>
#include <ctype.h>

int main() {
    char str[100];
    int i, n, operators = 0, operands = 0;
    int is_same_operand = 0;
    printf("Enter an valid expression: ");
    fgets(str, 100, stdin);

    n = strlen(str);

    for (i = 0; i < n; i++) {
        if (isalnum(str[i]) && !is_same_operand) {
            operands++;
            is_same_operand = 1;;
            continue;
        }
        switch(str[i]) {
            case '+':
            case '-':
            case '*':
            case '/':
            case '&':
            case '|':
            case '!':
            case '%':
            case '=':
            case '?':
                operators++;
                is_same_operand = 0;
                if (str[i] == '&' && str[i+1] == '&') i++;
                if (str[i] == '|' && str[i+1] == '|') i++;
                if (str[i] == '=' && str[i+1] == '=') i++;
        }
        if (str[i] == ':')
            is_same_operand = 0;
    }

    printf("No. of operators: %d\n", operators);
    printf("No. of operands: %d\n", operands);
    return 0;
}
