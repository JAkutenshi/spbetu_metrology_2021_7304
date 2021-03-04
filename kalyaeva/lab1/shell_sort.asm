swap:
        push    rbp
        mov     rbp, rsp
        mov     QWORD PTR [rbp-24], rdi
        mov     QWORD PTR [rbp-32], rsi
        mov     rax, QWORD PTR [rbp-24]
        movss   xmm0, DWORD PTR [rax]
        movss   DWORD PTR [rbp-4], xmm0
        mov     rax, QWORD PTR [rbp-32]
        movss   xmm0, DWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-24]
        movss   DWORD PTR [rax], xmm0
        mov     rax, QWORD PTR [rbp-32]
        movss   xmm0, DWORD PTR [rbp-4]
        movss   DWORD PTR [rax], xmm0
        nop
        pop     rbp
        ret
sort:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     QWORD PTR [rbp-24], rdi
        mov     DWORD PTR [rbp-28], esi
        mov     eax, DWORD PTR [rbp-28]
        mov     DWORD PTR [rbp-8], eax
        jmp     .L3
.L9:
        mov     eax, DWORD PTR [rbp-8]
        mov     edx, eax
        shr     edx, 31
        add     eax, edx
        sar     eax
        mov     DWORD PTR [rbp-8], eax
.L8:
        mov     BYTE PTR [rbp-1], 1
        mov     DWORD PTR [rbp-12], 0
        jmp     .L4
.L7:
        mov     edx, DWORD PTR [rbp-12]
        mov     eax, DWORD PTR [rbp-8]
        add     eax, edx
        mov     DWORD PTR [rbp-16], eax
        mov     eax, DWORD PTR [rbp-28]
        cmp     eax, DWORD PTR [rbp-16]
        jle     .L5
        mov     eax, DWORD PTR [rbp-12]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-24]
        add     rax, rdx
        movss   xmm0, DWORD PTR [rax]
        mov     eax, DWORD PTR [rbp-16]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-24]
        add     rax, rdx
        movss   xmm1, DWORD PTR [rax]
        comiss  xmm0, xmm1
        jbe     .L5
        mov     eax, DWORD PTR [rbp-12]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-24]
        add     rdx, rax
        mov     eax, DWORD PTR [rbp-16]
        cdqe
        lea     rcx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-24]
        add     rax, rcx
        mov     rsi, rdx
        mov     rdi, rax
        call    swap
        mov     BYTE PTR [rbp-1], 0
.L5:
        add     DWORD PTR [rbp-12], 1
.L4:
        mov     eax, DWORD PTR [rbp-12]
        cmp     eax, DWORD PTR [rbp-28]
        jl      .L7
        movzx   eax, BYTE PTR [rbp-1]
        xor     eax, 1
        test    al, al
        jne     .L8
.L3:
        cmp     DWORD PTR [rbp-8], 0
        jg      .L9
        mov     rax, QWORD PTR [rbp-24]
        leave
        ret
main:
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 40
        mov     rax, rsp
        mov     rbx, rax
        mov     DWORD PTR [rbp-24], 80
        mov     eax, DWORD PTR [rbp-24]
        mov     DWORD PTR [rbp-28], eax
        mov     eax, DWORD PTR [rbp-24]
        movsx   rdx, eax
        sub     rdx, 1
        mov     QWORD PTR [rbp-40], rdx
        movsx   rdx, eax
        mov     r8, rdx
        mov     r9d, 0
        movsx   rdx, eax
        mov     rsi, rdx
        mov     edi, 0
        cdqe
        lea     rdx, [0+rax*4]
        mov     eax, 16
        sub     rax, 1
        add     rax, rdx
        mov     edi, 16
        mov     edx, 0
        div     rdi
        imul    rax, rax, 16
        sub     rsp, rax
        mov     rax, rsp
        add     rax, 3
        shr     rax, 2
        sal     rax, 2
        mov     QWORD PTR [rbp-48], rax
        mov     DWORD PTR [rbp-20], 0
        jmp     .L13
.L14:
        call    rand
        movsx   rdx, eax
        imul    rdx, rdx, 1374389535
        shr     rdx, 32
        sar     edx, 5
        mov     ecx, eax
        sar     ecx, 31
        sub     edx, ecx
        imul    ecx, edx, 100
        sub     eax, ecx
        mov     edx, eax
        pxor    xmm0, xmm0
        cvtsi2ss        xmm0, edx
        mov     rax, QWORD PTR [rbp-48]
        mov     edx, DWORD PTR [rbp-20]
        movsx   rdx, edx
        movss   DWORD PTR [rax+rdx*4], xmm0
        add     DWORD PTR [rbp-20], 1
.L13:
        mov     eax, DWORD PTR [rbp-20]
        cmp     eax, DWORD PTR [rbp-28]
        jl      .L14
        mov     edx, DWORD PTR [rbp-28]
        mov     rax, QWORD PTR [rbp-48]
        mov     esi, edx
        mov     rdi, rax
        call    sort
        mov     rsp, rbx
        mov     eax, 0
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret