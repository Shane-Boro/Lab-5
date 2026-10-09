.file	"while_loop.c"
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "\nThe value of i is %d\0"
.LC1:
	.ascii "\nEOJ\n\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	call	__main
	movl	$1, -4(%rbp)
	jmp	.L2
.L3:
	addl	$1, -4(%rbp)
.L2:
	cmpl	$10, -4(%rbp)
	jle	.L3
	movl	-4(%rbp), %edx
	leaq	.LC0(%rip), %rcx
	call	printf
	leaq	.LC1(%rip), %rcx
	call	printf
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 12.4.0"
    