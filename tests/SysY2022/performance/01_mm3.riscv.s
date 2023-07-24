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
pcrel568:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel568)
pcrel569:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel569)
	ble s0, zero, label11
label4:
.p2align 2
	bgt s0, zero, label5
	addiw s3, s3, 1
	bgt s0, s3, label4
	mv s3, zero
	j label11
label6:
.p2align 2
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	bgt s0, s5, label6
	addiw s3, s3, 1
	bgt s0, s3, label4
	mv s3, zero
	bgt s0, zero, label78
label11:
	li a0, 65
	jal _sysy_starttime
pcrel570:
	auipc a1, %pcrel_hi(C)
	addi a0, a1, %pcrel_lo(pcrel570)
	mv a1, zero
	j label12
label78:
.p2align 2
	bgt s0, zero, label79
	addiw s3, s3, 1
	bgt s0, s3, label78
	j label11
label80:
.p2align 2
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	bgt s0, s5, label80
	addiw s3, s3, 1
	bgt s0, s3, label78
	j label11
label12:
	mv a2, zero
	bgt s0, zero, label16
	mv a3, zero
	mv a4, zero
	mv a2, s1
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
label496:
	mv s2, zero
	mv a1, zero
	bgt s0, zero, label46
	j label57
label60:
.p2align 2
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	beq a5, zero, label68
	bgt s0, zero, label62
	addiw a4, a4, 1
	bgt s0, a4, label60
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	bgt s0, a3, label223
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label496
label62:
.p2align 2
	slliw t1, a4, 12
	li t2, 4
	add t0, s1, t1
	bgt s0, t2, label286
	mv t1, zero
	mv t2, t0
	mv t6, a2
	lw t3, 0(t0)
	li t1, 1
	lw t5, 0(a2)
	mulw t4, a5, t5
	addw t3, t3, t4
	sw t3, 0(t0)
	bgt s0, t1, label66
	addiw a4, a4, 1
	bgt s0, a4, label60
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	bgt s0, a3, label223
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label496
label286:
.p2align 2
	li t1, 4
	mv t3, zero
label63:
.p2align 2
	sh2add t2, t3, t0
	sh2add t3, t3, a2
	lw t4, 0(t2)
	lw t6, 0(t3)
	mulw t5, a5, t6
	addw a6, t4, t5
	sw a6, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw a6, a5, t5
	addw t6, t4, a6
	sw t6, 4(t2)
	lw t4, 8(t2)
	lw a6, 8(t3)
	mulw t5, a5, a6
	addw t6, t4, t5
	sw t6, 8(t2)
	lw t4, 12(t2)
	lw t5, 12(t3)
	mulw t6, a5, t5
	addw t3, t4, t6
	sw t3, 12(t2)
	addiw t2, t1, 4
	bgt s0, t2, label317
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t5, 0(t6)
	mulw t4, a5, t5
	addw t3, t3, t4
	sw t3, 0(t2)
	bgt s0, t1, label66
	addiw a4, a4, 1
	bgt s0, a4, label60
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	bgt s0, a3, label223
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label496
label317:
.p2align 2
	mv t3, t1
	mv t1, t2
	j label63
label66:
.p2align 2
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t5, 0(t6)
	mulw t4, a5, t5
	addw t3, t3, t4
	sw t3, 0(t2)
	bgt s0, t1, label66
	addiw a4, a4, 1
	bgt s0, a4, label60
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	bgt s0, a3, label223
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label496
label68:
.p2align 2
	addiw a4, a4, 1
	bgt s0, a4, label60
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	bgt s0, a3, label223
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label496
label145:
.p2align 2
	mv a4, zero
	bgt s0, zero, label28
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s1, a4
	bgt s0, a3, label145
	mv a3, zero
	mv a4, zero
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label496
label28:
.p2align 2
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	beq a5, zero, label36
	bgt s0, zero, label30
	addiw a4, a4, 1
	bgt s0, a4, label28
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s1, a4
	bgt s0, a3, label145
	mv a3, zero
	mv a4, zero
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label496
label30:
.p2align 2
	slliw t1, a4, 12
	li t2, 4
	add t0, a0, t1
	bgt s0, t2, label166
	mv t1, zero
	mv t2, t0
	mv t4, a2
	lw t3, 0(t0)
	li t1, 1
	lw t6, 0(a2)
	mulw t5, a5, t6
	addw t3, t3, t5
	sw t3, 0(t0)
	bgt s0, t1, label34
	addiw a4, a4, 1
	bgt s0, a4, label28
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s1, a4
	bgt s0, a3, label145
	mv a3, zero
	bgt s0, zero, label70
	mv a4, zero
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label496
label166:
.p2align 2
	li t1, 4
	mv t3, zero
label31:
.p2align 2
	sh2add t2, t3, t0
	sh2add t3, t3, a2
	lw t4, 0(t2)
	lw t5, 0(t3)
	mulw t6, a5, t5
	addw a6, t4, t6
	sw a6, 0(t2)
	lw t4, 4(t2)
	lw a6, 4(t3)
	mulw t6, a5, a6
	addw t5, t4, t6
	sw t5, 4(t2)
	lw t4, 8(t2)
	lw t6, 8(t3)
	mulw t5, a5, t6
	addw a6, t4, t5
	sw a6, 8(t2)
	lw t4, 12(t2)
	lw t5, 12(t3)
	mulw t3, a5, t5
	addw t4, t4, t3
	sw t4, 12(t2)
	addiw t2, t1, 4
	bgt s0, t2, label197
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t6, 0(t4)
	mulw t5, a5, t6
	addw t3, t3, t5
	sw t3, 0(t2)
	bgt s0, t1, label34
	addiw a4, a4, 1
	bgt s0, a4, label28
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s1, a4
	bgt s0, a3, label145
	mv a3, zero
	bgt s0, zero, label70
	mv a4, zero
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label496
label197:
.p2align 2
	mv t3, t1
	mv t1, t2
	j label31
label34:
.p2align 2
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t6, 0(t4)
	mulw t5, a5, t6
	addw t3, t3, t5
	sw t3, 0(t2)
	bgt s0, t1, label34
	addiw a4, a4, 1
	bgt s0, a4, label28
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s1, a4
	bgt s0, a3, label145
	mv a3, zero
	bgt s0, zero, label70
	mv a4, zero
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label496
label36:
.p2align 2
	addiw a4, a4, 1
	bgt s0, a4, label28
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s1, a4
	bgt s0, a3, label145
	mv a3, zero
	bgt s0, zero, label70
	mv a4, zero
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label496
label70:
.p2align 2
	bgt s0, zero, label72
	addiw a3, a3, 1
	bgt s0, a3, label70
	mv a3, zero
	mv a4, zero
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label496
label223:
	mv a4, zero
	bgt s0, zero, label60
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	bgt s0, a3, label223
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label496
label16:
.p2align 2
	bgt s0, zero, label18
	addiw a2, a2, 1
	bgt s0, a2, label16
	mv a3, zero
	mv a4, zero
	mv a2, s1
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label496
label18:
.p2align 2
	slliw a4, a2, 12
	mv a5, zero
	add a3, a0, a4
label19:
.p2align 2
	addiw a4, a5, 4
	bgt s0, a4, label21
	sh2add a4, a5, a3
	addiw a5, a5, 1
	sw zero, 0(a4)
	bgt s0, a5, label22
	addiw a2, a2, 1
	bgt s0, a2, label16
	mv a3, zero
	mv a4, zero
	mv a2, s1
	bgt s0, zero, label145
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label496
label21:
.p2align 2
	sh2add a5, a5, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	j label19
label22:
.p2align 2
	sh2add a4, a5, a3
	addiw a5, a5, 1
	sw zero, 0(a4)
	bgt s0, a5, label22
	addiw a2, a2, 1
	bgt s0, a2, label16
	mv a3, zero
	mv a4, zero
	mv a2, s1
	bgt s0, zero, label145
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label496
label72:
.p2align 2
	slliw a4, a3, 12
	mv a5, zero
	add a2, s1, a4
label73:
.p2align 2
	addiw a4, a5, 4
	bgt s0, a4, label77
	sh2add a4, a5, a2
	addiw a5, a5, 1
	sw zero, 0(a4)
	bgt s0, a5, label75
	addiw a3, a3, 1
	bgt s0, a3, label70
	mv a3, zero
	mv a4, zero
	mv a2, a0
	bgt s0, zero, label223
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label496
label75:
.p2align 2
	sh2add a4, a5, a2
	addiw a5, a5, 1
	sw zero, 0(a4)
	bgt s0, a5, label75
	addiw a3, a3, 1
	bgt s0, a3, label70
	mv a3, zero
	mv a4, zero
	mv a2, a0
	bgt s0, zero, label223
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label496
label77:
.p2align 2
	sh2add a5, a5, a2
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	j label73
label48:
.p2align 2
	addiw a2, a3, 4
	bgt s0, a2, label51
	sh2add a5, a3, a0
	addiw a3, a3, 1
	lw a2, 0(a5)
	addw a4, a4, a2
	bgt s0, a3, label52
	addiw a1, a1, 1
	mv s2, a4
	bgt s0, a1, label46
	j label57
label51:
.p2align 2
	sh2add a3, a3, a0
	lw a5, 0(a3)
	lw t0, 4(a3)
	addw a4, a4, a5
	addw a5, a4, t0
	lw a4, 8(a3)
	addw t0, a5, a4
	lw a5, 12(a3)
	mv a3, a2
	addw a4, t0, a5
	j label48
label52:
.p2align 2
	sh2add a5, a3, a0
	addiw a3, a3, 1
	lw a2, 0(a5)
	addw a4, a4, a2
	bgt s0, a3, label52
	addiw a1, a1, 1
	mv s2, a4
	bgt s0, a1, label46
label57:
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
label46:
.p2align 2
	bgt s0, zero, label47
	mv a4, s2
	addiw a1, a1, 1
	bgt s0, a1, label46
	j label57
label47:
.p2align 2
	slli a2, a1, 12
	mv a3, zero
	mv a4, s2
	add a0, s1, a2
	j label48
label5:
.p2align 2
	slli a0, s3, 12
	mv s5, zero
	add s4, s2, a0
	j label6
label79:
.p2align 2
	slli a0, s3, 12
	mv s5, zero
	add s4, s1, a0
	j label80
