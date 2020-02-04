[BITS 64]
        global strcmp
        section .text
strcmp:
        push rbp
        mov rbp, rsp
        xor rcx, rcx

loop:
        mov r8, [rdi + rcx]
        mov r9, [rdi + rcx]
        cmp r8, 0
        jz end
        cmp r9, 0
        jz end
        cmp r8, r9
        jnz end
        inc rcx
        jmp loop  

end:
        sub r8, r9
        mov rax, r8
        mov rsp, rbp
        pop rbp
        ret
