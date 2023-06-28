.data
.text
.globl main
main:
	addi sp, sp, -16
	sd s0, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
	li a0, 121
	jal _sysy_starttime
	ble s0, zero, label22
	mv a1, zero
	mv a0, zero
	addiw a2, zero, 16
	bge a2, s0, label7
	j label18
label22:
	mv s0, zero
label2:
	li a0, 123
	jal _sysy_stoptime
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	addi sp, sp, 16
	ret
label15:
	addiw a1, a1, 15
	li a2, 12009599
	mul a2, a1, a2
	srai a3, a2, 54
	srli a2, a2, 63
	add a2, a2, a3
	li a3, 1500000001
	mulw a2, a2, a3
	subw a1, a1, a2
	addiw a0, a0, 1
	bge a0, s0, label52
	j label15
label52:
	mv s0, a1
	j label2
label7:
	addiw a2, a0, 16
	bge a2, s0, label11
	j label10
label11:
	addiw a2, a0, 16
	bge a2, s0, label15
label14:
	addiw a1, a1, 15
	li a0, 12009599
	mul a3, a1, a0
	srai a4, a3, 54
	srli a3, a3, 63
	add a4, a3, a4
	li a3, 1500000001
	mulw a4, a4, a3
	subw a1, a1, a4
	addiw a1, a1, 225
	mul a4, a1, a0
	srai a0, a4, 54
	srli a4, a4, 63
	add a0, a4, a0
	mulw a0, a0, a3
	subw a1, a1, a0
	mv a0, a2
	addiw a2, a2, 16
	bge a2, s0, label15
	j label14
label18:
	addiw a1, a1, 15
	li a0, 12009599
	mul a3, a1, a0
	srai a4, a3, 54
	srli a3, a3, 63
	add a4, a3, a4
	li a3, 1500000001
	mulw a4, a4, a3
	subw a1, a1, a4
	addiw a1, a1, 225
	mul a4, a1, a0
	srai a0, a4, 54
	srli a4, a4, 63
	add a0, a4, a0
	mulw a0, a0, a3
	subw a1, a1, a0
	mv a0, a2
	addiw a2, a2, 16
	bge a2, s0, label7
	j label18
label10:
	addiw a1, a1, 15
	li a0, 12009599
	mul a4, a1, a0
	srai a3, a4, 54
	srli a4, a4, 63
	add a4, a4, a3
	li a3, 1500000001
	mulw a4, a4, a3
	subw a1, a1, a4
	addiw a1, a1, 225
	mul a4, a1, a0
	srai a0, a4, 54
	srli a4, a4, 63
	add a0, a4, a0
	mulw a0, a0, a3
	subw a1, a1, a0
	mv a0, a2
	addiw a2, a2, 16
	bge a2, s0, label11
	j label10
