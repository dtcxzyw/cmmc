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
	sd s4, 16(sp)
	sd s1, 32(sp)
	sd s6, 0(sp)
	sd s5, 8(sp)
	sd s0, 112(sp)
	sd s2, 104(sp)
	sd s3, 96(sp)
	sd s7, 88(sp)
	sd s8, 80(sp)
	sd s9, 72(sp)
	sd s10, 64(sp)
	sd s11, 56(sp)
	sd ra, 48(sp)
	jal getint
	mv s4, a0
	jal getint
	mv s1, a0
	jal getint
	mv s5, a0
	sd a0, 24(sp)
	mulw a4, s1, a0
	sd a4, 40(sp)
pcrel793:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel793)
	mv s0, a0
	jal getarray
pcrel794:
	auipc a0, %pcrel_hi(kernelid)
	addi a0, a0, %pcrel_lo(pcrel794)
	mv s2, a0
	jal getarray
	mv s3, a0
	srliw a0, s4, 31
	add a0, s4, a0
	sraiw s4, a0, 1
	li a0, 109
	jal _sysy_starttime
pcrel795:
	auipc a0, %pcrel_hi(b)
	addi a0, a0, %pcrel_lo(pcrel795)
	ble s3, zero, label76
	mv a1, zero
	slli a2, zero, 2
	add a2, s2, a2
	lw t3, 0(a2)
	mv a4, zero
	subw a5, zero, s4
	addw t4, s4, zero
	ld s5, 24(sp)
	mulw t5, s5, zero
	mv t1, zero
	subw t2, zero, s4
	addw t6, s4, zero
	mv a2, a5
	mv a7, zero
	slti a3, a5, 0
	slt a6, a5, s1
	xori a6, a6, 1
	or a6, a3, a6
	mv a3, t2
	slti s5, t2, 0
	or s6, a6, s5
	ld s5, 24(sp)
	slt s5, t2, s5
	xori s5, s5, 1
	or s5, s6, s5
	beq s5, zero, label75
	mv s5, zero
	bne t3, zero, label16
	addw a7, zero, zero
	li s5, 1073741824
	ble a7, s5, label49
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label49
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label49
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label49
label571:
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label49
	j label614
label63:
	addiw a1, a1, 1
	bge a1, s3, label76
	slli a2, a1, 2
	add a2, s2, a2
	lw t3, 0(a2)
	mv a4, zero
	subw a5, zero, s4
	addw t4, s4, zero
	ld s5, 24(sp)
	mulw t5, s5, zero
	mv t1, zero
	subw t2, zero, s4
	addw t6, s4, zero
	mv a2, a5
	mv a7, zero
	slti a3, a5, 0
	slt a6, a5, s1
	xori a6, a6, 1
	or a6, a3, a6
	mv a3, t2
	slti s5, t2, 0
	or s6, a6, s5
	ld s5, 24(sp)
	slt s5, t2, s5
	xori s5, s5, 1
	or s5, s6, s5
	beq s5, zero, label75
	mv s5, zero
	bne t3, zero, label16
	addw a7, zero, zero
	li s5, 1073741824
	ble a7, s5, label49
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label49
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label49
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label49
	j label571
label614:
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label49
	j label656
label16:
	li s6, 1
	bne t3, s6, label17
	li s7, 1
	mv s6, zero
	li s8, 1073741824
	bge s7, s8, label179
	j label43
label179:
	mv a7, s6
	addiw a3, a3, 1
	blt a3, t6, label11
	addiw a2, a2, 1
	blt a2, t4, label8
	addw a2, t1, t5
	slliw a2, a2, 2
	add a2, a0, a2
	sw s6, 0(a2)
	addiw t1, t1, 1
	ld s5, 24(sp)
	blt t1, s5, label6
	addiw a4, a4, 1
	blt a4, s1, label4
	ld a4, 40(sp)
	ble a4, zero, label63
	mv a2, zero
	addiw a3, zero, 4
	ld a4, 40(sp)
	bge a3, a4, label67
	j label66
label656:
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label49
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label49
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label49
label722:
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label49
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label49
label742:
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label49
	j label742
label49:
	bge a7, zero, label57
	li s5, 1073741824
	addw a7, a7, s5
	bge a7, zero, label57
	addw a7, a7, s5
	bge a7, zero, label57
	addw a7, a7, s5
	bge a7, zero, label57
	addw a7, a7, s5
	bge a7, zero, label57
	addw a7, a7, s5
	bge a7, zero, label57
	addw a7, a7, s5
	bge a7, zero, label57
	addw a7, a7, s5
	bge a7, zero, label57
	addw a7, a7, s5
	bge a7, zero, label57
	addw a7, a7, s5
	bge a7, zero, label57
	addw a7, a7, s5
	bge a7, zero, label57
label741:
	li s5, 1073741824
	addw a7, a7, s5
	bge a7, zero, label57
	j label741
label57:
	addiw a3, a3, 1
	blt a3, t6, label11
	addiw a2, a2, 1
	blt a2, t4, label8
	addw a2, t1, t5
	slliw a2, a2, 2
	add a2, a0, a2
	sw a7, 0(a2)
	addiw t1, t1, 1
	ld s5, 24(sp)
	blt t1, s5, label6
	addiw a4, a4, 1
	blt a4, s1, label4
	ld a4, 40(sp)
	ble a4, zero, label63
	mv a2, zero
	addiw a3, zero, 4
	ld a4, 40(sp)
	bge a3, a4, label67
	j label66
label4:
	subw a5, a4, s4
	addw t4, s4, a4
	ld s5, 24(sp)
	mulw t5, s5, a4
	mv t1, zero
label6:
	subw t2, t1, s4
	addw t6, s4, t1
	mv a2, a5
	mv a7, zero
label8:
	slti a3, a2, 0
	slt a6, a2, s1
	xori a6, a6, 1
	or a6, a3, a6
	mv a3, t2
label11:
	slti s5, a3, 0
	or s6, a6, s5
	ld s5, 24(sp)
	slt s5, a3, s5
	xori s5, s5, 1
	or s5, s6, s5
	beq s5, zero, label75
	mv s5, zero
	bne t3, zero, label16
	addw a7, a7, zero
	li s5, 1073741824
	ble a7, s5, label49
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label49
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label49
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label49
	j label571
label75:
	ld s5, 24(sp)
	mulw s5, a2, s5
	addw s5, a3, s5
	slliw s5, s5, 2
	add s5, s0, s5
	lw s5, 0(s5)
	bne t3, zero, label16
	addw a7, a7, s5
	li s5, 1073741824
	ble a7, s5, label49
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label49
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label49
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label49
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label49
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label49
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label49
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label49
	li s5, -1073741824
	addw a7, a7, s5
	sub s5, zero, s5
	ble a7, s5, label49
	j label722
label43:
	divw s8, a7, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s10, s9, 1
	li s9, 2
	mulw s10, s10, s9
	subw s8, s8, s10
	divw s10, s5, s7
	srliw s11, s10, 31
	add s11, s10, s11
	sraiw s11, s11, 1
	mulw s9, s11, s9
	subw s9, s10, s9
	bne s8, s9, label46
	slliw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label179
	j label43
label46:
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label179
	j label43
label17:
	li s6, 2
	bne t3, s6, label18
	ble a7, s5, label39
	addiw a3, a3, 1
	blt a3, t6, label11
	addiw a2, a2, 1
	blt a2, t4, label8
	addw a2, t1, t5
	slliw a2, a2, 2
	add a2, a0, a2
	sw a7, 0(a2)
	addiw t1, t1, 1
	ld s5, 24(sp)
	blt t1, s5, label6
	addiw a4, a4, 1
	blt a4, s1, label4
	ld a4, 40(sp)
	ble a4, zero, label63
	mv a2, zero
	addiw a3, zero, 4
	ld a4, 40(sp)
	bge a3, a4, label67
	j label66
label18:
	li s6, 3
	bne t3, s6, label19
	li s7, 1
	mv s6, zero
	li s8, 1073741824
	bge s7, s8, label155
	divw s8, a7, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label36
	slliw s6, zero, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label155
	divw s8, a7, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label36
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label155
	divw s8, a7, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label36
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label155
	divw s8, a7, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label36
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label155
	j label671
label19:
	li s6, 4
	bne t3, s6, label131
	li s7, 1
	mv s6, zero
	li s8, 1073741824
	bge s7, s8, label135
	divw s8, a7, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label28
	divw s8, s5, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label28
	slliw s6, zero, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label135
	divw s8, a7, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label28
	divw s8, s5, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label28
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label135
	divw s8, a7, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label28
	divw s8, s5, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label28
	j label626
label131:
	mv a7, zero
	addiw a3, a3, 1
	blt a3, t6, label11
	addiw a2, a2, 1
	blt a2, t4, label8
	addw a2, t1, t5
	slliw a2, a2, 2
	add a2, a0, a2
	sw zero, 0(a2)
	addiw t1, t1, 1
	ld s5, 24(sp)
	blt t1, s5, label6
	addiw a4, a4, 1
	blt a4, s1, label4
	ld a4, 40(sp)
	ble a4, zero, label63
	mv a2, zero
	addiw a3, zero, 4
	ld a4, 40(sp)
	bge a3, a4, label67
	j label66
label155:
	mv a7, s6
	addiw a3, a3, 1
	blt a3, t6, label11
	addiw a2, a2, 1
	blt a2, t4, label8
	addw a2, t1, t5
	slliw a2, a2, 2
	add a2, a0, a2
	sw s6, 0(a2)
	addiw t1, t1, 1
	ld s5, 24(sp)
	blt t1, s5, label6
	addiw a4, a4, 1
	blt a4, s1, label4
	ld a4, 40(sp)
	ble a4, zero, label63
	mv a2, zero
	addiw a3, zero, 4
	ld a4, 40(sp)
	bge a3, a4, label67
	j label66
label671:
	divw s8, a7, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label36
label703:
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label155
	j label735
label737:
	divw s8, a7, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label36
	j label703
label735:
	divw s8, a7, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label36
	j label703
label36:
	divw s8, s5, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label37
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label155
	divw s8, a7, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label36
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label155
	divw s8, a7, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label36
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label155
	divw s8, a7, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label36
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label155
	divw s8, a7, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label36
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label155
	j label737
label37:
	slliw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label155
	divw s8, a7, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label36
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label155
	divw s8, a7, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label36
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label155
	divw s8, a7, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label36
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label155
	divw s8, a7, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label36
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label155
	divw s8, a7, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label36
	j label703
label135:
	mv a7, s6
	addiw a3, a3, 1
	blt a3, t6, label11
	addiw a2, a2, 1
	blt a2, t4, label8
	addw a2, t1, t5
	slliw a2, a2, 2
	add a2, a0, a2
	sw s6, 0(a2)
	addiw t1, t1, 1
	ld s5, 24(sp)
	blt t1, s5, label6
	addiw a4, a4, 1
	blt a4, s1, label4
	ld a4, 40(sp)
	ble a4, zero, label63
	mv a2, zero
	addiw a3, zero, 4
	ld a4, 40(sp)
	bge a3, a4, label67
	j label66
label666:
	divw s8, a7, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label28
	divw s8, s5, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label28
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label135
	j label666
label66:
	slliw a4, a2, 2
	add a4, a0, a4
	lw a5, 0(a4)
	slliw a2, a2, 2
	add a2, s0, a2
	sw a5, 0(a2)
	lw a5, 4(a4)
	sw a5, 4(a2)
	lw a5, 8(a4)
	sw a5, 8(a2)
	lw a4, 12(a4)
	sw a4, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ld a4, 40(sp)
	bge a3, a4, label67
	j label66
label626:
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label135
	j label666
label28:
	slliw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label135
	divw s8, a7, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label28
	divw s8, s5, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label28
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label135
	divw s8, a7, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label28
	divw s8, s5, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label28
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label135
	divw s8, a7, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label28
	divw s8, s5, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label28
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label135
	j label666
label39:
	mv a7, s5
	addiw a3, a3, 1
	blt a3, t6, label11
	addiw a2, a2, 1
	blt a2, t4, label8
	addw a2, t1, t5
	slliw a2, a2, 2
	add a2, a0, a2
	sw s5, 0(a2)
	addiw t1, t1, 1
	ld s5, 24(sp)
	blt t1, s5, label6
	addiw a4, a4, 1
	blt a4, s1, label4
	ld a4, 40(sp)
	ble a4, zero, label63
	mv a2, zero
	addiw a3, zero, 4
	ld a4, 40(sp)
	bge a3, a4, label67
	j label66
label67:
	addiw a3, a2, 4
	ld a4, 40(sp)
	bge a3, a4, label70
label69:
	slliw a4, a2, 2
	add a4, a0, a4
	lw a5, 0(a4)
	slliw a2, a2, 2
	add a2, s0, a2
	sw a5, 0(a2)
	lw a5, 4(a4)
	sw a5, 4(a2)
	lw a5, 8(a4)
	sw a5, 8(a2)
	lw a4, 12(a4)
	sw a4, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ld a4, 40(sp)
	bge a3, a4, label70
	j label69
label70:
	addiw a3, a2, 4
	ld a4, 40(sp)
	bge a3, a4, label72
label74:
	slliw a4, a2, 2
	add a4, a0, a4
	lw a5, 0(a4)
	slliw a2, a2, 2
	add a2, s0, a2
	sw a5, 0(a2)
	lw a5, 4(a4)
	sw a5, 4(a2)
	lw a5, 8(a4)
	sw a5, 8(a2)
	lw a4, 12(a4)
	sw a4, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ld a4, 40(sp)
	bge a3, a4, label72
	j label74
label72:
	slliw a3, a2, 2
	add a3, a0, a3
	lw a3, 0(a3)
	slliw a4, a2, 2
	add a4, s0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	ld a4, 40(sp)
	bge a2, a4, label63
	slliw a3, a2, 2
	add a3, a0, a3
	lw a3, 0(a3)
	slliw a4, a2, 2
	add a4, s0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	ld a4, 40(sp)
	bge a2, a4, label63
	slliw a3, a2, 2
	add a3, a0, a3
	lw a3, 0(a3)
	slliw a4, a2, 2
	add a4, s0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	ld a4, 40(sp)
	bge a2, a4, label63
	slliw a3, a2, 2
	add a3, a0, a3
	lw a3, 0(a3)
	slliw a4, a2, 2
	add a4, s0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	ld a4, 40(sp)
	bge a2, a4, label63
	slliw a3, a2, 2
	add a3, a0, a3
	lw a3, 0(a3)
	slliw a4, a2, 2
	add a4, s0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	ld a4, 40(sp)
	bge a2, a4, label63
	slliw a3, a2, 2
	add a3, a0, a3
	lw a3, 0(a3)
	slliw a4, a2, 2
	add a4, s0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	ld a4, 40(sp)
	bge a2, a4, label63
	slliw a3, a2, 2
	add a3, a0, a3
	lw a3, 0(a3)
	slliw a4, a2, 2
	add a4, s0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	ld a4, 40(sp)
	bge a2, a4, label63
	slliw a3, a2, 2
	add a3, a0, a3
	lw a3, 0(a3)
	slliw a4, a2, 2
	add a4, s0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	ld a4, 40(sp)
	bge a2, a4, label63
	slliw a3, a2, 2
	add a3, a0, a3
	lw a3, 0(a3)
	slliw a4, a2, 2
	add a4, s0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	ld a4, 40(sp)
	bge a2, a4, label63
	slliw a3, a2, 2
	add a3, a0, a3
	lw a3, 0(a3)
	slliw a4, a2, 2
	add a4, s0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	ld a4, 40(sp)
	bge a2, a4, label63
label749:
	slliw a3, a2, 2
	add a3, a0, a3
	lw a3, 0(a3)
	slliw a4, a2, 2
	add a4, s0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	ld a4, 40(sp)
	bge a2, a4, label63
	j label749
label76:
	li a0, 116
	jal _sysy_stoptime
	ld a4, 40(sp)
	mv a0, a4
	mv a1, s0
	jal putarray
	mv a0, zero
	ld ra, 48(sp)
	ld s11, 56(sp)
	ld s10, 64(sp)
	ld s9, 72(sp)
	ld s8, 80(sp)
	ld s7, 88(sp)
	ld s3, 96(sp)
	ld s2, 104(sp)
	ld s0, 112(sp)
	ld s5, 8(sp)
	ld s6, 0(sp)
	ld s1, 32(sp)
	ld s4, 16(sp)
	addi sp, sp, 120
	ret
