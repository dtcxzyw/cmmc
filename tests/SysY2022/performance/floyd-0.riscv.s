.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
temp:
	.zero	8388608
.align 8
w:
	.zero	8388608
.align 8
dst:
	.zero	8388608
.text
.p2align 2
.globl main
main:
	addi sp, sp, -72
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s2, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s3, 48(sp)
	sd s7, 56(sp)
	sd s4, 64(sp)
	jal getint
pcrel381:
	auipc a1, %pcrel_hi(w)
	mv s0, a0
	addi s2, a1, %pcrel_lo(pcrel381)
	mv a0, s2
	jal getarray
	li a0, 62
	jal _sysy_starttime
	mv t0, zero
	mv a5, s2
pcrel382:
	auipc a4, %pcrel_hi(temp)
pcrel383:
	auipc a2, %pcrel_hi(dst)
	slliw a0, s0, 2
	addiw a1, s0, -3
	addi a3, a4, %pcrel_lo(pcrel382)
	addi s1, a2, %pcrel_lo(pcrel383)
	li a4, 3
	mv a2, a3
	bgt s0, zero, label48
	j label6
.p2align 2
label257:
	addiw t0, t0, 1
	addi a2, a2, 4
	addi a5, a5, 4
	ble s0, t0, label6
.p2align 2
label48:
	ble s0, a4, label242
	sh2add t1, s0, a2
	mv a6, a5
	mv s3, zero
	mv a7, zero
	mv s2, zero
	sh2add t4, s0, a5
	sh2add t2, s0, t1
	sh2add t5, s0, t4
	sh2add t3, s0, t2
	sh2add t6, s0, t5
.p2align 2
label61:
	sh2add s5, a7, a2
	lw s6, 0(a6)
	sh2add s7, s2, t4
	addiw s3, s3, 4
	sw s6, 0(s5)
	sh2add s6, a7, t1
	lw s4, 0(s7)
	sh2add s7, s2, t5
	sw s4, 0(s6)
	sh2add s6, a7, t2
	lw s5, 0(s7)
	sh2add s7, s2, t6
	addw s2, a0, s2
	sw s5, 0(s6)
	sh2add s5, a7, t3
	lw s4, 0(s7)
	addw a7, a0, a7
	sw s4, 0(s5)
	ble a1, s3, label299
	sh2add a6, a0, a6
	j label61
.p2align 2
label299:
	ble s0, s3, label352
.p2align 2
label53:
	sh2add t1, s2, a5
	mv t2, a7
	mv t3, s3
.p2align 2
label54:
	sh2add t4, t2, a2
	lw t5, 0(t1)
	addiw t3, t3, 1
	addw t2, s0, t2
	sw t5, 0(t4)
	ble s0, t3, label257
	sh2add t1, s0, t1
	j label54
label242:
	mv s3, zero
	mv a7, zero
	mv s2, zero
	bgt s0, zero, label53
	addiw t0, t0, 1
	addi a2, a2, 4
	addi a5, a5, 4
	bgt s0, t0, label48
label6:
	mv a1, a3
	mv t0, zero
label7:
	mulw a2, s0, t0
	bgt s0, t0, label84
	j label10
.p2align 2
label362:
	addiw t0, t0, 1
	addi a1, a1, 4
	mulw a2, s0, t0
	ble s0, t0, label10
.p2align 2
label84:
	mv t1, zero
	mv a0, zero
	mv a5, a3
	bgt s0, zero, label36
	addiw t0, t0, 1
	addi a1, a1, 4
	j label7
.p2align 2
label355:
	addiw t1, t1, 1
	mulw a0, s0, t1
	sh2add a5, a0, a3
	ble s0, t1, label362
.p2align 2
label36:
	mv t2, a3
	mv t3, zero
	sh2add t5, a0, a1
	lw t4, 0(t5)
	bge t4, zero, label43
	li t3, 1
	bgt s0, t3, label42
	addiw t1, t1, 1
	mulw a0, s0, t1
	sh2add a5, a0, a3
	bgt s0, t1, label36
	addiw t0, t0, 1
	addi a1, a1, 4
	mulw a2, s0, t0
	bgt s0, t0, label84
	j label10
.p2align 2
label346:
	addiw t3, t3, 1
	ble s0, t3, label355
.p2align 2
label42:
	addi t2, t2, 4
	sh2add t5, a0, a1
	lw t4, 0(t5)
	blt t4, zero, label346
.p2align 2
label43:
	sh2add t6, a2, t2
	lw t5, 0(t6)
	bge t5, zero, label44
	addiw t3, t3, 1
	bgt s0, t3, label42
	addiw t1, t1, 1
	mulw a0, s0, t1
	sh2add a5, a0, a3
	bgt s0, t1, label36
	addiw t0, t0, 1
	addi a1, a1, 4
	mulw a2, s0, t0
	bgt s0, t0, label84
	j label10
.p2align 2
label44:
	sh2add a7, a0, t2
	addw t6, t4, t5
	lw a6, 0(a7)
	blt a6, zero, label46
	sh2add t4, t3, a5
	lw t5, 0(t4)
	blt t6, t5, label46
	addiw t3, t3, 1
	bgt s0, t3, label42
	addiw t1, t1, 1
	mulw a0, s0, t1
	sh2add a5, a0, a3
	bgt s0, t1, label36
	addiw t0, t0, 1
	addi a1, a1, 4
	mulw a2, s0, t0
	bgt s0, t0, label84
	j label10
.p2align 2
label46:
	sh2add t4, t3, a5
	addiw t3, t3, 1
	sw t6, 0(t4)
	bgt s0, t3, label42
	addiw t1, t1, 1
	mulw a0, s0, t1
	sh2add a5, a0, a3
	bgt s0, t1, label36
	addiw t0, t0, 1
	addi a1, a1, 4
	mulw a2, s0, t0
	bgt s0, t0, label84
label10:
	mulw s2, s0, s0
	beq s0, zero, label11
	ble s2, a4, label92
	addiw a1, s2, -3
	addiw a2, s2, -18
	li a0, 15
	ble a1, a0, label113
	mv a0, s1
	mv a4, zero
	j label22
.p2align 2
label25:
	addi a0, a0, 64
.p2align 2
label22:
	sh2add a5, a4, a3
	addiw a4, a4, 16
	lw t1, 0(a5)
	sw t1, 0(a0)
	lw t0, 4(a5)
	sw t0, 4(a0)
	lw t2, 8(a5)
	sw t2, 8(a0)
	lw t1, 12(a5)
	sw t1, 12(a0)
	lw t0, 16(a5)
	sw t0, 16(a0)
	lw t1, 20(a5)
	sw t1, 20(a0)
	lw t2, 24(a5)
	sw t2, 24(a0)
	lw t0, 28(a5)
	sw t0, 28(a0)
	lw t2, 32(a5)
	sw t2, 32(a0)
	lw t1, 36(a5)
	sw t1, 36(a0)
	lw t0, 40(a5)
	sw t0, 40(a0)
	lw t1, 44(a5)
	sw t1, 44(a0)
	lw t2, 48(a5)
	sw t2, 48(a0)
	lw t0, 52(a5)
	sw t0, 52(a0)
	lw t1, 56(a5)
	sw t1, 56(a0)
	lw t0, 60(a5)
	sw t0, 60(a0)
	bgt a2, a4, label25
	mv a2, a4
label26:
	ble a1, a2, label171
	sh2add a0, a2, a3
	j label30
label33:
	addi a0, a0, 16
label30:
	sh2add a4, a2, s1
	lw t0, 0(a0)
	addiw a2, a2, 4
	sw t0, 0(a4)
	lw a5, 4(a0)
	sw a5, 4(a4)
	lw t0, 8(a0)
	sw t0, 8(a4)
	lw a5, 12(a0)
	sw a5, 12(a4)
	bgt a1, a2, label33
	mv a0, a2
label13:
	ble s2, a0, label11
	sh2add a1, a0, a3
	j label16
label19:
	addi a1, a1, 4
label16:
	sh2add a2, a0, s1
	lw a3, 0(a1)
	addiw a0, a0, 1
	sw a3, 0(a2)
	bgt s2, a0, label19
label11:
	li a0, 64
	jal _sysy_stoptime
	mv a0, s2
	mv a1, s1
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s3, 48(sp)
	ld s7, 56(sp)
	ld s4, 64(sp)
	addi sp, sp, 72
	ret
.p2align 2
label352:
	addiw t0, t0, 1
	addi a2, a2, 4
	addi a5, a5, 4
	bgt s0, t0, label48
	j label6
label92:
	mv a0, zero
	j label13
label171:
	mv a0, a4
	j label13
label113:
	mv a2, zero
	mv a4, zero
	j label26
