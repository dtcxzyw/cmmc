.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
hanoi:
	addi sp, sp, -48
	sd ra, 0(sp)
	sd s2, 8(sp)
	mv s2, a3
	sd s4, 16(sp)
	li s4, 1
	sd s0, 24(sp)
	sd s1, 32(sp)
	sd s3, 40(sp)
	bne a0, s4, label13
	mv a0, a1
label2:
	jal putint
	li a0, 32
	jal putch
	mv a0, s2
	jal putint
	li a0, 44
	jal putch
	li a0, 32
	jal putch
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s4, 16(sp)
	ld s0, 24(sp)
	ld s1, 32(sp)
	ld s3, 40(sp)
	addi sp, sp, 48
	ret
label13:
	mv s0, a1
	mv s1, a2
label4:
	addiw s3, a0, -1
	mv a0, s3
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal hanoi
	mv a0, s0
	jal putint
	li a0, 32
	jal putch
	mv a0, s2
	jal putint
	li a0, 44
	jal putch
	li a0, 32
	jal putch
	beq s3, s4, label18
	mv a0, s3
	mv a1, s0
	mv s0, s1
	mv s1, a1
	j label4
label18:
	mv a0, s1
	j label2
.p2align 2
.globl main
main:
	addi sp, sp, -16
	sd ra, 0(sp)
	sd s0, 8(sp)
	jal getint
	ble a0, zero, label38
	mv s0, a0
.p2align 2
label36:
	jal getint
	li a3, 3
	li a2, 2
	li a1, 1
	jal hanoi
	li a0, 10
	jal putch
	addiw s0, s0, -1
	bgt s0, zero, label36
label38:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	addi sp, sp, 16
	ret