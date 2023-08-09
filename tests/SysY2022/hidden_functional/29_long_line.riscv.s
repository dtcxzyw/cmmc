.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
lut_fib:
	.zero	16336
.text
.p2align 2
fib:
	# stack usage: CalleeArg[0] Local[0] RegSpill[576] CalleeSaved[104]
	addi sp, sp, -680
pcrel874:
	auipc a1, %pcrel_hi(lut_fib)
	mv a2, zero
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s5, 16(sp)
	sd s2, 24(sp)
	sd s3, 32(sp)
	sd s4, 40(sp)
	sd s1, 48(sp)
	sd s6, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s11, 88(sp)
	sd s10, 96(sp)
	sd a0, 384(sp)
	addi a0, a1, %pcrel_lo(pcrel874)
	mv a1, s0
	jal cmmcCacheLookup
	sd a0, 376(sp)
	lw a1, 12(a0)
	beq a1, zero, label5
	lw a0, 8(a0)
label3:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	ld s1, 48(sp)
	ld s6, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s11, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 680
	ret
label5:
	li a1, 3
	ld s0, 384(sp)
	bge s0, a1, label7
	li a1, 1
	ld a0, 376(sp)
	sw a1, 12(a0)
	sw a1, 8(a0)
	mv a0, a1
	j label3
label7:
	ld s0, 384(sp)
	srliw a2, s0, 31
	add a0, s0, a2
	andi a2, s0, 1
	sraiw a1, a0, 1
	sd a2, 656(sp)
	andi s2, a1, 1
	slli a1, s0, 1
	andn a4, a2, s2
	xori s5, s2, 1
	srli a5, a1, 62
	srli t0, a1, 60
	or a0, s2, a4
	sd a4, 240(sp)
	add a3, s0, a5
	srli a5, a1, 61
	sraiw a2, a3, 2
	add a4, s0, a5
	andi s3, a2, 1
	add a5, s0, t0
	sraiw a2, a4, 3
	andn a3, a0, s3
	xori s4, s3, 1
	srli t0, a1, 59
	or a0, s3, a3
	sd a3, 208(sp)
	andi a3, a2, 1
	andn a2, a0, a3
	xori a4, a3, 1
	sd a3, 416(sp)
	or a0, a3, a2
	sd a4, 392(sp)
	add a3, s0, t0
	sd a2, 176(sp)
	sraiw a2, a5, 4
	andi a4, a2, 1
	andn a2, a0, a4
	xori t1, a4, 1
	sd a4, 360(sp)
	or a0, a4, a2
	sd t1, 368(sp)
	sd a2, 152(sp)
	sraiw a2, a3, 5
	andi a5, a2, 1
	andn t0, a0, a5
	xori t2, a5, 1
	sd a5, 336(sp)
	srli a0, a1, 58
	or a2, a5, t0
	add a3, s0, a0
	sd t2, 344(sp)
	srli a5, a1, 57
	sraiw a4, a3, 6
	sd t0, 120(sp)
	andi t0, a4, 1
	andn a0, a2, t0
	xori t3, t0, 1
	add a4, s0, a5
	or a3, t0, a0
	sd t0, 296(sp)
	srli a5, a1, 56
	sraiw a2, a4, 7
	sd t3, 304(sp)
	andi t1, a2, 1
	andn a2, a3, t1
	xori t4, t1, 1
	sd t1, 272(sp)
	add a3, s0, a5
	or a4, t1, a2
	sraiw t0, a3, 8
	sd t4, 280(sp)
	srli t1, a1, 55
	andi t2, t0, 1
	andn a3, a4, t2
	xori t5, t2, 1
	sd t2, 448(sp)
	add a4, s0, t1
	or a5, t2, a3
	sraiw t0, a4, 9
	sd t5, 248(sp)
	srli t2, a1, 54
	andi t3, t0, 1
	add t1, s0, t2
	andn a4, a5, t3
	xori t6, t3, 1
	sd t3, 472(sp)
	srli t2, a1, 53
	sraiw a5, t1, 10
	or t0, t3, a4
	sd t6, 464(sp)
	andi t4, a5, 1
	add t3, s0, t2
	andn a5, t0, t4
	xori t6, t4, 1
	sraiw t0, t3, 11
	or t1, t4, a5
	srli t3, a1, 52
	sd t4, 512(sp)
	add t4, s0, t3
	sd t6, 496(sp)
	andi t6, t0, 1
	xori a7, t6, 1
	andn t0, t1, t6
	sd t6, 544(sp)
	sraiw t1, t4, 12
	or t2, t6, t0
	andi t5, t1, 1
	sd a7, 528(sp)
	andn t1, t2, t5
	xori a6, t5, 1
	or t3, t5, t1
	sd t5, 584(sp)
	sd a6, 560(sp)
	srli a6, a1, 51
	add t4, s0, a6
	sraiw t2, t4, 13
	srli t4, a1, 50
	andi t6, t2, 1
	andn t2, t3, t6
	xori a6, t6, 1
	sd t6, 624(sp)
	or a7, t6, t2
	sd a6, 608(sp)
	add a6, s0, t4
	sraiw t3, a6, 14
	andi t5, t3, 1
	andn t3, a7, t5
	xori a6, t5, 1
	sd t5, 664(sp)
	srli a7, a1, 49
	or t4, t5, t3
	sd a6, 632(sp)
	add a6, s0, a7
	sraiw t5, a6, 15
	andi t6, t5, 1
	andn a7, t4, t6
	xori a6, t6, 1
	sd t6, 224(sp)
	or t4, t3, a6
	sd a6, 232(sp)
	ld t5, 664(sp)
	ld a6, 632(sp)
	or t6, t5, t4
	or t5, t2, a6
	andn a1, t6, a7
	ld t6, 624(sp)
	ld a6, 608(sp)
	or a7, t6, t5
	ld t5, 584(sp)
	or t6, t1, a6
	andn s1, a7, t3
	ld a6, 560(sp)
	or a7, t5, t6
	sh1add t4, a1, s1
	ld t6, 544(sp)
	andn a1, a7, t2
	ld a7, 528(sp)
	or t2, t0, a6
	sh1add t3, t4, a1
	or t4, t6, t2
	or t2, a5, a7
	andn t5, t4, t1
	ld t4, 512(sp)
	sh1add a1, t3, t5
	ld t6, 496(sp)
	or t5, t4, t2
	andn t3, t5, t0
	or t0, a4, t6
	sh1add t1, a1, t3
	ld t3, 472(sp)
	ld t6, 464(sp)
	or t2, t3, t0
	or t0, a3, t6
	andn t4, t2, a5
	ld t2, 448(sp)
	sh1add a1, t1, t4
	ld t5, 248(sp)
	or t3, t2, t0
	andn t1, t3, a4
	or a4, a2, t5
	sh1add a5, a1, t1
	ld t1, 272(sp)
	ld t4, 280(sp)
	or t0, t1, a4
	or a4, a0, t4
	andn t2, t0, a3
	ld t0, 296(sp)
	sh1add a1, a5, t2
	ld t3, 304(sp)
	or a5, t0, a4
	ld t0, 120(sp)
	andn t1, a5, a2
	ld a5, 336(sp)
	or a2, t0, t3
	sh1add a3, a1, t1
	ld t2, 344(sp)
	or a4, a5, a2
	ld a2, 152(sp)
	andn t0, a4, a0
	ld a4, 360(sp)
	or a0, a2, t2
	sh1add a1, a3, t0
	ld t0, 120(sp)
	or a3, a4, a0
	ld t1, 368(sp)
	andn a5, a3, t0
	ld a2, 176(sp)
	sh1add a0, a1, a5
	ld a3, 416(sp)
	or a1, a2, t1
	ld a2, 152(sp)
	or a5, a3, a1
	ld a4, 392(sp)
	andn t0, a5, a2
	ld a3, 208(sp)
	sh1add a1, a0, t0
	ld a2, 176(sp)
	or a0, a3, a4
	ld a4, 240(sp)
	or a5, s3, a0
	andn a3, a5, a2
	sh1add a0, a1, a3
	ld a3, 208(sp)
	or a1, a4, s4
	or a2, s2, a1
	andn a4, a2, a3
	ld a2, 656(sp)
	sh1add a1, a0, a4
	ld a4, 240(sp)
	or a0, a2, s5
	andn a5, a0, a4
	xori a4, a2, 1
	sh1add a3, a1, a5
	sh1add a0, a3, a4
	jal fib
	mv s1, a0
	srliw a0, a0, 31
	add a1, s1, a0
	andn a0, s2, s3
	sraiw a2, a1, 1
	andi a3, a2, 1
	or a2, s3, a0
	sd a3, 168(sp)
	ld a3, 416(sp)
	ld a4, 360(sp)
	andn a1, a2, a3
	or a5, a3, a1
	andn a2, a5, a4
	ld a5, 336(sp)
	or t0, a4, a2
	andn a3, t0, a5
	ld t0, 296(sp)
	or t1, a5, a3
	andn a4, t1, t0
	ld t1, 272(sp)
	or t2, t0, a4
	andn a5, t2, t1
	ld t2, 448(sp)
	or t3, t1, a5
	andn t0, t3, t2
	ld t3, 472(sp)
	or t4, t2, t0
	andn t1, t4, t3
	ld t4, 512(sp)
	or t5, t3, t1
	ld t6, 544(sp)
	andn t2, t5, t4
	ld t5, 584(sp)
	or a6, t4, t2
	andn t3, a6, t6
	or a7, t6, t3
	ld t6, 624(sp)
	andn t4, a7, t5
	or a6, t5, t4
	ld t5, 664(sp)
	andn a7, a6, t6
	or a6, t6, a7
	ld t6, 224(sp)
	andn s6, a6, t5
	ld a6, 232(sp)
	or s7, t5, s6
	andn s8, s7, t6
	or t6, s6, a6
	ld a6, 632(sp)
	or s9, t5, t6
	ld t6, 624(sp)
	or t5, a7, a6
	andn s7, s9, s8
	or a6, t6, t5
	andn s8, a6, s6
	ld a6, 608(sp)
	sh1add t6, s7, s8
	ld t5, 584(sp)
	or s6, t4, a6
	or a6, t5, s6
	andn s7, a6, a7
	ld a6, 560(sp)
	sh1add t5, t6, s7
	or a7, t3, a6
	ld t6, 544(sp)
	or s7, t6, a7
	ld a7, 528(sp)
	andn s6, s7, t4
	or t6, t2, a7
	sh1add a6, t5, s6
	ld t4, 512(sp)
	or a7, t4, t6
	ld t6, 496(sp)
	andn s6, a7, t3
	ld t3, 472(sp)
	or a7, t1, t6
	sh1add t5, a6, s6
	ld t6, 464(sp)
	or a6, t3, a7
	andn s6, a6, t2
	ld t2, 448(sp)
	or a6, t0, t6
	sh1add t4, t5, s6
	or t5, t2, a6
	andn a7, t5, t1
	ld t5, 248(sp)
	sh1add t3, t4, a7
	ld t1, 272(sp)
	or t6, a5, t5
	ld t4, 280(sp)
	or a7, t1, t6
	or t5, a4, t4
	andn a6, a7, t0
	ld t0, 296(sp)
	sh1add t2, t3, a6
	or t6, t0, t5
	ld t3, 304(sp)
	andn a6, t6, a5
	or t4, a3, t3
	sh1add t1, t2, a6
	ld a5, 336(sp)
	ld t2, 344(sp)
	or t5, a5, t4
	or t3, a2, t2
	andn t6, t5, a4
	ld a4, 360(sp)
	sh1add t0, t1, t6
	or t4, a4, t3
	ld t1, 368(sp)
	andn t2, t4, a3
	or a4, a1, t1
	sh1add a5, t0, t2
	ld a3, 416(sp)
	or t2, a3, a4
	ld a4, 392(sp)
	andn t1, t2, a2
	or t2, a0, a4
	sh1add t0, a5, t1
	or a3, s3, t2
	or a5, s2, s4
	andn t1, a3, a1
	andn a3, a5, a0
	sh1add a2, t0, t1
	andi a5, s0, 1
	sh1add a4, a2, a3
	sh1add a1, a4, s5
	sh1add a0, a1, a5
	jal fib
	srliw a1, a0, 31
	sd a0, 520(sp)
	add a5, a0, a1
	ld a3, 168(sp)
	sraiw a4, a5, 1
	andi a2, a4, 1
	or a0, a3, a2
	and a1, a3, a2
	andi a3, s1, 1
	andn a5, a0, a1
	and a4, a5, a3
	sd a5, 432(sp)
	sd a3, 408(sp)
	ld a0, 520(sp)
	andi a2, a0, 1
	slli a0, s1, 1
	and a3, a4, a2
	srli a4, a0, 62
	or a5, a1, a3
	sd a2, 400(sp)
	add a2, s1, a4
	sd a3, 424(sp)
	sraiw a3, a2, 2
	sd a5, 352(sp)
	andi a1, a3, 1
	sd a0, 600(sp)
	ld a0, 520(sp)
	slli s8, a0, 1
	srli a3, s8, 62
	add t0, a0, a3
	sd s8, 592(sp)
	sraiw a5, t0, 2
	andi a2, a5, 1
	and a3, a1, a2
	or a4, a1, a2
	sd a4, 328(sp)
	ld a5, 352(sp)
	sd a3, 312(sp)
	and a0, a5, a4
	andn a4, a0, a3
	or a5, a3, a4
	sd a4, 320(sp)
	sd a5, 288(sp)
	ld a0, 600(sp)
	srli a4, a0, 61
	ld a0, 520(sp)
	add a3, s1, a4
	sraiw a2, a3, 3
	srli a3, s8, 61
	andi a1, a2, 1
	add a5, a0, a3
	sraiw t0, a5, 3
	andi a2, t0, 1
	and a3, a1, a2
	or a4, a1, a2
	sd a4, 264(sp)
	ld a5, 288(sp)
	sd a3, 440(sp)
	and a0, a5, a4
	andn a2, a0, a3
	or a5, a3, a2
	sd a2, 256(sp)
	sd a5, 456(sp)
	ld a0, 600(sp)
	srli a4, a0, 60
	ld a0, 520(sp)
	add a3, s1, a4
	sraiw a2, a3, 4
	srli a3, s8, 60
	andi a1, a2, 1
	add t0, a0, a3
	sraiw a5, t0, 4
	andi a2, a5, 1
	and a3, a1, a2
	or a4, a1, a2
	sd a4, 480(sp)
	ld a5, 456(sp)
	sd a3, 504(sp)
	and a0, a5, a4
	andn a2, a0, a3
	or a4, a3, a2
	sd a2, 488(sp)
	sd a4, 536(sp)
	ld a0, 600(sp)
	srli a3, a0, 59
	ld a0, 520(sp)
	add a2, s1, a3
	srli a3, s8, 59
	sraiw a4, a2, 5
	add t0, a0, a3
	andi a1, a4, 1
	sraiw a4, t0, 5
	andi a2, a4, 1
	and a3, a1, a2
	or a5, a1, a2
	sd a5, 552(sp)
	ld a4, 536(sp)
	sd a3, 576(sp)
	and a0, a4, a5
	andn a2, a0, a3
	or a4, a3, a2
	sd a2, 568(sp)
	sd a4, 616(sp)
	ld a0, 600(sp)
	srli a3, a0, 58
	ld a0, 520(sp)
	add a2, s1, a3
	srli a3, s8, 58
	sraiw a4, a2, 6
	andi a1, a4, 1
	add a4, a0, a3
	sraiw t0, a4, 6
	andi a2, t0, 1
	and a3, a1, a2
	or a5, a1, a2
	sd a5, 640(sp)
	ld a4, 616(sp)
	sd a3, 672(sp)
	and a0, a4, a5
	andn a2, a0, a3
	or a5, a3, a2
	sd a2, 648(sp)
	sd a5, 216(sp)
	ld a0, 600(sp)
	srli a2, a0, 57
	ld a0, 520(sp)
	add a3, s1, a2
	sraiw a4, a3, 7
	srli a3, s8, 57
	andi a1, a4, 1
	add a5, a0, a3
	sraiw t0, a5, 7
	andi a2, t0, 1
	and a3, a1, a2
	or a4, a1, a2
	sd a4, 200(sp)
	ld a5, 216(sp)
	sd a3, 184(sp)
	and a0, a5, a4
	andn a2, a0, a3
	or a4, a3, a2
	sd a2, 192(sp)
	sd a4, 160(sp)
	ld a0, 600(sp)
	srli a3, a0, 56
	ld a0, 520(sp)
	add a2, s1, a3
	srli a3, s8, 56
	sraiw a4, a2, 8
	andi a1, a4, 1
	add a4, a0, a3
	sraiw t0, a4, 8
	andi a2, t0, 1
	and a3, a1, a2
	or a5, a1, a2
	sd a5, 144(sp)
	ld a4, 160(sp)
	sd a3, 128(sp)
	and a0, a4, a5
	andn a2, a0, a3
	or t0, a3, a2
	sd a2, 136(sp)
	sd t0, 112(sp)
	ld a0, 600(sp)
	srli a1, a0, 55
	ld a0, 520(sp)
	add a3, s1, a1
	srli a1, s8, 55
	sraiw a2, a3, 9
	add a3, a0, a1
	andi a4, a2, 1
	sraiw a2, a3, 9
	andi a5, a2, 1
	and a2, a4, a5
	or a0, a4, a5
	and t1, t0, a0
	andn a1, t1, a2
	sd a0, 104(sp)
	or a3, a2, a1
	ld a0, 600(sp)
	srli t0, a0, 54
	ld a0, 520(sp)
	add a4, s1, t0
	sraiw a5, a4, 10
	srli a4, s8, 54
	andi t2, a5, 1
	add a5, a0, a4
	ld a0, 600(sp)
	sraiw t0, a5, 10
	andi t3, t0, 1
	and t0, t2, t3
	or a4, t2, t3
	srli t2, a0, 53
	and t4, a3, a4
	ld a0, 520(sp)
	andn a5, t4, t0
	add t4, s1, t2
	or t1, t0, a5
	srli t2, s8, 53
	sraiw t3, t4, 11
	add t4, a0, t2
	andi t6, t3, 1
	ld a0, 600(sp)
	sraiw t3, t4, 11
	andi a6, t3, 1
	and t4, t6, a6
	or t2, t6, a6
	srli t6, a0, 52
	and a7, t1, t2
	ld a0, 520(sp)
	add a6, s1, t6
	andn t3, a7, t4
	srli t6, s8, 52
	sraiw a7, a6, 12
	or t5, t4, t3
	andi s2, a7, 1
	add a7, a0, t6
	sraiw a6, a7, 12
	andi a0, a6, 1
	and a7, s2, a0
	or t6, s2, a0
	ld a0, 600(sp)
	and s3, t5, t6
	andn a6, s3, a7
	srli s3, a0, 51
	or s0, a7, a6
	add s2, s1, s3
	sraiw a0, s2, 13
	srli s2, s8, 51
	andi s6, a0, 1
	ld a0, 520(sp)
	add s3, a0, s2
	sraiw s4, s3, 13
	andi a0, s4, 1
	and s4, s6, a0
	or s2, s6, a0
	ld a0, 600(sp)
	and s7, s0, s2
	andn s3, s7, s4
	srli s7, a0, 50
	or s5, s4, s3
	add s6, s1, s7
	sraiw a0, s6, 14
	srli s6, s8, 50
	andi s11, a0, 1
	ld a0, 520(sp)
	add s9, a0, s6
	sraiw s7, s9, 14
	andi a0, s7, 1
	and s9, s11, a0
	or s6, s11, a0
	ld a0, 600(sp)
	and s8, s5, s6
	andn s7, s8, s9
	srli s8, a0, 49
	or s10, s9, s7
	add a0, s1, s8
	ld s8, 592(sp)
	sraiw a0, a0, 15
	srli s1, s8, 49
	andi s11, a0, 1
	ld a0, 520(sp)
	add s8, a0, s1
	sraiw a0, s8, 15
	andi s1, a0, 1
	or a0, s11, s1
	and s1, s11, s1
	and s8, s10, a0
	andn s11, a0, s1
	andn s8, s8, s1
	or a0, s10, s11
	andn s1, a0, s8
	andn a0, s6, s9
	or s10, s5, a0
	andn s5, s2, s4
	andn s8, s10, s7
	andn s2, t6, a7
	or s7, s0, s5
	sh1add a0, s1, s8
	andn a7, t2, t4
	or s0, t5, s2
	andn s6, s7, s3
	andn t4, a4, t0
	andn t6, s0, a6
	sh1add s1, a0, s6
	sh1add a0, s1, t6
	or t6, t1, a7
	andn t5, t6, t3
	or t3, a3, t4
	sh1add t2, a0, t5
	andn t1, t3, a5
	ld a0, 104(sp)
	sh1add a4, t2, t1
	ld t0, 112(sp)
	andn a3, a0, a2
	ld a5, 144(sp)
	or t1, t0, a3
	ld a3, 128(sp)
	andn a2, t1, a1
	andn a1, a5, a3
	sh1add a0, a4, a2
	ld a4, 160(sp)
	ld a2, 136(sp)
	or t0, a4, a1
	ld a4, 200(sp)
	andn a5, t0, a2
	ld a3, 184(sp)
	sh1add a1, a0, a5
	ld a5, 216(sp)
	andn a0, a4, a3
	ld a2, 192(sp)
	or t0, a5, a0
	ld a5, 640(sp)
	andn a4, t0, a2
	ld a3, 672(sp)
	sh1add a0, a1, a4
	ld a4, 616(sp)
	andn a1, a5, a3
	ld a2, 648(sp)
	or t0, a4, a1
	ld a5, 552(sp)
	andn t1, t0, a2
	ld a3, 576(sp)
	sh1add a1, a0, t1
	ld a4, 536(sp)
	andn a0, a5, a3
	ld a2, 568(sp)
	or t0, a4, a0
	ld a4, 480(sp)
	andn a5, t0, a2
	ld a3, 504(sp)
	sh1add a0, a1, a5
	ld a5, 456(sp)
	andn a1, a4, a3
	ld a2, 488(sp)
	or t0, a5, a1
	ld a4, 264(sp)
	andn t1, t0, a2
	ld a3, 440(sp)
	sh1add a1, a0, t1
	ld a5, 288(sp)
	andn a0, a4, a3
	ld a2, 256(sp)
	or t0, a5, a0
	ld a4, 328(sp)
	andn t1, t0, a2
	ld a3, 312(sp)
	sh1add a0, a1, t1
	ld a5, 352(sp)
	andn a1, a4, a3
	ld a4, 320(sp)
	or t0, a5, a1
	ld a2, 400(sp)
	andn t1, t0, a4
	ld a3, 408(sp)
	sh1add a1, a0, t1
	ld a5, 432(sp)
	and a0, a3, a2
	ld a3, 424(sp)
	or t0, a5, a0
	andn t1, t0, a3
	ld a3, 408(sp)
	sh1add a4, a1, t1
	or t0, a3, a2
	li a2, 1
	andn a5, t0, a0
	ld a0, 376(sp)
	sh1add a1, a4, a5
	sw a2, 12(a0)
	sw a1, 8(a0)
	mv a0, a1
	j label3
.p2align 2
.globl main
main:
	addi sp, sp, -32
	sd ra, 0(sp)
	sd s0, 8(sp)
	li s0, 1
	sd s1, 16(sp)
	li s1, 21
	sd s2, 24(sp)
.p2align 2
label876:
	li a0, 102
	jal putch
	li a0, 105
	jal putch
	li a0, 98
	jal putch
	li a0, 40
	jal putch
	mv a0, s0
	jal putint
	mv a0, s0
	jal fib
	mv s2, a0
	li a0, 41
	jal putch
	li a0, 32
	jal putch
	li a0, 61
	jal putch
	li a0, 32
	jal putch
	mv a0, s2
	jal putint
	li a0, 10
	jal putch
	addiw s0, s0, 1
	blt s0, s1, label876
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 32
	ret
