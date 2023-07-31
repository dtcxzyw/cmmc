.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
a:
	.zero	40000
.text
.globl main
main:
.p2align 2
	addi sp, sp, -32
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s2, 16(sp)
	sd s0, 24(sp)
	jal getint
	mv s1, a0
	jal getint
	mv s2, a0
	li a0, 56
	jal _sysy_starttime
pcrel144:
	auipc a1, %pcrel_hi(a)
	addi s0, a1, %pcrel_lo(pcrel144)
	ble s1, zero, label2
	mv a0, s2
	mv a1, s1
.p2align 2
label3:
	li a4, 19971231
	li a5, 1152921497
	mulw a2, a0, a4
	li a0, 19981013
	addw a3, a2, a0
	mul a2, a3, a5
	srli t2, a2, 63
	srai t0, a2, 60
	li a2, 1000000007
	add t1, t2, t0
	mulw t0, t1, a2
	subw t1, a3, t0
	mv a3, t1
	bge t1, zero, label129
	addw a3, t1, a2
.p2align 2
label129:
	mulw t0, a3, a4
	addw a0, t0, a0
	mul a4, a0, a5
	srli t1, a4, 63
	srai a5, a4, 60
	add t0, t1, a5
	mulw a5, t0, a2
	subw a4, a0, a5
	mv a0, a4
	bge a4, zero, label131
	addw a0, a4, a2
.p2align 2
label131:
	andi a2, a0, 1
	li t0, 1876499845
	li t1, 300000
	addiw a1, a1, -1
	mul a4, a3, t0
	srli t0, a4, 63
	srai a5, a4, 49
	add a4, t0, a5
	mulw t0, a4, t1
	subw a5, a3, t0
	li a3, -2004318071
	mul a4, a5, a3
	srli t0, a4, 32
	add a3, t0, a5
	srliw t1, a3, 31
	sraiw a4, a3, 4
	add a3, t1, a4
	slliw t2, a3, 4
	sh2add t0, a3, s0
	subw t1, t2, a3
	li t2, 1
	slli t3, t1, 1
	lw a4, 0(t0)
	slli t1, a4, 1
	subw t0, a5, t3
	sllw a5, t2, t0
	li t2, 64
	subw t3, t2, t0
	srl t1, t1, t3
	add t2, a4, t1
	sraw t0, t2, t0
	srliw t1, t0, 31
	add t2, t0, t1
	andi t3, t2, -2
	subw t1, t0, t3
	bne a2, t1, label7
	sh2add a2, a3, s0
	sw a4, 0(a2)
	bgt a1, zero, label3
label2:
	li a0, 64
	jal _sysy_stoptime
	mv a1, s0
	li a0, 10000
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
.p2align 2
label7:
	andi t1, t0, 1
	xori t3, a2, 1
	or t2, t1, t3
	mv t1, a5
	beq t2, zero, label133
	mv t1, zero
.p2align 2
label133:
	li t2, -2147483647
	and t3, t0, t2
	xori t4, t3, 1
	or t0, a2, t4
	mv a2, t1
	bne t0, zero, label135
	subw a2, t1, a5
.p2align 2
label135:
	addw a4, a4, a2
	sh2add a2, a3, s0
	sw a4, 0(a2)
	bgt a1, zero, label3
	j label2
