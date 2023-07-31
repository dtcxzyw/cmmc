.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
hanoi:
.p2align 2
	addi sp, sp, -40
	sd ra, 0(sp)
	sd s2, 8(sp)
	mv s2, a3
	sd s3, 16(sp)
	li a3, 1
	sd s0, 24(sp)
	sd s1, 32(sp)
	beq a0, a3, label2
	mv s3, a0
	mv s0, a1
	mv s1, a2
label4:
	addiw s3, s3, -1
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
	li a2, 1
	beq s3, a2, label18
	mv a0, s0
	mv s0, s1
	mv s1, a0
	j label4
label2:
	mv a0, a1
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
	ld s3, 16(sp)
	ld s0, 24(sp)
	ld s1, 32(sp)
	addi sp, sp, 40
	ret
label18:
	mv a1, s1
	j label2
.globl main
main:
.p2align 2
	addi sp, sp, -16
	sd ra, 0(sp)
	sd s0, 8(sp)
	jal getint
	ble a0, zero, label36
	mv s0, a0
.p2align 2
label34:
	jal getint
	li a3, 3
	li a2, 2
	li a1, 1
	jal hanoi
	li a0, 10
	jal putch
	addiw s0, s0, -1
	bgt s0, zero, label34
label36:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	addi sp, sp, 16
	ret
