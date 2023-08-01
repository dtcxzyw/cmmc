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
	addi sp, sp, -112
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, sp, 32
	sd s0, 16(sp)
	sd s2, 24(sp)
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
	jal getint
	li t4, 2939328
	li t0, 163296
	li a4, 9072
	mv t2, zero
	li a2, 18
	mv s0, a0
pcrel571:
	auipc a0, %pcrel_hi(dp)
	addi t3, a0, %pcrel_lo(pcrel571)
	li a0, -1
	mv a1, zero
	mv t1, t3
	bge zero, a2, label206
.p2align 2
label238:
	mv t5, zero
	mv a1, zero
	mv a5, t1
	blt zero, a2, label244
label243:
	addiw t2, t2, 1
	mul a1, t2, t4
	add t1, t3, a1
	blt t2, a2, label238
	j label206
.p2align 2
label244:
	mv t6, zero
	mv a1, zero
	mv a3, a5
	blt zero, a2, label250
	addiw t5, t5, 1
	mul a1, t5, t0
	add a5, t1, a1
	blt t5, a2, label244
	j label243
.p2align 2
label250:
	mv a6, zero
.p2align 2
label202:
	slli a7, a6, 6
	sub s2, a7, a6
	addiw a6, a6, 1
	sh3add a1, s2, a3
	sw a0, 0(a1)
	sw a0, 4(a1)
	sw a0, 8(a1)
	sw a0, 12(a1)
	sw a0, 16(a1)
	sw a0, 20(a1)
	sw a0, 24(a1)
	sw a0, 28(a1)
	sw a0, 32(a1)
	sw a0, 36(a1)
	sw a0, 40(a1)
	sw a0, 44(a1)
	sw a0, 48(a1)
	sw a0, 52(a1)
	sw a0, 56(a1)
	sw a0, 60(a1)
	sw a0, 64(a1)
	sw a0, 68(a1)
	sw a0, 72(a1)
	sw a0, 76(a1)
	sw a0, 80(a1)
	sw a0, 84(a1)
	sw a0, 88(a1)
	sw a0, 92(a1)
	sw a0, 96(a1)
	sw a0, 100(a1)
	sw a0, 104(a1)
	sw a0, 108(a1)
	sw a0, 112(a1)
	sw a0, 116(a1)
	sw a0, 120(a1)
	sw a0, 124(a1)
	sw a0, 128(a1)
	sw a0, 132(a1)
	sw a0, 136(a1)
	sw a0, 140(a1)
	sw a0, 144(a1)
	sw a0, 148(a1)
	sw a0, 152(a1)
	sw a0, 156(a1)
	sw a0, 160(a1)
	sw a0, 164(a1)
	sw a0, 168(a1)
	sw a0, 172(a1)
	sw a0, 176(a1)
	sw a0, 180(a1)
	sw a0, 184(a1)
	sw a0, 188(a1)
	sw a0, 192(a1)
	sw a0, 196(a1)
	sw a0, 200(a1)
	sw a0, 204(a1)
	sw a0, 208(a1)
	sw a0, 212(a1)
	sw a0, 216(a1)
	sw a0, 220(a1)
	sw a0, 224(a1)
	sw a0, 228(a1)
	sw a0, 232(a1)
	sw a0, 236(a1)
	sw a0, 240(a1)
	sw a0, 244(a1)
	sw a0, 248(a1)
	sw a0, 252(a1)
	sw a0, 256(a1)
	sw a0, 260(a1)
	sw a0, 264(a1)
	sw a0, 268(a1)
	sw a0, 272(a1)
	sw a0, 276(a1)
	sw a0, 280(a1)
	sw a0, 284(a1)
	sw a0, 288(a1)
	sw a0, 292(a1)
	sw a0, 296(a1)
	sw a0, 300(a1)
	sw a0, 304(a1)
	sw a0, 308(a1)
	sw a0, 312(a1)
	sw a0, 316(a1)
	sw a0, 320(a1)
	sw a0, 324(a1)
	sw a0, 328(a1)
	sw a0, 332(a1)
	sw a0, 336(a1)
	sw a0, 340(a1)
	sw a0, 344(a1)
	sw a0, 348(a1)
	sw a0, 352(a1)
	sw a0, 356(a1)
	sw a0, 360(a1)
	sw a0, 364(a1)
	sw a0, 368(a1)
	sw a0, 372(a1)
	sw a0, 376(a1)
	sw a0, 380(a1)
	sw a0, 384(a1)
	sw a0, 388(a1)
	sw a0, 392(a1)
	sw a0, 396(a1)
	sw a0, 400(a1)
	sw a0, 404(a1)
	sw a0, 408(a1)
	sw a0, 412(a1)
	sw a0, 416(a1)
	sw a0, 420(a1)
	sw a0, 424(a1)
	sw a0, 428(a1)
	sw a0, 432(a1)
	sw a0, 436(a1)
	sw a0, 440(a1)
	sw a0, 444(a1)
	sw a0, 448(a1)
	sw a0, 452(a1)
	sw a0, 456(a1)
	sw a0, 460(a1)
	sw a0, 464(a1)
	sw a0, 468(a1)
	sw a0, 472(a1)
	sw a0, 476(a1)
	sw a0, 480(a1)
	sw a0, 484(a1)
	sw a0, 488(a1)
	sw a0, 492(a1)
	sw a0, 496(a1)
	sw a0, 500(a1)
	blt a6, a2, label202
	addiw t6, t6, 1
	mul a1, t6, a4
	add a3, a5, a1
	blt t6, a2, label250
	addiw t5, t5, 1
	mul a1, t5, t0
	add a5, t1, a1
	blt t5, a2, label244
	addiw t2, t2, 1
	mul a1, t2, t4
	add t1, t3, a1
	blt t2, a2, label238
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
	lw a0, 36(sp)
	mv a5, zero
	lw a1, 40(sp)
	lw a2, 44(sp)
	lw a3, 48(sp)
	lw a4, 52(sp)
	jal dfs
	mv s0, a0
	jal putint
	mv a0, s0
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 112
	ret
