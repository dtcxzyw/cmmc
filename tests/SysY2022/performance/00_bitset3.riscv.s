.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
a:
	.zero	40000
.text
.globl main
main:
	addi sp, sp, -160
	sd s0, 152(sp)
	addi s0, sp, 0
	sd s1, 144(sp)
	sd s2, 136(sp)
	sd ra, 128(sp)
	jal getint
	mv s1, a0
	jal getint
	mv s2, a0
	li a0, 56
	jal _sysy_starttime
	ble s1, zero, label2
	j label15
label2:
	li a0, 64
	jal _sysy_stoptime
pcrel204:
	auipc a0, %pcrel_hi(a)
	addi a1, a0, %pcrel_lo(pcrel204)
	li a0, 10000
	jal putarray
	ld ra, 128(sp)
	mv a0, zero
	ld s2, 136(sp)
	ld s1, 144(sp)
	ld s0, 152(sp)
	addi sp, sp, 160
	ret
label15:
	auipc a0, %pcrel_hi(a)
	mv a2, s2
	mv a1, s1
	addi a0, a0, %pcrel_lo(label15)
label4:
	li a3, 19971231
	li a5, 19981013
	li t0, 1152921497
	mulw a2, a2, a3
	addw a4, a2, a5
	mul a2, a4, t0
	srai t1, a2, 60
	srli a2, a2, 63
	add t1, a2, t1
	li a2, 1000000007
	mulw t1, t1, a2
	subw t1, a4, t1
	addw a4, t1, a2
	slti t2, t1, 0
	bne t2, zero, label194
	mv a4, t1
label194:
	mulw a3, a4, a3
	addw a3, a3, a5
	mul a5, a3, t0
	srai t0, a5, 60
	srli a5, a5, 63
	add a5, a5, t0
	mulw a5, a5, a2
	subw a3, a3, a5
	addw a2, a3, a2
	slti a5, a3, 0
	bne a5, zero, label190
	mv a2, a3
label190:
	andi a3, a2, 1
	li a5, 1876499845
	li t2, 1
	addiw a1, a1, -1
	sw t2, 0(sp)
	mul a5, a4, a5
	li t2, 2
	srai t0, a5, 49
	sw t2, 4(sp)
	srli a5, a5, 63
	li t2, 4
	add a5, a5, t0
	sw t2, 8(sp)
	li t0, 300000
	li t2, 8
	sw t2, 12(sp)
	mulw a5, a5, t0
	li t2, 16
	li t0, -2004318071
	subw a5, a4, a5
	sw t2, 16(sp)
	li t2, 32
	mul a4, a5, t0
	sw t2, 20(sp)
	mul t0, a5, t0
	srli a4, a4, 32
	li t2, 64
	srli t0, t0, 32
	add a4, a4, a5
	add t0, t0, a5
	sw t2, 24(sp)
	sraiw t1, a4, 4
	li t2, 128
	srliw a4, a4, 31
	sw t2, 28(sp)
	add a4, a4, t1
	li t2, 256
	sh2add t1, a4, a0
	sw t2, 32(sp)
	li t2, 512
	sw t2, 36(sp)
	li t2, 1024
	sw t2, 40(sp)
	slli t2, t2, 1
	sw t2, 44(sp)
	lui t2, 1
	sw t2, 48(sp)
	lui t2, 2
	sw t2, 52(sp)
	lui t2, 4
	sw t2, 56(sp)
	lui t2, 8
	sw t2, 60(sp)
	lui t2, 16
	sw t2, 64(sp)
	lui t2, 32
	sw t2, 68(sp)
	lui t2, 64
	sw t2, 72(sp)
	lui t2, 128
	sw t2, 76(sp)
	lui t2, 256
	sw t2, 80(sp)
	lui t2, 512
	sw t2, 84(sp)
	lui t2, 1024
	sw t2, 88(sp)
	lui t2, 2048
	sw t2, 92(sp)
	lui t2, 4096
	sw t2, 96(sp)
	lui t2, 8192
	sw t2, 100(sp)
	lui t2, 16384
	sw t2, 104(sp)
	lui t2, 32768
	sw t2, 108(sp)
	lui t2, 65536
	sw t2, 112(sp)
	lui t2, 131072
	sw t2, 116(sp)
	lui t2, 262144
	sw t2, 120(sp)
	sraiw t2, t0, 4
	lw t1, 0(t1)
	srliw t0, t0, 31
	add t0, t0, t2
	li t2, 30
	mulw t0, t0, t2
	subw a5, a5, t0
	sh2add a5, a5, s0
	lw t0, 0(a5)
	divw a5, t1, t0
	srliw t2, a5, 31
	add t2, a5, t2
	andi t2, t2, -2
	subw t2, a5, t2
	beq a3, t2, label9
	xori t2, a3, 1
	andi t3, a5, 1
	sltiu t2, t2, 1
	sltiu t3, t3, 1
	subw t2, zero, t2
	subw t3, zero, t3
	and t2, t0, t2
	and t2, t2, t3
	sltiu t3, a3, 1
	subw t0, t2, t0
	mv a3, t0
	bne t3, zero, label196
	mv a3, t2
label196:
	li t0, -2147483647
	and a5, a5, t0
	xori a5, a5, 1
	sltiu a5, a5, 1
	bne a5, zero, label192
	mv a3, t2
label192:
	addw a3, t1, a3
	sh2add a4, a4, a0
	sw a3, 0(a4)
	ble a1, zero, label2
	j label4
label9:
	sh2add a3, a4, a0
	sw t1, 0(a3)
	ble a1, zero, label2
	j label4
