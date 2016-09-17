	.file	"sum_odds.c"
	.text
.globl sum_odds
	.type	sum_odds, @function
sum_odds:
.LFB0:
	.cfi_startproc
	movl	$0, %eax
	testl	%esi, %esi
	jle	.L3
	subl	$1, %esi
	leaq	4(,%rsi,4), %r9
	movl	$0, %edx
.L5:
	movl	(%rdi,%rdx), %ecx
	movl	%ecx, %esi
	shrl	$31, %esi
	leal	(%rcx,%rsi), %r8d
	andl	$1, %r8d
	subl	%esi, %r8d
	leal	(%rax,%rcx), %ecx
	cmpl	$1, %r8d
	cmove	%ecx, %eax
	addq	$4, %rdx
	cmpq	%r9, %rdx
	jne	.L5
.L3:
	rep
	ret
	.cfi_endproc
.LFE0:
	.size	sum_odds, .-sum_odds
	.ident	"GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-16)"
	.section	.note.GNU-stack,"",@progbits
