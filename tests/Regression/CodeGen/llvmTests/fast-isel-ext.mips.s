.data
.text
.p2align 2
.globl sext_16_32
sext_16_32:
	sll $t0, $a0, 16
	sra $v0, $t0, 16
	jr $ra
	nop
.p2align 2
.globl sext_1_16
sext_1_16:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	andi $v0, $t0, 65535
	jr $ra
	nop
.p2align 2
.globl sext_1_32
sext_1_32:
	move $v0, $a0
	jr $ra
	nop
.p2align 2
.globl sext_1_8
sext_1_8:
	sll $t0, $a0, 24
	sra $t0, $t0, 24
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl sext_8_16
sext_8_16:
	sll $t0, $a0, 24
	sra $t0, $t0, 24
	andi $v0, $t0, 65535
	jr $ra
	nop
.p2align 2
.globl sext_8_32
sext_8_32:
	sll $t0, $a0, 24
	sra $v0, $t0, 24
	jr $ra
	nop
.p2align 2
.globl zext_16_32
zext_16_32:
	andi $v0, $a0, 65535
	jr $ra
	nop
.p2align 2
.globl zext_1_16
zext_1_16:
	andi $v0, $a0, 65535
	jr $ra
	nop
.p2align 2
.globl zext_1_32
zext_1_32:
	move $v0, $a0
	jr $ra
	nop
.p2align 2
.globl zext_1_8
zext_1_8:
	andi $v0, $a0, 255
	jr $ra
	nop
.p2align 2
.globl zext_8_16
zext_8_16:
	andi $v0, $a0, 255
	jr $ra
	nop
.p2align 2
.globl zext_8_32
zext_8_32:
	andi $v0, $a0, 255
	jr $ra
	nop
