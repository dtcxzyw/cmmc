.data
.text
.p2align 2
.globl f1
f1:
	sll $t0, $a0, 12
	srl $v0, $t0, 12
	jr $ra
	nop
.p2align 2
.globl f2
f2:
	sll $t0, $a0, 12
	srl $v0, $t0, 12
	jr $ra
	nop
.p2align 2
.globl f3
f3:
	sll $t0, $a0, 24
	srl $v0, $t0, 29
	jr $ra
	nop
.p2align 2
.globl f4
f4:
	sll $t0, $a0, 24
	srl $v0, $t0, 29
	jr $ra
	nop
.p2align 2
.globl f5
f5:
	sll $t0, $a0, 3
	srl $v0, $t0, 1
	jr $ra
	nop
.p2align 2
.globl f6
f6:
	srl $t0, $a0, 23
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl f7
f7:
	srl $t0, $a0, 25
	andi $v0, $t0, 255
	jr $ra
	nop
