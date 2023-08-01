.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -392
	li a2, 2
	li a4, 3
	li a5, 4
	li t3, 5
	li t0, 6
	li t1, 7
	li t2, 8
	li a1, 9
	addi a3, sp, 128
	sd ra, 0(sp)
	addi a0, sp, 24
	sd s0, 8(sp)
	addi s0, sp, 232
	sd s1, 16(sp)
	li s1, 1
	sd zero, 232(sp)
	sd zero, 240(sp)
	sd zero, 248(sp)
	sd zero, 256(sp)
	sd zero, 264(sp)
	sd zero, 272(sp)
	sd zero, 280(sp)
	sd zero, 288(sp)
	sd zero, 296(sp)
	sd zero, 304(sp)
	sd zero, 312(sp)
	sd zero, 320(sp)
	sd zero, 328(sp)
	sd zero, 336(sp)
	sd zero, 344(sp)
	sd zero, 352(sp)
	sd zero, 360(sp)
	sd zero, 368(sp)
	sd zero, 376(sp)
	sd zero, 384(sp)
	sw s1, 24(sp)
	sw a2, 28(sp)
	sw a4, 32(sp)
	sw a5, 36(sp)
	sw t3, 40(sp)
	sw t0, 44(sp)
	sw t1, 48(sp)
	sw t2, 52(sp)
	sw a1, 56(sp)
	sw zero, 60(sp)
	sw s1, 64(sp)
	sw a2, 68(sp)
	sw a4, 72(sp)
	sw a5, 76(sp)
	sw t3, 80(sp)
	sw t0, 84(sp)
	sw t1, 88(sp)
	sw t2, 92(sp)
	sw a1, 96(sp)
	sw zero, 100(sp)
	sw a2, 128(sp)
	sw a4, 132(sp)
	sw a5, 136(sp)
	sw a2, 140(sp)
	sw t3, 144(sp)
	sw t1, 148(sp)
	sw a1, 152(sp)
	sw a1, 156(sp)
	sw zero, 160(sp)
	sw s1, 164(sp)
	sw a1, 168(sp)
	sw t2, 172(sp)
	sw t1, 176(sp)
	sw t0, 180(sp)
	sw a5, 184(sp)
	li a5, 39
	sw a4, 188(sp)
	li a4, 19
	sw a2, 192(sp)
	sw s1, 196(sp)
	sw a2, 200(sp)
	sw a2, 204(sp)
	bge a4, zero, label10
label5:
	lw a0, 232(sp)
	beq a0, zero, label7
	jal putint
.p2align 2
label7:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putint
	li a0, 40
	addiw s1, s1, 1
	blt s1, a0, label7
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 392
	ret
.p2align 2
label10:
	sh2add t0, a4, a3
	lw a2, 0(t0)
	li t0, 19
	blt t0, zero, label122
.p2align 2
label14:
	sh2add t2, a5, s0
	sh2add t3, t0, a0
	lw t1, 0(t2)
	addiw t0, t0, -1
	lw t5, 0(t3)
	mulw t4, a2, t5
	addw t2, t1, t4
	addiw t1, a5, -1
	bgt t2, a1, label16
	sh2add t3, a5, s0
	mv a5, t1
	sw t2, 0(t3)
	bge t0, zero, label14
	j label207
.p2align 2
label16:
	sh2add t3, a5, s0
	li t5, 1717986919
	sh2add a5, t1, s0
	sw t2, 0(t3)
	lw t3, 0(a5)
	mul t2, t2, t5
	srli t5, t2, 63
	srai t4, t2, 34
	add t2, t5, t4
	addw t3, t3, t2
	sw t3, 0(a5)
	mv a5, t1
	bge t0, zero, label14
	addiw a5, t1, 19
	addiw a4, a4, -1
	bge a4, zero, label10
	j label5
.p2align 2
label207:
	addiw a5, a5, 19
	addiw a4, a4, -1
	bge a4, zero, label10
	j label5
label122:
	addiw a5, a5, 19
	addiw a4, a4, -1
	bge a4, zero, label10
	j label5
