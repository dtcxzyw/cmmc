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
	li a0, 100016
	jal _sysy_starttime
	bgt s0, zero, label2
	mv s0, zero
	j label8
label2:
	mv a1, s0
	li a2, 4
	bgt s0, a2, label19
	mv a0, zero
	j label5
label19:
	mv a0, zero
label3:
	addiw a0, a0, 4
	bgt s1, a0, label3
label5:
	addiw a2, a0, 1
	ble s0, a2, label28
	mv a0, a2
	j label5
label28:
	mul a1, a1, a0
	li a0, 134209537
	rem a2, a1, a0
	sext.w s0, a2
label8:
	li a0, 100032
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
