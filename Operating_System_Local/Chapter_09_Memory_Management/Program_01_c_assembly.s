	.file	"Program_01.c"
	.text
	.globl	mainMem
	.bss
	.align 32
	.type	mainMem, @object
	.size	mainMem, 256
mainMem:
	.zero	256
	.data
	.align 32
	.type	memArrSize, @object
	.size	memArrSize, 32
memArrSize:
	.quad	60
	.quad	80
	.quad	50
	.quad	66
	.globl	memArr
	.bss
	.align 32
	.type	memArr, @object
	.size	memArr, 160
memArr:
	.zero	160
	.globl	qu
	.align 32
	.type	qu, @object
	.size	qu, 64
qu:
	.zero	64
	.globl	front
	.data
	.align 4
	.type	front, @object
	.size	front, 4
front:
	.long	-1
	.globl	rear
	.align 4
	.type	rear, @object
	.size	rear, 4
rear:
	.long	-1
	.globl	procMap
	.bss
	.align 8
	.type	procMap, @object
	.size	procMap, 8
procMap:
	.zero	8
	.text
	.globl	isEmpty
	.type	isEmpty, @function
isEmpty:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	front(%rip), %eax
	cmpl	$-1, %eax
	jne	.L2
	movl	rear(%rip), %eax
	cmpl	$-1, %eax
	jne	.L2
	movl	$1, %eax
	jmp	.L3
.L2:
	movl	$0, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	isEmpty, .-isEmpty
	.globl	isFull
	.type	isFull, @function
isFull:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	rear(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$31, %eax
	addl	%eax, %edx
	andl	$1, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	leal	0(,%rax,4), %edx
	movl	front(%rip), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	isFull, .-isFull
	.section	.rodata
	.align 8
.LC0:
	.string	"Can't insert process %s into waiting queue since waiting queue is full!\n"
	.text
	.globl	enqueue
	.type	enqueue, @function
enqueue:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	isFull
	testw	%ax, %ax
	je	.L8
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L7
.L8:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$1, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movl	front(%rip), %eax
	cmpl	$-1, %eax
	jne	.L10
	movl	rear(%rip), %eax
	cmpl	$-1, %eax
	jne	.L10
	movl	$0, rear(%rip)
	movl	rear(%rip), %eax
	movl	%eax, front(%rip)
	jmp	.L11
.L10:
	movl	rear(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$31, %eax
	addl	%eax, %edx
	andl	$1, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	movl	%eax, rear(%rip)
.L11:
	movl	rear(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	qu(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rcx,%rdx)
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	enqueue, .-enqueue
	.section	.rodata
	.align 8
.LC1:
	.string	"Can't get process from waiting queue since waiting queue is empty!"
	.text
	.globl	dequeue
	.type	dequeue, @function
dequeue:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	isEmpty
	testw	%ax, %ax
	je	.L13
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L14
.L13:
	movl	front(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	qu(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -8(%rbp)
	movl	front(%rip), %edx
	movl	rear(%rip), %eax
	cmpl	%eax, %edx
	jne	.L15
	movl	front(%rip), %eax
	cmpl	$-1, %eax
	je	.L15
	movl	$-1, rear(%rip)
	movl	rear(%rip), %eax
	movl	%eax, front(%rip)
	jmp	.L16
.L15:
	movl	front(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$31, %eax
	addl	%eax, %edx
	andl	$1, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	movl	%eax, front(%rip)
.L16:
	movq	-8(%rbp), %rax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	dequeue, .-dequeue
	.section	.rodata
.LC2:
	.string	"rb"
.LC3:
	.string	"Error opening file"
	.text
	.globl	getSize
	.type	getSize, @function
getSize:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L18
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	perror@PLT
	movl	$1, %edi
	call	exit@PLT
.L18:
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	fseek@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ftell@PLT
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	rewind@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	getSize, .-getSize
	.section	.rodata
	.align 8
.LC4:
	.string	"Process %s loaded into memory [%lu-%lu]\n"
	.text
	.globl	loadIntoMemory
	.type	loadIntoMemory, @function
loadIntoMemory:
.LFB11:
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
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L21
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	perror@PLT
	movl	$1, %edi
	call	exit@PLT
.L21:
	leaq	mainMem(%rip), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$1, %esi
	call	fread@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leaq	-1(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	loadIntoMemory, .-loadIntoMemory
	.globl	nextID
	.data
	.align 4
	.type	nextID, @object
	.size	nextID, 4
nextID:
	.long	1
	.text
	.globl	allocateID
	.type	allocateID, @function
allocateID:
.LFB12:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	nextID(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, nextID(%rip)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	allocateID, .-allocateID
	.globl	initiateMemBlocks
	.type	initiateMemBlocks, @function
initiateMemBlocks:
.LFB13:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L25
.L26:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	leaq	memArr(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rcx,%rdx)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	memArrSize(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	-1(%rax), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+memArr(%rip), %rax
	movq	%rcx, (%rdx,%rax)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	memArrSize(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+memArr(%rip), %rax
	movq	%rcx, (%rdx,%rax)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	24+memArr(%rip), %rax
	movw	$1, (%rdx,%rax)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	32+memArr(%rip), %rax
	movq	$0, (%rdx,%rax)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	memArrSize(%rip), %rax
	movq	(%rdx,%rax), %rax
	addq	%rax, -8(%rbp)
	addl	$1, -12(%rbp)
.L25:
	cmpl	$3, -12(%rbp)
	jle	.L26
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	initiateMemBlocks, .-initiateMemBlocks
	.globl	existsInMap
	.type	existsInMap, @function
existsInMap:
.LFB14:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leaq	1(%rax), %rdi
	movq	procMap(%rip), %rax
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	map_get@PLT
	testl	%eax, %eax
	je	.L28
	movl	$1, %eax
	jmp	.L30
.L28:
	movl	$0, %eax
.L30:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L31
	call	__stack_chk_fail@PLT
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	existsInMap, .-existsInMap
	.globl	createProcess
	.type	createProcess, @function
createProcess:
.LFB15:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, %eax
	movw	%ax, -60(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	getSize
	movq	%rax, -32(%rbp)
	movw	$0, -38(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L33
.L36:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	24+memArr(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	testw	%ax, %ax
	je	.L34
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+memArr(%rip), %rax
	movq	(%rdx,%rax), %rax
	cmpq	-32(%rbp), %rax
	jb	.L34
	movl	$144, %edi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
	call	allocateID
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movw	$0, 8(%rax)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	memArr(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	memArr(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	addq	%rdx, %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	leaq	32+memArr(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rcx,%rdx)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	24+memArr(%rip), %rax
	movw	$0, (%rdx,%rax)
	movw	$1, -38(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	loadIntoMemory
	movq	-24(%rbp), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	$8, %r8d
	movq	%rbx, %rcx
	movq	%rax, %rsi
	leaq	procMap(%rip), %rax
	movq	%rax, %rdi
	call	map_put@PLT
	jmp	.L35
.L34:
	addl	$1, -36(%rbp)
.L33:
	cmpl	$3, -36(%rbp)
	jle	.L36
.L35:
	cmpw	$0, -38(%rbp)
	jne	.L37
	cmpw	$0, -60(%rbp)
	jne	.L37
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	existsInMap
	testl	%eax, %eax
	jne	.L37
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	enqueue
.L37:
	movzwl	-38(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	createProcess, .-createProcess
	.section	.rodata
.LC5:
	.string	"Terminating Process %zu...\n"
.LC6:
	.string	"Partition %d is now free\n"
	.text
	.globl	terminateProcess
	.type	terminateProcess, @function
terminateProcess:
.LFB16:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	32+memArr(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	procMap(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	map_remove@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	32+memArr(%rip), %rax
	movq	$0, (%rdx,%rax)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	24+memArr(%rip), %rax
	movw	$1, (%rdx,%rax)
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	terminateProcess, .-terminateProcess
	.globl	checkWaitingQueue
	.type	checkWaitingQueue, @function
checkWaitingQueue:
.LFB17:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	call	isEmpty
	testw	%ax, %ax
	jne	.L41
	movl	front(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	qu(%rip), %rax
	movq	(%rdx,%rax), %rax
	jmp	.L42
.L41:
	movl	$0, %eax
.L42:
	movq	%rax, -40(%rbp)
	call	isEmpty
	testw	%ax, %ax
	jne	.L48
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+memArr(%rip), %rax
	movq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	getSize
	cmpq	%rax, %rbx
	jb	.L48
	movl	$144, %edi
	call	malloc@PLT
	movq	%rax, -32(%rbp)
	call	allocateID
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movw	$0, 8(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	getSize
	movq	-32(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	memArr(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	memArr(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	addq	%rdx, %rax
	leaq	-1(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-32(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	leaq	32+memArr(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rcx,%rdx)
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	24+memArr(%rip), %rax
	movw	$0, (%rdx,%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	loadIntoMemory
	movq	-32(%rbp), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	$8, %r8d
	movq	%rbx, %rcx
	movq	%rax, %rsi
	leaq	procMap(%rip), %rax
	movq	%rax, %rdi
	call	map_put@PLT
	call	dequeue
	movw	$1, -42(%rbp)
	jmp	.L44
.L47:
	movl	front(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	qu(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	createProcess
	testw	%ax, %ax
	je	.L45
	call	dequeue
	jmp	.L44
.L45:
	movw	$0, -42(%rbp)
.L44:
	call	isEmpty
	testw	%ax, %ax
	jne	.L48
	cmpw	$0, -42(%rbp)
	jne	.L47
.L48:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	checkWaitingQueue, .-checkWaitingQueue
	.section	.rodata
.LC7:
	.string	"\nExecuting Process %zu...\n"
.LC8:
	.string	"Memory Range: [%lu-%lu]\n"
.LC9:
	.string	"Output:"
.LC10:
	.string	"\nExecution Completed."
	.text
	.globl	executeProcess
	.type	executeProcess, @function
executeProcess:
.LFB18:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L50
.L54:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	32+memArr(%rip), %rax
	movq	(%rdx,%rax), %rax
	testq	%rax, %rax
	je	.L51
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	32+memArr(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	(%rax), %rax
	cmpq	%rax, -40(%rbp)
	jne	.L51
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	32+memArr(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L52
.L53:
	leaq	mainMem(%rip), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar@PLT
	addq	$1, -16(%rbp)
.L52:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L53
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	terminateProcess
	movl	-20(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	checkWaitingQueue
.L51:
	addl	$1, -20(%rbp)
.L50:
	cmpl	$3, -20(%rbp)
	jle	.L54
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	executeProcess, .-executeProcess
	.section	.rodata
	.align 8
.LC11:
	.string	"Enter process file names (type 'exit' to stop):"
.LC12:
	.string	">> "
.LC13:
	.string	"\n"
.LC14:
	.string	"exit"
	.align 8
.LC15:
	.string	"Process %s successfully loaded into memory\n"
	.align 8
.LC16:
	.string	"Process %s added to waiting queue\n"
.LC17:
	.string	"Process %s not found!\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB19:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	map_create@PLT
	movq	%rax, procMap(%rip)
	call	initiateMemBlocks
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L60:
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	stdin(%rip), %rdx
	leaq	-112(%rbp), %rax
	movl	$100, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	leaq	-112(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcspn@PLT
	movb	$0, -112(%rbp,%rax)
	leaq	-112(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L56
	jmp	.L57
.L56:
	leaq	-112(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	createProcess
	testw	%ax, %ax
	je	.L58
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L60
.L58:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	existsInMap
	testl	%eax, %eax
	jne	.L60
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L60
.L57:
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	stdin(%rip), %rdx
	leaq	-112(%rbp), %rax
	movl	$100, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	leaq	-112(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcspn@PLT
	movb	$0, -112(%rbp,%rax)
	leaq	-112(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L61
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L65
	jmp	.L66
.L61:
	movq	$0, -128(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leaq	1(%rax), %rdi
	movq	procMap(%rip), %rax
	leaq	-128(%rbp), %rdx
	leaq	-112(%rbp), %rsi
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	map_get@PLT
	testl	%eax, %eax
	je	.L63
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	executeProcess
	jmp	.L57
.L63:
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L57
.L66:
	call	__stack_chk_fail@PLT
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	main, .-main
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
