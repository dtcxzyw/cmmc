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
	ble s1, zero, label9
	j label15
label9:
	li a0, 64
	jal _sysy_stoptime
pcrel200:
	auipc a0, %pcrel_hi(a)
	addi a1, a0, %pcrel_lo(pcrel200)
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
label3:
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
	bne t2, zero, label190
	mv a4, t1
label190:
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
	bne a5, zero, label186
	mv a2, a3
label186:
	srliw a3, a2, 31
	li a5, 1876499845
	li t1, 1
	addiw a1, a1, -1
	add a3, a2, a3
	mul a5, a4, a5
	sw t1, 0(sp)
	andi a3, a3, -2
	srai t0, a5, 49
	li t1, 2
	subw a3, a2, a3
	srli a5, a5, 63
	sw t1, 4(sp)
	add a5, a5, t0
	li t1, 4
	li t0, 300000
	sw t1, 8(sp)
	li t1, 8
	mulw a5, a5, t0
	sw t1, 12(sp)
	subw a5, a4, a5
	li t1, 16
	li a4, -2004318071
	sw t1, 16(sp)
	li t1, 32
	sw t1, 20(sp)
	mul a4, a5, a4
	li t1, 64
	srli a4, a4, 32
	sw t1, 24(sp)
	add a4, a4, a5
	li t1, 128
	sraiw t0, a4, 4
	sw t1, 28(sp)
	srliw a4, a4, 31
	li t1, 256
	add a4, a4, t0
	sw t1, 32(sp)
	sh2add t0, a4, a0
	li t1, 512
	sw t1, 36(sp)
	li t1, 1024
	sw t1, 40(sp)
	slli t1, t1, 1
	sw t1, 44(sp)
	lui t1, 1
	sw t1, 48(sp)
	lui t1, 2
	sw t1, 52(sp)
	lui t1, 4
	sw t1, 56(sp)
	lui t1, 8
	sw t1, 60(sp)
	lui t1, 16
	sw t1, 64(sp)
	lui t1, 32
	sw t1, 68(sp)
	lui t1, 64
	sw t1, 72(sp)
	lui t1, 128
	sw t1, 76(sp)
	lui t1, 256
	sw t1, 80(sp)
	lui t1, 512
	sw t1, 84(sp)
	lui t1, 1024
	sw t1, 88(sp)
	lui t1, 2048
	sw t1, 92(sp)
	lui t1, 4096
	sw t1, 96(sp)
	lui t1, 8192
	sw t1, 100(sp)
	lui t1, 16384
	sw t1, 104(sp)
	lui t1, 32768
	sw t1, 108(sp)
	lui t1, 65536
	sw t1, 112(sp)
	lui t1, 131072
	sw t1, 116(sp)
	lui t1, 262144
	sw t1, 120(sp)
	li t1, 30
	lw t0, 0(t0)
	remuw a5, a5, t1
	sh2add a5, a5, s0
	lw t1, 0(a5)
	divw a5, t0, t1
	srliw t2, a5, 31
	add t2, a5, t2
	andi t2, t2, -2
	subw t2, a5, t2
	beq a3, t2, label8
	xori t2, a3, 1
	andi t3, a5, 1
	sltiu t2, t2, 1
	sltiu t3, t3, 1
	subw t2, zero, t2
	subw t3, zero, t3
	and t2, t1, t2
	and t2, t2, t3
	sltiu t3, a3, 1
	subw t1, t2, t1
	mv a3, t1
	bne t3, zero, label192
	mv a3, t2
label192:
	li t1, -2147483647
	and a5, a5, t1
	xori a5, a5, 1
	sltiu a5, a5, 1
	bne a5, zero, label188
	mv a3, t2
label188:
	addw a3, t0, a3
	sh2add a4, a4, a0
	sw a3, 0(a4)
	ble a1, zero, label9
	j label3
label8:
	sh2add a3, a4, a0
	sw t0, 0(a3)
	ble a1, zero, label9
	j label3
