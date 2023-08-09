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
	sd s4, 56(sp)
	sd s7, 64(sp)
	jal getint
pcrel385:
	auipc a1, %pcrel_hi(w)
	mv s0, a0
	addi s2, a1, %pcrel_lo(pcrel385)
	mv a0, s2
	jal getarray
	li a0, 62
	jal _sysy_starttime
	mv t0, zero
	mv a5, s2
pcrel386:
	auipc a2, %pcrel_hi(dst)
	slliw a0, s0, 2
pcrel387:
	auipc a4, %pcrel_hi(temp)
	addiw a1, s0, -3
	addi s1, a2, %pcrel_lo(pcrel386)
	addi a3, a4, %pcrel_lo(pcrel387)
	li a4, 3
	mv a2, a3
	bgt s0, zero, label6
	j label78
.p2align 2
label139:
	addiw t0, t0, 1
	addi a2, a2, 4
	addi a5, a5, 4
	ble s0, t0, label78
.p2align 2
label6:
	ble s0, a4, label82
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
label8:
	sh2add s4, a7, a2
	lw s7, 0(a6)
	sh2add s6, s2, t4
	addiw s3, s3, 4
	sw s7, 0(s4)
	sh2add s7, a7, t1
	lw s5, 0(s6)
	sh2add s6, s2, t5
	sw s5, 0(s7)
	sh2add s7, a7, t2
	lw s4, 0(s6)
	sh2add s6, s2, t6
	addw s2, a0, s2
	sw s4, 0(s7)
	sh2add s4, a7, t3
	lw s5, 0(s6)
	addw a7, a0, a7
	sw s5, 0(s4)
	ble a1, s3, label119
	sh2add a6, a0, a6
	j label8
.p2align 2
label119:
	ble s0, s3, label345
.p2align 2
label19:
	sh2add t1, s2, a5
	mv t2, a7
	mv t3, s3
.p2align 2
label20:
	sh2add t4, t2, a2
	lw t5, 0(t1)
	addiw t3, t3, 1
	addw t2, s0, t2
	sw t5, 0(t4)
	ble s0, t3, label139
	sh2add t1, s0, t1
	j label20
label78:
	mv a1, a3
	mv t0, zero
label26:
	mulw a2, s0, t0
	bgt s0, t0, label147
	j label29
.p2align 2
label362:
	addiw t0, t0, 1
	addi a1, a1, 4
	mulw a2, s0, t0
	ble s0, t0, label29
.p2align 2
label147:
	mv t1, zero
	mv a0, zero
	mv a5, a3
	bgt s0, zero, label55
	addiw t0, t0, 1
	addi a1, a1, 4
	j label26
.p2align 2
label358:
	addiw t1, t1, 1
	mulw a0, s0, t1
	sh2add a5, a0, a3
	ble s0, t1, label362
.p2align 2
label55:
	mv t2, a3
	mv t3, zero
	sh2add t5, a0, a1
	lw t4, 0(t5)
	bge t4, zero, label62
	li t3, 1
	bgt s0, t3, label61
	addiw t1, t1, 1
	mulw a0, s0, t1
	sh2add a5, a0, a3
	bgt s0, t1, label55
	addiw t0, t0, 1
	addi a1, a1, 4
	mulw a2, s0, t0
	bgt s0, t0, label147
	j label29
.p2align 2
label350:
	addiw t3, t3, 1
	ble s0, t3, label358
.p2align 2
label61:
	addi t2, t2, 4
	sh2add t5, a0, a1
	lw t4, 0(t5)
	blt t4, zero, label350
.p2align 2
label62:
	sh2add t6, a2, t2
	lw t5, 0(t6)
	blt t5, zero, label282
	sh2add a7, a0, t2
	addw t6, t4, t5
	lw a6, 0(a7)
	bge a6, zero, label64
.p2align 2
label65:
	sh2add t4, t3, a5
	addiw t3, t3, 1
	sw t6, 0(t4)
	bgt s0, t3, label61
	addiw t1, t1, 1
	mulw a0, s0, t1
	sh2add a5, a0, a3
	bgt s0, t1, label55
	addiw t0, t0, 1
	addi a1, a1, 4
	mulw a2, s0, t0
	bgt s0, t0, label147
	j label29
.p2align 2
label64:
	sh2add t5, t3, a5
	lw t4, 0(t5)
	blt t6, t4, label65
	addiw t3, t3, 1
	bgt s0, t3, label61
	addiw t1, t1, 1
	mulw a0, s0, t1
	sh2add a5, a0, a3
	bgt s0, t1, label55
	addiw t0, t0, 1
	addi a1, a1, 4
	mulw a2, s0, t0
	bgt s0, t0, label147
	j label29
.p2align 2
label282:
	addiw t3, t3, 1
	bgt s0, t3, label61
	addiw t1, t1, 1
	mulw a0, s0, t1
	sh2add a5, a0, a3
	bgt s0, t1, label55
	addiw t0, t0, 1
	addi a1, a1, 4
	mulw a2, s0, t0
	bgt s0, t0, label147
label29:
	mulw s2, s0, s0
	beq s0, zero, label30
	ble s2, a4, label155
	addiw a1, s2, -3
	addiw a2, s2, -18
	li a0, 15
	ble a1, a0, label161
	mv a0, s1
	mv a4, zero
.p2align 2
label42:
	sh2add a5, a4, a3
	addiw a4, a4, 16
	lw t0, 0(a5)
	sw t0, 0(a0)
	lw t1, 4(a5)
	sw t1, 4(a0)
	lw t0, 8(a5)
	sw t0, 8(a0)
	lw t2, 12(a5)
	sw t2, 12(a0)
	lw t1, 16(a5)
	sw t1, 16(a0)
	lw t0, 20(a5)
	sw t0, 20(a0)
	lw t2, 24(a5)
	sw t2, 24(a0)
	lw t1, 28(a5)
	sw t1, 28(a0)
	lw t0, 32(a5)
	sw t0, 32(a0)
	lw t1, 36(a5)
	sw t1, 36(a0)
	lw t2, 40(a5)
	sw t2, 40(a0)
	lw t0, 44(a5)
	sw t0, 44(a0)
	lw t1, 48(a5)
	sw t1, 48(a0)
	lw t0, 52(a5)
	sw t0, 52(a0)
	lw t1, 56(a5)
	sw t1, 56(a0)
	lw t0, 60(a5)
	sw t0, 60(a0)
	ble a2, a4, label238
	addi a0, a0, 64
	j label42
label82:
	mv s3, zero
	mv a7, zero
	mv s2, zero
	bgt s0, zero, label19
	addiw t0, t0, 1
	addi a2, a2, 4
	addi a5, a5, 4
	bgt s0, t0, label6
	j label78
label238:
	mv a2, a4
label33:
	ble a1, a2, label165
	sh2add a0, a2, a3
	j label37
label40:
	addi a0, a0, 16
label37:
	sh2add a4, a2, s1
	lw a5, 0(a0)
	addiw a2, a2, 4
	sw a5, 0(a4)
	lw t0, 4(a0)
	sw t0, 4(a4)
	lw a5, 8(a0)
	sw a5, 8(a4)
	lw t0, 12(a0)
	sw t0, 12(a4)
	bgt a1, a2, label40
	mv a0, a2
label46:
	ble s2, a0, label30
	sh2add a1, a0, a3
	j label49
label52:
	addi a1, a1, 4
label49:
	sh2add a2, a0, s1
	lw a3, 0(a1)
	addiw a0, a0, 1
	sw a3, 0(a2)
	bgt s2, a0, label52
label30:
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
	ld s4, 56(sp)
	ld s7, 64(sp)
	addi sp, sp, 72
	ret
.p2align 2
label345:
	addiw t0, t0, 1
	addi a2, a2, 4
	addi a5, a5, 4
	bgt s0, t0, label6
	j label78
label165:
	mv a0, a4
	j label46
label155:
	mv a0, zero
	j label46
label161:
	mv a2, zero
	mv a4, zero
	j label33
