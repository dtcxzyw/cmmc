.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
ans:
	.zero	200
.p2align 3
row:
	.zero	200
.p2align 3
line1:
	.zero	200
.p2align 3
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
	sd s4, 32(sp)
	sd s5, 40(sp)
	sd s0, 48(sp)
	li s0, 1
	sd s3, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s11, 88(sp)
	sd s10, 96(sp)
	sd a1, 112(sp)
pcrel154:
	auipc a1, %pcrel_hi(ans)
	lw a3, 0(a2)
	addi s6, a1, %pcrel_lo(pcrel154)
	sd a0, 104(sp)
pcrel155:
	auipc a1, %pcrel_hi(line2)
pcrel156:
	auipc a0, %pcrel_hi(line1)
	addi s5, a1, %pcrel_lo(pcrel155)
	addi s4, a0, %pcrel_lo(pcrel156)
	ble a3, zero, label23
pcrel157:
	auipc a1, %pcrel_hi(row)
	mv s7, s0
	addi a0, a1, %pcrel_lo(pcrel157)
	addi s3, a0, 4
	lw a0, 0(s3)
	bne a0, s0, label6
	lw a0, 0(a2)
	addiw s7, s0, 1
	bge a0, s7, label22
	j label23
.p2align 2
label52:
	lw a0, 0(s1)
	addiw s7, s7, 1
	blt a0, s7, label23
.p2align 2
label22:
	addi s3, s3, 4
	lw a0, 0(s3)
	bne a0, s0, label6
	lw a0, 0(s1)
	addiw s7, s7, 1
	bge a0, s7, label22
label23:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s1, 16(sp)
	ld s6, 24(sp)
	ld s4, 32(sp)
	ld s5, 40(sp)
	ld s0, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s11, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 120
	ret
.p2align 2
label6:
	addw s8, s2, s7
	sh2add a0, s8, s4
	lw a1, 0(a0)
	bne a1, zero, label52
	lw a0, 0(s1)
	addw a3, s2, a0
	subw a4, a3, s7
	sh2add a1, a4, s5
	lw a2, 0(a1)
	beq a2, zero, label8
	addiw s7, s7, 1
	bge a0, s7, label22
	j label23
.p2align 2
label8:
	sh2add a1, s2, s6
	sw s7, 0(a1)
	bne s2, a0, label68
	ld a1, 112(sp)
	addi s9, s6, 4
	mv s10, s0
	lw a2, 0(a1)
	addi a0, a2, 1
	sw a0, 0(a1)
	lw s11, 0(s1)
	bgt s0, s11, label9
.p2align 2
label16:
	lw a0, 0(s9)
	jal putint
	bne s10, s11, label17
	li a0, 10
	jal putch
	lw s11, 0(s1)
	j label9
.p2align 2
label68:
	lw s11, 0(s1)
.p2align 2
label9:
	addw a0, s2, s11
	sh2add s9, s8, s4
	sw s0, 0(s3)
	subw a1, a0, s7
	sw s0, 0(s9)
	sh2add a2, a1, s5
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
	sh2add a3, a2, s5
	sw zero, 0(a3)
	bge a0, s7, label22
	j label23
label17:
	li a0, 32
	jal putch
	lw s11, 0(s1)
	addi s9, s9, 4
	addiw s10, s10, 1
	ble s10, s11, label16
	j label9
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
	ble a0, zero, label170
	mv s2, a0
.p2align 2
label159:
	jal getint
	sw a0, 36(sp)
	mv a1, s1
	li a0, 1
	mv a2, s0
	jal f
	addiw s2, s2, -1
	bgt s2, zero, label159
	lw a0, 32(sp)
label162:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 40
	ret
label170:
	mv a0, zero
	j label162
