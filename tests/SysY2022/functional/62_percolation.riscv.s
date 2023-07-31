.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
array:
	.zero	440
.text
findfa:
.p2align 2
	addi sp, sp, -48
pcrel75:
	auipc a1, %pcrel_hi(array)
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s1, 16(sp)
	addi a0, a1, %pcrel_lo(pcrel75)
	sd s2, 24(sp)
	sh2add a1, s0, a0
	mv s1, a0
	sd s3, 32(sp)
	sd s4, 40(sp)
	lw s2, 0(a1)
	beq s0, s2, label22
	sh2add a1, s2, a0
	lw s3, 0(a1)
	bne s2, s3, label7
	mv a0, s2
	sh2add a1, s0, s1
	sw s2, 0(a1)
	j label2
label22:
	mv a0, s0
label2:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 48
	ret
label7:
	sh2add a1, s3, s1
	lw s4, 0(a1)
	beq s3, s4, label38
	sh2add a1, s4, s1
	lw a0, 0(a1)
	bne s4, a0, label13
	mv a0, s4
	sh2add a1, s3, s1
	sw s4, 0(a1)
	sh2add a1, s2, s1
	sw s4, 0(a1)
	sh2add a1, s0, s1
	sw s4, 0(a1)
	j label2
label13:
	jal findfa
	sh2add a1, s4, s1
	sw a0, 0(a1)
	sh2add a1, s3, s1
	sw a0, 0(a1)
	sh2add a1, s2, s1
	sw a0, 0(a1)
	sh2add a1, s0, s1
	sw a0, 0(a1)
	j label2
label38:
	mv a0, s3
	sh2add a1, s2, s1
	sw s3, 0(a1)
	sh2add a1, s0, s1
	sw s3, 0(a1)
	j label2
.globl main
main:
.p2align 2
	addi sp, sp, -48
pcrel510:
	auipc a0, %pcrel_hi(array)
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a0, %pcrel_lo(pcrel510)
	sd s1, 16(sp)
	li s1, 1
	sd s2, 24(sp)
	sd s3, 32(sp)
	sd s4, 40(sp)
	beq s1, zero, label116
.p2align 2
label79:
	addiw s1, s1, -1
	li a0, -1
	mv s2, zero
	sw a0, 4(s0)
	sw a0, 8(s0)
	sw a0, 12(s0)
	sw a0, 16(s0)
	sw a0, 20(s0)
	sw a0, 24(s0)
	sw a0, 28(s0)
	sw a0, 32(s0)
	sw a0, 36(s0)
	sw a0, 40(s0)
	sw a0, 44(s0)
	sw a0, 48(s0)
	sw a0, 52(s0)
	sw a0, 56(s0)
	sw a0, 60(s0)
	sw a0, 64(s0)
	sw a0, 68(s0)
	mv s3, zero
	li a0, 10
	bge zero, a0, label143
.p2align 2
label83:
	jal getint
	mv s4, a0
	jal getint
	addiw s3, s3, 1
	mv a3, a0
	bne s2, zero, label149
	addiw a0, s4, -1
	sh2add a2, a0, a3
	li a0, 1
	sh2add a1, a2, s0
	sw a2, 0(a1)
	beq s4, a0, label85
	li a0, 4
	beq s4, a0, label112
	blt a3, a0, label89
	li a0, 1
	bgt a3, a0, label109
	li a0, 4
	blt s4, a0, label106
	li a0, 1
	bgt s4, a0, label103
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label102
	mv a0, zero
	li a0, 10
	blt s3, a0, label83
	j label355
.p2align 2
label164:
	li a0, 4
	beq s4, a0, label112
	blt a3, a0, label89
	li a0, 1
	bgt a3, a0, label109
	li a0, 4
	blt s4, a0, label106
	li a0, 1
	bgt s4, a0, label103
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label102
	mv a0, zero
	li a0, 10
	blt s3, a0, label83
.p2align 2
label355:
	bne s2, zero, label379
.p2align 2
label115:
	li a0, -1
	jal putint
	li a0, 10
	jal putch
	bne s1, zero, label79
	j label116
.p2align 2
label91:
	sh2add a1, a5, s0
	sw a0, 0(a1)
	li a0, 1
	ble a3, a0, label93
.p2align 2
label109:
	addiw a3, a2, -1
	li a1, -1
	sh2add a4, a3, s0
	lw a0, 0(a4)
	beq a0, a1, label259
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, a3
	jal findfa
	beq a4, a0, label265
	sh2add a1, a4, s0
	sw a0, 0(a1)
	li a0, 4
	blt s4, a0, label106
	li a0, 1
	bgt s4, a0, label103
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label102
	mv a0, zero
	li a0, 10
	blt s3, a0, label83
	beq s2, zero, label115
	bne s1, zero, label79
label116:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 48
	ret
.p2align 2
label265:
	li a0, 4
	blt s4, a0, label106
	li a0, 1
	bgt s4, a0, label103
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label102
	mv a0, zero
	li a0, 10
	blt s3, a0, label83
	beq s2, zero, label115
	bne s1, zero, label79
	j label116
.p2align 2
label88:
	li a0, 4
	bge a3, a0, label174
.p2align 2
label89:
	addiw a4, a2, 1
	li a1, -1
	sh2add a5, a4, s0
	lw a0, 0(a5)
	beq a0, a1, label182
	mv a0, a2
	jal findfa
	mv a5, a0
	mv a0, a4
	jal findfa
	bne a5, a0, label91
	li a0, 1
	bgt a3, a0, label109
	li a0, 4
	blt s4, a0, label106
	li a0, 1
	bgt s4, a0, label103
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label102
	mv a0, zero
	li a0, 10
	blt s3, a0, label83
	beq s2, zero, label115
	j label379
.p2align 2
label182:
	li a0, 1
	bgt a3, a0, label109
	li a0, 4
	blt s4, a0, label106
	li a0, 1
	bgt s4, a0, label103
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label102
	mv a0, zero
	li a0, 10
	blt s3, a0, label83
	beq s2, zero, label115
	j label379
.p2align 2
label174:
	li a0, 1
	bgt a3, a0, label109
	li a0, 4
	blt s4, a0, label106
	li a0, 1
	bgt s4, a0, label103
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label102
	mv a0, zero
	li a0, 10
	blt s3, a0, label83
	beq s2, zero, label115
	j label379
.p2align 2
label85:
	sw zero, 0(s0)
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, zero
	jal findfa
	beq a4, a0, label164
	sh2add a1, a4, s0
	sw a0, 0(a1)
	li a0, 4
	beq s4, a0, label112
	j label88
.p2align 2
label379:
	bne s1, zero, label79
	j label116
.p2align 2
label112:
	li a5, 17
	sw a5, 68(s0)
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, a5
	jal findfa
	beq a4, a0, label274
	sh2add a1, a4, s0
	sw a0, 0(a1)
	li a0, 4
	blt a3, a0, label89
	li a0, 1
	bgt a3, a0, label109
	li a0, 4
	blt s4, a0, label106
	li a0, 1
	bgt s4, a0, label103
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label102
	mv a0, zero
	li a0, 10
	blt s3, a0, label83
	beq s2, zero, label115
	j label379
.p2align 2
label274:
	li a0, 4
	blt a3, a0, label89
	li a0, 1
	bgt a3, a0, label109
	li a0, 4
	blt s4, a0, label106
	li a0, 1
	bgt s4, a0, label103
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label102
	mv a0, zero
	li a0, 10
	blt s3, a0, label83
	beq s2, zero, label115
	j label379
.p2align 2
label143:
	beq s2, zero, label115
	bne s1, zero, label79
	j label116
.p2align 2
label93:
	li a0, 4
	blt s4, a0, label106
	j label94
.p2align 2
label102:
	lw a1, 68(s0)
	xori a2, a1, -1
	sltu a0, zero, a2
	bne a0, zero, label101
	mv a0, zero
	li a0, 10
	blt s3, a0, label83
	j label414
.p2align 2
label106:
	addiw a3, a2, 4
	li a1, -1
	sh2add a4, a3, s0
	lw a0, 0(a4)
	bne a0, a1, label107
	li a0, 1
	bgt s4, a0, label103
	lw a0, 0(s0)
	bne a0, a1, label102
	mv a0, zero
	li a0, 10
	blt s3, a0, label83
	beq s2, zero, label115
	bne s1, zero, label79
	j label116
.p2align 2
label414:
	beq s2, zero, label115
	bne s1, zero, label79
	j label116
.p2align 2
label101:
	mv a0, zero
	jal findfa
	mv a2, a0
	li a0, 17
	jal findfa
	xor a1, a2, a0
	sltiu a0, a1, 1
	bne a0, zero, label100
	li a0, 10
	blt s3, a0, label83
	beq s2, zero, label115
	bne s1, zero, label79
	j label116
.p2align 2
label100:
	mv a0, s3
	jal putint
	li a0, 10
	jal putch
	li s2, 1
	li a0, 10
	blt s3, a0, label83
	beq s2, zero, label115
	bne s1, zero, label79
	j label116
.p2align 2
label107:
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, a3
	jal findfa
	beq a4, a0, label249
	sh2add a1, a4, s0
	sw a0, 0(a1)
	li a0, 1
	bgt s4, a0, label103
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label102
	mv a0, zero
	li a0, 10
	blt s3, a0, label83
	beq s2, zero, label115
	bne s1, zero, label79
	j label116
.p2align 2
label249:
	li a0, 1
	bgt s4, a0, label103
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label102
	mv a0, zero
	li a0, 10
	blt s3, a0, label83
	beq s2, zero, label115
	bne s1, zero, label79
	j label116
.p2align 2
label94:
	li a0, 1
	ble s4, a0, label95
.p2align 2
label103:
	addiw a3, a2, -4
	li a1, -1
	sh2add a4, a3, s0
	lw a0, 0(a4)
	bne a0, a1, label104
	lw a0, 0(s0)
	bne a0, a1, label102
	mv a0, zero
	li a0, 10
	blt s3, a0, label83
	beq s2, zero, label115
	bne s1, zero, label79
	j label116
.p2align 2
label259:
	li a0, 4
	blt s4, a0, label106
	li a0, 1
	bgt s4, a0, label103
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label102
	mv a0, zero
	li a0, 10
	blt s3, a0, label83
	beq s2, zero, label115
	bne s1, zero, label79
	j label116
.p2align 2
label149:
	li a0, 10
	blt s3, a0, label83
	beq s2, zero, label115
	bne s1, zero, label79
	j label116
.p2align 2
label104:
	mv a0, a2
	jal findfa
	mv a2, a0
	mv a0, a3
	jal findfa
	beq a2, a0, label233
	sh2add a1, a2, s0
	sw a0, 0(a1)
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label102
	mv a0, zero
	li a0, 10
	blt s3, a0, label83
	beq s2, zero, label115
	bne s1, zero, label79
	j label116
.p2align 2
label233:
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label102
	mv a0, zero
	li a0, 10
	blt s3, a0, label83
	beq s2, zero, label115
	bne s1, zero, label79
	j label116
.p2align 2
label95:
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label102
	mv a0, zero
	li a0, 10
	blt s3, a0, label83
	j label355
