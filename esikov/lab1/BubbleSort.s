	.intel_syntax noprefix
swap:
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	movsd	xmm0, QWORD PTR [rax]
	movsd	QWORD PTR -8[rbp], xmm0
	mov	rax, QWORD PTR -32[rbp]
	movsd	xmm0, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	movsd	QWORD PTR [rax], xmm0
	mov	rax, QWORD PTR -32[rbp]
	movsd	xmm0, QWORD PTR -8[rbp]
	movsd	QWORD PTR [rax], xmm0
	nop
	pop	rbp
	ret
sort:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	sal	rax, 3
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rcx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	memcpy@PLT
.L7:
	mov	BYTE PTR -13[rbp], 1
	mov	DWORD PTR -12[rbp], 0
	jmp	.L3
.L6:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	movsd	xmm0, QWORD PTR [rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	add	rax, 1
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	movsd	xmm1, QWORD PTR [rax]
	ucomisd	xmm0, xmm1
	jbe	.L4
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	add	rax, 1
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -8[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rcx
	mov	rsi, rdx
	mov	rdi, rax
	call	swap
	mov	BYTE PTR -13[rbp], 0
.L4:
	add	DWORD PTR -12[rbp], 1
.L3:
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 1
	cmp	DWORD PTR -12[rbp], eax
	jl	.L6
	cmp	BYTE PTR -13[rbp], 0
	je	.L7
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
.LC0:
	.string	"%7.1f "
write_arr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	edi, 10
	call	putchar@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L11
.L12:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -40[rbp], rax
	movsd	xmm0, QWORD PTR -40[rbp]
	lea	rdi, .LC0[rip]
	mov	eax, 1
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
.L11:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L12
	mov	edi, 10
	call	putchar@PLT
	nop
	leave
	ret

	.globl	main
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 672
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -660[rbp], 80
	mov	edi, 0
	call	time@PLT
	mov	edi, eax
	call	srand@PLT
	mov	DWORD PTR -664[rbp], 0
	jmp	.L14
.L15:
	call	rand@PLT
	mov	ecx, eax
	mov	edx, 1374389535
	mov	eax, ecx
	imul	edx
	sar	edx, 5
	mov	eax, ecx
	sar	eax, 31
	sub	edx, eax
	mov	eax, edx
	imul	eax, eax, 100
	sub	ecx, eax
	mov	eax, ecx
	cvtsi2sd	xmm0, eax
	mov	eax, DWORD PTR -664[rbp]
	cdqe
	movsd	QWORD PTR -656[rbp+rax*8], xmm0
	add	DWORD PTR -664[rbp], 1
.L14:
	mov	eax, DWORD PTR -664[rbp]
	cmp	eax, DWORD PTR -660[rbp]
	jl	.L15
	mov	edx, DWORD PTR -660[rbp]
	lea	rax, -656[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	sort
	mov	eax, 0
	mov	rsi, QWORD PTR -8[rbp]
	xor	rsi, QWORD PTR fs:40
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
	leave
	ret

