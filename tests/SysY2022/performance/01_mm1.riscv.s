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
pcrel588:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel588)
pcrel589:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel589)
	ble s0, zero, label94
	ble s0, zero, label8
	j label411
label94:
	mv s3, zero
	ble s0, zero, label11
	ble s0, zero, label84
	j label449
label11:
	li a0, 65
	jal _sysy_starttime
	mv a1, zero
pcrel590:
	auipc a0, %pcrel_hi(C)
	addi a0, a0, %pcrel_lo(pcrel590)
	mv a3, zero
	ble s0, zero, label118
	ble s0, zero, label17
	slliw a2, zero, 12
	mv a5, zero
	add a2, a0, a2
	addiw a4, zero, 4
	ble s0, a4, label129
	sh2add a5, zero, a2
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label129
	j label549
label118:
	mv a3, zero
	slliw a2, zero, 12
	add a2, s1, a2
	ble s0, zero, label147
	mv a4, zero
	ble s0, zero, label38
	slliw a5, zero, 12
	add a5, s2, a5
	sh2add a5, zero, a5
	lw a5, 0(a5)
	bne a5, zero, label30
	addiw a4, zero, 1
	ble s0, a4, label38
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, zero, a5
	lw a5, 0(a5)
	bne a5, zero, label30
label423:
	addiw a4, a4, 1
	ble s0, a4, label38
	j label495
label38:
	addiw a3, a3, 1
	slliw a2, a3, 12
	add a2, s1, a2
	ble s0, a3, label147
	mv a4, zero
	ble s0, zero, label38
	slliw a5, zero, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label30
	addiw a4, zero, 1
	ble s0, a4, label38
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label30
	j label423
label461:
	li t1, 4
	mv t3, zero
	j label34
label30:
	ble s0, zero, label37
	slliw t0, a4, 12
	li t1, 4
	add t0, a0, t0
	ble s0, t1, label169
	j label461
label169:
	mv t1, zero
label32:
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label37
	j label32
label37:
	addiw a4, a4, 1
	ble s0, a4, label38
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label30
	addiw a4, a4, 1
	ble s0, a4, label38
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label30
	addiw a4, a4, 1
	ble s0, a4, label38
	j label495
label34:
	sh2add t2, t3, t0
	sh2add t3, t3, a2
	lw t4, 0(t2)
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t3, a5, t3
	addw t3, t4, t3
	sw t3, 12(t2)
	addiw t2, t1, 4
	ble s0, t2, label32
	mv t3, t1
	mv t1, t2
	j label34
label495:
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label30
	addiw a4, a4, 1
	ble s0, a4, label38
	j label495
label147:
	mv a3, zero
	ble s0, zero, label220
	ble s0, zero, label42
	slliw a2, zero, 12
	mv a5, zero
	add a2, s1, a2
	addiw a4, zero, 4
	ble s0, a4, label231
label526:
	sh2add a5, a5, a2
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	j label44
label220:
	mv a3, zero
	slliw a2, zero, 12
	add a2, a0, a2
	ble s0, zero, label51
	mv a4, zero
	ble s0, zero, label79
	slliw a5, zero, 12
	add a5, s2, a5
	sh2add a5, zero, a5
	lw a5, 0(a5)
	bne a5, zero, label71
	addiw a4, zero, 1
	ble s0, a4, label79
	j label294
label44:
	addiw a4, a5, 4
	ble s0, a4, label231
	j label526
label231:
	mv a4, a5
label46:
	sh2add a5, a4, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label42
	j label46
label51:
	addiw a1, a1, 1
	li a2, 5
	bge a1, a2, label254
	mv a3, zero
	ble s0, zero, label118
	ble s0, zero, label17
	slliw a2, zero, 12
	mv a5, zero
	add a2, a0, a2
	addiw a4, zero, 4
	ble s0, a4, label129
	sh2add a5, zero, a2
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label129
	j label549
label254:
	mv s2, zero
	mv a0, zero
	ble s0, zero, label66
	ble s0, zero, label64
	slli a1, zero, 12
	mv a4, zero
	mv a3, zero
	add a1, s1, a1
	addiw a2, zero, 4
	ble s0, a2, label268
	j label60
label294:
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label71
label440:
	addiw a4, a4, 1
	ble s0, a4, label79
	j label514
label71:
	ble s0, zero, label72
	slliw t0, a4, 12
	li t1, 4
	add t0, s1, t0
	ble s0, t1, label314
	j label480
label314:
	mv t1, zero
	sh2add t2, zero, t0
	sh2add t4, zero, a2
	lw t3, 0(t2)
	addiw t1, zero, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label72
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label72
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label72
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label72
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label72
label77:
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label72
	j label77
label480:
	li t1, 4
	mv t3, zero
label74:
	sh2add t2, t3, t0
	sh2add t3, t3, a2
	lw t4, 0(t2)
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t3, a5, t3
	addw t3, t4, t3
	sw t3, 12(t2)
	addiw t2, t1, 4
	ble s0, t2, label77
	mv t3, t1
	mv t1, t2
	j label74
label514:
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label71
	addiw a4, a4, 1
	ble s0, a4, label79
	j label514
label79:
	addiw a3, a3, 1
	slliw a2, a3, 12
	add a2, a0, a2
	ble s0, a3, label51
	mv a4, zero
	ble s0, zero, label79
	slliw a5, zero, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label71
	addiw a4, zero, 1
	ble s0, a4, label79
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label71
	j label440
label549:
	sh2add a5, a5, a2
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label129
	j label549
label129:
	mv a4, a5
	sh2add a5, a5, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label17
	sh2add a5, a4, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label17
	sh2add a5, a4, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label17
	sh2add a5, a4, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label17
	sh2add a5, a4, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label17
label22:
	sh2add a5, a4, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label17
	j label22
label72:
	addiw a4, a4, 1
	ble s0, a4, label79
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label71
	addiw a4, a4, 1
	ble s0, a4, label79
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label71
	addiw a4, a4, 1
	ble s0, a4, label79
	j label514
label42:
	addiw a3, a3, 1
	ble s0, a3, label220
	ble s0, zero, label42
	slliw a2, a3, 12
	mv a5, zero
	add a2, s1, a2
	addiw a4, zero, 4
	ble s0, a4, label231
	sh2add a5, zero, a2
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label231
	j label526
label17:
	addiw a3, a3, 1
	ble s0, a3, label118
	ble s0, zero, label17
	slliw a2, a3, 12
	mv a5, zero
	add a2, a0, a2
	addiw a4, zero, 4
	ble s0, a4, label129
	sh2add a5, zero, a2
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label129
	j label549
label268:
	mv a2, a4
	sh2add a4, a4, a1
	addiw a2, a2, 1
	lw a4, 0(a4)
	addw a3, a3, a4
	ble s0, a2, label290
	sh2add a4, a2, a1
	addiw a2, a2, 1
	lw a4, 0(a4)
	addw a3, a3, a4
	ble s0, a2, label290
	sh2add a4, a2, a1
	addiw a2, a2, 1
	lw a4, 0(a4)
	addw a3, a3, a4
	ble s0, a2, label290
	sh2add a4, a2, a1
	addiw a2, a2, 1
	lw a4, 0(a4)
	addw a3, a3, a4
	ble s0, a2, label290
	sh2add a4, a2, a1
	addiw a2, a2, 1
	lw a4, 0(a4)
	addw a3, a3, a4
	ble s0, a2, label290
	j label61
label60:
	sh2add a4, a4, a1
	lw a5, 0(a4)
	addw a3, a3, a5
	lw a5, 4(a4)
	addw a3, a3, a5
	lw a5, 8(a4)
	lw a4, 12(a4)
	addw a3, a3, a5
	addw a3, a3, a4
	mv a4, a2
	addiw a2, a2, 4
	ble s0, a2, label268
	j label60
label61:
	sh2add a4, a2, a1
	addiw a2, a2, 1
	lw a4, 0(a4)
	addw a3, a3, a4
	ble s0, a2, label290
	j label61
label290:
	mv s2, a3
label64:
	addiw a0, a0, 1
	ble s0, a0, label66
	ble s0, zero, label64
	slli a1, a0, 12
	mv a4, zero
	mv a3, s2
	add a1, s1, a1
	addiw a2, zero, 4
	ble s0, a2, label268
	j label60
label411:
	slli a0, s4, 12
	mv s5, zero
	add s3, s2, a0
	j label6
label8:
	addiw s4, s4, 1
	ble s0, s4, label94
	ble s0, zero, label8
	j label411
label6:
	jal getint
	sh2add a1, s5, s3
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label8
	j label6
label84:
	addiw s3, s3, 1
	ble s0, s3, label11
	ble s0, zero, label84
label449:
	slli a0, s3, 12
	mv s5, zero
	add s4, s1, a0
label82:
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label84
	j label82
label66:
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
