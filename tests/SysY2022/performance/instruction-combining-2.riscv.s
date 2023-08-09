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
	lui a1, 2
	mv s1, a0
	addiw a0, a1, 1823
	jal _sysy_starttime
	ble s1, zero, label7
	addi a1, s1, -1
	lui a3, 131068
	mul a2, s1, a1
	addiw a1, a3, 1
	srli a0, a2, 1
	rem a2, a0, a1
	sext.w s0, a2
label3:
	lui a1, 2
	addiw a0, a1, 1838
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
