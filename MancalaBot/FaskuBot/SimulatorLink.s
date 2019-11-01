	.file	"SimulatorLink.cpp"
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB331:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE331:
	.size	_ZnwmPv, .-_ZnwmPv
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.text
	.globl	_Z6strsepPPcS_
	.type	_Z6strsepPPcS_, @function
_Z6strsepPPcS_:
.LFB1558:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L4
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L4
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L5
.L4:
	movl	$0, %eax
	jmp	.L6
.L5:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcspn
	movq	-8(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L7
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$0, (%rax)
.L7:
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1558:
	.size	_Z6strsepPPcS_, .-_Z6strsepPPcS_
	.align 2
	.globl	_ZN13SimulatorLinkC2Ev
	.type	_ZN13SimulatorLinkC2Ev, @function
_ZN13SimulatorLinkC2Ev:
.LFB1560:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN9GameStateC1Ev
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1560:
	.size	_ZN13SimulatorLinkC2Ev, .-_ZN13SimulatorLinkC2Ev
	.globl	_ZN13SimulatorLinkC1Ev
	.set	_ZN13SimulatorLinkC1Ev,_ZN13SimulatorLinkC2Ev
	.section	.rodata
.LC0:
	.string	" "
	.text
	.align 2
	.globl	_ZN13SimulatorLink18setStateFromStringERKSs
	.type	_ZN13SimulatorLink18setStateFromStringERKSs, @function
_ZN13SimulatorLink18setStateFromStringERKSs:
.LFB1562:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movl	$0, -112(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9GameStateC1Ev
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSs5c_strEv
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	addq	$1, %rax
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.L10
.L17:
	cmpl	$0, -112(%rbp)
	jne	.L11
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -80(%rbp)
	cmpl	$1, -80(%rbp)
	jne	.L12
	movl	$0, -32(%rbp)
	jmp	.L13
.L12:
	cmpl	$2, -80(%rbp)
	jne	.L14
	movl	$1, -32(%rbp)
	jmp	.L13
.L14:
	cmpq	$0, -48(%rbp)
	je	.L15
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L15:
	movl	$0, %eax
	jmp	.L34
.L13:
	addl	$1, -112(%rbp)
	jmp	.L10
.L11:
	movl	-112(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	$-1840700269, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -76(%rbp)
	movl	-112(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	$-1840700269, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, %ecx
	movl	-72(%rbp), %eax
	movslq	%eax, %rsi
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rbp, %rax
	addq	%rsi, %rax
	subq	$32, %rax
	movb	%cl, 4(%rax)
	addl	$1, -112(%rbp)
.L10:
	leaq	-64(%rbp), %rax
	movl	$.LC0, %esi
	movq	%rax, %rdi
	call	strsep
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	setne	%al
	testb	%al, %al
	jne	.L17
	cmpq	$0, -48(%rbp)
	je	.L18
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L18:
	cmpl	$15, -112(%rbp)
	je	.L19
	movl	$0, %eax
	jmp	.L34
.L19:
	movl	$0, -108(%rbp)
	movl	$0, -104(%rbp)
	jmp	.L20
.L23:
	movl	$0, -100(%rbp)
	jmp	.L21
.L22:
	movl	-100(%rbp), %eax
	movslq	%eax, %rcx
	movl	-104(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rbp, %rax
	addq	%rcx, %rax
	subq	$32, %rax
	movzbl	4(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -108(%rbp)
	addl	$1, -100(%rbp)
.L21:
	cmpl	$6, -100(%rbp)
	jle	.L22
	addl	$1, -104(%rbp)
.L20:
	cmpl	$1, -104(%rbp)
	jle	.L23
	cmpl	$48, -108(%rbp)
	je	.L24
	movl	$0, %eax
	jmp	.L34
.L24:
	movl	$0, -96(%rbp)
	jmp	.L25
.L33:
	movl	-96(%rbp), %eax
	movl	%eax, -68(%rbp)
	movb	$1, -113(%rbp)
	movl	$1, -92(%rbp)
	jmp	.L26
.L29:
	movl	-68(%rbp), %eax
	movl	-92(%rbp), %edx
	movslq	%edx, %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rbp, %rax
	addq	%rcx, %rax
	subq	$32, %rax
	movzbl	4(%rax), %eax
	testb	%al, %al
	je	.L27
	movb	$0, -113(%rbp)
.L27:
	addl	$1, -92(%rbp)
.L26:
	cmpl	$6, -92(%rbp)
	jg	.L28
	cmpb	$0, -113(%rbp)
	jne	.L29
.L28:
	cmpb	$0, -113(%rbp)
	je	.L30
	movl	$0, -88(%rbp)
	movl	$1, -84(%rbp)
	jmp	.L31
.L32:
	movl	-68(%rbp), %eax
	movl	$1, %edx
	subl	%eax, %edx
	movl	-84(%rbp), %eax
	movslq	%eax, %rcx
	movslq	%edx, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rbp, %rax
	addq	%rcx, %rax
	subq	$32, %rax
	movzbl	4(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -88(%rbp)
	movl	-68(%rbp), %eax
	movl	$1, %edx
	subl	%eax, %edx
	movl	-84(%rbp), %eax
	movslq	%eax, %rcx
	movslq	%edx, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rbp, %rax
	addq	%rcx, %rax
	subq	$32, %rax
	movb	$0, 4(%rax)
	addl	$1, -84(%rbp)
.L31:
	cmpl	$6, -84(%rbp)
	jle	.L32
	movl	-68(%rbp), %eax
	movl	$1, %edx
	movl	%edx, %esi
	subl	%eax, %esi
	movl	-68(%rbp), %eax
	movl	$1, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rbp, %rax
	subq	$32, %rax
	movzbl	4(%rax), %edx
	movl	-88(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movslq	%esi, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rbp, %rax
	subq	$32, %rax
	movb	%cl, 4(%rax)
.L30:
	addl	$1, -96(%rbp)
.L25:
	cmpl	$1, -96(%rbp)
	jle	.L33
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN9GameStateaSERKS_
	movl	$1, %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1562:
	.size	_ZN13SimulatorLink18setStateFromStringERKSs, .-_ZN13SimulatorLink18setStateFromStringERKSs
	.section	.rodata
.LC1:
	.string	"END"
.LC2:
	.string	"OK"
.LC3:
	.string	"GETNAME"
.LC4:
	.string	"BADNAME"
.LC5:
	.string	"PING"
.LC6:
	.string	"PONG"
.LC7:
	.string	"SETPLAYER"
.LC8:
	.string	"GETMOVE"
.LC9:
	.string	"%d"
.LC10:
	.string	"TIMEOUT"
	.text
	.align 2
	.globl	_ZN13SimulatorLink3runEv
	.type	_ZN13SimulatorLink3runEv, @function
_ZN13SimulatorLink3runEv:
.LFB1563:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1563
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$248, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -248(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movb	$1, -225(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSsC1Ev
.LEHE0:
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
.LEHB1:
	call	_ZNSsC1Ev
.LEHE1:
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L36
	movl	$0, %ebx
	jmp	.L37
.L36:
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	-248(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, %rdi
.LEHB2:
	call	*%rax
	jmp	.L38
.L57:
	leaq	-192(%rbp), %rax
	movq	%rax, %rsi
	movl	$_ZSt3cin, %edi
	call	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E
	leaq	-192(%rbp), %rax
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	testb	%al, %al
	je	.L39
	movb	$0, -225(%rbp)
	leaq	-176(%rbp), %rax
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	_ZNSsaSEPKc
	jmp	.L40
.L39:
	leaq	-192(%rbp), %rax
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	testb	%al, %al
	je	.L41
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	-248(%rbp), %rdx
	movq	(%rdx), %rcx
	leaq	-160(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
.LEHE2:
	leaq	-160(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB3:
	call	_ZNSsaSEOSs
.LEHE3:
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L40
.L41:
	leaq	-192(%rbp), %rax
	movl	$.LC4, %esi
	movq	%rax, %rdi
.LEHB4:
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	testb	%al, %al
	je	.L42
	movl	$.LC2, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$0, %ebx
	jmp	.L37
.L42:
	leaq	-192(%rbp), %rax
	movl	$.LC5, %esi
	movq	%rax, %rdi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	testb	%al, %al
	je	.L43
	leaq	-176(%rbp), %rax
	movl	$.LC6, %esi
	movq	%rax, %rdi
	call	_ZNSsaSEPKc
	jmp	.L40
.L43:
	leaq	-192(%rbp), %rax
	movl	$.LC7, %esi
	movq	%rax, %rdi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	testb	%al, %al
	je	.L44
	leaq	-160(%rbp), %rax
	movq	%rax, %rsi
	movl	$_ZSt3cin, %edi
	call	_ZNSirsERi
	movl	-160(%rbp), %eax
	testl	%eax, %eax
	jne	.L45
	movl	$0, -212(%rbp)
	jmp	.L46
.L45:
	movl	-160(%rbp), %eax
	cmpl	$1, %eax
	jne	.L47
	movl	$1, -212(%rbp)
	jmp	.L46
.L47:
	movl	$0, %ebx
	jmp	.L37
.L46:
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movl	-212(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN3Bot9setPlayerE6Player
	leaq	-176(%rbp), %rax
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	_ZNSsaSEPKc
	jmp	.L40
.L44:
	leaq	-192(%rbp), %rax
	movl	$.LC8, %esi
	movq	%rax, %rdi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	testb	%al, %al
	je	.L48
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI4MoveSaIS0_EEC1Ev
.LEHE4:
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	movl	$_ZSt3cin, %edi
.LEHB5:
	call	_ZNSirsERi
	movl	$0, -208(%rbp)
	jmp	.L49
.L50:
	leaq	-220(%rbp), %rax
	movq	%rax, %rsi
	movl	$_ZSt3cin, %edi
	call	_ZNSirsERi
	movl	-220(%rbp), %eax
	movl	%eax, -216(%rbp)
	leaq	-216(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorI4MoveSaIS0_EE9push_backEOS0_
	addl	$1, -208(%rbp)
.L49:
	movl	-224(%rbp), %eax
	cmpl	%eax, -208(%rbp)
	jl	.L50
	leaq	-216(%rbp), %rax
	movq	%rax, %rsi
	movl	$_ZSt3cin, %edi
	call	_ZNSirsERi
	movl	-216(%rbp), %eax
	testl	%eax, %eax
	jne	.L51
	movq	-248(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L52
.L51:
	movq	-248(%rbp), %rax
	movl	$1, 8(%rax)
.L52:
	movl	$0, -204(%rbp)
	jmp	.L53
.L56:
	movl	$0, -200(%rbp)
	jmp	.L54
.L55:
	leaq	-220(%rbp), %rax
	movq	%rax, %rsi
	movl	$_ZSt3cin, %edi
	call	_ZNSirsERi
	movl	-220(%rbp), %eax
	movl	%eax, %ecx
	movq	-248(%rbp), %rsi
	movl	-200(%rbp), %eax
	movslq	%eax, %rdi
	movl	-204(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rdi, %rax
	addq	%rsi, %rax
	movb	%cl, 12(%rax)
	addl	$1, -200(%rbp)
.L54:
	cmpl	$6, -200(%rbp)
	jle	.L55
	addl	$1, -204(%rbp)
.L53:
	cmpl	$1, -204(%rbp)
	jle	.L56
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movq	-248(%rbp), %rdx
	leaq	8(%rdx), %rdi
	movq	-248(%rbp), %rdx
	movq	(%rdx), %rcx
	leaq	-160(%rbp), %rsi
	movq	%rdi, %rdx
	movq	%rcx, %rdi
	call	*%rax
	movl	%eax, -196(%rbp)
	movl	-196(%rbp), %edx
	leaq	-128(%rbp), %rax
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf
	leaq	-128(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSsaSEPKc
.LEHE5:
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI4MoveSaIS0_EED1Ev
	jmp	.L40
.L48:
	leaq	-192(%rbp), %rax
	movl	$.LC10, %esi
	movq	%rax, %rdi
.LEHB6:
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	testb	%al, %al
	je	.L40
	leaq	-160(%rbp), %rax
	movq	%rax, %rsi
	movl	$_ZSt3cin, %edi
	call	_ZNSirsERl
	movq	-160(%rbp), %rdx
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3Bot10setTimeOutEl
.L40:
	leaq	-176(%rbp), %rax
	movq	%rax, %rsi
	movl	$_ZSt4cout, %edi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
.LEHE6:
.L38:
	cmpb	$0, -225(%rbp)
	jne	.L57
	movl	$1, %ebx
.L37:
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movl	%ebx, %eax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L63
	jmp	.L68
.L66:
	movq	%rax, %rbx
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L60
.L67:
	movq	%rax, %rbx
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI4MoveSaIS0_EED1Ev
	jmp	.L60
.L65:
	movq	%rax, %rbx
.L60:
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L62
.L64:
	movq	%rax, %rbx
.L62:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB7:
	call	_Unwind_Resume
.LEHE7:
.L68:
	call	__stack_chk_fail
.L63:
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1563:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1563:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1563-.LLSDACSB1563
.LLSDACSB1563:
	.uleb128 .LEHB0-.LFB1563
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1563
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L64-.LFB1563
	.uleb128 0
	.uleb128 .LEHB2-.LFB1563
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L65-.LFB1563
	.uleb128 0
	.uleb128 .LEHB3-.LFB1563
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L66-.LFB1563
	.uleb128 0
	.uleb128 .LEHB4-.LFB1563
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L65-.LFB1563
	.uleb128 0
	.uleb128 .LEHB5-.LFB1563
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L67-.LFB1563
	.uleb128 0
	.uleb128 .LEHB6-.LFB1563
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L65-.LFB1563
	.uleb128 0
	.uleb128 .LEHB7-.LFB1563
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE1563:
	.text
	.size	_ZN13SimulatorLink3runEv, .-_ZN13SimulatorLink3runEv
	.align 2
	.globl	_ZN13SimulatorLink6setBotEP3Bot
	.type	_ZN13SimulatorLink6setBotEP3Bot, @function
_ZN13SimulatorLink6setBotEP3Bot:
.LFB1565:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1565:
	.size	_ZN13SimulatorLink6setBotEP3Bot, .-_ZN13SimulatorLink6setBotEP3Bot
	.section	.text._ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_,"axG",@progbits,_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_,comdat
	.weak	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	.type	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_, @function
_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_:
.LFB1624:
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
	call	_ZNKSs7compareEPKc
	testl	%eax, %eax
	sete	%al
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1624:
	.size	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_, .-_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	.section	.text._ZNSt6vectorI4MoveSaIS0_EEC2Ev,"axG",@progbits,_ZNSt6vectorI4MoveSaIS0_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorI4MoveSaIS0_EEC2Ev
	.type	_ZNSt6vectorI4MoveSaIS0_EEC2Ev, @function
_ZNSt6vectorI4MoveSaIS0_EEC2Ev:
.LFB1631:
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
	call	_ZNSt12_Vector_baseI4MoveSaIS0_EEC2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1631:
	.size	_ZNSt6vectorI4MoveSaIS0_EEC2Ev, .-_ZNSt6vectorI4MoveSaIS0_EEC2Ev
	.weak	_ZNSt6vectorI4MoveSaIS0_EEC1Ev
	.set	_ZNSt6vectorI4MoveSaIS0_EEC1Ev,_ZNSt6vectorI4MoveSaIS0_EEC2Ev
	.section	.text._ZNSt6vectorI4MoveSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI4MoveSaIS0_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorI4MoveSaIS0_EED2Ev
	.type	_ZNSt6vectorI4MoveSaIS0_EED2Ev, @function
_ZNSt6vectorI4MoveSaIS0_EED2Ev:
.LFB1634:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1634
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4MoveSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIP4MoveS0_EvT_S2_RSaIT0_E
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4MoveSaIS0_EED2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1634:
	.section	.gcc_except_table
.LLSDA1634:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1634-.LLSDACSB1634
.LLSDACSB1634:
.LLSDACSE1634:
	.section	.text._ZNSt6vectorI4MoveSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI4MoveSaIS0_EED5Ev,comdat
	.size	_ZNSt6vectorI4MoveSaIS0_EED2Ev, .-_ZNSt6vectorI4MoveSaIS0_EED2Ev
	.weak	_ZNSt6vectorI4MoveSaIS0_EED1Ev
	.set	_ZNSt6vectorI4MoveSaIS0_EED1Ev,_ZNSt6vectorI4MoveSaIS0_EED2Ev
	.section	.text._ZSt4moveIR4MoveEONSt16remove_referenceIT_E4typeEOS3_,"axG",@progbits,_ZSt4moveIR4MoveEONSt16remove_referenceIT_E4typeEOS3_,comdat
	.weak	_ZSt4moveIR4MoveEONSt16remove_referenceIT_E4typeEOS3_
	.type	_ZSt4moveIR4MoveEONSt16remove_referenceIT_E4typeEOS3_, @function
_ZSt4moveIR4MoveEONSt16remove_referenceIT_E4typeEOS3_:
.LFB1637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1637:
	.size	_ZSt4moveIR4MoveEONSt16remove_referenceIT_E4typeEOS3_, .-_ZSt4moveIR4MoveEONSt16remove_referenceIT_E4typeEOS3_
	.section	.text._ZNSt6vectorI4MoveSaIS0_EE9push_backEOS0_,"axG",@progbits,_ZNSt6vectorI4MoveSaIS0_EE9push_backEOS0_,comdat
	.align 2
	.weak	_ZNSt6vectorI4MoveSaIS0_EE9push_backEOS0_
	.type	_ZNSt6vectorI4MoveSaIS0_EE9push_backEOS0_, @function
_ZNSt6vectorI4MoveSaIS0_EE9push_backEOS0_:
.LFB1636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIR4MoveEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorI4MoveSaIS0_EE12emplace_backIIS0_EEEvDpOT_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1636:
	.size	_ZNSt6vectorI4MoveSaIS0_EE9push_backEOS0_, .-_ZNSt6vectorI4MoveSaIS0_EE9push_backEOS0_
	.section	.text._ZNSt12_Vector_baseI4MoveSaIS0_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseI4MoveSaIS0_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI4MoveSaIS0_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseI4MoveSaIS0_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseI4MoveSaIS0_EE12_Vector_implD2Ev:
.LFB1693:
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
	call	_ZNSaI4MoveED2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1693:
	.size	_ZNSt12_Vector_baseI4MoveSaIS0_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseI4MoveSaIS0_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseI4MoveSaIS0_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseI4MoveSaIS0_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseI4MoveSaIS0_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseI4MoveSaIS0_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI4MoveSaIS0_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI4MoveSaIS0_EEC2Ev
	.type	_ZNSt12_Vector_baseI4MoveSaIS0_EEC2Ev, @function
_ZNSt12_Vector_baseI4MoveSaIS0_EEC2Ev:
.LFB1695:
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
	call	_ZNSt12_Vector_baseI4MoveSaIS0_EE12_Vector_implC1Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1695:
	.size	_ZNSt12_Vector_baseI4MoveSaIS0_EEC2Ev, .-_ZNSt12_Vector_baseI4MoveSaIS0_EEC2Ev
	.weak	_ZNSt12_Vector_baseI4MoveSaIS0_EEC1Ev
	.set	_ZNSt12_Vector_baseI4MoveSaIS0_EEC1Ev,_ZNSt12_Vector_baseI4MoveSaIS0_EEC2Ev
	.section	.text._ZNSt12_Vector_baseI4MoveSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI4MoveSaIS0_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI4MoveSaIS0_EED2Ev
	.type	_ZNSt12_Vector_baseI4MoveSaIS0_EED2Ev, @function
_ZNSt12_Vector_baseI4MoveSaIS0_EED2Ev:
.LFB1698:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1698
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$2, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4MoveSaIS0_EE13_M_deallocateEPS0_m
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4MoveSaIS0_EE12_Vector_implD1Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1698:
	.section	.gcc_except_table
.LLSDA1698:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1698-.LLSDACSB1698
.LLSDACSB1698:
.LLSDACSE1698:
	.section	.text._ZNSt12_Vector_baseI4MoveSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI4MoveSaIS0_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseI4MoveSaIS0_EED2Ev, .-_ZNSt12_Vector_baseI4MoveSaIS0_EED2Ev
	.weak	_ZNSt12_Vector_baseI4MoveSaIS0_EED1Ev
	.set	_ZNSt12_Vector_baseI4MoveSaIS0_EED1Ev,_ZNSt12_Vector_baseI4MoveSaIS0_EED2Ev
	.section	.text._ZNSt12_Vector_baseI4MoveSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseI4MoveSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI4MoveSaIS0_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseI4MoveSaIS0_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseI4MoveSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB1700:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1700:
	.size	_ZNSt12_Vector_baseI4MoveSaIS0_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseI4MoveSaIS0_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIP4MoveS0_EvT_S2_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIP4MoveS0_EvT_S2_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIP4MoveS0_EvT_S2_RSaIT0_E
	.type	_ZSt8_DestroyIP4MoveS0_EvT_S2_RSaIT0_E, @function
_ZSt8_DestroyIP4MoveS0_EvT_S2_RSaIT0_E:
.LFB1701:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIP4MoveEvT_S2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1701:
	.size	_ZSt8_DestroyIP4MoveS0_EvT_S2_RSaIT0_E, .-_ZSt8_DestroyIP4MoveS0_EvT_S2_RSaIT0_E
	.section	.text._ZSt7forwardI4MoveEOT_RNSt16remove_referenceIS1_E4typeE,"axG",@progbits,_ZSt7forwardI4MoveEOT_RNSt16remove_referenceIS1_E4typeE,comdat
	.weak	_ZSt7forwardI4MoveEOT_RNSt16remove_referenceIS1_E4typeE
	.type	_ZSt7forwardI4MoveEOT_RNSt16remove_referenceIS1_E4typeE, @function
_ZSt7forwardI4MoveEOT_RNSt16remove_referenceIS1_E4typeE:
.LFB1703:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1703:
	.size	_ZSt7forwardI4MoveEOT_RNSt16remove_referenceIS1_E4typeE, .-_ZSt7forwardI4MoveEOT_RNSt16remove_referenceIS1_E4typeE
	.section	.text._ZNSt6vectorI4MoveSaIS0_EE12emplace_backIIS0_EEEvDpOT_,"axG",@progbits,_ZNSt6vectorI4MoveSaIS0_EE12emplace_backIIS0_EEEvDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorI4MoveSaIS0_EE12emplace_backIIS0_EEEvDpOT_
	.type	_ZNSt6vectorI4MoveSaIS0_EE12emplace_backIIS0_EEEvDpOT_, @function
_ZNSt6vectorI4MoveSaIS0_EE12emplace_backIIS0_EEEvDpOT_:
.LFB1702:
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
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L89
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI4MoveEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI4MoveEE9constructIS0_IS0_EEEDTcl12_S_constructfp_fp0_spcl7forwardIT0_Efp1_EEERS1_PT_DpOS4_
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	4(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L88
.L89:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI4MoveEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorI4MoveSaIS0_EE19_M_emplace_back_auxIIS0_EEEvDpOT_
.L88:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1702:
	.size	_ZNSt6vectorI4MoveSaIS0_EE12emplace_backIIS0_EEEvDpOT_, .-_ZNSt6vectorI4MoveSaIS0_EE12emplace_backIIS0_EEEvDpOT_
	.weak	_ZNSt6vectorI4MoveSaIS0_EE12emplace_backIJS0_EEEvDpOT_
	.set	_ZNSt6vectorI4MoveSaIS0_EE12emplace_backIJS0_EEEvDpOT_,_ZNSt6vectorI4MoveSaIS0_EE12emplace_backIIS0_EEEvDpOT_
	.section	.text._ZNSt12_Vector_baseI4MoveSaIS0_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI4MoveSaIS0_EE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI4MoveSaIS0_EE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseI4MoveSaIS0_EE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseI4MoveSaIS0_EE12_Vector_implC2Ev:
.LFB1734:
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
	call	_ZNSaI4MoveEC2Ev
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1734:
	.size	_ZNSt12_Vector_baseI4MoveSaIS0_EE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseI4MoveSaIS0_EE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseI4MoveSaIS0_EE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseI4MoveSaIS0_EE12_Vector_implC1Ev,_ZNSt12_Vector_baseI4MoveSaIS0_EE12_Vector_implC2Ev
	.section	.text._ZNSaI4MoveED2Ev,"axG",@progbits,_ZNSaI4MoveED5Ev,comdat
	.align 2
	.weak	_ZNSaI4MoveED2Ev
	.type	_ZNSaI4MoveED2Ev, @function
_ZNSaI4MoveED2Ev:
.LFB1737:
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
	call	_ZN9__gnu_cxx13new_allocatorI4MoveED2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1737:
	.size	_ZNSaI4MoveED2Ev, .-_ZNSaI4MoveED2Ev
	.weak	_ZNSaI4MoveED1Ev
	.set	_ZNSaI4MoveED1Ev,_ZNSaI4MoveED2Ev
	.section	.text._ZNSt12_Vector_baseI4MoveSaIS0_EE13_M_deallocateEPS0_m,"axG",@progbits,_ZNSt12_Vector_baseI4MoveSaIS0_EE13_M_deallocateEPS0_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI4MoveSaIS0_EE13_M_deallocateEPS0_m
	.type	_ZNSt12_Vector_baseI4MoveSaIS0_EE13_M_deallocateEPS0_m, @function
_ZNSt12_Vector_baseI4MoveSaIS0_EE13_M_deallocateEPS0_m:
.LFB1739:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L94
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI4MoveE10deallocateEPS1_m
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1739:
	.size	_ZNSt12_Vector_baseI4MoveSaIS0_EE13_M_deallocateEPS0_m, .-_ZNSt12_Vector_baseI4MoveSaIS0_EE13_M_deallocateEPS0_m
	.section	.text._ZSt8_DestroyIP4MoveEvT_S2_,"axG",@progbits,_ZSt8_DestroyIP4MoveEvT_S2_,comdat
	.weak	_ZSt8_DestroyIP4MoveEvT_S2_
	.type	_ZSt8_DestroyIP4MoveEvT_S2_, @function
_ZSt8_DestroyIP4MoveEvT_S2_:
.LFB1740:
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
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIP4MoveEEvT_S4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1740:
	.size	_ZSt8_DestroyIP4MoveEvT_S2_, .-_ZSt8_DestroyIP4MoveEvT_S2_
	.section	.text._ZNSt16allocator_traitsISaI4MoveEE9constructIS0_IS0_EEEDTcl12_S_constructfp_fp0_spcl7forwardIT0_Efp1_EEERS1_PT_DpOS4_,"axG",@progbits,_ZNSt16allocator_traitsISaI4MoveEE9constructIS0_IS0_EEEDTcl12_S_constructfp_fp0_spcl7forwardIT0_Efp1_EEERS1_PT_DpOS4_,comdat
	.weak	_ZNSt16allocator_traitsISaI4MoveEE9constructIS0_IS0_EEEDTcl12_S_constructfp_fp0_spcl7forwardIT0_Efp1_EEERS1_PT_DpOS4_
	.type	_ZNSt16allocator_traitsISaI4MoveEE9constructIS0_IS0_EEEDTcl12_S_constructfp_fp0_spcl7forwardIT0_Efp1_EEERS1_PT_DpOS4_, @function
_ZNSt16allocator_traitsISaI4MoveEE9constructIS0_IS0_EEEDTcl12_S_constructfp_fp0_spcl7forwardIT0_Efp1_EEERS1_PT_DpOS4_:
.LFB1741:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI4MoveEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI4MoveEE12_S_constructIS0_IS0_EEENSt9enable_ifIXsrNS2_18__construct_helperIT_IDpT0_EEE5valueEvE4typeERS1_PS6_DpOS7_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1741:
	.size	_ZNSt16allocator_traitsISaI4MoveEE9constructIS0_IS0_EEEDTcl12_S_constructfp_fp0_spcl7forwardIT0_Efp1_EEERS1_PT_DpOS4_, .-_ZNSt16allocator_traitsISaI4MoveEE9constructIS0_IS0_EEEDTcl12_S_constructfp_fp0_spcl7forwardIT0_Efp1_EEERS1_PT_DpOS4_
	.weak	_ZNSt16allocator_traitsISaI4MoveEE9constructIS0_JS0_EEEDTcl12_S_constructfp_fp0_spcl7forwardIT0_Efp1_EEERS1_PT_DpOS4_
	.set	_ZNSt16allocator_traitsISaI4MoveEE9constructIS0_JS0_EEEDTcl12_S_constructfp_fp0_spcl7forwardIT0_Efp1_EEERS1_PT_DpOS4_,_ZNSt16allocator_traitsISaI4MoveEE9constructIS0_IS0_EEEDTcl12_S_constructfp_fp0_spcl7forwardIT0_Efp1_EEERS1_PT_DpOS4_
	.section	.rodata
.LC11:
	.string	"vector::_M_emplace_back_aux"
	.section	.text._ZNSt6vectorI4MoveSaIS0_EE19_M_emplace_back_auxIIS0_EEEvDpOT_,"axG",@progbits,_ZNSt6vectorI4MoveSaIS0_EE19_M_emplace_back_auxIIS0_EEEvDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorI4MoveSaIS0_EE19_M_emplace_back_auxIIS0_EEEvDpOT_
	.type	_ZNSt6vectorI4MoveSaIS0_EE19_M_emplace_back_auxIIS0_EEEvDpOT_, @function
_ZNSt6vectorI4MoveSaIS0_EE19_M_emplace_back_auxIIS0_EEEvDpOT_:
.LFB1742:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1742
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movl	$.LC11, %edx
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB8:
	call	_ZNKSt6vectorI4MoveSaIS0_EE12_M_check_lenEmPKc
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4MoveSaIS0_EE11_M_allocateEm
.LEHE8:
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI4MoveEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4MoveSaIS0_EE4sizeEv
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB9:
	call	_ZNSt16allocator_traitsISaI4MoveEE9constructIS0_IS0_EEEDTcl12_S_constructfp_fp0_spcl7forwardIT0_Efp1_EEERS1_PT_DpOS4_
	movq	$0, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4MoveSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	call	_ZSt34__uninitialized_move_if_noexcept_aIP4MoveS1_SaIS0_EET0_T_S4_S3_RT1_
.LEHE9:
	movq	%rax, -40(%rbp)
	addq	$4, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4MoveSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB10:
	call	_ZSt8_DestroyIP4MoveS0_EvT_S2_RSaIT0_E
.LEHE10:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$2, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4MoveSaIS0_EE13_M_deallocateEPS0_m
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L105
.L104:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB11:
	call	_Unwind_Resume
.LEHE11:
.L103:
	movq	%rax, %rdi
	call	__cxa_begin_catch
	cmpq	$0, -40(%rbp)
	jne	.L101
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4MoveSaIS0_EE4sizeEv
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB12:
	call	_ZNSt16allocator_traitsISaI4MoveEE7destroyIS0_EEvRS1_PT_
	jmp	.L102
.L101:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4MoveSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIP4MoveS0_EvT_S2_RSaIT0_E
.L102:
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4MoveSaIS0_EE13_M_deallocateEPS0_m
	call	__cxa_rethrow
.LEHE12:
.L105:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1742:
	.section	.gcc_except_table
	.align 4
.LLSDA1742:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT1742-.LLSDATTD1742
.LLSDATTD1742:
	.byte	0x1
	.uleb128 .LLSDACSE1742-.LLSDACSB1742
.LLSDACSB1742:
	.uleb128 .LEHB8-.LFB1742
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB1742
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L103-.LFB1742
	.uleb128 0x1
	.uleb128 .LEHB10-.LFB1742
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB1742
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB1742
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L104-.LFB1742
	.uleb128 0
.LLSDACSE1742:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT1742:
	.section	.text._ZNSt6vectorI4MoveSaIS0_EE19_M_emplace_back_auxIIS0_EEEvDpOT_,"axG",@progbits,_ZNSt6vectorI4MoveSaIS0_EE19_M_emplace_back_auxIIS0_EEEvDpOT_,comdat
	.size	_ZNSt6vectorI4MoveSaIS0_EE19_M_emplace_back_auxIIS0_EEEvDpOT_, .-_ZNSt6vectorI4MoveSaIS0_EE19_M_emplace_back_auxIIS0_EEEvDpOT_
	.weak	_ZNSt6vectorI4MoveSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_
	.set	_ZNSt6vectorI4MoveSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_,_ZNSt6vectorI4MoveSaIS0_EE19_M_emplace_back_auxIIS0_EEEvDpOT_
	.section	.text._ZNSaI4MoveEC2Ev,"axG",@progbits,_ZNSaI4MoveEC5Ev,comdat
	.align 2
	.weak	_ZNSaI4MoveEC2Ev
	.type	_ZNSaI4MoveEC2Ev, @function
_ZNSaI4MoveEC2Ev:
.LFB1746:
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
	call	_ZN9__gnu_cxx13new_allocatorI4MoveEC2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1746:
	.size	_ZNSaI4MoveEC2Ev, .-_ZNSaI4MoveEC2Ev
	.weak	_ZNSaI4MoveEC1Ev
	.set	_ZNSaI4MoveEC1Ev,_ZNSaI4MoveEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorI4MoveED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4MoveED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI4MoveED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorI4MoveED2Ev, @function
_ZN9__gnu_cxx13new_allocatorI4MoveED2Ev:
.LFB1749:
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
.LFE1749:
	.size	_ZN9__gnu_cxx13new_allocatorI4MoveED2Ev, .-_ZN9__gnu_cxx13new_allocatorI4MoveED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorI4MoveED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorI4MoveED1Ev,_ZN9__gnu_cxx13new_allocatorI4MoveED2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorI4MoveE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4MoveE10deallocateEPS1_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI4MoveE10deallocateEPS1_m
	.type	_ZN9__gnu_cxx13new_allocatorI4MoveE10deallocateEPS1_m, @function
_ZN9__gnu_cxx13new_allocatorI4MoveE10deallocateEPS1_m:
.LFB1751:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1751:
	.size	_ZN9__gnu_cxx13new_allocatorI4MoveE10deallocateEPS1_m, .-_ZN9__gnu_cxx13new_allocatorI4MoveE10deallocateEPS1_m
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIP4MoveEEvT_S4_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIP4MoveEEvT_S4_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIP4MoveEEvT_S4_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIP4MoveEEvT_S4_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIP4MoveEEvT_S4_:
.LFB1752:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1752:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIP4MoveEEvT_S4_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIP4MoveEEvT_S4_
	.section	.text._ZNSt16allocator_traitsISaI4MoveEE12_S_constructIS0_IS0_EEENSt9enable_ifIXsrNS2_18__construct_helperIT_IDpT0_EEE5valueEvE4typeERS1_PS6_DpOS7_,"axG",@progbits,_ZNSt16allocator_traitsISaI4MoveEE12_S_constructIS0_IS0_EEENSt9enable_ifIXsrNS2_18__construct_helperIT_IDpT0_EEE5valueEvE4typeERS1_PS6_DpOS7_,comdat
	.weak	_ZNSt16allocator_traitsISaI4MoveEE12_S_constructIS0_IS0_EEENSt9enable_ifIXsrNS2_18__construct_helperIT_IDpT0_EEE5valueEvE4typeERS1_PS6_DpOS7_
	.type	_ZNSt16allocator_traitsISaI4MoveEE12_S_constructIS0_IS0_EEENSt9enable_ifIXsrNS2_18__construct_helperIT_IDpT0_EEE5valueEvE4typeERS1_PS6_DpOS7_, @function
_ZNSt16allocator_traitsISaI4MoveEE12_S_constructIS0_IS0_EEENSt9enable_ifIXsrNS2_18__construct_helperIT_IDpT0_EEE5valueEvE4typeERS1_PS6_DpOS7_:
.LFB1753:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI4MoveEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI4MoveE9constructIS1_IS1_EEEvPT_DpOT0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1753:
	.size	_ZNSt16allocator_traitsISaI4MoveEE12_S_constructIS0_IS0_EEENSt9enable_ifIXsrNS2_18__construct_helperIT_IDpT0_EEE5valueEvE4typeERS1_PS6_DpOS7_, .-_ZNSt16allocator_traitsISaI4MoveEE12_S_constructIS0_IS0_EEENSt9enable_ifIXsrNS2_18__construct_helperIT_IDpT0_EEE5valueEvE4typeERS1_PS6_DpOS7_
	.weak	_ZNSt16allocator_traitsISaI4MoveEE12_S_constructIS0_JS0_EEENSt9enable_ifIXsrNS2_18__construct_helperIT_JDpT0_EEE5valueEvE4typeERS1_PS6_DpOS7_
	.set	_ZNSt16allocator_traitsISaI4MoveEE12_S_constructIS0_JS0_EEENSt9enable_ifIXsrNS2_18__construct_helperIT_JDpT0_EEE5valueEvE4typeERS1_PS6_DpOS7_,_ZNSt16allocator_traitsISaI4MoveEE12_S_constructIS0_IS0_EEENSt9enable_ifIXsrNS2_18__construct_helperIT_IDpT0_EEE5valueEvE4typeERS1_PS6_DpOS7_
	.section	.text._ZNKSt6vectorI4MoveSaIS0_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorI4MoveSaIS0_EE12_M_check_lenEmPKc,comdat
	.align 2
	.weak	_ZNKSt6vectorI4MoveSaIS0_EE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorI4MoveSaIS0_EE12_M_check_lenEmPKc, @function
_ZNKSt6vectorI4MoveSaIS0_EE12_M_check_lenEmPKc:
.LFB1754:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4MoveSaIS0_EE8max_sizeEv
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4MoveSaIS0_EE4sizeEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	-48(%rbp), %rax
	cmpq	%rax, %rdx
	setb	%al
	testb	%al, %al
	je	.L113
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc
.L113:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4MoveSaIS0_EE4sizeEv
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4MoveSaIS0_EE4sizeEv
	movq	%rax, -32(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3maxImERKT_S2_S2_
	movq	(%rax), %rax
	addq	%rbx, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4MoveSaIS0_EE4sizeEv
	cmpq	-24(%rbp), %rax
	ja	.L114
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4MoveSaIS0_EE8max_sizeEv
	cmpq	-24(%rbp), %rax
	jnb	.L115
.L114:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4MoveSaIS0_EE8max_sizeEv
	jmp	.L116
.L115:
	movq	-24(%rbp), %rax
.L116:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1754:
	.size	_ZNKSt6vectorI4MoveSaIS0_EE12_M_check_lenEmPKc, .-_ZNKSt6vectorI4MoveSaIS0_EE12_M_check_lenEmPKc
	.section	.text._ZNSt12_Vector_baseI4MoveSaIS0_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseI4MoveSaIS0_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI4MoveSaIS0_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseI4MoveSaIS0_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseI4MoveSaIS0_EE11_M_allocateEm:
.LFB1755:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L119
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI4MoveE8allocateEmPKv
	jmp	.L120
.L119:
	movl	$0, %eax
.L120:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1755:
	.size	_ZNSt12_Vector_baseI4MoveSaIS0_EE11_M_allocateEm, .-_ZNSt12_Vector_baseI4MoveSaIS0_EE11_M_allocateEm
	.section	.text._ZNKSt6vectorI4MoveSaIS0_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorI4MoveSaIS0_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorI4MoveSaIS0_EE4sizeEv
	.type	_ZNKSt6vectorI4MoveSaIS0_EE4sizeEv, @function
_ZNKSt6vectorI4MoveSaIS0_EE4sizeEv:
.LFB1756:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$2, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1756:
	.size	_ZNKSt6vectorI4MoveSaIS0_EE4sizeEv, .-_ZNKSt6vectorI4MoveSaIS0_EE4sizeEv
	.section	.text._ZSt34__uninitialized_move_if_noexcept_aIP4MoveS1_SaIS0_EET0_T_S4_S3_RT1_,"axG",@progbits,_ZSt34__uninitialized_move_if_noexcept_aIP4MoveS1_SaIS0_EET0_T_S4_S3_RT1_,comdat
	.weak	_ZSt34__uninitialized_move_if_noexcept_aIP4MoveS1_SaIS0_EET0_T_S4_S3_RT1_
	.type	_ZSt34__uninitialized_move_if_noexcept_aIP4MoveS1_SaIS0_EET0_T_S4_S3_RT1_, @function
_ZSt34__uninitialized_move_if_noexcept_aIP4MoveS1_SaIS0_EET0_T_S4_S3_RT1_:
.LFB1757:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt32__make_move_if_noexcept_iteratorIP4MoveSt13move_iteratorIS1_EET0_T_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt32__make_move_if_noexcept_iteratorIP4MoveSt13move_iteratorIS1_EET0_T_
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt22__uninitialized_copy_aISt13move_iteratorIP4MoveES2_S1_ET0_T_S5_S4_RSaIT1_E
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1757:
	.size	_ZSt34__uninitialized_move_if_noexcept_aIP4MoveS1_SaIS0_EET0_T_S4_S3_RT1_, .-_ZSt34__uninitialized_move_if_noexcept_aIP4MoveS1_SaIS0_EET0_T_S4_S3_RT1_
	.section	.text._ZNSt16allocator_traitsISaI4MoveEE7destroyIS0_EEvRS1_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaI4MoveEE7destroyIS0_EEvRS1_PT_,comdat
	.weak	_ZNSt16allocator_traitsISaI4MoveEE7destroyIS0_EEvRS1_PT_
	.type	_ZNSt16allocator_traitsISaI4MoveEE7destroyIS0_EEvRS1_PT_, @function
_ZNSt16allocator_traitsISaI4MoveEE7destroyIS0_EEvRS1_PT_:
.LFB1758:
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
	call	_ZNSt16allocator_traitsISaI4MoveEE10_S_destroyIS0_EENSt9enable_ifIXsrNS2_16__destroy_helperIT_EE5valueEvE4typeERS1_PS6_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1758:
	.size	_ZNSt16allocator_traitsISaI4MoveEE7destroyIS0_EEvRS1_PT_, .-_ZNSt16allocator_traitsISaI4MoveEE7destroyIS0_EEvRS1_PT_
	.section	.text._ZN9__gnu_cxx13new_allocatorI4MoveEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4MoveEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI4MoveEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorI4MoveEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorI4MoveEC2Ev:
.LFB1762:
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
.LFE1762:
	.size	_ZN9__gnu_cxx13new_allocatorI4MoveEC2Ev, .-_ZN9__gnu_cxx13new_allocatorI4MoveEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorI4MoveEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorI4MoveEC1Ev,_ZN9__gnu_cxx13new_allocatorI4MoveEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorI4MoveE9constructIS1_IS1_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4MoveE9constructIS1_IS1_EEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI4MoveE9constructIS1_IS1_EEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorI4MoveE9constructIS1_IS1_EEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorI4MoveE9constructIS1_IS1_EEEvPT_DpOT0_:
.LFB1764:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI4MoveEOT_RNSt16remove_referenceIS1_E4typeE
	movl	(%rax), %ebx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	_ZnwmPv
	testq	%rax, %rax
	je	.L128
	movl	%ebx, (%rax)
.L128:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1764:
	.size	_ZN9__gnu_cxx13new_allocatorI4MoveE9constructIS1_IS1_EEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorI4MoveE9constructIS1_IS1_EEEvPT_DpOT0_
	.weak	_ZN9__gnu_cxx13new_allocatorI4MoveE9constructIS1_JS1_EEEvPT_DpOT0_
	.set	_ZN9__gnu_cxx13new_allocatorI4MoveE9constructIS1_JS1_EEEvPT_DpOT0_,_ZN9__gnu_cxx13new_allocatorI4MoveE9constructIS1_IS1_EEEvPT_DpOT0_
	.section	.text._ZNKSt6vectorI4MoveSaIS0_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorI4MoveSaIS0_EE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorI4MoveSaIS0_EE8max_sizeEv
	.type	_ZNKSt6vectorI4MoveSaIS0_EE8max_sizeEv, @function
_ZNKSt6vectorI4MoveSaIS0_EE8max_sizeEv:
.LFB1765:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1765
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseI4MoveSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI4MoveEE8max_sizeERKS1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1765:
	.section	.gcc_except_table
.LLSDA1765:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1765-.LLSDACSB1765
.LLSDACSB1765:
.LLSDACSE1765:
	.section	.text._ZNKSt6vectorI4MoveSaIS0_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorI4MoveSaIS0_EE8max_sizeEv,comdat
	.size	_ZNKSt6vectorI4MoveSaIS0_EE8max_sizeEv, .-_ZNKSt6vectorI4MoveSaIS0_EE8max_sizeEv
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB1766:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L134
	movq	-16(%rbp), %rax
	jmp	.L135
.L134:
	movq	-8(%rbp), %rax
.L135:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1766:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZN9__gnu_cxx13new_allocatorI4MoveE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4MoveE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI4MoveE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorI4MoveE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorI4MoveE8allocateEmPKv:
.LFB1767:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorI4MoveE8max_sizeEv
	cmpq	-16(%rbp), %rax
	setb	%al
	testb	%al, %al
	je	.L137
	call	_ZSt17__throw_bad_allocv
.L137:
	movq	-16(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	_Znwm
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1767:
	.size	_ZN9__gnu_cxx13new_allocatorI4MoveE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorI4MoveE8allocateEmPKv
	.section	.text._ZSt32__make_move_if_noexcept_iteratorIP4MoveSt13move_iteratorIS1_EET0_T_,"axG",@progbits,_ZSt32__make_move_if_noexcept_iteratorIP4MoveSt13move_iteratorIS1_EET0_T_,comdat
	.weak	_ZSt32__make_move_if_noexcept_iteratorIP4MoveSt13move_iteratorIS1_EET0_T_
	.type	_ZSt32__make_move_if_noexcept_iteratorIP4MoveSt13move_iteratorIS1_EET0_T_, @function
_ZSt32__make_move_if_noexcept_iteratorIP4MoveSt13move_iteratorIS1_EET0_T_:
.LFB1768:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt13move_iteratorIP4MoveEC1ES1_
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1768:
	.size	_ZSt32__make_move_if_noexcept_iteratorIP4MoveSt13move_iteratorIS1_EET0_T_, .-_ZSt32__make_move_if_noexcept_iteratorIP4MoveSt13move_iteratorIS1_EET0_T_
	.section	.text._ZSt22__uninitialized_copy_aISt13move_iteratorIP4MoveES2_S1_ET0_T_S5_S4_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aISt13move_iteratorIP4MoveES2_S1_ET0_T_S5_S4_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aISt13move_iteratorIP4MoveES2_S1_ET0_T_S5_S4_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aISt13move_iteratorIP4MoveES2_S1_ET0_T_S5_S4_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aISt13move_iteratorIP4MoveES2_S1_ET0_T_S5_S4_RSaIT1_E:
.LFB1769:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -8(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt18uninitialized_copyISt13move_iteratorIP4MoveES2_ET0_T_S5_S4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1769:
	.size	_ZSt22__uninitialized_copy_aISt13move_iteratorIP4MoveES2_S1_ET0_T_S5_S4_RSaIT1_E, .-_ZSt22__uninitialized_copy_aISt13move_iteratorIP4MoveES2_S1_ET0_T_S5_S4_RSaIT1_E
	.section	.text._ZNSt16allocator_traitsISaI4MoveEE10_S_destroyIS0_EENSt9enable_ifIXsrNS2_16__destroy_helperIT_EE5valueEvE4typeERS1_PS6_,"axG",@progbits,_ZNSt16allocator_traitsISaI4MoveEE10_S_destroyIS0_EENSt9enable_ifIXsrNS2_16__destroy_helperIT_EE5valueEvE4typeERS1_PS6_,comdat
	.weak	_ZNSt16allocator_traitsISaI4MoveEE10_S_destroyIS0_EENSt9enable_ifIXsrNS2_16__destroy_helperIT_EE5valueEvE4typeERS1_PS6_
	.type	_ZNSt16allocator_traitsISaI4MoveEE10_S_destroyIS0_EENSt9enable_ifIXsrNS2_16__destroy_helperIT_EE5valueEvE4typeERS1_PS6_, @function
_ZNSt16allocator_traitsISaI4MoveEE10_S_destroyIS0_EENSt9enable_ifIXsrNS2_16__destroy_helperIT_EE5valueEvE4typeERS1_PS6_:
.LFB1770:
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
	call	_ZN9__gnu_cxx13new_allocatorI4MoveE7destroyIS1_EEvPT_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1770:
	.size	_ZNSt16allocator_traitsISaI4MoveEE10_S_destroyIS0_EENSt9enable_ifIXsrNS2_16__destroy_helperIT_EE5valueEvE4typeERS1_PS6_, .-_ZNSt16allocator_traitsISaI4MoveEE10_S_destroyIS0_EENSt9enable_ifIXsrNS2_16__destroy_helperIT_EE5valueEvE4typeERS1_PS6_
	.section	.text._ZNSt16allocator_traitsISaI4MoveEE8max_sizeERKS1_,"axG",@progbits,_ZNSt16allocator_traitsISaI4MoveEE8max_sizeERKS1_,comdat
	.weak	_ZNSt16allocator_traitsISaI4MoveEE8max_sizeERKS1_
	.type	_ZNSt16allocator_traitsISaI4MoveEE8max_sizeERKS1_, @function
_ZNSt16allocator_traitsISaI4MoveEE8max_sizeERKS1_:
.LFB1781:
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
	call	_ZNSt16allocator_traitsISaI4MoveEE11_S_max_sizeIKS1_EENSt9enable_ifIXsrNS2_16__maxsize_helperIT_EE5valueEmE4typeERS7_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1781:
	.size	_ZNSt16allocator_traitsISaI4MoveEE8max_sizeERKS1_, .-_ZNSt16allocator_traitsISaI4MoveEE8max_sizeERKS1_
	.section	.text._ZNKSt12_Vector_baseI4MoveSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseI4MoveSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseI4MoveSaIS0_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseI4MoveSaIS0_EE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseI4MoveSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB1782:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1782:
	.size	_ZNKSt12_Vector_baseI4MoveSaIS0_EE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseI4MoveSaIS0_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNK9__gnu_cxx13new_allocatorI4MoveE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorI4MoveE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorI4MoveE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorI4MoveE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorI4MoveE8max_sizeEv:
.LFB1783:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$4611686018427387903, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1783:
	.size	_ZNK9__gnu_cxx13new_allocatorI4MoveE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorI4MoveE8max_sizeEv
	.section	.text._ZNSt13move_iteratorIP4MoveEC2ES1_,"axG",@progbits,_ZNSt13move_iteratorIP4MoveEC5ES1_,comdat
	.align 2
	.weak	_ZNSt13move_iteratorIP4MoveEC2ES1_
	.type	_ZNSt13move_iteratorIP4MoveEC2ES1_, @function
_ZNSt13move_iteratorIP4MoveEC2ES1_:
.LFB1785:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1785:
	.size	_ZNSt13move_iteratorIP4MoveEC2ES1_, .-_ZNSt13move_iteratorIP4MoveEC2ES1_
	.weak	_ZNSt13move_iteratorIP4MoveEC1ES1_
	.set	_ZNSt13move_iteratorIP4MoveEC1ES1_,_ZNSt13move_iteratorIP4MoveEC2ES1_
	.section	.text._ZSt18uninitialized_copyISt13move_iteratorIP4MoveES2_ET0_T_S5_S4_,"axG",@progbits,_ZSt18uninitialized_copyISt13move_iteratorIP4MoveES2_ET0_T_S5_S4_,comdat
	.weak	_ZSt18uninitialized_copyISt13move_iteratorIP4MoveES2_ET0_T_S5_S4_
	.type	_ZSt18uninitialized_copyISt13move_iteratorIP4MoveES2_ET0_T_S5_S4_, @function
_ZSt18uninitialized_copyISt13move_iteratorIP4MoveES2_ET0_T_S5_S4_:
.LFB1787:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIP4MoveES4_EET0_T_S7_S6_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1787:
	.size	_ZSt18uninitialized_copyISt13move_iteratorIP4MoveES2_ET0_T_S5_S4_, .-_ZSt18uninitialized_copyISt13move_iteratorIP4MoveES2_ET0_T_S5_S4_
	.section	.text._ZN9__gnu_cxx13new_allocatorI4MoveE7destroyIS1_EEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4MoveE7destroyIS1_EEvPT_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI4MoveE7destroyIS1_EEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorI4MoveE7destroyIS1_EEvPT_, @function
_ZN9__gnu_cxx13new_allocatorI4MoveE7destroyIS1_EEvPT_:
.LFB1788:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1788:
	.size	_ZN9__gnu_cxx13new_allocatorI4MoveE7destroyIS1_EEvPT_, .-_ZN9__gnu_cxx13new_allocatorI4MoveE7destroyIS1_EEvPT_
	.section	.text._ZNSt16allocator_traitsISaI4MoveEE11_S_max_sizeIKS1_EENSt9enable_ifIXsrNS2_16__maxsize_helperIT_EE5valueEmE4typeERS7_,"axG",@progbits,_ZNSt16allocator_traitsISaI4MoveEE11_S_max_sizeIKS1_EENSt9enable_ifIXsrNS2_16__maxsize_helperIT_EE5valueEmE4typeERS7_,comdat
	.weak	_ZNSt16allocator_traitsISaI4MoveEE11_S_max_sizeIKS1_EENSt9enable_ifIXsrNS2_16__maxsize_helperIT_EE5valueEmE4typeERS7_
	.type	_ZNSt16allocator_traitsISaI4MoveEE11_S_max_sizeIKS1_EENSt9enable_ifIXsrNS2_16__maxsize_helperIT_EE5valueEmE4typeERS7_, @function
_ZNSt16allocator_traitsISaI4MoveEE11_S_max_sizeIKS1_EENSt9enable_ifIXsrNS2_16__maxsize_helperIT_EE5valueEmE4typeERS7_:
.LFB1797:
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
	call	_ZNK9__gnu_cxx13new_allocatorI4MoveE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1797:
	.size	_ZNSt16allocator_traitsISaI4MoveEE11_S_max_sizeIKS1_EENSt9enable_ifIXsrNS2_16__maxsize_helperIT_EE5valueEmE4typeERS7_, .-_ZNSt16allocator_traitsISaI4MoveEE11_S_max_sizeIKS1_EENSt9enable_ifIXsrNS2_16__maxsize_helperIT_EE5valueEmE4typeERS7_
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIP4MoveES4_EET0_T_S7_S6_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIP4MoveES4_EET0_T_S7_S6_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIP4MoveES4_EET0_T_S7_S6_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIP4MoveES4_EET0_T_S7_S6_, @function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIP4MoveES4_EET0_T_S7_S6_:
.LFB1798:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyISt13move_iteratorIP4MoveES2_ET0_T_S5_S4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1798:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIP4MoveES4_EET0_T_S7_S6_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIP4MoveES4_EET0_T_S7_S6_
	.section	.text._ZSt4copyISt13move_iteratorIP4MoveES2_ET0_T_S5_S4_,"axG",@progbits,_ZSt4copyISt13move_iteratorIP4MoveES2_ET0_T_S5_S4_,comdat
	.weak	_ZSt4copyISt13move_iteratorIP4MoveES2_ET0_T_S5_S4_
	.type	_ZSt4copyISt13move_iteratorIP4MoveES2_ET0_T_S5_S4_, @function
_ZSt4copyISt13move_iteratorIP4MoveES2_ET0_T_S5_S4_:
.LFB1799:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseISt13move_iteratorIP4MoveEENSt11_Miter_baseIT_E13iterator_typeES5_
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseISt13move_iteratorIP4MoveEENSt11_Miter_baseIT_E13iterator_typeES5_
	movq	-40(%rbp), %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a2ILb1EP4MoveS1_ET1_T0_S3_S2_
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1799:
	.size	_ZSt4copyISt13move_iteratorIP4MoveES2_ET0_T_S5_S4_, .-_ZSt4copyISt13move_iteratorIP4MoveES2_ET0_T_S5_S4_
	.section	.text._ZSt12__miter_baseISt13move_iteratorIP4MoveEENSt11_Miter_baseIT_E13iterator_typeES5_,"axG",@progbits,_ZSt12__miter_baseISt13move_iteratorIP4MoveEENSt11_Miter_baseIT_E13iterator_typeES5_,comdat
	.weak	_ZSt12__miter_baseISt13move_iteratorIP4MoveEENSt11_Miter_baseIT_E13iterator_typeES5_
	.type	_ZSt12__miter_baseISt13move_iteratorIP4MoveEENSt11_Miter_baseIT_E13iterator_typeES5_, @function
_ZSt12__miter_baseISt13move_iteratorIP4MoveEENSt11_Miter_baseIT_E13iterator_typeES5_:
.LFB1800:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Iter_baseISt13move_iteratorIP4MoveELb1EE7_S_baseES3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1800:
	.size	_ZSt12__miter_baseISt13move_iteratorIP4MoveEENSt11_Miter_baseIT_E13iterator_typeES5_, .-_ZSt12__miter_baseISt13move_iteratorIP4MoveEENSt11_Miter_baseIT_E13iterator_typeES5_
	.section	.text._ZSt14__copy_move_a2ILb1EP4MoveS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt14__copy_move_a2ILb1EP4MoveS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt14__copy_move_a2ILb1EP4MoveS1_ET1_T0_S3_S2_
	.type	_ZSt14__copy_move_a2ILb1EP4MoveS1_ET1_T0_S3_S2_, @function
_ZSt14__copy_move_a2ILb1EP4MoveS1_ET1_T0_S3_S2_:
.LFB1801:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIP4MoveENSt11_Niter_baseIT_E13iterator_typeES3_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIP4MoveENSt11_Niter_baseIT_E13iterator_typeES3_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIP4MoveENSt11_Niter_baseIT_E13iterator_typeES3_
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt13__copy_move_aILb1EP4MoveS1_ET1_T0_S3_S2_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1801:
	.size	_ZSt14__copy_move_a2ILb1EP4MoveS1_ET1_T0_S3_S2_, .-_ZSt14__copy_move_a2ILb1EP4MoveS1_ET1_T0_S3_S2_
	.section	.text._ZNSt10_Iter_baseISt13move_iteratorIP4MoveELb1EE7_S_baseES3_,"axG",@progbits,_ZNSt10_Iter_baseISt13move_iteratorIP4MoveELb1EE7_S_baseES3_,comdat
	.weak	_ZNSt10_Iter_baseISt13move_iteratorIP4MoveELb1EE7_S_baseES3_
	.type	_ZNSt10_Iter_baseISt13move_iteratorIP4MoveELb1EE7_S_baseES3_, @function
_ZNSt10_Iter_baseISt13move_iteratorIP4MoveELb1EE7_S_baseES3_:
.LFB1802:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt13move_iteratorIP4MoveE4baseEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1802:
	.size	_ZNSt10_Iter_baseISt13move_iteratorIP4MoveELb1EE7_S_baseES3_, .-_ZNSt10_Iter_baseISt13move_iteratorIP4MoveELb1EE7_S_baseES3_
	.section	.text._ZSt12__niter_baseIP4MoveENSt11_Niter_baseIT_E13iterator_typeES3_,"axG",@progbits,_ZSt12__niter_baseIP4MoveENSt11_Niter_baseIT_E13iterator_typeES3_,comdat
	.weak	_ZSt12__niter_baseIP4MoveENSt11_Niter_baseIT_E13iterator_typeES3_
	.type	_ZSt12__niter_baseIP4MoveENSt11_Niter_baseIT_E13iterator_typeES3_, @function
_ZSt12__niter_baseIP4MoveENSt11_Niter_baseIT_E13iterator_typeES3_:
.LFB1803:
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
	call	_ZNSt10_Iter_baseIP4MoveLb0EE7_S_baseES1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1803:
	.size	_ZSt12__niter_baseIP4MoveENSt11_Niter_baseIT_E13iterator_typeES3_, .-_ZSt12__niter_baseIP4MoveENSt11_Niter_baseIT_E13iterator_typeES3_
	.section	.text._ZSt13__copy_move_aILb1EP4MoveS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt13__copy_move_aILb1EP4MoveS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt13__copy_move_aILb1EP4MoveS1_ET1_T0_S3_S2_
	.type	_ZSt13__copy_move_aILb1EP4MoveS1_ET1_T0_S3_S2_, @function
_ZSt13__copy_move_aILb1EP4MoveS1_ET1_T0_S3_S2_:
.LFB1804:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI4MoveEEPT_PKS4_S7_S5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1804:
	.size	_ZSt13__copy_move_aILb1EP4MoveS1_ET1_T0_S3_S2_, .-_ZSt13__copy_move_aILb1EP4MoveS1_ET1_T0_S3_S2_
	.section	.text._ZNKSt13move_iteratorIP4MoveE4baseEv,"axG",@progbits,_ZNKSt13move_iteratorIP4MoveE4baseEv,comdat
	.align 2
	.weak	_ZNKSt13move_iteratorIP4MoveE4baseEv
	.type	_ZNKSt13move_iteratorIP4MoveE4baseEv, @function
_ZNKSt13move_iteratorIP4MoveE4baseEv:
.LFB1805:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1805:
	.size	_ZNKSt13move_iteratorIP4MoveE4baseEv, .-_ZNKSt13move_iteratorIP4MoveE4baseEv
	.section	.text._ZNSt10_Iter_baseIP4MoveLb0EE7_S_baseES1_,"axG",@progbits,_ZNSt10_Iter_baseIP4MoveLb0EE7_S_baseES1_,comdat
	.weak	_ZNSt10_Iter_baseIP4MoveLb0EE7_S_baseES1_
	.type	_ZNSt10_Iter_baseIP4MoveLb0EE7_S_baseES1_, @function
_ZNSt10_Iter_baseIP4MoveLb0EE7_S_baseES1_:
.LFB1806:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1806:
	.size	_ZNSt10_Iter_baseIP4MoveLb0EE7_S_baseES1_, .-_ZNSt10_Iter_baseIP4MoveLb0EE7_S_baseES1_
	.section	.text._ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI4MoveEEPT_PKS4_S7_S5_,"axG",@progbits,_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI4MoveEEPT_PKS4_S7_S5_,comdat
	.weak	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI4MoveEEPT_PKS4_S7_S5_
	.type	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI4MoveEEPT_PKS4_S7_S5_, @function
_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI4MoveEEPT_PKS4_S7_S5_:
.LFB1807:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$2, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L175
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove
.L175:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1807:
	.size	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI4MoveEEPT_PKS4_S7_S5_, .-_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI4MoveEEPT_PKS4_S7_S5_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB1808:
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
	jne	.L177
	cmpl	$65535, -8(%rbp)
	jne	.L177
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
.L177:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1808:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z6strsepPPcS_, @function
_GLOBAL__sub_I__Z6strsepPPcS_:
.LFB1809:
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
.LFE1809:
	.size	_GLOBAL__sub_I__Z6strsepPPcS_, .-_GLOBAL__sub_I__Z6strsepPPcS_
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z6strsepPPcS_
	.section	.rodata
	.align 8
	.type	_ZZL18__gthread_active_pvE20__gthread_active_ptr, @object
	.size	_ZZL18__gthread_active_pvE20__gthread_active_ptr, 8
_ZZL18__gthread_active_pvE20__gthread_active_ptr:
	.quad	_ZL28__gthrw___pthread_key_createPjPFvPvE
	.weakref	_ZL28__gthrw___pthread_key_createPjPFvPvE,__pthread_key_create
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
