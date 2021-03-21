	.file	"program.c"
	.text
	.globl	_linfit1
	.def	_linfit1;	.scl	2;	.type	32;	.endef
_linfit1:
LFB5:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$96, %esp
	fldz
	fstpl	-8(%ebp)
	fldz
	fstpl	-16(%ebp)
	fldz
	fstpl	-24(%ebp)
	fldz
	fstpl	-32(%ebp)
	fldz
	fstpl	-40(%ebp)
	movl	$0, -44(%ebp)
	jmp	L2
L3:
	movl	-44(%ebp), %eax
	leal	0(,%eax,8), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	fldl	(%eax)
	fstpl	-56(%ebp)
	movl	-44(%ebp), %eax
	leal	0(,%eax,8), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	fldl	(%eax)
	fstpl	-64(%ebp)
	fldl	-8(%ebp)
	faddl	-56(%ebp)
	fstpl	-8(%ebp)
	fldl	-16(%ebp)
	faddl	-64(%ebp)
	fstpl	-16(%ebp)
	fldl	-56(%ebp)
	fmull	-64(%ebp)
	fldl	-24(%ebp)
	faddp	%st, %st(1)
	fstpl	-24(%ebp)
	fldl	-56(%ebp)
	fmull	-56(%ebp)
	fldl	-32(%ebp)
	faddp	%st, %st(1)
	fstpl	-32(%ebp)
	fldl	-64(%ebp)
	fmull	-64(%ebp)
	fldl	-40(%ebp)
	faddp	%st, %st(1)
	fstpl	-40(%ebp)
	addl	$1, -44(%ebp)
L2:
	movl	-44(%ebp), %eax
	cmpl	28(%ebp), %eax
	jl	L3
	fldl	-8(%ebp)
	fmull	-8(%ebp)
	fildl	28(%ebp)
	fdivrp	%st, %st(1)
	fldl	-32(%ebp)
	fsubp	%st, %st(1)
	fstpl	-72(%ebp)
	fldl	-8(%ebp)
	fmull	-16(%ebp)
	fildl	28(%ebp)
	fdivrp	%st, %st(1)
	fldl	-24(%ebp)
	fsubp	%st, %st(1)
	fstpl	-80(%ebp)
	fldl	-16(%ebp)
	fmull	-16(%ebp)
	fildl	28(%ebp)
	fdivrp	%st, %st(1)
	fldl	-40(%ebp)
	fsubp	%st, %st(1)
	fstpl	-88(%ebp)
	fldl	-80(%ebp)
	fdivl	-72(%ebp)
	movl	24(%ebp), %eax
	fstpl	(%eax)
	fldl	-32(%ebp)
	fmull	-16(%ebp)
	fldl	-8(%ebp)
	fmull	-24(%ebp)
	fsubrp	%st, %st(1)
	fildl	28(%ebp)
	fdivrp	%st, %st(1)
	fdivl	-72(%ebp)
	movl	20(%ebp), %eax
	fstpl	(%eax)
	movl	$0, -44(%ebp)
	jmp	L4
L5:
	movl	-44(%ebp), %eax
	leal	0(,%eax,8), %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	20(%ebp), %eax
	fldl	(%eax)
	movl	24(%ebp), %eax
	fldl	(%eax)
	movl	-44(%ebp), %eax
	leal	0(,%eax,8), %ecx
	movl	8(%ebp), %eax
	addl	%ecx, %eax
	fldl	(%eax)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fstpl	(%edx)
	addl	$1, -44(%ebp)
L4:
	movl	-44(%ebp), %eax
	cmpl	28(%ebp), %eax
	jl	L5
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE5:
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB6:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$2000, %esp
	call	___main
	movl	$80, 1992(%esp)
	movl	$0, (%esp)
	call	_time
	movl	%eax, (%esp)
	call	_srand
	movl	$0, 1996(%esp)
	jmp	L7
L8:
	movl	1996(%esp), %eax
	addl	$1, %eax
	movl	%eax, 44(%esp)
	fildl	44(%esp)
	movl	1996(%esp), %eax
	fstpl	1352(%esp,%eax,8)
	call	_rand
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
	movl	%eax, 44(%esp)
	fildl	44(%esp)
	movl	1996(%esp), %eax
	fstpl	712(%esp,%eax,8)
	addl	$1, 1996(%esp)
L7:
	movl	1996(%esp), %eax
	cmpl	1992(%esp), %eax
	jl	L8
	movl	1992(%esp), %eax
	movl	%eax, 20(%esp)
	leal	56(%esp), %eax
	movl	%eax, 16(%esp)
	leal	64(%esp), %eax
	movl	%eax, 12(%esp)
	leal	72(%esp), %eax
	movl	%eax, 8(%esp)
	leal	712(%esp), %eax
	movl	%eax, 4(%esp)
	leal	1352(%esp), %eax
	movl	%eax, (%esp)
	call	_linfit1
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE6:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_time;	.scl	2;	.type	32;	.endef
	.def	_srand;	.scl	2;	.type	32;	.endef
	.def	_rand;	.scl	2;	.type	32;	.endef
