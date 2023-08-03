.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
x:
	.zero	400040
.align 8
y:
	.zero	12000000
.align 8
v:
	.zero	12000000
.align 8
a:
	.zero	400040
.align 8
b:
	.zero	400040
.text
.p2align 2
.globl main
main:
	addi sp, sp, -104
pcrel728:
	auipc a1, %pcrel_hi(x)
	sd ra, 0(sp)
	sd s5, 8(sp)
	addi s5, a1, %pcrel_lo(pcrel728)
	sd s0, 16(sp)
	sd s6, 24(sp)
	sd s1, 32(sp)
	sd s3, 40(sp)
	sd s2, 48(sp)
	sd s4, 56(sp)
	sd s8, 64(sp)
	sd s7, 72(sp)
	sd s10, 80(sp)
	sd s9, 88(sp)
	sd s11, 96(sp)
	mv a0, s5
	jal getarray
pcrel729:
	auipc a1, %pcrel_hi(y)
	mv s6, a0
	addi s3, a1, %pcrel_lo(pcrel729)
	mv a0, s3
	jal getarray
pcrel730:
	auipc a1, %pcrel_hi(v)
	addi s2, a1, %pcrel_lo(pcrel730)
	mv a0, s2
	jal getarray
pcrel731:
	auipc a1, %pcrel_hi(a)
	addi s0, a1, %pcrel_lo(pcrel731)
	mv a0, s0
	jal getarray
	li a0, 39
	jal _sysy_starttime
	li a3, 16
	li a4, 100
	mv a5, zero
pcrel732:
	auipc a2, %pcrel_hi(b)
	addiw a0, s6, -21
	addiw a1, s6, -5
	addiw s4, s6, -1
	addi s1, a2, %pcrel_lo(pcrel732)
	li a2, 4
.p2align 2
label2:
	bgt s4, zero, label88
	j label129
.p2align 2
label669:
	addiw a5, a5, 1
	blt a5, a4, label2
	j label67
.p2align 2
label88:
	ble s4, a2, label89
	ble a1, a3, label487
	mv t0, s1
	mv t1, zero
.p2align 2
label92:
	sd zero, 0(t0)
	addiw t1, t1, 16
	sd zero, 8(t0)
	sd zero, 16(t0)
	sd zero, 24(t0)
	sd zero, 32(t0)
	sd zero, 40(t0)
	sd zero, 48(t0)
	sd zero, 56(t0)
	ble a0, t1, label507
	addi t0, t0, 64
	j label92
.p2align 2
label487:
	mv t0, s1
	mv t1, zero
	sw zero, 0(s1)
	li t1, 4
	sw zero, 4(s1)
	sw zero, 8(s1)
	sw zero, 12(s1)
	bgt a1, t1, label100
.p2align 2
label518:
	sh2add t0, t1, s1
	addiw t1, t1, 1
	sw zero, 0(t0)
	bgt s4, t1, label107
	j label675
.p2align 2
label103:
	sw zero, 0(t0)
	addiw t1, t1, 1
	ble s4, t1, label106
.p2align 2
label107:
	addi t0, t0, 4
	j label103
.p2align 2
label507:
	sh2add t0, t1, s1
	addiw t1, t1, 4
	sw zero, 0(t0)
	sw zero, 4(t0)
	sw zero, 8(t0)
	sw zero, 12(t0)
	bgt a1, t1, label100
	j label674
.p2align 2
label97:
	sw zero, 0(t0)
	addiw t1, t1, 4
	sw zero, 4(t0)
	sw zero, 8(t0)
	sw zero, 12(t0)
	ble a1, t1, label518
.p2align 2
label100:
	addi t0, t0, 16
	j label97
.p2align 2
label106:
	mv t0, s5
	mv t4, zero
	ble s4, zero, label133
.p2align 2
label7:
	addiw t1, t4, 1
	lw t6, 0(t0)
	sh2add t3, t1, s5
	lw t2, 0(t3)
	bge t6, t2, label8
	addiw t5, t6, 4
	addiw t3, t2, -4
	bgt t2, t5, label28
	j label10
.p2align 2
label18:
	addi t0, t0, 4
	mv t4, t1
	bgt s4, t1, label7
	j label644
.p2align 2
label28:
	sh2add a6, t6, s3
	mv a7, t6
.p2align 2
label29:
	lw s9, 0(a6)
	sh2add s6, a7, s2
	sh2add s7, s9, s1
	addiw a7, a7, 4
	lw s8, 0(s7)
	lw s9, 0(s6)
	addw s11, s8, s9
	sw s11, 0(s7)
	lw s10, 4(a6)
	sh2add s8, s10, s1
	lw s7, 0(s8)
	lw s9, 4(s6)
	addw s11, s7, s9
	sw s11, 0(s8)
	lw s10, 8(a6)
	sh2add s9, s10, s1
	lw s7, 0(s9)
	lw s8, 8(s6)
	addw s10, s7, s8
	sw s10, 0(s9)
	lw s11, 12(a6)
	sh2add s7, s11, s1
	lw s8, 0(s7)
	lw s9, 12(s6)
	addw s10, s8, s9
	sw s10, 0(s7)
	ble t3, a7, label32
	addi a6, a6, 16
	j label29
.p2align 2
label11:
	lw s8, 0(a6)
	sh2add s10, a7, s2
	sh2add s6, s8, s1
	addiw a7, a7, 1
	lw s7, 0(s6)
	lw s9, 0(s10)
	addw s8, s7, s9
	sw s8, 0(s6)
	bgt t2, a7, label27
	j label14
.p2align 2
label644:
	bgt s4, zero, label68
	j label642
.p2align 2
label27:
	addi a6, a6, 4
	j label11
.p2align 2
label32:
	sh2add a6, a7, s3
	sh2add s10, a7, s2
	lw s8, 0(a6)
	addiw a7, a7, 1
	sh2add s6, s8, s1
	lw s7, 0(s6)
	lw s9, 0(s10)
	addw s8, s7, s9
	sw s8, 0(s6)
	bgt t2, a7, label27
	sh2add a7, t4, s0
	lw a6, 0(a7)
	addi t4, a6, -1
	bgt t2, t5, label21
	sh2add t3, t6, s3
	sh2add s6, t6, s2
	lw a7, 0(t3)
	addiw t6, t6, 1
	sh2add t5, a7, s1
	lw a6, 0(t5)
	lw s8, 0(s6)
	mulw a7, t4, s8
	addw s7, a6, a7
	sw s7, 0(t5)
	bgt t2, t6, label19
	addi t0, t0, 4
	mv t4, t1
	bgt s4, t1, label7
	j label644
.p2align 2
label68:
	ble s4, a2, label69
	ble a1, a3, label71
	mv t0, s0
	mv t1, zero
.p2align 2
label73:
	sd zero, 0(t0)
	addiw t1, t1, 16
	sd zero, 8(t0)
	sd zero, 16(t0)
	sd zero, 24(t0)
	sd zero, 32(t0)
	sd zero, 40(t0)
	sd zero, 48(t0)
	sd zero, 56(t0)
	ble a0, t1, label461
	addi t0, t0, 64
	j label73
.p2align 2
label15:
	lw a7, 0(t3)
	sh2add s6, t6, s2
	sh2add t5, a7, s1
	addiw t6, t6, 1
	lw a6, 0(t5)
	lw s8, 0(s6)
	mulw a7, t4, s8
	addw s7, a6, a7
	sw s7, 0(t5)
	ble t2, t6, label18
.p2align 2
label19:
	addi t3, t3, 4
	j label15
.p2align 2
label25:
	sh2add t3, t6, s3
	sh2add s6, t6, s2
	lw a7, 0(t3)
	addiw t6, t6, 1
	sh2add t5, a7, s1
	lw a6, 0(t5)
	lw s8, 0(s6)
	mulw a7, t4, s8
	addw s7, a6, a7
	sw s7, 0(t5)
	bgt t2, t6, label19
	addi t0, t0, 4
	mv t4, t1
	bgt s4, t1, label7
	bgt s4, zero, label68
	j label642
.p2align 2
label14:
	sh2add a7, t4, s0
	lw a6, 0(a7)
	addi t4, a6, -1
	ble t2, t5, label171
.p2align 2
label21:
	sh2add t5, t6, s3
.p2align 2
label22:
	lw a6, 0(t5)
	sh2add a7, a6, s1
	sh2add a6, t6, s2
	addiw t6, t6, 4
	lw s6, 0(a7)
	lw s9, 0(a6)
	mulw s8, t4, s9
	addw s7, s6, s8
	sw s7, 0(a7)
	lw s9, 4(t5)
	sh2add a7, s9, s1
	lw s6, 0(a7)
	lw s8, 4(a6)
	mulw s7, t4, s8
	addw s9, s6, s7
	sw s9, 0(a7)
	lw s8, 8(t5)
	sh2add a7, s8, s1
	lw s6, 0(a7)
	lw s7, 8(a6)
	mulw s8, t4, s7
	addw s9, s6, s8
	sw s9, 0(a7)
	lw s7, 12(t5)
	sh2add a7, s7, s1
	lw s6, 0(a7)
	lw s8, 12(a6)
	mulw s7, t4, s8
	addw a6, s6, s7
	sw a6, 0(a7)
	ble t3, t6, label25
	addi t5, t5, 16
	j label22
.p2align 2
label10:
	sh2add a6, t6, s3
	mv a7, t6
	j label11
.p2align 2
label461:
	sh2add t0, t1, s0
	addiw t1, t1, 4
	sw zero, 0(t0)
	sw zero, 4(t0)
	sw zero, 8(t0)
	sw zero, 12(t0)
	bgt a1, t1, label82
	j label671
.p2align 2
label78:
	sw zero, 0(t0)
	addiw t1, t1, 4
	sw zero, 4(t0)
	sw zero, 8(t0)
	sw zero, 12(t0)
	ble a1, t1, label81
.p2align 2
label82:
	addi t0, t0, 16
	j label78
.p2align 2
label81:
	sh2add t0, t1, s0
	addiw t1, t1, 1
	sw zero, 0(t0)
	bgt s4, t1, label87
	j label657
.p2align 2
label83:
	sw zero, 0(t0)
	addiw t1, t1, 1
	ble s4, t1, label86
.p2align 2
label87:
	addi t0, t0, 4
	j label83
label133:
	bgt s4, zero, label68
	j label642
.p2align 2
label8:
	addi t0, t0, 4
	mv t4, t1
	bgt s4, t1, label7
	j label133
.p2align 2
label86:
	mv t0, s5
	mv t4, zero
	ble s4, zero, label285
.p2align 2
label39:
	addiw t1, t4, 1
	lw t6, 0(t0)
	sh2add t3, t1, s5
	lw t2, 0(t3)
	bge t6, t2, label294
	addiw t5, t6, 4
	addiw t3, t2, -4
	bgt t2, t5, label58
	j label300
.p2align 2
label381:
	addi t0, t0, 4
	mv t4, t1
	bgt s4, t1, label39
	j label669
.p2align 2
label58:
	sh2add a6, t6, s3
	mv a7, t6
.p2align 2
label59:
	lw s9, 0(a6)
	sh2add s6, a7, s2
	sh2add s7, s9, s0
	addiw a7, a7, 4
	lw s8, 0(s7)
	lw s11, 0(s6)
	addw s9, s8, s11
	sw s9, 0(s7)
	lw s10, 4(a6)
	sh2add s8, s10, s0
	lw s7, 0(s8)
	lw s9, 4(s6)
	addw s11, s7, s9
	sw s11, 0(s8)
	lw s10, 8(a6)
	sh2add s9, s10, s0
	lw s7, 0(s9)
	lw s8, 8(s6)
	addw s11, s7, s8
	sw s11, 0(s9)
	lw s10, 12(a6)
	sh2add s7, s10, s0
	lw s8, 0(s7)
	lw s11, 12(s6)
	addw s9, s8, s11
	sw s9, 0(s7)
	ble t3, a7, label424
	addi a6, a6, 16
	j label59
.p2align 2
label41:
	lw s8, 0(a6)
	sh2add s9, a7, s2
	sh2add s6, s8, s0
	addiw a7, a7, 1
	lw s7, 0(s6)
	lw s10, 0(s9)
	addw s8, s7, s10
	sw s8, 0(s6)
	bgt t2, a7, label44
	j label313
.p2align 2
label649:
	sh2add t3, t6, s3
	sh2add s8, t6, s2
	lw a7, 0(t3)
	addiw t6, t6, 1
	sh2add t5, a7, s0
	lw a6, 0(t5)
	lw a7, 0(s8)
	mulw s7, t4, a7
	addw s6, a6, s7
	sw s6, 0(t5)
	bgt t2, t6, label55
	addi t0, t0, 4
	mv t4, t1
	bgt s4, t1, label39
	j label669
.p2align 2
label44:
	addi a6, a6, 4
	j label41
.p2align 2
label424:
	sh2add a6, a7, s3
	sh2add s9, a7, s2
	lw s8, 0(a6)
	addiw a7, a7, 1
	sh2add s6, s8, s0
	lw s7, 0(s6)
	lw s10, 0(s9)
	addw s8, s7, s10
	sw s8, 0(s6)
	bgt t2, a7, label44
	sh2add a7, t4, s1
	lw a6, 0(a7)
	addi t4, a6, -1
	bgt t2, t5, label46
	j label649
.p2align 2
label364:
	sh2add t3, t6, s3
	sh2add s8, t6, s2
	lw a7, 0(t3)
	addiw t6, t6, 1
	sh2add t5, a7, s0
	lw a6, 0(t5)
	lw a7, 0(s8)
	mulw s7, t4, a7
	addw s6, a6, s7
	sw s6, 0(t5)
	bgt t2, t6, label55
	j label668
.p2align 2
label52:
	lw a7, 0(t3)
	sh2add s8, t6, s2
	sh2add t5, a7, s0
	addiw t6, t6, 1
	lw a6, 0(t5)
	lw a7, 0(s8)
	mulw s7, t4, a7
	addw s6, a6, s7
	sw s6, 0(t5)
	ble t2, t6, label381
.p2align 2
label55:
	addi t3, t3, 4
	j label52
.p2align 2
label313:
	sh2add a7, t4, s1
	lw a6, 0(a7)
	addi t4, a6, -1
	ble t2, t5, label649
.p2align 2
label46:
	sh2add t5, t6, s3
.p2align 2
label47:
	lw a6, 0(t5)
	sh2add a7, a6, s0
	sh2add a6, t6, s2
	addiw t6, t6, 4
	lw s6, 0(a7)
	lw s7, 0(a6)
	mulw s8, t4, s7
	addw s9, s6, s8
	sw s9, 0(a7)
	lw s7, 4(t5)
	sh2add a7, s7, s0
	lw s6, 0(a7)
	lw s9, 4(a6)
	mulw s8, t4, s9
	addw s7, s6, s8
	sw s7, 0(a7)
	lw s9, 8(t5)
	sh2add a7, s9, s0
	lw s6, 0(a7)
	lw s7, 8(a6)
	mulw s9, t4, s7
	addw s8, s6, s9
	sw s8, 0(a7)
	lw s7, 12(t5)
	sh2add a7, s7, s0
	lw s6, 0(a7)
	lw s8, 12(a6)
	mulw s7, t4, s8
	addw a6, s6, s7
	sw a6, 0(a7)
	ble t3, t6, label364
	addi t5, t5, 16
	j label47
.p2align 2
label668:
	addi t0, t0, 4
	mv t4, t1
	bgt s4, t1, label39
	addiw a5, a5, 1
	blt a5, a4, label2
	j label67
.p2align 2
label89:
	mv t0, s1
	mv t1, zero
	sw zero, 0(s1)
	li t1, 1
	bgt s4, t1, label107
	j label106
.p2align 2
label69:
	mv t0, s0
	mv t1, zero
	sw zero, 0(s0)
	li t1, 1
	bgt s4, t1, label87
	j label86
.p2align 2
label674:
	sh2add t0, t1, s1
	addiw t1, t1, 1
	sw zero, 0(t0)
	bgt s4, t1, label107
	mv t0, s5
	mv t4, zero
	bgt s4, zero, label7
	j label133
.p2align 2
label71:
	mv t0, s0
	mv t1, zero
	sw zero, 0(s0)
	li t1, 4
	sw zero, 4(s0)
	sw zero, 8(s0)
	sw zero, 12(s0)
	bgt a1, t1, label82
	j label81
.p2align 2
label671:
	sh2add t0, t1, s0
	addiw t1, t1, 1
	sw zero, 0(t0)
	bgt s4, t1, label87
	mv t0, s5
	mv t4, zero
	bgt s4, zero, label39
	j label285
label129:
	mv t0, s5
	mv t4, zero
	bgt s4, zero, label7
	j label133
label642:
	mv t0, s5
	mv t4, zero
	bgt s4, zero, label39
label285:
	addiw a5, a5, 1
	blt a5, a4, label2
	j label67
.p2align 2
label294:
	addi t0, t0, 4
	mv t4, t1
	bgt s4, t1, label39
	j label285
label67:
	li a0, 47
	jal _sysy_stoptime
	mv a0, s4
	mv a1, s1
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s5, 8(sp)
	ld s0, 16(sp)
	ld s6, 24(sp)
	ld s1, 32(sp)
	ld s3, 40(sp)
	ld s2, 48(sp)
	ld s4, 56(sp)
	ld s8, 64(sp)
	ld s7, 72(sp)
	ld s10, 80(sp)
	ld s9, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 104
	ret
.p2align 2
label675:
	mv t0, s5
	mv t4, zero
	bgt s4, zero, label7
	j label133
.p2align 2
label657:
	mv t0, s5
	mv t4, zero
	bgt s4, zero, label39
	j label285
.p2align 2
label300:
	sh2add a6, t6, s3
	mv a7, t6
	j label41
.p2align 2
label171:
	sh2add t3, t6, s3
	j label15
