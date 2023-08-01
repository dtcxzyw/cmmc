.data
.text
.p2align 2
.globl f1
f1:
	and $v0, $a0, $a1
	jr $ra
	nop
.p2align 2
.globl f2
f2:
	or $v0, $a0, $a1
	jr $ra
	nop
.p2align 2
.globl f3
f3:
	xor $v0, $a0, $a1
	jr $ra
	nop
.p2align 2
.globl f4
f4:
	sllv $v0, $a0, $a1
	jr $ra
	nop
.p2align 2
.globl f5
f5:
	srlv $v0, $a0, $a1
	jr $ra
	nop
