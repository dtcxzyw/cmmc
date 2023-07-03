.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
temp:
	.zero	8388608
.align 4
w:
	.zero	8388608
.align 4
dst:
	.zero	8388608
.text
.globl main
main:
	addi sp, sp, -32
	sd s0, 24(sp)
	sd s2, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
pcrel335:
	auipc a0, %pcrel_hi(w)
	addi a0, a0, %pcrel_lo(pcrel335)
	mv s2, a0
	jal getarray
	li a0, 62
	jal _sysy_starttime
pcrel336:
	auipc a0, %pcrel_hi(dst)
	addi s1, a0, %pcrel_lo(pcrel336)
pcrel337:
	auipc a0, %pcrel_hi(temp)
	addi a0, a0, %pcrel_lo(pcrel337)
	mv a1, zero
label2:
	ble s0, a1, label75
	j label57
label75:
	mv a5, zero
label4:
	slt a1, a5, s0
	xori a1, a1, 1
	slti a2, a5, 0
	or a2, a1, a2
	mulw a3, s0, a5
	ble s0, a5, label41
	mv t0, zero
label6:
	slti a1, t0, 0
	or a4, a2, a1
	slt t1, t0, s0
	xori t3, t1, 1
	or a4, a4, t3
	mulw t1, s0, t0
	addw t2, a5, t1
	or t3, a1, t3
	ble s0, t0, label94
	mv a1, zero
label8:
	ble s0, a1, label10
	beq a4, zero, label12
	li t4, -1
label13:
	blt t4, zero, label109
	j label15
label109:
	mv t4, zero
	j label19
label15:
	slti t4, a1, 0
	or t4, a2, t4
	slt t5, a1, s0
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label16
	li t4, -1
	li t5, -1
	slt t4, t5, t4
label19:
	beq t4, zero, label21
	slti t4, a1, 0
	or t4, t3, t4
	slt t5, a1, s0
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label132
	li t4, -1
label23:
	bge t4, zero, label32
	j label25
label41:
	mulw s0, s0, s0
	ble s0, zero, label42
	mv a2, zero
label43:
	addiw a1, a2, 4
	ble s0, a1, label198
	j label45
label198:
	mv a1, a2
	j label46
label45:
	sh2add a3, a2, a0
	lw a4, 0(a3)
	sh2add a2, a2, s1
	sw a4, 0(a2)
	lw a4, 4(a3)
	sw a4, 4(a2)
	lw a4, 8(a3)
	sw a4, 8(a2)
	lw a3, 12(a3)
	sw a3, 12(a2)
	mv a2, a1
	j label43
label46:
	addiw a2, a1, 4
	ble s0, a2, label49
	sh2add a3, a1, a0
	lw a4, 0(a3)
	sh2add a1, a1, s1
	sw a4, 0(a1)
	lw a4, 4(a3)
	sw a4, 4(a1)
	lw a4, 8(a3)
	sw a4, 8(a1)
	lw a3, 12(a3)
	sw a3, 12(a1)
	mv a1, a2
	j label46
label57:
	slt a2, a1, s0
	xori a2, a2, 1
	slti a3, a1, 0
	or a2, a2, a3
	ble s0, zero, label58
	mv a3, zero
	j label59
label58:
	addiw a1, a1, 1
	j label2
label59:
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label61
	li a5, -1
label62:
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label58
	j label59
label21:
	addiw a1, a1, 1
	j label8
label12:
	sh2add t4, t2, a0
	lw t4, 0(t4)
	j label13
label25:
	addw t4, t1, a1
	beq a4, zero, label26
	li t5, -1
label27:
	slti t6, a1, 0
	or t6, a2, t6
	slt a6, a1, s0
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label29
	li t6, -1
	addw t5, t5, t6
	sh2add t4, t4, a0
	sw t5, 0(t4)
	addiw a1, a1, 1
	j label8
label29:
	addw t6, a3, a1
	sh2add t6, t6, a0
	lw t6, 0(t6)
	addw t5, t5, t6
	sh2add t4, t4, a0
	sw t5, 0(t4)
	addiw a1, a1, 1
	j label8
label32:
	addw t4, t1, a1
	sh2add t4, t4, a0
	lw t4, 0(t4)
	beq a4, zero, label33
	li t5, -1
	j label34
label33:
	sh2add t5, t2, a0
	lw t5, 0(t5)
label34:
	slti t6, a1, 0
	or t6, a2, t6
	slt a6, a1, s0
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label36
	li t6, -1
	j label37
label36:
	addw t6, a3, a1
	sh2add t6, t6, a0
	lw t6, 0(t6)
label37:
	addw t5, t5, t6
	ble t4, t5, label21
	j label25
label132:
	addw t4, t1, a1
	sh2add t4, t4, a0
	lw t4, 0(t4)
	j label23
label16:
	addw t4, a3, a1
	sh2add t4, t4, a0
	lw t4, 0(t4)
	li t5, -1
	slt t4, t5, t4
	j label19
label26:
	sh2add t5, t2, a0
	lw t5, 0(t5)
	j label27
label10:
	addiw t0, t0, 1
	j label6
label61:
	sh2add a5, a4, s2
	lw a5, 0(a5)
	j label62
label94:
	addiw a5, a5, 1
	j label4
label49:
	addiw a2, a1, 4
	ble s0, a2, label51
	sh2add a3, a1, a0
	lw a4, 0(a3)
	sh2add a1, a1, s1
	sw a4, 0(a1)
	lw a4, 4(a3)
	sw a4, 4(a1)
	lw a4, 8(a3)
	sw a4, 8(a1)
	lw a3, 12(a3)
	sw a3, 12(a1)
	mv a1, a2
	j label49
label51:
	addiw a2, a1, 4
	ble s0, a2, label54
	sh2add a3, a1, a0
	lw a4, 0(a3)
	sh2add a1, a1, s1
	sw a4, 0(a1)
	lw a4, 4(a3)
	sw a4, 4(a1)
	lw a4, 8(a3)
	sw a4, 8(a1)
	lw a3, 12(a3)
	sw a3, 12(a1)
	mv a1, a2
	j label51
label54:
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label42
	j label54
label42:
	li a0, 64
	jal _sysy_stoptime
	mv a0, s0
	mv a1, s1
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
