.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
dp:
	.zero	52907904
.text
.p2align 2
dfs:
	addi sp, sp, -72
	sd ra, 0(sp)
	sd s1, 8(sp)
	mv s1, a0
	sd s6, 16(sp)
	mv s6, a3
	sd s3, 24(sp)
	li a3, 9072
	mv s3, a1
	sd s4, 32(sp)
pcrel193:
	auipc a1, %pcrel_hi(dp)
	mv s4, a2
	addi a0, a1, %pcrel_lo(pcrel193)
	sd s5, 40(sp)
	li a2, 2939328
	mv s5, a4
	sd s0, 48(sp)
	mul a1, s1, a2
	sd s2, 56(sp)
	li a2, 163296
	add a0, a0, a1
	mv s2, a5
	sd s7, 64(sp)
	mul a1, s3, a2
	mul a2, s4, a3
	add a0, a0, a1
	slli a3, a4, 3
	slli a1, s6, 6
	add a0, a0, a2
	sub a2, a1, s6
	sub a1, a3, a4
	sh3add a0, a2, a0
	sh2add s7, a1, a0
	li a1, -1
	sh2add a2, a5, s7
	lw a0, 0(a2)
	bne a0, a1, label19
	addw a1, s1, s3
	addw a2, s4, a1
	addw a3, s6, a2
	addw a0, a4, a3
	beq a0, zero, label52
	bne s1, zero, label18
	mv s0, zero
	j label4
label15:
	addiw a3, s6, 1
	addiw a4, s5, -1
	mv a0, s1
	li a5, 5
	mv a1, s3
	mv a2, s4
	jal dfs
	li a4, 1000000007
	li a3, 1152921497
	mulw a2, s5, a0
	addw a1, s0, a2
	mul a0, a1, a3
	srli a3, a0, 63
	srai a2, a0, 60
	add a0, a3, a2
	mulw a2, a0, a4
	subw s0, a1, a2
label16:
	li a2, 1152921497
	mul a0, s0, a2
	srli a2, a0, 63
	srai a1, a0, 60
	add a0, a2, a1
	li a1, 1000000007
	mulw a2, a0, a1
	sh2add a1, s2, s7
	subw a0, s0, a2
	sw a0, 0(a1)
label19:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s3, 24(sp)
	ld s4, 32(sp)
	ld s5, 40(sp)
	ld s0, 48(sp)
	ld s2, 56(sp)
	ld s7, 64(sp)
	addi sp, sp, 72
	ret
label4:
	bne s3, zero, label6
	j label7
label18:
	addiw a0, s1, -1
	mv a1, s3
	li a5, 1
	mv a2, s4
	mv a3, s6
	mv a4, s5
	jal dfs
	li a4, 1152921497
	xori a1, s2, 2
	sltiu a2, a1, 1
	subw a3, s1, a2
	mulw a0, a0, a3
	mul a1, a0, a4
	li a4, 1000000007
	srli a3, a1, 63
	srai a2, a1, 60
	add a1, a3, a2
	mulw a2, a1, a4
	subw s0, a0, a2
	j label4
label6:
	addiw a0, s1, 1
	addiw a1, s3, -1
	mv a2, s4
	li a5, 2
	mv a3, s6
	mv a4, s5
	jal dfs
	xori a2, s2, 3
	li a4, 1000000007
	sltiu a1, a2, 1
	subw a3, s3, a1
	mulw a2, a0, a3
	li a3, 1152921497
	addw a0, s0, a2
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 60
	add a1, a3, a2
	mulw a2, a1, a4
	subw s0, a0, a2
label7:
	beq s4, zero, label10
	addiw a1, s3, 1
	addiw a2, s4, -1
	mv a0, s1
	li a5, 3
	mv a3, s6
	mv a4, s5
	jal dfs
	xori a1, s2, 4
	li a4, 1000000007
	sltiu a3, a1, 1
	subw a2, s4, a3
	li a3, 1152921497
	mulw a1, a0, a2
	addw a0, s0, a1
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 60
	add a1, a3, a2
	mulw a2, a1, a4
	subw s0, a0, a2
label10:
	beq s6, zero, label13
	addiw a2, s4, 1
	addiw a3, s6, -1
	mv a0, s1
	li a5, 4
	mv a1, s3
	mv a4, s5
	jal dfs
	xori a2, s2, 5
	li a4, 1000000007
	sltiu a3, a2, 1
	subw a1, s6, a3
	li a3, 1152921497
	mulw a2, a0, a1
	addw a0, s0, a2
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 60
	add a1, a3, a2
	mulw a2, a1, a4
	subw s0, a0, a2
label13:
	bne s5, zero, label15
	j label16
label52:
	li a0, 1
	j label19
.p2align 2
.globl main
main:
	addi sp, sp, -120
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, sp, 40
	sd s0, 16(sp)
	sd s2, 24(sp)
	sd s3, 32(sp)
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
	jal getint
	li a4, -4294967296
	li t6, 2939328
	li t2, 163296
	li t0, 9072
	li a2, 18
	li a3, -1
	mv t4, zero
	mv s0, a0
pcrel719:
	auipc a0, %pcrel_hi(dp)
	addi t5, a0, %pcrel_lo(pcrel719)
	mv a0, zero
	mv t3, t5
	bge zero, a2, label206
.p2align 2
label238:
	mv a6, zero
	mv a0, zero
	mv t1, t3
	blt zero, a2, label244
label243:
	addiw t4, t4, 1
	mul a0, t4, t6
	add t3, t5, a0
	blt t4, a2, label238
	j label206
.p2align 2
label244:
	mv a7, zero
	mv a0, zero
	mv a5, t1
	blt zero, a2, label250
	addiw a6, a6, 1
	mul a0, a6, t2
	add t1, t3, a0
	blt a6, a2, label244
	j label243
.p2align 2
label250:
	mv s2, zero
.p2align 2
label202:
	slli a1, s2, 6
	sub s3, a1, s2
	addiw s2, s2, 1
	add.uw a1, a3, a4
	sh3add a0, s3, a5
	sd a1, 0(a0)
	sd a1, 8(a0)
	sd a1, 16(a0)
	sd a1, 24(a0)
	sd a1, 32(a0)
	sd a1, 40(a0)
	sd a1, 48(a0)
	sd a1, 56(a0)
	sd a1, 64(a0)
	sd a1, 72(a0)
	sd a1, 80(a0)
	sd a1, 88(a0)
	sd a1, 96(a0)
	sd a1, 104(a0)
	sd a1, 112(a0)
	sd a1, 120(a0)
	sd a1, 128(a0)
	sd a1, 136(a0)
	sd a1, 144(a0)
	sd a1, 152(a0)
	sd a1, 160(a0)
	sd a1, 168(a0)
	sd a1, 176(a0)
	sd a1, 184(a0)
	sd a1, 192(a0)
	sd a1, 200(a0)
	sd a1, 208(a0)
	sd a1, 216(a0)
	sd a1, 224(a0)
	sd a1, 232(a0)
	sd a1, 240(a0)
	sd a1, 248(a0)
	sd a1, 256(a0)
	sd a1, 264(a0)
	sd a1, 272(a0)
	sd a1, 280(a0)
	sd a1, 288(a0)
	sd a1, 296(a0)
	sd a1, 304(a0)
	sd a1, 312(a0)
	sd a1, 320(a0)
	sd a1, 328(a0)
	sd a1, 336(a0)
	sd a1, 344(a0)
	sd a1, 352(a0)
	sd a1, 360(a0)
	sd a1, 368(a0)
	sd a1, 376(a0)
	sd a1, 384(a0)
	sd a1, 392(a0)
	sd a1, 400(a0)
	sd a1, 408(a0)
	sd a1, 416(a0)
	sd a1, 424(a0)
	sd a1, 432(a0)
	sd a1, 440(a0)
	sd a1, 448(a0)
	sd a1, 456(a0)
	sd a1, 464(a0)
	sd a1, 472(a0)
	sd a1, 480(a0)
	sd a1, 488(a0)
	sd a1, 496(a0)
	blt s2, a2, label202
	addiw a7, a7, 1
	mul a0, a7, t0
	add a5, t1, a0
	blt a7, a2, label250
	addiw a6, a6, 1
	mul a0, a6, t2
	add t1, t3, a0
	blt a6, a2, label244
	addiw t4, t4, 1
	mul a0, t4, t6
	add t3, t5, a0
	blt t4, a2, label238
label206:
	ble s0, zero, label209
	mv s2, zero
.p2align 2
label207:
	jal getint
	addiw s2, s2, 1
	sh2add a0, a0, s1
	lw a2, 0(a0)
	addi a1, a2, 1
	sw a1, 0(a0)
	bgt s0, s2, label207
label209:
	lw a0, 44(sp)
	mv a5, zero
	lw a1, 48(sp)
	lw a2, 52(sp)
	lw a3, 56(sp)
	lw a4, 60(sp)
	jal dfs
	mv s0, a0
	jal putint
	mv a0, s0
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	addi sp, sp, 120
	ret
