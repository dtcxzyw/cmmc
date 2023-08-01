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
.p2align 2
f:
	addi sp, sp, -112
	sd ra, 0(sp)
	sd s3, 8(sp)
	mv s3, a0
	sd s2, 16(sp)
pcrel143:
	auipc a0, %pcrel_hi(ans)
	mv s2, a2
	sd s7, 24(sp)
	addi s7, a0, %pcrel_lo(pcrel143)
	sd s4, 32(sp)
pcrel144:
	auipc a0, %pcrel_hi(row)
	addiw s4, s3, 1
	sd s5, 40(sp)
	addi s5, a0, %pcrel_lo(pcrel144)
	sd s0, 48(sp)
pcrel145:
	auipc a0, %pcrel_hi(line2)
	sd s6, 56(sp)
	sd s1, 64(sp)
	li s1, 1
	sd s8, 72(sp)
	mv s0, s1
	addi s8, a0, %pcrel_lo(pcrel145)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	sd a1, 104(sp)
pcrel146:
	auipc a1, %pcrel_hi(line1)
	addi s6, a1, %pcrel_lo(pcrel146)
	lw a0, 0(a2)
	bgt s1, a0, label17
.p2align 2
label4:
	sh2add a1, s1, s5
	lw a2, 0(a1)
	bne a2, s0, label5
	addiw s1, s1, 1
	lw a0, 0(s2)
	ble s1, a0, label4
	j label17
.p2align 2
label5:
	addw s9, s3, s1
	sh2add a2, s9, s6
	lw a1, 0(a2)
	bne a1, zero, label47
	addw a1, s3, a0
	subw a3, a1, s1
	sh2add a2, a3, s8
	lw a1, 0(a2)
	beq a1, zero, label7
	addiw s1, s1, 1
	lw a0, 0(s2)
	ble s1, a0, label4
	j label17
.p2align 2
label7:
	sh2add a1, s3, s7
	sw s1, 0(a1)
	beq s3, a0, label10
.p2align 2
label8:
	addw a1, s3, a0
	sh2add s10, s1, s5
	sh2add s9, s9, s6
	subw a2, a1, s1
	sw s0, 0(s10)
	sh2add a0, a2, s8
	sw s0, 0(s9)
	sw s0, 0(a0)
	ld a1, 104(sp)
	mv a0, s4
	mv a2, s2
	jal f
	sw zero, 0(s10)
	sw zero, 0(s9)
	lw a1, 0(s2)
	addw a2, s3, a1
	subw a0, a2, s1
	sh2add a1, a0, s8
	sw zero, 0(a1)
	addiw s1, s1, 1
	lw a0, 0(s2)
	ble s1, a0, label4
	j label17
.p2align 2
label10:
	ld a1, 104(sp)
	mv s10, s0
	lw a2, 0(a1)
	addi a0, a2, 1
	sw a0, 0(a1)
	lw s11, 0(s2)
	bgt s0, s11, label82
.p2align 2
label13:
	sh2add a1, s10, s7
	lw a0, 0(a1)
	jal putint
	bne s10, s11, label14
	li a0, 10
	jal putch
	lw a0, 0(s2)
	j label8
label82:
	mv a0, s11
	j label8
label14:
	li a0, 32
	jal putch
	addiw s10, s10, 1
	lw s11, 0(s2)
	ble s10, s11, label13
	j label82
label17:
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s2, 16(sp)
	ld s7, 24(sp)
	ld s4, 32(sp)
	ld s5, 40(sp)
	ld s0, 48(sp)
	ld s6, 56(sp)
	ld s1, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 112
	ret
.p2align 2
label47:
	addiw s1, s1, 1
	lw a0, 0(s2)
	ble s1, a0, label4
	j label17
.p2align 2
.globl main
main:
	addi sp, sp, -40
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 36
	sd s1, 16(sp)
	addi s1, sp, 32
	sd s2, 24(sp)
	sw zero, 32(sp)
	jal getint
	ble a0, zero, label159
	mv s2, a0
.p2align 2
label148:
	jal getint
	sw a0, 36(sp)
	mv a1, s1
	li a0, 1
	mv a2, s0
	jal f
	addiw s2, s2, -1
	bgt s2, zero, label148
	lw a0, 32(sp)
label151:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 40
	ret
label159:
	mv a0, zero
	j label151
