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
	li a0, 10015
	jal _sysy_starttime
	bgt s0, zero, label2
	mv s0, zero
	j label7
label2:
	mv a0, s0
	li a2, 4
	bgt s0, a2, label18
	mv a1, zero
	j label5
label18:
	mv a1, zero
label3:
	addiw a1, a1, 4
	bgt s1, a1, label3
label5:
	mul a2, a0, a1
	li a4, 536854529
	addiw a1, a1, 1
	rem a3, a2, a4
	mv a2, a3
	bgt s0, a1, label5
	mv s0, a3
label7:
	li a0, 10030
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
