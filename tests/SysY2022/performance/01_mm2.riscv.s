.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
A:
	.zero	4194304
.align 4
B:
	.zero	4194304
.align 4
C:
	.zero	4194304
.text
.globl main
main:
	addi sp, sp, -56
	sd s0, 48(sp)
	sd s5, 40(sp)
	sd s2, 32(sp)
	sd s1, 24(sp)
	sd s4, 16(sp)
	sd s3, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s4, zero
	mv s0, a0
pcrel607:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel607)
pcrel608:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel608)
	ble s0, zero, label94
	ble s0, zero, label81
	j label411
label94:
	mv s3, zero
	ble s0, zero, label11
	ble s0, zero, label7
label412:
	slli a0, s3, 12
	mv s5, zero
	add s4, s1, a0
	j label9
label11:
	li a0, 65
	jal _sysy_starttime
pcrel609:
	auipc a1, %pcrel_hi(C)
	addi a0, a1, %pcrel_lo(pcrel609)
	mv a1, zero
	mv a2, zero
	ble s0, zero, label118
	ble s0, zero, label17
	slliw a4, zero, 12
	mv a5, zero
	add a3, a0, a4
	addiw a4, zero, 4
	ble s0, a4, label22
	sh2add a5, zero, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label22
	j label544
label118:
	mv a3, zero
	slliw a4, zero, 12
	add a2, s1, a4
	ble s0, zero, label147
	mv a4, zero
	ble s0, zero, label38
	slliw a5, zero, 12
	add t1, s2, a5
	sh2add t0, zero, t1
	lw a5, 0(t0)
	bne a5, zero, label30
	addiw a4, zero, 1
	ble s0, a4, label38
	slliw a5, a4, 12
	add t1, s2, a5
	sh2add t0, zero, t1
	lw a5, 0(t0)
	bne a5, zero, label30
	j label423
label38:
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s1, a4
	ble s0, a3, label147
	mv a4, zero
	ble s0, zero, label38
	slliw a5, zero, 12
	add t1, s2, a5
	sh2add t0, a3, t1
	lw a5, 0(t0)
	bne a5, zero, label30
	addiw a4, zero, 1
	ble s0, a4, label38
	slliw a5, a4, 12
	add t1, s2, a5
	sh2add t0, a3, t1
	lw a5, 0(t0)
	bne a5, zero, label30
	addiw a4, a4, 1
	ble s0, a4, label38
	j label489
label147:
	mv a2, zero
	ble s0, zero, label220
	ble s0, zero, label79
	slliw a4, zero, 12
	mv a5, zero
	add a3, s1, a4
	addiw a4, zero, 4
	ble s0, a4, label76
	sh2add a5, zero, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label76
	j label579
label489:
	slliw a5, a4, 12
	add t1, s2, a5
	sh2add t0, a3, t1
	lw a5, 0(t0)
	bne a5, zero, label30
label520:
	addiw a4, a4, 1
	ble s0, a4, label38
	j label551
label30:
	ble s0, zero, label37
	slliw t1, a4, 12
	li t2, 4
	add t0, a0, t1
	ble s0, t2, label169
	j label457
label220:
	mv a3, zero
	slliw a4, zero, 12
	add a2, a0, a4
	ble s0, zero, label43
	mv a4, zero
	ble s0, zero, label71
	slliw a5, zero, 12
	add t0, s2, a5
	sh2add t1, zero, t0
	lw a5, 0(t1)
	bne a5, zero, label62
	addiw a4, zero, 1
	ble s0, a4, label71
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, zero, t0
	lw a5, 0(t1)
	bne a5, zero, label62
	j label561
label71:
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	ble s0, a3, label43
	mv a4, zero
	ble s0, zero, label71
	slliw a5, zero, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label62
	addiw a4, zero, 1
	ble s0, a4, label71
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label62
	addiw a4, a4, 1
	ble s0, a4, label71
	j label504
label457:
	li t1, 4
	mv t3, zero
	j label34
label169:
	mv t1, zero
	j label32
label34:
	sh2add t2, t3, t0
	sh2add t3, t3, a2
	lw t4, 0(t2)
	lw a6, 0(t3)
	mulw t5, a5, a6
	addw t6, t4, t5
	sw t6, 0(t2)
	lw t4, 4(t2)
	lw t6, 4(t3)
	mulw a6, a5, t6
	addw t5, t4, a6
	sw t5, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t6, a5, t5
	addw a6, t4, t6
	sw a6, 8(t2)
	lw t4, 12(t2)
	lw t5, 12(t3)
	mulw t6, a5, t5
	addw t3, t4, t6
	sw t3, 12(t2)
	addiw t2, t1, 4
	ble s0, t2, label32
	mv t3, t1
	mv t1, t2
	j label34
label561:
	addiw a4, a4, 1
	ble s0, a4, label71
label504:
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label62
	j label533
label62:
	ble s0, zero, label63
	slliw t1, a4, 12
	li t2, 4
	add t0, s1, t1
	ble s0, t2, label290
	j label436
label290:
	mv t1, zero
label65:
	sh2add t2, t1, t0
	sh2add t5, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t5)
	mulw t6, a5, t4
	addw t3, t3, t6
	sw t3, 0(t2)
	ble s0, t1, label63
	j label65
label436:
	li t1, 4
	mv t3, zero
label67:
	sh2add t2, t3, t0
	sh2add t3, t3, a2
	lw t4, 0(t2)
	lw t5, 0(t3)
	mulw a6, a5, t5
	addw t6, t4, a6
	sw t6, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw a6, a5, t5
	addw t6, t4, a6
	sw t6, 4(t2)
	lw t4, 8(t2)
	lw a6, 8(t3)
	mulw t6, a5, a6
	addw t5, t4, t6
	sw t5, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t5, a5, t3
	addw t4, t4, t5
	sw t4, 12(t2)
	addiw t2, t1, 4
	ble s0, t2, label65
	mv t3, t1
	mv t1, t2
	j label67
label32:
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t6, 0(t4)
	mulw t5, a5, t6
	addw t3, t3, t5
	sw t3, 0(t2)
	ble s0, t1, label37
	j label32
label37:
	addiw a4, a4, 1
	ble s0, a4, label38
	slliw a5, a4, 12
	add t1, s2, a5
	sh2add t0, a3, t1
	lw a5, 0(t0)
	bne a5, zero, label30
	addiw a4, a4, 1
	ble s0, a4, label38
	slliw a5, a4, 12
	add t1, s2, a5
	sh2add t0, a3, t1
	lw a5, 0(t0)
	bne a5, zero, label30
	addiw a4, a4, 1
	ble s0, a4, label38
	slliw a5, a4, 12
	add t1, s2, a5
	sh2add t0, a3, t1
	lw a5, 0(t0)
	bne a5, zero, label30
	j label520
label533:
	addiw a4, a4, 1
	ble s0, a4, label71
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label62
	j label533
label551:
	slliw a5, a4, 12
	add t1, s2, a5
	sh2add t0, a3, t1
	lw a5, 0(t0)
	bne a5, zero, label30
	j label520
label423:
	addiw a4, a4, 1
	ble s0, a4, label38
	j label489
label63:
	addiw a4, a4, 1
	ble s0, a4, label71
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label62
	addiw a4, a4, 1
	ble s0, a4, label71
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label62
	addiw a4, a4, 1
	ble s0, a4, label71
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label62
	j label533
label579:
	sh2add a5, a5, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label76
	j label579
label544:
	sh2add a5, a5, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	j label19
label17:
	addiw a2, a2, 1
	ble s0, a2, label118
	ble s0, zero, label17
	slliw a4, a2, 12
	mv a5, zero
	add a3, a0, a4
	addiw a4, zero, 4
	ble s0, a4, label22
	sh2add a5, zero, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label22
	j label544
label19:
	addiw a4, a5, 4
	ble s0, a4, label22
	j label544
label76:
	sh2add a4, a5, a3
	addiw a5, a5, 1
	sw zero, 0(a4)
	ble s0, a5, label79
	j label76
label79:
	addiw a2, a2, 1
	ble s0, a2, label220
	ble s0, zero, label79
	slliw a4, a2, 12
	mv a5, zero
	add a3, s1, a4
	addiw a4, zero, 4
	ble s0, a4, label76
	sh2add a5, zero, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label76
	j label579
label43:
	addiw a1, a1, 1
	li a2, 5
	bge a1, a2, label231
	mv a2, zero
	ble s0, zero, label118
	ble s0, zero, label17
	slliw a4, zero, 12
	mv a5, zero
	add a3, a0, a4
	addiw a4, zero, 4
	ble s0, a4, label22
	sh2add a5, zero, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label22
	j label544
label231:
	mv s2, zero
	mv a0, zero
	ble s0, zero, label58
	ble s0, zero, label56
	slli a2, zero, 12
	mv a3, zero
	mv a4, zero
	add a1, s1, a2
	addiw a2, zero, 4
	ble s0, a2, label52
	j label55
label9:
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label7
	j label9
label22:
	sh2add a4, a5, a3
	addiw a5, a5, 1
	sw zero, 0(a4)
	ble s0, a5, label17
	j label22
label55:
	sh2add a3, a3, a1
	lw t1, 0(a3)
	lw t0, 4(a3)
	addw a5, a4, t1
	lw t1, 8(a3)
	addw a4, a5, t0
	lw t0, 12(a3)
	addw a5, a4, t1
	mv a3, a2
	addw a4, a5, t0
	addiw a2, a2, 4
	ble s0, a2, label52
	j label55
label52:
	sh2add a5, a3, a1
	addiw a3, a3, 1
	lw a2, 0(a5)
	addw a4, a4, a2
	ble s0, a3, label254
	j label52
label254:
	mv s2, a4
	addiw a0, a0, 1
	ble s0, a0, label58
	ble s0, zero, label56
	slli a2, a0, 12
	mv a3, zero
	add a1, s1, a2
	addiw a2, zero, 4
	ble s0, a2, label52
	j label55
label56:
	addiw a0, a0, 1
	ble s0, a0, label58
	ble s0, zero, label56
	slli a2, a0, 12
	mv a3, zero
	mv a4, s2
	add a1, s1, a2
	addiw a2, zero, 4
	ble s0, a2, label52
	j label55
label81:
	addiw s4, s4, 1
	ble s0, s4, label94
	ble s0, zero, label81
	j label411
label7:
	addiw s3, s3, 1
	ble s0, s3, label11
	ble s0, zero, label7
	j label412
label411:
	slli a0, s4, 12
	mv s5, zero
	add s3, s2, a0
label83:
	jal getint
	sh2add a1, s5, s3
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label81
	j label83
label58:
	li a0, 84
	jal _sysy_stoptime
	mv a0, s2
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s3, 8(sp)
	ld s4, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	ld s5, 40(sp)
	ld s0, 48(sp)
	addi sp, sp, 56
	ret
