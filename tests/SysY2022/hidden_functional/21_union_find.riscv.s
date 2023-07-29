.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
parent:
	.zero	4020
.text
find:
.p2align 2
	addi sp, sp, -48
pcrel73:
	auipc a1, %pcrel_hi(parent)
	sd s0, 40(sp)
	mv s0, a0
	sd s1, 32(sp)
	addi a0, a1, %pcrel_lo(pcrel73)
	sd s2, 24(sp)
	sh2add a1, s0, a0
	mv s1, a0
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	lw s2, 0(a1)
	bne s0, s2, label2
	mv a0, s0
	j label12
label2:
	sh2add a1, s2, s1
	lw s3, 0(a1)
	bne s2, s3, label5
	mv a0, s2
	sh2add a1, s0, s1
	sw s2, 0(a1)
	j label12
label5:
	sh2add a1, s3, s1
	lw s4, 0(a1)
	bne s3, s4, label8
	mv a0, s3
	sh2add a1, s2, s1
	sw s3, 0(a1)
	sh2add a1, s0, s1
	sw s3, 0(a1)
	j label12
label8:
	sh2add a1, s4, s1
	lw a0, 0(a1)
	bne s4, a0, label11
	mv a0, s4
	sh2add a1, s3, s1
	sw s4, 0(a1)
	sh2add a1, s2, s1
	sw s4, 0(a1)
	sh2add a1, s0, s1
	sw s4, 0(a1)
	j label12
label11:
	jal find
	sh2add a1, s4, s1
	sw a0, 0(a1)
	sh2add a1, s3, s1
	sw a0, 0(a1)
	sh2add a1, s2, s1
	sw a0, 0(a1)
	sh2add a1, s0, s1
	sw a0, 0(a1)
label12:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
.globl main
main:
.p2align 2
	addi sp, sp, -48
	sd s1, 40(sp)
	sd s2, 32(sp)
	sd s0, 24(sp)
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s1, a0
	jal getint
	mv s2, a0
pcrel220:
	auipc a0, %pcrel_hi(parent)
	addi s0, a0, %pcrel_lo(pcrel220)
	bgt s1, zero, label85
label75:
	bgt s2, zero, label103
	mv a0, zero
	mv a1, zero
	bgt s1, zero, label83
	j label84
.p2align 2
label103:
	mv s3, zero
	j label76
label86:
	addiw a0, s1, -4
	addiw a2, s1, -20
	li a1, 16
	bgt a0, a1, label139
	mv a2, zero
	j label89
label139:
	mv a1, zero
label87:
	sh2add a3, a1, s0
	addiw a5, a1, 1
	addiw a4, a1, 2
	addiw t0, a1, 3
	sw a1, 0(a3)
	sw a5, 4(a3)
	addiw a5, a1, 4
	sw a4, 8(a3)
	addiw a4, a1, 5
	sw t0, 12(a3)
	addiw t0, a1, 6
	sw a5, 16(a3)
	addiw a5, a1, 7
	sw a4, 20(a3)
	addiw a4, a1, 8
	sw t0, 24(a3)
	addiw t0, a1, 9
	sw a5, 28(a3)
	addiw a5, a1, 10
	sw a4, 32(a3)
	addiw a4, a1, 11
	sw t0, 36(a3)
	sw a5, 40(a3)
	addiw a5, a1, 12
	sw a4, 44(a3)
	addiw a4, a1, 13
	sw a5, 48(a3)
	addiw a5, a1, 14
	sw a4, 52(a3)
	addiw a4, a1, 15
	sw a5, 56(a3)
	addiw a1, a1, 16
	sw a4, 60(a3)
	bgt a2, a1, label87
	mv a2, a1
label89:
	sh2add a3, a2, s0
	addiw a1, a2, 1
	addiw a4, a2, 2
	sw a2, 0(a3)
	sw a1, 4(a3)
	addiw a1, a2, 3
	sw a4, 8(a3)
	addiw a2, a2, 4
	sw a1, 12(a3)
	bgt a0, a2, label89
	mv a0, a2
label91:
	sh2add a1, a0, s0
	sw a0, 0(a1)
	addiw a0, a0, 1
	bgt s1, a0, label91
	j label75
.p2align 2
label76:
	jal getint
	mv s4, a0
	jal getint
	mv a3, a0
	mv a0, s4
	jal find
	mv a2, a0
	mv a0, a3
	jal find
	bne a2, a0, label78
	addiw s3, s3, 1
	bgt s2, s3, label76
	mv a0, zero
	mv a1, zero
	bgt s1, zero, label83
	j label84
.p2align 2
label80:
	ble s1, a1, label84
.p2align 2
label83:
	sh2add a3, a1, s0
	lw a4, 0(a3)
	xor a2, a1, a4
	addiw a1, a1, 1
	sltiu a3, a2, 1
	addw a0, a0, a3
	j label80
label84:
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s0, 24(sp)
	ld s2, 32(sp)
	ld s1, 40(sp)
	addi sp, sp, 48
	ret
.p2align 2
label78:
	sh2add a0, a0, s0
	sw a2, 0(a0)
	addiw s3, s3, 1
	bgt s2, s3, label76
	mv a0, zero
	mv a1, zero
	bgt s1, zero, label83
	j label84
label85:
	li a1, 4
	bgt s1, a1, label86
	mv a0, zero
	j label91
