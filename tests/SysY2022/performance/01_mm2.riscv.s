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
	addi sp, sp, -64
	sd s0, 56(sp)
	sd s5, 48(sp)
	sd s2, 40(sp)
	sd s1, 32(sp)
	sd s6, 24(sp)
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s5, zero
	mv s0, a0
pcrel835:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel835)
pcrel836:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel836)
pcrel837:
	auipc a0, %pcrel_hi(C)
	addi s3, a0, %pcrel_lo(pcrel837)
	ble s0, zero, label126
	ble s0, zero, label5
	slli a0, zero, 12
	mv s6, zero
	add s4, s2, a0
	jal getint
	sh2add a1, s6, s4
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label5
	j label139
label126:
	mv s4, zero
	ble s0, zero, label16
	ble s0, zero, label12
	j label703
label139:
	jal getint
	sh2add a1, s6, s4
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label5
	j label646
label157:
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label12
	j label650
label16:
	li a0, 65
	jal _sysy_starttime
	mv a0, zero
	mv a2, zero
	ble s0, zero, label162
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label22
label652:
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label25
	j label712
label162:
	mv a2, zero
	slliw a1, zero, 12
	add a1, s1, a1
	ble s0, zero, label211
	mv a3, zero
	ble s0, zero, label96
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label99
	j label771
label211:
	mv a2, zero
	ble s0, zero, label215
	slliw a1, zero, 12
	add a1, s1, a1
	ble s0, zero, label82
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label85
label724:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	j label83
label215:
	mv a2, zero
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label61
	mv a3, zero
	ble s0, zero, label42
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label45
label725:
	addiw a3, a3, 1
	ble s0, a3, label42
	j label224
label42:
	addiw a2, a2, 1
	slliw a1, a2, 12
	add a1, s3, a1
	ble s0, a2, label61
	mv a3, zero
	ble s0, zero, label42
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label45
	j label725
label45:
	ble s0, zero, label44
	slliw a4, a3, 12
	li t0, 4
	add a4, s1, a4
	ble s0, t0, label244
	j label728
label244:
	mv t1, zero
	sh2add a5, a2, a5
	mv t2, zero
	lw a5, 0(a5)
	addiw t0, zero, 4
	ble s0, t0, label56
label55:
	sh2add t1, t2, a4
	sh2add t2, t2, a1
	lw t3, 0(t1)
	lw t4, 0(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t1)
	lw t3, 4(t1)
	lw t4, 4(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 4(t1)
	lw t3, 8(t1)
	lw t4, 8(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 8(t1)
	lw t3, 12(t1)
	lw t2, 12(t2)
	mulw t2, a5, t2
	addw t2, t3, t2
	sw t2, 12(t1)
	mv t2, t0
	addiw t0, t0, 4
	ble s0, t0, label56
	j label55
label61:
	addiw a0, a0, 1
	li a1, 5
	bge a0, a1, label362
	mv a2, zero
	ble s0, zero, label162
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label22
	j label652
label362:
	mv a0, zero
	mv s2, zero
	ble s0, zero, label80
	ble s0, zero, label78
	j label678
label80:
	li a0, 84
	jal _sysy_stoptime
	mv a0, s2
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s6, 24(sp)
	ld s1, 32(sp)
	ld s2, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
label83:
	addiw a3, a4, 4
	ble s0, a3, label85
	j label427
label96:
	addiw a2, a2, 1
	slliw a1, a2, 12
	add a1, s1, a1
	ble s0, a2, label211
	mv a3, zero
	ble s0, zero, label96
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label99
	j label771
label51:
	sh2add a5, a2, a5
	mv t2, t1
	lw a5, 0(a5)
	addiw t0, t1, 4
	ble s0, t0, label56
	j label55
label56:
	addiw t0, t2, 4
	ble s0, t0, label318
	j label58
label318:
	mv t0, t2
	sh2add t1, t2, a4
	sh2add t3, t2, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label44
	sh2add t1, t0, a4
	sh2add t3, t0, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label44
	sh2add t1, t0, a4
	sh2add t3, t0, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label44
label733:
	sh2add t1, t0, a4
	sh2add t3, t0, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label44
	j label733
label44:
	addiw a3, a3, 1
	ble s0, a3, label42
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label45
	addiw a3, a3, 1
	ble s0, a3, label42
	j label224
label58:
	sh2add t1, t2, a4
	sh2add t2, t2, a1
	lw t3, 0(t1)
	lw t4, 0(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t1)
	lw t3, 4(t1)
	lw t4, 4(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 4(t1)
	lw t3, 8(t1)
	lw t4, 8(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 8(t1)
	lw t3, 12(t1)
	lw t2, 12(t2)
	mulw t2, a5, t2
	addw t2, t3, t2
	sw t2, 12(t1)
	mv t2, t0
	addiw t0, t0, 4
	ble s0, t0, label318
	j label58
label771:
	addiw a3, a3, 1
	ble s0, a3, label96
label463:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label99
	j label692
label99:
	ble s0, zero, label98
	slliw a4, a3, 12
	li t0, 4
	add a4, s3, a4
	ble s0, t0, label483
	j label753
label98:
	addiw a3, a3, 1
	ble s0, a3, label96
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label99
	addiw a3, a3, 1
	ble s0, a3, label96
	j label463
label105:
	addiw t0, t2, 4
	ble s0, t0, label496
	j label107
label496:
	mv t0, t2
	sh2add t1, t2, a4
	sh2add t3, t2, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label98
	sh2add t1, t0, a4
	sh2add t3, t0, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label98
	sh2add t1, t0, a4
	sh2add t3, t0, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label98
	j label757
label107:
	sh2add t1, t2, a4
	sh2add t2, t2, a1
	lw t3, 0(t1)
	lw t4, 0(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t1)
	lw t3, 4(t1)
	lw t4, 4(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 4(t1)
	lw t3, 8(t1)
	lw t4, 8(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 8(t1)
	lw t3, 12(t1)
	lw t2, 12(t2)
	mulw t2, a5, t2
	addw t2, t3, t2
	sw t2, 12(t1)
	mv t2, t0
	addiw t0, t0, 4
	ble s0, t0, label496
	j label107
label757:
	sh2add t1, t0, a4
	sh2add t3, t0, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label98
	j label757
label753:
	sh2add t0, a2, a5
	li t1, 4
	mv t3, zero
	lw t0, 0(t0)
	j label112
label483:
	mv t2, zero
	sh2add a5, a2, a5
	lw a5, 0(a5)
	addiw t0, zero, 4
	ble s0, t0, label105
label110:
	sh2add t1, t2, a4
	sh2add t2, t2, a1
	lw t3, 0(t1)
	lw t4, 0(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t1)
	lw t3, 4(t1)
	lw t4, 4(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 4(t1)
	lw t3, 8(t1)
	lw t4, 8(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 8(t1)
	lw t3, 12(t1)
	lw t2, 12(t2)
	mulw t2, a5, t2
	addw t2, t3, t2
	sw t2, 12(t1)
	mv t2, t0
	addiw t0, t0, 4
	ble s0, t0, label105
	j label110
label112:
	sh2add t2, t3, a4
	sh2add t3, t3, a1
	lw t4, 0(t2)
	lw t5, 0(t3)
	mulw t5, t0, t5
	addw t4, t4, t5
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, t0, t5
	addw t4, t4, t5
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, t0, t5
	addw t4, t4, t5
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t3, t0, t3
	addw t3, t4, t3
	sw t3, 12(t2)
	addiw t2, t1, 4
	ble s0, t2, label595
	mv t3, t1
	mv t1, t2
	j label112
label595:
	mv t2, t1
	sh2add a5, a2, a5
	lw a5, 0(a5)
	addiw t0, t1, 4
	ble s0, t0, label105
	j label110
label692:
	addiw a3, a3, 1
	ble s0, a3, label96
	j label463
label224:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label45
	addiw a3, a3, 1
	ble s0, a3, label42
	j label224
label85:
	addiw a3, a4, 4
	ble s0, a3, label433
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label433
	j label743
label433:
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label90
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label90
	j label744
label90:
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label82
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label82
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label82
label747:
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label82
	j label747
label728:
	sh2add t0, a2, a5
	li t1, 4
	mv t3, zero
	lw t0, 0(t0)
label48:
	sh2add t2, t3, a4
	sh2add t3, t3, a1
	lw t4, 0(t2)
	lw t5, 0(t3)
	mulw t5, t0, t5
	addw t4, t4, t5
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, t0, t5
	addw t4, t4, t5
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, t0, t5
	addw t4, t4, t5
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t3, t0, t3
	addw t3, t4, t3
	sw t3, 12(t2)
	addiw t2, t1, 4
	ble s0, t2, label51
	mv t3, t1
	mv t1, t2
	j label48
label25:
	addiw a3, a4, 4
	ble s0, a3, label178
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label178
	j label716
label178:
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label30
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label30
	j label187
label30:
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label22
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label22
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label22
label719:
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label22
	j label719
label743:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label433
	j label743
label744:
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label90
	j label744
label427:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label85
label742:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label85
	j label742
label82:
	addiw a2, a2, 1
	ble s0, a2, label215
	slliw a1, a2, 12
	add a1, s1, a1
	ble s0, zero, label82
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label85
	j label724
label187:
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label30
	j label718
label712:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label25
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label25
label715:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label25
	j label715
label718:
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label30
	j label718
label716:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label178
	j label716
label22:
	addiw a2, a2, 1
	ble s0, a2, label162
	slliw a1, a2, 12
	add a1, s3, a1
	ble s0, zero, label22
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label25
	j label712
label646:
	jal getint
	sh2add a1, s6, s4
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label5
label706:
	jal getint
	sh2add a1, s6, s4
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label5
	j label706
label650:
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label12
label710:
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label12
	j label710
label678:
	slli a1, a0, 12
	mv a4, s2
	mv a3, zero
	add a1, s1, a1
	addiw a2, zero, 4
	ble s0, a2, label71
label70:
	sh2add a3, a3, a1
	lw a5, 0(a3)
	addw a4, a4, a5
	lw a5, 4(a3)
	addw a4, a4, a5
	lw a5, 8(a3)
	lw a3, 12(a3)
	addw a4, a4, a5
	addw a4, a4, a3
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label71
	j label70
label394:
	mv a2, a4
	sh2add a4, a3, a1
	addiw a3, a3, 1
	lw a4, 0(a4)
	addw a2, a2, a4
	ble s0, a3, label403
	sh2add a4, a3, a1
	addiw a3, a3, 1
	lw a4, 0(a4)
	addw a2, a2, a4
	ble s0, a3, label403
	sh2add a4, a3, a1
	addiw a3, a3, 1
	lw a4, 0(a4)
	addw a2, a2, a4
	ble s0, a3, label403
	j label738
label403:
	mv s2, a2
	addiw a0, a0, 1
	ble s0, a0, label80
	ble s0, zero, label78
	j label678
label78:
	addiw a0, a0, 1
	ble s0, a0, label80
	ble s0, zero, label78
	slli a1, a0, 12
	mv a4, s2
	mv a3, zero
	add a1, s1, a1
	addiw a2, zero, 4
	ble s0, a2, label71
	j label70
label738:
	sh2add a4, a3, a1
	addiw a3, a3, 1
	lw a4, 0(a4)
	addw a2, a2, a4
	ble s0, a3, label403
	j label738
label71:
	addiw a2, a3, 4
	ble s0, a2, label394
label77:
	sh2add a3, a3, a1
	lw a5, 0(a3)
	addw a4, a4, a5
	lw a5, 4(a3)
	addw a4, a4, a5
	lw a5, 8(a3)
	lw a3, 12(a3)
	addw a4, a4, a5
	addw a4, a4, a3
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label394
	j label77
label5:
	addiw s5, s5, 1
	ble s0, s5, label126
	ble s0, zero, label5
	slli a0, s5, 12
	mv s6, zero
	add s4, s2, a0
	jal getint
	sh2add a1, s6, s4
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label5
	j label139
label12:
	addiw s4, s4, 1
	ble s0, s4, label16
	ble s0, zero, label12
	slli a0, s4, 12
	mv s6, zero
	add s5, s1, a0
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label12
	j label157
label703:
	slli a0, s4, 12
	mv s6, zero
	add s5, s1, a0
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label12
	j label157
