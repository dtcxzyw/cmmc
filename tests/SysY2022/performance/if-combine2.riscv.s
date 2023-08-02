.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -8
	li a0, 324
	sd ra, 0(sp)
	jal _sysy_starttime
	jal getint
	ble a0, zero, label7
	lui a3, 1
	lui a4, 16
	addiw a2, a3, 854
	addiw a3, a4, -1
	mul a1, a0, a2
	rem a2, a1, a3
	sext.w a0, a2
label3:
	jal putint
	li a0, 10
	jal putch
	li a0, 328
	jal _sysy_stoptime
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 8
	ret
label7:
	mv a0, zero
	j label3
