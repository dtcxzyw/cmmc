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
	addi a0, sp, 272
	addi s0, sp, 0
	sd s1, 264(sp)
	sd ra, 376(sp)
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
	sw a3, 272(sp)
	sw a2, 276(sp)
	sw a4, 280(sp)
	sw a5, 284(sp)
	sw t3, 288(sp)
	sw t0, 292(sp)
	sw t1, 296(sp)
	sw t2, 300(sp)
	sw t4, 304(sp)
	sw zero, 308(sp)
	sw a3, 312(sp)
	sw a2, 316(sp)
	sw a4, 320(sp)
	sw a5, 324(sp)
	sw t3, 328(sp)
	sw t0, 332(sp)
	sw t1, 336(sp)
	sw t2, 340(sp)
	sw t4, 344(sp)
	sw zero, 348(sp)
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
	sw a2, 224(sp)
	sw a3, 228(sp)
	sw a2, 232(sp)
	sw a2, 236(sp)
	mv a2, zero
label2:
	sh2add a3, a2, s0
	sw zero, 0(a3)
	addiw a2, a2, 16
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	sw zero, 16(a3)
	sw zero, 20(a3)
	sw zero, 24(a3)
	sw zero, 28(a3)
	sw zero, 32(a3)
	sw zero, 36(a3)
	sw zero, 40(a3)
	sw zero, 44(a3)
	sw zero, 48(a3)
	sw zero, 52(a3)
	sw zero, 56(a3)
	sw zero, 60(a3)
	li a3, 32
	blt a2, a3, label2
	sh2add a3, a2, s0
	li a5, 39
	li a2, 19
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	sw zero, 16(a3)
	sw zero, 20(a3)
	sw zero, 24(a3)
	sw zero, 28(a3)
	bge a2, zero, label8
	lw a0, 0(sp)
	bne a0, zero, label17
label246:
	li s1, 1
	j label18
.p2align 2
label8:
	sh2add a4, a2, a1
	lw a3, 0(a4)
	li a4, 19
	bge a4, zero, label12
	addiw a5, a5, 19
	addiw a2, a2, -1
	bge a2, zero, label8
	lw a0, 0(sp)
	bne a0, zero, label17
	j label246
.p2align 2
label12:
	sh2add t1, a5, s0
	sh2add t2, a4, a0
	lw t0, 0(t1)
	lw t1, 0(t2)
	mulw t3, a3, t1
	li t1, 9
	addw t0, t0, t3
	bgt t0, t1, label13
	sh2add t1, a5, s0
	addiw a4, a4, -1
	addiw a5, a5, -1
	sw t0, 0(t1)
	bge a4, zero, label12
	addiw a5, a5, 19
	addiw a2, a2, -1
	bge a2, zero, label8
	lw a0, 0(sp)
	bne a0, zero, label17
	j label246
.p2align 2
label13:
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
	bge a4, zero, label12
	addiw a5, t1, 19
	addiw a2, a2, -1
	bge a2, zero, label8
	lw a0, 0(sp)
	beq a0, zero, label246
label17:
	jal putint
	li s1, 1
.p2align 2
label18:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putint
	li a0, 40
	addiw s1, s1, 1
	blt s1, a0, label18
	mv a0, zero
	ld ra, 376(sp)
	ld s1, 264(sp)
	ld s0, 384(sp)
	addi sp, sp, 392
	ret
