global ft_strcmp
section .text

ft_strcmp:
	mov rax,0
.loop:
	mov al, [rdi]
	mov bl, [rsi]
	cmp al,bl
	jne .diff
	cmp al,0
	je .equal
	inc rdi
	inc rsi
	jmp .loop
	

.diff:
	movzx eax, al
	movzx ebx, bl
	sub eax,ebx
	cmp eax,0
	jl .endLower
	jmp .endHigher
	ret
.equal:
	xor eax,eax
	ret

.endLower:
	mov eax, -1
	ret
.endHigher:
	mov eax, 1
	ret
