fx:
	push	rbp
	mov	rbp, rsp
	movss	DWORD PTR -4[rbp], xmm0
	movss	xmm0, DWORD PTR .LC0[rip]
	divss	xmm0, DWORD PTR -4[rbp]
	pop	rbp
	ret
simps:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 56
	movss	DWORD PTR -36[rbp], xmm0
	movss	DWORD PTR -40[rbp], xmm1
	movss	DWORD PTR -44[rbp], xmm2
	mov	QWORD PTR -56[rbp], rdi
	mov	DWORD PTR -28[rbp], 2
	movss	xmm0, DWORD PTR -40[rbp]
	subss	xmm0, DWORD PTR -36[rbp]
	cvtsi2ss	xmm1, DWORD PTR -28[rbp]
	divss	xmm0, xmm1
	movss	DWORD PTR -16[rbp], xmm0
	pxor	xmm0, xmm0
	movss	DWORD PTR -24[rbp], xmm0
	movss	xmm0, DWORD PTR -36[rbp]
	addss	xmm0, DWORD PTR -16[rbp]
	call	fx
	movd	eax, xmm0
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	movd	xmm0, eax
	call	fx
	movss	DWORD PTR -48[rbp], xmm0
	mov	eax, DWORD PTR -40[rbp]
	movd	xmm0, eax
	call	fx
	addss	xmm0, DWORD PTR -48[rbp]
	movss	DWORD PTR -12[rbp], xmm0
	cvtss2sd	xmm1, DWORD PTR -12[rbp]
	cvtss2sd	xmm2, DWORD PTR -20[rbp]
	movsd	xmm0, QWORD PTR .LC2[rip]
	mulsd	xmm0, xmm2
	addsd	xmm1, xmm0
	cvtss2sd	xmm0, DWORD PTR -16[rbp]
	mulsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC3[rip]
	divsd	xmm0, xmm1
	cvtsd2ss	xmm0, xmm0
	mov	rax, QWORD PTR -56[rbp]
	movss	DWORD PTR [rax], xmm0
.L6:
	sal	DWORD PTR -28[rbp]
	mov	rax, QWORD PTR -56[rbp]
	movss	xmm0, DWORD PTR [rax]
	movss	DWORD PTR -8[rbp], xmm0
	movss	xmm0, DWORD PTR -40[rbp]
	subss	xmm0, DWORD PTR -36[rbp]
	cvtsi2ss	xmm1, DWORD PTR -28[rbp]
	divss	xmm0, xmm1
	movss	DWORD PTR -16[rbp], xmm0
	movss	xmm0, DWORD PTR -24[rbp]
	addss	xmm0, DWORD PTR -20[rbp]
	movss	DWORD PTR -24[rbp], xmm0
	pxor	xmm0, xmm0
	movss	DWORD PTR -20[rbp], xmm0
	mov	DWORD PTR -32[rbp], 1
	jmp	.L4
.L5:
	cvtss2sd	xmm1, DWORD PTR -36[rbp]
	cvtss2sd	xmm2, DWORD PTR -16[rbp]
	cvtsi2sd	xmm0, DWORD PTR -32[rbp]
	addsd	xmm0, xmm0
	movsd	xmm3, QWORD PTR .LC4[rip]
	subsd	xmm0, xmm3
	mulsd	xmm0, xmm2
	addsd	xmm0, xmm1
	cvtsd2ss	xmm0, xmm0
	movss	DWORD PTR -4[rbp], xmm0
	mov	eax, DWORD PTR -4[rbp]
	movd	xmm0, eax
	call	fx
	movss	xmm1, DWORD PTR -20[rbp]
	addss	xmm0, xmm1
	movss	DWORD PTR -20[rbp], xmm0
	add	DWORD PTR -32[rbp], 1
.L4:
	mov	eax, DWORD PTR -28[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	cmp	DWORD PTR -32[rbp], eax
	jle	.L5
	cvtss2sd	xmm1, DWORD PTR -12[rbp]
	cvtss2sd	xmm2, DWORD PTR -20[rbp]
	movsd	xmm0, QWORD PTR .LC2[rip]
	mulsd	xmm0, xmm2
	addsd	xmm1, xmm0
	cvtss2sd	xmm0, DWORD PTR -24[rbp]
	addsd	xmm0, xmm0
	addsd	xmm1, xmm0
	cvtss2sd	xmm0, DWORD PTR -16[rbp]
	mulsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC3[rip]
	divsd	xmm0, xmm1
	cvtsd2ss	xmm0, xmm0
	mov	rax, QWORD PTR -56[rbp]
	movss	DWORD PTR [rax], xmm0
	mov	rax, QWORD PTR -56[rbp]
	movss	xmm0, DWORD PTR [rax]
	ucomiss	xmm0, DWORD PTR -8[rbp]
	jp	.L8
	ucomiss	xmm0, DWORD PTR -8[rbp]
	je	.L6
.L8:
	mov	rax, QWORD PTR -56[rbp]
	movss	xmm0, DWORD PTR [rax]
	subss	xmm0, DWORD PTR -8[rbp]
	movss	xmm1, DWORD PTR .LC5[rip]
	andps	xmm1, xmm0
	mov	rax, QWORD PTR -56[rbp]
	movss	xmm0, DWORD PTR [rax]
	mulss	xmm0, DWORD PTR -44[rbp]
	movss	xmm2, DWORD PTR .LC5[rip]
	andps	xmm0, xmm2
	comiss	xmm0, xmm1
	setnb	al
	xor	eax, 1
	test	al, al
	jne	.L6
	nop
	nop
	leave
	ret
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	movss	xmm0, DWORD PTR .LC6[rip]
	movss	DWORD PTR -20[rbp], xmm0
	movss	xmm0, DWORD PTR .LC0[rip]
	movss	DWORD PTR -16[rbp], xmm0
	movss	xmm0, DWORD PTR .LC7[rip]
	movss	DWORD PTR -12[rbp], xmm0
	lea	rdx, -24[rbp]
	movss	xmm1, DWORD PTR -20[rbp]
	movss	xmm0, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -16[rbp]
	mov	rdi, rdx
	movaps	xmm2, xmm1
	movaps	xmm1, xmm0
	movd	xmm0, eax
	call	simps
	mov	eax, 0
	mov	rcx, QWORD PTR -8[rbp]
	xor	rcx, QWORD PTR fs:40
	leave
	ret
