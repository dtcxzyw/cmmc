.data
.data
.align 4
.globl a0
a0:
	.4byte	0
.text
.globl __regcall3__func
__regcall3__func:
	lui $t0, %hi(a0)
	sw $a0, %lo(a0)($t0)
	jr $ra
	nop
.globl tail_call_regcall
tail_call_regcall:
	lui $t0, %hi(a0)
	sw $a0, %lo(a0)($t0)
	jr $ra
	nop
