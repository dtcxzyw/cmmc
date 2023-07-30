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
	sd s0, 384(sp)
	addi a1, sp, 160
	addi a0, sp, 264
	addi s0, sp, 0
	sd s1, 376(sp)
	sd ra, 368(sp)
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
	sw a3, 264(sp)
	sw a2, 268(sp)
	sw a4, 272(sp)
	sw a5, 276(sp)
	sw t3, 280(sp)
	sw t0, 284(sp)
	sw t1, 288(sp)
	sw t2, 292(sp)
	sw t4, 296(sp)
	sw zero, 300(sp)
	sw a3, 304(sp)
	sw a2, 308(sp)
	sw a4, 312(sp)
	sw a5, 316(sp)
	sw t3, 320(sp)
	sw t0, 324(sp)
	sw t1, 328(sp)
	sw t2, 332(sp)
	sw t4, 336(sp)
	sw zero, 340(sp)
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
	sw a4, 220(sp)
	li a4, 39
	sw a2, 224(sp)
	sw a3, 228(sp)
	sw a2, 232(sp)
	sw a2, 236(sp)
	li a2, 19
	bge a2, zero, label103
	lw a0, 0(sp)
	bne a0, zero, label6
label207:
	li s1, 1
	j label7
label103:
	sh2add a5, a2, a1
	li t0, 19
	lw a3, 0(a5)
	bge t0, zero, label14
	addiw a4, a4, 19
	addiw a2, a2, -1
	bge a2, zero, label103
	lw a0, 0(sp)
	bne a0, zero, label6
	j label207
.p2align 2
label14:
	sh2add t2, a4, s0
	sh2add t1, t0, a0
	lw a5, 0(t2)
	addiw t0, t0, -1
	lw t2, 0(t1)
	mulw t3, a3, t2
	li t2, 9
	addw t1, a5, t3
	addiw a5, a4, -1
	bgt t1, t2, label16
	sh2add t2, a4, s0
	mv a4, a5
	sw t1, 0(t2)
	bge t0, zero, label14
	addiw a4, a5, 19
	addiw a2, a2, -1
	bge a2, zero, label103
	lw a0, 0(sp)
	bne a0, zero, label6
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
	addiw a2, a2, -1
	bge a2, zero, label103
	lw a0, 0(sp)
	beq a0, zero, label207
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
	ld ra, 368(sp)
	ld s1, 376(sp)
	ld s0, 384(sp)
	addi sp, sp, 392
	ret
