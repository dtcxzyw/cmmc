.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -120
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 56
	sd s5, 16(sp)
	sd s3, 24(sp)
	li s3, 9
	sd s2, 32(sp)
	li s2, 10
	sd s1, 40(sp)
	li s1, 1717986919
	sd s4, 48(sp)
label2:
	jal getch
	addiw s4, a0, -48
	bgtu s4, s3, label2
label3:
	jal getch
	addiw a1, a0, -48
	bgeu a1, s2, label6
	sh2add a0, s4, s4
	sh1add s4, a0, a1
	j label3
label6:
	ble s4, zero, label22
.p2align 2
label9:
	jal getch
	addiw s5, a0, -48
	bgtu s5, s3, label9
.p2align 2
label10:
	jal getch
	addiw a0, a0, -48
	bltu a0, s2, label12
	ble s5, zero, label128
	mv a0, s5
	mv a1, zero
	j label19
.p2align 2
label16:
	mv a0, s2
	jal putch
	addiw s4, s4, -1
	bgt s4, zero, label9
	j label22
.p2align 2
label17:
	addiw s5, s5, -1
	sh2add a1, s5, s0
	lw a0, 0(a1)
	jal putch
	bgt s5, zero, label17
	j label16
.p2align 2
label19:
	sh2add a2, a1, s0
	mul a3, a0, s1
	addiw a1, a1, 1
	srli a5, a3, 63
	srai a4, a3, 34
	add a3, a5, a4
	sh2add a4, a3, a3
	slliw a5, a4, 1
	subw a0, a0, a5
	addi a4, a0, 48
	mv a0, a3
	sw a4, 0(a2)
	bgt a3, zero, label19
	mv s5, a1
	bgt a1, zero, label17
	j label16
label22:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s3, 24(sp)
	ld s2, 32(sp)
	ld s1, 40(sp)
	ld s4, 48(sp)
	addi sp, sp, 120
	ret
label128:
	mv s5, zero
	j label16
.p2align 2
label12:
	sh2add a1, s5, s5
	sh1add s5, a1, a0
	j label10
