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
	bgtu s1, a1, label2
label3:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label5
	bgt s1, zero, label9
	j label22
label5:
	sh2add a0, s1, s1
	sh1add s1, a0, a1
	j label3
label116:
	mv a0, zero
	j label19
label63:
	mv a3, s2
	mv a0, zero
label14:
	sh2add a1, a0, s0
	li a5, 1717986919
	addiw a0, a0, 1
	mul a2, a3, a5
	li a5, 10
	srli t0, a2, 63
	srai a4, a2, 34
	add a2, t0, a4
	mulw a4, a2, a5
	subw a3, a3, a4
	addi a5, a3, 48
	mv a3, a2
	sw a5, 0(a1)
	bgt a2, zero, label14
	bgt a0, zero, label20
label19:
	li a0, 10
	jal putch
	addiw s1, s1, -1
	bgt s1, zero, label9
	j label22
label20:
	addiw s2, a0, -1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	jal putch
	ble s2, zero, label19
	mv a0, s2
	j label20
label22:
	mv a0, zero
	ld ra, 72(sp)
	ld s2, 80(sp)
	ld s1, 88(sp)
	ld s0, 64(sp)
	addi sp, sp, 96
	ret
label9:
	jal getch
	li a1, 9
	addiw s2, a0, -48
	bgtu s2, a1, label9
label10:
	jal getch
	li a1, 9
	addiw a0, a0, -48
	bleu a0, a1, label12
	bgt s2, zero, label63
	j label116
label12:
	sh2add a1, s2, s2
	sh1add s2, a1, a0
	j label10
