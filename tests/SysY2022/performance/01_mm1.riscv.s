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
.p2align 2
	addi sp, sp, -56
	sd s0, 48(sp)
	sd s5, 40(sp)
	sd s2, 32(sp)
	sd s1, 24(sp)
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s3, zero
	mv s0, a0
pcrel618:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel618)
pcrel619:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel619)
	ble s0, zero, label16
.p2align 2
label4:
	bgt s0, zero, label5
	addiw s3, s3, 1
	bgt s0, s3, label4
	mv s3, zero
	j label16
.p2align 2
label6:
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	bgt s0, s5, label6
	addiw s3, s3, 1
	bgt s0, s3, label4
	mv s3, zero
	ble s0, zero, label16
.p2align 2
label11:
	bgt s0, zero, label12
	addiw s3, s3, 1
	bgt s0, s3, label11
	j label16
.p2align 2
label13:
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	bgt s0, s5, label13
	addiw s3, s3, 1
	bgt s0, s3, label11
	j label16
.p2align 2
label5:
	slli a0, s3, 12
	mv s5, zero
	add s4, s2, a0
	j label6
label16:
	li a0, 65
	jal _sysy_starttime
pcrel620:
	auipc a1, %pcrel_hi(C)
	addi a0, a1, %pcrel_lo(pcrel620)
	mv a1, zero
label17:
	mv a2, zero
	bgt s0, zero, label21
	mv a3, zero
	mv a4, zero
	mv a2, s1
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
label550:
	mv s2, zero
	mv a1, zero
	bgt s0, zero, label56
	j label66
label263:
	mv a4, zero
	bgt s0, zero, label70
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	bgt s0, a3, label263
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label550
.p2align 2
label70:
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	beq a5, zero, label71
	bgt s0, zero, label73
	addiw a4, a4, 1
	bgt s0, a4, label70
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	bgt s0, a3, label263
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label550
.p2align 2
label71:
	addiw a4, a4, 1
	bgt s0, a4, label70
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	bgt s0, a3, label263
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label550
.p2align 2
label73:
	slliw t2, a4, 12
	li t1, 4
	add t0, s1, t2
	bgt s0, t1, label332
	mv t2, zero
	mv t3, t0
	mv t5, a2
	lw t1, 0(t0)
	li t2, 1
	lw t6, 0(a2)
	mulw t4, a5, t6
	addw t1, t1, t4
	sw t1, 0(t0)
	bgt s0, t2, label76
	addiw a4, a4, 1
	bgt s0, a4, label70
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	bgt s0, a3, label263
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label550
.p2align 2
label332:
	mv t1, zero
.p2align 2
label74:
	sh2add t2, t1, t0
	sh2add t3, t1, a2
	lw t4, 0(t2)
	lw t5, 0(t3)
	mulw a6, a5, t5
	addw t6, t4, a6
	sw t6, 0(t2)
	lw t4, 4(t2)
	lw t6, 4(t3)
	mulw a6, a5, t6
	addw t5, t4, a6
	sw t5, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw a6, a5, t5
	addw t6, t4, a6
	sw t6, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t5, a5, t3
	addw t4, t4, t5
	sw t4, 12(t2)
	addiw t2, t1, 8
	addiw t1, t1, 4
	bgt s0, t2, label74
	mv t2, t1
	sh2add t3, t1, t0
	sh2add t5, t1, a2
	lw t1, 0(t3)
	addiw t2, t2, 1
	lw t6, 0(t5)
	mulw t4, a5, t6
	addw t1, t1, t4
	sw t1, 0(t3)
	bgt s0, t2, label76
	addiw a4, a4, 1
	bgt s0, a4, label70
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	bgt s0, a3, label263
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label550
.p2align 2
label76:
	sh2add t3, t2, t0
	sh2add t5, t2, a2
	lw t1, 0(t3)
	addiw t2, t2, 1
	lw t6, 0(t5)
	mulw t4, a5, t6
	addw t1, t1, t4
	sw t1, 0(t3)
	bgt s0, t2, label76
	addiw a4, a4, 1
	bgt s0, a4, label70
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	bgt s0, a3, label263
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label550
.p2align 2
label158:
	mv a4, zero
	bgt s0, zero, label33
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s1, a4
	bgt s0, a3, label158
	mv a3, zero
	mv a4, zero
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label550
.p2align 2
label33:
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	beq a5, zero, label34
	bgt s0, zero, label36
	addiw a4, a4, 1
	bgt s0, a4, label33
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s1, a4
	bgt s0, a3, label158
	mv a3, zero
	mv a4, zero
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label550
.p2align 2
label34:
	addiw a4, a4, 1
	bgt s0, a4, label33
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s1, a4
	bgt s0, a3, label158
	mv a3, zero
	bgt s0, zero, label43
	mv a4, zero
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label550
.p2align 2
label37:
	sh2add t2, t1, t0
	sh2add t3, t1, a2
	lw t4, 0(t2)
	lw t6, 0(t3)
	mulw t5, a5, t6
	addw a6, t4, t5
	sw a6, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t6, a5, t5
	addw a6, t4, t6
	sw a6, 4(t2)
	lw t4, 8(t2)
	lw t6, 8(t3)
	mulw a6, a5, t6
	addw t5, t4, a6
	sw t5, 8(t2)
	lw t4, 12(t2)
	lw t6, 12(t3)
	mulw t5, a5, t6
	addw t3, t4, t5
	sw t3, 12(t2)
	addiw t2, t1, 8
	addiw t1, t1, 4
	bgt s0, t2, label37
	mv t2, t1
	sh2add t3, t1, t0
	sh2add t6, t1, a2
	lw t1, 0(t3)
	addiw t2, t2, 1
	lw t5, 0(t6)
	mulw t4, a5, t5
	addw t1, t1, t4
	sw t1, 0(t3)
	bgt s0, t2, label39
	addiw a4, a4, 1
	bgt s0, a4, label33
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s1, a4
	bgt s0, a3, label158
	mv a3, zero
	bgt s0, zero, label43
	mv a4, zero
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label550
.p2align 2
label36:
	slliw t1, a4, 12
	li t3, 4
	add t0, a0, t1
	bgt s0, t3, label181
	mv t2, zero
	mv t3, t0
	mv t6, a2
	lw t1, 0(t0)
	li t2, 1
	lw t5, 0(a2)
	mulw t4, a5, t5
	addw t1, t1, t4
	sw t1, 0(t0)
	bgt s0, t2, label39
	addiw a4, a4, 1
	bgt s0, a4, label33
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s1, a4
	bgt s0, a3, label158
	mv a3, zero
	bgt s0, zero, label43
	mv a4, zero
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label550
.p2align 2
label181:
	mv t1, zero
	j label37
.p2align 2
label39:
	sh2add t3, t2, t0
	sh2add t6, t2, a2
	lw t1, 0(t3)
	addiw t2, t2, 1
	lw t5, 0(t6)
	mulw t4, a5, t5
	addw t1, t1, t4
	sw t1, 0(t3)
	bgt s0, t2, label39
	addiw a4, a4, 1
	bgt s0, a4, label33
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s1, a4
	bgt s0, a3, label158
	mv a3, zero
	bgt s0, zero, label43
	mv a4, zero
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label550
.p2align 2
label43:
	bgt s0, zero, label44
	addiw a3, a3, 1
	bgt s0, a3, label43
	mv a3, zero
	mv a4, zero
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label550
.p2align 2
label21:
	bgt s0, zero, label22
	addiw a2, a2, 1
	bgt s0, a2, label21
	mv a3, zero
	mv a4, zero
	mv a2, s1
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label550
.p2align 2
label22:
	slliw a4, a2, 12
	li t0, 4
	add a3, a0, a4
	bgt s0, t0, label133
	mv a5, zero
	mv t0, a3
	li a5, 1
	sw zero, 0(a3)
	bgt s0, a5, label25
	addiw a2, a2, 1
	bgt s0, a2, label21
	mv a3, zero
	mv a4, zero
	mv a2, s1
	bgt s0, zero, label158
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label550
.p2align 2
label133:
	mv a4, zero
.p2align 2
label23:
	sh2add a5, a4, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	addiw a5, a4, 8
	addiw a4, a4, 4
	bgt s0, a5, label23
	mv a5, a4
	sh2add t0, a4, a3
	addiw a5, a4, 1
	sw zero, 0(t0)
	bgt s0, a5, label25
	addiw a2, a2, 1
	bgt s0, a2, label21
	mv a3, zero
	mv a4, zero
	mv a2, s1
	bgt s0, zero, label158
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label550
.p2align 2
label25:
	sh2add t0, a5, a3
	addiw a5, a5, 1
	sw zero, 0(t0)
	bgt s0, a5, label25
	addiw a2, a2, 1
	bgt s0, a2, label21
	mv a3, zero
	mv a4, zero
	mv a2, s1
	bgt s0, zero, label158
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label550
.p2align 2
label44:
	slliw a5, a3, 12
	li a4, 4
	add a2, s1, a5
	bgt s0, a4, label238
	mv a5, zero
	mv t0, a2
	li a5, 1
	sw zero, 0(a2)
	bgt s0, a5, label45
	addiw a3, a3, 1
	bgt s0, a3, label43
	mv a3, zero
	mv a4, zero
	mv a2, a0
	bgt s0, zero, label263
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label550
.p2align 2
label238:
	mv a4, zero
	mv a5, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	li a5, 8
	li a4, 4
	bgt s0, a5, label47
	mv a5, a4
	sh2add t0, a4, a2
	addiw a5, a4, 1
	sw zero, 0(t0)
	bgt s0, a5, label45
	addiw a3, a3, 1
	bgt s0, a3, label43
	mv a3, zero
	mv a4, zero
	mv a2, a0
	bgt s0, zero, label263
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label550
.p2align 2
label45:
	sh2add t0, a5, a2
	addiw a5, a5, 1
	sw zero, 0(t0)
	bgt s0, a5, label45
	addiw a3, a3, 1
	bgt s0, a3, label43
	mv a3, zero
	mv a4, zero
	mv a2, a0
	bgt s0, zero, label263
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label550
.p2align 2
label47:
	sh2add a5, a4, a2
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	addiw a5, a4, 8
	addiw a4, a4, 4
	bgt s0, a5, label47
	mv a5, a4
	sh2add t0, a4, a2
	addiw a5, a4, 1
	sw zero, 0(t0)
	bgt s0, a5, label45
	addiw a3, a3, 1
	bgt s0, a3, label43
	mv a3, zero
	mv a4, zero
	mv a2, a0
	bgt s0, zero, label263
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label550
.p2align 2
label56:
	bgt s0, zero, label57
	mv a3, s2
	addiw a1, a1, 1
	bgt s0, a1, label56
	j label66
.p2align 2
label57:
	slli a2, a1, 12
	li a3, 4
	add a0, s1, a2
	bgt s0, a3, label280
	mv a2, zero
	mv a3, s2
	mv a4, a0
	li a2, 1
	lw a5, 0(a0)
	addw a3, s2, a5
	bgt s0, a2, label61
	addiw a1, a1, 1
	mv s2, a3
	bgt s0, a1, label56
	j label66
.p2align 2
label280:
	mv a4, s2
	mv a2, zero
.p2align 2
label58:
	sh2add a3, a2, a0
	lw t1, 0(a3)
	lw t0, 4(a3)
	addw a5, a4, t1
	lw t1, 8(a3)
	addw a4, a5, t0
	lw t0, 12(a3)
	addw a5, a4, t1
	addiw a4, a2, 8
	addw a3, a5, t0
	addiw a2, a2, 4
	bgt s0, a4, label299
	sh2add a4, a2, a0
	addiw a2, a2, 1
	lw a5, 0(a4)
	addw a3, a3, a5
	bgt s0, a2, label61
	addiw a1, a1, 1
	mv s2, a3
	bgt s0, a1, label56
	j label66
.p2align 2
label299:
	mv a4, a3
	j label58
.p2align 2
label61:
	sh2add a4, a2, a0
	addiw a2, a2, 1
	lw a5, 0(a4)
	addw a3, a3, a5
	bgt s0, a2, label61
	addiw a1, a1, 1
	mv s2, a3
	bgt s0, a1, label56
label66:
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
	ld s1, 24(sp)
	ld s2, 32(sp)
	ld s5, 40(sp)
	ld s0, 48(sp)
	addi sp, sp, 56
	ret
.p2align 2
label12:
	slli a0, s3, 12
	mv s5, zero
	add s4, s1, a0
	j label13
