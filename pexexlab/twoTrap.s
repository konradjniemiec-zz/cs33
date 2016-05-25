	.file	"testovf.c"
	.globl	__addvsi3
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	testovf
	.type	testovf, @function
testovf:
.LFB0:
	.cfi_startproc
	movl	big, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	pushl	$1
	.cfi_def_cfa_offset 16
	leal	1(%eax), %edx
	pushl	%eax
	.cfi_def_cfa_offset 20
	addl	$16, %esp
	.cfi_def_cfa_offset 4
	cmpl	%edx, %eax
	setg	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	testovf, .-testovf
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.globl	big
	.data
	.align 4
	.type	big, @object
	.size	big, 4
big:
	.long	2147483647
	.ident	"GCC: (GNU) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
