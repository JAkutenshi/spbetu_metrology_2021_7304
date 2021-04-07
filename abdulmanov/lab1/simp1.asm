fx(double):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        movsd   QWORD PTR [rbp-8], xmm0
        movsd   xmm0, QWORD PTR [rbp-8]
        movq    xmm1, QWORD PTR .LC1[rip]
        xorpd   xmm0, xmm1
        movsd   xmm1, QWORD PTR .LC2[rip]
        divsd   xmm0, xmm1
        movq    rax, xmm0
        movq    xmm0, rax
        call    exp
        movq    rax, xmm0
        movq    xmm0, rax
        leave
        ret
dfx(double):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        movsd   QWORD PTR [rbp-8], xmm0
        movsd   xmm0, QWORD PTR [rbp-8]
        movq    xmm1, QWORD PTR .LC1[rip]
        xorpd   xmm0, xmm1
        movsd   xmm1, QWORD PTR .LC2[rip]
        divsd   xmm0, xmm1
        movq    rax, xmm0
        movq    xmm0, rax
        call    exp
        movq    rax, xmm0
        movq    xmm0, QWORD PTR .LC1[rip]
        movq    xmm2, rax
        xorpd   xmm2, xmm0
        movapd  xmm0, xmm2
        movsd   xmm1, QWORD PTR .LC2[rip]
        divsd   xmm0, xmm1
        movq    rax, xmm0
        movq    xmm0, rax
        leave
        ret
simps(double, double, double, double):
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 120
        movsd   QWORD PTR [rbp-88], xmm0
        movsd   QWORD PTR [rbp-96], xmm1
        movsd   QWORD PTR [rbp-104], xmm2
        movsd   QWORD PTR [rbp-112], xmm3
        mov     DWORD PTR [rbp-36], 2
        movsd   xmm0, QWORD PTR [rbp-96]
        subsd   xmm0, QWORD PTR [rbp-88]
        pxor    xmm1, xmm1
        cvtsi2sd        xmm1, DWORD PTR [rbp-36]
        divsd   xmm0, xmm1
        movsd   QWORD PTR [rbp-48], xmm0
        movsd   xmm0, QWORD PTR [rbp-88]
        addsd   xmm0, QWORD PTR [rbp-48]
        movq    rax, xmm0
        movq    xmm0, rax
        call    fx(double)
        movq    rax, xmm0
        mov     QWORD PTR [rbp-32], rax
        pxor    xmm0, xmm0
        movsd   QWORD PTR [rbp-24], xmm0
        mov     rax, QWORD PTR [rbp-88]
        movq    xmm0, rax
        call    fx(double)
        movsd   QWORD PTR [rbp-120], xmm0
        mov     rax, QWORD PTR [rbp-96]
        movq    xmm0, rax
        call    fx(double)
        addsd   xmm0, QWORD PTR [rbp-120]
        movsd   QWORD PTR [rbp-56], xmm0
        mov     rax, QWORD PTR [rbp-88]
        movq    xmm0, rax
        call    dfx(double)
        movq    rbx, xmm0
        mov     rax, QWORD PTR [rbp-96]
        movq    xmm0, rax
        call    dfx(double)
        movapd  xmm1, xmm0
        movq    xmm0, rbx
        subsd   xmm0, xmm1
        movsd   QWORD PTR [rbp-64], xmm0
        movsd   xmm1, QWORD PTR [rbp-32]
        movsd   xmm0, QWORD PTR .LC4[rip]
        mulsd   xmm0, xmm1
        addsd   xmm0, QWORD PTR [rbp-56]
        mulsd   xmm0, QWORD PTR [rbp-48]
        movsd   xmm1, QWORD PTR .LC5[rip]
        divsd   xmm0, xmm1
        movsd   QWORD PTR [rbp-112], xmm0
.L11:
        sal     DWORD PTR [rbp-36]
        movsd   xmm0, QWORD PTR [rbp-112]
        movsd   QWORD PTR [rbp-72], xmm0
        movsd   xmm0, QWORD PTR [rbp-96]
        subsd   xmm0, QWORD PTR [rbp-88]
        pxor    xmm1, xmm1
        cvtsi2sd        xmm1, DWORD PTR [rbp-36]
        divsd   xmm0, xmm1
        movsd   QWORD PTR [rbp-48], xmm0
        movsd   xmm0, QWORD PTR [rbp-24]
        addsd   xmm0, QWORD PTR [rbp-32]
        movsd   QWORD PTR [rbp-24], xmm0
        pxor    xmm0, xmm0
        movsd   QWORD PTR [rbp-32], xmm0
        mov     DWORD PTR [rbp-40], 1
.L9:
        mov     eax, DWORD PTR [rbp-36]
        mov     edx, eax
        shr     edx, 31
        add     eax, edx
        sar     eax
        cmp     DWORD PTR [rbp-40], eax
        jg      .L8
        pxor    xmm0, xmm0
        cvtsi2sd        xmm0, DWORD PTR [rbp-40]
        addsd   xmm0, xmm0
        movsd   xmm1, QWORD PTR .LC6[rip]
        subsd   xmm0, xmm1
        mulsd   xmm0, QWORD PTR [rbp-48]
        movsd   xmm1, QWORD PTR [rbp-88]
        addsd   xmm0, xmm1
        movsd   QWORD PTR [rbp-80], xmm0
        mov     rax, QWORD PTR [rbp-80]
        movq    xmm0, rax
        call    fx(double)
        movsd   xmm1, QWORD PTR [rbp-32]
        addsd   xmm0, xmm1
        movsd   QWORD PTR [rbp-32], xmm0
        add     DWORD PTR [rbp-40], 1
        jmp     .L9
.L8:
        movsd   xmm1, QWORD PTR [rbp-56]
        movsd   xmm0, QWORD PTR .LC7[rip]
        mulsd   xmm1, xmm0
        movsd   xmm2, QWORD PTR [rbp-24]
        movsd   xmm0, QWORD PTR .LC8[rip]
        mulsd   xmm0, xmm2
        addsd   xmm1, xmm0
        movsd   xmm2, QWORD PTR [rbp-32]
        movsd   xmm0, QWORD PTR .LC9[rip]
        mulsd   xmm0, xmm2
        addsd   xmm1, xmm0
        movsd   xmm0, QWORD PTR [rbp-64]
        mulsd   xmm0, QWORD PTR [rbp-48]
        addsd   xmm0, xmm1
        mulsd   xmm0, QWORD PTR [rbp-48]
        movsd   xmm1, QWORD PTR .LC10[rip]
        divsd   xmm0, xmm1
        movsd   QWORD PTR [rbp-112], xmm0
        movsd   xmm0, QWORD PTR [rbp-112]
        ucomisd xmm0, QWORD PTR [rbp-72]
        setp    al
        mov     edx, 1
        movsd   xmm0, QWORD PTR [rbp-112]
        ucomisd xmm0, QWORD PTR [rbp-72]
        mov     ebx, edx
        cmove   ebx, eax
        movsd   xmm0, QWORD PTR [rbp-112]
        subsd   xmm0, QWORD PTR [rbp-72]
        movq    rax, xmm0
        movq    xmm0, rax
        call    std::abs(double)
        movsd   QWORD PTR [rbp-120], xmm0
        movsd   xmm0, QWORD PTR [rbp-104]
        movapd  xmm4, xmm0
        mulsd   xmm4, QWORD PTR [rbp-112]
        movq    rax, xmm4
        movq    xmm0, rax
        call    std::abs(double)
        movq    rax, xmm0
        movq    xmm6, rax
        comisd  xmm6, QWORD PTR [rbp-120]
        setnb   al
        and     eax, ebx
        movzx   eax, al
        test    eax, eax
        setne   al
        test    al, al
        je      .L10
        jmp     .L11
.L10:
        movsd   xmm0, QWORD PTR [rbp-112]
        movq    rax, xmm0
        movq    xmm0, rax
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret
.LC13:
        .string "area= %lf "
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        pxor    xmm0, xmm0
        movsd   QWORD PTR [rbp-8], xmm0
        movsd   xmm0, QWORD PTR .LC6[rip]
        movsd   QWORD PTR [rbp-16], xmm0
        movsd   xmm0, QWORD PTR .LC11[rip]
        movsd   QWORD PTR [rbp-24], xmm0
        pxor    xmm0, xmm0
        movsd   QWORD PTR [rbp-32], xmm0
        movsd   xmm2, QWORD PTR [rbp-8]
        movsd   xmm1, QWORD PTR .LC12[rip]
        movsd   xmm0, QWORD PTR [rbp-24]
        mov     rax, QWORD PTR [rbp-16]
        movapd  xmm3, xmm2
        movapd  xmm2, xmm1
        movapd  xmm1, xmm0
        movq    xmm0, rax
        call    simps(double, double, double, double)
        movq    rax, xmm0
        mov     QWORD PTR [rbp-32], rax
        mov     rax, QWORD PTR [rbp-32]
        movq    xmm0, rax
        mov     edi, OFFSET FLAT:.LC13
        mov     eax, 1
        call    printf
        mov     eax, 0
        leave
        ret
.LC0:
        .long   -1
        .long   2147483647
        .long   0
        .long   0
.LC1:
        .long   0
        .long   -2147483648
        .long   0
        .long   0
.LC2:
        .long   0
        .long   1073741824
.LC4:
        .long   0
        .long   1074790400
.LC5:
        .long   0
        .long   1074266112
.LC6:
        .long   0
        .long   1072693248
.LC7:
        .long   0
        .long   1075576832
.LC8:
        .long   0
        .long   1076625408
.LC9:
        .long   0
        .long   1076887552
.LC10:
        .long   0
        .long   1076756480
.LC11:
        .long   0
        .long   1075970048
.LC12:
        .long   -1598689907
        .long   1051772663