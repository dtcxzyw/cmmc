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
	addi sp, sp, -88
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s2, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s8, 64(sp)
	sd s9, 72(sp)
	sd s7, 80(sp)
	jal getint
pcrel372:
	auipc a1, %pcrel_hi(w)
	mv s0, a0
	addi s2, a1, %pcrel_lo(pcrel372)
	mv a0, s2
	jal getarray
	li a0, 62
	jal _sysy_starttime
	mv t2, zero
	mv a5, s2
pcrel373:
	auipc a4, %pcrel_hi(temp)
pcrel374:
	auipc a2, %pcrel_hi(dst)
	slliw a0, s0, 2
	sh1add t1, s0, s0
	slliw t0, s0, 1
	addiw a1, s0, -4
	addi a3, a4, %pcrel_lo(pcrel373)
	addi s1, a2, %pcrel_lo(pcrel374)
	li a4, 4
	mv a2, a3
	bgt s0, zero, label6
	j label74
.p2align 2
label129:
	sh2add t3, s4, a5
	addiw t4, s5, 1
	sh2add t6, s3, a2
	lw t5, 0(t3)
	addw s3, s0, s3
	sw t5, 0(t6)
	ble s0, t4, label346
.p2align 2
label11:
	sh2add t3, s0, t3
.p2align 2
label7:
	lw t5, 0(t3)
	sh2add t6, s3, a2
	addiw t4, t4, 1
	addw s3, s0, s3
	sw t5, 0(t6)
	bgt s0, t4, label11
	addiw t2, t2, 1
	addi a2, a2, 4
	addi a5, a5, 4
	ble s0, t2, label74
.p2align 2
label6:
	ble s0, a4, label78
	sh2add t3, s0, a2
	mv s2, a5
	mv s5, zero
	mv s3, zero
	mv s4, zero
	sh2add t4, s0, a5
	sh2add t5, t0, a2
	sh2add t6, t0, a5
	sh2add a6, t1, a2
	sh2add a7, t1, a5
.p2align 2
label14:
	lw s6, 0(s2)
	sh2add s8, s3, a2
	sh2add s9, s4, t4
	addiw s5, s5, 4
	sw s6, 0(s8)
	sh2add s8, s3, t3
	lw s7, 0(s9)
	sh2add s9, s4, t6
	sw s7, 0(s8)
	sh2add s8, s3, t5
	lw s6, 0(s9)
	sh2add s9, s4, a7
	addw s4, a0, s4
	sw s6, 0(s8)
	sh2add s6, s3, a6
	lw s7, 0(s9)
	addw s3, a0, s3
	sw s7, 0(s6)
	ble a1, s5, label129
	sh2add s2, a0, s2
	j label14
label74:
	mv a1, a3
	mv t0, zero
	mv a2, zero
	bgt s0, zero, label139
	j label26
.p2align 2
label342:
	addiw t1, t1, 1
	mulw a0, s0, t1
	sh2add a5, a0, a3
	ble s0, t1, label349
.p2align 2
label50:
	mv t2, a3
	mv t3, zero
	sh2add t5, a0, a1
	lw t4, 0(t5)
	blt t4, zero, label54
.p2align 2
label57:
	sh2add t6, a2, t2
	lw t5, 0(t6)
	bge t5, zero, label58
	addiw t3, t3, 1
	ble s0, t3, label342
.p2align 2
label56:
	addi t2, t2, 4
	sh2add t5, a0, a1
	lw t4, 0(t5)
	bge t4, zero, label57
	addiw t3, t3, 1
	bgt s0, t3, label56
	addiw t1, t1, 1
	mulw a0, s0, t1
	sh2add a5, a0, a3
	bgt s0, t1, label50
	addiw t0, t0, 1
	addi a1, a1, 4
	mulw a2, s0, t0
	ble s0, t0, label26
.p2align 2
label139:
	mv t1, zero
	mv a0, zero
	mv a5, a3
	bgt s0, zero, label50
	addiw t0, t0, 1
	addi a1, a1, 4
	mulw a2, s0, t0
	bgt s0, t0, label139
	j label26
.p2align 2
label58:
	sh2add a7, a0, t2
	addw t6, t4, t5
	lw a6, 0(a7)
	bge a6, zero, label59
.p2align 2
label60:
	sh2add t4, t3, a5
	addiw t3, t3, 1
	sw t6, 0(t4)
	bgt s0, t3, label56
	addiw t1, t1, 1
	mulw a0, s0, t1
	sh2add a5, a0, a3
	bgt s0, t1, label50
	addiw t0, t0, 1
	addi a1, a1, 4
	mulw a2, s0, t0
	bgt s0, t0, label139
	j label26
.p2align 2
label59:
	sh2add t5, t3, a5
	lw t4, 0(t5)
	blt t6, t4, label60
	addiw t3, t3, 1
	bgt s0, t3, label56
	addiw t1, t1, 1
	mulw a0, s0, t1
	sh2add a5, a0, a3
	bgt s0, t1, label50
	addiw t0, t0, 1
	addi a1, a1, 4
	mulw a2, s0, t0
	bgt s0, t0, label139
	j label26
.p2align 2
label54:
	addiw t3, t3, 1
	bgt s0, t3, label56
	addiw t1, t1, 1
	mulw a0, s0, t1
	sh2add a5, a0, a3
	bgt s0, t1, label50
	addiw t0, t0, 1
	addi a1, a1, 4
	mulw a2, s0, t0
	bgt s0, t0, label139
label26:
	mulw s2, s0, s0
	beq s0, zero, label27
	ble s2, a4, label147
	addiw a1, s2, -4
	addiw a2, s2, -20
	li a0, 16
	ble a1, a0, label153
	mv a0, a3
	mv a4, zero
	j label31
.p2align 2
label34:
	addi a0, a0, 64
.p2align 2
label31:
	lw t0, 0(a0)
	sh2add a5, a4, s1
	addiw a4, a4, 16
	sw t0, 0(a5)
	lw t1, 4(a0)
	sw t1, 4(a5)
	lw t0, 8(a0)
	sw t0, 8(a5)
	lw t1, 12(a0)
	sw t1, 12(a5)
	lw t0, 16(a0)
	sw t0, 16(a5)
	lw t1, 20(a0)
	sw t1, 20(a5)
	lw t0, 24(a0)
	sw t0, 24(a5)
	lw t1, 28(a0)
	sw t1, 28(a5)
	lw t2, 32(a0)
	sw t2, 32(a5)
	lw t0, 36(a0)
	sw t0, 36(a5)
	lw t2, 40(a0)
	sw t2, 40(a5)
	lw t1, 44(a0)
	sw t1, 44(a5)
	lw t0, 48(a0)
	sw t0, 48(a5)
	lw t1, 52(a0)
	sw t1, 52(a5)
	lw t2, 56(a0)
	sw t2, 56(a5)
	lw t0, 60(a0)
	sw t0, 60(a5)
	bgt a2, a4, label34
	sh2add a0, a4, a3
	j label37
label40:
	addi a0, a0, 16
label37:
	lw a5, 0(a0)
	sh2add a2, a4, s1
	addiw a4, a4, 4
	sw a5, 0(a2)
	lw t0, 4(a0)
	sw t0, 4(a2)
	lw a5, 8(a0)
	sw a5, 8(a2)
	lw t0, 12(a0)
	sw t0, 12(a2)
	bgt a1, a4, label40
	sh2add a3, a4, a3
	mv a0, a4
label43:
	lw a1, 0(a3)
	sh2add a2, a0, s1
	addiw a0, a0, 1
	sw a1, 0(a2)
	ble s2, a0, label27
	addi a3, a3, 4
	j label43
label27:
	li a0, 64
	jal _sysy_stoptime
	mv a0, s2
	mv a1, s1
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s8, 64(sp)
	ld s9, 72(sp)
	ld s7, 80(sp)
	addi sp, sp, 88
	ret
.p2align 2
label349:
	addiw t0, t0, 1
	addi a1, a1, 4
	mulw a2, s0, t0
	bgt s0, t0, label139
	j label26
.p2align 2
label346:
	addiw t2, t2, 1
	addi a2, a2, 4
	addi a5, a5, 4
	bgt s0, t2, label6
	j label74
label153:
	mv a0, a3
	mv a4, zero
	j label37
label147:
	mv a0, zero
	j label43
label78:
	mv t3, a5
	mv s3, zero
	mv t4, zero
	j label7
