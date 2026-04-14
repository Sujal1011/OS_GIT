	.file	"map.c"
	.text
	.globl	map_create
	.type	map_create, @function
map_create:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$8, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	map_create, .-map_create
	.globl	map_put
	.type	map_put, @function
map_put:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	movq	%r8, -168(%rbp)
	movq	$0, -80(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L4
	movq	-144(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$-17973521, -128(%rbp)
	movl	$-1640531527, -120(%rbp)
	movl	-120(%rbp), %eax
	movl	%eax, -124(%rbp)
	movq	-152(%rbp), %rax
	movl	%eax, -116(%rbp)
	jmp	.L5
.L6:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-72(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -124(%rbp)
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-72(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -120(%rbp)
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-72(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	subl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	subl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	subl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -128(%rbp)
	addq	$12, -72(%rbp)
	subl	$12, -116(%rbp)
.L5:
	cmpl	$11, -116(%rbp)
	ja	.L6
	movq	-152(%rbp), %rax
	addl	%eax, -128(%rbp)
	cmpl	$11, -116(%rbp)
	ja	.L7
	movl	-116(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L9(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L9(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L9:
	.long	.L7-.L9
	.long	.L19-.L9
	.long	.L18-.L9
	.long	.L17-.L9
	.long	.L16-.L9
	.long	.L15-.L9
	.long	.L14-.L9
	.long	.L13-.L9
	.long	.L12-.L9
	.long	.L11-.L9
	.long	.L10-.L9
	.long	.L8-.L9
	.text
.L8:
	movq	-72(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -128(%rbp)
.L10:
	movq	-72(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -128(%rbp)
.L11:
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -128(%rbp)
.L12:
	movq	-72(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -120(%rbp)
.L13:
	movq	-72(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -120(%rbp)
.L14:
	movq	-72(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -120(%rbp)
.L15:
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -120(%rbp)
.L16:
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -124(%rbp)
.L17:
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -124(%rbp)
.L18:
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -124(%rbp)
.L19:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -124(%rbp)
.L7:
	movl	-120(%rbp), %eax
	subl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	subl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	subl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	subl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -128(%rbp)
	movq	$0, -80(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L4
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	-128(%rbp), %eax
	movl	%eax, -92(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movl	-92(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L20
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movl	-92(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	jmp	.L22
.L20:
	movq	$0, -80(%rbp)
	jmp	.L22
.L26:
	movq	-80(%rbp), %rax
	movl	84(%rax), %eax
	cmpl	%eax, -128(%rbp)
	jne	.L23
	movq	-80(%rbp), %rax
	movl	80(%rax), %eax
	movl	%eax, %eax
	cmpq	%rax, -152(%rbp)
	jne	.L23
	movq	-80(%rbp), %rax
	movq	72(%rax), %rax
	movq	-152(%rbp), %rdx
	movq	-144(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L4
.L23:
	movq	-80(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L24
	movq	-80(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	jmp	.L22
.L24:
	movq	$0, -80(%rbp)
.L22:
	cmpq	$0, -80(%rbp)
	jne	.L26
.L4:
	cmpq	$0, -80(%rbp)
	jne	.L27
	movl	$88, %edi
	call	malloc@PLT
	movq	%rax, -80(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	-152(%rbp), %rdx
	movq	-144(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-80(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-80(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	$-17973521, -112(%rbp)
	movl	$-1640531527, -104(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -108(%rbp)
	movq	-152(%rbp), %rax
	movl	%eax, -100(%rbp)
	jmp	.L28
.L29:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-64(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -108(%rbp)
	movq	-64(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-64(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -104(%rbp)
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-64(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	subl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	subl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	subl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	subl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	subl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	subl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	subl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	subl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	subl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	subl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	subl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	subl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	subl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	subl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	subl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	subl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	subl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	subl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -112(%rbp)
	addq	$12, -64(%rbp)
	subl	$12, -100(%rbp)
.L28:
	cmpl	$11, -100(%rbp)
	ja	.L29
	movq	-152(%rbp), %rax
	addl	%eax, -112(%rbp)
	cmpl	$11, -100(%rbp)
	ja	.L30
	movl	-100(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L32(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L32(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L32:
	.long	.L30-.L32
	.long	.L42-.L32
	.long	.L41-.L32
	.long	.L40-.L32
	.long	.L39-.L32
	.long	.L38-.L32
	.long	.L37-.L32
	.long	.L36-.L32
	.long	.L35-.L32
	.long	.L34-.L32
	.long	.L33-.L32
	.long	.L31-.L32
	.text
.L31:
	movq	-64(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -112(%rbp)
.L33:
	movq	-64(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -112(%rbp)
.L34:
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -112(%rbp)
.L35:
	movq	-64(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -104(%rbp)
.L36:
	movq	-64(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -104(%rbp)
.L37:
	movq	-64(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -104(%rbp)
.L38:
	movq	-64(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -104(%rbp)
.L39:
	movq	-64(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -108(%rbp)
.L40:
	movq	-64(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -108(%rbp)
.L41:
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -108(%rbp)
.L42:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -108(%rbp)
.L30:
	movl	-104(%rbp), %eax
	subl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	subl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	subl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	subl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	subl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	subl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	subl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	subl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	subl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	subl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	subl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	subl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	subl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	subl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	subl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	subl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	subl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	subl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -112(%rbp)
	movq	-80(%rbp), %rax
	movl	-112(%rbp), %edx
	movl	%edx, 84(%rax)
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-152(%rbp), %rax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	%edx, 80(%rax)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L43
	movq	-80(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-80(%rbp), %rax
	movq	$0, 40(%rax)
	movl	$64, %edi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L44
	movl	$-1, %edi
	call	exit@PLT
.L44:
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	-80(%rbp), %rdx
	addq	$32, %rdx
	movq	%rdx, 24(%rax)
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movl	$32, 8(%rax)
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movl	$5, 12(%rax)
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	$32, 32(%rax)
	movq	-80(%rbp), %rax
	movq	32(%rax), %rbx
	movl	$512, %edi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movl	$-1609490463, 56(%rax)
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L45
	movl	$-1, %edi
	call	exit@PLT
.L45:
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movl	$512, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L46
.L43:
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-80(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	-80(%rbp), %rdx
	addq	$32, %rdx
	movq	%rdx, 24(%rax)
.L46:
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	-112(%rbp), %eax
	movl	%eax, -88(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movl	-88(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-80(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L47
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	addq	$32, %rdx
	movq	%rdx, 24(%rax)
.L47:
	movq	-80(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	12(%rax), %eax
	leal	1(%rax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	cmpl	%eax, %ecx
	jb	.L60
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movl	52(%rax), %eax
	testl	%eax, %eax
	jne	.L60
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %eax
	movl	%eax, %eax
	salq	$5, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L49
	movl	$-1, %edi
	call	exit@PLT
.L49:
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %eax
	movl	%eax, %eax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movl	16(%rax), %edx
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movl	12(%rax), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %ecx
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movl	16(%rax), %edx
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	subl	$1, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L50
	movl	$1, %edx
	jmp	.L51
.L50:
	movl	$0, %edx
.L51:
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	addl	%ecx, %edx
	movl	%edx, 40(%rax)
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movl	$0, 44(%rax)
	movl	$0, -96(%rbp)
	jmp	.L52
.L57:
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.L53
.L56:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movl	52(%rax), %edx
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movq	-80(%rbp), %rdx
	movq	32(%rdx), %rdx
	movl	40(%rdx), %edx
	cmpl	%eax, %edx
	jnb	.L54
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movl	44(%rax), %edx
	addl	$1, %edx
	movl	%edx, 44(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movq	-24(%rbp), %rdx
	movl	12(%rdx), %ecx
	movq	-80(%rbp), %rdx
	movq	32(%rdx), %rdx
	movl	40(%rdx), %edx
	imull	%ecx, %edx
	cmpl	%eax, %edx
	jnb	.L54
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 12(%rax)
.L54:
	movq	-56(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L55
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 24(%rax)
.L55:
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
.L53:
	cmpq	$0, -56(%rbp)
	jne	.L56
	addl	$1, -96(%rbp)
.L52:
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -96(%rbp)
	jb	.L57
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %edx
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	addl	%edx, %edx
	movl	%edx, 8(%rax)
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movl	44(%rax), %eax
	movq	-80(%rbp), %rdx
	movq	32(%rdx), %rdx
	movl	16(%rdx), %edx
	shrl	%edx
	cmpl	%eax, %edx
	jnb	.L58
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movl	48(%rax), %eax
	leal	1(%rax), %edx
	jmp	.L59
.L58:
	movl	$0, %edx
.L59:
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movl	%edx, 48(%rax)
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movl	48(%rax), %eax
	cmpl	$1, %eax
	jbe	.L60
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movl	$1, 52(%rax)
	jmp	.L60
.L27:
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-80(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rdx, 24(%rax)
.L60:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	map_put, .-map_put
	.globl	map_get
	.type	map_get, @function
map_get:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L62
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$-17973521, -36(%rbp)
	movl	$-1640531527, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-72(%rbp), %rax
	movl	%eax, -24(%rbp)
	jmp	.L63
.L64:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -32(%rbp)
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -28(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -36(%rbp)
	addq	$12, -8(%rbp)
	subl	$12, -24(%rbp)
.L63:
	cmpl	$11, -24(%rbp)
	ja	.L64
	movq	-72(%rbp), %rax
	addl	%eax, -36(%rbp)
	cmpl	$11, -24(%rbp)
	ja	.L65
	movl	-24(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L67(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L67(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L67:
	.long	.L65-.L67
	.long	.L77-.L67
	.long	.L76-.L67
	.long	.L75-.L67
	.long	.L74-.L67
	.long	.L73-.L67
	.long	.L72-.L67
	.long	.L71-.L67
	.long	.L70-.L67
	.long	.L69-.L67
	.long	.L68-.L67
	.long	.L66-.L67
	.text
.L66:
	movq	-8(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -36(%rbp)
.L68:
	movq	-8(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -36(%rbp)
.L69:
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -36(%rbp)
.L70:
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -28(%rbp)
.L71:
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -28(%rbp)
.L72:
	movq	-8(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -28(%rbp)
.L73:
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -28(%rbp)
.L74:
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -32(%rbp)
.L75:
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -32(%rbp)
.L76:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -32(%rbp)
.L77:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -32(%rbp)
.L65:
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -36(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L62
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	-36(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L78
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L80
.L78:
	movq	$0, -16(%rbp)
	jmp	.L80
.L84:
	movq	-16(%rbp), %rax
	movl	84(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jne	.L81
	movq	-16(%rbp), %rax
	movl	80(%rax), %eax
	movl	%eax, %eax
	cmpq	%rax, -72(%rbp)
	jne	.L81
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L62
.L81:
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L82
	movq	-16(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L80
.L82:
	movq	$0, -16(%rbp)
.L80:
	cmpq	$0, -16(%rbp)
	jne	.L84
.L62:
	cmpq	$0, -16(%rbp)
	je	.L85
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L86
.L85:
	movl	$0, %eax
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	map_get, .-map_get
	.globl	map_contains
	.type	map_contains, @function
map_contains:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L88
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$-17973521, -36(%rbp)
	movl	$-1640531527, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-72(%rbp), %rax
	movl	%eax, -24(%rbp)
	jmp	.L89
.L90:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -32(%rbp)
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -28(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -36(%rbp)
	addq	$12, -8(%rbp)
	subl	$12, -24(%rbp)
.L89:
	cmpl	$11, -24(%rbp)
	ja	.L90
	movq	-72(%rbp), %rax
	addl	%eax, -36(%rbp)
	cmpl	$11, -24(%rbp)
	ja	.L91
	movl	-24(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L93(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L93(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L93:
	.long	.L91-.L93
	.long	.L103-.L93
	.long	.L102-.L93
	.long	.L101-.L93
	.long	.L100-.L93
	.long	.L99-.L93
	.long	.L98-.L93
	.long	.L97-.L93
	.long	.L96-.L93
	.long	.L95-.L93
	.long	.L94-.L93
	.long	.L92-.L93
	.text
.L92:
	movq	-8(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -36(%rbp)
.L94:
	movq	-8(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -36(%rbp)
.L95:
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -36(%rbp)
.L96:
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -28(%rbp)
.L97:
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -28(%rbp)
.L98:
	movq	-8(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -28(%rbp)
.L99:
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -28(%rbp)
.L100:
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -32(%rbp)
.L101:
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -32(%rbp)
.L102:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -32(%rbp)
.L103:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -32(%rbp)
.L91:
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -36(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L88
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	-36(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L104
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L106
.L104:
	movq	$0, -16(%rbp)
	jmp	.L106
.L110:
	movq	-16(%rbp), %rax
	movl	84(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jne	.L107
	movq	-16(%rbp), %rax
	movl	80(%rax), %eax
	movl	%eax, %eax
	cmpq	%rax, -72(%rbp)
	jne	.L107
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L88
.L107:
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L108
	movq	-16(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L106
.L108:
	movq	$0, -16(%rbp)
.L106:
	cmpq	$0, -16(%rbp)
	jne	.L110
.L88:
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	map_contains, .-map_contains
	.globl	map_free
	.type	map_free, @function
map_free:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L113
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	48(%rax), %rax
	jmp	.L114
.L113:
	movl	$0, %eax
.L114:
	movq	%rax, -24(%rbp)
	jmp	.L115
.L127:
	movq	-32(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L116
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L116
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L117
.L116:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L118
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	addq	%rcx, %rdx
	movq	%rdx, 24(%rax)
.L118:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L119
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, 16(%rdx)
	jmp	.L120
.L119:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
.L120:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L121
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, 8(%rdx)
.L121:
	movq	-16(%rbp), %rax
	movl	52(%rax), %edx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -36(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	leal	-1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L122
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L122:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L123
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
.L123:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L124
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, 24(%rax)
.L124:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movl	16(%rax), %edx
	subl	$1, %edx
	movl	%edx, 16(%rax)
.L117:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L125
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	jmp	.L126
.L125:
	movl	$0, %eax
.L126:
	movq	%rax, -24(%rbp)
.L115:
	cmpq	$0, -32(%rbp)
	jne	.L127
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	map_free, .-map_free
	.globl	map_remove
	.type	map_remove, @function
map_remove:
.LFB11:
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
	movq	$0, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L129
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$-17973521, -56(%rbp)
	movl	$-1640531527, -48(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
	movq	-88(%rbp), %rax
	movl	%eax, -44(%rbp)
	jmp	.L130
.L131:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-24(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -52(%rbp)
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-24(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -48(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-24(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	subl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	subl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	subl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	subl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	subl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	subl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	subl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	subl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	subl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	subl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	subl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	subl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	subl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	subl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	subl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	subl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	subl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	subl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -56(%rbp)
	addq	$12, -24(%rbp)
	subl	$12, -44(%rbp)
.L130:
	cmpl	$11, -44(%rbp)
	ja	.L131
	movq	-88(%rbp), %rax
	addl	%eax, -56(%rbp)
	cmpl	$11, -44(%rbp)
	ja	.L132
	movl	-44(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L134(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L134(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L134:
	.long	.L132-.L134
	.long	.L144-.L134
	.long	.L143-.L134
	.long	.L142-.L134
	.long	.L141-.L134
	.long	.L140-.L134
	.long	.L139-.L134
	.long	.L138-.L134
	.long	.L137-.L134
	.long	.L136-.L134
	.long	.L135-.L134
	.long	.L133-.L134
	.text
.L133:
	movq	-24(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -56(%rbp)
.L135:
	movq	-24(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -56(%rbp)
.L136:
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -56(%rbp)
.L137:
	movq	-24(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -48(%rbp)
.L138:
	movq	-24(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -48(%rbp)
.L139:
	movq	-24(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -48(%rbp)
.L140:
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -48(%rbp)
.L141:
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -52(%rbp)
.L142:
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -52(%rbp)
.L143:
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -52(%rbp)
.L144:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -52(%rbp)
.L132:
	movl	-48(%rbp), %eax
	subl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	subl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	subl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	subl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	subl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	subl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	subl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	subl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	subl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	subl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	subl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	subl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	subl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	subl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	subl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	subl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	subl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	subl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -56(%rbp)
	movq	$0, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L129
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	-56(%rbp), %eax
	movl	%eax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L145
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	jmp	.L147
.L145:
	movq	$0, -32(%rbp)
	jmp	.L147
.L151:
	movq	-32(%rbp), %rax
	movl	84(%rax), %eax
	cmpl	%eax, -56(%rbp)
	jne	.L148
	movq	-32(%rbp), %rax
	movl	80(%rax), %eax
	movl	%eax, %eax
	cmpq	%rax, -88(%rbp)
	jne	.L148
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L129
.L148:
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L149
	movq	-32(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	jmp	.L147
.L149:
	movq	$0, -32(%rbp)
.L147:
	cmpq	$0, -32(%rbp)
	jne	.L151
.L129:
	cmpq	$0, -32(%rbp)
	je	.L162
	movq	-32(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L153
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L153
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L154
.L153:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L155
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	addq	%rcx, %rdx
	movq	%rdx, 24(%rax)
.L155:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L156
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, 16(%rdx)
	jmp	.L157
.L156:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
.L157:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L158
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, 8(%rdx)
.L158:
	movq	-16(%rbp), %rax
	movl	52(%rax), %edx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -36(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	leal	-1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L159
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L159:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L160
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
.L160:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L161
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, 24(%rax)
.L161:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movl	16(%rax), %edx
	subl	$1, %edx
	movl	%edx, 16(%rax)
.L154:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L162:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	map_remove, .-map_remove
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
