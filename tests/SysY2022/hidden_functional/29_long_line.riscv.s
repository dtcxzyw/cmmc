.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
fib:
	addi sp, sp, -664
	li a1, 3
	sd ra, 0(sp)
	sd s1, 8(sp)
	mv s1, a0
	sd s6, 16(sp)
	sd s2, 24(sp)
	sd s3, 32(sp)
	sd s5, 40(sp)
	sd s0, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	sd a0, 368(sp)
	bge a0, a1, label4
	li a0, 1
label2:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s5, 40(sp)
	ld s0, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 664
	ret
label4:
	ld s1, 368(sp)
	srliw a0, s1, 31
	add a1, s1, a0
	sraiw a2, a1, 1
	slli a1, s1, 1
	andi s2, a2, 1
	srli a5, a1, 62
	andi a2, s1, 1
	xori s6, s2, 1
	andn a4, a2, s2
	sd a2, 632(sp)
	or a0, s2, a4
	add a2, s1, a5
	sd a4, 656(sp)
	srli a5, a1, 61
	sraiw a3, a2, 2
	add a4, s1, a5
	andi s3, a3, 1
	srli a5, a1, 60
	sraiw a2, a4, 3
	andn a3, a0, s3
	xori s5, s3, 1
	add t0, s1, a5
	or a0, s3, a3
	sd a3, 208(sp)
	andi a3, a2, 1
	andn a2, a0, a3
	xori s4, a3, 1
	sd a3, 392(sp)
	or a0, a3, a2
	sd a2, 176(sp)
	sraiw a2, t0, 4
	srli t0, a1, 59
	andi a4, a2, 1
	add a3, s1, t0
	andn a2, a0, a4
	xori t1, a4, 1
	or a0, a4, a2
	sd a4, 360(sp)
	sd t1, 416(sp)
	sd a2, 152(sp)
	sraiw a2, a3, 5
	andi a5, a2, 1
	andn t0, a0, a5
	xori t2, a5, 1
	sd a5, 336(sp)
	srli a0, a1, 58
	or a2, a5, t0
	add a4, s1, a0
	sd t2, 344(sp)
	sraiw a3, a4, 6
	sd t0, 120(sp)
	andi t0, a3, 1
	andn a0, a2, t0
	xori t3, t0, 1
	sd t0, 296(sp)
	srli a2, a1, 57
	or a3, t0, a0
	add a4, s1, a2
	sd t3, 304(sp)
	srli t0, a1, 56
	sraiw a5, a4, 7
	andi t1, a5, 1
	add a5, s1, t0
	andn a2, a3, t1
	xori t4, t1, 1
	sraiw a3, a5, 8
	or a4, t1, a2
	andi t2, a3, 1
	sd t1, 272(sp)
	andn a3, a4, t2
	xori t5, t2, 1
	srli a4, a1, 55
	or a5, t2, a3
	add t1, s1, a4
	sd t4, 280(sp)
	sraiw t0, t1, 9
	sd t2, 424(sp)
	srli t1, a1, 54
	andi t3, t0, 1
	sd t5, 248(sp)
	andn a4, a5, t3
	xori t6, t3, 1
	add a5, s1, t1
	or t0, t3, a4
	sraiw t2, a5, 10
	sd t3, 448(sp)
	andi t4, t2, 1
	sd t6, 440(sp)
	srli t2, a1, 53
	andn a5, t0, t4
	xori t6, t4, 1
	sd t4, 488(sp)
	add t3, s1, t2
	or t1, t4, a5
	sraiw t0, t3, 11
	sd t6, 472(sp)
	srli t3, a1, 52
	andi t6, t0, 1
	add t4, s1, t3
	andn t0, t1, t6
	xori a6, t6, 1
	sd t6, 520(sp)
	sraiw t1, t4, 12
	or t2, t6, t0
	andi t5, t1, 1
	sd a6, 504(sp)
	andn t1, t2, t5
	xori t4, t5, 1
	srli a6, a1, 51
	sd t5, 560(sp)
	or t3, t5, t1
	add t6, s1, a6
	sd t4, 536(sp)
	sraiw t2, t6, 13
	andi t4, t2, 1
	xori t6, t4, 1
	andn t2, t3, t4
	sd t4, 600(sp)
	or a7, t4, t2
	sd t6, 584(sp)
	srli t6, a1, 50
	add a6, s1, t6
	sraiw t3, a6, 14
	andi t5, t3, 1
	andn t3, a7, t5
	xori t6, t5, 1
	sd t5, 640(sp)
	srli a7, a1, 49
	or a6, t5, t3
	sd t6, 608(sp)
	add t6, s1, a7
	sraiw t5, t6, 15
	andi t4, t5, 1
	andn a1, a6, t4
	xori t6, t4, 1
	sd t4, 224(sp)
	or a7, t3, t6
	sd t6, 232(sp)
	ld t5, 640(sp)
	ld t6, 608(sp)
	or t4, t5, a7
	or t5, t2, t6
	andn a6, t4, a1
	ld t4, 600(sp)
	ld t6, 584(sp)
	or a7, t4, t5
	ld t5, 560(sp)
	or t4, t1, t6
	andn s0, a7, t3
	sh1add a1, a6, s0
	or a6, t5, t4
	ld t4, 536(sp)
	andn t6, a6, t2
	or t2, t0, t4
	sh1add t3, a1, t6
	ld t6, 520(sp)
	ld a6, 504(sp)
	or t5, t6, t2
	or t2, a5, a6
	andn t4, t5, t1
	sh1add a1, t3, t4
	ld t4, 488(sp)
	ld t6, 472(sp)
	or t5, t4, t2
	andn t3, t5, t0
	or t0, a4, t6
	sh1add t1, a1, t3
	ld t3, 448(sp)
	ld t6, 440(sp)
	or t2, t3, t0
	or t0, a3, t6
	andn t4, t2, a5
	ld t2, 424(sp)
	sh1add a1, t1, t4
	ld t5, 248(sp)
	or t1, t2, t0
	andn t3, t1, a4
	ld t1, 272(sp)
	or a4, a2, t5
	sh1add a5, a1, t3
	ld t4, 280(sp)
	or t2, t1, a4
	or a4, a0, t4
	andn t0, t2, a3
	sh1add a1, a5, t0
	ld t0, 296(sp)
	ld t3, 304(sp)
	or t1, t0, a4
	ld t0, 120(sp)
	andn a5, t1, a2
	or a2, t0, t3
	sh1add a3, a1, a5
	ld a5, 336(sp)
	ld t2, 344(sp)
	or a4, a5, a2
	ld a2, 152(sp)
	andn t0, a4, a0
	ld a4, 360(sp)
	or a0, a2, t2
	sh1add a1, a3, t0
	ld t0, 120(sp)
	or a3, a4, a0
	ld t1, 416(sp)
	andn a5, a3, t0
	ld a2, 176(sp)
	sh1add a0, a1, a5
	ld a3, 392(sp)
	or a1, a2, t1
	ld a2, 152(sp)
	or a4, a3, a1
	ld a3, 208(sp)
	andn a5, a4, a2
	ld a2, 176(sp)
	sh1add a1, a0, a5
	or a0, a3, s4
	or a4, s3, a0
	andn a3, a4, a2
	ld a4, 656(sp)
	sh1add a0, a1, a3
	ld a3, 208(sp)
	or a1, a4, s5
	or a2, s2, a1
	andn a4, a2, a3
	ld a2, 632(sp)
	sh1add a1, a0, a4
	ld a4, 656(sp)
	or a0, a2, s6
	andn a5, a0, a4
	xori a4, a2, 1
	sh1add a3, a1, a5
	sh1add a0, a3, a4
	jal fib
	srliw a3, a0, 31
	mv s0, a0
	add a0, a0, a3
	sraiw a1, a0, 1
	andn a0, s2, s3
	andi a2, a1, 1
	or a4, s3, a0
	sd a2, 168(sp)
	ld a3, 392(sp)
	andn a1, a4, a3
	ld a4, 360(sp)
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
	ld t2, 424(sp)
	or t3, t1, a5
	andn t0, t3, t2
	ld t3, 448(sp)
	or t4, t2, t0
	andn t1, t4, t3
	ld t4, 488(sp)
	or t5, t3, t1
	ld t6, 520(sp)
	andn t2, t5, t4
	ld t5, 560(sp)
	or a6, t4, t2
	andn t3, a6, t6
	or t4, t6, t3
	andn a6, t4, t5
	ld t4, 600(sp)
	or t6, t5, a6
	ld t5, 640(sp)
	andn a7, t6, t4
	or t6, t4, a7
	ld t4, 224(sp)
	andn s7, t6, t5
	ld t6, 232(sp)
	or s8, t5, s7
	andn s9, s8, t4
	or t4, s7, t6
	ld t6, 608(sp)
	or s10, t5, t4
	ld t4, 600(sp)
	or t5, a7, t6
	andn s8, s10, s9
	or t6, t4, t5
	andn s10, t6, s7
	ld t6, 584(sp)
	sh1add s9, s8, s10
	ld t5, 560(sp)
	or t4, a6, t6
	or s7, t5, t4
	ld t4, 536(sp)
	andn t6, s7, a7
	or a7, t3, t4
	sh1add t5, s9, t6
	ld t6, 520(sp)
	or t4, t6, a7
	andn s7, t4, a6
	ld a6, 504(sp)
	sh1add a7, t5, s7
	ld t4, 488(sp)
	or t6, t2, a6
	or a6, t4, t6
	ld t6, 472(sp)
	andn s7, a6, t3
	ld t3, 448(sp)
	or a6, t1, t6
	sh1add t5, a7, s7
	ld t6, 440(sp)
	or a7, t3, a6
	or a6, t0, t6
	andn s7, a7, t2
	ld t2, 424(sp)
	sh1add t4, t5, s7
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
	ld t3, 304(sp)
	or a6, t0, t5
	or t4, a3, t3
	andn t6, a6, a5
	ld a5, 336(sp)
	sh1add t1, t2, t6
	ld t2, 344(sp)
	or t6, a5, t4
	or t3, a2, t2
	andn t5, t6, a4
	ld a4, 360(sp)
	sh1add t0, t1, t5
	or t4, a4, t3
	ld t1, 416(sp)
	andn t5, t4, a3
	or t2, a1, t1
	sh1add a5, t0, t5
	ld a3, 392(sp)
	or t3, a3, t2
	or a3, a0, s4
	andn t0, t3, a2
	or t1, s3, a3
	sh1add a4, a5, t0
	or a3, s2, s5
	andn t0, t1, a1
	andn a5, a3, a0
	sh1add a2, a4, t0
	andi a3, s1, 1
	sh1add a4, a2, a5
	sh1add a1, a4, s6
	sh1add a0, a1, a3
	jal fib
	mv t4, a0
	sd a0, 496(sp)
	srliw a0, a0, 31
	ld a2, 168(sp)
	add a4, t4, a0
	sraiw a3, a4, 1
	andi a4, s0, 1
	andi a1, a3, 1
	or a3, a2, a1
	and a0, a2, a1
	andn a5, a3, a0
	andi a3, t4, 1
	and a1, a5, a4
	slli t4, s0, 1
	sd a5, 408(sp)
	sd a4, 384(sp)
	and a4, a1, a3
	sd a3, 376(sp)
	or a3, a0, a4
	sd a4, 400(sp)
	sd a3, 352(sp)
	srli a3, t4, 62
	sd t4, 576(sp)
	add a1, s0, a3
	ld t4, 496(sp)
	sraiw a2, a1, 2
	slli s8, t4, 1
	andi a0, a2, 1
	srli a2, s8, 62
	add a5, t4, a2
	sd s8, 568(sp)
	sraiw a3, a5, 2
	andi a1, a3, 1
	and a2, a0, a1
	or a4, a0, a1
	sd a4, 328(sp)
	ld a3, 352(sp)
	sd a2, 312(sp)
	and a5, a3, a4
	andn a1, a5, a2
	or a4, a2, a1
	sd a1, 320(sp)
	sd a4, 288(sp)
	ld t4, 576(sp)
	srli a3, t4, 61
	ld t4, 496(sp)
	add a2, s0, a3
	sraiw a1, a2, 3
	srli a2, s8, 61
	andi a0, a1, 1
	add a5, t4, a2
	sraiw a4, a5, 3
	andi a1, a4, 1
	and a2, a0, a1
	or a3, a0, a1
	sd a3, 264(sp)
	ld a4, 288(sp)
	sd a2, 240(sp)
	and a5, a4, a3
	andn a3, a5, a2
	or a5, a2, a3
	sd a3, 256(sp)
	sd a5, 432(sp)
	ld t4, 576(sp)
	srli a3, t4, 60
	ld t4, 496(sp)
	add a2, s0, a3
	sraiw a1, a2, 4
	srli a2, s8, 60
	andi a0, a1, 1
	add a3, t4, a2
	sraiw a5, a3, 4
	andi a1, a5, 1
	and a3, a0, a1
	or a4, a0, a1
	sd a4, 456(sp)
	ld a5, 432(sp)
	sd a3, 480(sp)
	and t0, a5, a4
	andn a2, t0, a3
	or a5, a3, a2
	sd a2, 464(sp)
	sd a5, 512(sp)
	ld t4, 576(sp)
	srli a1, t4, 59
	ld t4, 496(sp)
	add a2, s0, a1
	sraiw a3, a2, 5
	srli a2, s8, 59
	andi a0, a3, 1
	add a3, t4, a2
	sraiw a5, a3, 5
	andi a1, a5, 1
	and a3, a0, a1
	or a4, a0, a1
	sd a4, 528(sp)
	ld a5, 512(sp)
	sd a3, 552(sp)
	and a2, a5, a4
	andn a1, a2, a3
	or a4, a3, a1
	sd a1, 544(sp)
	sd a4, 592(sp)
	ld t4, 576(sp)
	srli a1, t4, 58
	ld t4, 496(sp)
	add a2, s0, a1
	sraiw a3, a2, 6
	srli a2, s8, 58
	andi a0, a3, 1
	add a4, t4, a2
	sraiw a5, a4, 6
	andi a1, a5, 1
	and a2, a0, a1
	or a3, a0, a1
	sd a3, 616(sp)
	ld a4, 592(sp)
	sd a2, 648(sp)
	and a5, a4, a3
	andn a0, a5, a2
	or a3, a2, a0
	sd a0, 624(sp)
	sd a3, 216(sp)
	ld t4, 576(sp)
	srli a2, t4, 57
	ld t4, 496(sp)
	add a1, s0, a2
	srli a2, s8, 57
	sraiw a3, a1, 7
	andi a0, a3, 1
	add a3, t4, a2
	sraiw a5, a3, 7
	andi a1, a5, 1
	and a2, a0, a1
	or a4, a0, a1
	sd a4, 200(sp)
	ld a3, 216(sp)
	sd a2, 184(sp)
	and a5, a3, a4
	andn a4, a5, a2
	or a5, a2, a4
	sd a4, 192(sp)
	sd a5, 160(sp)
	ld t4, 576(sp)
	srli a2, t4, 56
	ld t4, 496(sp)
	add a1, s0, a2
	srli a2, s8, 56
	sraiw a3, a1, 8
	add a5, t4, a2
	andi a0, a3, 1
	sraiw a3, a5, 8
	andi a1, a3, 1
	and a2, a0, a1
	or a4, a0, a1
	sd a4, 144(sp)
	ld a5, 160(sp)
	sd a2, 128(sp)
	and t0, a5, a4
	andn a3, t0, a2
	or a5, a2, a3
	sd a3, 136(sp)
	sd a5, 112(sp)
	ld t4, 576(sp)
	srli a0, t4, 55
	ld t4, 496(sp)
	add a2, s0, a0
	srli a0, s8, 55
	sraiw a1, a2, 9
	andi a3, a1, 1
	add a1, t4, a0
	sraiw a5, a1, 9
	andi a4, a5, 1
	and a1, a3, a4
	or a2, a3, a4
	sd a2, 104(sp)
	ld a5, 112(sp)
	ld t4, 576(sp)
	and t0, a5, a2
	srli a5, t4, 54
	andn a0, t0, a1
	ld t4, 496(sp)
	add a3, s0, a5
	or a2, a1, a0
	sraiw a4, a3, 10
	srli a3, s8, 54
	andi t1, a4, 1
	add a5, t4, a3
	ld t4, 576(sp)
	sraiw a4, a5, 10
	andi t2, a4, 1
	and a5, t1, t2
	or a3, t1, t2
	srli t1, t4, 53
	and t3, a2, a3
	ld t4, 496(sp)
	andn a4, t3, a5
	add t3, s0, t1
	or t0, a5, a4
	srli t1, s8, 53
	sraiw t2, t3, 11
	add t3, t4, t1
	andi t6, t2, 1
	ld t4, 576(sp)
	sraiw t2, t3, 11
	andi a6, t2, 1
	and t3, t6, a6
	or t1, t6, a6
	srli t6, t4, 52
	and a7, t0, t1
	ld t4, 496(sp)
	andn t2, a7, t3
	add a7, s0, t6
	or t5, t3, t2
	srli t6, s8, 52
	sraiw a6, a7, 12
	andi s2, a6, 1
	add a6, t4, t6
	sraiw a7, a6, 12
	andi t4, a7, 1
	and a7, s2, t4
	or t6, s2, t4
	ld t4, 576(sp)
	and s3, t5, t6
	srli s2, t4, 51
	andn a6, s3, a7
	add s3, s0, s2
	or s1, a7, a6
	srli s2, s8, 51
	sraiw t4, s3, 13
	andi s6, t4, 1
	ld t4, 496(sp)
	add s3, t4, s2
	sraiw s4, s3, 13
	andi t4, s4, 1
	and s4, s6, t4
	or s2, s6, t4
	ld t4, 576(sp)
	and s7, s1, s2
	andn s3, s7, s4
	srli s7, t4, 50
	or s5, s4, s3
	add s6, s0, s7
	sraiw t4, s6, 14
	srli s6, s8, 50
	andi s11, t4, 1
	ld t4, 496(sp)
	add s7, t4, s6
	sraiw s9, s7, 14
	andi t4, s9, 1
	and s9, s11, t4
	or s6, s11, t4
	ld t4, 576(sp)
	and s8, s5, s6
	andn s7, s8, s9
	srli s8, t4, 49
	or s10, s9, s7
	add t4, s0, s8
	ld s8, 568(sp)
	sraiw t4, t4, 15
	srli s0, s8, 49
	andi s11, t4, 1
	ld t4, 496(sp)
	add s8, t4, s0
	sraiw t4, s8, 15
	andi s0, t4, 1
	or t4, s11, s0
	and s0, s11, s0
	and s8, s10, t4
	andn s11, t4, s0
	andn s8, s8, s0
	or t4, s10, s11
	andn s0, s6, s9
	andn t4, t4, s8
	or s10, s5, s0
	andn s8, s2, s4
	andn s11, s10, s7
	or s5, s1, s8
	sh1add s0, t4, s11
	andn s1, t6, a7
	andn s6, s5, s3
	andn a7, t1, t3
	or s2, t5, s1
	sh1add t4, s0, s6
	andn t3, a3, a5
	or t5, t0, a7
	andn s0, s2, a6
	or t0, a2, t3
	sh1add t6, t4, s0
	ld a2, 104(sp)
	andn t4, t5, t2
	ld a5, 112(sp)
	andn t2, t0, a4
	sh1add t1, t6, t4
	andn a4, a2, a1
	sh1add a3, t1, t2
	or t0, a5, a4
	ld a4, 144(sp)
	andn t1, t0, a0
	ld a2, 128(sp)
	sh1add a1, a3, t1
	ld a5, 160(sp)
	andn a0, a4, a2
	ld a3, 136(sp)
	or t0, a5, a0
	ld a4, 200(sp)
	andn t1, t0, a3
	ld a2, 184(sp)
	sh1add a0, a1, t1
	ld a3, 216(sp)
	andn a1, a4, a2
	ld a4, 192(sp)
	or a5, a3, a1
	ld a3, 616(sp)
	andn t0, a5, a4
	ld a2, 648(sp)
	sh1add a1, a0, t0
	ld a4, 592(sp)
	andn a5, a3, a2
	ld a0, 624(sp)
	or t0, a4, a5
	ld a4, 528(sp)
	andn t1, t0, a0
	ld a3, 552(sp)
	sh1add a2, a1, t1
	ld a5, 512(sp)
	andn a0, a4, a3
	ld a1, 544(sp)
	or t0, a5, a0
	ld a4, 456(sp)
	andn t1, t0, a1
	ld a3, 480(sp)
	sh1add a0, a2, t1
	ld a5, 432(sp)
	andn a1, a4, a3
	ld a2, 464(sp)
	or t0, a5, a1
	ld a3, 264(sp)
	andn a4, t0, a2
	ld a2, 240(sp)
	sh1add a1, a0, a4
	ld a4, 288(sp)
	andn a0, a3, a2
	ld a3, 256(sp)
	or a5, a4, a0
	ld a4, 328(sp)
	andn t0, a5, a3
	ld a2, 312(sp)
	sh1add a0, a1, t0
	ld a3, 352(sp)
	andn t0, a4, a2
	ld a1, 320(sp)
	or a5, a3, t0
	ld a3, 376(sp)
	andn t1, a5, a1
	ld a4, 384(sp)
	sh1add a2, a0, t1
	ld a5, 408(sp)
	and a1, a4, a3
	ld a4, 400(sp)
	or a0, a5, a1
	andn t0, a0, a4
	ld a4, 384(sp)
	sh1add a5, a2, t0
	or a2, a4, a3
	andn t0, a2, a1
	sh1add a0, a5, t0
	j label2
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
label851:
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
	blt s0, s1, label851
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 32
	ret
