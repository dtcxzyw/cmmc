.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
	addi sp, sp, -384
	li a3, 1
	li a2, 2
	li a4, 3
	li a5, 4
	li t3, 5
	li t0, 6
	li t1, 7
	li t2, 8
	li t4, 9
	sd s0, 376(sp)
	addi a1, sp, 160
	addi a0, sp, 260
	addi s0, sp, 0
	sd s1, 368(sp)
	sd ra, 360(sp)
	sd zero, 0(sp)
	sd zero, 8(sp)
	sd zero, 16(sp)
	sd zero, 24(sp)
	sd zero, 32(sp)
	sd zero, 40(sp)
	sd zero, 48(sp)
	sd zero, 56(sp)
	sd zero, 64(sp)
	sd zero, 72(sp)
	sd zero, 80(sp)
	sd zero, 88(sp)
	sd zero, 96(sp)
	sd zero, 104(sp)
	sd zero, 112(sp)
	sd zero, 120(sp)
	sd zero, 128(sp)
	sd zero, 136(sp)
	sd zero, 144(sp)
	sd zero, 152(sp)
	sw a3, 260(sp)
	sw a2, 264(sp)
	sw a4, 268(sp)
	sw a5, 272(sp)
	sw t3, 276(sp)
	sw t0, 280(sp)
	sw t1, 284(sp)
	sw t2, 288(sp)
	sw t4, 292(sp)
	sw zero, 296(sp)
	sw a3, 300(sp)
	sw a2, 304(sp)
	sw a4, 308(sp)
	sw a5, 312(sp)
	sw t3, 316(sp)
	sw t0, 320(sp)
	sw t1, 324(sp)
	sw t2, 328(sp)
	sw t4, 332(sp)
	sw zero, 336(sp)
	sw a2, 160(sp)
	sw a4, 164(sp)
	sw a5, 168(sp)
	sw a2, 172(sp)
	sw t3, 176(sp)
	sw t1, 180(sp)
	sw t4, 184(sp)
	sw t4, 188(sp)
	sw zero, 192(sp)
	sw a3, 196(sp)
	sw t4, 200(sp)
	sw t2, 204(sp)
	sw t1, 208(sp)
	sw t0, 212(sp)
	sw a5, 216(sp)
	li a5, 39
	sw a4, 220(sp)
	sw a2, 224(sp)
	sw a3, 228(sp)
	sw a2, 232(sp)
	sw a2, 236(sp)
	li a2, 19
	bge a2, zero, label103
	lw a0, 0(sp)
	bne a0, zero, label6
label209:
	li s1, 1
	j label7
label103:
	sh2add a4, a2, a1
	lw a3, 0(a4)
	li a4, 19
	bge a4, zero, label14
	addiw a5, a5, 19
	addiw a2, a2, -1
	bge a2, zero, label103
	lw a0, 0(sp)
	bne a0, zero, label6
	j label209
.p2align 2
label14:
	sh2add t2, a5, s0
	sh2add t1, a4, a0
	lw t0, 0(t2)
	lw t3, 0(t1)
	li t1, 9
	mulw t2, a3, t3
	addw t0, t0, t2
	bgt t0, t1, label16
	sh2add t1, a5, s0
	addiw a4, a4, -1
	addiw a5, a5, -1
	sw t0, 0(t1)
	bge a4, zero, label14
	addiw a5, a5, 19
	addiw a2, a2, -1
	bge a2, zero, label103
	lw a0, 0(sp)
	bne a0, zero, label6
	j label209
.p2align 2
label16:
	addiw t1, a5, -1
	sh2add t3, a5, s0
	li t4, 1717986919
	addiw a4, a4, -1
	sh2add t2, t1, s0
	sw t0, 0(t3)
	lw a5, 0(t2)
	mul t0, t0, t4
	srli t4, t0, 63
	srai t3, t0, 34
	add t0, t4, t3
	addw a5, a5, t0
	sw a5, 0(t2)
	mv a5, t1
	bge a4, zero, label14
	addiw a5, t1, 19
	addiw a2, a2, -1
	bge a2, zero, label103
	lw a0, 0(sp)
	beq a0, zero, label209
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
	ld ra, 360(sp)
	ld s1, 368(sp)
	ld s0, 376(sp)
	addi sp, sp, 384
	ret
