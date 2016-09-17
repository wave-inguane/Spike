	.file	"harshad.c"
	.text
.globl harshad
	.type	harshad, @function
harshad:
.LFB0:
	.cfi_startproc
	movl	$0, %esi
	testl	%edi, %edi
	jle	.L3
	movl	%edi, %ecx
	movl	$1717986919, %r8d
.L4:
	movl	%ecx, %eax
	imull	%r8d
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	leal	(%rdx,%rdx,4), %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	addl	%ecx, %esi
	testl	%edx, %edx
	jle	.L3
	movl	%edx, %ecx
	jmp	.L4
.L3:
	movl	%edi, %edx
	movl	%edi, %eax
	sarl	$31, %edx
	idivl	%esi
	testl	%edx, %edx
	sete	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	harshad, .-harshad
	.ident	"GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-16)"
	.section	.note.GNU-stack,"",@progbits
