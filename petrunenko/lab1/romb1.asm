tol:
        .long   -350469331
        .long   1058682594
done:
        .zero   1
sumMain:
        .zero   8
upper:
        .zero   8
lower:
        .zero   8
fx(double):
        push    rbp
        mov     rbp, rsp
        movsd   QWORD PTR [rbp-8], xmm0
        movsd   xmm0, QWORD PTR .LC1[rip]
        divsd   xmm0, QWORD PTR [rbp-8]
        movq    rax, xmm0
        movq    xmm0, rax
        pop     rbp
        ret
.LC5:
        .string "%d%f "
.LC6:
        .string "%d%f\n"
romb(double, double):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 1280
        movsd   QWORD PTR [rbp-1256], xmm0
        movsd   QWORD PTR [rbp-1264], xmm1
        mov     DWORD PTR [rbp-4], 0
.L7:
        cmp     DWORD PTR [rbp-4], 15
        jg      .L6
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     DWORD PTR [rbp-160+rax*4], 0
        add     DWORD PTR [rbp-4], 1
        jmp     .L7
.L6:
        mov     DWORD PTR [rbp-4], 0
.L9:
        cmp     DWORD PTR [rbp-4], 135
        jg      .L8
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        pxor    xmm0, xmm0
        movsd   QWORD PTR [rbp-1248+rax*8], xmm0
        add     DWORD PTR [rbp-4], 1
        jmp     .L9
.L8:
        mov     DWORD PTR [rbp-12], 1
        mov     DWORD PTR [rbp-160], 1
        movsd   xmm0, QWORD PTR [rbp-1264]
        subsd   xmm0, QWORD PTR [rbp-1256]
        pxor    xmm1, xmm1
        cvtsi2sd        xmm1, DWORD PTR [rbp-12]
        divsd   xmm0, xmm1
        movsd   QWORD PTR [rbp-48], xmm0
        mov     rax, QWORD PTR [rbp-1256]
        movq    xmm0, rax
        call    fx(double)
        movsd   QWORD PTR [rbp-1272], xmm0
        mov     rax, QWORD PTR [rbp-1264]
        movq    xmm0, rax
        call    fx(double)
        movsd   xmm1, QWORD PTR [rbp-1272]
        addsd   xmm1, xmm0
        movsd   xmm0, QWORD PTR .LC3[rip]
        mulsd   xmm0, xmm1
        movsd   QWORD PTR [rbp-56], xmm0
        movsd   xmm0, QWORD PTR [rbp-48]
        mulsd   xmm0, QWORD PTR [rbp-56]
        movsd   QWORD PTR [rbp-1248], xmm0
        mov     DWORD PTR [rbp-20], 1
        mov     DWORD PTR [rbp-24], 2
        movsd   xmm0, QWORD PTR [rbp-56]
        movsd   QWORD PTR [rbp-40], xmm0
.L23:
        add     DWORD PTR [rbp-20], 1
        movsd   xmm0, QWORD PTR .LC4[rip]
        movsd   QWORD PTR [rbp-64], xmm0
        mov     eax, DWORD PTR [rbp-20]
        sub     eax, 1
        cdqe
        mov     edx, DWORD PTR [rbp-24]
        mov     DWORD PTR [rbp-160+rax*4], edx
        sal     DWORD PTR [rbp-12]
        mov     eax, DWORD PTR [rbp-12]
        sub     eax, 1
        mov     DWORD PTR [rbp-68], eax
        movsd   xmm0, QWORD PTR [rbp-1264]
        subsd   xmm0, QWORD PTR [rbp-1256]
        pxor    xmm1, xmm1
        cvtsi2sd        xmm1, DWORD PTR [rbp-12]
        divsd   xmm0, xmm1
        movsd   QWORD PTR [rbp-48], xmm0
        mov     DWORD PTR [rbp-16], 1
.L11:
        mov     eax, DWORD PTR [rbp-68]
        add     eax, 1
        mov     edx, eax
        shr     edx, 31
        add     eax, edx
        sar     eax
        cmp     DWORD PTR [rbp-16], eax
        jg      .L10
        mov     eax, DWORD PTR [rbp-16]
        add     eax, eax
        sub     eax, 1
        mov     DWORD PTR [rbp-72], eax
        pxor    xmm0, xmm0
        cvtsi2sd        xmm0, DWORD PTR [rbp-72]
        mulsd   xmm0, QWORD PTR [rbp-48]
        movsd   xmm1, QWORD PTR [rbp-1256]
        addsd   xmm0, xmm1
        movsd   QWORD PTR [rbp-80], xmm0
        mov     rax, QWORD PTR [rbp-80]
        movq    xmm0, rax
        call    fx(double)
        movsd   xmm1, QWORD PTR [rbp-40]
        addsd   xmm0, xmm1
        movsd   QWORD PTR [rbp-40], xmm0
        add     DWORD PTR [rbp-16], 1
        jmp     .L11
.L10:
        mov     eax, DWORD PTR [rbp-24]
        sub     eax, 1
        movsd   xmm0, QWORD PTR [rbp-48]
        mulsd   xmm0, QWORD PTR [rbp-40]
        cdqe
        movsd   QWORD PTR [rbp-1248+rax*8], xmm0
        mov     eax, DWORD PTR [rbp-24]
        cdqe
        mov     rdx, QWORD PTR [rbp-1248+rax*8]
        mov     eax, DWORD PTR [rbp-12]
        movq    xmm0, rdx
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC5
        mov     eax, 1
        call    printf
        mov     eax, DWORD PTR [rbp-20]
        sub     eax, 2
        cdqe
        mov     eax, DWORD PTR [rbp-160+rax*4]
        mov     DWORD PTR [rbp-84], eax
        mov     eax, DWORD PTR [rbp-20]
        sub     eax, 1
        mov     DWORD PTR [rbp-88], eax
        mov     DWORD PTR [rbp-28], 1
.L13:
        mov     eax, DWORD PTR [rbp-28]
        cmp     eax, DWORD PTR [rbp-88]
        jg      .L12
        mov     edx, DWORD PTR [rbp-24]
        mov     eax, DWORD PTR [rbp-28]
        add     eax, edx
        mov     DWORD PTR [rbp-32], eax
        mov     eax, DWORD PTR [rbp-20]
        sub     eax, 2
        cdqe
        mov     edx, DWORD PTR [rbp-160+rax*4]
        mov     eax, DWORD PTR [rbp-28]
        add     eax, edx
        sub     eax, 1
        mov     DWORD PTR [rbp-92], eax
        mov     eax, DWORD PTR [rbp-32]
        sub     eax, 2
        cdqe
        movsd   xmm0, QWORD PTR [rbp-1248+rax*8]
        mulsd   xmm0, QWORD PTR [rbp-64]
        mov     eax, DWORD PTR [rbp-92]
        sub     eax, 1
        cdqe
        movsd   xmm1, QWORD PTR [rbp-1248+rax*8]
        subsd   xmm0, xmm1
        movsd   xmm1, QWORD PTR [rbp-64]
        movsd   xmm2, QWORD PTR .LC1[rip]
        subsd   xmm1, xmm2
        mov     eax, DWORD PTR [rbp-32]
        sub     eax, 1
        divsd   xmm0, xmm1
        cdqe
        movsd   QWORD PTR [rbp-1248+rax*8], xmm0
        add     DWORD PTR [rbp-28], 1
        jmp     .L13
.L12:
        mov     eax, DWORD PTR [rbp-32]
        sub     eax, 1
        cdqe
        mov     rax, QWORD PTR [rbp-1248+rax*8]
        mov     edx, DWORD PTR [rbp-32]
        sub     edx, 1
        movq    xmm0, rax
        mov     esi, edx
        mov     edi, OFFSET FLAT:.LC6
        mov     eax, 1
        call    printf
        cmp     DWORD PTR [rbp-20], 4
        jle     .L14
        mov     eax, DWORD PTR [rbp-24]
        cdqe
        movsd   xmm1, QWORD PTR [rbp-1248+rax*8]
        pxor    xmm0, xmm0
        comisd  xmm0, xmm1
        ja      .L15
        mov     eax, DWORD PTR [rbp-24]
        cdqe
        movsd   xmm0, QWORD PTR [rbp-1248+rax*8]
        pxor    xmm1, xmm1
        comisd  xmm0, xmm1
        jbe     .L14
.L15:
        mov     eax, DWORD PTR [rbp-84]
        add     eax, 1
        cdqe
        movsd   xmm0, QWORD PTR [rbp-1248+rax*8]
        mov     eax, DWORD PTR [rbp-24]
        sub     eax, 1
        cdqe
        movsd   xmm1, QWORD PTR [rbp-1248+rax*8]
        subsd   xmm0, xmm1
        movq    rax, xmm0
        movq    xmm0, rax
        call    std::abs(double)
        movsd   QWORD PTR [rbp-1272], xmm0
        mov     eax, DWORD PTR [rbp-24]
        sub     eax, 1
        cdqe
        movsd   xmm1, QWORD PTR [rbp-1248+rax*8]
        movsd   xmm0, QWORD PTR tol[rip]
        mulsd   xmm1, xmm0
        movq    rax, xmm1
        movq    xmm0, rax
        call    std::abs(double)
        movq    rax, xmm0
        movq    xmm3, rax
        comisd  xmm3, QWORD PTR [rbp-1272]
        jnb     .L17
        mov     eax, DWORD PTR [rbp-24]
        sub     eax, 2
        cdqe
        movsd   xmm0, QWORD PTR [rbp-1248+rax*8]
        mov     eax, DWORD PTR [rbp-32]
        sub     eax, 1
        cdqe
        movsd   xmm1, QWORD PTR [rbp-1248+rax*8]
        subsd   xmm0, xmm1
        movq    rax, xmm0
        movq    xmm0, rax
        call    std::abs(double)
        movsd   QWORD PTR [rbp-1272], xmm0
        mov     eax, DWORD PTR [rbp-32]
        sub     eax, 1
        cdqe
        movsd   xmm1, QWORD PTR [rbp-1248+rax*8]
        movsd   xmm0, QWORD PTR tol[rip]
        mulsd   xmm1, xmm0
        movq    rax, xmm1
        movq    xmm0, rax
        call    std::abs(double)
        movq    rax, xmm0
        movq    xmm5, rax
        comisd  xmm5, QWORD PTR [rbp-1272]
        jb      .L24
.L17:
        mov     eax, 1
        jmp     .L20
.L24:
        mov     eax, 0
.L20:
        test    al, al
        je      .L21
        mov     BYTE PTR [rbp-5], 1
        jmp     .L14
.L21:
        cmp     DWORD PTR [rbp-20], 15
        jle     .L14
        mov     BYTE PTR [rbp-5], 1
        mov     BYTE PTR [rbp-93], 1
.L14:
        mov     eax, DWORD PTR [rbp-32]
        add     eax, 1
        mov     DWORD PTR [rbp-24], eax
        cmp     BYTE PTR [rbp-5], 0
        jne     .L22
        jmp     .L23
.L22:
        mov     eax, DWORD PTR [rbp-32]
        sub     eax, 1
        cdqe
        movsd   xmm0, QWORD PTR [rbp-1248+rax*8]
        movsd   QWORD PTR sumMain[rip], xmm0
        nop
        leave
        ret
.LC8:
        .string "Area= %f"
main:
        push    rbp
        mov     rbp, rsp
        movsd   xmm0, QWORD PTR .LC1[rip]
        movsd   QWORD PTR lower[rip], xmm0
        movsd   xmm0, QWORD PTR .LC7[rip]
        movsd   QWORD PTR upper[rip], xmm0
        mov     edi, 10
        call    putchar
        movsd   xmm0, QWORD PTR upper[rip]
        mov     rax, QWORD PTR lower[rip]
        movapd  xmm1, xmm0
        movq    xmm0, rax
        call    romb(double, double)
        mov     edi, 10
        call    putchar
        mov     rax, QWORD PTR sumMain[rip]
        movq    xmm0, rax
        mov     edi, OFFSET FLAT:.LC8
        mov     eax, 1
        call    printf
        mov     eax, 0
        pop     rbp
        ret
.LC0:
        .long   -1
        .long   2147483647
        .long   0
        .long   0
.LC1:
        .long   0
        .long   1072693248
.LC3:
        .long   0
        .long   1071644672
.LC4:
        .long   0
        .long   1074790400
.LC7:
        .long   0
        .long   1075970048