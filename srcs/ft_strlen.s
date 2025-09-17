global ft_strlen
section .text

ft_strlen:
    mov     rax, 0 ;met rax a 0
.loop:
    cmp     byte [rdi + rax], 0  ;rdi = argv + rax = 0, 0 = \0 donc if  8bits = char != 0 > jmp if equal je to done et return
    je      .done
    inc     rax
    jmp     .loop
.done:
    ret 
