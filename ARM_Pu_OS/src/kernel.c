void __attribute__((noreturn)) kernel_main() {
    asm volatile (
        "mov x0, #4\n"      // SYS_WRITE0
        "ldr x1, =msg\n"
        "hlt #0xf000\n"
    );

    while (1);
}

const char msg[] = "Hello World!\n";
