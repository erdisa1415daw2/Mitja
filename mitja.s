	.file	"mitja.c"
	.section	.rodata
.LC1:
	.string	"D\303\262na la seg\303\274ent dada: "
.LC2:
	.string	"%f"
.LC3:
	.string	"Vols continuar (s/n): "
.LC4:
	.string	" %s"
.LC5:
	.string	"La mitja \303\251s: %.2f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	.LC0(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	$0, -8(%rbp)
	movb	$115, -17(%rbp)
	jmp	.L2
.L3:
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movss	-16(%rbp), %xmm0
	movss	-12(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	addl	$1, -8(%rbp)
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	leaq	-17(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	__isoc99_scanf
.L2:
	movzbl	-17(%rbp), %eax
	cmpb	$115, %al
	je	.L3
	cvtsi2ss	-8(%rbp), %xmm0
	movss	-12(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	movl	$.LC5, %edi
	movl	$1, %eax
	call	printf
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	0
	.ident	"GCC: (Ubuntu 4.8.2-19ubuntu1) 4.8.2"
	.section	.note.GNU-stack,"",@progbits
