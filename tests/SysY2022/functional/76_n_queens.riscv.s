.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
ans:
	.zero	200
.align 4
row:
	.zero	200
.align 4
line1:
	.zero	200
.align 4
line2:
	.zero	400
.text
f:
	addi sp, sp, -104
	sd s0, 96(sp)
	mv s0, a0
	sd s5, 88(sp)
pcrel160:
	auipc a0, %pcrel_hi(ans)
	addiw s5, s0, 1
	sd s2, 80(sp)
	mv s2, a1
	sd s1, 72(sp)
	mv s1, a2
	sd s6, 64(sp)
	li s6, 1
	sd s4, 56(sp)
	addi s4, a0, %pcrel_lo(pcrel160)
	sd s3, 48(sp)
pcrel161:
	auipc a0, %pcrel_hi(row)
	sd s7, 40(sp)
	addi s3, a0, %pcrel_lo(pcrel161)
	sd s8, 32(sp)
pcrel162:
	auipc a0, %pcrel_hi(line1)
	sd s9, 24(sp)
	addi s7, a0, %pcrel_lo(pcrel162)
	sd s10, 16(sp)
pcrel163:
	auipc a0, %pcrel_hi(line2)
	sd s11, 8(sp)
	addi s8, a0, %pcrel_lo(pcrel163)
	sd ra, 0(sp)
	lw a0, 0(a2)
	bgt s6, a0, label4
	sh2add a3, s6, s3
	li a2, 1
	lw a1, 0(a3)
	beq a1, a2, label6
	addw s9, s0, s6
	sh2add a1, s9, s7
	lw a2, 0(a1)
	bne a2, zero, label6
	addw a1, s0, a0
	subw a3, a1, s6
	sh2add a2, a3, s8
	lw a1, 0(a2)
	bne a1, zero, label6
	sh2add a1, s0, s4
	sw s6, 0(a1)
	bne s0, a0, label65
	lw a0, 0(s2)
	li s10, 1
	addi a1, a0, 1
	sw a1, 0(s2)
	lw s11, 0(s1)
	bgt s10, s11, label85
	j label15
label6:
	addiw s6, s6, 1
	lw a0, 0(s1)
	bgt s6, a0, label4
	sh2add a3, s6, s3
	li a2, 1
	lw a1, 0(a3)
	beq a1, a2, label6
	addw s9, s0, s6
	sh2add a1, s9, s7
	lw a2, 0(a1)
	bne a2, zero, label6
	addw a1, s0, a0
	subw a3, a1, s6
	sh2add a2, a3, s8
	lw a1, 0(a2)
	bne a1, zero, label6
	sh2add a1, s0, s4
	sw s6, 0(a1)
	bne s0, a0, label65
	lw a0, 0(s2)
	li s10, 1
	addi a1, a0, 1
	sw a1, 0(s2)
	lw s11, 0(s1)
	bgt s10, s11, label85
	j label15
label10:
	addw a2, s0, a0
	sh2add s10, s6, s3
	sh2add s9, s9, s7
	subw a1, a2, s6
	sh2add a0, a1, s8
	li a1, 1
	sw a1, 0(s10)
	sw a1, 0(s9)
	sw a1, 0(a0)
	mv a0, s5
	mv a1, s2
	mv a2, s1
	jal f
	sw zero, 0(s10)
	sw zero, 0(s9)
	lw a1, 0(s1)
	addw a0, s0, a1
	subw a2, a0, s6
	sh2add a1, a2, s8
	sw zero, 0(a1)
	addiw s6, s6, 1
	lw a0, 0(s1)
	bgt s6, a0, label4
	sh2add a3, s6, s3
	li a2, 1
	lw a1, 0(a3)
	beq a1, a2, label6
	addw s9, s0, s6
	sh2add a1, s9, s7
	lw a2, 0(a1)
	bne a2, zero, label6
	addw a1, s0, a0
	subw a3, a1, s6
	sh2add a2, a3, s8
	lw a1, 0(a2)
	bne a1, zero, label6
	sh2add a1, s0, s4
	sw s6, 0(a1)
	bne s0, a0, label65
	lw a0, 0(s2)
	li s10, 1
	addi a1, a0, 1
	sw a1, 0(s2)
	lw s11, 0(s1)
	bgt s10, s11, label85
	j label15
label85:
	mv a0, s11
	j label10
label15:
	sh2add a1, s10, s4
	lw a0, 0(a1)
	jal putint
	bne s10, s11, label17
	li a0, 10
	jal putch
	lw a0, 0(s1)
	j label10
label65:
	lw a0, 0(s1)
	j label10
label17:
	li a0, 32
	jal putch
	addiw s10, s10, 1
	lw s11, 0(s1)
	bgt s10, s11, label85
	j label15
label4:
	ld ra, 0(sp)
	ld s11, 8(sp)
	ld s10, 16(sp)
	ld s9, 24(sp)
	ld s8, 32(sp)
	ld s7, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s6, 64(sp)
	ld s1, 72(sp)
	ld s2, 80(sp)
	ld s5, 88(sp)
	ld s0, 96(sp)
	addi sp, sp, 104
	ret
.globl main
main:
	addi sp, sp, -40
	sd s0, 32(sp)
	addi s0, sp, 0
	sd s1, 24(sp)
	addi s1, sp, 4
	sd s2, 16(sp)
	sd ra, 8(sp)
	sw zero, 4(sp)
	jal getint
	mv s2, a0
	ble a0, zero, label177
	j label165
label177:
	mv a0, zero
	j label168
label165:
	jal getint
	sw a0, 0(sp)
	mv a1, s1
	li a0, 1
	mv a2, s0
	jal f
	addiw s2, s2, -1
	ble s2, zero, label167
	j label165
label167:
	lw a0, 4(sp)
label168:
	ld ra, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s0, 32(sp)
	addi sp, sp, 40
	ret
