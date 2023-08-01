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
	addi sp, sp, -104
	sd ra, 0(sp)
	sd s1, 8(sp)
	mv s1, a0
	sd s6, 16(sp)
pcrel139:
	auipc a0, %pcrel_hi(ans)
	sd s4, 24(sp)
	mv s4, a1
	sd s0, 32(sp)
	mv s0, a2
	sd s5, 40(sp)
	addi s5, a0, %pcrel_lo(pcrel139)
	sd s7, 48(sp)
pcrel140:
	auipc a0, %pcrel_hi(row)
	addiw s7, s1, 1
	sd s2, 56(sp)
	addi s2, a0, %pcrel_lo(pcrel140)
	sd s8, 64(sp)
pcrel141:
	auipc a0, %pcrel_hi(line1)
	sd s3, 72(sp)
	addi s6, a0, %pcrel_lo(pcrel141)
	li s3, 1
pcrel142:
	auipc a0, %pcrel_hi(line2)
	sd s9, 80(sp)
	addi s8, a0, %pcrel_lo(pcrel142)
	sd s10, 88(sp)
	sd s11, 96(sp)
	lw a0, 0(a2)
	bgt s3, a0, label4
.p2align 2
label5:
	sh2add a2, s3, s2
	li a3, 1
	lw a1, 0(a2)
	bne a1, a3, label7
	addiw s3, s3, 1
	lw a0, 0(s0)
	ble s3, a0, label5
	j label4
.p2align 2
label7:
	addw s9, s1, s3
	sh2add a2, s9, s6
	lw a1, 0(a2)
	bne a1, zero, label49
	addw a2, s1, a0
	subw a1, a2, s3
	sh2add a3, a1, s8
	lw a2, 0(a3)
	beq a2, zero, label9
	addiw s3, s3, 1
	lw a0, 0(s0)
	ble s3, a0, label5
	j label4
.p2align 2
label9:
	sh2add a1, s1, s5
	sw s3, 0(a1)
	beq s1, a0, label10
	lw s11, 0(s0)
.p2align 2
label16:
	addw a1, s1, s11
	sh2add s10, s3, s2
	sh2add s9, s9, s6
	subw a2, a1, s3
	li a1, 1
	sh2add a0, a2, s8
	sw a1, 0(s10)
	sw a1, 0(s9)
	sw a1, 0(a0)
	mv a0, s7
	mv a1, s4
	mv a2, s0
	jal f
	sw zero, 0(s10)
	sw zero, 0(s9)
	lw a2, 0(s0)
	addw a0, s1, a2
	subw a1, a0, s3
	sh2add a2, a1, s8
	sw zero, 0(a2)
	addiw s3, s3, 1
	lw a0, 0(s0)
	ble s3, a0, label5
	j label4
label10:
	lw a0, 0(s4)
	li s10, 1
	addi a1, a0, 1
	sw a1, 0(s4)
	lw s11, 0(s0)
	bgt s10, s11, label16
label13:
	sh2add a1, s10, s5
	lw a0, 0(a1)
	jal putint
	beq s10, s11, label15
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
	ld s4, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s7, 48(sp)
	ld s2, 56(sp)
	ld s8, 64(sp)
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
label15:
	li a0, 10
	jal putch
	lw s11, 0(s0)
	j label16
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
	ble a0, zero, label155
	mv s2, a0
.p2align 2
label144:
	jal getint
	sw a0, 36(sp)
	mv a1, s1
	li a0, 1
	mv a2, s0
	jal f
	addiw s2, s2, -1
	bgt s2, zero, label144
	lw a0, 32(sp)
label147:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 40
	ret
label155:
	mv a0, zero
	j label147
