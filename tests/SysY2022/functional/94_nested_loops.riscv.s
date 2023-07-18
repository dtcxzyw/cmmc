.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
arr1:
	.zero	57600
.align 4
arr2:
	.zero	107520
.text
.globl main
main:
	addi sp, sp, -504
	sd s0, 144(sp)
	sd s5, 168(sp)
	sd s1, 192(sp)
	sd s6, 72(sp)
	sd s2, 0(sp)
	sd s3, 8(sp)
	sd s7, 16(sp)
	sd s4, 24(sp)
	sd s10, 496(sp)
	sd s8, 488(sp)
	sd s9, 480(sp)
	sd s11, 472(sp)
	sd ra, 464(sp)
	jal getint
	addiw s0, a0, 1
	sd a0, 272(sp)
	jal getint
	sd a0, 264(sp)
	mv a1, a0
	addw a0, s0, a0
	sd a0, 280(sp)
	ld a0, 272(sp)
	ld a1, 264(sp)
	addiw a2, a0, 2
	addw a4, a1, a2
	addiw a2, a0, 3
	sd a4, 288(sp)
	addw a4, a1, a2
	addiw a2, a0, 4
	sd a4, 80(sp)
	addw a0, a1, a2
	sd a0, 88(sp)
	ld a0, 272(sp)
	addiw a2, a0, 5
	addw a4, a1, a2
	addiw a2, a0, 6
	addw a0, a0, a1
	sd a4, 96(sp)
	addw a4, a1, a2
	sd a4, 112(sp)
	sd a0, 104(sp)
	jal getint
	sd a0, 56(sp)
	jal getint
	sd a0, 136(sp)
	mv a1, a0
	jal getint
	sd a0, 176(sp)
	mv a1, a0
	jal getint
	sd a0, 64(sp)
	jal getint
	sd a0, 200(sp)
	mv a2, a0
	jal getint
	sd a0, 152(sp)
	mv a5, a0
	jal getint
	mv a3, zero
pcrel541:
	auipc a1, %pcrel_hi(arr1)
	sd a0, 48(sp)
	mv t3, a0
	addi a0, a1, %pcrel_lo(pcrel541)
	sd a0, 40(sp)
	sd zero, 184(sp)
label2:
	ld a0, 272(sp)
	ld a3, 184(sp)
	ld a1, 264(sp)
	slt a0, a3, a0
	slt a4, a3, a1
	and a2, a0, a4
	li a0, 5760
	mul a4, a3, a0
	ld a0, 40(sp)
	add a1, a0, a4
	sd a1, 248(sp)
	ld a0, 104(sp)
	addw a1, a0, a3
	sd a1, 240(sp)
	ld a0, 280(sp)
	addw a1, a0, a3
	sd a1, 232(sp)
	ld a4, 288(sp)
	addw a0, a4, a3
	sd a0, 224(sp)
	ld a4, 80(sp)
	addw a1, a4, a3
	sd a1, 304(sp)
	ld a0, 88(sp)
	addw a1, a0, a3
	sd a1, 312(sp)
	ld a4, 96(sp)
	addw a0, a4, a3
	sd a0, 320(sp)
	ld a4, 112(sp)
	addw a1, a4, a3
	sd a1, 336(sp)
	beq a2, zero, label102
	mv a2, zero
	sd zero, 344(sp)
	j label4
label102:
	auipc a0, %pcrel_hi(arr2)
	addi a2, a0, %pcrel_lo(label102)
	mv a0, zero
	sd a2, 32(sp)
	sd zero, 424(sp)
	j label18
label4:
	li a1, 2880
	ld a2, 344(sp)
	mul a0, a2, a1
	ld a1, 248(sp)
	add a3, a1, a0
	sd a3, 360(sp)
	ld a1, 240(sp)
	addw a0, a1, a2
	sd a0, 368(sp)
	ld a1, 232(sp)
	addw a5, a1, a2
	sd a5, 376(sp)
	ld a0, 224(sp)
	addw t0, a0, a2
	sd t0, 392(sp)
	ld a1, 304(sp)
	addw a0, a1, a2
	sd a0, 400(sp)
	ld a1, 312(sp)
	addw t2, a1, a2
	sd t2, 408(sp)
	ld a0, 320(sp)
	addw t3, a0, a2
	sd t3, 416(sp)
	ld a1, 336(sp)
	addw a0, a1, a2
	li a1, 2
	sd a0, 440(sp)
	bge a2, a1, label115
	mv a1, zero
	j label6
label115:
	ld a3, 184(sp)
	addiw a3, a3, 1
	sd a3, 184(sp)
	j label2
label6:
	li a2, 960
	li t4, 3
	ld a3, 360(sp)
	mul a0, a1, a2
	add a2, a3, a0
	ld a0, 368(sp)
	ld a5, 376(sp)
	addw a3, a0, a1
	ld t0, 392(sp)
	addw a4, a5, a1
	ld a0, 400(sp)
	addw a5, t0, a1
	ld t2, 408(sp)
	addw t0, a0, a1
	ld t3, 416(sp)
	addw t1, t2, a1
	ld a0, 440(sp)
	addw t2, t3, a1
	addw t3, a0, a1
	bge a1, t4, label128
	mv a0, zero
	li t4, 4
	bge zero, t4, label10
label11:
	li t5, 240
	addw a6, a5, a0
	addw a7, t0, a0
	addw s0, t1, a0
	addw s1, t2, a0
	addw s2, t3, a0
	mv s3, zero
	mul t6, a0, t5
	addw t5, a3, a0
	add t4, a2, t6
	addw t6, a4, a0
label12:
	li s5, 48
	addw s6, t5, s3
	mul s7, s3, s5
	addw s5, t6, s3
	add s4, t4, s7
	sw s6, 0(s4)
	sw s5, 4(s4)
	sw s5, 8(s4)
	addw s5, a6, s3
	sw s5, 12(s4)
	sw s5, 16(s4)
	addw s5, a7, s3
	sw s5, 20(s4)
	sw s5, 24(s4)
	addw s5, s0, s3
	sw s5, 28(s4)
	sw s5, 32(s4)
	addw s5, s1, s3
	sw s5, 36(s4)
	sw s5, 40(s4)
	addw s5, s2, s3
	addiw s3, s3, 1
	sw s5, 44(s4)
	li s4, 5
	bge s3, s4, label14
	j label12
label14:
	addiw a0, a0, 1
	li t4, 4
	bge a0, t4, label10
	j label11
label10:
	addiw a1, a1, 1
	j label6
label18:
	li a2, 10752
	ld a0, 424(sp)
	addiw s1, a0, 4
	addiw s0, a0, 3
	addiw a7, a0, 2
	addiw a6, a0, 1
	mul a1, a0, a2
	addiw a0, a0, 5
	ld a2, 32(sp)
	sd a0, 456(sp)
	add t6, a2, a1
	ld a0, 424(sp)
	li a2, 10
	addiw a1, a0, 6
	sd a1, 448(sp)
	bge a0, a2, label184
	mv t5, zero
	j label54
label184:
	mv t2, zero
	mv a1, zero
	sd zero, 120(sp)
	j label20
label54:
	ld a0, 424(sp)
	li a1, 5376
	addw a4, a6, t5
	addw a5, a7, t5
	addw t0, s0, t5
	addw t1, s1, t5
	addw a3, a0, t5
	mul a0, t5, a1
	add s2, t6, a0
	ld a0, 456(sp)
	ld a1, 448(sp)
	addw t2, a0, t5
	addw t3, a1, t5
	li a0, 2
	bge t5, a0, label289
	mv s3, zero
	li a0, 1792
	mv a1, zero
	li a0, 3
	mv t4, s2
	bge zero, a0, label58
	j label514
label289:
	mv a0, a6
	sd a6, 424(sp)
	j label18
label514:
	mv a2, zero
	j label59
label58:
	addiw t5, t5, 1
	j label54
label59:
	addw a1, a3, a2
	li a0, 896
	addw s4, a4, a2
	addw s6, t0, a2
	addw s7, t1, a2
	addw s8, t2, a2
	addw s9, t3, a2
	mul s5, a2, a0
	li a0, 2
	add s10, t4, s5
	addw s5, a5, a2
	bge a2, a0, label61
	mv s11, zero
	j label62
label61:
	addiw s3, s3, 1
	li a0, 1792
	mul a1, s3, a0
	li a0, 3
	add t4, s2, a1
	bge s3, a0, label58
	j label514
label62:
	li a0, 224
	mul a0, s11, a0
	addiw s11, s11, 1
	add a0, s10, a0
	sw a1, 0(a0)
	sw s4, 4(a0)
	sw s5, 8(a0)
	sw s6, 12(a0)
	sw s7, 16(a0)
	sw s8, 20(a0)
	sw s9, 24(a0)
	sw a1, 28(a0)
	sw s4, 32(a0)
	sw s5, 36(a0)
	sw s6, 40(a0)
	sw s7, 44(a0)
	sw s8, 48(a0)
	sw s9, 52(a0)
	sw a1, 56(a0)
	sw s4, 60(a0)
	sw s5, 64(a0)
	sw s6, 68(a0)
	sw s7, 72(a0)
	sw s8, 76(a0)
	sw s9, 80(a0)
	sw a1, 84(a0)
	sw s4, 88(a0)
	sw s5, 92(a0)
	sw s6, 96(a0)
	sw s7, 100(a0)
	sw s8, 104(a0)
	sw s9, 108(a0)
	sw a1, 112(a0)
	sw s4, 116(a0)
	sw s5, 120(a0)
	sw s6, 124(a0)
	sw s7, 128(a0)
	sw s8, 132(a0)
	sw s9, 136(a0)
	sw a1, 140(a0)
	sw s4, 144(a0)
	sw s5, 148(a0)
	sw s6, 152(a0)
	sw s7, 156(a0)
	sw s8, 160(a0)
	sw s9, 164(a0)
	sw a1, 168(a0)
	sw s4, 172(a0)
	sw s5, 176(a0)
	sw s6, 180(a0)
	sw s7, 184(a0)
	sw s8, 188(a0)
	sw s9, 192(a0)
	sw a1, 196(a0)
	sw s4, 200(a0)
	sw s5, 204(a0)
	sw s6, 208(a0)
	sw s7, 212(a0)
	sw s8, 216(a0)
	sw s9, 220(a0)
	li a0, 4
	bge s11, a0, label64
	j label62
label64:
	addiw a2, a2, 1
	j label59
label128:
	ld a2, 344(sp)
	addiw a2, a2, 1
	sd a2, 344(sp)
	j label4
label20:
	li a0, 5760
	ld a1, 120(sp)
	mul a2, a1, a0
	ld a0, 40(sp)
	add a3, a0, a2
	li a2, 10752
	sd a3, 128(sp)
	mul a0, a1, a2
	ld a2, 32(sp)
	add a2, a2, a0
	li a0, 10
	sd a2, 216(sp)
	bge a1, a0, label23
	mv a0, zero
	sd zero, 208(sp)
label25:
	li a1, 2880
	ld a0, 208(sp)
	ld a3, 128(sp)
	mul a2, a0, a1
	add a1, a3, a2
	li a2, 5376
	sd a1, 160(sp)
	mul a3, a0, a2
	ld a2, 216(sp)
	add a1, a2, a3
	li a2, 100
	sd a1, 256(sp)
	bge a0, a2, label28
	mv a0, zero
	sd zero, 296(sp)
	j label30
label205:
	sd a1, 120(sp)
	j label20
label30:
	li a1, 960
	ld a0, 296(sp)
	mul a2, a0, a1
	ld a1, 160(sp)
	add a0, a1, a2
	li a1, 1792
	sd a0, 328(sp)
	ld a0, 296(sp)
	mul a2, a0, a1
	ld a1, 256(sp)
	add a3, a1, a2
	li a1, 1000
	sd a3, 352(sp)
	bge a0, a1, label33
	mv a1, zero
	sd zero, 384(sp)
label35:
	li a0, 240
	ld a1, 384(sp)
	mul a2, a1, a0
	ld a0, 328(sp)
	add a4, a0, a2
	li a0, 896
	mul a2, a1, a0
	sd a4, 432(sp)
	ld a3, 352(sp)
	add a0, a3, a2
	li a2, 10000
	bge a1, a2, label52
	mv a1, zero
	li a2, 48
	li a5, 224
	mv a3, zero
	mv t0, zero
	mv a2, a4
	li a4, 100000
	mv a3, a0
	bge zero, a4, label41
	mv a4, zero
	mv a5, a2
	li t1, 28
	mv t3, zero
	li t1, 1000000
	mv t0, a0
	bge zero, t1, label50
	j label516
label52:
	ld a0, 296(sp)
	ld a1, 176(sp)
	addiw a0, a0, 1
	bgt a1, a0, label276
	ld a0, 208(sp)
	ld a1, 136(sp)
	addiw a0, a0, 1
	bgt a1, a0, label218
	ld a1, 120(sp)
	ld a0, 56(sp)
	addiw a1, a1, 1
	bgt a0, a1, label205
	j label23
label276:
	sd a0, 296(sp)
	j label30
label516:
	mv t1, zero
	j label46
label38:
	li a2, 48
	li a5, 224
	ld a4, 432(sp)
	mul a3, a1, a2
	mul t0, a1, a5
	add a2, a4, a3
	li a4, 100000
	add a3, a0, t0
	bge a1, a4, label41
	mv a4, zero
	mv a5, a2
	li t1, 28
	mv t3, zero
	li t1, 1000000
	mv t0, a3
	bge zero, t1, label50
	j label516
label239:
	sd a1, 384(sp)
	j label35
label43:
	sh3add a5, a4, a2
	li t1, 28
	mul t3, a4, t1
	li t1, 1000000
	add t0, a3, t3
	bge a4, t1, label50
	j label516
label46:
	sh2add t4, t1, a5
	li a6, -1603384363
	lw t3, 0(t4)
	mul t5, t2, a6
	srli t6, t5, 32
	add t4, t6, t2
	srliw t6, t4, 31
	sraiw t5, t4, 9
	add t4, t6, t5
	li t5, 817
	mulw a6, t4, t5
	sh2add t4, t1, t0
	subw t6, t2, a6
	addiw t1, t1, 1
	addw t2, t3, t6
	lw t3, 0(t4)
	addw t2, t2, t3
	ld t3, 48(sp)
	bgt t3, t1, label46
	addiw a4, a4, 1
	ld a5, 152(sp)
	bgt a5, a4, label43
	addiw a1, a1, 1
	ld a2, 200(sp)
	bgt a2, a1, label38
	ld a1, 384(sp)
	ld a0, 64(sp)
	addiw a1, a1, 1
	bgt a0, a1, label239
	ld a0, 296(sp)
	ld a1, 176(sp)
	addiw a0, a0, 1
	bgt a1, a0, label276
	ld a0, 208(sp)
	ld a1, 136(sp)
	addiw a0, a0, 1
	bgt a1, a0, label218
	ld a1, 120(sp)
	ld a0, 56(sp)
	addiw a1, a1, 1
	bgt a0, a1, label205
label23:
	mv a0, t2
	ld ra, 464(sp)
	ld s11, 472(sp)
	ld s9, 480(sp)
	ld s8, 488(sp)
	ld s10, 496(sp)
	ld s4, 24(sp)
	ld s7, 16(sp)
	ld s3, 8(sp)
	ld s2, 0(sp)
	ld s6, 72(sp)
	ld s1, 192(sp)
	ld s5, 168(sp)
	ld s0, 144(sp)
	addi sp, sp, 504
	ret
label50:
	addiw a1, a1, 1
	ld a2, 200(sp)
	bgt a2, a1, label38
	ld a1, 384(sp)
	ld a0, 64(sp)
	addiw a1, a1, 1
	bgt a0, a1, label239
	ld a0, 296(sp)
	ld a1, 176(sp)
	addiw a0, a0, 1
	bgt a1, a0, label276
	ld a0, 208(sp)
	ld a1, 136(sp)
	addiw a0, a0, 1
	bgt a1, a0, label218
	ld a1, 120(sp)
	ld a0, 56(sp)
	addiw a1, a1, 1
	bgt a0, a1, label205
	j label23
label218:
	sd a0, 208(sp)
	j label25
label41:
	ld a1, 384(sp)
	ld a0, 64(sp)
	addiw a1, a1, 1
	bgt a0, a1, label239
	ld a0, 296(sp)
	ld a1, 176(sp)
	addiw a0, a0, 1
	bgt a1, a0, label276
	ld a0, 208(sp)
	ld a1, 136(sp)
	addiw a0, a0, 1
	bgt a1, a0, label218
	ld a1, 120(sp)
	ld a0, 56(sp)
	addiw a1, a1, 1
	bgt a0, a1, label205
	j label23
label33:
	ld a0, 208(sp)
	ld a1, 136(sp)
	addiw a0, a0, 1
	bgt a1, a0, label218
	ld a1, 120(sp)
	ld a0, 56(sp)
	addiw a1, a1, 1
	bgt a0, a1, label205
	j label23
label28:
	ld a1, 120(sp)
	ld a0, 56(sp)
	addiw a1, a1, 1
	bgt a0, a1, label205
	j label23
