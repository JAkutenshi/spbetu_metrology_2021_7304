
sum: 
	.zero	8
upper:
	.zero	8
lower: 
	.zero	8
tol:

	.long	-1598689907
	.long	1051772663
fx:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	movsd	QWORD PTR [rbp-8], xmm0 	
	mov	rax, QWORD PTR [rbp-8] 
	movq	xmm0, rax
	call	sqrt
	movsd	xmm1, QWORD PTR .LC0[rip] 
	divsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax 
	leave
	ret
trap2:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 96
	movsd	QWORD PTR [rbp-72], xmm0 
	movsd	QWORD PTR [rbp-80], xmm1 
	movsd	QWORD PTR [rbp-88], xmm2 
	mov	DWORD PTR [rbp-4], 1 
	movsd	xmm0, QWORD PTR [rbp-80] 
	subsd	xmm0, QWORD PTR [rbp-72]
	cvtsi2sd		xmm1, DWORD PTR [rbp-4] 
	divsd	xmm0, xmm1
	movsd	QWORD PTR [rbp-32], xmm0 
	mov	rax, QWORD PTR [rbp-72] 
	movq	xmm0, rax
	call	fx
	movsd	QWORD PTR [rbp-96], xmm0 
	mov	rax, QWORD PTR [rbp-80] 
	movq	xmm0, rax
	call	fx
	addsd	xmm0, QWORD PTR [rbp-96] 
	movsd	QWORD PTR [rbp-40], xmm0 
	movsd	xmm0, QWORD PTR [rbp-40] 
	mulsd	xmm0, QWORD PTR [rbp-32]
	movsd	xmm1, QWORD PTR .LC1[rip] 
	divsd	xmm0, xmm1
	movsd	QWORD PTR sum[rip], xmm0 
	pxor	xmm0, xmm0
	movsd QWORD PTR [rbp-16], xmm0
.L6:
	sal    DWORD PTR [rbp-4]
	movsd xmm0, QWORD PTR sum[rip] 
	movsd QWORD PTR [rbp-48], xmm0 
	movsd xmm0, QWORD PTR [rbp-80] 
	subsd xmm0, QWORD PTR [rbp-72]
	cvtsi2sd		xmm1, DWORD PTR [rbp-4] 
	divsd	xmm0, xmm1
	movsd	QWORD PTR [rbp-32], xmm0 
	mov	DWORD PTR [rbp-20], 1
	jmp	.L4
.L5:
	cvtsi2sd		xmm0, DWORD PTR [rbp-20] 
	addsd	xmm0, xmm0
	movsd	xmm1, QWORD PTR .LC0[rip] 
	subsd	xmm0, xmm1
	mulsd xmm0, QWORD PTR [rbp-32] 
	movsd xmm1, QWORD PTR [rbp-72]
	addsd xmm0, xmm1
	movsd	QWORD PTR [rbp-56], xmm0 
	mov	rax, QWORD PTR [rbp-56]
	movq	xmm0, rax
	call	fx
	movsd xmm1, QWORD PTR [rbp-16] 
	addsd xmm0, xmm1
	movsd	QWORD PTR [rbp-16], xmm0 
	add	DWORD PTR [rbp-20], 1
.L4:
	mov	eax, DWORD PTR [rbp-4] 
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	cmp	DWORD PTR [rbp-20], eax 
	jle	.L5
	movsd xmm0, QWORD PTR [rbp-16] 
	addsd xmm0, xmm0
	addsd xmm0, QWORD PTR [rbp-40] 
	movapd xmm1, xmm0
	mulsd	xmm1, QWORD PTR [rbp-32] 
	movsd	xmm0, QWORD PTR .LC3[rip] 
	mulsd	xmm0, xmm1
	movsd	QWORD PTR sum[rip], xmm0 
	movsd	xmm0, QWORD PTR sum[rip] 
	subsd	xmm0, QWORD PTR [rbp-48] 
	movq	xmm1, QWORD PTR .LC4[rip] 
	andpd	xmm0, xmm1
	movsd	xmm1, QWORD PTR sum[rip] 
	mulsd	xmm1, QWORD PTR [rbp-88] 
	movq	xmm2, QWORD PTR .LC4[rip] 
	andpd	xmm1, xmm2
	comisd xmm0, xmm1 
	ja	.L6
	nop 
	nop 
	leave 
	ret
main:
	push	rbp
	mov	rbp, rsp
	movsd	xmm0, QWORD PTR .LC0[rip] 
	movsd	QWORD PTR lower[rip], xmm0 
	movsd	xmm0, QWORD PTR .LC5[rip] 
	movsd	QWORD PTR upper[rip], xmm0 
	movsd	xmm1, QWORD PTR .LC6[rip] 
	movsd	xmm0, QWORD PTR upper[rip] 
	mov	rax, QWORD PTR lower[rip] 
	movapd xmm2, xmm1
	movapd xmm1, xmm0 
	movq	xmm0, rax
	call	trap2
	mov	eax, 0
	pop	rbp 
	ret














































 