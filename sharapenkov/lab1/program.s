	.file	"program.c"
	.intel_syntax noprefix
	.text
	.globl	erf
	.type	erf, @function
erf:
	endbr64
	movapd	xmm3, xmm0
	sub	rsp, 24
	movapd	xmm1, xmm0
	xor	eax, eax
	mulsd	xmm3, xmm0
	movsd	xmm5, QWORD PTR .LC0[rip]
	movsd	xmm4, QWORD PTR .LC1[rip]
.L2:
	inc	eax
	addsd	xmm0, xmm0
	cvtsi2sd	xmm2, eax
	mulsd	xmm0, xmm3
	addsd	xmm2, xmm2
	addsd	xmm2, xmm5
	divsd	xmm0, xmm2
	addsd	xmm1, xmm0
	movapd	xmm2, xmm1
	mulsd	xmm2, xmm4
	comisd	xmm0, xmm2
	jnb	.L2
	xorps	xmm3, XMMWORD PTR .LC2[rip]
	movsd	QWORD PTR 8[rsp], xmm1
	movapd	xmm0, xmm3
	call	exp@PLT
	movsd	xmm1, QWORD PTR 8[rsp]
	addsd	xmm1, xmm1
	mulsd	xmm1, xmm0
	divsd	xmm1, QWORD PTR .LC3[rip]
	add	rsp, 24
	movapd	xmm0, xmm1
	ret
	.size	erf, .-erf
	.globl	erfc
	.type	erfc, @function
erfc:
	endbr64
	movapd	xmm1, xmm0
	sub	rsp, 24
	movsd	xmm4, QWORD PTR .LC0[rip]
	mov	eax, 12
	mulsd	xmm0, xmm0
	movapd	xmm5, xmm4
	movapd	xmm2, xmm0
	addsd	xmm2, xmm0
	divsd	xmm5, xmm2
	movsd	xmm2, QWORD PTR .LC4[rip]
	mulsd	xmm2, xmm5
	addsd	xmm2, xmm4
.L7:
	cvtsi2sd	xmm3, eax
	mulsd	xmm3, xmm5
	divsd	xmm3, xmm2
	movapd	xmm2, xmm3
	addsd	xmm2, xmm4
	dec	eax
	jne	.L7
	xorps	xmm0, XMMWORD PTR .LC2[rip]
	movsd	QWORD PTR 8[rsp], xmm1
	movsd	QWORD PTR [rsp], xmm2
	call	exp@PLT
	movsd	xmm2, QWORD PTR [rsp]
	movsd	xmm1, QWORD PTR 8[rsp]
	mulsd	xmm1, xmm2
	mulsd	xmm1, QWORD PTR .LC3[rip]
	add	rsp, 24
	divsd	xmm0, xmm1
	ret
	.size	erfc, .-erfc
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC5:
	.string	"Arg? "
.LC6:
	.string	"%lf"
.LC9:
	.string	"X= %8.4lf Erf= %12.8lf Erfc= %12lf\n"
	.section	.text.startup,"ax",@progbits
	.globl	main
	.type	main, @function
main:
	endbr64
	sub	rsp, 24
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 8[rsp], rax
	xor	eax, eax
.L18:
	lea	rsi, .LC5[rip]
	mov	edi, 1
	xor	eax, eax
	call	__printf_chk@PLT
	xor	eax, eax
	mov	rsi, rsp
	lea	rdi, .LC6[rip]
	call	__isoc99_scanf@PLT
	movsd	xmm0, QWORD PTR [rsp]
	xorps	xmm1, xmm1
	comisd	xmm1, xmm0
	jbe	.L23
	mov	rax, QWORD PTR 8[rsp]
	xor	rax, QWORD PTR fs:40
	je	.L19
	call	__stack_chk_fail@PLT
.L23:
	ucomisd	xmm0, xmm1
	jp	.L13
	jne	.L13
	mov	rax, QWORD PTR .LC0[rip]
	mov	QWORD PTR er[rip], 0x000000000
	mov	QWORD PTR ec[rip], rax
	jmp	.L15
.L13:
	movsd	xmm1, QWORD PTR .LC8[rip]
	comisd	xmm1, xmm0
	jbe	.L25
	call	erf
	movsd	xmm3, QWORD PTR .LC0[rip]
	movsd	QWORD PTR er[rip], xmm0
	subsd	xmm3, xmm0
	movsd	QWORD PTR ec[rip], xmm3
	jmp	.L15
.L25:
	call	erfc
	movsd	xmm4, QWORD PTR .LC0[rip]
	movsd	QWORD PTR ec[rip], xmm0
	subsd	xmm4, xmm0
	movsd	QWORD PTR er[rip], xmm4
.L15:
	movsd	xmm2, QWORD PTR ec[rip]
	movsd	xmm0, QWORD PTR [rsp]
	mov	al, 3
	lea	rsi, .LC9[rip]
	movsd	xmm1, QWORD PTR er[rip]
	mov	edi, 1
	call	__printf_chk@PLT
	jmp	.L18
.L19:
	xor	eax, eax
	add	rsp, 24
	ret
	.size	main, .-main
	.comm	done,1,1
	.comm	ec,8,8
	.comm	er,8,8
	.comm	x,8,8
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC1:
	.long	3944497965
	.long	1058682594
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC2:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC3:
	.long	2215296028
	.long	1073503224
	.align 8
.LC4:
	.long	0
	.long	1076494336
	.align 8
.LC8:
	.long	0
	.long	1073217536
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
