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
	addi sp, sp, -32
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s2, 16(sp)
	sd s1, 24(sp)
	jal getint
pcrel288:
	auipc a1, %pcrel_hi(w)
	mv s0, a0
	addi s2, a1, %pcrel_lo(pcrel288)
	mv a0, s2
	jal getarray
	li a0, 62
	jal _sysy_starttime
pcrel289:
	auipc a2, %pcrel_hi(temp)
pcrel290:
	auipc a1, %pcrel_hi(dst)
	addi a0, a2, %pcrel_lo(pcrel289)
	addi s1, a1, %pcrel_lo(pcrel290)
	mv a1, zero
	bgt s0, zero, label56
label55:
	mv a4, zero
	j label11
.p2align 2
label56:
	mv a2, zero
	mv a3, zero
.p2align 2
label4:
	addw a4, a1, a2
	ble s0, a3, label61
	mulw t1, s0, a3
	addw t2, a1, t1
	sh2add t0, t2, s2
	lw a5, 0(t0)
	addiw a3, a3, 1
	sh2add t0, a4, a0
	addw a2, s0, a2
	sw a5, 0(t0)
	bgt s0, a3, label4
	j label264
.p2align 2
label61:
	li a5, -1
	addiw a3, a3, 1
	sh2add t0, a4, a0
	addw a2, s0, a2
	sw a5, 0(t0)
	bgt s0, a3, label4
	addiw a1, a1, 1
	bgt s0, a1, label56
	j label55
label11:
	mulw a2, s0, a4
	ble s0, a4, label13
.p2align 2
label80:
	mv a5, zero
	mv a3, zero
	sext.w a1, a4
	bgt s0, zero, label186
	j label256
label13:
	mulw s2, s0, s0
	beq s0, zero, label14
	li a1, 4
	ble s2, a1, label88
	addiw a2, s2, -4
	addiw a3, s2, -20
	li a1, 16
	ble a2, a1, label94
	mv a1, a0
	mv a4, zero
.p2align 2
label18:
	lw t0, 0(a1)
	sh2add a5, a4, s1
	addiw a4, a4, 16
	sw t0, 0(a5)
	lw t1, 4(a1)
	sw t1, 4(a5)
	lw t2, 8(a1)
	sw t2, 8(a5)
	lw t0, 12(a1)
	sw t0, 12(a5)
	lw t1, 16(a1)
	sw t1, 16(a5)
	lw t0, 20(a1)
	sw t0, 20(a5)
	lw t1, 24(a1)
	sw t1, 24(a5)
	lw t0, 28(a1)
	sw t0, 28(a5)
	lw t1, 32(a1)
	sw t1, 32(a5)
	lw t2, 36(a1)
	sw t2, 36(a5)
	lw t0, 40(a1)
	sw t0, 40(a5)
	lw t1, 44(a1)
	sw t1, 44(a5)
	lw t0, 48(a1)
	sw t0, 48(a5)
	lw t1, 52(a1)
	sw t1, 52(a5)
	lw t0, 56(a1)
	sw t0, 56(a5)
	lw t1, 60(a1)
	sw t1, 60(a5)
	ble a3, a4, label21
	addi a1, a1, 64
	j label18
.p2align 2
label186:
	mv t0, zero
	bgt s0, zero, label40
	j label39
.p2align 2
label260:
	addiw a5, a5, 1
	mulw a3, s0, a5
	addw a1, a4, a3
	bgt s0, a5, label186
	addiw a4, a4, 1
	mulw a2, s0, a4
	bgt s0, a4, label80
	j label13
.p2align 2
label40:
	sh2add t2, a1, a0
	lw t1, 0(t2)
	bge t1, zero, label42
	addiw t0, t0, 1
	bgt s0, t0, label40
	j label260
.p2align 2
label42:
	addw t4, a2, t0
	sh2add t3, t4, a0
	lw t2, 0(t3)
	bge t2, zero, label43
	addiw t0, t0, 1
	bgt s0, t0, label40
	addiw a5, a5, 1
	mulw a3, s0, a5
	addw a1, a4, a3
	bgt s0, a5, label186
	addiw a4, a4, 1
	mulw a2, s0, a4
	bgt s0, a4, label80
	j label13
.p2align 2
label43:
	addw t3, a3, t0
	addw t4, t1, t2
	sh2add t6, t3, a0
	lw t5, 0(t6)
	bge t5, zero, label44
.p2align 2
label45:
	sh2add t1, t3, a0
	sw t4, 0(t1)
	addiw t0, t0, 1
	bgt s0, t0, label40
	addiw a5, a5, 1
	mulw a3, s0, a5
	addw a1, a4, a3
	bgt s0, a5, label186
	addiw a4, a4, 1
	mulw a2, s0, a4
	bgt s0, a4, label80
	j label13
.p2align 2
label44:
	sh2add t1, t3, a0
	lw t2, 0(t1)
	blt t4, t2, label45
	addiw t0, t0, 1
	bgt s0, t0, label40
	addiw a5, a5, 1
	mulw a3, s0, a5
	addw a1, a4, a3
	bgt s0, a5, label186
	addiw a4, a4, 1
	mulw a2, s0, a4
	bgt s0, a4, label80
	j label13
.p2align 2
label39:
	addiw a5, a5, 1
	mulw a3, s0, a5
	addw a1, a4, a3
	bgt s0, a5, label186
	addiw a4, a4, 1
	mulw a2, s0, a4
	bgt s0, a4, label80
	j label13
label21:
	sh2add a1, a4, a0
label23:
	lw a5, 0(a1)
	sh2add a3, a4, s1
	addiw a4, a4, 4
	sw a5, 0(a3)
	lw t0, 4(a1)
	sw t0, 4(a3)
	lw t1, 8(a1)
	sw t1, 8(a3)
	lw a5, 12(a1)
	sw a5, 12(a3)
	ble a2, a4, label167
	addi a1, a1, 16
	j label23
label167:
	sh2add a0, a4, a0
	mv a1, a4
label29:
	lw a2, 0(a0)
	sh2add a3, a1, s1
	addiw a1, a1, 1
	sw a2, 0(a3)
	ble s2, a1, label14
	addi a0, a0, 4
	j label29
label14:
	li a0, 64
	jal _sysy_stoptime
	mv a0, s2
	mv a1, s1
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	addi sp, sp, 32
	ret
.p2align 2
label264:
	addiw a1, a1, 1
	bgt s0, a1, label56
	j label55
label94:
	mv a1, a0
	mv a4, zero
	j label23
label256:
	addiw a4, a4, 1
	j label11
label88:
	mv a1, zero
	j label29
