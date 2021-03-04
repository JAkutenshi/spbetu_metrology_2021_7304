_alloc_matr:
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 40
        mov     DWORD PTR [rbp-36], edi
        mov     DWORD PTR [rbp-40], esi
        mov     eax, DWORD PTR [rbp-36]
        cdqe
        sal     rax, 3
        mov     rdi, rax
        call    malloc
        mov     QWORD PTR [rbp-32], rax
        mov     DWORD PTR [rbp-20], 0
        jmp     .L2
.L3:
        mov     eax, DWORD PTR [rbp-40]
        cdqe
        sal     rax, 2
        mov     edx, DWORD PTR [rbp-20]
        movsx   rdx, edx
        lea     rcx, [0+rdx*8]
        mov     rdx, QWORD PTR [rbp-32]
        lea     rbx, [rcx+rdx]
        mov     rdi, rax
        call    malloc
        mov     QWORD PTR [rbx], rax
        add     DWORD PTR [rbp-20], 1
.L2:
        cmp     DWORD PTR [rbp-20], 2
        jle     .L3
        mov     rax, QWORD PTR [rbp-32]
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret
_free_matr:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     QWORD PTR [rbp-24], rdi
        mov     DWORD PTR [rbp-28], esi
        mov     DWORD PTR [rbp-4], 0
        jmp     .L6
.L7:
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        lea     rdx, [0+rax*8]
        mov     rax, QWORD PTR [rbp-24]
        add     rax, rdx
        mov     rax, QWORD PTR [rax]
        mov     rdi, rax
        call    free
        add     DWORD PTR [rbp-4], 1
.L6:
        mov     eax, DWORD PTR [rbp-4]
        cmp     eax, DWORD PTR [rbp-28]
        jl      .L7
        mov     rax, QWORD PTR [rbp-24]
        mov     rdi, rax
        call    free
        nop
        leave
        ret
.LC0:
        .string "%f    "
.LC1:
        .string ": %f\n"
print_matr:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     QWORD PTR [rbp-24], rdi
        mov     QWORD PTR [rbp-32], rsi
        mov     DWORD PTR [rbp-4], 0
        jmp     .L9
.L12:
        mov     DWORD PTR [rbp-8], 0
        jmp     .L10
.L11:
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        lea     rdx, [0+rax*8]
        mov     rax, QWORD PTR [rbp-24]
        add     rax, rdx
        mov     rdx, QWORD PTR [rax]
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        sal     rax, 2
        add     rax, rdx
        movss   xmm0, DWORD PTR [rax]
        pxor    xmm1, xmm1
        cvtss2sd        xmm1, xmm0
        movq    rax, xmm1
        movq    xmm0, rax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 1
        call    printf
        add     DWORD PTR [rbp-8], 1
.L10:
        cmp     DWORD PTR [rbp-8], 2
        jle     .L11
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-32]
        add     rax, rdx
        movss   xmm0, DWORD PTR [rax]
        pxor    xmm2, xmm2
        cvtss2sd        xmm2, xmm0
        movq    rax, xmm2
        movq    xmm0, rax
        mov     edi, OFFSET FLAT:.LC1
        mov     eax, 1
        call    printf
        add     DWORD PTR [rbp-4], 1
.L9:
        cmp     DWORD PTR [rbp-4], 2
        jle     .L12
        nop
        nop
        leave
        ret
.LC2:
        .string "Equation %d\n"
.LC3:
        .string "%d:    "
.LC4:
        .string "%f"
.LC5:
        .string "C: "
get_data:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     QWORD PTR [rbp-24], rdi
        mov     QWORD PTR [rbp-32], rsi
        mov     DWORD PTR [rbp-4], 0
        jmp     .L14
.L17:
        mov     eax, DWORD PTR [rbp-4]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC2
        mov     eax, 0
        call    printf
        mov     DWORD PTR [rbp-8], 0
        jmp     .L15
.L16:
        mov     eax, DWORD PTR [rbp-8]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC3
        mov     eax, 0
        call    printf
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        lea     rdx, [0+rax*8]
        mov     rax, QWORD PTR [rbp-24]
        add     rax, rdx
        mov     rdx, QWORD PTR [rax]
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        sal     rax, 2
        add     rax, rdx
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC4
        mov     eax, 0
        call    scanf
        add     DWORD PTR [rbp-8], 1
.L15:
        cmp     DWORD PTR [rbp-8], 2
        jle     .L16
        mov     edi, OFFSET FLAT:.LC5
        mov     eax, 0
        call    printf
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-32]
        add     rax, rdx
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC4
        mov     eax, 0
        call    scanf
        add     DWORD PTR [rbp-4], 1
.L14:
        cmp     DWORD PTR [rbp-4], 2
        jle     .L17
        mov     rdx, QWORD PTR [rbp-32]
        mov     rax, QWORD PTR [rbp-24]
        mov     rsi, rdx
        mov     rdi, rax
        call    print_matr
        mov     edi, 10
        call    putchar
        nop
        leave
        ret
deter:
        push    rbp
        mov     rbp, rsp
        mov     QWORD PTR [rbp-8], rdi
        mov     rax, QWORD PTR [rbp-8]
        mov     rax, QWORD PTR [rax]
        movss   xmm1, DWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 8
        mov     rax, QWORD PTR [rax]
        add     rax, 4
        movss   xmm2, DWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 16
        mov     rax, QWORD PTR [rax]
        add     rax, 8
        movss   xmm0, DWORD PTR [rax]
        mulss   xmm0, xmm2
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 16
        mov     rax, QWORD PTR [rax]
        add     rax, 4
        movss   xmm3, DWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 8
        mov     rax, QWORD PTR [rax]
        add     rax, 8
        movss   xmm2, DWORD PTR [rax]
        mulss   xmm2, xmm3
        subss   xmm0, xmm2
        mulss   xmm0, xmm1
        mov     rax, QWORD PTR [rbp-8]
        mov     rax, QWORD PTR [rax]
        add     rax, 4
        movss   xmm2, DWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 8
        mov     rax, QWORD PTR [rax]
        movss   xmm3, DWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 16
        mov     rax, QWORD PTR [rax]
        add     rax, 8
        movss   xmm1, DWORD PTR [rax]
        mulss   xmm1, xmm3
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 16
        mov     rax, QWORD PTR [rax]
        movss   xmm4, DWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 8
        mov     rax, QWORD PTR [rax]
        add     rax, 8
        movss   xmm3, DWORD PTR [rax]
        mulss   xmm3, xmm4
        subss   xmm1, xmm3
        mulss   xmm2, xmm1
        movaps  xmm1, xmm0
        subss   xmm1, xmm2
        mov     rax, QWORD PTR [rbp-8]
        mov     rax, QWORD PTR [rax]
        add     rax, 8
        movss   xmm2, DWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 8
        mov     rax, QWORD PTR [rax]
        movss   xmm3, DWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 16
        mov     rax, QWORD PTR [rax]
        add     rax, 4
        movss   xmm0, DWORD PTR [rax]
        mulss   xmm0, xmm3
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 16
        mov     rax, QWORD PTR [rax]
        movss   xmm4, DWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 8
        mov     rax, QWORD PTR [rax]
        add     rax, 4
        movss   xmm3, DWORD PTR [rax]
        mulss   xmm3, xmm4
        subss   xmm0, xmm3
        mulss   xmm0, xmm2
        addss   xmm0, xmm1
        pop     rbp
        ret
setup:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 56
        mov     QWORD PTR [rbp-24], rdi
        mov     QWORD PTR [rbp-32], rsi
        mov     QWORD PTR [rbp-40], rdx
        mov     QWORD PTR [rbp-48], rcx
        mov     DWORD PTR [rbp-52], r8d
        movss   DWORD PTR [rbp-56], xmm0
        mov     DWORD PTR [rbp-4], 0
        jmp     .L21
.L23:
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-48]
        add     rdx, rax
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        lea     rcx, [0+rax*8]
        mov     rax, QWORD PTR [rbp-32]
        add     rax, rcx
        mov     rcx, QWORD PTR [rax]
        mov     eax, DWORD PTR [rbp-52]
        cdqe
        sal     rax, 2
        add     rax, rcx
        movss   xmm0, DWORD PTR [rdx]
        movss   DWORD PTR [rax], xmm0
        cmp     DWORD PTR [rbp-52], 0
        jle     .L22
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        lea     rdx, [0+rax*8]
        mov     rax, QWORD PTR [rbp-24]
        add     rax, rdx
        mov     rdx, QWORD PTR [rax]
        mov     eax, DWORD PTR [rbp-52]
        cdqe
        sal     rax, 2
        sub     rax, 4
        add     rdx, rax
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        lea     rcx, [0+rax*8]
        mov     rax, QWORD PTR [rbp-32]
        add     rax, rcx
        mov     rcx, QWORD PTR [rax]
        mov     eax, DWORD PTR [rbp-52]
        cdqe
        sal     rax, 2
        sub     rax, 4
        add     rax, rcx
        movss   xmm0, DWORD PTR [rdx]
        movss   DWORD PTR [rax], xmm0
.L22:
        add     DWORD PTR [rbp-4], 1
.L21:
        cmp     DWORD PTR [rbp-4], 2
        jle     .L23
        mov     rax, QWORD PTR [rbp-32]
        mov     rdi, rax
        call    deter
        movd    eax, xmm0
        mov     edx, DWORD PTR [rbp-52]
        movsx   rdx, edx
        lea     rcx, [0+rdx*4]
        mov     rdx, QWORD PTR [rbp-40]
        add     rdx, rcx
        movd    xmm0, eax
        divss   xmm0, DWORD PTR [rbp-56]
        movss   DWORD PTR [rdx], xmm0
        nop
        leave
        ret
.LC7:
        .string "ERROR: matrix is singular."
solve:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 64
        mov     QWORD PTR [rbp-40], rdi
        mov     QWORD PTR [rbp-48], rsi
        mov     QWORD PTR [rbp-56], rdx
        mov     esi, 3
        mov     edi, 3
        call    _alloc_matr
        mov     QWORD PTR [rbp-16], rax
        pxor    xmm0, xmm0
        movss   DWORD PTR [rbp-20], xmm0
        mov     DWORD PTR [rbp-4], 0
        jmp     .L25
.L28:
        mov     DWORD PTR [rbp-8], 0
        jmp     .L26
.L27:
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        lea     rdx, [0+rax*8]
        mov     rax, QWORD PTR [rbp-40]
        add     rax, rdx
        mov     rdx, QWORD PTR [rax]
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        sal     rax, 2
        add     rdx, rax
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        lea     rcx, [0+rax*8]
        mov     rax, QWORD PTR [rbp-16]
        add     rax, rcx
        mov     rcx, QWORD PTR [rax]
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        sal     rax, 2
        add     rax, rcx
        movss   xmm0, DWORD PTR [rdx]
        movss   DWORD PTR [rax], xmm0
        add     DWORD PTR [rbp-8], 1
.L26:
        cmp     DWORD PTR [rbp-8], 2
        jle     .L27
        add     DWORD PTR [rbp-4], 1
.L25:
        cmp     DWORD PTR [rbp-4], 2
        jle     .L28
        mov     rax, QWORD PTR [rbp-16]
        mov     rdi, rax
        call    deter
        movd    eax, xmm0
        mov     DWORD PTR [rbp-20], eax
        pxor    xmm0, xmm0
        ucomiss xmm0, DWORD PTR [rbp-20]
        jp      .L29
        pxor    xmm0, xmm0
        ucomiss xmm0, DWORD PTR [rbp-20]
        jne     .L29
        mov     edi, OFFSET FLAT:.LC7
        mov     eax, 0
        call    printf
        mov     eax, 1
        jmp     .L31
.L29:
        mov     edi, DWORD PTR [rbp-20]
        mov     rcx, QWORD PTR [rbp-48]
        mov     rdx, QWORD PTR [rbp-56]
        mov     rsi, QWORD PTR [rbp-16]
        mov     rax, QWORD PTR [rbp-40]
        movd    xmm0, edi
        mov     r8d, 0
        mov     rdi, rax
        call    setup
        mov     edi, DWORD PTR [rbp-20]
        mov     rcx, QWORD PTR [rbp-48]
        mov     rdx, QWORD PTR [rbp-56]
        mov     rsi, QWORD PTR [rbp-16]
        mov     rax, QWORD PTR [rbp-40]
        movd    xmm0, edi
        mov     r8d, 1
        mov     rdi, rax
        call    setup
        mov     edi, DWORD PTR [rbp-20]
        mov     rcx, QWORD PTR [rbp-48]
        mov     rdx, QWORD PTR [rbp-56]
        mov     rsi, QWORD PTR [rbp-16]
        mov     rax, QWORD PTR [rbp-40]
        movd    xmm0, edi
        mov     r8d, 2
        mov     rdi, rax
        call    setup
        mov     rax, QWORD PTR [rbp-16]
        mov     esi, 3
        mov     rdi, rax
        call    _free_matr
        mov     eax, 0
.L31:
        leave
        ret
.LC8:
        .string "%f "
write_data:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     QWORD PTR [rbp-24], rdi
        mov     DWORD PTR [rbp-4], 0
        jmp     .L34
.L35:
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-24]
        add     rax, rdx
        movss   xmm0, DWORD PTR [rax]
        pxor    xmm1, xmm1
        cvtss2sd        xmm1, xmm0
        movq    rax, xmm1
        movq    xmm0, rax
        mov     edi, OFFSET FLAT:.LC8
        mov     eax, 1
        call    printf
        add     DWORD PTR [rbp-4], 1
.L34:
        cmp     DWORD PTR [rbp-4], 2
        jle     .L35
        mov     edi, 10
        call    putchar
        nop
        leave
        ret
.LC9:
        .string "More? "
.LC10:
        .string " %c"
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     esi, 3
        mov     edi, 3
        call    _alloc_matr
        mov     QWORD PTR [rbp-8], rax
        mov     edi, 12
        call    malloc
        mov     QWORD PTR [rbp-16], rax
        mov     edi, 12
        call    malloc
        mov     QWORD PTR [rbp-24], rax
.L40:
        mov     rdx, QWORD PTR [rbp-16]
        mov     rax, QWORD PTR [rbp-8]
        mov     rsi, rdx
        mov     rdi, rax
        call    get_data
        mov     rdx, QWORD PTR [rbp-24]
        mov     rcx, QWORD PTR [rbp-16]
        mov     rax, QWORD PTR [rbp-8]
        mov     rsi, rcx
        mov     rdi, rax
        call    solve
        mov     DWORD PTR [rbp-28], eax
        cmp     DWORD PTR [rbp-28], 0
        jne     .L37
        mov     rax, QWORD PTR [rbp-24]
        mov     rdi, rax
        call    write_data
.L37:
        mov     edi, OFFSET FLAT:.LC9
        mov     eax, 0
        call    printf
        lea     rax, [rbp-29]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC10
        mov     eax, 0
        call    scanf
        movzx   eax, BYTE PTR [rbp-29]
        cmp     al, 121
        jne     .L43
        jmp     .L40
.L43:
        nop
        mov     rax, QWORD PTR [rbp-16]
        mov     rdi, rax
        call    free
        mov     rax, QWORD PTR [rbp-24]
        mov     rdi, rax
        call    free
        mov     rax, QWORD PTR [rbp-8]
        mov     esi, 3
        mov     rdi, rax
        call    _free_matr
        mov     eax, 0
        leave
        ret
