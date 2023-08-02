.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -24
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s0, 16(sp)
	jal getint
	mv s1, a0
	li a0, 121
	jal _sysy_starttime
	ble s1, zero, label7
	slli a1, s1, 4
	lui a3, 366211
	sub a0, a1, s1
	addiw a2, a3, -255
	rem a1, a0, a2
	sext.w s0, a1
label3:
	li a0, 123
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
label7:
	mv s0, zero
	j label3
