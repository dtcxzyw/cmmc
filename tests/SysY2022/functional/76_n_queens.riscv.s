.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
ans:
	.zero	200
.align 8
row:
	.zero	200
.align 8
line1:
	.zero	200
.align 8
line2:
	.zero	400
.text
f:
.p2align 2
	addi sp, sp, -104
	sd ra, 0(sp)
	sd s1, 8(sp)
	mv s1, a0
	sd s6, 16(sp)
pcrel140:
	auipc a0, %pcrel_hi(ans)
	sd s5, 24(sp)
	addi s6, a0, %pcrel_lo(pcrel140)
	mv s5, a1
pcrel141:
	auipc a0, %pcrel_hi(row)
	sd s0, 32(sp)
	mv s0, a2
	sd s8, 40(sp)
	addiw s8, s1, 1
	sd s2, 48(sp)
	addi s2, a0, %pcrel_lo(pcrel141)
	sd s4, 56(sp)
pcrel142:
	auipc a0, %pcrel_hi(line1)
	sd s7, 64(sp)
	addi s4, a0, %pcrel_lo(pcrel142)
	sd s3, 72(sp)
pcrel143:
	auipc a0, %pcrel_hi(line2)
	li s3, 1
	addi s7, a0, %pcrel_lo(pcrel143)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	lw a0, 0(a2)
	bgt s3, a0, label4
.p2align 2
label5:
	sh2add a3, s3, s2
	li a2, 1
	lw a1, 0(a3)
	bne a1, a2, label7
	addiw s3, s3, 1
	lw a0, 0(s0)
	ble s3, a0, label5
	j label4
.p2align 2
label7:
	addw s9, s1, s3
	sh2add a2, s9, s4
	lw a1, 0(a2)
	bne a1, zero, label49
	addw a2, s1, a0
	subw a1, a2, s3
	sh2add a3, a1, s7
	lw a2, 0(a3)
	beq a2, zero, label9
	addiw s3, s3, 1
	lw a0, 0(s0)
	ble s3, a0, label5
	j label4
.p2align 2
label9:
	sh2add a1, s1, s6
	sw s3, 0(a1)
	beq s1, a0, label10
	lw s11, 0(s0)
.p2align 2
label16:
	addw a1, s1, s11
	sh2add s10, s3, s2
	sh2add s9, s9, s4
	subw a2, a1, s3
	li a1, 1
	sh2add a0, a2, s7
	sw a1, 0(s10)
	sw a1, 0(s9)
	sw a1, 0(a0)
	mv a0, s8
	mv a1, s5
	mv a2, s0
	jal f
	sw zero, 0(s10)
	sw zero, 0(s9)
	lw a2, 0(s0)
	addw a0, s1, a2
	subw a1, a0, s3
	sh2add a2, a1, s7
	sw zero, 0(a2)
	addiw s3, s3, 1
	lw a0, 0(s0)
	ble s3, a0, label5
	j label4
label10:
	lw a0, 0(s5)
	li s10, 1
	addi a1, a0, 1
	sw a1, 0(s5)
	lw s11, 0(s0)
	bgt s10, s11, label16
.p2align 2
label13:
	sh2add a1, s10, s6
	lw a0, 0(a1)
	jal putint
	bne s10, s11, label14
	li a0, 10
	jal putch
	lw s11, 0(s0)
	j label16
label14:
	li a0, 32
	jal putch
	addiw s10, s10, 1
	lw s11, 0(s0)
	ble s10, s11, label13
	j label16
label4:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s5, 24(sp)
	ld s0, 32(sp)
	ld s8, 40(sp)
	ld s2, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s3, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 104
	ret
.p2align 2
label49:
	addiw s3, s3, 1
	lw a0, 0(s0)
	ble s3, a0, label5
	j label4
.globl main
main:
.p2align 2
	addi sp, sp, -40
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 36
	sd s1, 16(sp)
	addi s1, sp, 32
	sd s2, 24(sp)
	sw zero, 32(sp)
	jal getint
	ble a0, zero, label156
	mv s2, a0
.p2align 2
label145:
	jal getint
	sw a0, 36(sp)
	mv a1, s1
	li a0, 1
	mv a2, s0
	jal f
	addiw s2, s2, -1
	bgt s2, zero, label145
	lw a0, 32(sp)
label148:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 40
	ret
label156:
	mv a0, zero
	j label148
