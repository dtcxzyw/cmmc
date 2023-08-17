.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
QuickSort:
	addi sp, sp, -80
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s5, 16(sp)
	sd s1, 24(sp)
	mv s1, a2
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	blt a1, a2, label91
label85:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	addi sp, sp, 80
	ret
label91:
	mv a0, a1
label2:
	sh2add a3, a0, s0
	mv a4, s1
	mv s2, a0
	lw a1, 0(a3)
	addi a2, a1, -1
.p2align 2
label4:
	ble a4, s2, label21
	sh2add a3, a4, s0
	blt s2, a4, label18
	sh2add a5, s2, s0
.p2align 2
label12:
	ble a4, s2, label4
	lw t0, 0(a5)
	ble a1, t0, label16
.p2align 2
label17:
	addiw s2, s2, 1
	addi a5, a5, 4
	ble a4, s2, label4
	lw t0, 0(a5)
	bgt a1, t0, label17
	j label16
.p2align 2
label18:
	lw a5, 0(a3)
	bge a2, a5, label19
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s2, a4, label18
	sh2add a5, s2, s0
	ble a4, s2, label4
	lw t0, 0(a5)
	bgt a1, t0, label17
	j label16
label21:
	sh2add a2, s2, s0
	addiw s3, s2, -1
	sw a1, 0(a2)
	bge a0, s3, label84
label22:
	sh2add a3, a0, s0
	mv a4, s3
	mv s4, a0
	lw a1, 0(a3)
	addi a2, a1, -1
	j label24
.p2align 2
label340:
	lw t0, 0(a5)
	ble a1, t0, label347
.p2align 2
label39:
	addiw s4, s4, 1
	addi a5, a5, 4
	bgt a4, s4, label340
.p2align 2
label24:
	ble a4, s4, label41
	sh2add a3, a4, s0
	blt s4, a4, label32
	sh2add a5, s4, s0
	lw t0, 0(a5)
	bgt a1, t0, label39
	j label347
.p2align 2
label32:
	lw a5, 0(a3)
	bge a2, a5, label33
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s4, a4, label32
	sh2add a5, s4, s0
	ble a4, s4, label24
	lw t0, 0(a5)
	bgt a1, t0, label39
	j label347
label41:
	sh2add a2, s4, s0
	addiw s5, s4, -1
	sw a1, 0(a2)
	bge a0, s5, label42
label43:
	sh2add a3, a0, s0
	mv a4, s5
	mv s6, a0
	lw a1, 0(a3)
	addi a2, a1, -1
	j label45
.p2align 2
label343:
	lw t0, 0(a5)
	ble a1, t0, label350
.p2align 2
label61:
	addiw s6, s6, 1
	addi a5, a5, 4
	bgt a4, s6, label343
.p2align 2
label45:
	ble a4, s6, label62
	sh2add a3, a4, s0
	blt s6, a4, label53
	sh2add a5, s6, s0
	lw t0, 0(a5)
	bgt a1, t0, label61
	j label350
.p2align 2
label53:
	lw a5, 0(a3)
	bge a2, a5, label54
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s6, a4, label53
	sh2add a5, s6, s0
	ble a4, s6, label45
	lw t0, 0(a5)
	bgt a1, t0, label61
	j label350
label62:
	sh2add a2, s6, s0
	addiw s7, s6, -1
	sw a1, 0(a2)
	bge a0, s7, label63
	mv a1, a0
	sh2add a3, a0, s0
	mv a4, s7
	mv s8, a0
	lw a0, 0(a3)
	addi a2, a0, -1
	j label66
label78:
	sw t0, 0(a3)
	addiw a4, a4, -1
.p2align 2
label66:
	ble a4, s8, label83
	sh2add a3, a4, s0
	blt s8, a4, label80
	sh2add a5, s8, s0
.p2align 2
label74:
	ble a4, s8, label66
	lw t0, 0(a5)
	ble a0, t0, label78
.p2align 2
label79:
	addiw s8, s8, 1
	addi a5, a5, 4
	ble a4, s8, label66
	lw t0, 0(a5)
	bgt a0, t0, label79
	j label78
.p2align 2
label80:
	lw a5, 0(a3)
	bge a2, a5, label274
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s8, a4, label80
	sh2add a5, s8, s0
	ble a4, s8, label66
	lw t0, 0(a5)
	bgt a0, t0, label79
	j label78
label83:
	sh2add a3, s8, s0
	addiw a2, s8, -1
	sw a0, 0(a3)
	mv a0, s0
	jal QuickSort
	addiw a1, s8, 1
	ble s7, a1, label63
	sh2add a3, a1, s0
	mv a4, s7
	mv s8, a1
	lw a0, 0(a3)
	addi a2, a0, -1
	j label66
label19:
	sh2add t0, s2, s0
	addiw s2, s2, 1
	sw a5, 0(t0)
	sh2add a5, s2, s0
	j label12
label33:
	sh2add t0, s4, s0
	addiw s4, s4, 1
	sw a5, 0(t0)
	sh2add a5, s4, s0
	ble a4, s4, label24
	lw t0, 0(a5)
	bgt a1, t0, label39
	j label347
label54:
	sh2add t0, s6, s0
	addiw s6, s6, 1
	sw a5, 0(t0)
	sh2add a5, s6, s0
	ble a4, s6, label45
	lw t0, 0(a5)
	bgt a1, t0, label61
	j label350
label84:
	addiw a0, s2, 1
	bgt s1, a0, label2
	j label85
label42:
	addiw a0, s4, 1
	bgt s3, a0, label22
	j label84
label63:
	addiw a0, s6, 1
	bgt s5, a0, label43
	j label42
label16:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label4
label347:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label24
label350:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label45
label274:
	sh2add t0, s8, s0
	addiw s8, s8, 1
	sw a5, 0(t0)
	sh2add a5, s8, s0
	j label74
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[40] RegSpill[0] CalleeSaved[32]
	addi sp, sp, -72
	li a2, 3
	li a3, 2
	li a4, 5
	addi t1, sp, 32
	slli a1, a2, 32
	sd ra, 0(sp)
	li a2, 9
	addi a0, a1, 4
	sd s0, 8(sp)
	slli a1, a3, 32
	sd s1, 16(sp)
	li a3, 1
	sd s2, 24(sp)
	sd a0, 32(sp)
	addi a0, a1, 9
	slli a1, a3, 32
	sd a0, 40(sp)
	slli a0, a4, 32
	sd a1, 48(sp)
	li a4, 8
	addi a3, a0, 6
	slli a1, a4, 32
	sd a3, 56(sp)
	addi a3, a1, 7
	mv a1, zero
	sd a3, 64(sp)
	mv a0, t1
	jal QuickSort
	li s0, 10
	bge a0, s0, label394
	sh2add s1, a0, t1
	mv s2, a0
.p2align 2
label390:
	lw a0, 0(s1)
	jal putint
	mv a0, s0
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label394
	addi s1, s1, 4
	j label390
label394:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 72
	ret
