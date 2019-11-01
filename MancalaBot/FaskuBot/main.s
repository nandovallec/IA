	.file	"main.cpp"
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
.LC0:
	.string	"\n\n\tSIMULACION ABORTADA.\n\n"
	.align 8
.LC1:
	.string	"\n\n\tFIN DE LA PARTIDA CON EXITO.\n\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1558:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1558
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
.LEHB0:
	call	_ZN13SimulatorLinkC1Ev
	movq	$0, -64(%rbp)
	movl	$24, %edi
	call	_Znwm
.LEHE0:
	movq	%rax, %rbx
	movq	%rbx, %rdi
.LEHB1:
	call	_ZN8FaskuBotC1Ev
.LEHE1:
	movq	%rbx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB2:
	call	_ZN13SimulatorLink6setBotEP3Bot
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN13SimulatorLink3runEv
	movb	%al, -65(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L2
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
.L2:
	movzbl	-65(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L3
	movl	$.LC0, %esi
	movl	$_ZSt4cerr, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L4
.L3:
	movl	$.LC1, %esi
	movl	$_ZSt4cerr, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L4:
	movl	$0, %eax
	jmp	.L8
.L7:
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	_ZdlPv
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume
.LEHE2:
.L8:
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1558:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1558:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1558-.LLSDACSB1558
.LLSDACSB1558:
	.uleb128 .LEHB0-.LFB1558
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1558
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L7-.LFB1558
	.uleb128 0
	.uleb128 .LEHB2-.LFB1558
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1558:
	.text
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB1712:
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
	jne	.L9
	cmpl	$65535, -8(%rbp)
	jne	.L9
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1712:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB1713:
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
.LFE1713:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
