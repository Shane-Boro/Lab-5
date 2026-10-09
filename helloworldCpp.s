.file	"helloWorldCpp.cpp"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	call	__main
	leaq	.LC0(%rip), %rdx
	leaq	-32(%rbp), %rcx
	call	_ZN8GreetingC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	leaq	-32(%rbp), %rcx
	call	_ZN8Greeting5greetEv
	movl	$0, %eax
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc

	.section	.text$_ZN8GreetingC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"x"
	.linkonce discard
	.globl	_ZN8GreetingC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
_ZN8GreetingC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret

	.section	.text$_ZN8Greeting5greetEv,"x"
	.linkonce discard
	.globl	_ZN8Greeting5greetEv
_ZN8Greeting5greetEv:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	call	_ZNSolsEPFRSoS_E
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
    