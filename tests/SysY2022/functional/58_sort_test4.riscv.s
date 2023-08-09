.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[40] RegSpill[0] CalleeSaved[32]
	addi sp, sp, -72
	li a3, 3
	li a4, 2
	li t0, 8
	addi a0, sp, 32
	slli a2, a3, 32
	slli a5, t0, 32
	li a3, 9
	addi a1, a2, 4
	sd ra, 0(sp)
	slli a2, a4, 32
	sd s0, 8(sp)
	li a4, 1
	li s0, 10
	sd s1, 16(sp)
	sd s2, 24(sp)
	sd a1, 32(sp)
	addi a1, a2, 9
	slli a2, a4, 32
	sd a1, 40(sp)
	li a1, 5
	sd a2, 48(sp)
	slli a4, a1, 32
	li a1, 7
	addi a2, a4, 6
	addi a4, a5, 7
	sd a2, 56(sp)
	mv a5, zero
	mv a2, a0
	sd a4, 64(sp)
	blt zero, a3, label5
	j label45
.p2align 2
label116:
	bne a5, t2, label191
.p2align 2
label19:
	addi a2, a2, 4
	mv a5, a4
	bge a4, a3, label45
.p2align 2
label5:
	addiw t0, a5, 4
	addiw a4, a5, 1
	bge t0, s0, label51
	sh2add t0, a4, a0
	mv t3, a5
	mv t1, a4
	sh2add t6, a5, a0
	mv t2, a4
	lw t4, 0(t6)
	lw t5, 0(t0)
	bgt t4, t5, label173
	mv t2, a5
	j label173
.p2align 2
label188:
	mv t2, t3
	sh2add t6, t3, a0
	addiw a6, t1, 1
	lw t4, 0(t6)
	mv t3, a6
	lw t5, 4(t0)
	ble t4, t5, label195
.p2align 2
label175:
	sh2add t6, t3, a0
	addiw a6, t1, 2
	lw t4, 0(t6)
	mv t2, a6
	lw t5, 8(t0)
	bgt t4, t5, label177
	mv t2, t3
.p2align 2
label177:
	sh2add t6, t2, a0
	addiw a6, t1, 3
	lw t4, 0(t6)
	mv t3, a6
	lw t5, 12(t0)
	bgt t4, t5, label179
	mv t3, t2
.p2align 2
label179:
	addiw t1, t1, 4
	bge t1, a1, label88
.p2align 2
label11:
	addi t0, t0, 16
	sh2add t6, t3, a0
	mv t2, t1
	lw t4, 0(t6)
	lw t5, 0(t0)
	ble t4, t5, label188
.p2align 2
label173:
	sh2add t6, t2, a0
	addiw a6, t1, 1
	lw t4, 0(t6)
	mv t3, a6
	lw t5, 4(t0)
	bgt t4, t5, label175
	mv t3, t2
	j label175
.p2align 2
label195:
	mv t3, t2
	sh2add t6, t2, a0
	addiw a6, t1, 2
	lw t4, 0(t6)
	mv t2, a6
	lw t5, 8(t0)
	bgt t4, t5, label177
	mv t2, t3
	sh2add t6, t3, a0
	addiw a6, t1, 3
	lw t4, 0(t6)
	mv t3, a6
	lw t5, 12(t0)
	bgt t4, t5, label179
	mv t3, t2
	addiw t1, t1, 4
	blt t1, a1, label11
	blt t1, s0, label20
.p2align 2
label187:
	mv t2, t3
	beq a5, t3, label19
	sh2add a5, t3, a0
	lw t0, 0(a5)
	lw t1, 0(a2)
	sw t1, 0(a5)
	mv a5, a4
	sw t0, 0(a2)
	addi a2, a2, 4
	blt a4, a3, label5
	j label45
.p2align 2
label88:
	mv t2, t3
	bge t1, s0, label187
.p2align 2
label20:
	sh2add t0, t1, a0
	mv t3, t2
	sh2add t6, t2, a0
	mv t2, t1
	lw t4, 0(t6)
	lw t5, 0(t0)
	bgt t4, t5, label181
	mv t2, t3
.p2align 2
label181:
	addiw t1, t1, 1
	bge t1, s0, label116
.p2align 2
label25:
	addi t0, t0, 4
	mv t3, t2
	sh2add t6, t2, a0
	mv t2, t1
	lw t4, 0(t6)
	lw t5, 0(t0)
	bgt t4, t5, label181
	mv t2, t3
	addiw t1, t1, 1
	blt t1, s0, label25
	beq a5, t3, label19
	sh2add a5, t3, a0
	lw t0, 0(a5)
	lw t1, 0(a2)
	sw t1, 0(a5)
	mv a5, a4
	sw t0, 0(a2)
	addi a2, a2, 4
	blt a4, a3, label5
label45:
	mv s1, a0
	mv s2, zero
.p2align 2
label27:
	lw a0, 0(s1)
	jal putint
	mv a0, s0
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label31
	addi s1, s1, 4
	j label27
label31:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 72
	ret
label51:
	mv t2, a5
	mv t1, a4
	mv t3, zero
	blt a4, s0, label20
	mv t2, zero
	beq a5, zero, label19
	lw t0, 0(a0)
	lw t1, 0(a2)
	sw t1, 0(a0)
	mv a5, a4
	sw t0, 0(a2)
	addi a2, a2, 4
	blt a4, a3, label5
	j label45
.p2align 2
label191:
	sh2add a5, t2, a0
	lw t0, 0(a5)
	lw t1, 0(a2)
	sw t1, 0(a5)
	mv a5, a4
	sw t0, 0(a2)
	addi a2, a2, 4
	blt a4, a3, label5
	j label45
