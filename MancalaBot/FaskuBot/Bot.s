	.file	"Bot.cpp"
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.section	.text._ZN3BotD2Ev,"axG",@progbits,_ZN3BotD5Ev,comdat
	.align 2
	.weak	_ZN3BotD2Ev
	.type	_ZN3BotD2Ev, @function
_ZN3BotD2Ev:
.LFB1138:
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
.LFE1138:
	.size	_ZN3BotD2Ev, .-_ZN3BotD2Ev
	.weak	_ZN3BotD1Ev
	.set	_ZN3BotD1Ev,_ZN3BotD2Ev
	.section	.text._ZN3BotD0Ev,"axG",@progbits,_ZN3BotD0Ev,comdat
	.align 2
	.weak	_ZN3BotD0Ev
	.type	_ZN3BotD0Ev, @function
_ZN3BotD0Ev:
.LFB1140:
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
.LFE1140:
	.size	_ZN3BotD0Ev, .-_ZN3BotD0Ev
	.text
	.align 2
	.globl	_ZN3BotC2Ev
	.type	_ZN3BotC2Ev, @function
_ZN3BotC2Ev:
.LFB1142:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$_ZTV3Bot+16, (%rax)
	movq	-8(%rbp), %rax
	movl	$2, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1142:
	.size	_ZN3BotC2Ev, .-_ZN3BotC2Ev
	.globl	_ZN3BotC1Ev
	.set	_ZN3BotC1Ev,_ZN3BotC2Ev
	.align 2
	.globl	_ZN3Bot9setPlayerE6Player
	.type	_ZN3Bot9setPlayerE6Player, @function
_ZN3Bot9setPlayerE6Player:
.LFB1144:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 8(%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1144:
	.size	_ZN3Bot9setPlayerE6Player, .-_ZN3Bot9setPlayerE6Player
	.align 2
	.globl	_ZN3Bot9getPlayerEv
	.type	_ZN3Bot9getPlayerEv, @function
_ZN3Bot9getPlayerEv:
.LFB1145:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1145:
	.size	_ZN3Bot9getPlayerEv, .-_ZN3Bot9getPlayerEv
	.align 2
	.globl	_ZN3Bot10setTimeOutEl
	.type	_ZN3Bot10setTimeOutEl, @function
_ZN3Bot10setTimeOutEl:
.LFB1146:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	js	.L11
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L10
.L11:
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
.L10:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1146:
	.size	_ZN3Bot10setTimeOutEl, .-_ZN3Bot10setTimeOutEl
	.align 2
	.globl	_ZN3Bot10getTimeOutEv
	.type	_ZN3Bot10getTimeOutEv, @function
_ZN3Bot10getTimeOutEv:
.LFB1147:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1147:
	.size	_ZN3Bot10getTimeOutEv, .-_ZN3Bot10getTimeOutEv
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
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
