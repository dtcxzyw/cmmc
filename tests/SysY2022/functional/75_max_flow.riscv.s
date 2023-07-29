.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
to:
	.zero	400
.align 8
cap:
	.zero	400
.align 8
rev:
	.zero	400
.text
dfs:
.p2align 2
	addi sp, sp, -80
	sd s1, 72(sp)
	mv s1, a0
	sd s6, 64(sp)
	sd s2, 56(sp)
	mv s2, a1
	sd s0, 48(sp)
	mv s0, a2
	sd s5, 40(sp)
	mv s5, a4
	sd s4, 32(sp)
	mv s4, a3
	sd s3, 24(sp)
	sd s8, 16(sp)
	sd s7, 8(sp)
	sd ra, 0(sp)
	bne a0, a1, label4
	mv a0, a2
	j label2
label4:
	sh2add a1, s1, s5
	li a0, 1
pcrel113:
	auipc a2, %pcrel_hi(to)
	mv s6, zero
	sw a0, 0(a1)
pcrel114:
	auipc a1, %pcrel_hi(cap)
	addi a0, a1, %pcrel_lo(pcrel114)
	sh2add a1, s1, s1
	mv s3, a0
	sh3add s8, a1, a0
	addi a0, a2, %pcrel_lo(pcrel113)
	sh3add s7, a1, a0
	j label5
label2:
	ld ra, 0(sp)
	ld s7, 8(sp)
	ld s8, 16(sp)
	ld s3, 24(sp)
	ld s4, 32(sp)
	ld s5, 40(sp)
	ld s0, 48(sp)
	ld s2, 56(sp)
	ld s6, 64(sp)
	ld s1, 72(sp)
	addi sp, sp, 80
	ret
label5:
	sh2add a0, s1, s4
	lw a1, 0(a0)
	blt s6, a1, label7
	mv a0, zero
	j label2
label7:
	sh2add a2, s6, s7
	lw a0, 0(a2)
	sh2add a1, a0, s5
	lw a2, 0(a1)
	beq a2, zero, label9
label8:
	addiw s6, s6, 1
	j label5
label9:
	sh2add a2, s6, s8
	lw a1, 0(a2)
	ble a1, zero, label8
	min a2, s0, a1
	mv a1, s2
	mv a3, s4
	mv a4, s5
	jal dfs
	ble a0, zero, label8
	sh2add a1, s6, s8
	lw a2, 0(a1)
	subw a3, a2, a0
pcrel115:
	auipc a2, %pcrel_hi(rev)
	sw a3, 0(a1)
	sh2add a3, s1, s1
	addi a1, a2, %pcrel_lo(pcrel115)
	sh3add a2, a3, a1
	sh2add a3, s6, s7
	sh2add a1, s6, a2
	lw a2, 0(a3)
	sh2add a3, a2, a2
	lw a1, 0(a1)
	sh3add a2, a3, s3
	sh2add a1, a1, a2
	lw a3, 0(a1)
	addw a2, a0, a3
	sw a2, 0(a1)
	j label2
.globl main
main:
.p2align 2
	addi sp, sp, -168
	sd s2, 40(sp)
	addi s2, sp, 0
	sd s1, 160(sp)
	addi s1, sp, 48
	sd s6, 152(sp)
	sd s0, 144(sp)
	sd s5, 136(sp)
	sd s3, 128(sp)
	sd s4, 120(sp)
	sd s8, 112(sp)
	sd s7, 104(sp)
	sd s9, 96(sp)
	sd ra, 88(sp)
	jal getint
	mv s0, a0
	jal getint
	sw zero, 48(sp)
	mv s6, a0
	sw zero, 52(sp)
pcrel228:
	auipc a0, %pcrel_hi(to)
	sw zero, 56(sp)
	addi s3, a0, %pcrel_lo(pcrel228)
	sw zero, 60(sp)
pcrel229:
	auipc a0, %pcrel_hi(cap)
	sw zero, 64(sp)
	addi s4, a0, %pcrel_lo(pcrel229)
	sw zero, 68(sp)
pcrel230:
	auipc a0, %pcrel_hi(rev)
	sw zero, 72(sp)
	addi s5, a0, %pcrel_lo(pcrel230)
	sw zero, 76(sp)
	sd zero, 80(sp)
	bgt s6, zero, label117
.p2align 2
label145:
	mv a5, zero
	j label119
.p2align 2
label117:
	jal getint
	sh2add s7, a0, s1
	mv s8, a0
	jal getint
	mv s9, a0
	jal getint
	addiw s6, s6, -1
	sh2add a2, s8, s8
	mv a1, a0
	sh3add a4, a2, s3
	lw a0, 0(s7)
	sh2add a3, a0, a4
	sh3add a4, a2, s4
	sh3add a2, a2, s5
	sw s9, 0(a3)
	sh2add a3, a0, a4
	sw a1, 0(a3)
	sh2add a1, s9, s1
	sh2add a3, a0, a2
	lw a2, 0(a1)
	sw a2, 0(a3)
	sh2add a3, s9, s9
	sh3add a5, a3, s3
	sh2add a4, a2, a5
	sh3add a5, a3, s4
	sw s8, 0(a4)
	sh3add a3, a3, s5
	sh2add a4, a2, a5
	sh2add a2, a2, a3
	sw zero, 0(a4)
	addi a3, a0, 1
	sw a0, 0(a2)
	sw a3, 0(s7)
	lw a0, 0(a1)
	addi a2, a0, 1
	sw a2, 0(a1)
	bgt s6, zero, label117
	j label145
label119:
	sw zero, 0(sp)
	li a0, 1
	lui a2, 458752
	sw zero, 4(sp)
	sd zero, 8(sp)
	sd zero, 16(sp)
	sd zero, 24(sp)
	sd zero, 32(sp)
	mv a1, s0
	mv a3, s1
	mv a4, s2
	jal dfs
	beq a0, zero, label121
	addw a5, a5, a0
	j label119
label121:
	mv a0, a5
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 88(sp)
	ld s9, 96(sp)
	ld s7, 104(sp)
	ld s8, 112(sp)
	ld s4, 120(sp)
	ld s3, 128(sp)
	ld s5, 136(sp)
	ld s0, 144(sp)
	ld s6, 152(sp)
	ld s1, 160(sp)
	ld s2, 40(sp)
	addi sp, sp, 168
	ret
