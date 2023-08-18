.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[40] RegSpill[0] CalleeSaved[24]
	addi sp, sp, -64
	li a3, 3
	li a4, 9
	li a5, 1
	addi a0, sp, 24
	slli a1, a3, 32
	sd ra, 0(sp)
	li a3, 2
	addi a2, a1, 4
	sd s0, 8(sp)
	slli a1, a3, 32
	sd s1, 16(sp)
	li a3, 5
	sd a2, 24(sp)
	addi a2, a1, 9
	slli a1, a5, 32
	sd a2, 32(sp)
	li a5, 7
	slli a2, a3, 32
	sd a1, 40(sp)
	li a3, 8
	addi a1, a2, 6
	slli a2, a3, 32
	sd a1, 48(sp)
	mv a3, a0
	addi a1, a2, 7
	mv a2, zero
	sd a1, 56(sp)
	li a1, 1
	li t0, 10
	blt a1, t0, label5
	j label47
label94:
	beq a2, t2, label24
.p2align 2
label32:
	sh2add t0, t2, a0
	lw a2, 0(t0)
	lw t1, 0(a3)
	sw t1, 0(t0)
	sw a2, 0(a3)
	bge a1, a4, label196
.p2align 2
label31:
	addi a3, a3, 4
	mv a2, a1
	li t0, 10
	addiw a1, a1, 1
	bge a1, t0, label47
.p2align 2
label5:
	addiw t0, a2, 4
	li t2, 10
	bge t0, t2, label52
	sh2add t0, a1, a0
	mv t2, a2
	mv t1, a1
	sh2add t6, a2, a0
	mv t3, a1
	lw t4, 0(t6)
	lw t5, 0(t0)
	bgt t4, t5, label176
	mv t3, a2
label176:
	sh2add a6, t3, a0
	addiw t6, t1, 1
	lw t4, 0(a6)
	mv t2, t6
	lw t5, 4(t0)
	bgt t4, t5, label178
	mv t2, t3
label178:
	sh2add t6, t2, a0
	addiw a6, t1, 2
	lw t4, 0(t6)
	mv t3, a6
	lw t5, 8(t0)
	bgt t4, t5, label180
	mv t3, t2
label180:
	sh2add t6, t3, a0
	addiw a6, t1, 3
	lw t4, 0(t6)
	mv t2, a6
	lw t5, 12(t0)
	bgt t4, t5, label182
	mv t2, t3
label182:
	addiw t1, t1, 4
	bge t1, a5, label89
.p2align 2
label11:
	addi t0, t0, 16
	sh2add t6, t2, a0
	mv t3, t1
	lw t4, 0(t6)
	lw t5, 0(t0)
	bgt t4, t5, label176
	mv t3, t2
	sh2add a6, t2, a0
	addiw t6, t1, 1
	lw t4, 0(a6)
	mv t2, t6
	lw t5, 4(t0)
	bgt t4, t5, label178
	mv t2, t3
	sh2add t6, t3, a0
	addiw a6, t1, 2
	lw t4, 0(t6)
	mv t3, a6
	lw t5, 8(t0)
	bgt t4, t5, label180
	mv t3, t2
	sh2add t6, t2, a0
	addiw a6, t1, 3
	lw t4, 0(t6)
	mv t2, a6
	lw t5, 12(t0)
	bgt t4, t5, label182
	mv t2, t3
	addiw t1, t1, 4
	blt t1, a5, label11
	li t0, 10
	bge t1, t0, label94
.p2align 2
label16:
	sh2add t0, t1, a0
	sh2add t6, t3, a0
	mv t2, t1
	lw t4, 0(t6)
	lw t5, 0(t0)
	bgt t4, t5, label184
	mv t2, t3
label184:
	addiw t1, t1, 1
	li t3, 10
	bge t1, t3, label107
.p2align 2
label21:
	addi t0, t0, 4
	mv t3, t2
	sh2add t6, t2, a0
	mv t2, t1
	lw t4, 0(t6)
	lw t5, 0(t0)
	bgt t4, t5, label184
	mv t2, t3
	addiw t1, t1, 1
	li t3, 10
	blt t1, t3, label21
	bne a2, t2, label32
	blt a1, a4, label31
	j label196
label24:
	blt a1, a4, label31
	j label196
label107:
	bne a2, t2, label32
	blt a1, a4, label31
	j label196
label52:
	mv t3, a2
	mv t1, a1
	mv t2, zero
	li t0, 10
	blt a1, t0, label16
	j label94
label196:
	mv s0, a0
	mv s1, zero
	j label26
.p2align 2
label30:
	addi s0, s0, 4
.p2align 2
label26:
	lw a0, 0(s0)
	jal putint
	li a0, 10
	jal putch
	li a0, 10
	addiw s1, s1, 1
	blt s1, a0, label30
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 64
	ret
label89:
	mv t3, t2
	li t0, 10
	blt t1, t0, label16
	j label94
label47:
	mv t2, a2
	bne a2, a2, label32
	j label24
