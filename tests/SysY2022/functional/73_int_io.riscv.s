.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -96
	sd s0, 64(sp)
	addi s0, sp, 0
	sd s1, 88(sp)
	sd s2, 80(sp)
	sd ra, 72(sp)
label2:
	jal getch
	li a1, 9
	addiw s1, a0, -48
	bleu s1, a1, label3
	j label2
label3:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label6
	j label34
label6:
	ble s1, zero, label22
label9:
	jal getch
	li a1, 9
	addiw s2, a0, -48
	bleu s2, a1, label10
	j label9
label10:
	jal getch
	li a1, 9
	addiw a0, a0, -48
	bgtu a0, a1, label13
	j label54
label116:
	mv a1, s2
	mv a0, zero
	j label14
label13:
	ble s2, zero, label63
	j label116
label63:
	mv s2, zero
label19:
	li a0, 10
	jal putch
	addiw s1, s1, -1
	ble s1, zero, label22
	j label9
label14:
	sh2add a2, a0, s0
	li a5, 1717986919
	addiw a0, a0, 1
	mul a3, a1, a5
	srli a5, a3, 63
	srai a4, a3, 34
	add a3, a5, a4
	li a4, 10
	mulw a5, a3, a4
	subw a1, a1, a5
	addiw a4, a1, 48
	mv a1, a3
	sw a4, 0(a2)
	ble a3, zero, label73
	j label14
label73:
	mv s2, a0
	ble a0, zero, label19
label20:
	addiw s2, s2, -1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	jal putch
	ble s2, zero, label19
	j label20
label54:
	sh2add a1, s2, s2
	sh1add s2, a1, a0
	j label10
label22:
	mv a0, zero
	ld ra, 72(sp)
	ld s2, 80(sp)
	ld s1, 88(sp)
	ld s0, 64(sp)
	addi sp, sp, 96
	ret
label34:
	sh2add a0, s1, s1
	sh1add s1, a0, a1
	j label3
