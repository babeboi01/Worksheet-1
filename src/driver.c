#include <stdio.h>

extern int asm_main(void); // Assembly function

int main() {
    printf("Running driver...\n");

    int result = asm_main();
    printf("Assembly returned: %d\n", result);

    return 0;
}

