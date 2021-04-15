erf(float):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 48
        movss   DWORD PTR [rbp-36], xmm0
        movss   xmm0, DWORD PTR [rbp-36]
        mulss   xmm0, xmm0
        movss   DWORD PTR [rbp-16], xmm0
        movss   xmm0, DWORD PTR [rbp-36]
        movss   DWORD PTR [rbp-4], xmm0
        movss   xmm0, DWORD PTR [rbp-36]
        movss   DWORD PTR [rbp-8], xmm0
        mov     DWORD PTR [rbp-12], 0
.L6:
        add     DWORD PTR [rbp-12], 1
        movss   xmm0, DWORD PTR [rbp-4]
        movss   DWORD PTR [rbp-20], xmm0
        pxor    xmm0, xmm0
        cvtss2sd        xmm0, DWORD PTR [rbp-8]
        movapd  xmm1, xmm0
        addsd   xmm1, xmm0
        pxor    xmm0, xmm0
        cvtss2sd        xmm0, DWORD PTR [rbp-16]
        mulsd   xmm1, xmm0
        pxor    xmm0, xmm0
        cvtsi2sd        xmm0, DWORD PTR [rbp-12]
        movapd  xmm2, xmm0
        addsd   xmm2, xmm0
        movsd   xmm0, QWORD PTR .LC0[rip]
        addsd   xmm0, xmm2
        divsd   xmm1, xmm0
        pxor    xmm0, xmm0
        cvtsd2ss        xmm0, xmm1
        movss   DWORD PTR [rbp-8], xmm0
        movss   xmm0, DWORD PTR [rbp-8]
        addss   xmm0, DWORD PTR [rbp-20]
        movss   DWORD PTR [rbp-4], xmm0
        movss   xmm1, DWORD PTR [rbp-4]
        movss   xmm0, DWORD PTR .LC1[rip]
        mulss   xmm1, xmm0
        movss   xmm0, DWORD PTR [rbp-8]
        comiss  xmm0, xmm1
        jb      .L9
        jmp     .L6
.L9:
        pxor    xmm0, xmm0
        cvtss2sd        xmm0, DWORD PTR [rbp-4]
        addsd   xmm0, xmm0
        movsd   QWORD PTR [rbp-48], xmm0
        movss   xmm0, DWORD PTR [rbp-16]
        movss   xmm1, DWORD PTR .LC2[rip]
        movaps  xmm4, xmm0
        xorps   xmm4, xmm1
        movd    eax, xmm4
        movd    xmm0, eax
        call    std::exp(float)
        cvtss2sd        xmm0, xmm0
        mulsd   xmm0, QWORD PTR [rbp-48]
        movsd   xmm1, QWORD PTR .LC3[rip]
        divsd   xmm0, xmm1
        cvtsd2ss        xmm0, xmm0
        movss   DWORD PTR [rbp-24], xmm0
        movss   xmm0, DWORD PTR [rbp-24]
        leave
        ret
erfc(float):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 48
        movss   DWORD PTR [rbp-36], xmm0
        mov     DWORD PTR [rbp-16], 12
        movss   xmm0, DWORD PTR [rbp-36]
        mulss   xmm0, xmm0
        movss   DWORD PTR [rbp-20], xmm0
        pxor    xmm0, xmm0
        cvtss2sd        xmm0, DWORD PTR [rbp-20]
        movapd  xmm1, xmm0
        addsd   xmm1, xmm0
        movsd   xmm0, QWORD PTR .LC0[rip]
        divsd   xmm0, xmm1
        cvtsd2ss        xmm0, xmm0
        movss   DWORD PTR [rbp-24], xmm0
        pxor    xmm1, xmm1
        cvtss2sd        xmm1, DWORD PTR [rbp-24]
        pxor    xmm2, xmm2
        cvtsi2sd        xmm2, DWORD PTR [rbp-16]
        movsd   xmm0, QWORD PTR .LC0[rip]
        addsd   xmm0, xmm2
        mulsd   xmm1, xmm0
        movsd   xmm0, QWORD PTR .LC0[rip]
        addsd   xmm0, xmm1
        cvtsd2ss        xmm0, xmm0
        movss   DWORD PTR [rbp-4], xmm0
        mov     eax, DWORD PTR [rbp-16]
        mov     DWORD PTR [rbp-12], eax
.L12:
        cmp     DWORD PTR [rbp-12], 0
        jle     .L11
        pxor    xmm0, xmm0
        cvtsi2ss        xmm0, DWORD PTR [rbp-12]
        mulss   xmm0, DWORD PTR [rbp-24]
        movaps  xmm1, xmm0
        divss   xmm1, DWORD PTR [rbp-4]
        movss   xmm0, DWORD PTR .LC4[rip]
        addss   xmm0, xmm1
        movss   DWORD PTR [rbp-8], xmm0
        movss   xmm0, DWORD PTR [rbp-8]
        movss   DWORD PTR [rbp-4], xmm0
        sub     DWORD PTR [rbp-12], 1
        jmp     .L12
.L11:
        movss   xmm0, DWORD PTR [rbp-20]
        movss   xmm1, DWORD PTR .LC2[rip]
        xorps   xmm0, xmm1
        movd    eax, xmm0
        movd    xmm0, eax
        call    std::exp(float)
        movd    eax, xmm0
        movss   xmm0, DWORD PTR [rbp-36]
        movaps  xmm1, xmm0
        mulss   xmm1, DWORD PTR [rbp-8]
        movss   xmm0, DWORD PTR .LC5[rip]
        mulss   xmm1, xmm0
        movd    xmm0, eax
        divss   xmm0, xmm1
        movss   DWORD PTR [rbp-28], xmm0
        movss   xmm0, DWORD PTR [rbp-28]
        leave
        ret
main:
        push    rbp
        mov     rbp, rsp
        mov     BYTE PTR done[rip], 0
        movss   xmm0, DWORD PTR .LC6[rip]
        movss   DWORD PTR x[rip], xmm0
.L24:
        movss   xmm1, DWORD PTR x[rip]
        pxor    xmm0, xmm0
        comiss  xmm0, xmm1
        jbe     .L29
        mov     BYTE PTR done[rip], 1
        jmp     .L17
.L29:
        movss   xmm0, DWORD PTR x[rip]
        pxor    xmm1, xmm1
        ucomiss xmm0, xmm1
        jp      .L18
        pxor    xmm1, xmm1
        ucomiss xmm0, xmm1
        jne     .L18
        pxor    xmm0, xmm0
        movss   DWORD PTR er[rip], xmm0
        movss   xmm0, DWORD PTR .LC4[rip]
        movss   DWORD PTR ec[rip], xmm0
        jmp     .L20
.L18:
        movss   xmm1, DWORD PTR x[rip]
        movss   xmm0, DWORD PTR .LC8[rip]
        comiss  xmm0, xmm1
        jbe     .L30
        mov     eax, DWORD PTR x[rip]
        movd    xmm0, eax
        call    erf(float)
        movd    eax, xmm0
        mov     DWORD PTR er[rip], eax
        movss   xmm1, DWORD PTR er[rip]
        movss   xmm0, DWORD PTR .LC4[rip]
        subss   xmm0, xmm1
        movss   DWORD PTR ec[rip], xmm0
        jmp     .L20
.L30:
        mov     eax, DWORD PTR x[rip]
        movd    xmm0, eax
        call    erfc(float)
        movd    eax, xmm0
        mov     DWORD PTR ec[rip], eax
        movss   xmm1, DWORD PTR ec[rip]
        movss   xmm0, DWORD PTR .LC4[rip]
        subss   xmm0, xmm1
        movss   DWORD PTR er[rip], xmm0
.L20:
        movss   xmm0, DWORD PTR x[rip]
        movss   xmm1, DWORD PTR .LC4[rip]
        subss   xmm0, xmm1
        movss   DWORD PTR x[rip], xmm0
.L17:
        movzx   eax, BYTE PTR done[rip]
        test    al, al
        jne     .L23
        jmp     .L24
.L23:
        mov     eax, 0
        pop     rbp
        ret
