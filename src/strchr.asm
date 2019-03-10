[BITS 64]
	global strchr
	section .text
strchr:
        push rbp
        mov rbp, rsp

loop:
        cmp BYTE [rdi], sil
        jz found
        cmp BYTE [rdi], 0
        jz notfound
        inc rdi
        jmp loop

found:
        mov rax, rdi
        jmp end

notfound:
        mov rax, 0

end:
        mov rsp, rbp
        pop rbp
        ret