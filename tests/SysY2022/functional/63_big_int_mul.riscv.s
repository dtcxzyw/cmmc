.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
	addi sp, sp, -392
	li a3, 1
	li a2, 2
	li a4, 3
	li a5, 4
	li t3, 5
	li t0, 6
	li t1, 7
	li t2, 8
	li t4, 9
	sd ra, 0(sp)
	addi a1, sp, 128
	addi a0, sp, 24
	sd s0, 8(sp)
	addi s0, sp, 232
	sd s1, 16(sp)
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
	sw a3, 24(sp)
	sw a2, 28(sp)
	sw a4, 32(sp)
	sw a5, 36(sp)
	sw t3, 40(sp)
	sw t0, 44(sp)
	sw t1, 48(sp)
	sw t2, 52(sp)
	sw t4, 56(sp)
	sw zero, 60(sp)
	sw a3, 64(sp)
	sw a2, 68(sp)
	sw a4, 72(sp)
	sw a5, 76(sp)
	sw t3, 80(sp)
	sw t0, 84(sp)
	sw t1, 88(sp)
	sw t2, 92(sp)
	sw t4, 96(sp)
	sw zero, 100(sp)
	sw a2, 128(sp)
	sw a4, 132(sp)
	sw a5, 136(sp)
	sw a2, 140(sp)
	sw t3, 144(sp)
	sw t1, 148(sp)
	sw t4, 152(sp)
	sw t4, 156(sp)
	sw zero, 160(sp)
	sw a3, 164(sp)
	sw t4, 168(sp)
	sw t2, 172(sp)
	sw t1, 176(sp)
	sw t0, 180(sp)
	sw a5, 184(sp)
	sw a4, 188(sp)
	li a4, 39
	sw a2, 192(sp)
	sw a3, 196(sp)
	li a3, 19
	sw a2, 200(sp)
	sw a2, 204(sp)
	bge a3, zero, label10
label5:
	lw a0, 232(sp)
	bne a0, zero, label6
	li s1, 1
	j label7
.p2align 2
label10:
	sh2add a5, a3, a1
	li t0, 19
	lw a2, 0(a5)
	blt t0, zero, label122
.p2align 2
label14:
	sh2add t2, a4, s0
	sh2add t1, t0, a0
	lw a5, 0(t2)
	addiw t0, t0, -1
	lw t2, 0(t1)
	mulw t3, a2, t2
	li t2, 9
	addw t1, a5, t3
	addiw a5, a4, -1
	bgt t1, t2, label16
	sh2add t2, a4, s0
	mv a4, a5
	sw t1, 0(t2)
	bge t0, zero, label14
	j label207
.p2align 2
label16:
	sh2add t2, a4, s0
	li t4, 1717986919
	sh2add a4, a5, s0
	sw t1, 0(t2)
	lw t2, 0(a4)
	mul t1, t1, t4
	srli t4, t1, 63
	srai t3, t1, 34
	add t1, t4, t3
	addw t2, t2, t1
	sw t2, 0(a4)
	mv a4, a5
	bge t0, zero, label14
	addiw a4, a5, 19
	addiw a3, a3, -1
	bge a3, zero, label10
	j label5
label6:
	jal putint
	li s1, 1
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
label207:
	addiw a4, a4, 19
	addiw a3, a3, -1
	bge a3, zero, label10
	j label5
label122:
	addiw a4, a4, 19
	addiw a3, a3, -1
	bge a3, zero, label10
	j label5
