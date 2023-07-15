.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -24
	sd s0, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
	li a0, 10
	ble s0, a0, label19
	j label15
label19:
	mv s0, zero
label2:
	jal getint
	li a1, 11
	ble a0, a1, label5
	addw s0, s0, a0
	mv a0, s0
	jal putint
	j label5
label15:
	mv a0, s0
	jal putint
	j label2
label5:
	jal getint
	li a1, 100
	bge a0, a1, label14
label7:
	jal getint
	li a1, 101
	bge a0, a1, label13
label9:
	addiw s1, s0, 99
	mv a0, s1
	jal putint
	bne s1, zero, label12
	addiw a0, s0, 199
	jal putint
label12:
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
label14:
	addw s0, s0, a0
	mv a0, s0
	jal putint
	j label7
label13:
	addw s0, s0, a0
	mv a0, s0
	jal putint
	j label9
