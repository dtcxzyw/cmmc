.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
	addi sp, sp, -24
	sd s0, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
	jal getint
	addiw s1, a0, -4
	mv s0, a0
	li a0, 1016
	jal _sysy_starttime
	bgt s0, zero, label4
	mv s0, zero
label2:
	li a0, 1031
	jal _sysy_stoptime
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
label4:
	mv a1, s0
	li a2, 4
	bgt s0, a2, label18
	mv a0, zero
	j label7
label18:
	mv a0, zero
label5:
	addiw a0, a0, 4
	bgt s1, a0, label5
label7:
	mul a2, a1, a0
	li a3, 2147385347
	addiw a0, a0, 1
	rem a4, a2, a3
	mv a2, a4
	bgt s0, a0, label7
	mv s0, a4
	j label2
