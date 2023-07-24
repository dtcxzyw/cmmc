.data
.text
.globl f1
f1:
.p2align 2
	sll $t0, $a0, 12
	srl $v0, $t0, 12
	jr $ra
	nop
.globl f2
f2:
.p2align 2
	sll $t0, $a0, 12
	srl $v0, $t0, 12
	jr $ra
	nop
.globl f3
f3:
.p2align 2
	sll $t0, $a0, 24
	srl $v0, $t0, 29
	jr $ra
	nop
.globl f4
f4:
.p2align 2
	sll $t0, $a0, 24
	srl $v0, $t0, 29
	jr $ra
	nop
.globl f5
f5:
.p2align 2
	sll $t0, $a0, 3
	srl $v0, $t0, 1
	jr $ra
	nop
.globl f6
f6:
.p2align 2
	srl $t0, $a0, 23
	andi $v0, $t0, 255
	jr $ra
	nop
.globl f7
f7:
.p2align 2
	srl $t0, $a0, 25
	andi $v0, $t0, 255
	jr $ra
	nop
