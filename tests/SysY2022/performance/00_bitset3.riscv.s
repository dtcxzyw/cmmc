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
pcrel198:
	auipc a1, %pcrel_hi(a)
	mv a3, s2
	addi a0, a1, %pcrel_lo(pcrel198)
	mv a1, s1
label3:
	li a2, 19971231
	li a5, 19981013
	li t0, 1152921497
	mulw a3, a3, a2
	addw a4, a3, a5
	mul a3, a4, t0
	srli t3, a3, 63
	srai t1, a3, 60
	li a3, 1000000007
	add t2, t3, t1
	mulw t3, t2, a3
	subw t1, a4, t3
	addw t2, t1, a3
	mv a4, t2
	blt t1, zero, label187
	mv a4, t1
label187:
	mulw t1, a4, a2
	addw a2, t1, a5
	mul a5, a2, t0
	srli t2, a5, 63
	srai t0, a5, 60
	add t1, t2, t0
	mulw t0, t1, a3
	subw a5, a2, t0
	addw a3, a5, a3
	mv a2, a3
	blt a5, zero, label189
	mv a2, a5
label189:
	andi a3, a2, 1
	li t1, 1876499845
	li t3, 2
	lui t4, 1
	addiw a1, a1, -1
	mul a5, a4, t1
	srli t1, a5, 63
	srai t0, a5, 49
	add a5, t1, t0
	li t0, 300000
	mulw t1, a5, t0
	li t0, -2004318071
	subw a5, a4, t1
	mul t1, a5, t0
	srli t2, t1, 32
	add a4, t2, a5
	srliw t2, a4, 31
	sraiw t1, a4, 4
	add a4, t2, t1
	li t2, 1
	sh2add t1, a4, a0
	sw t2, 0(sp)
	li t2, 4
	sw t3, 4(sp)
	li t3, 8
	sw t2, 8(sp)
	li t2, 16
	sw t3, 12(sp)
	li t3, 32
	sw t2, 16(sp)
	li t2, 64
	sw t3, 20(sp)
	li t3, 128
	sw t2, 24(sp)
	li t2, 256
	sw t3, 28(sp)
	li t3, 512
	sw t2, 32(sp)
	li t2, 1024
	sw t3, 36(sp)
	slli t3, t2, 1
	sw t2, 40(sp)
	lui t2, 2
	sw t3, 44(sp)
	lui t3, 4
	sw t4, 48(sp)
	lui t4, 131072
	sw t2, 52(sp)
	lui t2, 8
	sw t3, 56(sp)
	lui t3, 16
	sw t2, 60(sp)
	lui t2, 32
	sw t3, 64(sp)
	lui t3, 64
	sw t2, 68(sp)
	lui t2, 128
	sw t3, 72(sp)
	lui t3, 256
	sw t2, 76(sp)
	lui t2, 512
	sw t3, 80(sp)
	lui t3, 1024
	sw t2, 84(sp)
	lui t2, 2048
	sw t3, 88(sp)
	lui t3, 4096
	sw t2, 92(sp)
	lui t2, 8192
	sw t3, 96(sp)
	lui t3, 16384
	sw t2, 100(sp)
	lui t2, 32768
	sw t3, 104(sp)
	lui t3, 65536
	sw t2, 108(sp)
	lui t2, 262144
	sw t3, 112(sp)
	sw t4, 116(sp)
	sw t2, 120(sp)
	mul t2, a5, t0
	lw t1, 0(t1)
	srli t3, t2, 32
	add t0, t3, a5
	srliw t3, t0, 31
	sraiw t2, t0, 4
	add t0, t3, t2
	li t2, 30
	mulw t3, t0, t2
	subw a5, a5, t3
	sh2add t2, a5, s0
	lw t0, 0(t2)
	divw a5, t1, t0
	srliw t2, a5, 31
	add t4, a5, t2
	andi t3, t4, -2
	subw t2, a5, t3
	beq a3, t2, label8
	j label6
label197:
	mv a3, a2
	j label3
label6:
	andi t2, a5, 1
	xori t3, a3, 1
	or t4, t2, t3
	sltiu t5, t4, 1
	li t4, -2147483647
	subw t3, zero, t5
	and t2, t0, t3
	and t3, a5, t4
	subw t0, t2, t0
	xori t5, t3, 1
	or a5, a3, t5
	mv a3, t0
	beq a5, zero, label191
	mv a3, t2
label191:
	addw a5, t1, a3
	sh2add a3, a4, a0
	sw a5, 0(a3)
	ble a1, zero, label9
	j label197
label8:
	sh2add a3, a4, a0
	sw t1, 0(a3)
	ble a1, zero, label9
	j label197
label9:
	li a0, 64
	jal _sysy_stoptime
	li a0, 10000
pcrel199:
	auipc a2, %pcrel_hi(a)
	addi a1, a2, %pcrel_lo(pcrel199)
	jal putarray
	ld ra, 128(sp)
	mv a0, zero
	ld s2, 136(sp)
	ld s1, 144(sp)
	ld s0, 152(sp)
	addi sp, sp, 160
	ret
