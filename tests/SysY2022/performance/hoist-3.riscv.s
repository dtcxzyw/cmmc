.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -16
	sd ra, 0(sp)
	sd s0, 8(sp)
	jal getint
	mv s0, a0
	li a0, 121
	jal _sysy_starttime
	ble s0, zero, label7
	slli a1, s0, 4
	lui a2, 366211
	sub a0, a1, s0
	addiw a1, a2, -255
	rem a0, a0, a1
	sext.w s0, a0
label3:
	li a0, 123
	jal _sysy_stoptime
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	addi sp, sp, 16
	ret
label7:
	mv s0, zero
	j label3
