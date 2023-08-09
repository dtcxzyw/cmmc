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
	addi sp, sp, -96
pcrel631:
	auipc a1, %pcrel_hi(x)
	sd ra, 0(sp)
	sd s5, 8(sp)
	addi s5, a1, %pcrel_lo(pcrel631)
	sd s0, 16(sp)
	sd s6, 24(sp)
	sd s1, 32(sp)
	sd s3, 40(sp)
	sd s4, 48(sp)
	sd s2, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s10, 80(sp)
	sd s9, 88(sp)
	mv a0, s5
	jal getarray
pcrel632:
	auipc a1, %pcrel_hi(y)
	mv s6, a0
	addi s3, a1, %pcrel_lo(pcrel632)
	mv a0, s3
	jal getarray
pcrel633:
	auipc a1, %pcrel_hi(v)
	addi s0, a1, %pcrel_lo(pcrel633)
	mv a0, s0
	jal getarray
pcrel634:
	auipc a1, %pcrel_hi(a)
	addi s1, a1, %pcrel_lo(pcrel634)
	mv a0, s1
	jal getarray
	li a0, 39
	jal _sysy_starttime
	li a3, 15
	mv a5, zero
pcrel635:
	auipc a2, %pcrel_hi(b)
	addiw a0, s6, -19
	addiw a1, s6, -4
	li a4, 100
	addiw s4, s6, -1
	addi s2, a2, %pcrel_lo(pcrel635)
	li a2, 3
	j label2
.p2align 2
label588:
	addiw a5, a5, 1
	bge a5, a4, label80
.p2align 2
label2:
	ble s4, zero, label127
	ble s4, a2, label130
	ble a1, a3, label133
	mv t0, s2
	mv t1, zero
	j label7
.p2align 2
label10:
	addi t0, t0, 64
.p2align 2
label7:
	sd zero, 0(t0)
	addiw t1, t1, 16
	sd zero, 8(t0)
	sd zero, 16(t0)
	sd zero, 24(t0)
	sd zero, 32(t0)
	sd zero, 40(t0)
	sd zero, 48(t0)
	sd zero, 56(t0)
	bgt a0, t1, label10
	mv t2, t1
	ble a1, t1, label555
.p2align 2
label14:
	sh2add t0, t2, s2
	mv t1, t2
	j label15
.p2align 2
label18:
	addi t0, t0, 16
.p2align 2
label15:
	sw zero, 0(t0)
	addiw t1, t1, 4
	sw zero, 4(t0)
	sw zero, 8(t0)
	sw zero, 12(t0)
	bgt a1, t1, label18
	ble s4, t1, label557
.p2align 2
label22:
	sh2add t0, t1, s2
.p2align 2
label23:
	sw zero, 0(t0)
	addiw t1, t1, 1
	ble s4, t1, label26
	addi t0, t0, 4
	j label23
.p2align 2
label26:
	mv t1, s5
	mv t3, zero
	bgt s4, zero, label31
label185:
	bgt s4, zero, label81
	j label560
.p2align 2
label218:
	addi t1, t1, 4
	mv t3, t2
	ble s4, t2, label582
.p2align 2
label31:
	addiw t2, t3, 1
	lw t5, 0(t1)
	sh2add t4, t2, s5
	lw t0, 0(t4)
	bge t5, t0, label32
	addiw t4, t5, 3
	addiw t6, t0, -3
	ble t0, t4, label227
	sh2add t4, t5, s3
	mv a6, t5
.p2align 2
label49:
	lw a7, 0(t4)
	sh2add s6, a7, s2
	sh2add a7, a6, s0
	addiw a6, a6, 4
	lw s7, 0(s6)
	lw s10, 0(a7)
	addw s8, s7, s10
	sw s8, 0(s6)
	lw s9, 4(t4)
	sh2add s7, s9, s2
	lw s6, 0(s7)
	lw s8, 4(a7)
	addw s10, s6, s8
	sw s10, 0(s7)
	lw s9, 8(t4)
	sh2add s6, s9, s2
	lw s7, 0(s6)
	lw s10, 8(a7)
	addw s8, s7, s10
	sw s8, 0(s6)
	lw s9, 12(t4)
	sh2add s7, s9, s2
	lw s6, 0(s7)
	lw s8, 12(a7)
	addw s9, s6, s8
	sw s9, 0(s7)
	ble t6, a6, label286
	addi t4, t4, 16
	j label49
.p2align 2
label286:
	ble t0, a6, label565
.p2align 2
label43:
	sh2add t4, a6, s3
	mv t6, a6
	j label44
.p2align 2
label47:
	addi t4, t4, 4
.p2align 2
label44:
	lw s7, 0(t4)
	sh2add s6, t6, s0
	sh2add a6, s7, s2
	addiw t6, t6, 1
	lw a7, 0(a6)
	lw s8, 0(s6)
	addw s7, a7, s8
	sw s7, 0(a6)
	bgt t0, t6, label47
	bge t5, t0, label564
.p2align 2
label33:
	sh2add t6, t3, s1
	sh2add t4, t5, s3
	lw a6, 0(t6)
	addi t3, a6, -1
.p2align 2
label34:
	lw a7, 0(t4)
	sh2add t6, a7, s2
	sh2add a7, t5, s0
	addiw t5, t5, 1
	lw a6, 0(t6)
	lw s6, 0(a7)
	mulw s7, t3, s6
	addw a7, a6, s7
	sw a7, 0(t6)
	ble t0, t5, label218
	addi t4, t4, 4
	j label34
.p2align 2
label227:
	mv a6, t5
	bgt t0, t5, label43
	blt t5, t0, label33
	addi t1, t1, 4
	mv t3, t2
	bgt s4, t2, label31
	j label185
.p2align 2
label32:
	blt t5, t0, label33
	addi t1, t1, 4
	mv t3, t2
	bgt s4, t2, label31
	j label185
.p2align 2
label582:
	ble s4, zero, label560
.p2align 2
label81:
	ble s4, a2, label404
	ble a1, a3, label419
	mv t0, s1
	mv t1, zero
	j label101
.p2align 2
label104:
	addi t0, t0, 64
.p2align 2
label101:
	sd zero, 0(t0)
	addiw t1, t1, 16
	sd zero, 8(t0)
	sd zero, 16(t0)
	sd zero, 24(t0)
	sd zero, 32(t0)
	sd zero, 40(t0)
	sd zero, 48(t0)
	sd zero, 56(t0)
	bgt a0, t1, label104
	mv t2, t1
	ble a1, t1, label577
.p2align 2
label95:
	sh2add t0, t2, s1
	mv t1, t2
.p2align 2
label96:
	sw zero, 0(t0)
	addiw t1, t1, 4
	sw zero, 4(t0)
	sw zero, 8(t0)
	sw zero, 12(t0)
	ble a1, t1, label433
	addi t0, t0, 16
	j label96
.p2align 2
label433:
	ble s4, t1, label576
.p2align 2
label85:
	sh2add t0, t1, s1
.p2align 2
label86:
	sw zero, 0(t0)
	addiw t1, t1, 1
	ble s4, t1, label89
	addi t0, t0, 4
	j label86
.p2align 2
label89:
	mv t1, s5
	mv t3, zero
	bgt s4, zero, label57
label294:
	addiw a5, a5, 1
	blt a5, a4, label2
	j label80
.p2align 2
label76:
	addi t4, t4, 4
.p2align 2
label73:
	lw a7, 0(t4)
	sh2add t6, a7, s1
	sh2add a7, t5, s0
	addiw t5, t5, 1
	lw a6, 0(t6)
	lw s6, 0(a7)
	mulw s7, t3, s6
	addw a7, a6, s7
	sw a7, 0(t6)
	bgt t0, t5, label76
	addi t1, t1, 4
	mv t3, t2
	ble s4, t2, label588
.p2align 2
label57:
	addiw t2, t3, 1
	lw t5, 0(t1)
	sh2add t4, t2, s5
	lw t0, 0(t4)
	bge t5, t0, label303
	addiw t4, t5, 3
	addiw t6, t0, -3
	ble t0, t4, label309
	sh2add t4, t5, s3
	mv a6, t5
.p2align 2
label67:
	lw a7, 0(t4)
	sh2add s6, a7, s1
	sh2add a7, a6, s0
	addiw a6, a6, 4
	lw s7, 0(s6)
	lw s9, 0(a7)
	addw s8, s7, s9
	sw s8, 0(s6)
	lw s10, 4(t4)
	sh2add s7, s10, s1
	lw s6, 0(s7)
	lw s8, 4(a7)
	addw s10, s6, s8
	sw s10, 0(s7)
	lw s9, 8(t4)
	sh2add s8, s9, s1
	lw s6, 0(s8)
	lw s10, 8(a7)
	addw s7, s6, s10
	sw s7, 0(s8)
	lw s9, 12(t4)
	sh2add s6, s9, s1
	lw s7, 0(s6)
	lw s10, 12(a7)
	addw s8, s7, s10
	sw s8, 0(s6)
	ble t6, a6, label368
	addi t4, t4, 16
	j label67
.p2align 2
label368:
	ble t0, a6, label570
.p2align 2
label61:
	sh2add t4, a6, s3
	mv t6, a6
.p2align 2
label62:
	lw s7, 0(t4)
	sh2add s6, t6, s0
	sh2add a6, s7, s1
	addiw t6, t6, 1
	lw a7, 0(a6)
	lw s8, 0(s6)
	addw s7, a7, s8
	sw s7, 0(a6)
	ble t0, t6, label328
	addi t4, t4, 4
	j label62
.p2align 2
label328:
	bge t5, t0, label569
.p2align 2
label72:
	sh2add a6, t3, s2
	sh2add t4, t5, s3
	lw t6, 0(a6)
	addi t3, t6, -1
	j label73
.p2align 2
label309:
	mv a6, t5
	bgt t0, t5, label61
	blt t5, t0, label72
	addi t1, t1, 4
	mv t3, t2
	bgt s4, t2, label57
	j label294
.p2align 2
label570:
	blt t5, t0, label72
	addi t1, t1, 4
	mv t3, t2
	bgt s4, t2, label57
	j label294
.p2align 2
label565:
	blt t5, t0, label33
	addi t1, t1, 4
	mv t3, t2
	bgt s4, t2, label31
	j label185
.p2align 2
label404:
	mv t1, zero
	bgt s4, zero, label85
	mv t1, s5
	mv t3, zero
	j label294
.p2align 2
label555:
	bgt s4, t1, label22
	mv t1, s5
	mv t3, zero
	bgt s4, zero, label31
	j label185
.p2align 2
label419:
	mv t2, zero
	mv t1, zero
	bgt a1, zero, label95
	bgt s4, zero, label85
	mv t1, s5
	mv t3, zero
	j label294
.p2align 2
label577:
	bgt s4, t1, label85
	mv t1, s5
	mv t3, zero
	bgt s4, zero, label57
	j label294
label127:
	mv t1, s5
	mv t3, zero
	bgt s4, zero, label31
	j label185
label560:
	mv t1, s5
	mv t3, zero
label54:
	bgt s4, t3, label57
	j label294
.p2align 2
label303:
	blt t5, t0, label72
	addi t1, t1, 4
	mv t3, t2
	j label54
.p2align 2
label130:
	mv t1, zero
	bgt s4, zero, label22
	mv t1, s5
	mv t3, zero
	j label185
.p2align 2
label133:
	mv t2, zero
	mv t1, zero
	bgt a1, zero, label14
	bgt s4, zero, label22
	mv t1, s5
	mv t3, zero
	j label185
.p2align 2
label569:
	addi t1, t1, 4
	mv t3, t2
	bgt s4, t2, label57
	j label294
.p2align 2
label564:
	addi t1, t1, 4
	mv t3, t2
	bgt s4, t2, label31
	j label185
label80:
	li a0, 47
	jal _sysy_stoptime
	mv a0, s4
	mv a1, s2
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s5, 8(sp)
	ld s0, 16(sp)
	ld s6, 24(sp)
	ld s1, 32(sp)
	ld s3, 40(sp)
	ld s4, 48(sp)
	ld s2, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s10, 80(sp)
	ld s9, 88(sp)
	addi sp, sp, 96
	ret
.p2align 2
label557:
	mv t1, s5
	mv t3, zero
	bgt s4, zero, label31
	j label185
.p2align 2
label576:
	mv t1, s5
	mv t3, zero
	bgt s4, zero, label57
	j label294
