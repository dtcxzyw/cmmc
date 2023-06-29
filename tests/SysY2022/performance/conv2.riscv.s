.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
a:
	.zero	40000000
.align 4
b:
	.zero	40000000
.align 4
kernelid:
	.zero	40000
.text
.globl main
main:
	addi sp, sp, -120
	sd s2, 16(sp)
	sd s6, 32(sp)
	sd s1, 0(sp)
	sd s0, 8(sp)
	sd s5, 112(sp)
	sd s3, 104(sp)
	sd s4, 96(sp)
	sd s7, 88(sp)
	sd s8, 80(sp)
	sd s9, 72(sp)
	sd s10, 64(sp)
	sd s11, 56(sp)
	sd ra, 48(sp)
	jal getint
	mv s2, a0
	jal getint
	mv a6, a0
	sd a0, 40(sp)
	jal getint
	mv s6, a0
	sd a0, 24(sp)
	ld a6, 40(sp)
	mulw s1, a6, a0
pcrel789:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel789)
	mv s0, a0
	jal getarray
pcrel790:
	auipc a0, %pcrel_hi(kernelid)
	addi a0, a0, %pcrel_lo(pcrel790)
	mv s3, a0
	jal getarray
	mv s4, a0
	srliw a0, s2, 31
	add a0, s2, a0
	sraiw s2, a0, 1
	li a0, 109
	jal _sysy_starttime
pcrel791:
	auipc a0, %pcrel_hi(b)
	addi a0, a0, %pcrel_lo(pcrel791)
	ble s4, zero, label2
	mv a1, zero
	slli a2, zero, 2
	add a2, s3, a2
	lw a2, 0(a2)
	mv a3, zero
	subw a4, zero, s2
	addw a5, s2, zero
	ld s6, 24(sp)
	mulw t1, s6, zero
	mv t2, zero
	subw t3, zero, s2
	addw t4, s2, zero
	mv t5, a4
	mv a7, zero
	slti t6, a4, 0
	ld a6, 40(sp)
	slt a6, a4, a6
	xori a6, a6, 1
	or t6, t6, a6
	mv a6, t3
	slti s5, t3, 0
	or s5, t6, s5
	ld s6, 24(sp)
	slt s6, t3, s6
	xori s6, s6, 1
	or s5, s5, s6
	beq s5, zero, label76
	mv s5, zero
	bne a2, zero, label17
	addw a7, zero, zero
	li s5, 1073741824
	ble a7, s5, label50
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
label567:
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	j label609
label64:
	addiw a1, a1, 1
	bge a1, s4, label2
	slli a2, a1, 2
	add a2, s3, a2
	lw a2, 0(a2)
	mv a3, zero
	subw a4, zero, s2
	addw a5, s2, zero
	ld s6, 24(sp)
	mulw t1, s6, zero
	mv t2, zero
	subw t3, zero, s2
	addw t4, s2, zero
	mv t5, a4
	mv a7, zero
	slti t6, a4, 0
	ld a6, 40(sp)
	slt a6, a4, a6
	xori a6, a6, 1
	or t6, t6, a6
	mv a6, t3
	slti s5, t3, 0
	or s5, t6, s5
	ld s6, 24(sp)
	slt s6, t3, s6
	xori s6, s6, 1
	or s5, s5, s6
	beq s5, zero, label76
	mv s5, zero
	bne a2, zero, label17
	addw a7, zero, zero
	li s5, 1073741824
	ble a7, s5, label50
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	j label567
label715:
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
label716:
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	j label733
label17:
	li s6, 1
	bne a2, s6, label18
	mv s7, zero
	li s8, 1073741824
	bge s6, s8, label58
	j label44
label18:
	li s6, 2
	bne a2, s6, label19
	ble a7, s5, label40
	mv s7, a7
	addiw a6, a6, 1
	blt a6, t4, label215
	addiw t5, t5, 1
	blt t5, a5, label220
	addw t3, t2, t1
	slliw t3, t3, 2
	add t3, a0, t3
	sw a7, 0(t3)
	addiw t2, t2, 1
	ld s6, 24(sp)
	blt t2, s6, label7
	addiw a3, a3, 1
	ld a6, 40(sp)
	blt a3, a6, label5
	ble s1, zero, label64
	mv a4, zero
	addiw a2, zero, 4
	bge a2, s1, label246
	j label67
label19:
	li s6, 3
	bne a2, s6, label20
	li s6, 1
	mv s7, zero
	li s8, 1073741824
	bge s6, s8, label58
	divw s8, a7, s6
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label37
	slliw s7, zero, 1
	addiw s7, s7, 1
	slliw s6, s6, 1
	li s8, 1073741824
	bge s6, s8, label58
	divw s8, a7, s6
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label37
	slliw s7, s7, 1
	addiw s7, s7, 1
	slliw s6, s6, 1
	li s8, 1073741824
	bge s6, s8, label58
	divw s8, a7, s6
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label37
	slliw s7, s7, 1
	addiw s7, s7, 1
	slliw s6, s6, 1
	li s8, 1073741824
	bge s6, s8, label58
	divw s8, a7, s6
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label37
	slliw s7, s7, 1
	addiw s7, s7, 1
	slliw s6, s6, 1
	li s8, 1073741824
	bge s6, s8, label58
	j label665
label20:
	li s6, 4
	bne a2, s6, label131
	li s6, 1
	mv s7, zero
	li s8, 1073741824
	bge s6, s8, label58
	divw s8, a7, s6
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label29
	divw s8, s5, s6
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label29
	slliw s7, zero, 1
	addiw s7, s7, 1
	slliw s6, s6, 1
	li s8, 1073741824
	bge s6, s8, label58
	divw s8, a7, s6
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label29
	divw s8, s5, s6
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label29
	slliw s7, s7, 1
	addiw s7, s7, 1
	slliw s6, s6, 1
	li s8, 1073741824
	bge s6, s8, label58
	divw s8, a7, s6
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label29
	divw s8, s5, s6
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label29
	j label621
label131:
	mv s7, zero
	addiw a6, a6, 1
	blt a6, t4, label215
	addiw t5, t5, 1
	blt t5, a5, label220
	addw t3, t2, t1
	slliw t3, t3, 2
	add t3, a0, t3
	sw zero, 0(t3)
	addiw t2, t2, 1
	ld s6, 24(sp)
	blt t2, s6, label7
	addiw a3, a3, 1
	ld a6, 40(sp)
	blt a3, a6, label5
	ble s1, zero, label64
	mv a4, zero
	addiw a2, zero, 4
	bge a2, s1, label246
	j label67
label665:
	divw s8, a7, s6
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label37
	j label697
label733:
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	j label736
label215:
	mv a7, s7
	slti s5, a6, 0
	or s5, t6, s5
	ld s6, 24(sp)
	slt s6, a6, s6
	xori s6, s6, 1
	or s5, s5, s6
	beq s5, zero, label76
	mv s5, zero
	bne a2, zero, label17
	addw a7, s7, zero
	li s5, 1073741824
	ble a7, s5, label50
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	j label715
label683:
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	j label715
label52:
	mv s7, a7
	addiw a6, a6, 1
	blt a6, t4, label215
	addiw t5, t5, 1
	blt t5, a5, label220
	addw t3, t2, t1
	slliw t3, t3, 2
	add t3, a0, t3
	sw a7, 0(t3)
	addiw t2, t2, 1
	ld s6, 24(sp)
	blt t2, s6, label7
	addiw a3, a3, 1
	ld a6, 40(sp)
	blt a3, a6, label5
	ble s1, zero, label64
	mv a4, zero
	addiw a2, zero, 4
	bge a2, s1, label246
	j label67
label220:
	mv a7, s7
	slti t6, t5, 0
	ld a6, 40(sp)
	slt a6, t5, a6
	xori a6, a6, 1
	or t6, t6, a6
	mv a6, t3
	slti s5, t3, 0
	or s5, t6, s5
	ld s6, 24(sp)
	slt s6, t3, s6
	xori s6, s6, 1
	or s5, s5, s6
	beq s5, zero, label76
	mv s5, zero
	bne a2, zero, label17
	addw a7, s7, zero
	li s5, 1073741824
	ble a7, s5, label50
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	j label683
label736:
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	j label736
label609:
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	j label683
label50:
	bge a7, zero, label52
	li s5, 1073741824
	addw a7, a7, s5
	bge a7, zero, label52
	addw a7, a7, s5
	bge a7, zero, label52
	addw a7, a7, s5
	bge a7, zero, label52
	addw a7, a7, s5
	bge a7, zero, label52
	addw a7, a7, s5
	bge a7, zero, label52
	addw a7, a7, s5
	bge a7, zero, label52
	addw a7, a7, s5
	bge a7, zero, label52
	addw a7, a7, s5
	bge a7, zero, label52
	addw a7, a7, s5
	bge a7, zero, label52
	addw a7, a7, s5
	bge a7, zero, label52
label735:
	li s5, 1073741824
	addw a7, a7, s5
	bge a7, zero, label52
	j label735
label5:
	subw a4, a3, s2
	addw a5, s2, a3
	ld s6, 24(sp)
	mulw t1, s6, a3
	mv t2, zero
label7:
	subw t3, t2, s2
	addw t4, s2, t2
	mv t5, a4
	mv a7, zero
	slti t6, a4, 0
	ld a6, 40(sp)
	slt a6, a4, a6
	xori a6, a6, 1
	or t6, t6, a6
	mv a6, t3
	slti s5, t3, 0
	or s5, t6, s5
	ld s6, 24(sp)
	slt s6, t3, s6
	xori s6, s6, 1
	or s5, s5, s6
	beq s5, zero, label76
	mv s5, zero
	bne a2, zero, label17
	addw a7, zero, zero
	li s5, 1073741824
	ble a7, s5, label50
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	j label567
label76:
	ld s6, 24(sp)
	mulw s5, t5, s6
	addw s5, a6, s5
	slliw s5, s5, 2
	add s5, s0, s5
	lw s5, 0(s5)
	bne a2, zero, label17
	addw a7, a7, s5
	li s5, 1073741824
	ble a7, s5, label50
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label50
	j label716
label58:
	addiw a6, a6, 1
	blt a6, t4, label215
	addiw t5, t5, 1
	blt t5, a5, label220
	addw t3, t2, t1
	slliw t3, t3, 2
	add t3, a0, t3
	sw s7, 0(t3)
	addiw t2, t2, 1
	ld s6, 24(sp)
	blt t2, s6, label7
	addiw a3, a3, 1
	ld a6, 40(sp)
	blt a3, a6, label5
	ble s1, zero, label64
	mv a4, zero
	addiw a2, zero, 4
	bge a2, s1, label246
	j label67
label44:
	divw s9, a7, s6
	srliw s8, s9, 31
	add s8, s9, s8
	sraiw s10, s8, 1
	li s8, 2
	mulw s10, s10, s8
	subw s9, s9, s10
	divw s10, s5, s6
	srliw s11, s10, 31
	add s11, s10, s11
	sraiw s11, s11, 1
	mulw s8, s11, s8
	subw s8, s10, s8
	bne s9, s8, label47
	slliw s7, s7, 1
	slliw s6, s6, 1
	li s8, 1073741824
	bge s6, s8, label58
	j label44
label47:
	slliw s7, s7, 1
	addiw s7, s7, 1
	slliw s6, s6, 1
	li s8, 1073741824
	bge s6, s8, label58
	j label44
label697:
	slliw s7, s7, 1
	addiw s7, s7, 1
	slliw s6, s6, 1
	li s8, 1073741824
	bge s6, s8, label58
	j label729
label731:
	divw s8, a7, s6
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label37
	j label697
label38:
	slliw s7, s7, 1
	slliw s6, s6, 1
	li s8, 1073741824
	bge s6, s8, label58
	divw s8, a7, s6
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label37
	slliw s7, s7, 1
	addiw s7, s7, 1
	slliw s6, s6, 1
	li s8, 1073741824
	bge s6, s8, label58
	divw s8, a7, s6
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label37
	slliw s7, s7, 1
	addiw s7, s7, 1
	slliw s6, s6, 1
	li s8, 1073741824
	bge s6, s8, label58
	divw s8, a7, s6
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label37
	slliw s7, s7, 1
	addiw s7, s7, 1
	slliw s6, s6, 1
	li s8, 1073741824
	bge s6, s8, label58
	divw s8, a7, s6
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label37
	slliw s7, s7, 1
	addiw s7, s7, 1
	slliw s6, s6, 1
	li s8, 1073741824
	bge s6, s8, label58
	divw s8, a7, s6
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label37
	j label697
label729:
	divw s8, a7, s6
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label37
	j label697
label37:
	divw s8, s5, s6
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label38
	slliw s7, s7, 1
	addiw s7, s7, 1
	slliw s6, s6, 1
	li s8, 1073741824
	bge s6, s8, label58
	divw s8, a7, s6
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label37
	slliw s7, s7, 1
	addiw s7, s7, 1
	slliw s6, s6, 1
	li s8, 1073741824
	bge s6, s8, label58
	divw s8, a7, s6
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label37
	slliw s7, s7, 1
	addiw s7, s7, 1
	slliw s6, s6, 1
	li s8, 1073741824
	bge s6, s8, label58
	divw s8, a7, s6
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label37
	slliw s7, s7, 1
	addiw s7, s7, 1
	slliw s6, s6, 1
	li s8, 1073741824
	bge s6, s8, label58
	divw s8, a7, s6
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label37
	slliw s7, s7, 1
	addiw s7, s7, 1
	slliw s6, s6, 1
	li s8, 1073741824
	bge s6, s8, label58
	j label731
label660:
	divw s8, a7, s6
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label29
	divw s8, s5, s6
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label29
	j label724
label29:
	slliw s7, s7, 1
	slliw s6, s6, 1
	li s8, 1073741824
	bge s6, s8, label58
	divw s8, a7, s6
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label29
	divw s8, s5, s6
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label29
	slliw s7, s7, 1
	addiw s7, s7, 1
	slliw s6, s6, 1
	li s8, 1073741824
	bge s6, s8, label58
	divw s8, a7, s6
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label29
	divw s8, s5, s6
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label29
	slliw s7, s7, 1
	addiw s7, s7, 1
	slliw s6, s6, 1
	li s8, 1073741824
	bge s6, s8, label58
	divw s8, a7, s6
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label29
	divw s8, s5, s6
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label29
	slliw s7, s7, 1
	addiw s7, s7, 1
	slliw s6, s6, 1
	li s8, 1073741824
	bge s6, s8, label58
	j label660
label621:
	slliw s7, s7, 1
	addiw s7, s7, 1
	slliw s6, s6, 1
	li s8, 1073741824
	bge s6, s8, label58
	j label660
label724:
	slliw s7, s7, 1
	addiw s7, s7, 1
	slliw s6, s6, 1
	li s8, 1073741824
	bge s6, s8, label58
	j label660
label40:
	mv s7, s5
	addiw a6, a6, 1
	blt a6, t4, label215
	addiw t5, t5, 1
	blt t5, a5, label220
	addw t3, t2, t1
	slliw t3, t3, 2
	add t3, a0, t3
	sw s5, 0(t3)
	addiw t2, t2, 1
	ld s6, 24(sp)
	blt t2, s6, label7
	addiw a3, a3, 1
	ld a6, 40(sp)
	blt a3, a6, label5
	ble s1, zero, label64
	mv a4, zero
	addiw a2, zero, 4
	bge a2, s1, label246
	j label67
label246:
	mv a3, a4
	addiw a2, a4, 4
	bge a2, s1, label71
label70:
	slliw a4, a3, 2
	add a4, a0, a4
	lw a5, 0(a4)
	slliw a3, a3, 2
	add a3, s0, a3
	sw a5, 0(a3)
	lw a5, 4(a4)
	sw a5, 4(a3)
	lw a5, 8(a4)
	sw a5, 8(a3)
	lw a4, 12(a4)
	sw a4, 12(a3)
	mv a3, a2
	addiw a2, a2, 4
	bge a2, s1, label71
	j label70
label71:
	addiw a2, a3, 4
	bge a2, s1, label284
	j label75
label284:
	mv a2, a3
	slliw a3, a3, 2
	add a3, a0, a3
	lw a3, 0(a3)
	slliw a4, a2, 2
	add a4, s0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label64
	slliw a3, a2, 2
	add a3, a0, a3
	lw a3, 0(a3)
	slliw a4, a2, 2
	add a4, s0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label64
	slliw a3, a2, 2
	add a3, a0, a3
	lw a3, 0(a3)
	slliw a4, a2, 2
	add a4, s0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label64
	slliw a3, a2, 2
	add a3, a0, a3
	lw a3, 0(a3)
	slliw a4, a2, 2
	add a4, s0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label64
	slliw a3, a2, 2
	add a3, a0, a3
	lw a3, 0(a3)
	slliw a4, a2, 2
	add a4, s0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label64
	slliw a3, a2, 2
	add a3, a0, a3
	lw a3, 0(a3)
	slliw a4, a2, 2
	add a4, s0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label64
	slliw a3, a2, 2
	add a3, a0, a3
	lw a3, 0(a3)
	slliw a4, a2, 2
	add a4, s0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label64
	slliw a3, a2, 2
	add a3, a0, a3
	lw a3, 0(a3)
	slliw a4, a2, 2
	add a4, s0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label64
	slliw a3, a2, 2
	add a3, a0, a3
	lw a3, 0(a3)
	slliw a4, a2, 2
	add a4, s0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label64
	slliw a3, a2, 2
	add a3, a0, a3
	lw a3, 0(a3)
	slliw a4, a2, 2
	add a4, s0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label64
	j label743
label75:
	slliw a4, a3, 2
	add a4, a0, a4
	lw a5, 0(a4)
	slliw a3, a3, 2
	add a3, s0, a3
	sw a5, 0(a3)
	lw a5, 4(a4)
	sw a5, 4(a3)
	lw a5, 8(a4)
	sw a5, 8(a3)
	lw a4, 12(a4)
	sw a4, 12(a3)
	mv a3, a2
	addiw a2, a2, 4
	bge a2, s1, label284
	j label75
label743:
	slliw a3, a2, 2
	add a3, a0, a3
	lw a3, 0(a3)
	slliw a4, a2, 2
	add a4, s0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label64
	j label743
label67:
	slliw a3, a4, 2
	add a3, a0, a3
	lw a5, 0(a3)
	slliw a4, a4, 2
	add a4, s0, a4
	sw a5, 0(a4)
	lw a5, 4(a3)
	sw a5, 4(a4)
	lw a5, 8(a3)
	sw a5, 8(a4)
	lw a3, 12(a3)
	sw a3, 12(a4)
	mv a4, a2
	addiw a2, a2, 4
	bge a2, s1, label246
	j label67
label2:
	li a0, 116
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s0
	jal putarray
	mv a0, zero
	ld ra, 48(sp)
	ld s11, 56(sp)
	ld s10, 64(sp)
	ld s9, 72(sp)
	ld s8, 80(sp)
	ld s7, 88(sp)
	ld s4, 96(sp)
	ld s3, 104(sp)
	ld s5, 112(sp)
	ld s0, 8(sp)
	ld s1, 0(sp)
	ld s6, 32(sp)
	ld s2, 16(sp)
	addi sp, sp, 120
	ret
