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
	bgt s0, zero, label2
label9:
	li a0, 64
	jal _sysy_stoptime
	li a0, 10000
pcrel138:
	auipc a2, %pcrel_hi(a)
	addi a1, a2, %pcrel_lo(pcrel138)
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
label2:
	auipc a1, %pcrel_hi(a)
	mv a3, s1
	addi a0, a1, %pcrel_lo(label2)
	mv a1, s0
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
	blt t1, zero, label128
	mv a4, t1
label128:
	mulw t1, a4, a2
	addw a2, t1, a5
	mul a5, a2, t0
	srli t1, a5, 63
	srai t0, a5, 60
	add t2, t1, t0
	mulw t0, t2, a3
	subw a5, a2, t0
	addw a3, a5, a3
	mv a2, a3
	blt a5, zero, label130
	mv a2, a5
label130:
	andi a3, a2, 1
	li t1, 1876499845
	li t2, 300000
	li t3, 1
	addiw a1, a1, -1
	mul a5, a4, t1
	srli t1, a5, 63
	srai t0, a5, 49
	add a5, t1, t0
	mulw t1, a5, t2
	subw t0, a4, t1
	li a4, -2004318071
	mul a5, t0, a4
	srli t1, a5, 32
	add a4, t1, t0
	srliw t2, a4, 31
	sraiw a5, a4, 4
	add a4, t2, a5
	li t2, 30
	sh2add t1, a4, a0
	mulw t4, a4, t2
	lw a5, 0(t1)
	slli t2, a5, 1
	subw t1, t0, t4
	li t4, 64
	sllw t0, t3, t1
	subw t3, t4, t1
	srl t5, t2, t3
	add t2, a5, t5
	sraw t1, t2, t1
	srliw t5, t1, 31
	add t4, t1, t5
	andi t3, t4, -2
	subw t2, t1, t3
	bne a3, t2, label6
	sh2add a3, a4, a0
	sw a5, 0(a3)
	bgt a1, zero, label62
	j label9
label6:
	andi t2, t1, 1
	xori t3, a3, 1
	or t4, t2, t3
	sltiu t5, t4, 1
	subw t3, zero, t5
	li t5, -2147483647
	and t2, t0, t3
	and t3, t1, t5
	subw t0, t2, t0
	xori t4, t3, 1
	or t1, a3, t4
	mv a3, t0
	beq t1, zero, label132
	mv a3, t2
label132:
	addw a5, a5, a3
	sh2add a3, a4, a0
	sw a5, 0(a3)
	ble a1, zero, label9
label62:
	mv a3, a2
	j label3
