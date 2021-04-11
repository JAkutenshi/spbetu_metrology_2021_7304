get_data:
	pushq %rbp
	movq   %rsp, %rbp 
	movq %rdi, -24(%rbp) 
	movq %rsi, -32(%rbp) 
	movl %edx, -36(%rbp) 
	movl %ecx, -40(%rbp) 
	movl   $0, -8(%rbp) 
	jmp	.L2
	movl -8(%rbp), %eax 
	movslq %eax, %rdx 
	movq   %rdx, %rax 
	addq   %rax, %rax 
	addq   %rdx, %rax 
	salq $3, %rax
	movq   %rax, %rdx 
	movq -24(%rbp), %rax 
	addq %rdx, %rax
	movsd .LC0(%rip), %xmm0 
	movsd %xmm0, (%rax) 
	movl $1, -4(%rbp)
	jmp	.L3
	movl -8(%rbp), %eax 
	addl $1, %eax
	cvtsi2sd	%eax, %xmm1 
	movl -8(%rbp), %eax 
	movslq %eax, %rdx
	movq %rdx, %rax 
	addq %rax, %rax 
	addq %rdx, %rax 
	salq $3, %rax 
	movq %rax, %rdx
	movq -24(%rbp), %rax 	
	addq   %rax, %rdx 
	movl -4(%rbp), %eax 
	subl $1, %eax
	cltq
	movsd (%rdx,%rax,8), %xmm0 
	movl   -8(%rbp), %eax 
	movslq %eax, %rdx
	movq %rdx, %rax 
	addq %rax, %rax 
	addq %rdx, %rax 
	salq $3, %rax 
	movq %rax, %rdx
	movq -24(%rbp), %rax 
	addq   %rax, %rdx 
	mulsd %xmm1, %xmm0 
	movl -4(%rbp), %eax 
	cltq
	movsd %xmm0, (%rdx,%rax,8) 
	addl $1, -4(%rbp)
	movl -4(%rbp), %eax 
	cmpl -40(%rbp), %eax 
	jl	.L4
	movl -8(%rbp), %eax 
	addl $1, %eax
	leal (%rax,%rax), %ecx
	movl -8(%rbp), %eax 
	cltq
	leaq 0(,%rax,8), %rdx 
	movq -32(%rbp), %rax 
	addq %rdx, %rax 
	cvtsi2sd	%ecx, %xmm0 
	movsd %xmm0, (%rax) 
	addl $1, -8(%rbp)
	movl -8(%rbp), %eax 
	cmpl -36(%rbp), %eax 
	jl	.L5
	nop
	popq %rbp ret
square:
	pushq %rbp
	movq   %rsp, %rbp 
	movq %rdi, -24(%rbp) 
	movq %rsi, -32(%rbp) 
	movq %rdx, -40(%rbp) 
	movq %rcx, -48(%rbp) 
	movl %r8d, -52(%rbp) 
	movl %r9d, -56(%rbp) 
	movl $0, -16(%rbp) 
	jmp	.L7
	movl $0, -12(%rbp) 
	jmp	.L8
	movl -16(%rbp), %eax 
	movslq %eax, %rdx 
	movq   %rdx, %rax 
	addq   %rax, %rax 
	addq   %rdx, %rax 
	salq $3, %rax
	movq   %rax, %rdx 
	movq -40(%rbp), %rax 
	addq   %rax, %rdx 
	movl -12(%rbp), %eax 
	cltq
	pxor %xmm0, %xmm0
	movsd %xmm0, (%rdx,%rax,8) 
	movl $0, -8(%rbp)
	jmp	.L9
	movl -16(%rbp), %eax 
	movslq %eax, %rdx 
	movq   %rdx, %rax 
	addq   %rax, %rax 
	addq   %rdx, %rax 
	salq $3, %rax
	movq   %rax, %rdx 
	movq -40(%rbp), %rax 
	addq   %rax, %rdx 
	movl -12(%rbp), %eax 
	cltq
	movsd (%rdx,%rax,8), %xmm1 
	movl   -8(%rbp), %eax 
	movslq %eax, %rdx
	movq %rdx, %rax 
	addq %rax, %rax 
	addq %rdx, %rax 
	salq $3, %rax 
	movq %rax, %rdx 
	movq -24(%rbp), %rax 
	addq   %rax, %rdx 
	movl -12(%rbp), %eax 
	cltq
	movsd (%rdx,%rax,8), %xmm2 
	movl   -8(%rbp), %eax 
	movslq %eax, %rdx
	movq %rdx, %rax 
	addq %rax, %rax 
	addq %rdx, %rax 
	salq $3, %rax 
	movq %rax, %rdx
	movq -24(%rbp), %rax 
	addq   %rax, %rdx 
	movl -16(%rbp), %eax 
	cltq
	movsd (%rdx,%rax,8), %xmm0 
	mulsd %xmm2, %xmm0
	movl -16(%rbp), %eax 
	movslq %eax, %rdx 
	movq   %rdx, %rax 
	addq   %rax, %rax 
	addq   %rdx, %rax 
	salq $3, %rax
	movq   %rax, %rdx 
	movq -40(%rbp), %rax 
	addq   %rax, %rdx 
	addsd %xmm1, %xmm0 
	movl -12(%rbp), %eax 
	cltq
	movsd %xmm0, (%rdx,%rax,8) 
	movl -16(%rbp), %eax
	cmpl -12(%rbp), %eax je	.L10
	movl -16(%rbp), %eax 
	movslq %eax, %rdx 
	movq   %rdx, %rax 
	addq   %rax, %rax 
	addq   %rdx, %rax 
	salq $3, %rax
	movq   %rax, %rdx 
	movq -40(%rbp), %rax
	leaq (%rdx,%rax), %rcx 
	movl -12(%rbp), %eax 
	movslq %eax, %rdx
	movq %rdx, %rax 
	addq %rax, %rax 
	addq %rdx, %rax 
	salq $3, %rax 
	movq %rax, %rdx
	movq -40(%rbp), %rax 
	addq   %rax, %rdx 
	movl -12(%rbp), %eax 
	cltq
	movsd (%rcx,%rax,8), %xmm0 
	movl   -16(%rbp), %eax 
	cltq
	movsd %xmm0, (%rdx,%rax,8) 
	addl $1, -8(%rbp)
	movl -8(%rbp), %eax c
	mpl -52(%rbp), %eax
main:
	jl	.L11
	addl $1, -12(%rbp) 
	movl -12(%rbp), %eax 
	cmpl -16(%rbp), %eax 
	jle	.L12
	movl -16(%rbp), %eax 
	cltq
	leaq 0(,%rax,8), %rdx 
	movq -48(%rbp), %rax 
	addq %rdx, %rax
	pxor %xmm0, %xmm0 
	movsd %xmm0, (%rax) 
	movl $0, -4(%rbp) 
	jmp	.L13
	movl -16(%rbp), %eax 
	cltq
	leaq 0(,%rax,8), %rdx 
	movq -48(%rbp), %rax 
	addq   %rdx, %rax 
	movsd (%rax), %xmm1 
	movl -4(%rbp), %eax 
	cltq
	leaq 0(,%rax,8), %rdx 
	movq -32(%rbp), %rax 
	addq   %rdx, %rax 
	movsd (%rax), %xmm2 
	movl -4(%rbp), %eax 
	movslq %eax, %rdx
	movq %rdx, %rax 
	addq %rax, %rax 
	addq %rdx, %rax 
	salq $3, %rax 
	movq %rax, %rdx
	movq -24(%rbp), %rax 
	addq   %rax, %rdx 
	movl -16(%rbp), %eax 
	cltq
	movsd (%rdx,%rax,8), %xmm0 
	mulsd %xmm2, %xmm0
	movl -16(%rbp), %eax 
	cltq
	leaq 0(,%rax,8), %rdx 
	movq -48(%rbp), %rax 
	addq   %rdx, %rax 
	addsd %xmm1, %xmm0 
	movsd %xmm0, (%rax) 
	addl   $1, -4(%rbp) 
	movl -4(%rbp), %eax 
	cmpl -52(%rbp), %eax 
	jl	.L14
	addl $1, -16(%rbp) 
	movl -16(%rbp), %eax 
	cmpl -56(%rbp), %eax 
	jl	.L15
	nop
	popq %rbp 
	ret
	pushq %rbp
	movq %rsp, %rbp 
	subq $432, %rsp
 	movq %fs:40, %rax 
 	movq %rax, -8(%rbp) 
 	xorl   %eax, %eax 
 	movl $5, -424(%rbp) 
 	movl $3, -420(%rbp)
	movl -420(%rbp), %ecx 
	movl -424(%rbp), %edx 
	leaq -384(%rbp), %rsi 
	leaq -224(%rbp), %rax 
	movq %rax, %rdi
	call get_data
	movl -420(%rbp), %r8d 
	movl -424(%rbp), %edi 
	leaq -416(%rbp), %rcx 
	leaq -304(%rbp), %rdx 
	leaq -384(%rbp), %rsi 
	leaq -224(%rbp), %rax 
	movl %r8d, %r9d
	movl %edi, %r8d 
	movq %rax, %rdi 
	call   square 
	movl $0, %eax
	movq -8(%rbp), %rdi 
	xorq   %fs:40, %rdi 
	je	.L18
	call stack_chk_fail@PLT 
	leave
	ret
