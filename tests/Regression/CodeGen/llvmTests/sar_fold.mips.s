.data
.section .rodata
.bss
.text
.globl shl16sar15
shl16sar15:
	sll $t0, $a0, 16
	srl $v0, $t0, 15
	jr $ra
	nop
.globl shl16sar17
shl16sar17:
	sll $t0, $a0, 16
	srl $v0, $t0, 17
	jr $ra
	nop
.globl shl24sar23
shl24sar23:
	sll $t0, $a0, 24
	srl $v0, $t0, 23
	jr $ra
	nop
.globl shl24sar25
shl24sar25:
	sll $t0, $a0, 24
	srl $v0, $t0, 25
	jr $ra
	nop
