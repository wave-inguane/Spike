	.file	"long_cubert.c"
	.text
.globl long_cubert
	.type	long_cubert, @function
long_cubert:
.LFB18:
	.cfi_startproc
	movl	$0, %edx
	movl	$0, %eax
	testq	%rdi, %rdi
	jns	.L8
	jmp	.L3
.L9:
	movq	%rax, %rdx
.L8:
	leaq	1(%rdx), %rax
.L5:
	movq	%rax, %rcx
	imulq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%rdi, %rcx
	jle	.L9
	movq	%rdx, %rax
.L3:
	rep
	ret
	.cfi_endproc
.LFE18:
	.size	long_cubert, .-long_cubert
	.ident	"GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-16)"
	.section	.note.GNU-stack,"",@progbits
