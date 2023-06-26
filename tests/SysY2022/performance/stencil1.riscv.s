.data
.align 4
image_in:
	.zero	4194304
.align 4
image_out:
	.zero	4194304
.text
.globl main
main:
	addi sp, sp, -32
	sd s2, 24(sp)
	sd s1, 16(sp)
	sd s0, 8(sp)
	sd ra, 0(sp)
pcrel457:
	auipc a0, %pcrel_hi(image_in)
	addi a0, a0, %pcrel_lo(pcrel457)
	mv s2, a0
	jal getarray
	mv s1, a0
	li a0, 23
	jal _sysy_starttime
pcrel458:
	auipc a0, %pcrel_hi(image_out)
	addi s0, a0, %pcrel_lo(pcrel458)
	li a0, 1
	addiw a1, a0, -1
	li a2, 1023
	bge a0, a2, label24
	j label23
label24:
	mv a0, zero
	j label11
label23:
	li a2, 1
	j label4
label8:
	addiw a0, a0, 1
	addiw a1, a0, -1
	li a2, 1023
	bge a0, a2, label24
	j label23
label4:
	addiw a3, a2, -1
	slliw a3, a3, 10
	addw t2, a0, a3
	addw t3, a1, a3
	slliw a4, a2, 10
	addw a3, a0, a4
	addw t1, a1, a4
	addiw a2, a2, 1
	slliw a5, a2, 10
	addw a4, a0, a5
	addw a5, a1, a5
	slli t4, a3, 2
	add t4, s2, t4
	lw t4, 0(t4)
	slliw t4, t4, 3
	slli t3, t3, 2
	add t3, s2, t3
	lw t3, 0(t3)
	subw t3, t4, t3
	slli t2, t2, 2
	add t2, s2, t2
	lw t4, 0(t2)
	subw t3, t3, t4
	lw t2, 4(t2)
	subw t2, t3, t2
	slli t1, t1, 2
	add t1, s2, t1
	lw t3, 0(t1)
	subw t2, t2, t3
	lw t1, 8(t1)
	subw t1, t2, t1
	slli a5, a5, 2
	add a5, s2, a5
	lw a5, 0(a5)
	subw a5, t1, a5
	slli a4, a4, 2
	add a4, s2, a4
	lw t1, 0(a4)
	subw a5, a5, t1
	lw a4, 4(a4)
	subw a4, a5, a4
	slli a3, a3, 2
	add a3, s0, a3
	bge a4, zero, label9
	mv a4, zero
	sw zero, 0(a3)
	li a3, 1023
	bge a2, a3, label8
	j label4
label9:
	li a5, 255
	ble a4, a5, label6
	li a4, 255
	sw a4, 0(a3)
	li a3, 1023
	bge a2, a3, label8
	j label4
label6:
	sw a4, 0(a3)
	li a3, 1023
	bge a2, a3, label8
	j label4
label11:
	slliw a2, a0, 10
	slli a1, a2, 2
	add a1, s0, a1
	slli a2, a2, 2
	add a2, s2, a2
	lw a2, 0(a2)
	sw a2, 0(a1)
	addiw a1, a0, 1
	slliw a1, a1, 10
	addiw a3, a1, -1
	slli a2, a3, 2
	add a2, s0, a2
	slli a3, a3, 2
	add a3, s2, a3
	lw a3, 0(a3)
	sw a3, 0(a2)
	slli a2, a1, 2
	add a2, s0, a2
	slli a1, a1, 2
	add a1, s2, a1
	lw a1, 0(a1)
	sw a1, 0(a2)
	addiw a1, a0, 2
	slliw a1, a1, 10
	addiw a3, a1, -1
	slli a2, a3, 2
	add a2, s0, a2
	slli a3, a3, 2
	add a3, s2, a3
	lw a3, 0(a3)
	sw a3, 0(a2)
	slli a2, a1, 2
	add a2, s0, a2
	slli a1, a1, 2
	add a1, s2, a1
	lw a1, 0(a1)
	sw a1, 0(a2)
	addiw a1, a0, 3
	slliw a1, a1, 10
	addiw a3, a1, -1
	slli a2, a3, 2
	add a2, s0, a2
	slli a3, a3, 2
	add a3, s2, a3
	lw a3, 0(a3)
	sw a3, 0(a2)
	slli a2, a1, 2
	add a2, s0, a2
	slli a1, a1, 2
	add a1, s2, a1
	lw a1, 0(a1)
	sw a1, 0(a2)
	addiw a1, a0, 4
	slliw a1, a1, 10
	addiw a3, a1, -1
	slli a2, a3, 2
	add a2, s0, a2
	slli a3, a3, 2
	add a3, s2, a3
	lw a3, 0(a3)
	sw a3, 0(a2)
	slli a2, a1, 2
	add a2, s0, a2
	slli a1, a1, 2
	add a1, s2, a1
	lw a1, 0(a1)
	sw a1, 0(a2)
	addiw a1, a0, 5
	slliw a1, a1, 10
	addiw a3, a1, -1
	slli a2, a3, 2
	add a2, s0, a2
	slli a3, a3, 2
	add a3, s2, a3
	lw a3, 0(a3)
	sw a3, 0(a2)
	slli a2, a1, 2
	add a2, s0, a2
	slli a1, a1, 2
	add a1, s2, a1
	lw a1, 0(a1)
	sw a1, 0(a2)
	addiw a1, a0, 6
	slliw a1, a1, 10
	addiw a3, a1, -1
	slli a2, a3, 2
	add a2, s0, a2
	slli a3, a3, 2
	add a3, s2, a3
	lw a3, 0(a3)
	sw a3, 0(a2)
	slli a2, a1, 2
	add a2, s0, a2
	slli a1, a1, 2
	add a1, s2, a1
	lw a1, 0(a1)
	sw a1, 0(a2)
	addiw a1, a0, 7
	slliw a1, a1, 10
	addiw a3, a1, -1
	slli a2, a3, 2
	add a2, s0, a2
	slli a3, a3, 2
	add a3, s2, a3
	lw a3, 0(a3)
	sw a3, 0(a2)
	slli a2, a1, 2
	add a2, s0, a2
	slli a1, a1, 2
	add a1, s2, a1
	lw a1, 0(a1)
	sw a1, 0(a2)
	addiw a1, a0, 8
	slliw a1, a1, 10
	addiw a3, a1, -1
	slli a2, a3, 2
	add a2, s0, a2
	slli a3, a3, 2
	add a3, s2, a3
	lw a3, 0(a3)
	sw a3, 0(a2)
	slli a2, a1, 2
	add a2, s0, a2
	slli a1, a1, 2
	add a1, s2, a1
	lw a1, 0(a1)
	sw a1, 0(a2)
	addiw a1, a0, 9
	slliw a1, a1, 10
	addiw a3, a1, -1
	slli a2, a3, 2
	add a2, s0, a2
	slli a3, a3, 2
	add a3, s2, a3
	lw a3, 0(a3)
	sw a3, 0(a2)
	slli a2, a1, 2
	add a2, s0, a2
	slli a1, a1, 2
	add a1, s2, a1
	lw a1, 0(a1)
	sw a1, 0(a2)
	addiw a1, a0, 10
	slliw a1, a1, 10
	addiw a3, a1, -1
	slli a2, a3, 2
	add a2, s0, a2
	slli a3, a3, 2
	add a3, s2, a3
	lw a3, 0(a3)
	sw a3, 0(a2)
	slli a2, a1, 2
	add a2, s0, a2
	slli a1, a1, 2
	add a1, s2, a1
	lw a1, 0(a1)
	sw a1, 0(a2)
	addiw a1, a0, 11
	slliw a1, a1, 10
	addiw a3, a1, -1
	slli a2, a3, 2
	add a2, s0, a2
	slli a3, a3, 2
	add a3, s2, a3
	lw a3, 0(a3)
	sw a3, 0(a2)
	slli a2, a1, 2
	add a2, s0, a2
	slli a1, a1, 2
	add a1, s2, a1
	lw a1, 0(a1)
	sw a1, 0(a2)
	addiw a1, a0, 12
	slliw a1, a1, 10
	addiw a3, a1, -1
	slli a2, a3, 2
	add a2, s0, a2
	slli a3, a3, 2
	add a3, s2, a3
	lw a3, 0(a3)
	sw a3, 0(a2)
	slli a2, a1, 2
	add a2, s0, a2
	slli a1, a1, 2
	add a1, s2, a1
	lw a1, 0(a1)
	sw a1, 0(a2)
	addiw a1, a0, 13
	slliw a1, a1, 10
	addiw a3, a1, -1
	slli a2, a3, 2
	add a2, s0, a2
	slli a3, a3, 2
	add a3, s2, a3
	lw a3, 0(a3)
	sw a3, 0(a2)
	slli a2, a1, 2
	add a2, s0, a2
	slli a1, a1, 2
	add a1, s2, a1
	lw a1, 0(a1)
	sw a1, 0(a2)
	addiw a1, a0, 14
	slliw a1, a1, 10
	addiw a3, a1, -1
	slli a2, a3, 2
	add a2, s0, a2
	slli a3, a3, 2
	add a3, s2, a3
	lw a3, 0(a3)
	sw a3, 0(a2)
	slli a2, a1, 2
	add a2, s0, a2
	slli a1, a1, 2
	add a1, s2, a1
	lw a1, 0(a1)
	sw a1, 0(a2)
	addiw a1, a0, 15
	slliw a1, a1, 10
	addiw a3, a1, -1
	slli a2, a3, 2
	add a2, s0, a2
	slli a3, a3, 2
	add a3, s2, a3
	lw a3, 0(a3)
	sw a3, 0(a2)
	slli a2, a1, 2
	add a2, s0, a2
	slli a1, a1, 2
	add a1, s2, a1
	lw a1, 0(a1)
	sw a1, 0(a2)
	addiw a0, a0, 16
	slliw a1, a0, 10
	addiw a2, a1, -1
	slli a1, a2, 2
	add a1, s0, a1
	slli a2, a2, 2
	add a2, s2, a2
	lw a2, 0(a2)
	sw a2, 0(a1)
	li a1, 1024
	bge a0, a1, label296
	j label11
label296:
	mv a0, zero
label13:
	slli a1, a0, 2
	add a1, s0, a1
	slli a2, a0, 2
	add a2, s2, a2
	lw a3, 0(a2)
	sw a3, 0(a1)
	li a4, 4190208
	add a3, a1, a4
	add a4, a2, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	lw a3, 4(a2)
	sw a3, 4(a1)
	li a4, 4190212
	add a3, a1, a4
	add a4, a2, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	lw a3, 8(a2)
	sw a3, 8(a1)
	li a4, 4190216
	add a3, a1, a4
	add a4, a2, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	lw a3, 12(a2)
	sw a3, 12(a1)
	li a4, 4190220
	add a3, a1, a4
	add a4, a2, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	lw a3, 16(a2)
	sw a3, 16(a1)
	li a4, 4190224
	add a3, a1, a4
	add a4, a2, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	lw a3, 20(a2)
	sw a3, 20(a1)
	li a4, 4190228
	add a3, a1, a4
	add a4, a2, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	lw a3, 24(a2)
	sw a3, 24(a1)
	li a4, 4190232
	add a3, a1, a4
	add a4, a2, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	lw a3, 28(a2)
	sw a3, 28(a1)
	li a4, 4190236
	add a3, a1, a4
	add a4, a2, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	lw a3, 32(a2)
	sw a3, 32(a1)
	li a4, 4190240
	add a3, a1, a4
	add a4, a2, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	lw a3, 36(a2)
	sw a3, 36(a1)
	li a4, 4190244
	add a3, a1, a4
	add a4, a2, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	lw a3, 40(a2)
	sw a3, 40(a1)
	li a4, 4190248
	add a3, a1, a4
	add a4, a2, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	lw a3, 44(a2)
	sw a3, 44(a1)
	li a4, 4190252
	add a3, a1, a4
	add a4, a2, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	lw a3, 48(a2)
	sw a3, 48(a1)
	li a4, 4190256
	add a3, a1, a4
	add a4, a2, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	lw a3, 52(a2)
	sw a3, 52(a1)
	li a4, 4190260
	add a3, a1, a4
	add a4, a2, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	lw a3, 56(a2)
	sw a3, 56(a1)
	li a4, 4190264
	add a3, a1, a4
	add a4, a2, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	lw a3, 60(a2)
	sw a3, 60(a1)
	li a3, 4190268
	add a1, a1, a3
	add a2, a2, a3
	lw a2, 0(a2)
	sw a2, 0(a1)
	addiw a0, a0, 16
	li a1, 1024
	bge a0, a1, label15
	j label13
label15:
	li a0, 59
	jal _sysy_stoptime
	li a0, 1048576
	mv a1, s0
	jal putarray
	mv a0, s1
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 32
	ret
