.data
.align 4
a:
	.zero	40000
.section .rodata
.bss
.text
.globl main
main:
	addi sp, sp, -168
	sd s3, 160(sp)
	sd s1, 152(sp)
	sd s2, 144(sp)
	sd s0, 136(sp)
	sd ra, 128(sp)
	addi s3, sp, 0
	jal getint
	mv s1, a0
	jal getint
	mv s2, a0
	li a0, 56
	jal _sysy_starttime
pcrel228:
	auipc a0, %pcrel_hi(a)
	addi s0, a0, %pcrel_lo(pcrel228)
	ble s1, zero, label2
	mv a1, s2
	mv a0, s1
label3:
	li a2, 19971231
	mulw a1, a1, a2
	li a2, 19981013
	addw a1, a1, a2
	li a2, 1152921497
	mul a2, a1, a2
	srai a3, a2, 60
	srli a2, a2, 63
	add a2, a2, a3
	li a3, 1000000007
	mulw a2, a2, a3
	subw a1, a1, a2
	addiw a2, a0, -1
	bge a1, zero, label35
	j label34
label35:
	mv a0, a1
label6:
	li a1, 19971231
	mulw a1, a0, a1
	li a3, 19981013
	addw a1, a1, a3
	li a3, 1152921497
	mul a3, a1, a3
	srai a4, a3, 60
	srli a3, a3, 63
	add a3, a3, a4
	li a4, 1000000007
	mulw a3, a3, a4
	subw a1, a1, a3
	li a3, 1876499845
	mul a3, a0, a3
	srai a4, a3, 49
	srli a3, a3, 63
	add a3, a3, a4
	li a4, 300000
	mulw a3, a3, a4
	subw a4, a0, a3
	bge a1, zero, label43
	j label42
label43:
	mv a0, a1
label9:
	li a1, -2004318071
	mul a1, a4, a1
	srli a1, a1, 32
	add a3, a1, a4
	sraiw a1, a3, 4
	srliw a3, a3, 31
	add a3, a3, a1
	li a1, 1
	sw a1, 0(sp)
	li a1, 2
	sw a1, 4(s3)
	li a1, 4
	sw a1, 8(s3)
	li a1, 8
	sw a1, 12(s3)
	li a1, 16
	sw a1, 16(s3)
	li a1, 32
	sw a1, 20(s3)
	li a1, 64
	sw a1, 24(s3)
	li a1, 128
	sw a1, 28(s3)
	li a1, 256
	sw a1, 32(s3)
	li a1, 512
	sw a1, 36(s3)
	li a1, 1024
	sw a1, 40(s3)
	li a1, 2048
	sw a1, 44(s3)
	li a1, 4096
	sw a1, 48(s3)
	li a1, 8192
	sw a1, 52(s3)
	li a1, 16384
	sw a1, 56(s3)
	li a1, 32768
	sw a1, 60(s3)
	li a1, 65536
	sw a1, 64(s3)
	li a1, 131072
	sw a1, 68(s3)
	li a1, 262144
	sw a1, 72(s3)
	li a1, 524288
	sw a1, 76(s3)
	li a1, 1048576
	sw a1, 80(s3)
	li a1, 2097152
	sw a1, 84(s3)
	li a1, 4194304
	sw a1, 88(s3)
	li a1, 8388608
	sw a1, 92(s3)
	li a1, 16777216
	sw a1, 96(s3)
	li a1, 33554432
	sw a1, 100(s3)
	li a1, 67108864
	sw a1, 104(s3)
	li a1, 134217728
	sw a1, 108(s3)
	li a1, 268435456
	sw a1, 112(s3)
	li a1, 536870912
	sw a1, 116(s3)
	li a1, 1073741824
	sw a1, 120(s3)
	li a1, 9999
	ble a3, a1, label12
	ble a2, zero, label2
label220:
	mv a1, a0
	mv a0, a2
	j label3
label12:
	slliw a1, a3, 2
	add a1, s0, a1
	lw a1, 0(a1)
	li a5, -2004318071
	mul a5, a4, a5
	srli a5, a5, 32
	add t1, a5, a4
	sraiw a5, t1, 4
	srliw t1, t1, 31
	add a5, t1, a5
	li t1, 30
	mulw a5, a5, t1
	subw a4, a4, a5
	slli a5, a4, 2
	add a5, s3, a5
	lw a5, 0(a5)
	divw t1, a1, a5
	srliw t2, t1, 31
	add t2, t1, t2
	sraiw t3, t2, 1
	li t2, 2
	mulw t3, t3, t2
	subw t1, t1, t3
	srliw t3, a0, 31
	add t3, a0, t3
	sraiw t3, t3, 1
	mulw t2, t3, t2
	subw t2, a0, t2
	beq t1, t2, label17
	sltiu a1, t1, 1
	xori t3, t2, 1
	sltiu t3, t3, 1
	and a1, a1, t3
	subw a1, zero, a1
	and a1, a5, a1
	xori a5, t1, 1
	sltiu a5, a5, 1
	sltiu t1, t2, 1
	and a5, a5, t1
	beq a5, zero, label15
	slli a4, a4, 2
	add a4, s3, a4
	lw a4, 0(a4)
	subw a1, a1, a4
	slliw a3, a3, 2
	add a3, s0, a3
	lw a4, 0(a3)
	addw a1, a1, a4
	sw a1, 0(a3)
	ble a2, zero, label2
	j label220
label15:
	slliw a3, a3, 2
	add a3, s0, a3
	lw a4, 0(a3)
	addw a1, a1, a4
	sw a1, 0(a3)
	ble a2, zero, label2
	j label220
label17:
	slliw a3, a3, 2
	add a3, s0, a3
	sw a1, 0(a3)
	ble a2, zero, label2
	j label220
label34:
	li a0, 1000000007
	addw a0, a1, a0
	j label6
label42:
	li a0, 1000000007
	addw a0, a1, a0
	j label9
label2:
	li a0, 64
	jal _sysy_stoptime
	li a0, 10000
	mv a1, s0
	jal putarray
	mv a0, zero
	ld ra, 128(sp)
	ld s0, 136(sp)
	ld s2, 144(sp)
	ld s1, 152(sp)
	ld s3, 160(sp)
	addi sp, sp, 168
	ret
