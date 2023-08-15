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
	# stack usage: CalleeArg[0] Local[0] RegSpill[16] CalleeSaved[104]
	addi sp, sp, -120
	sd ra, 0(sp)
	sd s2, 8(sp)
	mv s2, a0
	sd s1, 16(sp)
	addiw a0, a0, 1
	mv s1, a2
	sd s6, 24(sp)
	sd s5, 32(sp)
	sd s0, 40(sp)
	li s0, 1
	sd s4, 48(sp)
	sd s3, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s11, 88(sp)
	sd s10, 96(sp)
	sd a1, 112(sp)
pcrel153:
	auipc a1, %pcrel_hi(row)
	lw a3, 0(a2)
pcrel154:
	auipc a2, %pcrel_hi(ans)
	sd a0, 104(sp)
	addi s5, a2, %pcrel_lo(pcrel154)
	addi a0, a1, %pcrel_lo(pcrel153)
pcrel155:
	auipc a2, %pcrel_hi(line1)
pcrel156:
	auipc a1, %pcrel_hi(line2)
	addi s4, a2, %pcrel_lo(pcrel155)
	addi s6, a1, %pcrel_lo(pcrel156)
	ble a3, zero, label2
	addi s3, a0, 4
	mv s7, s0
	lw a0, 0(s3)
	bne a0, s0, label8
	lw a0, 0(s1)
	addiw s7, s0, 1
	bge a0, s7, label23
	j label2
.p2align 2
label146:
	lw a0, 0(s1)
	addiw s7, s7, 1
	blt a0, s7, label2
.p2align 2
label23:
	addi s3, s3, 4
	lw a0, 0(s3)
	beq a0, s0, label146
.p2align 2
label8:
	addw s8, s2, s7
	sh2add a1, s8, s4
	lw a0, 0(a1)
	beq a0, zero, label9
	lw a0, 0(s1)
	addiw s7, s7, 1
	bge a0, s7, label23
	j label2
.p2align 2
label9:
	lw a0, 0(s1)
	addw a4, s2, a0
	subw a3, a4, s7
	sh2add a2, a3, s6
	lw a1, 0(a2)
	beq a1, zero, label10
	addiw s7, s7, 1
	bge a0, s7, label23
	j label2
.p2align 2
label10:
	sh2add a1, s2, s5
	sw s7, 0(a1)
	beq s2, a0, label14
	lw s11, 0(s1)
.p2align 2
label11:
	addw a1, s2, s11
	sh2add s9, s8, s4
	sw s0, 0(s3)
	subw a0, a1, s7
	sw s0, 0(s9)
	sh2add a2, a0, s6
	sw s0, 0(a2)
	ld a0, 104(sp)
	ld a1, 112(sp)
	mv a2, s1
	jal f
	sw zero, 0(s3)
	sw zero, 0(s9)
	lw a0, 0(s1)
	addw a1, s2, a0
	subw a2, a1, s7
	addiw s7, s7, 1
	sh2add a3, a2, s6
	sw zero, 0(a3)
	bge a0, s7, label23
	j label2
.p2align 2
label14:
	ld a1, 112(sp)
	addi s9, s5, 4
	mv s10, s0
	lw a2, 0(a1)
	addi a0, a2, 1
	sw a0, 0(a1)
	lw s11, 0(s1)
	bgt s0, s11, label11
.p2align 2
label18:
	lw a0, 0(s9)
	jal putint
	bne s10, s11, label19
	li a0, 10
	jal putch
	lw s11, 0(s1)
	j label11
label19:
	li a0, 32
	jal putch
	lw s11, 0(s1)
	addi s9, s9, 4
	addiw s10, s10, 1
	ble s10, s11, label18
	j label11
label2:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s1, 16(sp)
	ld s6, 24(sp)
	ld s5, 32(sp)
	ld s0, 40(sp)
	ld s4, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s11, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 120
	ret
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[8] RegSpill[0] CalleeSaved[32]
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
