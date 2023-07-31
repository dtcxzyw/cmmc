.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
	addi sp, sp, -96
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 32
	sd s1, 16(sp)
	sd s2, 24(sp)
label2:
	jal getch
	li a1, 9
	addiw s1, a0, -48
	bgtu s1, a1, label2
label3:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	bltu a1, a2, label5
	ble s1, zero, label7
.p2align 2
label10:
	jal getch
	li a1, 9
	addiw s2, a0, -48
	bgtu s2, a1, label10
.p2align 2
label11:
	jal getch
	li a1, 10
	addiw a0, a0, -48
	bltu a0, a1, label13
	ble s2, zero, label121
	mv a3, s2
	mv a0, zero
	j label20
.p2align 2
label17:
	li a0, 10
	jal putch
	addiw s1, s1, -1
	bgt s1, zero, label10
	j label7
.p2align 2
label18:
	addiw s2, a0, -1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	jal putch
	bgt s2, zero, label76
	j label17
.p2align 2
label20:
	sh2add a1, a0, s0
	li a5, 1717986919
	addiw a0, a0, 1
	mul a2, a3, a5
	srli a5, a2, 63
	srai a4, a2, 34
	add a2, a5, a4
	sh2add a4, a2, a2
	slliw a5, a4, 1
	subw a3, a3, a5
	addi a4, a3, 48
	mv a3, a2
	sw a4, 0(a1)
	bgt a2, zero, label20
	bgt a0, zero, label18
	j label17
label7:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 96
	ret
.p2align 2
label13:
	sh2add a1, s2, s2
	sh1add s2, a1, a0
	j label11
.p2align 2
label76:
	mv a0, s2
	j label18
label5:
	sh2add a0, s1, s1
	sh1add s1, a0, a1
	j label3
.p2align 2
label121:
	mv a0, zero
	j label17
