.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
a:
	.zero	3600
.text
search:
	addi sp, sp, -104
	sd s0, 96(sp)
	mv s0, a0
	sd s5, 88(sp)
pcrel149:
	auipc a0, %pcrel_hi(a)
	mv s5, a4
	sd s1, 80(sp)
	mv s1, a1
	sd s6, 72(sp)
	mv s6, a6
	sd s3, 64(sp)
	mv s3, a2
	sd s4, 56(sp)
	mv s4, a3
	sd s7, 48(sp)
	mv s7, a5
	sd s8, 40(sp)
	mv s8, a7
	sd s9, 32(sp)
	addi s9, a0, %pcrel_lo(pcrel149)
	sd s10, 24(sp)
	li a0, 10
	sd s2, 16(sp)
	sd s11, 8(sp)
	sd ra, 0(sp)
	bgt a2, a0, label34
	lui s10, 262144
	mv s2, zero
	j label4
label34:
	lui a0, 262144
label2:
	ld ra, 0(sp)
	ld s11, 8(sp)
	ld s2, 16(sp)
	ld s10, 24(sp)
	ld s9, 32(sp)
	ld s8, 40(sp)
	ld s7, 48(sp)
	ld s4, 56(sp)
	ld s3, 64(sp)
	ld s6, 72(sp)
	ld s1, 80(sp)
	ld s5, 88(sp)
	ld s0, 96(sp)
	addi sp, sp, 104
	ret
label4:
	sh3add a3, s2, s4
	li a0, 4
	blt s2, a0, label40
	li a2, 10
	lui a0, 262144
	bgt s10, a2, label2
	j label128
label40:
	mv a2, zero
	mv a0, s1
	mv a1, s0
label8:
	li t0, 120
	li t1, 1
	mul a5, a1, t0
	add a4, s9, a5
	sh2add t0, a0, a4
	lw a5, 0(t0)
	bne a5, t1, label19
	lw a5, 0(s6)
	bne a1, a5, label14
label13:
	lw a5, 0(s8)
	bne a0, a5, label14
	li a0, 1
	j label2
label14:
	slti a2, a2, 2
	sltiu a5, a1, 1
	or t0, a2, a5
	bne t0, zero, label15
	lw a2, 0(s7)
	sltiu t0, a0, 1
	addiw a5, a2, 1
	xor t1, a1, a5
	sltiu a2, t1, 1
	or a5, a2, t0
	beq a5, zero, label75
label15:
	addiw s2, s2, 1
	j label4
label75:
	lw a5, 0(s5)
	addiw a2, a5, 1
	beq a0, a2, label15
	sh2add s11, a0, a4
	sw zero, 0(s11)
	lw a2, 0(a3)
	lw a4, 4(a3)
	subw a1, a1, a2
	addiw a3, s3, 1
	subw a2, a0, a4
	mv a0, a1
	mv a1, a2
	mv a2, a3
	mv a3, s4
	mv a4, s5
	mv a5, s7
	mv a6, s6
	mv a7, s8
	jal search
	addiw s2, s2, 1
	addiw a1, a0, 1
	li a0, 1
	min s10, s10, a1
	sw a0, 0(s11)
	j label4
label19:
	lw a5, 0(s6)
	beq a1, a5, label21
label20:
	lw a5, 0(a3)
	addiw a2, a2, 1
	lw a4, 4(a3)
	addw a1, a1, a5
	addw a0, a0, a4
	j label8
label21:
	lw a5, 0(s8)
	bne a0, a5, label20
	lw a5, 0(s6)
	beq a1, a5, label13
	j label14
label128:
	mv a0, s10
	j label2
.globl main
main:
	addi sp, sp, -152
	li a0, 1
	li a1, -1
	sd s1, 80(sp)
	addi s1, sp, 56
	sd s6, 32(sp)
	sd s2, 48(sp)
	addi s2, sp, 72
	sd s3, 40(sp)
	addi s3, sp, 88
	sd s4, 64(sp)
	addi s4, sp, 92
	sd s5, 0(sp)
	addi s5, sp, 104
	sd s0, 8(sp)
	sd s9, 16(sp)
	mv s9, zero
	sd s7, 24(sp)
	sd s10, 136(sp)
	sd s8, 144(sp)
	sd ra, 96(sp)
	sw a0, 104(sp)
	sw zero, 108(sp)
	sw a1, 112(sp)
	sw zero, 116(sp)
	sw zero, 120(sp)
	sw a0, 124(sp)
pcrel324:
	auipc a0, %pcrel_hi(a)
	sw zero, 128(sp)
	addi s0, a0, %pcrel_lo(pcrel324)
	sw a1, 132(sp)
	sw zero, 72(sp)
	sw zero, 56(sp)
	mv s6, zero
label151:
	jal getint
	sw a0, 92(sp)
	mv s7, a0
	jal getint
	sw a0, 88(sp)
	beq s7, zero, label173
	mv a1, zero
	j label154
label240:
	li s8, 1
label161:
	lw a0, 92(sp)
	ble s8, a0, label165
	addiw s6, s6, 1
	lw a0, 88(sp)
	li a2, 120
	mul a1, s6, a2
	add s7, s0, a1
	ble s6, a0, label240
	j label172
label165:
	jal getint
	li a2, 2
	sh2add a1, s8, s7
	sw a0, 0(a1)
	beq a0, a2, label252
	li a1, 3
	beq a0, a1, label170
	j label166
label252:
	mv s9, s8
	mv s10, s6
label166:
	addiw s8, s8, 1
	j label161
label172:
	mv a0, s10
	li a2, 1
	mv a1, s9
	mv a3, s5
	mv a4, s4
	mv a5, s3
	mv a6, s2
	mv a7, s1
	jal search
	mv a1, a0
	li a2, 11
	blt a0, a2, label309
	li a1, -1
label309:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	mv s6, s10
	j label151
label173:
	mv a0, zero
	ld ra, 96(sp)
	ld s8, 144(sp)
	ld s10, 136(sp)
	ld s7, 24(sp)
	ld s9, 16(sp)
	ld s0, 8(sp)
	ld s5, 0(sp)
	ld s4, 64(sp)
	ld s3, 40(sp)
	ld s2, 48(sp)
	ld s6, 32(sp)
	ld s1, 80(sp)
	addi sp, sp, 152
	ret
label170:
	sw s6, 72(sp)
	sw s8, 56(sp)
	j label166
label154:
	li a0, 30
	blt a1, a0, label156
	mv s10, s6
	li s6, 1
	j label157
label156:
	li a2, 120
	mul a3, a1, a2
	addiw a1, a1, 1
	li a2, 1
	add a0, s0, a3
	sw a2, 0(a0)
	sw a2, 4(a0)
	sw a2, 8(a0)
	sw a2, 12(a0)
	sw a2, 16(a0)
	sw a2, 20(a0)
	sw a2, 24(a0)
	sw a2, 28(a0)
	sw a2, 32(a0)
	sw a2, 36(a0)
	sw a2, 40(a0)
	sw a2, 44(a0)
	sw a2, 48(a0)
	sw a2, 52(a0)
	sw a2, 56(a0)
	sw a2, 60(a0)
	sw a2, 64(a0)
	sw a2, 68(a0)
	sw a2, 72(a0)
	sw a2, 76(a0)
	sw a2, 80(a0)
	sw a2, 84(a0)
	sw a2, 88(a0)
	sw a2, 92(a0)
	sw a2, 96(a0)
	sw a2, 100(a0)
	sw a2, 104(a0)
	sw a2, 108(a0)
	sw a2, 112(a0)
	sw a2, 116(a0)
	j label154
label157:
	lw a0, 88(sp)
	li a2, 120
	mul a1, s6, a2
	add s7, s0, a1
	ble s6, a0, label240
	j label172
