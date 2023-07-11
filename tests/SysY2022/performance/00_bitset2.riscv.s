.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
a:
	.zero	40000
.text
.globl main
main:
	addi sp, sp, -24
	sd s0, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s1, a0
	li a0, 56
	jal _sysy_starttime
	ble s0, zero, label9
pcrel133:
	auipc a1, %pcrel_hi(a)
	mv a3, s1
	addi a0, a1, %pcrel_lo(pcrel133)
	mv a1, s0
label3:
	li a2, 19971231
	li a5, 19981013
	li t0, 1152921497
	mulw a3, a3, a2
	addw a4, a3, a5
	mul a3, a4, t0
	srli t3, a3, 63
	srai t2, a3, 60
	li a3, 1000000007
	add t1, t3, t2
	mulw t3, t1, a3
	subw t1, a4, t3
	addw t2, t1, a3
	mv a4, t2
	blt t1, zero, label123
	mv a4, t1
label123:
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
	blt a5, zero, label125
	mv a2, a5
label125:
	andi a3, a2, 1
	li t1, 1876499845
	li t3, 300000
	addiw a1, a1, -1
	mul a5, a4, t1
	srli t1, a5, 63
	srai t0, a5, 49
	add a5, t1, t0
	li t1, -2004318071
	mulw t2, a5, t3
	subw t0, a4, t2
	mul a5, t0, t1
	srli t2, a5, 32
	add a4, t2, t0
	srliw t3, a4, 31
	sraiw a5, a4, 4
	add a4, t3, a5
	mul t3, t0, t1
	sh2add t2, a4, a0
	srli t4, t3, 32
	add t1, t4, t0
	srliw t3, t1, 31
	lw a5, 0(t2)
	sraiw t2, t1, 4
	add t1, t3, t2
	li t2, 30
	mulw t3, t1, t2
	li t2, 1
	subw t0, t0, t3
	sllw t1, t2, t0
	divw t0, a5, t1
	srliw t2, t0, 31
	add t4, t0, t2
	andi t3, t4, -2
	subw t2, t0, t3
	beq a3, t2, label8
	j label6
label132:
	mv a3, a2
	j label3
label6:
	andi t2, t0, 1
	xori t3, a3, 1
	or t4, t2, t3
	sltiu t5, t4, 1
	subw t3, zero, t5
	li t5, -2147483647
	and t2, t1, t3
	and t3, t0, t5
	subw t1, t2, t1
	xori t4, t3, 1
	or t0, a3, t4
	mv a3, t1
	beq t0, zero, label127
	mv a3, t2
label127:
	addw a5, a5, a3
	sh2add a3, a4, a0
	sw a5, 0(a3)
	ble a1, zero, label9
	j label132
label8:
	sh2add a3, a4, a0
	sw a5, 0(a3)
	ble a1, zero, label9
	j label132
label9:
	li a0, 64
	jal _sysy_stoptime
	li a0, 10000
pcrel134:
	auipc a2, %pcrel_hi(a)
	addi a1, a2, %pcrel_lo(pcrel134)
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
