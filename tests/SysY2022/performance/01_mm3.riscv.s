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
pcrel831:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel831)
pcrel832:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel832)
pcrel833:
	auipc a0, %pcrel_hi(C)
	addi s3, a0, %pcrel_lo(pcrel833)
	ble s0, zero, label126
	ble s0, zero, label5
	slli a0, zero, 12
	mv s6, zero
	add s4, s2, a0
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	j label139
label126:
	mv s4, zero
	ble s0, zero, label16
	ble s0, zero, label12
	slli a0, zero, 12
	mv s6, zero
	add s5, s1, a0
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label12
	j label157
label16:
	li a0, 65
	jal _sysy_starttime
	mv a0, zero
	mv a2, zero
	ble s0, zero, label162
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label33
	j label652
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
	bne a4, zero, label98
	j label766
label211:
	mv a2, zero
	ble s0, zero, label215
	slliw a1, zero, 12
	add a1, s1, a1
	ble s0, zero, label82
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label85
	j label720
label215:
	mv a2, zero
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label40
	mv a3, zero
	ble s0, zero, label62
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label65
label721:
	addiw a3, a3, 1
	j label60
label40:
	addiw a0, a0, 1
	li a1, 5
	bge a0, a1, label226
	mv a2, zero
	ble s0, zero, label162
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label33
	j label652
label226:
	mv a0, zero
	mv s2, zero
	ble s0, zero, label44
	ble s0, zero, label58
	j label664
label44:
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
label58:
	addiw a0, a0, 1
	ble s0, a0, label44
	ble s0, zero, label58
	slli a1, a0, 12
	mv a4, s2
	mv a3, zero
	add a1, s1, a1
	addiw a2, zero, 4
	ble s0, a2, label50
	j label57
label60:
	ble s0, a3, label62
	j label284
label62:
	addiw a2, a2, 1
	slliw a1, a2, 12
	add a1, s3, a1
	ble s0, a2, label40
	mv a3, zero
	ble s0, zero, label62
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label65
	j label721
label766:
	addiw a3, a3, 1
	ble s0, a3, label96
	j label463
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
	bne a4, zero, label98
	j label766
label463:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label98
	j label689
label104:
	addiw t0, t2, 4
	ble s0, t0, label495
	j label106
label495:
	mv t0, t2
	sh2add t1, t2, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label114
	sh2add t1, t0, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label114
	sh2add t1, t0, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label114
	j label751
label106:
	sh2add t1, t2, a4
	lw t3, 0(t1)
	sh2add t2, t2, a1
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
	ble s0, t0, label495
	j label106
label114:
	addiw a3, a3, 1
	ble s0, a3, label96
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a3, a3, 1
	ble s0, a3, label96
	j label463
label751:
	sh2add t1, t0, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label114
	j label751
label689:
	addiw a3, a3, 1
	ble s0, a3, label96
	j label463
label284:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label65
	addiw a3, a3, 1
	ble s0, a3, label62
	j label284
label98:
	ble s0, zero, label114
	slliw a4, a3, 12
	li t0, 4
	add a4, s3, a4
	ble s0, t0, label482
	sh2add t0, a2, a5
	lw t0, 0(t0)
	mv t3, zero
	li t1, 4
	j label111
label109:
	sh2add t1, t2, a4
	lw t3, 0(t1)
	sh2add t2, t2, a1
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
	ble s0, t0, label104
	j label109
label111:
	sh2add t2, t3, a4
	lw t4, 0(t2)
	sh2add t3, t3, a1
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
	ble s0, t2, label594
	mv t3, t1
	mv t1, t2
	j label111
label594:
	mv t2, t1
	sh2add a5, a2, a5
	lw a5, 0(a5)
	addiw t0, t1, 4
	ble s0, t0, label104
	j label109
label482:
	mv t2, zero
	sh2add a5, a2, a5
	lw a5, 0(a5)
	addiw t0, zero, 4
	ble s0, t0, label104
	j label109
label24:
	addiw a3, a4, 4
	ble s0, a3, label177
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label177
	j label710
label177:
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label29
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label29
	j label711
label29:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label33
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label33
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label33
	j label714
label33:
	addiw a2, a2, 1
	ble s0, a2, label162
	slliw a1, a2, 12
	add a1, s3, a1
	ble s0, zero, label33
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label24
	j label706
label714:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label33
	j label714
label731:
	sh2add t0, a2, a5
	lw t0, 0(t0)
	mv t3, zero
	li t1, 4
	j label68
label65:
	ble s0, zero, label64
	slliw a4, a3, 12
	li t0, 4
	add a4, s1, a4
	ble s0, t0, label304
	j label731
label64:
	addiw a3, a3, 1
	ble s0, a3, label62
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label65
	addiw a3, a3, 1
	ble s0, a3, label62
	j label284
label736:
	sh2add t1, t0, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label64
	j label736
label68:
	sh2add t2, t3, a4
	lw t4, 0(t2)
	sh2add t3, t3, a1
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
	ble s0, t2, label71
	mv t3, t1
	mv t1, t2
	j label68
label71:
	sh2add a5, a2, a5
	lw a5, 0(a5)
	mv t2, t1
	addiw t0, t1, 4
	ble s0, t0, label76
	j label75
label76:
	addiw t0, t2, 4
	ble s0, t0, label378
	j label78
label378:
	mv t0, t2
	sh2add t1, t2, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label64
	sh2add t1, t0, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label64
	sh2add t1, t0, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label64
	j label736
label78:
	sh2add t1, t2, a4
	lw t3, 0(t1)
	sh2add t2, t2, a1
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
	ble s0, t0, label378
	j label78
label75:
	sh2add t1, t2, a4
	lw t3, 0(t1)
	sh2add t2, t2, a1
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
	ble s0, t0, label76
	j label75
label304:
	mv t1, zero
	sh2add a5, a2, a5
	lw a5, 0(a5)
	mv t2, zero
	addiw t0, zero, 4
	ble s0, t0, label76
	j label75
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
	j label740
label433:
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label89
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label89
	j label741
label89:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label82
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label82
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label82
label742:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label82
	j label742
label652:
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label24
label706:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label24
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label24
	j label709
label740:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label433
	j label740
label741:
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label89
	j label741
label720:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label85
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label85
	j label739
label82:
	addiw a2, a2, 1
	ble s0, a2, label215
	slliw a1, a2, 12
	add a1, s1, a1
	ble s0, zero, label82
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label85
	j label720
label739:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label85
	j label739
label710:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label177
	j label710
label711:
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label29
	j label711
label709:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label24
	j label709
label139:
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
label700:
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	j label700
label157:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label12
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label12
label704:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label12
	j label704
label664:
	slli a1, a0, 12
	mv a4, s2
	mv a3, zero
	add a1, s1, a1
	addiw a2, zero, 4
	ble s0, a2, label50
	j label57
label50:
	addiw a2, a3, 4
	ble s0, a2, label245
	j label53
label245:
	mv a2, a4
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addiw a3, a3, 1
	addw a2, a2, a4
	ble s0, a3, label267
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addiw a3, a3, 1
	addw a2, a2, a4
	ble s0, a3, label267
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addiw a3, a3, 1
	addw a2, a2, a4
	ble s0, a3, label267
	j label726
label53:
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
	ble s0, a2, label245
	j label53
label726:
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addiw a3, a3, 1
	addw a2, a2, a4
	ble s0, a3, label267
	j label726
label267:
	mv s2, a2
	addiw a0, a0, 1
	ble s0, a0, label44
	ble s0, zero, label58
	j label664
label57:
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
	ble s0, a2, label50
	j label57
label5:
	addiw s5, s5, 1
	ble s0, s5, label126
	ble s0, zero, label5
	slli a0, s5, 12
	mv s6, zero
	add s4, s2, a0
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
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
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label12
	j label157
