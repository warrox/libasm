global ft_write
section .text

ft_write:
    mov     rax, 1    ; 1 is syscall for write and rdi, rsi,rdx are the default arguments pass to the syscall
    syscall
    ret
