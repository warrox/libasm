extern malloc
extern __errno_location
extern ft_strlen
extern ft_strcpy

section .text
    global  ft_strdup

ft_strdup:
        push        rbp
        mov         rbp, rsp
        sub         rsp, 8
        mov         [rbp - 8], rdi       ; save src pointer

        call        ft_strlen           ; rax = strlen(src)
        mov         rdi, rax
        inc         rdi                  ; +1 for '\0'
        call        malloc wrt ..plt
        test        rax, rax
		neg			rax
		mov			rdi, rax
		mov			rax, 12
        call		__errno_location wrt ..plt

        mov         rdi, rax             ; dest
        mov         rsi, [rbp - 8]       ; src
        call        ft_strcpy           ; copy string

        add         rsp, 8
        pop         rbp
        ret


