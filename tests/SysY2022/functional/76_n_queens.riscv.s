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
	addi sp, sp, -120
pcrel153:
	auipc a3, %pcrel_hi(line1)
	sd ra, 0(sp)
	sd s9, 8(sp)
	mv s9, a0
	sd s1, 16(sp)
	mv s1, a2
	sd s6, 24(sp)
pcrel154:
	auipc a2, %pcrel_hi(ans)
	sd s4, 32(sp)
	addi s4, a2, %pcrel_lo(pcrel154)
	sd s3, 40(sp)
pcrel155:
	auipc a2, %pcrel_hi(row)
	addiw s3, a0, 1
	sd s5, 48(sp)
	addi s5, a3, %pcrel_lo(pcrel153)
	sd s0, 56(sp)
	li s0, 1
	sd s2, 64(sp)
	sd s7, 72(sp)
	sd s8, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	sd a0, 112(sp)
	sd a1, 104(sp)
	addi a1, a2, %pcrel_lo(pcrel155)
	lw a0, 0(s1)
pcrel156:
	auipc a2, %pcrel_hi(line2)
	addi s6, a2, %pcrel_lo(pcrel156)
	ble a0, zero, label23
	addi s2, a1, 4
	mv s7, s0
	lw a0, 0(s2)
	bne a0, s0, label10
	lw a0, 0(s1)
	addiw s7, s0, 1
	blt a0, s7, label23
.p2align 2
label9:
	addi s2, s2, 4
	lw a0, 0(s2)
	bne a0, s0, label10
	lw a0, 0(s1)
	addiw s7, s7, 1
	bge a0, s7, label9
	j label23
.p2align 2
label10:
	ld s9, 112(sp)
	addw s8, s9, s7
	sh2add a0, s8, s5
	lw a1, 0(a0)
	beq a1, zero, label11
	lw a0, 0(s1)
	addiw s7, s7, 1
	bge a0, s7, label9
	j label23
.p2align 2
label11:
	lw a0, 0(s1)
	ld s9, 112(sp)
	addw a1, s9, a0
	subw a2, a1, s7
	sh2add a4, a2, s6
	lw a3, 0(a4)
	bne a3, zero, label69
	sh2add a1, s9, s4
	sw s7, 0(a1)
	bne s9, a0, label75
	ld a1, 104(sp)
	addi s9, s4, 4
	mv s10, s0
	lw a0, 0(a1)
	addi a2, a0, 1
	sw a2, 0(a1)
	lw s11, 0(s1)
	bgt s0, s11, label83
.p2align 2
label17:
	lw a0, 0(s9)
	jal putint
	bne s10, s11, label18
	li a0, 10
	jal putch
	lw a0, 0(s1)
	j label20
.p2align 2
label75:
	lw a0, 0(s1)
.p2align 2
label20:
	ld s9, 112(sp)
	sh2add s10, s8, s5
	sw s0, 0(s2)
	addw a3, s9, a0
	sw s0, 0(s10)
	subw a1, a3, s7
	sh2add a2, a1, s6
	sw s0, 0(a2)
	ld a1, 104(sp)
	mv a0, s3
	mv a2, s1
	jal f
	sw zero, 0(s2)
	sw zero, 0(s10)
	lw a0, 0(s1)
	addw a3, s9, a0
	subw a1, a3, s7
	addiw s7, s7, 1
	sh2add a2, a1, s6
	sw zero, 0(a2)
	bge a0, s7, label9
	j label23
label83:
	mv a0, s11
	j label20
label18:
	li a0, 32
	jal putch
	addi s9, s9, 4
	addiw s10, s10, 1
	lw s11, 0(s1)
	ble s10, s11, label17
	j label83
label23:
	ld ra, 0(sp)
	ld s9, 8(sp)
	ld s1, 16(sp)
	ld s6, 24(sp)
	ld s4, 32(sp)
	ld s3, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	ld s2, 64(sp)
	ld s7, 72(sp)
	ld s8, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 120
	ret
.p2align 2
label69:
	addiw s7, s7, 1
	bge a0, s7, label9
	j label23
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
	ble a0, zero, label169
	mv s2, a0
.p2align 2
label158:
	jal getint
	sw a0, 36(sp)
	mv a1, s1
	li a0, 1
	mv a2, s0
	jal f
	addiw s2, s2, -1
	bgt s2, zero, label158
	lw a0, 32(sp)
label161:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 40
	ret
label169:
	mv a0, zero
	j label161
