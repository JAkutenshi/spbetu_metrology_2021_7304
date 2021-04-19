linfit:
         push    rbp
         mov     rbp, rsp
         mov     QWORD PTR [rbp-56], rdi
         mov     QWORD PTR [rbp-64], rsi
         mov     QWORD PTR [rbp-72], rdx
         mov     QWORD PTR [rbp-80], rcx
         mov     QWORD PTR [rbp-88], r8
         mov     DWORD PTR [rbp-92], r9d
         pxor    xmm0, xmm0
         movss   DWORD PTR [rbp-4], xmm0
         pxor    xmm0, xmm0
         movss   DWORD PTR [rbp-8], xmm0
         pxor    xmm0, xmm0
         movss   DWORD PTR [rbp-12], xmm0
         pxor    xmm0, xmm0
         movss   DWORD PTR [rbp-16], xmm0
         pxor    xmm0, xmm0
         movss   DWORD PTR [rbp-20], xmm0
         mov     DWORD PTR [rbp-24], 0
         jmp     .L2
.L3:
         mov     eax, DWORD PTR [rbp-24]
         cdqe
         lea     rdx, [0+rax*4]
         mov     rax, QWORD PTR [rbp-56]
         add     rax, rdx
         movss   xmm0, DWORD PTR [rax]
         movss   DWORD PTR [rbp-44], xmm0
         mov     eax, DWORD PTR [rbp-24]
         cdqe
         lea     rdx, [0+rax*4]
         mov     rax, QWORD PTR [rbp-64]
         add     rax, rdx
         movss   xmm0, DWORD PTR [rax]
         movss   DWORD PTR [rbp-48], xmm0
         movss   xmm0, DWORD PTR [rbp-4]
         addss   xmm0, DWORD PTR [rbp-44]
         movss   DWORD PTR [rbp-4], xmm0
         movss   xmm0, DWORD PTR [rbp-8]
         addss   xmm0, DWORD PTR [rbp-48]
         movss   DWORD PTR [rbp-8], xmm0
         movss   xmm0, DWORD PTR [rbp-44]
         mulss   xmm0, DWORD PTR [rbp-48]
         movss   xmm1, DWORD PTR [rbp-12]
         addss   xmm0, xmm1
         movss   DWORD PTR [rbp-12], xmm0
         movss   xmm0, DWORD PTR [rbp-44]
         mulss   xmm0, xmm0
         movss   xmm1, DWORD PTR [rbp-16]
         addss   xmm0, xmm1
         movss   DWORD PTR [rbp-16], xmm0
         movss   xmm0, DWORD PTR [rbp-48]
         mulss   xmm0, xmm0
         movss   xmm1, DWORD PTR [rbp-20]
         addss   xmm0, xmm1
         movss   DWORD PTR [rbp-20], xmm0
         add     DWORD PTR [rbp-24], 1
.L2:
         mov     eax, DWORD PTR [rbp-24]
         cmp     eax, DWORD PTR [rbp-92]
         jl      .L3
         movss   xmm0, DWORD PTR [rbp-4]
         mulss   xmm0, xmm0
         cvtsi2ss        xmm1, DWORD PTR [rbp-92]
         divss   xmm0, xmm1
         movaps  xmm1, xmm0
         movss   xmm0, DWORD PTR [rbp-16]
         subss   xmm0, xmm1
         movss   DWORD PTR [rbp-32], xmm0
         movss   xmm0, DWORD PTR [rbp-4]
         mulss   xmm0, DWORD PTR [rbp-8]
         cvtsi2ss        xmm1, DWORD PTR [rbp-92]
         divss   xmm0, xmm1
         movaps  xmm1, xmm0
         movss   xmm0, DWORD PTR [rbp-12]
         subss   xmm0, xmm1
         movss   DWORD PTR [rbp-36], xmm0
         movss   xmm0, DWORD PTR [rbp-8]
         mulss   xmm0, xmm0
         cvtsi2ss        xmm1, DWORD PTR [rbp-92]
         divss   xmm0, xmm1
         movaps  xmm1, xmm0
         movss   xmm0, DWORD PTR [rbp-20]
         subss   xmm0, xmm1
         movss   DWORD PTR [rbp-40], xmm0
         movss   xmm0, DWORD PTR [rbp-36]
         divss   xmm0, DWORD PTR [rbp-32]
         mov     rax, QWORD PTR [rbp-88]
         movss   DWORD PTR [rax], xmm0
         movss   xmm0, DWORD PTR [rbp-16]
         mulss   xmm0, DWORD PTR [rbp-8]
         movss   xmm1, DWORD PTR [rbp-4]
         mulss   xmm1, DWORD PTR [rbp-12]
         subss   xmm0, xmm1
         cvtsi2ss        xmm1, DWORD PTR [rbp-92]
         divss   xmm0, xmm1
         divss   xmm0, DWORD PTR [rbp-32]
         mov     rax, QWORD PTR [rbp-80]
         movss   DWORD PTR [rax], xmm0
         mov     DWORD PTR [rbp-28], 0
         jmp     .L4
.L5:
         mov     rax, QWORD PTR [rbp-80]
         movss   xmm1, DWORD PTR [rax]
         mov     rax, QWORD PTR [rbp-88]
         movss   xmm2, DWORD PTR [rax]
         mov     eax, DWORD PTR [rbp-28]
         cdqe         lea     rdx, [0+rax*4]
         mov     rax, QWORD PTR [rbp-56]
         add     rax, rdx
         movss   xmm0, DWORD PTR [rax]
         mulss   xmm0, xmm2
         mov     eax, DWORD PTR [rbp-28]
         cdqe
         lea     rdx, [0+rax*4]
         mov     rax, QWORD PTR [rbp-72]
         add     rax, rdx
         addss   xmm0, xmm1
         movss   DWORD PTR [rax], xmm0
         add     DWORD PTR [rbp-28], 1
.L4:
         mov     eax, DWORD PTR [rbp-28]
         cmp     eax, DWORD PTR [rbp-92]
         jl      .L5
         nop
         nop
         pop     rbp
         ret
