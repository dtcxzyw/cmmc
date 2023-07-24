.data
.text
.globl aext_divuw_aext_aext
aext_divuw_aext_aext:
.p2align 2
	divu $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl aext_divuw_aext_sext
aext_divuw_aext_sext:
.p2align 2
	divu $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl aext_divuw_aext_zext
aext_divuw_aext_zext:
.p2align 2
	divu $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl aext_divuw_sext_aext
aext_divuw_sext_aext:
.p2align 2
	divu $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl aext_divuw_sext_sext
aext_divuw_sext_sext:
.p2align 2
	divu $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl aext_divuw_sext_zext
aext_divuw_sext_zext:
.p2align 2
	divu $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl aext_divuw_zext_aext
aext_divuw_zext_aext:
.p2align 2
	divu $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl aext_divuw_zext_sext
aext_divuw_zext_sext:
.p2align 2
	divu $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl aext_divuw_zext_zext
aext_divuw_zext_zext:
.p2align 2
	divu $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl aext_divw_aext_aext
aext_divw_aext_aext:
.p2align 2
	div $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl aext_divw_aext_sext
aext_divw_aext_sext:
.p2align 2
	div $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl aext_divw_aext_zext
aext_divw_aext_zext:
.p2align 2
	div $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl aext_divw_sext_aext
aext_divw_sext_aext:
.p2align 2
	div $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl aext_divw_sext_sext
aext_divw_sext_sext:
.p2align 2
	div $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl aext_divw_sext_zext
aext_divw_sext_zext:
.p2align 2
	div $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl aext_divw_zext_aext
aext_divw_zext_aext:
.p2align 2
	div $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl aext_divw_zext_sext
aext_divw_zext_sext:
.p2align 2
	div $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl aext_divw_zext_zext
aext_divw_zext_zext:
.p2align 2
	div $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl aext_mulw_aext_aext
aext_mulw_aext_aext:
.p2align 2
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl aext_mulw_aext_sext
aext_mulw_aext_sext:
.p2align 2
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl aext_mulw_aext_zext
aext_mulw_aext_zext:
.p2align 2
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl aext_mulw_sext_aext
aext_mulw_sext_aext:
.p2align 2
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl aext_mulw_sext_sext
aext_mulw_sext_sext:
.p2align 2
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl aext_mulw_sext_zext
aext_mulw_sext_zext:
.p2align 2
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl aext_mulw_zext_aext
aext_mulw_zext_aext:
.p2align 2
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl aext_mulw_zext_sext
aext_mulw_zext_sext:
.p2align 2
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl aext_mulw_zext_zext
aext_mulw_zext_zext:
.p2align 2
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl aext_remuw_aext_aext
aext_remuw_aext_aext:
.p2align 2
	divu $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl aext_remuw_aext_sext
aext_remuw_aext_sext:
.p2align 2
	divu $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl aext_remuw_aext_zext
aext_remuw_aext_zext:
.p2align 2
	divu $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl aext_remuw_sext_aext
aext_remuw_sext_aext:
.p2align 2
	divu $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl aext_remuw_sext_sext
aext_remuw_sext_sext:
.p2align 2
	divu $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl aext_remuw_sext_zext
aext_remuw_sext_zext:
.p2align 2
	divu $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl aext_remuw_zext_aext
aext_remuw_zext_aext:
.p2align 2
	divu $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl aext_remuw_zext_sext
aext_remuw_zext_sext:
.p2align 2
	divu $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl aext_remuw_zext_zext
aext_remuw_zext_zext:
.p2align 2
	divu $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl aext_remw_aext_aext
aext_remw_aext_aext:
.p2align 2
	div $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl aext_remw_aext_sext
aext_remw_aext_sext:
.p2align 2
	div $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl aext_remw_aext_zext
aext_remw_aext_zext:
.p2align 2
	div $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl aext_remw_sext_aext
aext_remw_sext_aext:
.p2align 2
	div $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl aext_remw_sext_sext
aext_remw_sext_sext:
.p2align 2
	div $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl aext_remw_sext_zext
aext_remw_sext_zext:
.p2align 2
	div $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl aext_remw_zext_aext
aext_remw_zext_aext:
.p2align 2
	div $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl aext_remw_zext_sext
aext_remw_zext_sext:
.p2align 2
	div $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl aext_remw_zext_zext
aext_remw_zext_zext:
.p2align 2
	div $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl sext_divuw_aext_aext
sext_divuw_aext_aext:
.p2align 2
	divu $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl sext_divuw_aext_sext
sext_divuw_aext_sext:
.p2align 2
	divu $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl sext_divuw_aext_zext
sext_divuw_aext_zext:
.p2align 2
	divu $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl sext_divuw_sext_aext
sext_divuw_sext_aext:
.p2align 2
	divu $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl sext_divuw_sext_sext
sext_divuw_sext_sext:
.p2align 2
	divu $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl sext_divuw_sext_zext
sext_divuw_sext_zext:
.p2align 2
	divu $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl sext_divuw_zext_aext
sext_divuw_zext_aext:
.p2align 2
	divu $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl sext_divuw_zext_sext
sext_divuw_zext_sext:
.p2align 2
	divu $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl sext_divuw_zext_zext
sext_divuw_zext_zext:
.p2align 2
	divu $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl sext_divw_aext_aext
sext_divw_aext_aext:
.p2align 2
	div $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl sext_divw_aext_sext
sext_divw_aext_sext:
.p2align 2
	div $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl sext_divw_aext_zext
sext_divw_aext_zext:
.p2align 2
	div $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl sext_divw_sext_aext
sext_divw_sext_aext:
.p2align 2
	div $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl sext_divw_sext_sext
sext_divw_sext_sext:
.p2align 2
	div $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl sext_divw_sext_sext_i16
sext_divw_sext_sext_i16:
.p2align 2
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $a1, 16
	sra $t1, $t1, 16
	div $zero, $t0, $t1
	mflo $t0
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl sext_divw_sext_sext_i8
sext_divw_sext_sext_i8:
.p2align 2
	sll $t0, $a0, 24
	sra $t0, $t0, 24
	sll $t1, $a1, 24
	sra $t1, $t1, 24
	div $zero, $t0, $t1
	mflo $t0
	andi $v0, $t0, 255
	jr $ra
	nop
.globl sext_divw_sext_zext
sext_divw_sext_zext:
.p2align 2
	div $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl sext_divw_zext_aext
sext_divw_zext_aext:
.p2align 2
	div $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl sext_divw_zext_sext
sext_divw_zext_sext:
.p2align 2
	div $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl sext_divw_zext_zext
sext_divw_zext_zext:
.p2align 2
	div $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl sext_i32_remw_sext_zext_i16
sext_i32_remw_sext_zext_i16:
.p2align 2
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	andi $t1, $a1, 65535
	div $zero, $t0, $t1
	mfhi $v0
	jr $ra
	nop
.globl sext_i32_remw_zext_sext_i16
sext_i32_remw_zext_sext_i16:
.p2align 2
	andi $t0, $a0, 65535
	sll $t1, $a1, 16
	sra $t1, $t1, 16
	div $zero, $t0, $t1
	mfhi $v0
	jr $ra
	nop
.globl sext_mulw_aext_aext
sext_mulw_aext_aext:
.p2align 2
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl sext_mulw_aext_sext
sext_mulw_aext_sext:
.p2align 2
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl sext_mulw_aext_zext
sext_mulw_aext_zext:
.p2align 2
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl sext_mulw_sext_aext
sext_mulw_sext_aext:
.p2align 2
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl sext_mulw_sext_sext
sext_mulw_sext_sext:
.p2align 2
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl sext_mulw_sext_zext
sext_mulw_sext_zext:
.p2align 2
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl sext_mulw_zext_aext
sext_mulw_zext_aext:
.p2align 2
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl sext_mulw_zext_sext
sext_mulw_zext_sext:
.p2align 2
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl sext_mulw_zext_zext
sext_mulw_zext_zext:
.p2align 2
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl sext_remuw_aext_aext
sext_remuw_aext_aext:
.p2align 2
	divu $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl sext_remuw_aext_sext
sext_remuw_aext_sext:
.p2align 2
	divu $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl sext_remuw_aext_zext
sext_remuw_aext_zext:
.p2align 2
	divu $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl sext_remuw_sext_aext
sext_remuw_sext_aext:
.p2align 2
	divu $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl sext_remuw_sext_sext
sext_remuw_sext_sext:
.p2align 2
	divu $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl sext_remuw_sext_zext
sext_remuw_sext_zext:
.p2align 2
	divu $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl sext_remuw_zext_aext
sext_remuw_zext_aext:
.p2align 2
	divu $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl sext_remuw_zext_sext
sext_remuw_zext_sext:
.p2align 2
	divu $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl sext_remuw_zext_zext
sext_remuw_zext_zext:
.p2align 2
	divu $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl sext_remw_aext_aext
sext_remw_aext_aext:
.p2align 2
	div $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl sext_remw_aext_sext
sext_remw_aext_sext:
.p2align 2
	div $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl sext_remw_aext_zext
sext_remw_aext_zext:
.p2align 2
	div $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl sext_remw_sext_aext
sext_remw_sext_aext:
.p2align 2
	div $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl sext_remw_sext_sext
sext_remw_sext_sext:
.p2align 2
	div $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl sext_remw_sext_sext_i16
sext_remw_sext_sext_i16:
.p2align 2
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $a1, 16
	sra $t1, $t1, 16
	div $zero, $t0, $t1
	mfhi $t0
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl sext_remw_sext_sext_i8
sext_remw_sext_sext_i8:
.p2align 2
	sll $t0, $a0, 24
	sra $t0, $t0, 24
	sll $t1, $a1, 24
	sra $t1, $t1, 24
	div $zero, $t0, $t1
	mfhi $t0
	andi $v0, $t0, 255
	jr $ra
	nop
.globl sext_remw_sext_zext
sext_remw_sext_zext:
.p2align 2
	div $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl sext_remw_zext_aext
sext_remw_zext_aext:
.p2align 2
	div $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl sext_remw_zext_sext
sext_remw_zext_sext:
.p2align 2
	div $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl sext_remw_zext_zext
sext_remw_zext_zext:
.p2align 2
	div $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl zext_divuw_aext_aext
zext_divuw_aext_aext:
.p2align 2
	divu $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl zext_divuw_aext_sext
zext_divuw_aext_sext:
.p2align 2
	divu $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl zext_divuw_aext_zext
zext_divuw_aext_zext:
.p2align 2
	divu $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl zext_divuw_sext_aext
zext_divuw_sext_aext:
.p2align 2
	divu $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl zext_divuw_sext_sext
zext_divuw_sext_sext:
.p2align 2
	divu $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl zext_divuw_sext_zext
zext_divuw_sext_zext:
.p2align 2
	divu $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl zext_divuw_zext_aext
zext_divuw_zext_aext:
.p2align 2
	divu $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl zext_divuw_zext_sext
zext_divuw_zext_sext:
.p2align 2
	divu $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl zext_divuw_zext_zext
zext_divuw_zext_zext:
.p2align 2
	divu $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl zext_divuw_zext_zext_i16
zext_divuw_zext_zext_i16:
.p2align 2
	andi $t0, $a0, 65535
	andi $t1, $a1, 65535
	div $zero, $t0, $t1
	mflo $t0
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl zext_divuw_zext_zext_i8
zext_divuw_zext_zext_i8:
.p2align 2
	andi $t0, $a0, 255
	andi $t1, $a1, 255
	div $zero, $t0, $t1
	mflo $t0
	andi $v0, $t0, 255
	jr $ra
	nop
.globl zext_divw_aext_aext
zext_divw_aext_aext:
.p2align 2
	div $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl zext_divw_aext_sext
zext_divw_aext_sext:
.p2align 2
	div $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl zext_divw_aext_zext
zext_divw_aext_zext:
.p2align 2
	div $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl zext_divw_sext_aext
zext_divw_sext_aext:
.p2align 2
	div $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl zext_divw_sext_sext
zext_divw_sext_sext:
.p2align 2
	div $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl zext_divw_sext_zext
zext_divw_sext_zext:
.p2align 2
	div $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl zext_divw_zext_aext
zext_divw_zext_aext:
.p2align 2
	div $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl zext_divw_zext_sext
zext_divw_zext_sext:
.p2align 2
	div $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl zext_divw_zext_zext
zext_divw_zext_zext:
.p2align 2
	div $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl zext_mulw_aext_aext
zext_mulw_aext_aext:
.p2align 2
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl zext_mulw_aext_sext
zext_mulw_aext_sext:
.p2align 2
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl zext_mulw_aext_zext
zext_mulw_aext_zext:
.p2align 2
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl zext_mulw_sext_aext
zext_mulw_sext_aext:
.p2align 2
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl zext_mulw_sext_sext
zext_mulw_sext_sext:
.p2align 2
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl zext_mulw_sext_zext
zext_mulw_sext_zext:
.p2align 2
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl zext_mulw_zext_aext
zext_mulw_zext_aext:
.p2align 2
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl zext_mulw_zext_sext
zext_mulw_zext_sext:
.p2align 2
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl zext_mulw_zext_zext
zext_mulw_zext_zext:
.p2align 2
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl zext_remuw_aext_aext
zext_remuw_aext_aext:
.p2align 2
	divu $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl zext_remuw_aext_sext
zext_remuw_aext_sext:
.p2align 2
	divu $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl zext_remuw_aext_zext
zext_remuw_aext_zext:
.p2align 2
	divu $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl zext_remuw_sext_aext
zext_remuw_sext_aext:
.p2align 2
	divu $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl zext_remuw_sext_sext
zext_remuw_sext_sext:
.p2align 2
	divu $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl zext_remuw_sext_zext
zext_remuw_sext_zext:
.p2align 2
	divu $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl zext_remuw_zext_aext
zext_remuw_zext_aext:
.p2align 2
	divu $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl zext_remuw_zext_sext
zext_remuw_zext_sext:
.p2align 2
	divu $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl zext_remuw_zext_zext
zext_remuw_zext_zext:
.p2align 2
	divu $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl zext_remuw_zext_zext_i16
zext_remuw_zext_zext_i16:
.p2align 2
	andi $t0, $a0, 65535
	andi $t1, $a1, 65535
	div $zero, $t0, $t1
	mfhi $t0
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl zext_remuw_zext_zext_i8
zext_remuw_zext_zext_i8:
.p2align 2
	andi $t0, $a0, 255
	andi $t1, $a1, 255
	div $zero, $t0, $t1
	mfhi $t0
	andi $v0, $t0, 255
	jr $ra
	nop
.globl zext_remw_aext_aext
zext_remw_aext_aext:
.p2align 2
	div $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl zext_remw_aext_sext
zext_remw_aext_sext:
.p2align 2
	div $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl zext_remw_aext_zext
zext_remw_aext_zext:
.p2align 2
	div $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl zext_remw_sext_aext
zext_remw_sext_aext:
.p2align 2
	div $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl zext_remw_sext_sext
zext_remw_sext_sext:
.p2align 2
	div $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl zext_remw_sext_zext
zext_remw_sext_zext:
.p2align 2
	div $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl zext_remw_zext_aext
zext_remw_zext_aext:
.p2align 2
	div $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl zext_remw_zext_sext
zext_remw_zext_sext:
.p2align 2
	div $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl zext_remw_zext_zext
zext_remw_zext_zext:
.p2align 2
	div $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
