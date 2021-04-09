	.file	"program.c"
	.text
	.globl	linfit2
	.type	linfit2, @function
linfit2:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	movq	%r8, -168(%rbp)
	movl	%r9d, -172(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -112(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -104(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -96(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -88(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -80(%rbp)
	movl	$0, -116(%rbp)
	jmp	.L2
.L3:
	movl	-116(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -72(%rbp)
	movl	-116(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-112(%rbp), %xmm0
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-104(%rbp), %xmm0
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	-72(%rbp), %xmm0
	mulsd	-64(%rbp), %xmm0
	movsd	-96(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-72(%rbp), %xmm0
	mulsd	-72(%rbp), %xmm0
	movsd	-88(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-64(%rbp), %xmm0
	mulsd	-64(%rbp), %xmm0
	movsd	-80(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	addl	$1, -116(%rbp)
.L2:
	movl	-116(%rbp), %eax
	cmpl	-172(%rbp), %eax
	jl	.L3
	movsd	-112(%rbp), %xmm0
	mulsd	-112(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sd	-172(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	-88(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-112(%rbp), %xmm0
	mulsd	-104(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sd	-172(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	-96(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-104(%rbp), %xmm0
	mulsd	-104(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sd	-172(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	-80(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-48(%rbp), %xmm0
	divsd	-56(%rbp), %xmm0
	movq	-168(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-88(%rbp), %xmm0
	mulsd	-104(%rbp), %xmm0
	movsd	-112(%rbp), %xmm1
	mulsd	-96(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sd	-172(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	divsd	-56(%rbp), %xmm0
	movq	-160(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm0
	mulsd	-40(%rbp), %xmm0
	call	sqrt
	movapd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-160(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	-104(%rbp), %xmm0
	movsd	-80(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movq	-168(%rbp), %rax
	movsd	(%rax), %xmm1
	mulsd	-96(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movl	-172(%rbp), %eax
	subl	$2, %eax
	pxor	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	%xmm1, %xmm0
	call	sqrt
	movq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)
	movsd	-184(%rbp), %xmm0
	call	sqrt
	movapd	%xmm0, %xmm1
	movsd	-24(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sd	-172(%rbp), %xmm0
	movsd	-88(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	call	sqrt
	mulsd	-16(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	$0, -116(%rbp)
	jmp	.L4
.L5:
	movl	-116(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-152(%rbp), %rax
	addq	%rax, %rdx
	movq	-160(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-168(%rbp), %rax
	movsd	(%rax), %xmm2
	movl	-116(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-136(%rbp), %rax
	addq	%rcx, %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rdx)
	addl	$1, -116(%rbp)
.L4:
	movl	-116(%rbp), %eax
	cmpl	-172(%rbp), %eax
	jl	.L5
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	linfit2, .-linfit2
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1968, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$80, -1956(%rbp)
	movl	$0, %edi
	call	time
	movl	%eax, %edi
	call	srand
	movl	$0, -1960(%rbp)
	jmp	.L7
.L8:
	movl	-1960(%rbp), %eax
	addl	$1, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movl	-1960(%rbp), %eax
	cltq
	movsd	%xmm0, -1936(%rbp,%rax,8)
	call	rand
	movl	%eax, %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$100, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movl	-1960(%rbp), %eax
	cltq
	movsd	%xmm0, -1296(%rbp,%rax,8)
	addl	$1, -1960(%rbp)
.L7:
	movl	-1960(%rbp), %eax
	cmpl	-1956(%rbp), %eax
	jl	.L8
	movl	-1956(%rbp), %r8d
	leaq	-1944(%rbp), %rdi
	leaq	-1952(%rbp), %rcx
	leaq	-656(%rbp), %rdx
	leaq	-1296(%rbp), %rsi
	leaq	-1936(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	linfit2
	movl	$0, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L10
	call	__stack_chk_fail
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.12) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
