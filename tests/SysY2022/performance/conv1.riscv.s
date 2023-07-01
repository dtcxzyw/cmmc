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
	addi sp, sp, -112
	sd s3, 8(sp)
	sd s2, 0(sp)
	sd s1, 104(sp)
	sd s6, 96(sp)
	sd s0, 88(sp)
	sd s5, 80(sp)
	sd s4, 72(sp)
	sd s7, 64(sp)
	sd s8, 56(sp)
	sd s9, 48(sp)
	sd s10, 40(sp)
	sd s11, 32(sp)
	sd ra, 24(sp)
	jal getint
	mv s3, a0
	jal getint
	mv t6, a0
	sd a0, 16(sp)
	jal getint
	mv s2, a0
	ld t6, 16(sp)
	mulw s1, t6, a0
pcrel753:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel753)
	mv s0, a0
	jal getarray
pcrel754:
	auipc a0, %pcrel_hi(kernelid)
	addi a0, a0, %pcrel_lo(pcrel754)
	mv s4, a0
	jal getarray
	mv s5, a0
	srliw a0, s3, 31
	add a0, s3, a0
	sraiw s3, a0, 1
	li a0, 109
	jal _sysy_starttime
pcrel755:
	auipc a0, %pcrel_hi(b)
	addi a0, a0, %pcrel_lo(pcrel755)
	ble s5, zero, label75
	mv a1, zero
	sh2add a2, zero, s4
	lw a2, 0(a2)
	mv a3, zero
	subw a4, zero, s3
	addw a5, s3, zero
	mulw t1, s2, zero
	mv t2, zero
	subw t3, zero, s3
	addw t4, s3, zero
	mv t5, a4
	mv a7, zero
	ld t6, 16(sp)
	slt t6, a4, t6
	xori t6, t6, 1
	slti a6, a4, 0
	or t6, t6, a6
	mv a6, t3
	slti s6, t3, 0
	or s6, t6, s6
	slt s7, t3, s2
	xori s7, s7, 1
	or s6, s6, s7
	beq s6, zero, label74
	mv s6, zero
	bne a2, zero, label43
	addw a7, zero, zero
	li s6, 1073741824
	ble a7, s6, label17
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	j label535
label4:
	subw a4, a3, s3
	addw a5, s3, a3
	mulw t1, s2, a3
	mv t2, zero
label6:
	subw t3, t2, s3
	addw t4, s3, t2
	mv t5, a4
	mv a7, zero
	ld t6, 16(sp)
	slt t6, a4, t6
	xori t6, t6, 1
	slti a6, a4, 0
	or t6, t6, a6
	mv a6, t3
	slti s6, t3, 0
	or s6, t6, s6
	slt s7, t3, s2
	xori s7, s7, 1
	or s6, s6, s7
	beq s6, zero, label74
	mv s6, zero
	bne a2, zero, label43
	addw a7, zero, zero
	li s6, 1073741824
	ble a7, s6, label17
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	j label535
label683:
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
label687:
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	j label687
label74:
	mulw s6, s2, t5
	addw s6, a6, s6
	sh2add s6, s6, s0
	lw s6, 0(s6)
	bne a2, zero, label43
	addw a7, a7, s6
	li s6, 1073741824
	ble a7, s6, label17
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	j label683
label650:
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	j label682
label146:
	mv a7, s8
	ld t6, 16(sp)
	slt t6, t5, t6
	xori t6, t6, 1
	slti a6, t5, 0
	or t6, t6, a6
	mv a6, t3
	slti s6, t3, 0
	or s6, t6, s6
	slt s7, t3, s2
	xori s7, s7, 1
	or s6, s6, s7
	beq s6, zero, label74
	mv s6, zero
	bne a2, zero, label43
	addw a7, s8, zero
	li s6, 1073741824
	ble a7, s6, label17
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	j label650
label535:
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	j label576
label31:
	addiw a1, a1, 1
	ble s5, a1, label75
	sh2add a2, a1, s4
	lw a2, 0(a2)
	mv a3, zero
	subw a4, zero, s3
	addw a5, s3, zero
	mulw t1, s2, zero
	mv t2, zero
	subw t3, zero, s3
	addw t4, s3, zero
	mv t5, a4
	mv a7, zero
	ld t6, 16(sp)
	slt t6, a4, t6
	xori t6, t6, 1
	slti a6, a4, 0
	or t6, t6, a6
	mv a6, t3
	slti s6, t3, 0
	or s6, t6, s6
	slt s7, t3, s2
	xori s7, s7, 1
	or s6, s6, s7
	beq s6, zero, label74
	mv s6, zero
	bne a2, zero, label43
	addw a7, zero, zero
	li s6, 1073741824
	ble a7, s6, label17
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	j label535
label576:
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	j label650
label682:
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	j label683
label141:
	mv a7, s8
	slti s6, a6, 0
	or s6, t6, s6
	slt s7, a6, s2
	xori s7, s7, 1
	or s6, s6, s7
	beq s6, zero, label74
	mv s6, zero
	bne a2, zero, label43
	addw a7, s8, zero
	li s6, 1073741824
	ble a7, s6, label17
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	li s6, -1073741824
	addw a7, a7, s6
	sub s6, zero, s6
	ble a7, s6, label17
	j label682
label17:
	bge a7, zero, label21
	li s6, 1073741824
	addw a7, a7, s6
	bge a7, zero, label21
	addw a7, a7, s6
	bge a7, zero, label21
	addw a7, a7, s6
	bge a7, zero, label21
	addw a7, a7, s6
	bge a7, zero, label21
	addw a7, a7, s6
	bge a7, zero, label21
	addw a7, a7, s6
	bge a7, zero, label21
	addw a7, a7, s6
	bge a7, zero, label21
	addw a7, a7, s6
	bge a7, zero, label21
	addw a7, a7, s6
	bge a7, zero, label21
	addw a7, a7, s6
	bge a7, zero, label21
label686:
	li s6, 1073741824
	addw a7, a7, s6
	bge a7, zero, label21
	j label686
label43:
	li s7, 1
	bne a2, s7, label52
	mv s8, zero
	li s9, 1073741824
	bge s7, s9, label25
	j label47
label25:
	addiw a6, a6, 1
	bgt t4, a6, label141
	addiw t5, t5, 1
	bgt a5, t5, label146
	addw t3, t1, t2
	sh2add t3, t3, a0
	sw s8, 0(t3)
	addiw t2, t2, 1
	bgt s2, t2, label6
	addiw a3, a3, 1
	ld t6, 16(sp)
	bgt t6, a3, label4
	ble s1, zero, label31
	mv a4, zero
	addiw a2, zero, 4
	ble s1, a2, label172
	j label34
label47:
	divw s9, a7, s7
	srliw s10, s9, 31
	add s10, s9, s10
	andi s10, s10, -2
	subw s9, s9, s10
	divw s10, s6, s7
	srliw s11, s10, 31
	add s11, s10, s11
	andi s11, s11, -2
	subw s10, s10, s11
	bne s9, s10, label48
	slliw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label25
	j label47
label34:
	sh2add a3, a4, a0
	lw a5, 0(a3)
	sh2add a4, a4, s0
	sw a5, 0(a4)
	lw a5, 4(a3)
	sw a5, 4(a4)
	lw a5, 8(a3)
	sw a5, 8(a4)
	lw a3, 12(a3)
	sw a3, 12(a4)
	mv a4, a2
	addiw a2, a2, 4
	ble s1, a2, label172
	j label34
label52:
	li s7, 2
	bne a2, s7, label53
	max s8, a7, s6
	addiw a6, a6, 1
	bgt t4, a6, label141
	addiw t5, t5, 1
	bgt a5, t5, label146
	addw t3, t1, t2
	sh2add t3, t3, a0
	sw s8, 0(t3)
	addiw t2, t2, 1
	bgt s2, t2, label6
	addiw a3, a3, 1
	ld t6, 16(sp)
	bgt t6, a3, label4
	ble s1, zero, label31
	mv a4, zero
	addiw a2, zero, 4
	ble s1, a2, label172
	j label34
label53:
	li s7, 3
	bne a2, s7, label54
	li s7, 1
	mv s8, zero
	li s9, 1073741824
	bge s7, s9, label25
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label69
	slliw s8, zero, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label25
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label69
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label25
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label69
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label25
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label69
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label25
	j label647
label54:
	li s7, 4
	bne a2, s7, label263
	li s7, 1
	mv s8, zero
	li s9, 1073741824
	bge s7, s9, label25
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label61
	divw s9, s6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label61
	slliw s8, zero, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label25
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label61
	divw s9, s6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label61
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label25
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label61
	divw s9, s6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label61
	j label601
label263:
	mv s8, zero
	addiw a6, a6, 1
	bgt t4, a6, label141
	addiw t5, t5, 1
	bgt a5, t5, label146
	addw t3, t1, t2
	sh2add t3, t3, a0
	sw zero, 0(t3)
	addiw t2, t2, 1
	bgt s2, t2, label6
	addiw a3, a3, 1
	ld t6, 16(sp)
	bgt t6, a3, label4
	ble s1, zero, label31
	mv a4, zero
	addiw a2, zero, 4
	ble s1, a2, label172
	j label34
label647:
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label69
	j label679
label48:
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label25
	j label47
label705:
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label69
	j label679
label69:
	divw s9, s6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label70
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label25
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label69
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label25
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label69
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label25
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label69
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label25
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label69
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label25
	j label705
label679:
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label25
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label69
	j label679
label70:
	slliw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label25
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label69
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label25
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label69
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label25
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label69
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label25
	j label647
label601:
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label25
label637:
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label61
	divw s9, s6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label61
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label25
	j label637
label61:
	slliw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label25
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label61
	divw s9, s6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label61
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label25
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label61
	divw s9, s6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label61
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label25
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label61
	divw s9, s6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label61
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label25
	j label637
label21:
	mv s8, a7
	addiw a6, a6, 1
	bgt t4, a6, label141
	addiw t5, t5, 1
	bgt a5, t5, label146
	addw t3, t1, t2
	sh2add t3, t3, a0
	sw a7, 0(t3)
	addiw t2, t2, 1
	bgt s2, t2, label6
	addiw a3, a3, 1
	ld t6, 16(sp)
	bgt t6, a3, label4
	ble s1, zero, label31
	mv a4, zero
	addiw a2, zero, 4
	ble s1, a2, label172
	j label34
label172:
	mv a3, a4
	addiw a2, a4, 4
	ble s1, a2, label37
	j label42
label37:
	addiw a2, a3, 4
	ble s1, a2, label196
	j label41
label196:
	mv a2, a3
	sh2add a3, a3, a0
	lw a3, 0(a3)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a2, a2, 1
	ble s1, a2, label31
	sh2add a3, a2, a0
	lw a3, 0(a3)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a2, a2, 1
	ble s1, a2, label31
	sh2add a3, a2, a0
	lw a3, 0(a3)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a2, a2, 1
	ble s1, a2, label31
	sh2add a3, a2, a0
	lw a3, 0(a3)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a2, a2, 1
	ble s1, a2, label31
	sh2add a3, a2, a0
	lw a3, 0(a3)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a2, a2, 1
	ble s1, a2, label31
	sh2add a3, a2, a0
	lw a3, 0(a3)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a2, a2, 1
	ble s1, a2, label31
	sh2add a3, a2, a0
	lw a3, 0(a3)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a2, a2, 1
	ble s1, a2, label31
	sh2add a3, a2, a0
	lw a3, 0(a3)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a2, a2, 1
	ble s1, a2, label31
	sh2add a3, a2, a0
	lw a3, 0(a3)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a2, a2, 1
	ble s1, a2, label31
	sh2add a3, a2, a0
	lw a3, 0(a3)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a2, a2, 1
	ble s1, a2, label31
	j label694
label41:
	sh2add a4, a3, a0
	lw a5, 0(a4)
	sh2add a3, a3, s0
	sw a5, 0(a3)
	lw a5, 4(a4)
	sw a5, 4(a3)
	lw a5, 8(a4)
	sw a5, 8(a3)
	lw a4, 12(a4)
	sw a4, 12(a3)
	mv a3, a2
	addiw a2, a2, 4
	ble s1, a2, label196
	j label41
label694:
	sh2add a3, a2, a0
	lw a3, 0(a3)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a2, a2, 1
	ble s1, a2, label31
	j label694
label42:
	sh2add a4, a3, a0
	lw a5, 0(a4)
	sh2add a3, a3, s0
	sw a5, 0(a3)
	lw a5, 4(a4)
	sw a5, 4(a3)
	lw a5, 8(a4)
	sw a5, 8(a3)
	lw a4, 12(a4)
	sw a4, 12(a3)
	mv a3, a2
	addiw a2, a2, 4
	ble s1, a2, label37
	j label42
label75:
	li a0, 116
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s0
	jal putarray
	mv a0, zero
	ld ra, 24(sp)
	ld s11, 32(sp)
	ld s10, 40(sp)
	ld s9, 48(sp)
	ld s8, 56(sp)
	ld s7, 64(sp)
	ld s4, 72(sp)
	ld s5, 80(sp)
	ld s0, 88(sp)
	ld s6, 96(sp)
	ld s1, 104(sp)
	ld s2, 0(sp)
	ld s3, 8(sp)
	addi sp, sp, 112
	ret
