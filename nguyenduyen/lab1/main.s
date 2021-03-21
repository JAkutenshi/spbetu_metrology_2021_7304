	.file	"main.c"
	.text
	.globl	n
	.data
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.long	3
	.section	.rodata
.LC0:
	.string	"%f"
	.text
	.globl	get_data
	.type	get_data, @function
get_data:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L2
.L5:
	movl	$0, -4(%rbp)
	jmp	.L3
.L4:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	addl	$1, -4(%rbp)
.L3:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L4
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	addl	$1, -8(%rbp)
.L2:
	movl	-8(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L5
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	get_data, .-get_data
	.globl	deter
	.type	deter, @function
deter:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm1
	movq	-24(%rbp), %rax
	addq	$12, %rax
	movss	4(%rax), %xmm2
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movss	8(%rax), %xmm0
	mulss	%xmm2, %xmm0
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movss	4(%rax), %xmm3
	movq	-24(%rbp), %rax
	addq	$12, %rax
	movss	8(%rax), %xmm2
	mulss	%xmm3, %xmm2
	subss	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movss	4(%rax), %xmm2
	movq	-24(%rbp), %rax
	addq	$12, %rax
	movss	(%rax), %xmm3
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movss	8(%rax), %xmm1
	mulss	%xmm3, %xmm1
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movss	(%rax), %xmm4
	movq	-24(%rbp), %rax
	addq	$12, %rax
	movss	8(%rax), %xmm3
	mulss	%xmm4, %xmm3
	subss	%xmm3, %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movss	8(%rax), %xmm2
	movq	-24(%rbp), %rax
	addq	$12, %rax
	movss	(%rax), %xmm3
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movss	4(%rax), %xmm0
	mulss	%xmm3, %xmm0
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movss	(%rax), %xmm4
	movq	-24(%rbp), %rax
	addq	$12, %rax
	movss	4(%rax), %xmm3
	mulss	%xmm4, %xmm3
	subss	%xmm3, %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	deter, .-deter
	.globl	setup
	.type	setup, @function
setup:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$56, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movss	%xmm0, -56(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L9
.L11:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movss	(%rcx), %xmm0
	movl	-52(%rbp), %eax
	cltq
	movss	%xmm0, (%rdx,%rax,4)
	cmpl	$0, -52(%rbp)
	jle	.L10
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-52(%rbp), %eax
	leal	-1(%rax), %edi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	leal	-1(%rax), %esi
	movslq	%edi, %rax
	movss	(%rcx,%rax,4), %xmm0
	movslq	%esi, %rax
	movss	%xmm0, (%rdx,%rax,4)
.L10:
	addl	$1, -4(%rbp)
.L9:
	movl	n(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L11
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	deter
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	divss	-56(%rbp), %xmm0
	movss	%xmm0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	setup, .-setup
	.globl	solve
	.type	solve, @function
solve:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movl	%ecx, -92(%rbp)
	movl	%r8d, %eax
	movb	%al, -96(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movb	$0, -96(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L13
.L16:
	movl	$0, -56(%rbp)
	jmp	.L14
.L15:
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movl	-56(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm0
	movl	-56(%rbp), %eax
	movslq	%eax, %rcx
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	movss	%xmm0, -48(%rbp,%rax,4)
	addl	$1, -56(%rbp)
.L14:
	movl	-56(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jl	.L15
	addl	$1, -60(%rbp)
.L13:
	movl	-60(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jl	.L16
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	deter
	movd	%xmm0, %eax
	movl	%eax, -52(%rbp)
	pxor	%xmm0, %xmm0
	ucomiss	-52(%rbp), %xmm0
	jp	.L17
	pxor	%xmm0, %xmm0
	ucomiss	-52(%rbp), %xmm0
	jne	.L17
	movb	$1, -96(%rbp)
	jmp	.L24
.L17:
	movl	$0, -56(%rbp)
	jmp	.L20
.L21:
	movl	-52(%rbp), %edi
	movl	-56(%rbp), %r8d
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movd	%edi, %xmm0
	movq	%rax, %rdi
	call	setup
	addl	$1, -56(%rbp)
.L20:
	movl	-56(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jl	.L21
.L24:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L22
	call	__stack_chk_fail@PLT
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	solve, .-solve
	.section	.rodata
.LC2:
	.string	"%d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -76(%rbp)
	jmp	.L26
.L27:
	movl	n(%rip), %edx
	leaq	-72(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	get_data
	movzbl	-77(%rbp), %edi
	movl	n(%rip), %ecx
	leaq	-60(%rbp), %rdx
	leaq	-72(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	solve
	leaq	-76(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
.L26:
	movl	-76(%rbp), %eax
	testl	%eax, %eax
	jne	.L27
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L29
	call	__stack_chk_fail@PLT
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
