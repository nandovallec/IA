	.file	"FaskuBot.cpp"
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZN3BotD2Ev,"axG",@progbits,_ZN3BotD5Ev,comdat
	.align 2
	.weak	_ZN3BotD2Ev
	.type	_ZN3BotD2Ev, @function
_ZN3BotD2Ev:
.LFB1238:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$_ZTV3Bot+16, (%rax)
	movl	$0, %eax
	testl	%eax, %eax
	je	.L1
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
.L1:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1238:
	.size	_ZN3BotD2Ev, .-_ZN3BotD2Ev
	.weak	_ZN3BotD1Ev
	.set	_ZN3BotD1Ev,_ZN3BotD2Ev
	.section	.text._ZN3BotD0Ev,"axG",@progbits,_ZN3BotD0Ev,comdat
	.align 2
	.weak	_ZN3BotD0Ev
	.type	_ZN3BotD0Ev, @function
_ZN3BotD0Ev:
.LFB1240:
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
	call	_ZN3BotD1Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1240:
	.size	_ZN3BotD0Ev, .-_ZN3BotD0Ev
	.globl	sig
	.data
	.align 4
	.type	sig, @object
	.size	sig, 4
sig:
	.long	7
	.globl	maximo
	.bss
	.align 8
	.type	maximo, @object
	.size	maximo, 8
maximo:
	.zero	8
	.globl	poda
	.align 4
	.type	poda, @object
	.size	poda, 4
poda:
	.zero	4
	.globl	m
	.align 4
	.type	m, @object
	.size	m, 4
m:
	.zero	4
	.globl	yo
	.align 4
	.type	yo, @object
	.size	yo, 4
yo:
	.zero	4
	.globl	a
	.align 4
	.type	a, @object
	.size	a, 4
a:
	.zero	4
	.globl	b
	.align 4
	.type	b, @object
	.size	b, 4
b:
	.zero	4
	.text
	.align 2
	.globl	_ZN8FaskuBotC2Ev
	.type	_ZN8FaskuBotC2Ev, @function
_ZN8FaskuBotC2Ev:
.LFB1242:
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
	call	_ZN3BotC2Ev
	movq	-8(%rbp), %rax
	movq	$_ZTV8FaskuBot+16, (%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1242:
	.size	_ZN8FaskuBotC2Ev, .-_ZN8FaskuBotC2Ev
	.globl	_ZN8FaskuBotC1Ev
	.set	_ZN8FaskuBotC1Ev,_ZN8FaskuBotC2Ev
	.align 2
	.globl	_ZN8FaskuBotD2Ev
	.type	_ZN8FaskuBotD2Ev, @function
_ZN8FaskuBotD2Ev:
.LFB1245:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$_ZTV8FaskuBot+16, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN3BotD2Ev
	movl	$0, %eax
	testl	%eax, %eax
	je	.L7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1245:
	.size	_ZN8FaskuBotD2Ev, .-_ZN8FaskuBotD2Ev
	.globl	_ZN8FaskuBotD1Ev
	.set	_ZN8FaskuBotD1Ev,_ZN8FaskuBotD2Ev
	.align 2
	.globl	_ZN8FaskuBotD0Ev
	.type	_ZN8FaskuBotD0Ev, @function
_ZN8FaskuBotD0Ev:
.LFB1247:
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
	call	_ZN8FaskuBotD1Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1247:
	.size	_ZN8FaskuBotD0Ev, .-_ZN8FaskuBotD0Ev
	.align 2
	.globl	_ZN8FaskuBot10initializeEv
	.type	_ZN8FaskuBot10initializeEv, @function
_ZN8FaskuBot10initializeEv:
.LFB1248:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1248:
	.size	_ZN8FaskuBot10initializeEv, .-_ZN8FaskuBot10initializeEv
	.section	.rodata
.LC0:
	.string	"FaskuBot"
	.text
	.align 2
	.globl	_ZN8FaskuBot7getNameEv
	.type	_ZN8FaskuBot7getNameEv, @function
_ZN8FaskuBot7getNameEv:
.LFB1249:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1249
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-17(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-17(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$.LC0, %esi
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE0:
	leaq	-17(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	jmp	.L17
.L16:
	movq	%rax, %rbx
	leaq	-17(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB1:
	call	_Unwind_Resume
.LEHE1:
.L17:
	movq	-40(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1249:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1249:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1249-.LLSDACSB1249
.LLSDACSB1249:
	.uleb128 .LEHB0-.LFB1249
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L16-.LFB1249
	.uleb128 0
	.uleb128 .LEHB1-.LFB1249
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE1249:
	.text
	.size	_ZN8FaskuBot7getNameEv, .-_ZN8FaskuBot7getNameEv
	.section	.text._ZN8FaskuBot7minimaxERK9GameStateibii,"axG",@progbits,_ZN8FaskuBot7minimaxERK9GameStateibii,comdat
	.align 2
	.weak	_ZN8FaskuBot7minimaxERK9GameStateibii
	.type	_ZN8FaskuBot7minimaxERK9GameStateibii, @function
_ZN8FaskuBot7minimaxERK9GameStateibii:
.LFB1250:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movl	%ecx, %eax
	movl	%r8d, -92(%rbp)
	movl	%r9d, -96(%rbp)
	movb	%al, -88(%rbp)
	movl	m(%rip), %eax
	addl	$1, %eax
	movl	%eax, m(%rip)
	cmpl	$13, -84(%rbp)
	je	.L19
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9GameState12isFinalStateEv
	testb	%al, %al
	je	.L20
.L19:
	movl	$1, %eax
	jmp	.L21
.L20:
	movl	$0, %eax
.L21:
	testb	%al, %al
	je	.L22
	movl	yo(%rip), %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZNK9GameState8getScoreE6Player
	jmp	.L23
.L22:
	cmpb	$0, -88(%rbp)
	je	.L24
	movl	$-1000, -64(%rbp)
	movl	$1, -56(%rbp)
	jmp	.L25
.L31:
	movl	-56(%rbp), %ebx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9GameState16getCurrentPlayerEv
	movl	%eax, %ecx
	movq	-80(%rbp), %rax
	movl	%ebx, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZNK9GameState10getSeedsAtE6Player8Position
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L26
	movl	-56(%rbp), %edx
	leaq	-48(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNK9GameState12simulateMoveE4Move
	movl	-96(%rbp), %r12d
	movl	-92(%rbp), %ebx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9GameState16getCurrentPlayerEv
	movl	%eax, %edx
	movl	yo(%rip), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %edx
	movl	-84(%rbp), %eax
	leal	1(%rax), %edi
	leaq	-48(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	%r12d, %r9d
	movl	%ebx, %r8d
	movl	%edx, %ecx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	_ZN8FaskuBot7minimaxERK9GameStateibii
	movl	%eax, -60(%rbp)
	cmpl	$0, -84(%rbp)
	jne	.L27
	movl	-64(%rbp), %eax
	movl	%eax, b(%rip)
.L27:
	leaq	-60(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3maxIiERKT_S2_S2_
	movl	(%rax), %eax
	movl	%eax, -64(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-92(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3maxIiERKT_S2_S2_
	movl	(%rax), %eax
	movl	%eax, -92(%rbp)
	cmpl	$0, -84(%rbp)
	jne	.L28
	movl	b(%rip), %edx
	movl	-64(%rbp), %eax
	cmpl	%eax, %edx
	je	.L28
	movl	-56(%rbp), %eax
	movl	%eax, sig(%rip)
.L28:
.L26:
	movl	-96(%rbp), %edx
	movl	-92(%rbp), %eax
	cmpl	%eax, %edx
	jg	.L29
	movl	poda(%rip), %eax
	addl	$1, %eax
	movl	%eax, poda(%rip)
	jmp	.L30
.L29:
	addl	$1, -56(%rbp)
.L25:
	cmpl	$6, -56(%rbp)
	jle	.L31
.L30:
	movl	-64(%rbp), %eax
	jmp	.L23
.L24:
	movl	$1000, -64(%rbp)
	movl	$1, -52(%rbp)
	jmp	.L32
.L36:
	movl	-52(%rbp), %ebx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9GameState16getCurrentPlayerEv
	movl	%eax, %ecx
	movq	-80(%rbp), %rax
	movl	%ebx, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZNK9GameState10getSeedsAtE6Player8Position
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L33
	movl	-52(%rbp), %edx
	leaq	-48(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNK9GameState12simulateMoveE4Move
	movl	-96(%rbp), %r12d
	movl	-92(%rbp), %ebx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9GameState16getCurrentPlayerEv
	movl	%eax, %edx
	movl	yo(%rip), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %edx
	movl	-84(%rbp), %eax
	leal	1(%rax), %edi
	leaq	-48(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	%r12d, %r9d
	movl	%ebx, %r8d
	movl	%edx, %ecx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	_ZN8FaskuBot7minimaxERK9GameStateibii
	movl	%eax, -60(%rbp)
	leaq	-60(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3minIiERKT_S2_S2_
	movl	(%rax), %eax
	movl	%eax, -64(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3minIiERKT_S2_S2_
	movl	(%rax), %eax
	movl	%eax, -96(%rbp)
.L33:
	movl	-96(%rbp), %edx
	movl	-92(%rbp), %eax
	cmpl	%eax, %edx
	jg	.L34
	movl	poda(%rip), %eax
	addl	$1, %eax
	movl	%eax, poda(%rip)
	jmp	.L35
.L34:
	addl	$1, -52(%rbp)
.L32:
	cmpl	$6, -52(%rbp)
	jle	.L36
.L35:
	movl	-64(%rbp), %eax
.L23:
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1250:
	.size	_ZN8FaskuBot7minimaxERK9GameStateibii, .-_ZN8FaskuBot7minimaxERK9GameStateibii
	.section	.rodata
.LC2:
	.string	"He tomado "
.LC3:
	.string	" y termino con "
.LC4:
	.string	" maximo es "
.LC5:
	.string	" poda es "
.LC6:
	.string	" exploro "
	.text
	.align 2
	.globl	_ZN8FaskuBot8nextMoveERKSt6vectorI4MoveSaIS1_EERK9GameState
	.type	_ZN8FaskuBot8nextMoveERKSt6vectorI4MoveSaIS1_EERK9GameState, @function
_ZN8FaskuBot8nextMoveERKSt6vectorI4MoveSaIS1_EERK9GameState:
.LFB1251:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN3Bot9getPlayerEv
	movl	%eax, -84(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN3Bot10getTimeOutEv
	movq	%rax, -56(%rbp)
	movl	$7, -80(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9GameState16getCurrentPlayerEv
	movl	%eax, yo(%rip)
	movl	$-100, -76(%rbp)
	movl	$100, -72(%rbp)
	movl	$0, b(%rip)
	movl	-72(%rbp), %ecx
	movl	-76(%rbp), %edx
	movq	-120(%rbp), %rsi
	movq	-104(%rbp), %rax
	movl	%ecx, %r9d
	movl	%edx, %r8d
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	_ZN8FaskuBot7minimaxERK9GameStateibii
	movl	%eax, -68(%rbp)
	call	clock
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0
	subsd	-40(%rbp), %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$maximo, %edi
	call	_ZSt3maxIdERKT_S2_S2_
	movq	(%rax), %rax
	movq	%rax, maximo(%rip)
	movl	m(%rip), %r13d
	movl	poda(%rip), %r14d
	movq	maximo(%rip), %rbx
	movq	-64(%rbp), %r12
	movl	$.LC2, %esi
	movl	$_ZSt4cerr, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r12, -128(%rbp)
	movsd	-128(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	-68(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZNSolsEi
	movl	$.LC4, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rbx, -128(%rbp)
	movsd	-128(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd
	movl	$.LC5, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%r14d, %esi
	movq	%rax, %rdi
	call	_ZNSolsEi
	movl	$.LC6, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%r13d, %esi
	movq	%rax, %rdi
	call	_ZNSolsEi
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	sig(%rip), %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1251:
	.size	_ZN8FaskuBot8nextMoveERKSt6vectorI4MoveSaIS1_EERK9GameState, .-_ZN8FaskuBot8nextMoveERKSt6vectorI4MoveSaIS1_EERK9GameState
	.section	.text._ZSt3maxIiERKT_S2_S2_,"axG",@progbits,_ZSt3maxIiERKT_S2_S2_,comdat
	.weak	_ZSt3maxIiERKT_S2_S2_
	.type	_ZSt3maxIiERKT_S2_S2_, @function
_ZSt3maxIiERKT_S2_S2_:
.LFB1265:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jge	.L40
	movq	-16(%rbp), %rax
	jmp	.L41
.L40:
	movq	-8(%rbp), %rax
.L41:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1265:
	.size	_ZSt3maxIiERKT_S2_S2_, .-_ZSt3maxIiERKT_S2_S2_
	.section	.text._ZSt3minIiERKT_S2_S2_,"axG",@progbits,_ZSt3minIiERKT_S2_S2_,comdat
	.weak	_ZSt3minIiERKT_S2_S2_
	.type	_ZSt3minIiERKT_S2_S2_, @function
_ZSt3minIiERKT_S2_S2_:
.LFB1266:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jge	.L43
	movq	-16(%rbp), %rax
	jmp	.L44
.L43:
	movq	-8(%rbp), %rax
.L44:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1266:
	.size	_ZSt3minIiERKT_S2_S2_, .-_ZSt3minIiERKT_S2_S2_
	.section	.text._ZSt3maxIdERKT_S2_S2_,"axG",@progbits,_ZSt3maxIdERKT_S2_S2_,comdat
	.weak	_ZSt3maxIdERKT_S2_S2_
	.type	_ZSt3maxIdERKT_S2_S2_, @function
_ZSt3maxIdERKT_S2_S2_:
.LFB1267:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.L50
	movq	-16(%rbp), %rax
	jmp	.L48
.L50:
	movq	-8(%rbp), %rax
.L48:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1267:
	.size	_ZSt3maxIdERKT_S2_S2_, .-_ZSt3maxIdERKT_S2_S2_
	.weak	_ZTV8FaskuBot
	.section	.rodata._ZTV8FaskuBot,"aG",@progbits,_ZTV8FaskuBot,comdat
	.align 32
	.type	_ZTV8FaskuBot, @object
	.size	_ZTV8FaskuBot, 56
_ZTV8FaskuBot:
	.quad	0
	.quad	_ZTI8FaskuBot
	.quad	_ZN8FaskuBotD1Ev
	.quad	_ZN8FaskuBotD0Ev
	.quad	_ZN8FaskuBot10initializeEv
	.quad	_ZN8FaskuBot7getNameEv
	.quad	_ZN8FaskuBot8nextMoveERKSt6vectorI4MoveSaIS1_EERK9GameState
	.weak	_ZTV3Bot
	.section	.rodata._ZTV3Bot,"aG",@progbits,_ZTV3Bot,comdat
	.align 32
	.type	_ZTV3Bot, @object
	.size	_ZTV3Bot, 56
_ZTV3Bot:
	.quad	0
	.quad	_ZTI3Bot
	.quad	_ZN3BotD1Ev
	.quad	_ZN3BotD0Ev
	.quad	__cxa_pure_virtual
	.quad	__cxa_pure_virtual
	.quad	__cxa_pure_virtual
	.weak	_ZTI8FaskuBot
	.section	.rodata._ZTI8FaskuBot,"aG",@progbits,_ZTI8FaskuBot,comdat
	.align 32
	.type	_ZTI8FaskuBot, @object
	.size	_ZTI8FaskuBot, 40
_ZTI8FaskuBot:
	.quad	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.quad	_ZTS8FaskuBot
	.long	0
	.long	1
	.quad	_ZTI3Bot
	.quad	0
	.weak	_ZTS8FaskuBot
	.section	.rodata._ZTS8FaskuBot,"aG",@progbits,_ZTS8FaskuBot,comdat
	.type	_ZTS8FaskuBot, @object
	.size	_ZTS8FaskuBot, 10
_ZTS8FaskuBot:
	.string	"8FaskuBot"
	.weak	_ZTS3Bot
	.section	.rodata._ZTS3Bot,"aG",@progbits,_ZTS3Bot,comdat
	.type	_ZTS3Bot, @object
	.size	_ZTS3Bot, 5
_ZTS3Bot:
	.string	"3Bot"
	.weak	_ZTI3Bot
	.section	.rodata._ZTI3Bot,"aG",@progbits,_ZTI3Bot,comdat
	.align 16
	.type	_ZTI3Bot, @object
	.size	_ZTI3Bot, 16
_ZTI3Bot:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS3Bot
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB1297:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L51
	cmpl	$65535, -8(%rbp)
	jne	.L51
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1297:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_sig, @function
_GLOBAL__sub_I_sig:
.LFB1298:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1298:
	.size	_GLOBAL__sub_I_sig, .-_GLOBAL__sub_I_sig
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_sig
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1093567616
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
