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
	addi sp, sp, -64
	sd s0, 56(sp)
	sd s5, 48(sp)
	sd s1, 40(sp)
	sd s6, 32(sp)
	sd s2, 24(sp)
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s4, zero
	addiw s1, a0, -4
	mv s0, a0
pcrel607:
	auipc a0, %pcrel_hi(B)
	addi s2, a0, %pcrel_lo(pcrel607)
pcrel608:
	auipc a0, %pcrel_hi(A)
	addi s3, a0, %pcrel_lo(pcrel608)
	bgt s0, zero, label73
label11:
	li a0, 65
	jal _sysy_starttime
pcrel609:
	auipc a1, %pcrel_hi(C)
	addi a0, a1, %pcrel_lo(pcrel609)
	mv a1, zero
	j label12
.p2align 2
label73:
	bgt s0, zero, label362
	addiw s4, s4, 1
	bgt s0, s4, label73
	mv s4, zero
	j label11
.p2align 2
label362:
	slli a0, s4, 12
	mv s6, zero
	add s5, s3, a0
.p2align 2
label76:
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	bgt s0, s6, label76
	addiw s4, s4, 1
	bgt s0, s4, label73
	mv s4, zero
	bgt s0, zero, label6
	j label11
label12:
	mv a2, zero
	bgt s0, zero, label16
	mv a3, zero
	mv a4, zero
	mv a2, s2
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
label537:
	mv s3, zero
	mv a0, zero
	bgt s0, zero, label52
	j label51
label247:
	mv a4, zero
	bgt s0, zero, label65
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	bgt s0, a3, label247
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label537
.p2align 2
label65:
	slliw a5, a4, 12
	add t1, s3, a5
	sh2add t0, a3, t1
	lw a5, 0(t0)
	beq a5, zero, label72
	bgt s0, zero, label67
	addiw a4, a4, 1
	bgt s0, a4, label65
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	bgt s0, a3, label247
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label537
.p2align 2
label67:
	slliw t2, a4, 12
	li t1, 4
	add t0, s2, t2
	bgt s0, t1, label314
	mv t2, zero
	mv t3, t0
	mv t6, a2
	lw t1, 0(t0)
	li t2, 1
	lw t5, 0(a2)
	mulw t4, a5, t5
	addw t1, t1, t4
	sw t1, 0(t0)
	bgt s0, t2, label70
	addiw a4, a4, 1
	bgt s0, a4, label65
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	bgt s0, a3, label247
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label537
.p2align 2
label314:
	mv t1, zero
.p2align 2
label68:
	sh2add t2, t1, t0
	sh2add t3, t1, a2
	lw t4, 0(t2)
	lw t6, 0(t3)
	mulw t5, a5, t6
	addw a6, t4, t5
	sw a6, 0(t2)
	lw t4, 4(t2)
	lw a6, 4(t3)
	mulw t5, a5, a6
	addw t6, t4, t5
	sw t6, 4(t2)
	lw t4, 8(t2)
	lw t6, 8(t3)
	mulw t5, a5, t6
	addw a6, t4, t5
	sw a6, 8(t2)
	lw t4, 12(t2)
	lw t5, 12(t3)
	mulw t6, a5, t5
	addw t3, t4, t6
	sw t3, 12(t2)
	addiw t2, t1, 4
	bgt s1, t2, label345
	sh2add t3, t2, t0
	sh2add t6, t2, a2
	lw t1, 0(t3)
	addiw t2, t2, 1
	lw t5, 0(t6)
	mulw t4, a5, t5
	addw t1, t1, t4
	sw t1, 0(t3)
	bgt s0, t2, label70
	addiw a4, a4, 1
	bgt s0, a4, label65
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	bgt s0, a3, label247
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label537
.p2align 2
label345:
	mv t1, t2
	j label68
.p2align 2
label70:
	sh2add t3, t2, t0
	sh2add t6, t2, a2
	lw t1, 0(t3)
	addiw t2, t2, 1
	lw t5, 0(t6)
	mulw t4, a5, t5
	addw t1, t1, t4
	sw t1, 0(t3)
	bgt s0, t2, label70
	addiw a4, a4, 1
	bgt s0, a4, label65
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	bgt s0, a3, label247
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label537
.p2align 2
label72:
	addiw a4, a4, 1
	bgt s0, a4, label65
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	bgt s0, a3, label247
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label537
.p2align 2
label144:
	mv a4, zero
	bgt s0, zero, label27
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s2, a4
	bgt s0, a3, label144
	mv a3, zero
	mv a4, zero
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label537
.p2align 2
label27:
	slliw a5, a4, 12
	add t1, s3, a5
	sh2add t0, a3, t1
	lw a5, 0(t0)
	beq a5, zero, label34
	bgt s0, zero, label29
	addiw a4, a4, 1
	bgt s0, a4, label27
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s2, a4
	bgt s0, a3, label144
	mv a3, zero
	mv a4, zero
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label537
.p2align 2
label29:
	slliw t2, a4, 12
	li t1, 4
	add t0, a0, t2
	bgt s0, t1, label165
	mv t2, zero
	mv t3, t0
	mv t4, a2
	lw t1, 0(t0)
	li t2, 1
	lw t6, 0(a2)
	mulw t5, a5, t6
	addw t1, t1, t5
	sw t1, 0(t0)
	bgt s0, t2, label30
	addiw a4, a4, 1
	bgt s0, a4, label27
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s2, a4
	bgt s0, a3, label144
	mv a3, zero
	bgt s0, zero, label38
	mv a4, zero
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label537
.p2align 2
label165:
	mv t1, zero
	j label32
.p2align 2
label30:
	sh2add t3, t2, t0
	sh2add t4, t2, a2
	lw t1, 0(t3)
	addiw t2, t2, 1
	lw t6, 0(t4)
	mulw t5, a5, t6
	addw t1, t1, t5
	sw t1, 0(t3)
	bgt s0, t2, label30
	addiw a4, a4, 1
	bgt s0, a4, label27
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s2, a4
	bgt s0, a3, label144
	mv a3, zero
	bgt s0, zero, label38
	mv a4, zero
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label537
.p2align 2
label32:
	sh2add t2, t1, t0
	sh2add t3, t1, a2
	lw t4, 0(t2)
	lw t5, 0(t3)
	mulw t6, a5, t5
	addw a6, t4, t6
	sw a6, 0(t2)
	lw t4, 4(t2)
	lw t6, 4(t3)
	mulw t5, a5, t6
	addw a6, t4, t5
	sw a6, 4(t2)
	lw t4, 8(t2)
	lw a6, 8(t3)
	mulw t6, a5, a6
	addw t5, t4, t6
	sw t5, 8(t2)
	lw t4, 12(t2)
	lw t6, 12(t3)
	mulw t5, a5, t6
	addw t3, t4, t5
	sw t3, 12(t2)
	addiw t2, t1, 4
	bgt s1, t2, label209
	sh2add t3, t2, t0
	sh2add t4, t2, a2
	lw t1, 0(t3)
	addiw t2, t2, 1
	lw t6, 0(t4)
	mulw t5, a5, t6
	addw t1, t1, t5
	sw t1, 0(t3)
	bgt s0, t2, label30
	addiw a4, a4, 1
	bgt s0, a4, label27
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s2, a4
	bgt s0, a3, label144
	mv a3, zero
	bgt s0, zero, label38
	mv a4, zero
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label537
.p2align 2
label209:
	mv t1, t2
	j label32
.p2align 2
label34:
	addiw a4, a4, 1
	bgt s0, a4, label27
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s2, a4
	bgt s0, a3, label144
	mv a3, zero
	bgt s0, zero, label38
	mv a4, zero
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label537
.p2align 2
label38:
	bgt s0, zero, label40
	addiw a3, a3, 1
	bgt s0, a3, label38
	mv a3, zero
	mv a4, zero
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label537
.p2align 2
label40:
	slliw a5, a3, 12
	li a4, 4
	add a2, s2, a5
	bgt s0, a4, label224
	mv a5, zero
	mv t0, a2
	li a5, 1
	sw zero, 0(a2)
	bgt s0, a5, label43
	addiw a3, a3, 1
	bgt s0, a3, label38
	mv a3, zero
	mv a4, zero
	mv a2, a0
	bgt s0, zero, label247
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label537
.p2align 2
label224:
	mv a4, zero
.p2align 2
label41:
	sh2add a5, a4, a2
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	addiw a5, a4, 4
	bgt s1, a5, label234
	sh2add t0, a5, a2
	addiw a5, a5, 1
	sw zero, 0(t0)
	bgt s0, a5, label43
	addiw a3, a3, 1
	bgt s0, a3, label38
	mv a3, zero
	mv a4, zero
	mv a2, a0
	bgt s0, zero, label247
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label537
.p2align 2
label234:
	mv a4, a5
	j label41
.p2align 2
label43:
	sh2add t0, a5, a2
	addiw a5, a5, 1
	sw zero, 0(t0)
	bgt s0, a5, label43
	addiw a3, a3, 1
	bgt s0, a3, label38
	mv a3, zero
	mv a4, zero
	mv a2, a0
	bgt s0, zero, label247
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label537
.p2align 2
label16:
	bgt s0, zero, label17
	addiw a2, a2, 1
	bgt s0, a2, label16
	mv a3, zero
	mv a4, zero
	mv a2, s2
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label537
.p2align 2
label17:
	slliw a4, a2, 12
	li t0, 4
	add a3, a0, a4
	bgt s0, t0, label120
	mv a5, zero
	mv t0, a3
	li a5, 1
	sw zero, 0(a3)
	bgt s0, a5, label20
	addiw a2, a2, 1
	bgt s0, a2, label16
	mv a3, zero
	mv a4, zero
	mv a2, s2
	bgt s0, zero, label144
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label537
.p2align 2
label120:
	mv a4, zero
.p2align 2
label18:
	sh2add a5, a4, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	addiw a5, a4, 4
	bgt s1, a5, label130
	sh2add t0, a5, a3
	addiw a5, a5, 1
	sw zero, 0(t0)
	bgt s0, a5, label20
	addiw a2, a2, 1
	bgt s0, a2, label16
	mv a3, zero
	mv a4, zero
	mv a2, s2
	bgt s0, zero, label144
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label537
.p2align 2
label130:
	mv a4, a5
	j label18
.p2align 2
label20:
	sh2add t0, a5, a3
	addiw a5, a5, 1
	sw zero, 0(t0)
	bgt s0, a5, label20
	addiw a2, a2, 1
	bgt s0, a2, label16
	mv a3, zero
	mv a4, zero
	mv a2, s2
	bgt s0, zero, label144
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label537
.p2align 2
label6:
	bgt s0, zero, label95
	addiw s4, s4, 1
	bgt s0, s4, label6
	j label11
.p2align 2
label95:
	slli a0, s4, 12
	mv s6, zero
	add s5, s2, a0
.p2align 2
label9:
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	bgt s0, s6, label9
	addiw s4, s4, 1
	bgt s0, s4, label6
	j label11
.p2align 2
label52:
	bgt s0, zero, label53
	mv a3, s3
	addiw a0, a0, 1
	bgt s0, a0, label52
	j label51
.p2align 2
label53:
	slli a2, a0, 12
	li a3, 4
	add a1, s2, a2
	bgt s0, a3, label264
	mv a2, zero
	mv a3, s3
	mv a4, a1
	li a2, 1
	lw a5, 0(a1)
	addw a3, s3, a5
	bgt s0, a2, label57
	addiw a0, a0, 1
	mv s3, a3
	bgt s0, a0, label52
	j label51
.p2align 2
label264:
	mv a4, s3
	mv a2, zero
.p2align 2
label54:
	sh2add a3, a2, a1
	addiw a2, a2, 4
	lw t1, 0(a3)
	lw t0, 4(a3)
	addw a5, a4, t1
	lw t1, 8(a3)
	addw a4, a5, t0
	addw a5, a4, t1
	lw a4, 12(a3)
	addw a3, a5, a4
	bgt s1, a2, label282
	sh2add a4, a2, a1
	addiw a2, a2, 1
	lw a5, 0(a4)
	addw a3, a3, a5
	bgt s0, a2, label57
	addiw a0, a0, 1
	mv s3, a3
	bgt s0, a0, label52
	j label51
.p2align 2
label282:
	mv a4, a3
	j label54
.p2align 2
label57:
	sh2add a4, a2, a1
	addiw a2, a2, 1
	lw a5, 0(a4)
	addw a3, a3, a5
	bgt s0, a2, label57
	addiw a0, a0, 1
	mv s3, a3
	bgt s0, a0, label52
label51:
	li a0, 84
	jal _sysy_stoptime
	mv a0, s3
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s6, 32(sp)
	ld s1, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
