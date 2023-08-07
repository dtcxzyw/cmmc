.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
matrix:
	.zero	80000000
.align 8
a:
	.zero	400000
.text
.p2align 2
.globl main
main:
	addi sp, sp, -104
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s6, 16(sp)
	sd s2, 24(sp)
	sd s0, 32(sp)
	sd s5, 40(sp)
	sd s7, 48(sp)
	sd s8, 56(sp)
	sd s3, 64(sp)
	sd s4, 72(sp)
	sd s9, 80(sp)
	sd s11, 88(sp)
	sd s10, 96(sp)
	jal getint
pcrel439:
	auipc a1, %pcrel_hi(a)
	mv s1, a0
	addi s2, a1, %pcrel_lo(pcrel439)
	mv a0, s2
	jal getarray
	mv s0, a0
	li a0, 28
	jal _sysy_starttime
pcrel440:
	auipc a0, %pcrel_hi(matrix)
	addiw t0, s0, -20
	addiw a5, s0, -4
	addi a1, a0, %pcrel_lo(pcrel440)
	ble s1, zero, label88
	li a0, 4
	ble s1, a0, label92
	addiw a2, s1, -4
	addiw a4, s1, -20
	li a0, 16
	ble a2, a0, label98
	mv a0, a1
	mv a3, zero
.p2align 2
label5:
	addiw t2, a3, 1
	slli t1, t2, 32
	addiw t2, a3, 2
	add.uw t3, a3, t1
	addiw t1, a3, 3
	sd t3, 0(a0)
	slli t4, t1, 32
	addiw t1, a3, 4
	add.uw t3, t2, t4
	addiw t2, a3, 5
	sd t3, 8(a0)
	slli t3, t2, 32
	addiw t2, a3, 6
	add.uw t4, t1, t3
	addiw t1, a3, 7
	sd t4, 16(a0)
	slli t4, t1, 32
	addiw t1, a3, 8
	add.uw t3, t2, t4
	addiw t2, a3, 9
	sd t3, 24(a0)
	slli t4, t2, 32
	addiw t2, a3, 10
	add.uw t3, t1, t4
	addiw t1, a3, 11
	sd t3, 32(a0)
	slli t3, t1, 32
	addiw t1, a3, 12
	add.uw t4, t2, t3
	addiw t2, a3, 13
	sd t4, 40(a0)
	slli t3, t2, 32
	addiw t2, a3, 14
	add.uw t4, t1, t3
	addiw t1, a3, 15
	sd t4, 48(a0)
	addiw a3, a3, 16
	slli t4, t1, 32
	add.uw t3, t2, t4
	sd t3, 56(a0)
	ble a4, a3, label133
	addi a0, a0, 64
	j label5
label88:
	mv t1, s2
	mv t2, zero
	lw a2, 0(s2)
	mv a0, zero
	divw a3, s1, a2
	mv a4, zero
	bgt a3, zero, label164
label163:
	addiw t2, t2, 1
	bgt s0, t2, label34
	j label35
.p2align 2
label164:
	mv t3, zero
	ble a2, zero, label167
.p2align 2
label30:
	addiw t4, t3, 1
	blt a0, t3, label173
	mulw a7, a3, t3
	addw t6, a4, t3
	addw a6, a0, a7
	mv t3, t4
	sh2add a7, t6, a1
	sh2add t5, a6, a1
	lw a6, 0(a7)
	sw a6, 0(t5)
	bgt a2, t4, label30
	j label417
.p2align 2
label173:
	mv t3, t4
	bgt a2, t4, label30
	addiw a0, a0, 1
	mulw a4, a2, a0
	bgt a3, a0, label164
	addiw t2, t2, 1
	ble s0, t2, label35
.p2align 2
label34:
	addi t1, t1, 4
	mv a0, zero
	mv a4, zero
	lw a2, 0(t1)
	divw a3, s1, a2
	bgt a3, zero, label164
	j label163
.p2align 2
label417:
	addiw a0, a0, 1
	mulw a4, a2, a0
	bgt a3, a0, label164
	addiw t2, t2, 1
	bgt s0, t2, label34
	j label35
.p2align 2
label167:
	addiw a0, a0, 1
	mulw a4, a2, a0
	bgt a3, a0, label164
	addiw t2, t2, 1
	bgt s0, t2, label34
label35:
	li a0, 4
	ble s0, a0, label36
	li a0, 16
	ble a5, a0, label207
	mv a0, a1
	li a2, 16
	li a3, 15
	li a4, 14
	li t1, 13
	li t2, 12
	li t3, 11
	li t4, 10
	li t5, 9
	li t6, 8
	li a7, 7
	li s1, 6
	li s2, 5
	li s3, 4
	li s4, 3
	li s6, 2
	mv s5, zero
	li a6, 1
	mv s7, zero
	mv s8, zero
.p2align 2
label56:
	lw s9, 0(a0)
	addw s10, s5, a6
	addiw s7, s7, 16
	addiw a6, a6, 32
	lw s11, 4(a0)
	mulw s10, s11, s10
	mulw s11, s5, s9
	addiw s9, s6, 2
	addw s10, s10, s11
	addiw s6, s6, 64
	addw s9, s5, s9
	lw s11, 8(a0)
	mulw s9, s11, s9
	addiw s11, s4, 6
	addw s9, s10, s9
	addiw s4, s4, 96
	addw s11, s5, s11
	lw s10, 12(a0)
	mulw s10, s10, s11
	addw s11, s9, s10
	addiw s10, s3, 12
	lw s9, 16(a0)
	addiw s3, s3, 128
	addw s10, s5, s10
	mulw s9, s9, s10
	addw s10, s11, s9
	addiw s11, s2, 20
	lw s9, 20(a0)
	addiw s2, s2, 160
	addw s11, s5, s11
	mulw s11, s9, s11
	addw s9, s10, s11
	addiw s10, s1, 30
	lw s11, 24(a0)
	addiw s1, s1, 192
	addw s10, s5, s10
	mulw s10, s11, s10
	lw s11, 28(a0)
	addw s10, s9, s10
	addiw s9, a7, 42
	addiw a7, a7, 224
	addw s9, s5, s9
	mulw s9, s11, s9
	lw s11, 32(a0)
	addw s9, s10, s9
	addiw s10, t6, 56
	addiw t6, t6, 256
	addw s10, s5, s10
	mulw s10, s11, s10
	lw s11, 36(a0)
	addw s10, s9, s10
	addiw s9, t5, 72
	addiw t5, t5, 288
	addw s9, s5, s9
	mulw s9, s11, s9
	lw s11, 40(a0)
	addw s9, s10, s9
	addiw s10, t4, 90
	addiw t4, t4, 320
	addw s10, s5, s10
	mulw s10, s11, s10
	lw s11, 44(a0)
	addw s10, s9, s10
	addiw s9, t3, 110
	addiw t3, t3, 352
	addw s9, s5, s9
	mulw s9, s11, s9
	addiw s11, t2, 132
	addw s9, s10, s9
	addiw t2, t2, 384
	addw s11, s5, s11
	lw s10, 48(a0)
	mulw s10, s10, s11
	addw s11, s9, s10
	addiw s10, t1, 156
	lw s9, 52(a0)
	addiw t1, t1, 416
	addw s10, s5, s10
	mulw s9, s9, s10
	addw s10, s11, s9
	addiw s11, a4, 182
	lw s9, 56(a0)
	addiw a4, a4, 448
	addw s11, s5, s11
	mulw s11, s9, s11
	addw s9, s10, s11
	addiw s10, a3, 210
	lw s11, 60(a0)
	addiw a3, a3, 480
	addw s10, s5, s10
	mulw s10, s11, s10
	addw s11, s9, s10
	addiw s9, a2, 240
	addw s8, s8, s11
	addiw a2, a2, 512
	addw s5, s5, s9
	ble t0, s7, label77
	addi a0, a0, 64
	j label56
label46:
	lw a2, 0(a0)
	addw t1, a6, s5
	addiw s7, s7, 4
	lw a4, 4(a0)
	mulw t2, s5, a2
	mulw t0, a4, t1
	addiw t1, a6, 1
	addw a3, t0, t2
	sh1add a4, t1, s5
	lw t0, 8(a0)
	sh1add t1, a6, a6
	mulw t2, a4, t0
	lw t0, 12(a0)
	addiw a4, t1, 6
	addw a2, a3, t2
	addw a3, s5, a4
	mulw t1, a3, t0
	slliw a3, a6, 2
	addw a4, a2, t1
	addiw a6, a6, 8
	addi a2, a3, 12
	addw s8, s8, a4
	addw s5, s5, a2
	ble a5, s7, label52
	addi a0, a0, 16
	j label46
label77:
	sh2add a0, s7, a1
	j label46
label52:
	sh2add a1, s7, a1
	mv a0, s5
	mv a2, a6
.p2align 2
label37:
	lw a4, 0(a1)
	addiw s7, s7, 1
	mulw a3, a0, a4
	addw a0, a0, a2
	addw s8, s8, a3
	addiw a2, a2, 2
	ble s0, s7, label43
	addi a1, a1, 4
	j label37
label43:
	subw a1, zero, s8
	li a0, 47
	max s0, a1, s8
	jal _sysy_stoptime
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s2, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s7, 48(sp)
	ld s8, 56(sp)
	ld s3, 64(sp)
	ld s4, 72(sp)
	ld s9, 80(sp)
	ld s11, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 104
	ret
label36:
	mv a0, zero
	li a2, 1
	mv s7, zero
	mv s8, zero
	j label37
label207:
	mv a0, a1
	mv s8, zero
	mv s7, zero
	li a6, 1
	mv s5, zero
	j label46
label98:
	mv a0, a1
	mv a3, zero
label11:
	sw a3, 0(a0)
	addiw a4, a3, 1
	addiw t1, a3, 2
	sw a4, 4(a0)
	addiw a4, a3, 3
	sw t1, 8(a0)
	addiw a3, a3, 4
	sw a4, 12(a0)
	ble a2, a3, label14
	addi a0, a0, 16
	j label11
label14:
	sh2add a0, a3, a1
label16:
	sw a3, 0(a0)
	addiw a3, a3, 1
	ble s1, a3, label88
	addi a0, a0, 4
	j label16
label92:
	mv a0, a1
	mv a3, zero
	j label16
label133:
	sh2add a0, a3, a1
	j label11
