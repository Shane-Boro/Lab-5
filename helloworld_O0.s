.file	"helloworld.c"
	.text
	.globl	a
	.data
	.align 4
a:
	.long	1
	.globl	c
c:
	.byte	97
	.globl	f
	.align 4
f:
	.long	1067316150
	.globl	string
	.align 16
string:
	.ascii "the bear ate the grub\0"
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
	call	_main
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movl	a(%rip), %eax
	movl	%eax, a(%rip)
	addl	$1, -4(%rbp)
.L2:
	cmpl	$9, -4(%rbp)
	jle	.L3
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 12.4.0"
    