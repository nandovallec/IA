	.file	"GameState.cpp"
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.text
	.align 2
	.globl	_ZN9GameStateC2Ev
	.type	_ZN9GameStateC2Ev, @function
_ZN9GameStateC2Ev:
.LFB780:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$2, (%rax)
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movb	$0, 11(%rdx,%rax)
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	11(%rdx,%rax), %ecx
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movb	%cl, 4(%rdx,%rax)
	addl	$1, -4(%rbp)
.L2:
	cmpl	$6, -4(%rbp)
	jle	.L3
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE780:
	.size	_ZN9GameStateC2Ev, .-_ZN9GameStateC2Ev
	.globl	_ZN9GameStateC1Ev
	.set	_ZN9GameStateC1Ev,_ZN9GameStateC2Ev
	.align 2
	.globl	_ZN9GameStateC2ERKS_
	.type	_ZN9GameStateC2ERKS_, @function
_ZN9GameStateC2ERKS_:
.LFB783:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9GameStateaSERKS_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE783:
	.size	_ZN9GameStateC2ERKS_, .-_ZN9GameStateC2ERKS_
	.globl	_ZN9GameStateC1ERKS_
	.set	_ZN9GameStateC1ERKS_,_ZN9GameStateC2ERKS_
	.align 2
	.globl	_ZN9GameStateaSERKS_
	.type	_ZN9GameStateaSERKS_, @function
_ZN9GameStateaSERKS_:
.LFB785:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L6
	movq	-8(%rbp), %rax
	jmp	.L7
.L6:
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movl	$7, %eax
	movq	-16(%rbp), %rdx
	leaq	4(%rdx), %rsi
	movq	-8(%rbp), %rdx
	leaq	4(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy
	movl	$7, %eax
	movq	-16(%rbp), %rdx
	leaq	11(%rdx), %rsi
	movq	-8(%rbp), %rdx
	leaq	11(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy
	movq	-8(%rbp), %rax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE785:
	.size	_ZN9GameStateaSERKS_, .-_ZN9GameStateaSERKS_
	.align 2
	.globl	_ZNK9GameState12isFinalStateEv
	.type	_ZNK9GameState12isFinalStateEv, @function
_ZNK9GameState12isFinalStateEv:
.LFB786:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9GameState12isValidStateEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L9
	movl	$0, %eax
	jmp	.L10
.L9:
	movl	$1, -4(%rbp)
	jmp	.L11
.L14:
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	4(%rdx,%rax), %eax
	testb	%al, %al
	jne	.L12
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	11(%rdx,%rax), %eax
	testb	%al, %al
	je	.L13
.L12:
	movl	$0, %eax
	jmp	.L10
.L13:
	addl	$1, -4(%rbp)
.L11:
	cmpl	$6, -4(%rbp)
	jle	.L14
	movl	$1, %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE786:
	.size	_ZNK9GameState12isFinalStateEv, .-_ZNK9GameState12isFinalStateEv
	.align 2
	.globl	_ZNK9GameState12isValidStateEv
	.type	_ZNK9GameState12isValidStateEv, @function
_ZNK9GameState12isValidStateEv:
.LFB787:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -12(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L16
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
	movl	$0, -8(%rbp)
	jmp	.L18
.L21:
	movl	$0, -4(%rbp)
	jmp	.L19
.L20:
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	movzbl	4(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -12(%rbp)
	addl	$1, -4(%rbp)
.L19:
	cmpl	$6, -4(%rbp)
	jle	.L20
	addl	$1, -8(%rbp)
.L18:
	cmpl	$1, -8(%rbp)
	jle	.L21
	cmpl	$48, -12(%rbp)
	je	.L22
	movl	$0, %eax
	jmp	.L17
.L22:
	movl	$1, %eax
.L17:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE787:
	.size	_ZNK9GameState12isValidStateEv, .-_ZNK9GameState12isValidStateEv
	.align 2
	.globl	_ZNK9GameState9getWinnerEv
	.type	_ZNK9GameState9getWinnerEv, @function
_ZNK9GameState9getWinnerEv:
.LFB788:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9GameState12isValidStateEv
	xorl	$1, %eax
	testb	%al, %al
	jne	.L24
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9GameState12isFinalStateEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L25
.L24:
	movl	$1, %eax
	jmp	.L26
.L25:
	movl	$0, %eax
.L26:
	testb	%al, %al
	je	.L27
	movl	$2, %eax
	jmp	.L28
.L27:
	movq	-8(%rbp), %rax
	movzbl	4(%rax), %edx
	movq	-8(%rbp), %rax
	movzbl	11(%rax), %eax
	cmpb	%al, %dl
	jbe	.L29
	movl	$0, %eax
	jmp	.L28
.L29:
	movq	-8(%rbp), %rax
	movzbl	4(%rax), %edx
	movq	-8(%rbp), %rax
	movzbl	11(%rax), %eax
	cmpb	%al, %dl
	jnb	.L30
	movl	$1, %eax
	jmp	.L28
.L30:
	movl	$2, %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE788:
	.size	_ZNK9GameState9getWinnerEv, .-_ZNK9GameState9getWinnerEv
	.align 2
	.globl	_ZNK9GameState8getScoreE6Player
	.type	_ZNK9GameState8getScoreE6Player, @function
_ZNK9GameState8getScoreE6Player:
.LFB789:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	je	.L33
	cmpl	$1, %eax
	je	.L34
	jmp	.L36
.L33:
	movq	-8(%rbp), %rax
	movzbl	4(%rax), %eax
	movzbl	%al, %eax
	jmp	.L35
.L34:
	movq	-8(%rbp), %rax
	movzbl	11(%rax), %eax
	movzbl	%al, %eax
	jmp	.L35
.L36:
	movl	$0, %eax
.L35:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE789:
	.size	_ZNK9GameState8getScoreE6Player, .-_ZNK9GameState8getScoreE6Player
	.align 2
	.globl	_ZNK9GameState16getCurrentPlayerEv
	.type	_ZNK9GameState16getCurrentPlayerEv, @function
_ZNK9GameState16getCurrentPlayerEv:
.LFB790:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE790:
	.size	_ZNK9GameState16getCurrentPlayerEv, .-_ZNK9GameState16getCurrentPlayerEv
	.align 2
	.globl	_ZNK9GameState10getSeedsAtE6Player8Position
	.type	_ZNK9GameState10getSeedsAtE6Player8Position, @function
_ZNK9GameState10getSeedsAtE6Player8Position:
.LFB791:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	js	.L40
	movl	-12(%rbp), %eax
	cmpl	$1, %eax
	jg	.L40
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	js	.L40
	movl	-16(%rbp), %eax
	cmpl	$6, %eax
	jle	.L41
.L40:
	movl	$0, %eax
	jmp	.L42
.L41:
	movl	-12(%rbp), %eax
	movl	-16(%rbp), %edx
	movq	-8(%rbp), %rcx
	movslq	%edx, %rsi
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	movzbl	4(%rax), %eax
.L42:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE791:
	.size	_ZNK9GameState10getSeedsAtE6Player8Position, .-_ZNK9GameState10getSeedsAtE6Player8Position
	.align 2
	.globl	_ZN9GameState15setBadMoveStateE6Player
	.type	_ZN9GameState15setBadMoveStateE6Player, @function
_ZN9GameState15setBadMoveStateE6Player:
.LFB792:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L44
	cmpl	$1, -28(%rbp)
	je	.L44
	jmp	.L43
.L44:
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L46
	movl	$1, -8(%rbp)
	jmp	.L47
.L46:
	movl	$0, -8(%rbp)
.L47:
	movl	$6, %eax
	movq	-24(%rbp), %rdx
	addq	$4, %rdx
	leaq	1(%rdx), %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset
	movl	$6, %eax
	movq	-24(%rbp), %rdx
	addq	$11, %rdx
	leaq	1(%rdx), %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset
	movl	-8(%rbp), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rcx, %rax
	movb	$48, 4(%rax)
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rcx, %rax
	movb	$0, 4(%rax)
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE792:
	.size	_ZN9GameState15setBadMoveStateE6Player, .-_ZN9GameState15setBadMoveStateE6Player
	.align 2
	.globl	_ZNK9GameState12simulateMoveE4Move
	.type	_ZNK9GameState12simulateMoveE4Move, @function
_ZNK9GameState12simulateMoveE4Move:
.LFB793:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9GameStateC1ERKS_
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9GameState12isValidStateEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L49
	movq	-56(%rbp), %rax
	movl	$2, (%rax)
	movl	$0, -32(%rbp)
	jmp	.L50
.L51:
	movq	-56(%rbp), %rdx
	movl	-32(%rbp), %eax
	cltq
	movb	$0, 11(%rdx,%rax)
	movq	-56(%rbp), %rdx
	movl	-32(%rbp), %eax
	cltq
	movzbl	11(%rdx,%rax), %ecx
	movq	-56(%rbp), %rdx
	movl	-32(%rbp), %eax
	cltq
	movb	%cl, 4(%rdx,%rax)
	addl	$1, -32(%rbp)
.L50:
	cmpl	$6, -32(%rbp)
	jle	.L51
	jmp	.L48
.L49:
	movb	$0, -35(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-68(%rbp), %eax
	testl	%eax, %eax
	jle	.L53
	movl	-68(%rbp), %eax
	cmpl	$6, %eax
	jg	.L53
	movl	-4(%rbp), %eax
	movl	-68(%rbp), %edx
	movq	-56(%rbp), %rcx
	movslq	%edx, %rsi
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	movzbl	4(%rax), %eax
	testb	%al, %al
	jne	.L54
.L53:
	movl	-4(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN9GameState15setBadMoveStateE6Player
	jmp	.L55
.L54:
	movl	-4(%rbp), %eax
	movl	-68(%rbp), %edx
	movq	-56(%rbp), %rcx
	movslq	%edx, %rsi
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	movzbl	4(%rax), %eax
	movb	%al, -34(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-4(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	-28(%rbp), %edx
	movslq	%edx, %rsi
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	movb	$0, 4(%rax)
	subl	$1, -28(%rbp)
	jmp	.L56
.L65:
	jmp	.L57
.L59:
	movl	-4(%rbp), %edx
	movq	-56(%rbp), %rsi
	movl	-28(%rbp), %eax
	movslq	%eax, %rdi
	movslq	%edx, %rcx
	movq	%rcx, %rax
	salq	$3, %rax
	subq	%rcx, %rax
	addq	%rdi, %rax
	addq	%rsi, %rax
	movzbl	4(%rax), %eax
	leal	1(%rax), %ecx
	movq	-56(%rbp), %rsi
	movl	-28(%rbp), %eax
	movslq	%eax, %rdi
	movslq	%edx, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rdi, %rax
	addq	%rsi, %rax
	movb	%cl, 4(%rax)
	movzbl	-34(%rbp), %eax
	subl	$1, %eax
	movb	%al, -34(%rbp)
	cmpb	$0, -34(%rbp)
	je	.L57
	subl	$1, -28(%rbp)
.L57:
	cmpl	$0, -28(%rbp)
	js	.L58
	cmpb	$0, -34(%rbp)
	jne	.L59
.L58:
	cmpl	$0, -28(%rbp)
	jne	.L60
	cmpb	$0, -34(%rbp)
	jne	.L60
	movb	$1, -35(%rbp)
.L60:
	cmpl	$0, -28(%rbp)
	jle	.L61
	movl	-4(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	-28(%rbp), %edx
	movslq	%edx, %rsi
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	movzbl	4(%rax), %eax
	cmpb	$1, %al
	jne	.L61
	movl	-4(%rbp), %eax
	movl	$1, %edx
	subl	%eax, %edx
	movl	$7, %eax
	subl	-28(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	%eax, %rsi
	movslq	%edx, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	movzbl	4(%rax), %eax
	testb	%al, %al
	je	.L61
	movl	-4(%rbp), %edi
	movl	-4(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rcx, %rax
	movzbl	4(%rax), %ecx
	movl	-4(%rbp), %eax
	movl	$1, %edx
	subl	%eax, %edx
	movl	$7, %eax
	subl	-28(%rbp), %eax
	movq	-56(%rbp), %rsi
	movslq	%eax, %r8
	movslq	%edx, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%r8, %rax
	addq	%rsi, %rax
	movzbl	4(%rax), %eax
	addl	%ecx, %eax
	leal	1(%rax), %ecx
	movq	-56(%rbp), %rsi
	movslq	%edi, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rsi, %rax
	movb	%cl, 4(%rax)
	movl	-4(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	-28(%rbp), %edx
	movslq	%edx, %rsi
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	movb	$0, 4(%rax)
	movl	-4(%rbp), %eax
	movl	$1, %edx
	subl	%eax, %edx
	movl	$7, %eax
	subl	-28(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	%eax, %rsi
	movslq	%edx, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	movb	$0, 4(%rax)
.L61:
	cmpb	$0, -34(%rbp)
	je	.L56
	movl	$6, -28(%rbp)
	jmp	.L62
.L64:
	movl	-4(%rbp), %eax
	movl	$1, %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movq	-56(%rbp), %rsi
	movl	-28(%rbp), %eax
	movslq	%eax, %rdi
	movslq	%ecx, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rdi, %rax
	addq	%rsi, %rax
	movzbl	4(%rax), %eax
	leal	1(%rax), %esi
	movq	-56(%rbp), %rdi
	movl	-28(%rbp), %eax
	movslq	%eax, %r8
	movslq	%ecx, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%r8, %rax
	addq	%rdi, %rax
	movb	%sil, 4(%rax)
	movzbl	-34(%rbp), %eax
	subl	$1, %eax
	movb	%al, -34(%rbp)
	subl	$1, -28(%rbp)
.L62:
	cmpl	$0, -28(%rbp)
	jle	.L63
	cmpb	$0, -34(%rbp)
	jne	.L64
.L63:
	movl	$6, -28(%rbp)
.L56:
	cmpb	$0, -34(%rbp)
	jne	.L65
.L55:
	movb	$0, -33(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L66
.L72:
	movb	$1, -33(%rbp)
	movl	$1, -20(%rbp)
	jmp	.L67
.L70:
	movq	-56(%rbp), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rsi
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	movzbl	4(%rax), %eax
	testb	%al, %al
	je	.L68
	movb	$0, -33(%rbp)
.L68:
	addl	$1, -20(%rbp)
.L67:
	cmpl	$6, -20(%rbp)
	jg	.L69
	cmpb	$0, -33(%rbp)
	jne	.L70
.L69:
	addl	$1, -24(%rbp)
.L66:
	cmpl	$1, -24(%rbp)
	jg	.L71
	movzbl	-33(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L72
.L71:
	cmpb	$0, -33(%rbp)
	je	.L73
	movl	$0, -16(%rbp)
	jmp	.L74
.L77:
	movl	$0, -12(%rbp)
	movl	$1, -8(%rbp)
	jmp	.L75
.L76:
	movq	-56(%rbp), %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rsi
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	movzbl	4(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -12(%rbp)
	movq	-56(%rbp), %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rsi
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	movb	$0, 4(%rax)
	addl	$1, -8(%rbp)
.L75:
	cmpl	$6, -8(%rbp)
	jle	.L76
	movq	-56(%rbp), %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rcx, %rax
	movzbl	4(%rax), %edx
	movl	-12(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movq	-56(%rbp), %rsi
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rsi, %rax
	movb	%cl, 4(%rax)
	addl	$1, -16(%rbp)
.L74:
	cmpl	$1, -16(%rbp)
	jle	.L77
.L73:
	movzbl	-35(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L78
	cmpl	$0, -4(%rbp)
	jne	.L79
	movq	-56(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L78
.L79:
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
.L78:
	nop
.L48:
	movq	-56(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE793:
	.size	_ZNK9GameState12simulateMoveE4Move, .-_ZNK9GameState12simulateMoveE4Move
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
