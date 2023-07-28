.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
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
	bgtu a1, a2, label6
	li a2, 10
	mulw a0, s1, a2
	addw s1, a1, a0
	j label3
label6:
	bgt s1, zero, label9
	j label22
.p2align 2
label115:
	mv a0, zero
	j label19
.p2align 2
label59:
	mv a3, s2
	mv a0, zero
.p2align 2
label14:
	sh2add a1, a0, s0
	li a5, 1717986919
	addiw a0, a0, 1
	mul a2, a3, a5
	srli a5, a2, 63
	srai a4, a2, 34
	add a2, a5, a4
	li a4, 10
	mulw a5, a2, a4
	subw a3, a3, a5
	addi a4, a3, 48
	mv a3, a2
	sw a4, 0(a1)
	bgt a2, zero, label14
	bgt a0, zero, label20
.p2align 2
label19:
	li a0, 10
	jal putch
	addiw s1, s1, -1
	bgt s1, zero, label9
	j label22
.p2align 2
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
.p2align 2
label9:
	jal getch
	li a1, 9
	addiw s2, a0, -48
	bgtu s2, a1, label9
.p2align 2
label10:
	jal getch
	li a1, 9
	addiw a0, a0, -48
	bleu a0, a1, label12
	bgt s2, zero, label59
	j label115
.p2align 2
label12:
	li a1, 10
	mulw a2, s2, a1
	addw s2, a0, a2
	j label10
