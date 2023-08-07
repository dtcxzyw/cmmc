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
pcrel712:
	auipc a1, %pcrel_hi(x)
	sd ra, 0(sp)
	sd s5, 8(sp)
	addi s5, a1, %pcrel_lo(pcrel712)
	sd s0, 16(sp)
	sd s6, 24(sp)
	sd s1, 32(sp)
	sd s3, 40(sp)
	sd s2, 48(sp)
	sd s4, 56(sp)
	sd s9, 64(sp)
	sd s7, 72(sp)
	sd s8, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	mv a0, s5
	jal getarray
pcrel713:
	auipc a1, %pcrel_hi(y)
	mv s6, a0
	addi s3, a1, %pcrel_lo(pcrel713)
	mv a0, s3
	jal getarray
pcrel714:
	auipc a1, %pcrel_hi(v)
	addi s2, a1, %pcrel_lo(pcrel714)
	mv a0, s2
	jal getarray
pcrel715:
	auipc a1, %pcrel_hi(a)
	addi s0, a1, %pcrel_lo(pcrel715)
	mv a0, s0
	jal getarray
	li a0, 39
	jal _sysy_starttime
	li a3, 16
	li a4, 100
	mv a5, zero
pcrel716:
	auipc a2, %pcrel_hi(b)
	addiw a0, s6, -21
	addiw a1, s6, -5
	addiw s4, s6, -1
	addi s1, a2, %pcrel_lo(pcrel716)
	li a2, 4
.p2align 2
label2:
	ble s4, zero, label125
	ble s4, a2, label128
	ble a1, a3, label137
	mv t0, s1
	mv t1, zero
	j label18
.p2align 2
label32:
	addiw t2, t3, 1
	lw t4, 0(t0)
	sh2add t5, t2, s5
	lw t1, 0(t5)
	bge t4, t1, label33
	addiw t5, t4, 4
	addiw a6, t1, -4
	ble t1, t5, label35
	sh2add t6, t4, s3
	mv a7, t4
	j label37
.p2align 2
label54:
	addi t0, t0, 4
	mv t3, t2
	bgt s4, t2, label32
.p2align 2
label645:
	addiw a5, a5, 1
	blt a5, a4, label2
label58:
	li a0, 47
	jal _sysy_stoptime
	mv a0, s4
	mv a1, s1
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s5, 8(sp)
	ld s0, 16(sp)
	ld s6, 24(sp)
	ld s1, 32(sp)
	ld s3, 40(sp)
	ld s2, 48(sp)
	ld s4, 56(sp)
	ld s9, 64(sp)
	ld s7, 72(sp)
	ld s8, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 104
	ret
.p2align 2
label37:
	lw s9, 0(t6)
	sh2add s6, a7, s2
	sh2add s7, s9, s0
	addiw a7, a7, 4
	lw s8, 0(s7)
	lw s9, 0(s6)
	addw s10, s8, s9
	sw s10, 0(s7)
	lw s11, 4(t6)
	sh2add s8, s11, s0
	lw s7, 0(s8)
	lw s10, 4(s6)
	addw s11, s7, s10
	sw s11, 0(s8)
	lw s9, 8(t6)
	sh2add s7, s9, s0
	lw s8, 0(s7)
	lw s10, 8(s6)
	addw s11, s8, s10
	sw s11, 0(s7)
	lw s9, 12(t6)
	sh2add s8, s9, s0
	lw s7, 0(s8)
	lw s10, 12(s6)
	addw s9, s7, s10
	sw s9, 0(s8)
	ble a6, a7, label239
	addi t6, t6, 16
	j label37
.p2align 2
label239:
	sh2add t6, a7, s3
	sh2add s8, a7, s2
	lw s7, 0(t6)
	addiw a7, a7, 1
	sh2add a6, s7, s0
	lw s6, 0(a6)
	lw s9, 0(s8)
	addw s7, s6, s9
	sw s7, 0(a6)
	bgt t1, a7, label56
	j label661
.p2align 2
label42:
	lw s7, 0(t6)
	sh2add s8, a7, s2
	sh2add a6, s7, s0
	addiw a7, a7, 1
	lw s6, 0(a6)
	lw s9, 0(s8)
	addw s7, s6, s9
	sw s7, 0(a6)
	ble t1, a7, label45
.p2align 2
label56:
	addi t6, t6, 4
	j label42
.p2align 2
label45:
	sh2add t6, t3, s1
	lw a6, 0(t6)
	addi t3, a6, -1
	bgt t1, t5, label46
.p2align 2
label262:
	sh2add t6, t4, s3
	mv t5, t4
	lw a7, 0(t6)
	sh2add t4, a7, s0
	sh2add a7, t5, s2
	addiw t5, t5, 1
	lw a6, 0(t4)
	lw s6, 0(a7)
	mulw s7, t3, s6
	addw a7, a6, s7
	sw a7, 0(t4)
	bgt t1, t5, label55
	addi t0, t0, 4
	mv t3, t2
	bgt s4, t2, label32
	j label645
.p2align 2
label46:
	sh2add t6, t4, s3
	sh2add t4, t4, s2
	lw s6, 0(t6)
	sh2add a6, s6, s0
	lw a7, 0(a6)
	lw s6, 0(t4)
	mulw s7, t3, s6
	addw s8, a7, s7
	sw s8, 0(a6)
	lw s6, 4(t6)
	sh2add a7, s6, s0
	lw a6, 0(a7)
	lw s7, 4(t4)
	mulw s6, t3, s7
	addw s8, a6, s6
	sw s8, 0(a7)
	lw s7, 8(t6)
	sh2add a6, s7, s0
	lw a7, 0(a6)
	lw s8, 8(t4)
	mulw s6, t3, s8
	addw s7, a7, s6
	sw s7, 0(a6)
	lw s8, 12(t6)
	sh2add a6, s8, s0
	lw a7, 0(a6)
	lw s6, 12(t4)
	mulw t6, t3, s6
	addw t4, a7, t6
	addiw t6, t5, 4
	sw t4, 0(a6)
	ble t1, t6, label305
	mv t4, t5
	mv t5, t6
	j label46
.p2align 2
label305:
	sh2add t6, t5, s3
	lw a7, 0(t6)
	sh2add t4, a7, s0
	sh2add a7, t5, s2
	addiw t5, t5, 1
	lw a6, 0(t4)
	lw s6, 0(a7)
	mulw s7, t3, s6
	addw a7, a6, s7
	sw a7, 0(t4)
	bgt t1, t5, label55
	j label663
.p2align 2
label51:
	lw a7, 0(t6)
	sh2add t4, a7, s0
	sh2add a7, t5, s2
	addiw t5, t5, 1
	lw a6, 0(t4)
	lw s6, 0(a7)
	mulw s7, t3, s6
	addw a7, a6, s7
	sw a7, 0(t4)
	ble t1, t5, label54
.p2align 2
label55:
	addi t6, t6, 4
	j label51
.p2align 2
label18:
	sd zero, 0(t0)
	addiw t1, t1, 16
	sd zero, 8(t0)
	sd zero, 16(t0)
	sd zero, 24(t0)
	sd zero, 32(t0)
	sd zero, 40(t0)
	sd zero, 48(t0)
	sd zero, 56(t0)
	ble a0, t1, label21
	addi t0, t0, 64
	j label18
.p2align 2
label35:
	sh2add t6, t4, s3
	addiw a7, t4, 1
	sh2add s8, t4, s2
	lw s7, 0(t6)
	sh2add a6, s7, s0
	lw s6, 0(a6)
	lw s9, 0(s8)
	addw s7, s6, s9
	sw s7, 0(a6)
	bgt t1, a7, label56
	sh2add t6, t3, s1
	lw a6, 0(t6)
	addi t3, a6, -1
	bgt t1, t5, label46
	j label262
.p2align 2
label11:
	sw zero, 0(t0)
	addiw t1, t1, 4
	sw zero, 4(t0)
	sw zero, 8(t0)
	sw zero, 12(t0)
	ble a1, t1, label14
.p2align 2
label15:
	addi t0, t0, 16
	j label11
.p2align 2
label21:
	sh2add t0, t1, s1
	addiw t1, t1, 4
	sw zero, 0(t0)
	sw zero, 4(t0)
	sw zero, 8(t0)
	sw zero, 12(t0)
	bgt a1, t1, label15
	sh2add t0, t1, s1
	addiw t1, t1, 1
	sw zero, 0(t0)
	bgt s4, t1, label8
	mv t0, s5
	mv t3, zero
	ble s4, zero, label27
.p2align 2
label79:
	addiw t2, t3, 1
	lw t4, 0(t0)
	sh2add t5, t2, s5
	lw t1, 0(t5)
	bge t4, t1, label387
	addiw t5, t4, 4
	addiw a6, t1, -4
	bgt t1, t5, label97
	j label393
.p2align 2
label89:
	addi t0, t0, 4
	mv t3, t2
	bgt s4, t2, label79
	j label651
.p2align 2
label97:
	sh2add t6, t4, s3
	mv a7, t4
.p2align 2
label98:
	lw s9, 0(t6)
	sh2add s6, a7, s2
	sh2add s7, s9, s1
	addiw a7, a7, 4
	lw s8, 0(s7)
	lw s10, 0(s6)
	addw s9, s8, s10
	sw s9, 0(s7)
	lw s11, 4(t6)
	sh2add s8, s11, s1
	lw s7, 0(s8)
	lw s9, 4(s6)
	addw s10, s7, s9
	sw s10, 0(s8)
	lw s11, 8(t6)
	sh2add s9, s11, s1
	lw s7, 0(s9)
	lw s8, 8(s6)
	addw s11, s7, s8
	sw s11, 0(s9)
	lw s10, 12(t6)
	sh2add s7, s10, s1
	lw s8, 0(s7)
	lw s11, 12(s6)
	addw s9, s8, s11
	sw s9, 0(s7)
	ble a6, a7, label101
	addi t6, t6, 16
	j label98
.p2align 2
label81:
	lw s7, 0(t6)
	sh2add s8, a7, s2
	sh2add a6, s7, s1
	addiw a7, a7, 1
	lw s6, 0(a6)
	lw s7, 0(s8)
	addw s9, s6, s7
	sw s9, 0(a6)
	ble t1, a7, label406
.p2align 2
label84:
	addi t6, t6, 4
	j label81
.p2align 2
label101:
	sh2add t6, a7, s3
	sh2add s8, a7, s2
	lw s7, 0(t6)
	addiw a7, a7, 1
	sh2add a6, s7, s1
	lw s6, 0(a6)
	lw s7, 0(s8)
	addw s9, s6, s7
	sw s9, 0(a6)
	bgt t1, a7, label84
	sh2add a6, t3, s0
	lw t6, 0(a6)
	addi t3, t6, -1
	ble t1, t5, label650
.p2align 2
label92:
	sh2add t6, t4, s3
	sh2add t4, t4, s2
	lw s6, 0(t6)
	sh2add a6, s6, s1
	lw a7, 0(a6)
	lw s6, 0(t4)
	mulw s8, t3, s6
	addw s7, a7, s8
	sw s7, 0(a6)
	lw s6, 4(t6)
	sh2add a6, s6, s1
	lw a7, 0(a6)
	lw s8, 4(t4)
	mulw s6, t3, s8
	addw s7, a7, s6
	sw s7, 0(a6)
	lw s8, 8(t6)
	sh2add a7, s8, s1
	lw a6, 0(a7)
	lw s7, 8(t4)
	mulw s6, t3, s7
	addw s8, a6, s6
	sw s8, 0(a7)
	lw s7, 12(t6)
	sh2add a6, s7, s1
	lw a7, 0(a6)
	lw t6, 12(t4)
	mulw s6, t3, t6
	addiw t6, t5, 4
	addw t4, a7, s6
	sw t4, 0(a6)
	ble t1, t6, label475
	mv t4, t5
	mv t5, t6
	j label92
.p2align 2
label86:
	lw a7, 0(t6)
	sh2add s8, t5, s2
	sh2add t4, a7, s1
	addiw t5, t5, 1
	lw a6, 0(t4)
	lw a7, 0(s8)
	mulw s7, t3, a7
	addw s6, a6, s7
	sw s6, 0(t4)
	ble t1, t5, label89
.p2align 2
label90:
	addi t6, t6, 4
	j label86
.p2align 2
label475:
	sh2add t6, t5, s3
	sh2add s8, t5, s2
	lw a7, 0(t6)
	addiw t5, t5, 1
	sh2add t4, a7, s1
	lw a6, 0(t4)
	lw a7, 0(s8)
	mulw s7, t3, a7
	addw s6, a6, s7
	sw s6, 0(t4)
	bgt t1, t5, label90
	addi t0, t0, 4
	mv t3, t2
	bgt s4, t2, label79
	bgt s4, zero, label59
label28:
	mv t0, s5
	mv t3, zero
	bgt s4, zero, label32
	j label182
.p2align 2
label59:
	ble s4, a2, label335
	ble a1, a3, label67
	mv t0, s0
	mv t1, zero
.p2align 2
label74:
	sd zero, 0(t0)
	addiw t1, t1, 16
	sd zero, 8(t0)
	sd zero, 16(t0)
	sd zero, 24(t0)
	sd zero, 32(t0)
	sd zero, 40(t0)
	sd zero, 48(t0)
	sd zero, 56(t0)
	ble a0, t1, label77
	addi t0, t0, 64
	j label74
.p2align 2
label406:
	sh2add a6, t3, s0
	lw t6, 0(a6)
	addi t3, t6, -1
	bgt t1, t5, label92
.p2align 2
label650:
	sh2add t6, t4, s3
	mv t5, t4
	lw a7, 0(t6)
	sh2add s8, t4, s2
	sh2add t4, a7, s1
	addiw t5, t5, 1
	lw a6, 0(t4)
	lw a7, 0(s8)
	mulw s7, t3, a7
	addw s6, a6, s7
	sw s6, 0(t4)
	bgt t1, t5, label90
	addi t0, t0, 4
	mv t3, t2
	bgt s4, t2, label79
.p2align 2
label651:
	bgt s4, zero, label59
	j label28
.p2align 2
label5:
	sw zero, 0(t0)
	addiw t1, t1, 1
	ble s4, t1, label133
.p2align 2
label8:
	addi t0, t0, 4
	j label5
.p2align 2
label14:
	sh2add t0, t1, s1
	addiw t1, t1, 1
	sw zero, 0(t0)
	bgt s4, t1, label8
	mv t0, s5
	mv t3, zero
	bgt s4, zero, label79
	j label27
.p2align 2
label68:
	sw zero, 0(t0)
	addiw t1, t1, 4
	sw zero, 4(t0)
	sw zero, 8(t0)
	sw zero, 12(t0)
	ble a1, t1, label352
.p2align 2
label71:
	addi t0, t0, 16
	j label68
.p2align 2
label77:
	sh2add t0, t1, s0
	addiw t1, t1, 4
	sw zero, 0(t0)
	sw zero, 4(t0)
	sw zero, 8(t0)
	sw zero, 12(t0)
	bgt a1, t1, label71
	sh2add t0, t1, s0
	addiw t1, t1, 1
	sw zero, 0(t0)
	bgt s4, t1, label63
	mv t0, s5
	mv t3, zero
	bgt s4, zero, label32
	j label182
.p2align 2
label60:
	sw zero, 0(t0)
	addiw t1, t1, 1
	ble s4, t1, label340
.p2align 2
label63:
	addi t0, t0, 4
	j label60
.p2align 2
label352:
	sh2add t0, t1, s0
	addiw t1, t1, 1
	sw zero, 0(t0)
	bgt s4, t1, label63
	mv t0, s5
	mv t3, zero
	bgt s4, zero, label32
label182:
	addiw a5, a5, 1
	blt a5, a4, label2
	j label58
.p2align 2
label33:
	addi t0, t0, 4
	mv t3, t2
	bgt s4, t2, label32
	j label182
.p2align 2
label661:
	sh2add t6, t3, s1
	lw a6, 0(t6)
	addi t3, a6, -1
	bgt t1, t5, label46
	j label262
.p2align 2
label663:
	addi t0, t0, 4
	mv t3, t2
	bgt s4, t2, label32
	addiw a5, a5, 1
	blt a5, a4, label2
	j label58
.p2align 2
label67:
	mv t0, s0
	mv t1, zero
	j label68
label125:
	mv t0, s5
	mv t3, zero
	bgt s4, zero, label79
label27:
	bgt s4, zero, label59
	j label28
.p2align 2
label387:
	addi t0, t0, 4
	mv t3, t2
	bgt s4, t2, label79
	j label27
.p2align 2
label133:
	mv t0, s5
	mv t3, zero
	bgt s4, zero, label79
	j label27
.p2align 2
label340:
	mv t0, s5
	mv t3, zero
	bgt s4, zero, label32
	j label182
.p2align 2
label137:
	mv t0, s1
	mv t1, zero
	j label11
.p2align 2
label128:
	mv t0, s1
	mv t1, zero
	j label5
.p2align 2
label335:
	mv t0, s0
	mv t1, zero
	j label60
.p2align 2
label393:
	sh2add t6, t4, s3
	mv a7, t4
	j label81
