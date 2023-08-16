.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
b:
	.zero	12508
.align 8
a:
	.zero	16348
.text
.p2align 2
.globl main
main:
	addi sp, sp, -104
pcrel728:
	auipc a0, %pcrel_hi(a)
	mv a3, zero
	li a4, 63
	lui a5, 31
	slli a2, a4, 6
	sd ra, 0(sp)
	lui a4, 576660
	sd s4, 8(sp)
	addi s4, a0, %pcrel_lo(pcrel728)
	sd s0, 16(sp)
	addi a0, a2, -960
	mv a1, s4
	addiw s0, a5, 1899
	sd s5, 24(sp)
	sd s3, 32(sp)
	li s3, 7
	sd s1, 40(sp)
	addi s1, a0, 652
	sd s6, 48(sp)
	sd s2, 56(sp)
	addiw s2, a4, 1989
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
.p2align 2
label2:
	sd zero, 0(a1)
	addiw a3, a3, 64
	sd zero, 8(a1)
	sd zero, 16(a1)
	sd zero, 24(a1)
	sd zero, 32(a1)
	sd zero, 40(a1)
	sd zero, 48(a1)
	sd zero, 56(a1)
	sd zero, 64(a1)
	sd zero, 72(a1)
	sd zero, 80(a1)
	sd zero, 88(a1)
	sd zero, 96(a1)
	sd zero, 104(a1)
	sd zero, 112(a1)
	sd zero, 120(a1)
	sd zero, 128(a1)
	sd zero, 136(a1)
	sd zero, 144(a1)
	sd zero, 152(a1)
	sd zero, 160(a1)
	sd zero, 168(a1)
	sd zero, 176(a1)
	sd zero, 184(a1)
	sd zero, 192(a1)
	sd zero, 200(a1)
	sd zero, 208(a1)
	sd zero, 216(a1)
	sd zero, 224(a1)
	sd zero, 232(a1)
	sd zero, 240(a1)
	sd zero, 248(a1)
	bge a3, a2, label6
	addi a1, a1, 256
	j label2
label6:
	auipc a4, %pcrel_hi(b)
	mv a3, zero
	sd zero, 256(a1)
	addi a2, a4, %pcrel_lo(label6)
	sd zero, 264(a1)
	sd zero, 272(a1)
	sd zero, 280(a1)
	sd zero, 288(a1)
	sd zero, 296(a1)
	sd zero, 304(a1)
	sd zero, 312(a1)
	sd zero, 320(a1)
	sd zero, 328(a1)
	sd zero, 336(a1)
	sd zero, 344(a1)
	sd zero, 352(a1)
	sd zero, 360(a1)
	sd zero, 368(a1)
	sd zero, 376(a1)
	sd zero, 384(a1)
	sd zero, 392(a1)
	sd zero, 400(a1)
	sd zero, 408(a1)
	sd zero, 416(a1)
	sd zero, 424(a1)
	sd zero, 432(a1)
	sd zero, 440(a1)
	sd zero, 448(a1)
	sd zero, 456(a1)
	sd zero, 464(a1)
	sw zero, 472(a1)
	mv a1, a2
	j label7
.p2align 2
label39:
	addi a1, a1, 256
.p2align 2
label7:
	sd zero, 0(a1)
	addiw a3, a3, 64
	sd zero, 8(a1)
	sd zero, 16(a1)
	sd zero, 24(a1)
	sd zero, 32(a1)
	sd zero, 40(a1)
	sd zero, 48(a1)
	sd zero, 56(a1)
	sd zero, 64(a1)
	sd zero, 72(a1)
	sd zero, 80(a1)
	sd zero, 88(a1)
	sd zero, 96(a1)
	sd zero, 104(a1)
	sd zero, 112(a1)
	sd zero, 120(a1)
	sd zero, 128(a1)
	sd zero, 136(a1)
	sd zero, 144(a1)
	sd zero, 152(a1)
	sd zero, 160(a1)
	sd zero, 168(a1)
	sd zero, 176(a1)
	sd zero, 184(a1)
	sd zero, 192(a1)
	sd zero, 200(a1)
	sd zero, 208(a1)
	sd zero, 216(a1)
	sd zero, 224(a1)
	sd zero, 232(a1)
	sd zero, 240(a1)
	sd zero, 248(a1)
	blt a3, a0, label39
	sd zero, 256(a1)
	li a4, 573
	li a0, 9
	addi s7, a2, 1416
	mv s11, zero
	slli a3, a4, 3
	mv s10, s7
	mv s5, s7
	sd zero, 264(a1)
	li a4, 3
	sd zero, 272(a1)
	sd zero, 280(a1)
	sd zero, 288(a1)
	sd zero, 296(a1)
	sd zero, 304(a1)
	sd zero, 312(a1)
	sd zero, 320(a1)
	sd zero, 328(a1)
	sd zero, 336(a1)
	sd zero, 344(a1)
	sd zero, 352(a1)
	sd zero, 360(a1)
	sd zero, 368(a1)
	sd zero, 376(a1)
	sd zero, 384(a1)
	sd zero, 392(a1)
	sd zero, 400(a1)
	sd zero, 408(a1)
	sd zero, 416(a1)
	sd zero, 424(a1)
	sd zero, 432(a1)
	sd zero, 440(a1)
	sd zero, 448(a1)
	sd zero, 456(a1)
	sd zero, 464(a1)
	sw zero, 472(a1)
	add a1, s4, a3
	li a3, 1
	sw a0, 0(a1)
	slli a1, a4, 32
	sw a3, 1420(a2)
	addi a3, a1, 2
	sd a3, 1424(a2)
	li a3, 1005
	sw a0, 1452(a2)
	slli a0, a3, 3
	lw s6, 1416(a2)
	lui a3, 3
	add a1, a2, a0
	addiw a0, a3, -180
	lw s8, 0(a1)
	add a1, a2, a0
	lw s9, 0(a1)
.p2align 2
label11:
	lw a0, 0(s10)
	jal putint
	addiw a1, s11, 1
	li s11, 10
	bge a1, s11, label15
	addi s10, s10, 4
	mv s11, a1
	j label11
label15:
	li s11, 10
	mv a0, s11
	jal putch
	li a3, 573
	slli a2, a3, 3
	add a1, s4, a2
	lw a0, 0(a1)
	jal putint
	mv a0, s11
	jal putch
	bge s9, s11, label16
	addiw a3, s9, 3
	li s11, 10
	bge a3, s11, label335
	sh2add a0, s9, s7
	mv a1, s8
	mv a2, s9
	j label34
.p2align 2
label38:
	addi a0, a0, 16
.p2align 2
label34:
	mulw a3, a1, s0
	addiw a2, a2, 4
	mul t1, a3, s2
	srli t0, t1, 32
	add a4, t0, a3
	srliw t2, a4, 31
	sraiw a5, a4, 11
	add t1, t2, a5
	addiw a5, a1, 7
	mulw t0, t1, s1
	subw a4, a3, t0
	mulw a3, a5, s0
	sw a4, 0(a0)
	mul t0, a3, s2
	srli t1, t0, 32
	add a4, t1, a3
	srliw t2, a4, 31
	sraiw a5, a4, 11
	addiw a4, a1, 14
	add t3, t2, a5
	mulw t0, t3, s1
	subw t1, a3, t0
	mulw a3, a4, s0
	sw t1, 4(a0)
	mul t1, a3, s2
	srli t0, t1, 32
	add a4, t0, a3
	srliw t1, a4, 31
	sraiw a5, a4, 11
	addiw a4, a1, 21
	add t0, t1, a5
	addiw a1, a1, 28
	mulw t2, t0, s1
	subw t3, a3, t2
	mulw a3, a4, s0
	sw t3, 8(a0)
	mul t1, a3, s2
	srli t0, t1, 32
	add a4, t0, a3
	srliw t2, a4, 31
	sraiw a5, a4, 11
	add t0, t2, a5
	mulw t1, t0, s1
	subw a4, a3, t1
	sw a4, 12(a0)
	blt a2, s3, label38
label24:
	li s11, 10
	bge a2, s11, label16
	sh2add a0, a2, s7
	j label28
label32:
	addi a0, a0, 4
label28:
	mulw a3, a1, s0
	addiw a2, a2, 1
	li s11, 10
	addiw a1, a1, 7
	mul t0, a3, s2
	srli t1, t0, 32
	add a4, t1, a3
	srliw t0, a4, 31
	sraiw a5, a4, 11
	add t1, t0, a5
	mulw t2, t1, s1
	subw a4, a3, t2
	sw a4, 0(a0)
	blt a2, s11, label32
label16:
	addiw a1, s6, 3
	sh1add a0, a1, a1
	mv s1, a0
	blt a0, zero, label22
	sh2add s0, a0, s5
	j label18
.p2align 2
label21:
	addi s0, s0, -4
.p2align 2
label18:
	lw a0, 0(s0)
	jal putint
	li a0, 32
	jal putch
	addiw s1, s1, -1
	bge s1, zero, label21
label22:
	li s11, 10
	mv a0, s11
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s3, 32(sp)
	ld s1, 40(sp)
	ld s6, 48(sp)
	ld s2, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 104
	ret
label335:
	mv a1, s8
	mv a2, s9
	j label24
