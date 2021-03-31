func(float, float*, float*):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 48
        movss   DWORD PTR [rbp-20], xmm0
        mov     QWORD PTR [rbp-32], rdi
        mov     QWORD PTR [rbp-40], rsi
        movss   xmm0, DWORD PTR .LC1[rip]
        movss   DWORD PTR [rbp-4], xmm0
        movss   xmm0, DWORD PTR .LC2[rip]
        movss   DWORD PTR [rbp-8], xmm0
        movss   xmm0, DWORD PTR .LC3[rip]
        movss   DWORD PTR [rbp-12], xmm0
        movss   xmm0, DWORD PTR .LC4[rip]
        movss   DWORD PTR [rbp-16], xmm0
        movss   xmm0, DWORD PTR .LC2[rip]
        movaps  xmm1, xmm0
        divss   xmm1, DWORD PTR [rbp-20]
        movss   xmm0, DWORD PTR .LC1[rip]
        addss   xmm1, xmm0
        movss   DWORD PTR [rbp-44], xmm1
        mov     eax, DWORD PTR [rbp-20]
        movd    xmm0, eax
        call    std::log(float)
        movss   xmm1, DWORD PTR .LC3[rip]
        mulss   xmm0, xmm1
        movss   xmm1, DWORD PTR [rbp-44]
        addss   xmm1, xmm0
        movss   xmm0, DWORD PTR .LC5[rip]
        addss   xmm0, xmm1
        mov     rax, QWORD PTR [rbp-32]
        movss   DWORD PTR [rax], xmm0
        movss   xmm0, DWORD PTR [rbp-20]
        movaps  xmm2, xmm0
        mulss   xmm2, xmm0
        movss   xmm0, DWORD PTR .LC6[rip]
        movaps  xmm1, xmm0
        divss   xmm1, xmm2
        movss   xmm0, DWORD PTR .LC3[rip]
        divss   xmm0, DWORD PTR [rbp-20]
        addss   xmm0, xmm1
        mov     rax, QWORD PTR [rbp-40]
        movss   DWORD PTR [rax], xmm0
        nop
        leave
        ret
.LC10:
        .string "x= %f fx = %f dfx = %f \n"
newton(float*):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 48
        mov     QWORD PTR [rbp-40], rdi
        movss   xmm0, DWORD PTR .LC7[rip]
        movss   DWORD PTR [rbp-4], xmm0
.L11:
        mov     rax, QWORD PTR [rbp-40]
        movss   xmm0, DWORD PTR [rax]
        movss   DWORD PTR [rbp-8], xmm0
        mov     rax, QWORD PTR [rbp-40]
        mov     eax, DWORD PTR [rax]
        lea     rcx, [rbp-20]
        lea     rdx, [rbp-16]
        mov     rsi, rcx
        mov     rdi, rdx
        movd    xmm0, eax
        call    func(float, float*, float*)
        mov     eax, DWORD PTR [rbp-20]
        movd    xmm0, eax
        call    std::fabs(float)
        movss   xmm1, DWORD PTR .LC7[rip]
        comiss  xmm1, xmm0
        seta    al
        test    al, al
        je      .L7
        movss   xmm0, DWORD PTR [rbp-20]
        pxor    xmm1, xmm1
        comiss  xmm0, xmm1
        jb      .L13
        movss   xmm0, DWORD PTR .LC7[rip]
        movss   DWORD PTR [rbp-20], xmm0
        jmp     .L7
.L13:
        movss   xmm0, DWORD PTR .LC9[rip]
        movss   DWORD PTR [rbp-20], xmm0
.L7:
        movss   xmm0, DWORD PTR [rbp-16]
        movss   xmm1, DWORD PTR [rbp-20]
        divss   xmm0, xmm1
        movss   DWORD PTR [rbp-12], xmm0
        movss   xmm0, DWORD PTR [rbp-8]
        subss   xmm0, DWORD PTR [rbp-12]
        mov     rax, QWORD PTR [rbp-40]
        movss   DWORD PTR [rax], xmm0
        movss   xmm0, DWORD PTR [rbp-20]
        pxor    xmm1, xmm1
        cvtss2sd        xmm1, xmm0
        movss   xmm0, DWORD PTR [rbp-16]
        cvtss2sd        xmm0, xmm0
        pxor    xmm3, xmm3
        cvtss2sd        xmm3, DWORD PTR [rbp-8]
        movq    rax, xmm3
        movapd  xmm2, xmm1
        movapd  xmm1, xmm0
        movq    xmm0, rax
        mov     edi, OFFSET FLAT:.LC10
        mov     eax, 3
        call    printf
        mov     eax, DWORD PTR [rbp-12]
        movd    xmm0, eax
        call    std::fabs(float)
        movss   DWORD PTR [rbp-44], xmm0
        mov     rax, QWORD PTR [rbp-40]
        movss   xmm1, DWORD PTR [rax]
        movss   xmm0, DWORD PTR .LC7[rip]
        mulss   xmm1, xmm0
        movd    eax, xmm1
        movd    xmm0, eax
        call    std::fabs(float)
        movd    eax, xmm0
        movd    xmm4, eax
        comiss  xmm4, DWORD PTR [rbp-44]
        setnb   al
        xor     eax, 1
        test    al, al
        je      .L14
        jmp     .L11
.L14:
        nop
        leave
        ret
.LC11:
        .string "First guess\t(999. to exit): "
.LC12:
        .string "%f"
.LC14:
        .string "\nThe solution is %f \n"
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     BYTE PTR [rbp-1], 0
.L20:
        mov     edi, OFFSET FLAT:.LC11
        mov     eax, 0
        call    printf
        lea     rax, [rbp-8]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC12
        mov     eax, 0
        call    __isoc99_scanf
        movss   xmm0, DWORD PTR [rbp-8]
        ucomiss xmm0, DWORD PTR .LC13[rip]
        jp      .L16
        ucomiss xmm0, DWORD PTR .LC13[rip]
        jne     .L16
        mov     BYTE PTR [rbp-1], 1
        jmp     .L18
.L16:
        lea     rax, [rbp-8]
        mov     rdi, rax
        call    newton(float*)
        movss   xmm0, DWORD PTR [rbp-8]
        pxor    xmm1, xmm1
        cvtss2sd        xmm1, xmm0
        movq    rax, xmm1
        movq    xmm0, rax
        mov     edi, OFFSET FLAT:.LC14
        mov     eax, 1
        call    printf
.L18:
        cmp     BYTE PTR [rbp-1], 0
        jne     .L19
        jmp     .L20
.L19:
        mov     eax, 0
        leave
        ret
.LC0:
        .long   2147483647
        .long   0
        .long   0
        .long   0
.LC1:
        .long   1100055839
.LC2:
        .long   -961210368
.LC3:
        .long   -1084046390
.LC4:
        .long   -1064084083
.LC5:
        .long   1083399565
.LC6:
        .long   1186273280
.LC7:
        .long   953267991
.LC9:
        .long   -1194215657
.LC13:
        .long   1148829696