.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
dp:
	.zero	52907904
.text
dfs:
.p2align 2
	addi sp, sp, -72
	sd ra, 0(sp)
	sd s1, 8(sp)
	mv s1, a0
	sd s6, 16(sp)
	mv s6, a3
	sd s3, 24(sp)
	mv s3, a1
	sd s4, 32(sp)
	li a1, 2939328
	mv s4, a2
	sd s5, 40(sp)
pcrel193:
	auipc a2, %pcrel_hi(dp)
	mv s5, a4
	addi a0, a2, %pcrel_lo(pcrel193)
	sd s0, 48(sp)
	mul a2, s1, a1
	sd s2, 56(sp)
	li a1, 163296
	add a0, a0, a2
	mv s2, a5
	sd s7, 64(sp)
	mul a2, s3, a1
	li a1, 9072
	add a0, a0, a2
	mul a2, s4, a1
	slli a1, a3, 6
	add a0, a0, a2
	sub a2, a1, a3
	slli a3, a4, 3
	sh3add a0, a2, a0
	sub a1, a3, a4
	sh2add s7, a1, a0
	li a1, -1
	sh2add a2, a5, s7
	lw a0, 0(a2)
	bne a0, a1, label19
	addw a2, s1, s3
	addw a0, s4, a2
	addw a1, s6, a0
	addw a2, a4, a1
	beq a2, zero, label52
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
	li a3, 1152921497
	xori a1, s2, 2
	sltiu a2, a1, 1
	subw a4, s1, a2
	mulw a0, a0, a4
	li a4, 1000000007
	mul a1, a0, a3
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
	sltiu a1, a2, 1
	subw a3, s3, a1
	mulw a2, a0, a3
	li a3, 1152921497
	addw a0, s0, a2
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 60
	add a1, a3, a2
	li a2, 1000000007
	mulw a3, a1, a2
	subw s0, a0, a3
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
	sltiu a3, a1, 1
	subw a2, s4, a3
	li a3, 1152921497
	mulw a1, a0, a2
	addw a0, s0, a1
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 60
	add a1, a3, a2
	li a2, 1000000007
	mulw a3, a1, a2
	subw s0, a0, a3
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
	sltiu a3, a2, 1
	subw a1, s6, a3
	li a3, 1152921497
	mulw a2, a0, a1
	addw a0, s0, a2
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 60
	add a1, a3, a2
	li a2, 1000000007
	mulw a3, a1, a2
	subw s0, a0, a3
label13:
	bne s5, zero, label15
	j label16
label52:
	li a0, 1
	j label19
.globl main
main:
.p2align 2
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
	mv a3, zero
	mv s0, a0
pcrel568:
	auipc a0, %pcrel_hi(dp)
	addi a2, a0, %pcrel_lo(pcrel568)
	li a1, 2939328
	mv a0, zero
	li a1, 18
	mv a4, a2
	blt zero, a1, label238
	bgt s0, zero, label389
	j label209
.p2align 2
label244:
	mv t1, zero
	li a1, 9072
	mv a0, zero
	li a1, 18
	mv t2, t0
	bge zero, a1, label249
.p2align 2
label250:
	mv t3, zero
.p2align 2
label201:
	slli a1, t3, 6
	sub t4, a1, t3
	addiw t3, t3, 1
	li a1, -1
	sh3add a0, t4, t2
	sw a1, 0(a0)
	sw a1, 4(a0)
	sw a1, 8(a0)
	sw a1, 12(a0)
	sw a1, 16(a0)
	sw a1, 20(a0)
	sw a1, 24(a0)
	sw a1, 28(a0)
	sw a1, 32(a0)
	sw a1, 36(a0)
	sw a1, 40(a0)
	sw a1, 44(a0)
	sw a1, 48(a0)
	sw a1, 52(a0)
	sw a1, 56(a0)
	sw a1, 60(a0)
	sw a1, 64(a0)
	sw a1, 68(a0)
	sw a1, 72(a0)
	sw a1, 76(a0)
	sw a1, 80(a0)
	sw a1, 84(a0)
	sw a1, 88(a0)
	sw a1, 92(a0)
	sw a1, 96(a0)
	sw a1, 100(a0)
	sw a1, 104(a0)
	sw a1, 108(a0)
	sw a1, 112(a0)
	sw a1, 116(a0)
	sw a1, 120(a0)
	sw a1, 124(a0)
	sw a1, 128(a0)
	sw a1, 132(a0)
	sw a1, 136(a0)
	sw a1, 140(a0)
	sw a1, 144(a0)
	sw a1, 148(a0)
	sw a1, 152(a0)
	sw a1, 156(a0)
	sw a1, 160(a0)
	sw a1, 164(a0)
	sw a1, 168(a0)
	sw a1, 172(a0)
	sw a1, 176(a0)
	sw a1, 180(a0)
	sw a1, 184(a0)
	sw a1, 188(a0)
	sw a1, 192(a0)
	sw a1, 196(a0)
	sw a1, 200(a0)
	sw a1, 204(a0)
	sw a1, 208(a0)
	sw a1, 212(a0)
	sw a1, 216(a0)
	sw a1, 220(a0)
	sw a1, 224(a0)
	sw a1, 228(a0)
	sw a1, 232(a0)
	sw a1, 236(a0)
	sw a1, 240(a0)
	sw a1, 244(a0)
	sw a1, 248(a0)
	sw a1, 252(a0)
	sw a1, 256(a0)
	sw a1, 260(a0)
	sw a1, 264(a0)
	sw a1, 268(a0)
	sw a1, 272(a0)
	sw a1, 276(a0)
	sw a1, 280(a0)
	sw a1, 284(a0)
	sw a1, 288(a0)
	sw a1, 292(a0)
	sw a1, 296(a0)
	sw a1, 300(a0)
	sw a1, 304(a0)
	sw a1, 308(a0)
	sw a1, 312(a0)
	sw a1, 316(a0)
	sw a1, 320(a0)
	sw a1, 324(a0)
	sw a1, 328(a0)
	sw a1, 332(a0)
	sw a1, 336(a0)
	sw a1, 340(a0)
	sw a1, 344(a0)
	sw a1, 348(a0)
	sw a1, 352(a0)
	sw a1, 356(a0)
	sw a1, 360(a0)
	sw a1, 364(a0)
	sw a1, 368(a0)
	sw a1, 372(a0)
	sw a1, 376(a0)
	sw a1, 380(a0)
	sw a1, 384(a0)
	sw a1, 388(a0)
	sw a1, 392(a0)
	sw a1, 396(a0)
	sw a1, 400(a0)
	sw a1, 404(a0)
	sw a1, 408(a0)
	sw a1, 412(a0)
	sw a1, 416(a0)
	sw a1, 420(a0)
	sw a1, 424(a0)
	sw a1, 428(a0)
	sw a1, 432(a0)
	sw a1, 436(a0)
	sw a1, 440(a0)
	sw a1, 444(a0)
	sw a1, 448(a0)
	sw a1, 452(a0)
	sw a1, 456(a0)
	sw a1, 460(a0)
	sw a1, 464(a0)
	sw a1, 468(a0)
	sw a1, 472(a0)
	sw a1, 476(a0)
	sw a1, 480(a0)
	sw a1, 484(a0)
	sw a1, 488(a0)
	sw a1, 492(a0)
	sw a1, 496(a0)
	sw a1, 500(a0)
	li a0, 18
	blt t3, a0, label201
	addiw t1, t1, 1
	li a1, 9072
	mul a0, t1, a1
	li a1, 18
	add t2, t0, a0
	blt t1, a1, label250
	addiw a5, a5, 1
	li a0, 163296
	mul a1, a5, a0
	li a0, 18
	add t0, a4, a1
	blt a5, a0, label244
	addiw a3, a3, 1
	li a1, 2939328
	mul a0, a3, a1
	li a1, 18
	add a4, a2, a0
	blt a3, a1, label238
	ble s0, zero, label209
label389:
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
label238:
	mv a5, zero
	j label197
.p2align 2
label249:
	addiw a5, a5, 1
	li a0, 163296
	mul a1, a5, a0
	li a0, 18
	add t0, a4, a1
	blt a5, a0, label244
	addiw a3, a3, 1
	li a1, 2939328
	mul a0, a3, a1
	li a1, 18
	add a4, a2, a0
	blt a3, a1, label238
	bgt s0, zero, label389
	j label209
.p2align 2
label197:
	li a0, 163296
	mul a1, a5, a0
	li a0, 18
	add t0, a4, a1
	blt a5, a0, label244
	addiw a3, a3, 1
	li a1, 2939328
	mul a0, a3, a1
	li a1, 18
	add a4, a2, a0
	blt a3, a1, label238
	bgt s0, zero, label389
	j label209
