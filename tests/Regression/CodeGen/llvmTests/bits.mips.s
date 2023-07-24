.data
.text
.globl f1
f1:
.p2align 2
	and $v0, $a0, $a1
	jr $ra
	nop
.globl f2
f2:
.p2align 2
	or $v0, $a0, $a1
	jr $ra
	nop
.globl f3
f3:
.p2align 2
	xor $v0, $a0, $a1
	jr $ra
	nop
.globl f4
f4:
.p2align 2
	sllv $v0, $a0, $a1
	jr $ra
	nop
.globl f5
f5:
.p2align 2
	srlv $v0, $a0, $a1
	jr $ra
	nop
