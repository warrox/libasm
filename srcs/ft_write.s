extern __errno_location
global ft_write
section .text

ft_write:
    mov     rax,    1    ; 1 is syscall for write and rdi, rsi,rdx are the default arguments pass to the syscall
    syscall
	jge .success    

    neg rax
    mov rdi, rax
    call __errno_location wrt ..plt
    mov [rax], rdi
    mov rax, -1     
    ret

.success:
    ret
