.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -96
	sd s0, 88(sp)
	addi s0, sp, 0
	sd s1, 80(sp)
	sd s2, 72(sp)
	sd ra, 64(sp)
label2:
	jal getch
	li a2, 9
	addiw s1, a0, -48
	slt a3, a2, s1
	slti a1, s1, 0
	or a0, a1, a3
	beq a0, zero, label3
	j label2
label3:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	bgeu a1, a2, label6
	j label36
label6:
	ble s1, zero, label22
label9:
	jal getch
	li a1, 9
	addiw s2, a0, -48
	slt a2, a1, s2
	slti a0, s2, 0
	or a0, a0, a2
	beq a0, zero, label10
	j label9
label10:
	jal getch
	li a1, 10
	addiw a0, a0, -48
	bgeu a0, a1, label13
	j label58
label120:
	mv a1, s2
	mv a0, zero
	j label14
label13:
	ble s2, zero, label67
	j label120
label67:
	mv s2, zero
label19:
	li a0, 10
	jal putch
	addiw s1, s1, -1
	ble s1, zero, label22
	j label9
label14:
	sh2add a3, a0, s0
	li a2, 1717986919
	addiw a0, a0, 1
	mul a4, a1, a2
	srli t0, a4, 63
	srai a5, a4, 34
	add a4, t0, a5
	li a5, 10
	mulw t0, a4, a5
	subw a4, a1, t0
	mul a1, a1, a2
	addiw a5, a4, 48
	srai a2, a1, 34
	sw a5, 0(a3)
	srli a3, a1, 63
	add a1, a3, a2
	ble a1, zero, label77
	j label14
label77:
	mv s2, a0
	ble a0, zero, label19
label20:
	addiw s2, s2, -1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	jal putch
	ble s2, zero, label19
	j label20
label58:
	sh2add a1, s2, s2
	sh1add s2, a1, a0
	j label10
label22:
	mv a0, zero
	ld ra, 64(sp)
	ld s2, 72(sp)
	ld s1, 80(sp)
	ld s0, 88(sp)
	addi sp, sp, 96
	ret
label36:
	sh2add a0, s1, s1
	sh1add s1, a0, a1
	j label3
