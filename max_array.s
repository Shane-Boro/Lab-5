.file	"max_array.s"
	.data
	.align 4
Numbers:
	.long 1
	.long 15
	.long 4
	.long 2
	.long 7
	.long 9
	.long 23
	.long 7
	.long 3
	.long 11

Array_length:
	.long 10

max_val:
	.long 0

	.text
	.globl main
	.def main; .scl 2; .type 32; .endef
	.seh_proc main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue

	# Initialize loop counter i = 0
	movl	$0, -4(%rbp)

	# Set max_val = Numbers[0]
	movl	Numbers(%rip), %eax

	# Load array length into register %edx
	movl	Array_length(%rip), %edx

	# Jump directly to condition evaluation (while loop)
	jmp	.L_check_loop

.L_loop_body:
	# Compute element address: Numbers + (i * 4)
	movl	-4(%rbp), %ecx            # Load index 'i' into %ecx
	leaq	Numbers(%rip), %rbx       # Load base address of Numbers
	movl	(%rbx,%rcx,4), %r8d       # Load Numbers[i] into %r8d

	# Compare Numbers[i] (%r8d) with current max (%eax)
	cmpl	%eax, %r8d
	jle	.L_skip_update            # If Numbers[i] <= max, skip update

	# Update max = Numbers[i]
	movl	%r8d, %eax

.L_skip_update:
	# i++
	addl	$1, -4(%rbp)

.L_check_loop:
	# While condition: (i < Array_length)
	movl	-4(%rbp), %ecx
	cmpl	%edx, %ecx
	jl	.L_loop_body              # If i < 10, run loop body

	# Store final maximum value into max_val memory label
	movl	%eax, max_val(%rip)

	# Clean return
	movl	$0, %eax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
    