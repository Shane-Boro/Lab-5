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
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	.seh_endprologue
	xorl	%eax, %eax
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 12.4.0"
	