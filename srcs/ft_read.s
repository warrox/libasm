extern __errno_location
global ft_read
section .text

ft_read:
    mov rax, 0  
    syscall
    cmp rax, 0
    jge .success    

    neg rax
    mov rdi, rax
    call __errno_location wrt ..plt
    mov [rax], rdi
    mov rax, -1     
    ret

.success:
    ret
