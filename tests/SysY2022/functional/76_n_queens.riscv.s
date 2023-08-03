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
	sd ra, 0(sp)
	sd s9, 8(sp)
	mv s9, a0
	sd s1, 16(sp)
	mv s1, a2
	sd s6, 24(sp)
pcrel139:
	auipc a2, %pcrel_hi(row)
	sd s5, 32(sp)
	sd s0, 40(sp)
	sd s3, 48(sp)
	addiw s3, a0, 1
	sd s4, 56(sp)
	sd s2, 64(sp)
	sd s7, 72(sp)
	li s7, 1
	sd s8, 80(sp)
	mv s0, s7
	sd s10, 88(sp)
	sd s11, 96(sp)
	sd a0, 112(sp)
pcrel140:
	auipc a0, %pcrel_hi(ans)
	sd a1, 104(sp)
	addi s5, a0, %pcrel_lo(pcrel140)
pcrel141:
	auipc a1, %pcrel_hi(line1)
	addi a0, a2, %pcrel_lo(pcrel139)
	addi s4, a1, %pcrel_lo(pcrel141)
	addi s2, a0, 4
pcrel142:
	auipc a2, %pcrel_hi(line2)
	addi s6, a2, %pcrel_lo(pcrel142)
	lw a0, 0(s1)
	bgt s7, a0, label19
.p2align 2
label5:
	lw a1, 0(s2)
	bne a1, s0, label6
	addiw s7, s7, 1
	addi s2, s2, 4
	lw a0, 0(s1)
	ble s7, a0, label5
	j label19
.p2align 2
label6:
	ld s9, 112(sp)
	addw s8, s9, s7
	sh2add a2, s8, s4
	lw a1, 0(a2)
	bne a1, zero, label48
	addw a3, s9, a0
	subw a4, a3, s7
	sh2add a2, a4, s6
	lw a1, 0(a2)
	beq a1, zero, label8
	addiw s7, s7, 1
	addi s2, s2, 4
	lw a0, 0(s1)
	ble s7, a0, label5
	j label19
.p2align 2
label8:
	ld s9, 112(sp)
	sh2add a1, s9, s5
	sw s7, 0(a1)
	beq s9, a0, label11
.p2align 2
label9:
	ld s9, 112(sp)
	sh2add s10, s8, s4
	sw s0, 0(s2)
	addw a1, s9, a0
	sw s0, 0(s10)
	subw a3, a1, s7
	sh2add a2, a3, s6
	sw s0, 0(a2)
	ld a1, 104(sp)
	mv a0, s3
	mv a2, s1
	jal f
	sw zero, 0(s2)
	addi s2, s2, 4
	sw zero, 0(s10)
	lw a1, 0(s1)
	addw a0, s9, a1
	subw a2, a0, s7
	addiw s7, s7, 1
	sh2add a3, a2, s6
	sw zero, 0(a3)
	lw a0, 0(s1)
	ble s7, a0, label5
	j label19
.p2align 2
label11:
	ld a1, 104(sp)
	addi s9, s5, 4
	mv s10, s0
	lw a0, 0(a1)
	addi a2, a0, 1
	sw a2, 0(a1)
	lw s11, 0(s1)
	ble s0, s11, label15
label82:
	mv a0, s11
	j label9
.p2align 2
label15:
	lw a0, 0(s9)
	jal putint
	beq s10, s11, label16
	li a0, 32
	jal putch
	lw s11, 0(s1)
	addi s9, s9, 4
	addiw s10, s10, 1
	ble s10, s11, label15
	j label82
label19:
	ld ra, 0(sp)
	ld s9, 8(sp)
	ld s1, 16(sp)
	ld s6, 24(sp)
	ld s5, 32(sp)
	ld s0, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s2, 64(sp)
	ld s7, 72(sp)
	ld s8, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 120
	ret
.p2align 2
label48:
	addiw s7, s7, 1
	addi s2, s2, 4
	lw a0, 0(s1)
	ble s7, a0, label5
	j label19
label16:
	li a0, 10
	jal putch
	lw a0, 0(s1)
	j label9
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
