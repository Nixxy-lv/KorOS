v0.0.01-Pre-Alpha
ARM_Pu_OS: Prints "Hello World!"

required Termux packages:
`pkg install clang lld make git llvm binutils qemu-system-aarch64`
suggested packages:
`pkg install gdb file nano`

run with:
`qemu-system-aarch64 \
  -M virt \
  -cpu cortex-a57 \
  -nographic \
  -kernel kernel.elf \
  -semihosting \
  -semihosting-config enable=on,target=native`


