;RDI, RSI, RDX, RCX, R8, R9 (R10) XMM0, XMM1, XMM2, XMM3, XMM4, XMM5, XMM6 and XMM7 are used for the first floating point arguments.
segment .data
printInt: db "%d",0
printNewline: db 10,0
printString: db "%s",0
dump_regs_string: db "RAX =0x%16X", 10,0
extern printf

segment .text 
global print_int 
global print_nl
global print_string
global dump_regs

dump_regs:
	enter 0,0
	push rdi
	push rsi
	push rdx
	push rcx	
	push r9

	mov rsi, rax
	mov rdi, dump_regs_string
	call printf WRT ..plt


	pop r9
	pop rcx
	pop rdx
	pop rsi
	pop rdi
	leave
	ret

print_int:
	push rax
	push rsi
	push rdi
	mov rsi, rax
	mov rax, 0x0 ; xmm
	mov rdi, printInt
	call printf WRT ..plt
	pop rdi
	pop rsi
	pop rax
	ret
print_nl:
	push rax
	push rsi
	push rdi
	mov rdi, printNewline
	call printf WRT ..plt
	pop rdi
	pop rsi
	pop rax
	ret
print_string:
	push rax
	push rsi
	push rdi
	mov rsi, rax
	mov rdi, printString
	call printf WRT ..plt
	pop rdi
	pop rsi
	pop rax
	ret
