.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
a:
	.zero	4000000
.align 8
b:
	.zero	4000000
.align 8
c:
	.zero	4000000
.text
.p2align 2
.globl main
main:
	addi sp, sp, -40
pcrel1687:
	auipc a0, %pcrel_hi(a)
	sd ra, 0(sp)
	sd s2, 8(sp)
	addi s2, a0, %pcrel_lo(pcrel1687)
	sd s0, 16(sp)
pcrel1688:
	auipc a0, %pcrel_hi(c)
	sd s1, 24(sp)
	addi s0, a0, %pcrel_lo(pcrel1688)
	sd s3, 32(sp)
pcrel1689:
	auipc a0, %pcrel_hi(b)
	mv s3, zero
	addi s1, a0, %pcrel_lo(pcrel1689)
label2:
	li a0, 1000
	bge s3, a0, label8
	li a1, 4000
	mul a2, s3, a1
	add a0, s2, a2
	jal getarray
	li a1, 1000
	bne a0, a1, label6
	addiw s3, s3, 1
	j label2
label6:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s0, 16(sp)
	ld s1, 24(sp)
	ld s3, 32(sp)
	addi sp, sp, 40
	ret
label29:
	li a0, 92
	jal _sysy_stoptime
	mv a0, s1
	jal putint
	mv a0, zero
	j label6
label8:
	li a0, 23
	jal _sysy_starttime
	mv a0, zero
label9:
	li a1, 1000
	bge a0, a1, label67
	li a2, 4000
	mv a4, zero
	mul a1, a0, a2
	add a3, s1, a1
.p2align 2
label45:
	li a5, 4000
	mul a2, a4, a5
	add a1, s2, a2
	sh2add a2, a4, a3
	add t2, a1, a5
	sh2add t1, a0, a1
	addiw a4, a4, 64
	slli a5, a5, 1
	lw t0, 0(t1)
	sh2add t1, a0, t2
	add t2, a1, a5
	sw t0, 0(a2)
	lw t0, 0(t1)
	sh2add t1, a0, t2
	sw t0, 4(a2)
	lw t0, 0(t1)
	li t1, 12000
	add t3, a1, t1
	sw t0, 8(a2)
	slli t1, t1, 1
	sh2add t0, a0, t3
	lw t2, 0(t0)
	slli t0, a5, 1
	add t3, a1, t0
	sw t2, 12(a2)
	sh2add a5, a0, t3
	lw t2, 0(a5)
	li a5, 20000
	add t4, a1, a5
	sw t2, 16(a2)
	sh2add t3, a0, t4
	lw t2, 0(t3)
	add t3, a1, t1
	sw t2, 20(a2)
	sh2add t2, a0, t3
	li t3, 28000
	lw t1, 0(t2)
	add t2, a1, t3
	sw t1, 24(a2)
	sh2add t1, a0, t2
	lw t3, 0(t1)
	slli t1, t0, 1
	add t2, a1, t1
	sw t3, 28(a2)
	sh2add t0, a0, t2
	lw t1, 0(t0)
	li t0, 36000
	add t2, a1, t0
	sw t1, 32(a2)
	sh2add t1, a0, t2
	slli t2, a5, 1
	lw t0, 0(t1)
	add t1, a1, t2
	sh2add a5, a0, t1
	sw t0, 36(a2)
	lw t0, 0(a5)
	li a5, 44000
	add t2, a1, a5
	sw t0, 40(a2)
	li a5, 48000
	sh2add t1, a0, t2
	li t2, 60000
	lw t0, 0(t1)
	add t1, a1, a5
	sw t0, 44(a2)
	sh2add t0, a0, t1
	lw a5, 0(t0)
	li t0, 52000
	add t1, a1, t0
	sw a5, 48(a2)
	sh2add a5, a0, t1
	lw t0, 0(a5)
	li a5, 56000
	add t1, a1, a5
	sw t0, 52(a2)
	sh2add t0, a0, t1
	add t1, a1, t2
	li t2, 72000
	lw a5, 0(t0)
	sh2add t0, a0, t1
	sw a5, 56(a2)
	lw a5, 0(t0)
	li t0, 64000
	add t1, a1, t0
	sw a5, 60(a2)
	sh2add a5, a0, t1
	lw t0, 0(a5)
	li a5, 68000
	add t1, a1, a5
	sw t0, 64(a2)
	sh2add t0, a0, t1
	add t1, a1, t2
	li t2, 84000
	lw a5, 0(t0)
	sh2add t0, a0, t1
	sw a5, 68(a2)
	lw a5, 0(t0)
	li t0, 76000
	add t1, a1, t0
	sw a5, 72(a2)
	sh2add a5, a0, t1
	lw t0, 0(a5)
	li a5, 80000
	add t1, a1, a5
	sw t0, 76(a2)
	sh2add t0, a0, t1
	add t1, a1, t2
	lw a5, 0(t0)
	sh2add t0, a0, t1
	sw a5, 80(a2)
	lw a5, 0(t0)
	li t0, 88000
	add t1, a1, t0
	sw a5, 84(a2)
	sh2add a5, a0, t1
	lw t0, 0(a5)
	li a5, 92000
	add t1, a1, a5
	sw t0, 88(a2)
	sh2add t0, a0, t1
	li t1, 96000
	lw a5, 0(t0)
	add t0, a1, t1
	sw a5, 92(a2)
	sh2add a5, a0, t0
	lw t1, 0(a5)
	li a5, 100000
	add t2, a1, a5
	sw t1, 96(a2)
	li a5, 104000
	sh2add t1, a0, t2
	lw t0, 0(t1)
	add t1, a1, a5
	sw t0, 100(a2)
	sh2add t0, a0, t1
	lw a5, 0(t0)
	li t0, 108000
	add t1, a1, t0
	sw a5, 104(a2)
	sh2add a5, a0, t1
	lw t0, 0(a5)
	li a5, 112000
	sw t0, 108(a2)
	add t0, a1, a5
	sh2add t1, a0, t0
	li t0, 116000
	lw a5, 0(t1)
	add t1, a1, t0
	sw a5, 112(a2)
	sh2add a5, a0, t1
	lw t0, 0(a5)
	li a5, 120000
	sw t0, 116(a2)
	add t0, a1, a5
	li a5, 124000
	sh2add t2, a0, t0
	add t0, a1, a5
	lw t1, 0(t2)
	sw t1, 120(a2)
	sh2add t1, a0, t0
	li t0, 128000
	lw a5, 0(t1)
	add t1, a1, t0
	sw a5, 124(a2)
	sh2add a5, a0, t1
	lw t0, 0(a5)
	li a5, 132000
	add t2, a1, a5
	sw t0, 128(a2)
	li a5, 136000
	sh2add t1, a0, t2
	lw t0, 0(t1)
	add t1, a1, a5
	li a5, 140000
	sw t0, 132(a2)
	sh2add t0, a0, t1
	add t1, a1, a5
	lw t2, 0(t0)
	sh2add t0, a0, t1
	sw t2, 136(a2)
	li t2, 152000
	lw a5, 0(t0)
	li t0, 144000
	add t1, a1, t0
	sw a5, 140(a2)
	sh2add a5, a0, t1
	lw t0, 0(a5)
	li a5, 148000
	add t1, a1, a5
	sw t0, 144(a2)
	sh2add t0, a0, t1
	add t1, a1, t2
	lw a5, 0(t0)
	sh2add t0, a0, t1
	sw a5, 148(a2)
	lw a5, 0(t0)
	li t0, 156000
	add t1, a1, t0
	sw a5, 152(a2)
	sh2add a5, a0, t1
	lw t0, 0(a5)
	li a5, 160000
	add t1, a1, a5
	sw t0, 156(a2)
	li a5, 164000
	sh2add t2, a0, t1
	add t1, a1, a5
	lw t0, 0(t2)
	sw t0, 160(a2)
	sh2add t0, a0, t1
	lw a5, 0(t0)
	li t0, 168000
	sw a5, 164(a2)
	add a5, a1, t0
	li t0, 172000
	sh2add t1, a0, a5
	add a5, a1, t0
	lw t2, 0(t1)
	sh2add t1, a0, a5
	sw t2, 168(a2)
	lw t0, 0(t1)
	li t1, 176000
	add a5, a1, t1
	sw t0, 172(a2)
	sh2add t0, a0, a5
	li a5, 180000
	lw t1, 0(t0)
	sw t1, 176(a2)
	add t1, a1, a5
	sh2add t0, a0, t1
	lw a5, 0(t0)
	li t0, 184000
	sw a5, 180(a2)
	add a5, a1, t0
	sh2add t1, a0, a5
	lw t0, 0(t1)
	li t1, 188000
	add t2, a1, t1
	sw t0, 184(a2)
	sh2add a5, a0, t2
	li t2, 192000
	add t1, a1, t2
	lw t0, 0(a5)
	sh2add a5, a0, t1
	li t1, 196000
	sw t0, 188(a2)
	lw t0, 0(a5)
	add a5, a1, t1
	li t1, 200000
	sh2add t2, a0, a5
	sw t0, 192(a2)
	lw t0, 0(t2)
	li t2, 212000
	sw t0, 196(a2)
	add t0, a1, t1
	sh2add a5, a0, t0
	lw t1, 0(a5)
	li a5, 204000
	sw t1, 200(a2)
	add t1, a1, a5
	sh2add t0, a0, t1
	li t1, 208000
	lw a5, 0(t0)
	sw a5, 204(a2)
	add a5, a1, t1
	sh2add t0, a0, a5
	lw t1, 0(t0)
	add t0, a1, t2
	sh2add a5, a0, t0
	sw t1, 208(a2)
	li t1, 216000
	lw t2, 0(a5)
	add t0, a1, t1
	sh2add a5, a0, t0
	sw t2, 212(a2)
	li t0, 220000
	lw t1, 0(a5)
	add a5, a1, t0
	li t0, 224000
	sh2add t2, a0, a5
	sw t1, 216(a2)
	lw t1, 0(t2)
	sw t1, 220(a2)
	add t1, a1, t0
	li t0, 228000
	sh2add a5, a0, t1
	lw t2, 0(a5)
	add a5, a1, t0
	sh2add t1, a0, a5
	sw t2, 224(a2)
	li a5, 232000
	lw t0, 0(t1)
	sw t0, 228(a2)
	add t0, a1, a5
	sh2add t1, a0, t0
	lw a5, 0(t1)
	li t1, 236000
	add t0, a1, t1
	sw a5, 232(a2)
	sh2add t2, a0, t0
	li t0, 240000
	add t1, a1, t0
	lw a5, 0(t2)
	sw a5, 236(a2)
	sh2add a5, a0, t1
	lw t0, 0(a5)
	li a5, 244000
	sw t0, 240(a2)
	add t0, a1, a5
	sh2add t1, a0, t0
	li t0, 248000
	lw a5, 0(t1)
	sw a5, 244(a2)
	add a5, a1, t0
	sh2add t1, a0, a5
	li a5, 252000
	lw t0, 0(t1)
	sw t0, 248(a2)
	add t0, a1, a5
	sh2add a1, a0, t0
	lw a5, 0(a1)
	li a1, 960
	sw a5, 252(a2)
	blt a4, a1, label45
	li a5, 4000
	mul a1, a4, a5
	add a2, s2, a1
	sh2add t1, a0, a2
	sh2add a1, a4, a3
	add a3, a2, a5
	lw t0, 0(t1)
	sw t0, 0(a1)
	sh2add t0, a0, a3
	slli a3, a5, 1
	lw a4, 0(t0)
	add a5, a2, a3
	sh2add t0, a0, a5
	li a5, 12000
	sw a4, 4(a1)
	add t1, a2, a5
	lw a4, 0(t0)
	sw a4, 8(a1)
	sh2add a4, a0, t1
	lw t0, 0(a4)
	slli a4, a3, 1
	add a3, a2, a4
	sw t0, 12(a1)
	slli a4, a4, 1
	sh2add t1, a0, a3
	li a3, 20000
	lw t0, 0(t1)
	add t1, a2, a3
	sh2add t2, a0, t1
	sw t0, 16(a1)
	lw t0, 0(t2)
	slli t2, a5, 1
	add t1, a2, t2
	sw t0, 20(a1)
	li t2, 28000
	sh2add a5, a0, t1
	add t1, a2, t2
	lw t0, 0(a5)
	sh2add a5, a0, t1
	sw t0, 24(a1)
	lw t0, 0(a5)
	sw t0, 28(a1)
	add t0, a2, a4
	sh2add a5, a0, t0
	lw a4, 0(a5)
	li a5, 36000
	add t0, a2, a5
	sw a4, 32(a1)
	sh2add a4, a0, t0
	li t0, 56000
	lw a5, 0(a4)
	slli a4, a3, 1
	sw a5, 36(a1)
	add a5, a2, a4
	sh2add a3, a0, a5
	li a5, 44000
	lw a4, 0(a3)
	add a3, a2, a5
	sw a4, 40(a1)
	sh2add a4, a0, a3
	li a3, 48000
	lw a5, 0(a4)
	add a4, a2, a3
	sw a5, 44(a1)
	sh2add a5, a0, a4
	lw a3, 0(a5)
	li a5, 52000
	add a4, a2, a5
	sw a3, 48(a1)
	sh2add a3, a0, a4
	add a4, a2, t0
	lw a5, 0(a3)
	sh2add a3, a0, a4
	sw a5, 52(a1)
	lw a5, 0(a3)
	li a3, 60000
	add a4, a2, a3
	sw a5, 56(a1)
	sh2add a5, a0, a4
	li a4, 64000
	lw a3, 0(a5)
	add a5, a2, a4
	sw a3, 60(a1)
	sh2add a3, a0, a5
	li a5, 68000
	lw a4, 0(a3)
	sw a4, 64(a1)
	add a4, a2, a5
	sh2add a3, a0, a4
	li a4, 72000
	lw a5, 0(a3)
	add a3, a2, a4
	li a4, 76000
	sw a5, 68(a1)
	sh2add a5, a0, a3
	lw t0, 0(a5)
	add a5, a2, a4
	sh2add a3, a0, a5
	sw t0, 72(a1)
	li a5, 80000
	lw a4, 0(a3)
	add a3, a2, a5
	li a5, 84000
	sw a4, 76(a1)
	sh2add a4, a0, a3
	lw t0, 0(a4)
	add a4, a2, a5
	sh2add a3, a0, a4
	sw t0, 80(a1)
	li a4, 88000
	li t0, 100000
	lw a5, 0(a3)
	sw a5, 84(a1)
	add a5, a2, a4
	sh2add a3, a0, a5
	lw a4, 0(a3)
	li a3, 92000
	sw a4, 88(a1)
	add a4, a2, a3
	sh2add a5, a0, a4
	li a4, 96000
	lw a3, 0(a5)
	add a5, a2, a4
	sw a3, 92(a1)
	sh2add a3, a0, a5
	add a5, a2, t0
	lw a4, 0(a3)
	li t0, 104000
	sh2add a3, a0, a5
	sw a4, 96(a1)
	lw a4, 0(a3)
	add a3, a2, t0
	li t0, 108000
	sh2add a5, a0, a3
	sw a4, 100(a1)
	lw a4, 0(a5)
	add a5, a2, t0
	li t0, 112000
	sh2add a3, a0, a5
	sw a4, 104(a1)
	lw a4, 0(a3)
	add a3, a2, t0
	li t0, 116000
	sh2add a5, a0, a3
	sw a4, 108(a1)
	add a3, a2, t0
	lw a4, 0(a5)
	li t0, 120000
	sh2add a5, a0, a3
	sw a4, 112(a1)
	lw a4, 0(a5)
	add a5, a2, t0
	li t0, 132000
	sh2add a3, a0, a5
	sw a4, 116(a1)
	lw a4, 0(a3)
	li a3, 124000
	add a5, a2, a3
	sw a4, 120(a1)
	sh2add a4, a0, a5
	lw a3, 0(a4)
	li a4, 128000
	sw a3, 124(a1)
	add a3, a2, a4
	sh2add a5, a0, a3
	lw a4, 0(a5)
	add a5, a2, t0
	li t0, 140000
	sh2add a3, a0, a5
	sw a4, 128(a1)
	li a5, 136000
	lw a4, 0(a3)
	add a3, a2, a5
	sw a4, 132(a1)
	sh2add a4, a0, a3
	lw a5, 0(a4)
	add a4, a2, t0
	sh2add a3, a0, a4
	sw a5, 136(a1)
	li a4, 144000
	lw a5, 0(a3)
	sw a5, 140(a1)
	add a5, a2, a4
	sh2add a3, a0, a5
	lw a4, 0(a3)
	li a3, 148000
	add a5, a2, a3
	sw a4, 144(a1)
	sh2add a4, a0, a5
	li a5, 152000
	lw a3, 0(a4)
	sw a3, 148(a1)
	add a3, a2, a5
	sh2add a4, a0, a3
	lw a5, 0(a4)
	li a4, 156000
	add a3, a2, a4
	sw a5, 152(a1)
	sh2add a2, a0, a3
	addiw a0, a0, 1
	lw a4, 0(a2)
	sw a4, 156(a1)
	j label9
label67:
	mv a2, zero
label11:
	li a1, 4000
	li a4, 1000
	mul a0, a2, a1
	add a1, s2, a0
	add a3, s0, a0
	bge a2, a4, label75
	mv a0, zero
	blt zero, a4, label905
label904:
	addiw a2, a2, 1
	j label11
.p2align 2
label905:
	mv a4, zero
	mv a5, zero
.p2align 2
label40:
	li t2, 4000
	mul t1, a4, t2
	add t0, s1, t1
	add a6, t0, t2
	sh2add t1, a4, a1
	sh2add t4, a0, t0
	addiw a4, a4, 8
	lw t3, 0(t1)
	sh2add t5, a0, a6
	lw t4, 0(t4)
	lw t6, 4(t1)
	lw a6, 0(t5)
	mulw t5, t6, a6
	mulw t6, t3, t4
	slli t3, t2, 1
	addw t4, t5, t6
	lw t5, 8(t1)
	add t6, t0, t3
	sh2add t2, a0, t6
	lw t6, 0(t2)
	li t2, 12000
	mulw a6, t5, t6
	lw t5, 12(t1)
	addw t4, t4, a6
	add a6, t0, t2
	sh2add t6, a0, a6
	lw a6, 0(t6)
	mulw t6, t5, a6
	slli t5, t3, 1
	addw t4, t4, t6
	add t6, t0, t5
	lw t5, 16(t1)
	sh2add t3, a0, t6
	lw a6, 0(t3)
	mulw t6, t5, a6
	li t5, 20000
	addw t3, t4, t6
	add t6, t0, t5
	lw t5, 20(t1)
	sh2add t4, a0, t6
	lw a6, 0(t4)
	slli t4, t2, 1
	mulw t6, t5, a6
	add t5, t0, t4
	addw t3, t3, t6
	lw t4, 24(t1)
	sh2add t2, a0, t5
	lw t6, 0(t2)
	lw t1, 28(t1)
	mulw t5, t4, t6
	li t4, 28000
	addw t2, t3, t5
	add t3, t0, t4
	sh2add t0, a0, t3
	lw t4, 0(t0)
	mulw t3, t1, t4
	addw t0, t2, t3
	addw a5, a5, t0
	li t0, 1000
	blt a4, t0, label40
	sh2add a4, a0, a3
	addiw a0, a0, 1
	sw a5, 0(a4)
	li a4, 1000
	blt a0, a4, label905
	j label904
label75:
	mv a0, zero
label13:
	li a2, 4000
	mul a3, a0, a2
	li a2, 1000
	add a1, s0, a3
	bge a0, a2, label81
	mv a3, zero
	li a4, 2147483647
	j label30
label33:
	sh2add a3, a3, a1
	lw a4, 0(a3)
	lw t0, 4(a3)
	min a2, a2, a4
	lw a5, 8(a3)
	min a4, a2, t0
	lw t0, 12(a3)
	min a2, a4, a5
	lw a5, 16(a3)
	min a4, a2, t0
	min a2, a4, a5
	lw a4, 20(a3)
	min a5, a2, a4
	lw a2, 24(a3)
	lw t0, 28(a3)
	min a4, a5, a2
	lw a5, 32(a3)
	min a2, a4, t0
	lw t0, 36(a3)
	min a4, a2, a5
	lw a5, 40(a3)
	min a2, a4, t0
	min a4, a2, a5
	lw a2, 44(a3)
	min a5, a4, a2
	lw a4, 48(a3)
	min a2, a5, a4
	lw a5, 52(a3)
	lw t0, 56(a3)
	min a4, a2, a5
	lw a5, 60(a3)
	min a2, a4, t0
	lw t1, 64(a3)
	min a4, a2, a5
	lw t0, 68(a3)
	min a2, a4, t1
	lw a5, 72(a3)
	min a4, a2, t0
	lw t0, 76(a3)
	min a2, a4, a5
	lw a5, 80(a3)
	min a4, a2, t0
	lw t0, 84(a3)
	min a2, a4, a5
	lw a5, 88(a3)
	min a4, a2, t0
	lw t0, 92(a3)
	min a2, a4, a5
	lw a5, 96(a3)
	min a4, a2, t0
	lw t1, 100(a3)
	min a2, a4, a5
	lw t0, 104(a3)
	min a4, a2, t1
	lw a5, 108(a3)
	min a2, a4, t0
	lw t0, 112(a3)
	min a4, a2, a5
	lw a5, 116(a3)
	min a2, a4, t0
	lw t0, 120(a3)
	min a4, a2, a5
	lw a5, 124(a3)
	min a2, a4, t0
	lw t0, 128(a3)
	min a4, a2, a5
	lw a5, 132(a3)
	min a2, a4, t0
	lw t0, 136(a3)
	min a4, a2, a5
	lw a5, 140(a3)
	min a2, a4, t0
	lw t0, 144(a3)
	min a4, a2, a5
	lw a5, 148(a3)
	min a2, a4, t0
	min a4, a2, a5
	lw a2, 152(a3)
	lw a3, 156(a3)
	min a5, a4, a2
	mv a4, zero
	min a2, a5, a3
.p2align 2
label34:
	sh2add a3, a4, a1
	addiw a4, a4, 64
	sw a2, 0(a3)
	sw a2, 4(a3)
	sw a2, 8(a3)
	sw a2, 12(a3)
	sw a2, 16(a3)
	sw a2, 20(a3)
	sw a2, 24(a3)
	sw a2, 28(a3)
	sw a2, 32(a3)
	sw a2, 36(a3)
	sw a2, 40(a3)
	sw a2, 44(a3)
	sw a2, 48(a3)
	sw a2, 52(a3)
	sw a2, 56(a3)
	sw a2, 60(a3)
	sw a2, 64(a3)
	sw a2, 68(a3)
	sw a2, 72(a3)
	sw a2, 76(a3)
	sw a2, 80(a3)
	sw a2, 84(a3)
	sw a2, 88(a3)
	sw a2, 92(a3)
	sw a2, 96(a3)
	sw a2, 100(a3)
	sw a2, 104(a3)
	sw a2, 108(a3)
	sw a2, 112(a3)
	sw a2, 116(a3)
	sw a2, 120(a3)
	sw a2, 124(a3)
	sw a2, 128(a3)
	sw a2, 132(a3)
	sw a2, 136(a3)
	sw a2, 140(a3)
	sw a2, 144(a3)
	sw a2, 148(a3)
	sw a2, 152(a3)
	sw a2, 156(a3)
	sw a2, 160(a3)
	sw a2, 164(a3)
	sw a2, 168(a3)
	sw a2, 172(a3)
	sw a2, 176(a3)
	sw a2, 180(a3)
	sw a2, 184(a3)
	sw a2, 188(a3)
	sw a2, 192(a3)
	sw a2, 196(a3)
	sw a2, 200(a3)
	sw a2, 204(a3)
	sw a2, 208(a3)
	sw a2, 212(a3)
	sw a2, 216(a3)
	sw a2, 220(a3)
	sw a2, 224(a3)
	sw a2, 228(a3)
	sw a2, 232(a3)
	sw a2, 236(a3)
	sw a2, 240(a3)
	sw a2, 244(a3)
	sw a2, 248(a3)
	sw a2, 252(a3)
	li a3, 960
	blt a4, a3, label34
	sh2add a1, a4, a1
	addiw a0, a0, 1
	sw a2, 0(a1)
	sw a2, 4(a1)
	sw a2, 8(a1)
	sw a2, 12(a1)
	sw a2, 16(a1)
	sw a2, 20(a1)
	sw a2, 24(a1)
	sw a2, 28(a1)
	sw a2, 32(a1)
	sw a2, 36(a1)
	sw a2, 40(a1)
	sw a2, 44(a1)
	sw a2, 48(a1)
	sw a2, 52(a1)
	sw a2, 56(a1)
	sw a2, 60(a1)
	sw a2, 64(a1)
	sw a2, 68(a1)
	sw a2, 72(a1)
	sw a2, 76(a1)
	sw a2, 80(a1)
	sw a2, 84(a1)
	sw a2, 88(a1)
	sw a2, 92(a1)
	sw a2, 96(a1)
	sw a2, 100(a1)
	sw a2, 104(a1)
	sw a2, 108(a1)
	sw a2, 112(a1)
	sw a2, 116(a1)
	sw a2, 120(a1)
	sw a2, 124(a1)
	sw a2, 128(a1)
	sw a2, 132(a1)
	sw a2, 136(a1)
	sw a2, 140(a1)
	sw a2, 144(a1)
	sw a2, 148(a1)
	sw a2, 152(a1)
	sw a2, 156(a1)
	j label13
.p2align 2
label30:
	sh2add a2, a3, a1
	addiw a3, a3, 64
	lw a5, 0(a2)
	lw t0, 4(a2)
	min a4, a4, a5
	lw t1, 8(a2)
	min a5, a4, t0
	min a4, a5, t1
	lw a5, 12(a2)
	min t0, a4, a5
	lw a4, 16(a2)
	min a5, t0, a4
	lw t0, 20(a2)
	lw t1, 24(a2)
	min a4, a5, t0
	lw t2, 28(a2)
	min a5, a4, t1
	lw t0, 32(a2)
	min a4, a5, t2
	lw t2, 36(a2)
	min a5, a4, t0
	lw t1, 40(a2)
	min a4, a5, t2
	lw t0, 44(a2)
	min a5, a4, t1
	lw t1, 48(a2)
	min a4, a5, t0
	min a5, a4, t1
	lw a4, 52(a2)
	min t0, a5, a4
	lw a5, 56(a2)
	lw t1, 60(a2)
	min a4, t0, a5
	min t0, a4, t1
	lw a4, 64(a2)
	min a5, t0, a4
	lw t0, 68(a2)
	lw t1, 72(a2)
	min a4, a5, t0
	lw t2, 76(a2)
	min a5, a4, t1
	lw t0, 80(a2)
	min a4, a5, t2
	lw t1, 84(a2)
	min a5, a4, t0
	lw t0, 88(a2)
	min a4, a5, t1
	lw t1, 92(a2)
	min a5, a4, t0
	lw t2, 96(a2)
	min a4, a5, t1
	lw t0, 100(a2)
	min a5, a4, t2
	lw t1, 104(a2)
	min a4, a5, t0
	min a5, a4, t1
	lw a4, 108(a2)
	lw t1, 112(a2)
	min t0, a5, a4
	lw a5, 116(a2)
	min a4, t0, t1
	min t0, a4, a5
	lw a4, 120(a2)
	lw t1, 124(a2)
	min a5, t0, a4
	lw t0, 128(a2)
	min a4, a5, t1
	lw t1, 132(a2)
	min a5, a4, t0
	lw t0, 136(a2)
	min a4, a5, t1
	lw t1, 140(a2)
	min a5, a4, t0
	lw t0, 144(a2)
	min a4, a5, t1
	min a5, a4, t0
	lw a4, 148(a2)
	min t0, a5, a4
	lw a5, 152(a2)
	lw t1, 156(a2)
	min a4, t0, a5
	lw t0, 160(a2)
	min a5, a4, t1
	lw t1, 164(a2)
	min a4, a5, t0
	lw t0, 168(a2)
	min a5, a4, t1
	lw t1, 172(a2)
	min a4, a5, t0
	min a5, a4, t1
	lw a4, 176(a2)
	min t0, a5, a4
	lw a5, 180(a2)
	min a4, t0, a5
	lw t0, 184(a2)
	min a5, a4, t0
	lw a4, 188(a2)
	min t0, a5, a4
	lw a5, 192(a2)
	min a4, t0, a5
	lw t0, 196(a2)
	lw t1, 200(a2)
	min a5, a4, t0
	min a4, a5, t1
	lw a5, 204(a2)
	min t0, a4, a5
	lw a4, 208(a2)
	min a5, t0, a4
	lw t0, 212(a2)
	lw t1, 216(a2)
	min a4, a5, t0
	lw t0, 220(a2)
	min a5, a4, t1
	lw t1, 224(a2)
	min a4, a5, t0
	lw t0, 228(a2)
	min a5, a4, t1
	lw t1, 232(a2)
	min a4, a5, t0
	lw t0, 236(a2)
	min a5, a4, t1
	lw t1, 240(a2)
	min a4, a5, t0
	lw t0, 244(a2)
	min a5, a4, t1
	lw t1, 248(a2)
	min a4, a5, t0
	min a5, a4, t1
	lw a4, 252(a2)
	min a2, a5, a4
	li a4, 960
	bge a3, a4, label33
	mv a4, a2
	j label30
label81:
	mv a0, zero
label15:
	li a1, 1000
	bge a0, a1, label85
	li a2, 4000
	mul a3, a0, a2
	mv a2, zero
	add a1, s0, a3
.p2align 2
label18:
	li a5, 4000
	mul a4, a2, a5
	add a3, s0, a4
	sh2add a4, a2, a1
	sh2add t2, a0, a3
	addiw a2, a2, 8
	lw t1, 0(t2)
	subw t0, zero, t1
	sw t0, 0(a4)
	add t0, a3, a5
	sh2add t1, a0, t0
	slli t0, a5, 1
	lw t2, 0(t1)
	add a5, a3, t0
	subw t3, zero, t2
	slli t0, t0, 1
	sh2add t2, a0, a5
	li a5, 12000
	sw t3, 4(a4)
	lw t1, 0(t2)
	subw t3, zero, t1
	add t1, a3, a5
	sh2add t2, a0, t1
	sw t3, 8(a4)
	lw t3, 0(t2)
	subw t1, zero, t3
	sw t1, 12(a4)
	add t1, a3, t0
	sh2add t2, a0, t1
	lw t0, 0(t2)
	subw t1, zero, t0
	li t0, 20000
	add t2, a3, t0
	sw t1, 16(a4)
	sh2add t3, a0, t2
	lw t1, 0(t3)
	subw t0, zero, t1
	slli t1, a5, 1
	add a5, a3, t1
	sw t0, 20(a4)
	sh2add t0, a0, a5
	li a5, 28000
	lw t1, 0(t0)
	add a3, a3, a5
	subw t2, zero, t1
	sh2add t0, a0, a3
	sw t2, 24(a4)
	lw a5, 0(t0)
	subw a3, zero, a5
	sw a3, 28(a4)
	li a3, 1000
	blt a2, a3, label18
	addiw a0, a0, 1
	j label15
label85:
	mv s1, zero
	mv a1, zero
label21:
	li a2, 1000
	bge a1, a2, label29
	li a0, 4000
	mv a3, zero
	mul a4, a1, a0
	add a2, s0, a4
	mv a4, s1
	j label25
label28:
	sh2add a2, a3, a2
	addiw a1, a1, 1
	lw a5, 0(a2)
	lw a4, 4(a2)
	addw a3, a0, a5
	addw a0, a3, a4
	lw a3, 8(a2)
	addw a4, a0, a3
	lw a0, 12(a2)
	addw a3, a4, a0
	lw a4, 16(a2)
	lw a5, 20(a2)
	addw a0, a3, a4
	addw a3, a0, a5
	lw a0, 24(a2)
	addw a4, a3, a0
	lw a3, 28(a2)
	addw a0, a4, a3
	lw a4, 32(a2)
	lw a5, 36(a2)
	addw a3, a0, a4
	lw a4, 40(a2)
	addw a0, a3, a5
	lw a5, 44(a2)
	addw a3, a0, a4
	lw a4, 48(a2)
	addw a0, a3, a5
	addw a3, a0, a4
	lw a0, 52(a2)
	addw a4, a3, a0
	lw a3, 56(a2)
	addw a0, a4, a3
	lw a4, 60(a2)
	lw a5, 64(a2)
	addw a3, a0, a4
	lw a4, 68(a2)
	addw a0, a3, a5
	lw a5, 72(a2)
	addw a3, a0, a4
	lw a4, 76(a2)
	addw a0, a3, a5
	lw a5, 80(a2)
	addw a3, a0, a4
	lw a4, 84(a2)
	addw a0, a3, a5
	lw a5, 88(a2)
	addw a3, a0, a4
	lw a4, 92(a2)
	addw a0, a3, a5
	lw a5, 96(a2)
	addw a3, a0, a4
	lw a4, 100(a2)
	addw a0, a3, a5
	lw a5, 104(a2)
	addw a3, a0, a4
	lw a4, 108(a2)
	addw a0, a3, a5
	lw a5, 112(a2)
	addw a3, a0, a4
	lw a4, 116(a2)
	addw a0, a3, a5
	lw a5, 120(a2)
	addw a3, a0, a4
	lw a4, 124(a2)
	addw a0, a3, a5
	addw a3, a0, a4
	lw a0, 128(a2)
	addw a4, a3, a0
	lw a3, 132(a2)
	addw a0, a4, a3
	lw a4, 136(a2)
	lw a5, 140(a2)
	addw a3, a0, a4
	lw a4, 144(a2)
	addw a0, a3, a5
	lw a5, 148(a2)
	addw a3, a0, a4
	lw a4, 152(a2)
	addw a0, a3, a5
	addw a3, a0, a4
	lw a0, 156(a2)
	addw s1, a3, a0
	j label21
.p2align 2
label25:
	sh2add a0, a3, a2
	addiw a3, a3, 64
	lw t0, 0(a0)
	lw t1, 4(a0)
	addw a5, a4, t0
	lw t0, 8(a0)
	addw a4, a5, t1
	lw t1, 12(a0)
	addw a5, a4, t0
	lw t2, 16(a0)
	addw a4, a5, t1
	lw t0, 20(a0)
	addw a5, a4, t2
	lw t1, 24(a0)
	addw a4, a5, t0
	lw t0, 28(a0)
	addw a5, a4, t1
	lw t1, 32(a0)
	addw a4, a5, t0
	addw a5, a4, t1
	lw a4, 36(a0)
	addw t0, a5, a4
	lw a5, 40(a0)
	lw t1, 44(a0)
	addw a4, t0, a5
	lw t0, 48(a0)
	addw a5, a4, t1
	lw t2, 52(a0)
	addw a4, a5, t0
	lw t1, 56(a0)
	addw a5, a4, t2
	lw t0, 60(a0)
	addw a4, a5, t1
	addw a5, a4, t0
	lw a4, 64(a0)
	addw t0, a5, a4
	lw a5, 68(a0)
	lw t1, 72(a0)
	addw a4, t0, a5
	lw t0, 76(a0)
	addw a5, a4, t1
	lw t1, 80(a0)
	addw a4, a5, t0
	lw t0, 84(a0)
	addw a5, a4, t1
	lw t1, 88(a0)
	addw a4, a5, t0
	lw t0, 92(a0)
	addw a5, a4, t1
	lw t1, 96(a0)
	addw a4, a5, t0
	lw t0, 100(a0)
	addw a5, a4, t1
	addw a4, a5, t0
	lw a5, 104(a0)
	addw t0, a4, a5
	lw a4, 108(a0)
	lw t1, 112(a0)
	addw a5, t0, a4
	lw t0, 116(a0)
	addw a4, a5, t1
	lw t2, 120(a0)
	addw a5, a4, t0
	lw t1, 124(a0)
	addw a4, a5, t2
	lw t0, 128(a0)
	addw a5, a4, t1
	addw a4, a5, t0
	lw a5, 132(a0)
	addw t0, a4, a5
	lw a4, 136(a0)
	addw a5, t0, a4
	lw t0, 140(a0)
	lw t1, 144(a0)
	addw a4, a5, t0
	lw t0, 148(a0)
	addw a5, a4, t1
	lw t1, 152(a0)
	addw a4, a5, t0
	lw t0, 156(a0)
	addw a5, a4, t1
	lw t2, 160(a0)
	addw a4, a5, t0
	lw t1, 164(a0)
	addw a5, a4, t2
	lw t0, 168(a0)
	addw a4, a5, t1
	lw t1, 172(a0)
	addw a5, a4, t0
	lw t0, 176(a0)
	addw a4, a5, t1
	lw t1, 180(a0)
	addw a5, a4, t0
	lw t0, 184(a0)
	addw a4, a5, t1
	lw t1, 188(a0)
	addw a5, a4, t0
	lw t0, 192(a0)
	addw a4, a5, t1
	lw t1, 196(a0)
	addw a5, a4, t0
	lw t0, 200(a0)
	addw a4, a5, t1
	lw t2, 204(a0)
	addw a5, a4, t0
	lw t1, 208(a0)
	addw a4, a5, t2
	lw t0, 212(a0)
	addw a5, a4, t1
	lw t1, 216(a0)
	addw a4, a5, t0
	lw t2, 220(a0)
	addw a5, a4, t1
	lw t0, 224(a0)
	addw a4, a5, t2
	lw t1, 228(a0)
	addw a5, a4, t0
	lw t0, 232(a0)
	addw a4, a5, t1
	lw t1, 236(a0)
	addw a5, a4, t0
	lw t0, 240(a0)
	addw a4, a5, t1
	lw t1, 244(a0)
	addw a5, a4, t0
	lw t0, 248(a0)
	addw a4, a5, t1
	addw a5, a4, t0
	lw a4, 252(a0)
	addw a0, a5, a4
	li a4, 960
	bge a3, a4, label28
	mv a4, a0
	j label25
