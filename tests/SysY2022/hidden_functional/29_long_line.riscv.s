.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
fib:
	addi sp, sp, -680
	sd s1, 432(sp)
	mv s1, a0
	sd s6, 448(sp)
	sd s2, 464(sp)
	sd s3, 480(sp)
	sd s0, 496(sp)
	sd s5, 512(sp)
	sd s4, 528(sp)
	sd s8, 544(sp)
	sd s7, 560(sp)
	sd s9, 576(sp)
	sd s10, 592(sp)
	sd s11, 608(sp)
	sd ra, 624(sp)
	sd a0, 656(sp)
	li a0, 3
	bge s1, a0, label4
	li a0, 1
label2:
	ld ra, 624(sp)
	ld s11, 608(sp)
	ld s10, 592(sp)
	ld s9, 576(sp)
	ld s7, 560(sp)
	ld s8, 544(sp)
	ld s4, 528(sp)
	ld s5, 512(sp)
	ld s0, 496(sp)
	ld s3, 480(sp)
	ld s2, 464(sp)
	ld s6, 448(sp)
	ld s1, 432(sp)
	addi sp, sp, 680
	ret
label4:
	ld s1, 656(sp)
	slli a3, s1, 1
	srliw a1, s1, 31
	add a0, s1, a1
	sraiw a2, a0, 1
	andi s2, a2, 1
	andi a2, s1, 1
	xori s3, s2, 1
	andn a1, a2, s2
	sd a2, 56(sp)
	or a0, s2, a1
	srli a2, a3, 62
	sd a1, 48(sp)
	add a1, s1, a2
	sraiw a3, a1, 2
	andi a2, a3, 1
	andn a1, a0, a2
	xori a3, a2, 1
	sd a2, 280(sp)
	or a0, a2, a1
	sd a3, 264(sp)
	slli a2, s1, 1
	sd a1, 0(sp)
	srli a3, a2, 61
	add a1, s1, a3
	sraiw a2, a1, 3
	andi a3, a2, 1
	slli a2, s1, 1
	andn a1, a0, a3
	xori a4, a3, 1
	or a0, a3, a1
	sd a3, 328(sp)
	srli a3, a2, 60
	sd a4, 312(sp)
	sd a1, 232(sp)
	add a1, s1, a3
	sraiw a2, a1, 4
	andi a4, a2, 1
	slli a2, s1, 1
	andn a1, a0, a4
	xori a5, a4, 1
	or a0, a4, a1
	sd a4, 408(sp)
	sd a5, 392(sp)
	sd a1, 288(sp)
	srli a1, a2, 59
	add a3, s1, a1
	sraiw a2, a3, 5
	slli a3, s1, 1
	andi a5, a2, 1
	andn a1, a0, a5
	xori t0, a5, 1
	sd a5, 616(sp)
	or a0, a5, a1
	sd t0, 632(sp)
	sd a1, 336(sp)
	srli a1, a3, 58
	add a2, s1, a1
	slli a1, s1, 1
	sraiw a3, a2, 6
	andi t0, a3, 1
	andn a2, a0, t0
	xori t1, t0, 1
	srli a3, a1, 57
	or a0, t0, a2
	sd t0, 536(sp)
	sd t1, 552(sp)
	sd a2, 400(sp)
	add a2, s1, a3
	sraiw a1, a2, 7
	slli a2, s1, 1
	andi t1, a1, 1
	srli a3, a2, 56
	andn a0, a0, t1
	xori t2, t1, 1
	add a4, s1, a3
	or a1, t1, a0
	sraiw a2, a4, 8
	sd t1, 488(sp)
	slli a4, s1, 1
	sd t2, 504(sp)
	srli a5, a4, 55
	andi t2, a2, 1
	add a3, s1, a5
	andn a1, a1, t2
	xori t3, t2, 1
	sd t2, 192(sp)
	sraiw a4, a3, 9
	or a2, t2, a1
	sd t3, 440(sp)
	slli t2, s1, 1
	andi t3, a4, 1
	slli a4, s1, 1
	andn a2, a2, t3
	xori t4, t3, 1
	srli t0, a4, 54
	or a3, t3, a2
	add a5, s1, t0
	sd t3, 168(sp)
	slli t0, s1, 1
	sraiw a4, a5, 10
	sd t4, 176(sp)
	srli a5, t0, 53
	andi t4, a4, 1
	add t1, s1, a5
	xori t5, t4, 1
	andn a3, a3, t4
	sd t4, 128(sp)
	sraiw t0, t1, 11
	or a4, t4, a3
	srli t1, t2, 52
	sd t5, 144(sp)
	andi t5, t0, 1
	add t0, s1, t1
	andn a4, a4, t5
	xori t6, t5, 1
	slli t1, s1, 1
	sraiw t2, t0, 12
	or a5, t5, a4
	sd t5, 104(sp)
	srli t3, t1, 51
	sd t6, 112(sp)
	andi t6, t2, 1
	add t2, s1, t3
	andn a5, a5, t6
	xori a6, t6, 1
	sraiw t1, t2, 13
	or t0, t6, a5
	slli t2, s1, 1
	andi a7, t1, 1
	srli t4, t2, 50
	sd t6, 64(sp)
	andn t0, t0, a7
	add t3, s1, t4
	xori t6, a7, 1
	sd a6, 88(sp)
	or t1, a7, t0
	sraiw t2, t3, 14
	sd a7, 24(sp)
	slli t3, s1, 1
	andi a6, t2, 1
	srli t4, t3, 49
	sd t6, 40(sp)
	andn t1, t1, a6
	xori a7, a6, 1
	add t5, s1, t4
	sd a6, 648(sp)
	or t2, a6, t1
	sraiw t3, t5, 15
	sd a7, 16(sp)
	andi a7, t3, 1
	andn t2, t2, a7
	xori a6, a7, 1
	sd a7, 216(sp)
	or t3, t1, a6
	sd a6, 208(sp)
	ld a6, 648(sp)
	ld a7, 16(sp)
	or t4, a6, t3
	or t3, t0, a7
	andn t2, t4, t2
	ld a7, 24(sp)
	or t4, a7, t3
	andn t3, t4, t1
	sh1add t1, t2, t3
	or t2, a5, t6
	ld t6, 64(sp)
	ld a6, 88(sp)
	or t3, t6, t2
	ld t5, 104(sp)
	andn t2, t3, t0
	ld t6, 112(sp)
	sh1add t0, t1, t2
	ld t4, 128(sp)
	or t1, a4, a6
	or t2, t5, t1
	ld t5, 144(sp)
	andn t1, t2, a5
	ld t3, 168(sp)
	sh1add a5, t0, t1
	or t0, a3, t6
	or t1, t4, t0
	ld t4, 176(sp)
	andn t0, t1, a4
	ld t2, 192(sp)
	sh1add a4, a5, t0
	or a5, a2, t5
	or t0, t3, a5
	ld t3, 440(sp)
	andn a5, t0, a3
	ld t1, 488(sp)
	sh1add a3, a4, a5
	or a4, a1, t4
	or a5, t2, a4
	ld t2, 504(sp)
	andn a4, a5, a2
	sh1add a2, a3, a4
	or a3, a0, t3
	or a4, t1, a3
	andn a3, a4, a1
	sh1add a1, a2, a3
	ld a2, 400(sp)
	ld t0, 536(sp)
	or a3, a2, t2
	ld t1, 552(sp)
	or a4, t0, a3
	andn a2, a4, a0
	sh1add a0, a1, a2
	ld a1, 336(sp)
	ld a5, 616(sp)
	or a2, a1, t1
	or a1, a5, a2
	ld a2, 400(sp)
	ld t0, 632(sp)
	andn a3, a1, a2
	ld a1, 288(sp)
	sh1add a0, a0, a3
	ld a4, 408(sp)
	or a3, a1, t0
	ld a1, 336(sp)
	or a2, a4, a3
	ld a5, 392(sp)
	andn a3, a2, a1
	ld a1, 232(sp)
	sh1add a0, a0, a3
	or a4, a1, a5
	ld a3, 328(sp)
	ld a1, 288(sp)
	or a2, a3, a4
	ld a4, 312(sp)
	andn a3, a2, a1
	ld a1, 0(sp)
	sh1add a0, a0, a3
	ld a2, 280(sp)
	or a3, a1, a4
	ld a1, 232(sp)
	or a4, a2, a3
	ld a3, 264(sp)
	andn a2, a4, a1
	ld a1, 48(sp)
	sh1add a0, a0, a2
	or a4, a1, a3
	ld a1, 0(sp)
	or a2, s2, a4
	andn a3, a2, a1
	ld a2, 56(sp)
	sh1add a0, a0, a3
	ld a1, 48(sp)
	or a3, a2, s3
	andn a4, a3, a1
	xori a1, a2, 1
	sh1add a0, a0, a4
	sh1add a0, a0, a1
	jal fib
	mv s0, a0
	srliw a0, a0, 31
	add a2, s0, a0
	sraiw a3, a2, 1
	andi a1, a3, 1
	sd a1, 304(sp)
	ld a2, 280(sp)
	ld a3, 328(sp)
	andn a0, s2, a2
	or a4, a2, a0
	andn a1, a4, a3
	ld a4, 408(sp)
	or a5, a3, a1
	andn a2, a5, a4
	ld a5, 616(sp)
	or t0, a4, a2
	andn a3, t0, a5
	ld t0, 536(sp)
	or t1, a5, a3
	andn a4, t1, t0
	ld t1, 488(sp)
	or t2, t0, a4
	andn a5, t2, t1
	ld t2, 192(sp)
	or t3, t1, a5
	andn t0, t3, t2
	ld t3, 168(sp)
	or t4, t2, t0
	andn t1, t4, t3
	ld t4, 128(sp)
	or t5, t3, t1
	andn t2, t5, t4
	ld t5, 104(sp)
	or t6, t4, t2
	andn t3, t6, t5
	ld t6, 64(sp)
	or a6, t5, t3
	ld a7, 24(sp)
	andn t4, a6, t6
	or a6, t6, t4
	andn t5, a6, a7
	ld a6, 648(sp)
	or t6, a7, t5
	ld a7, 216(sp)
	andn t6, t6, a6
	or s5, a6, t6
	ld a6, 208(sp)
	andn s4, s5, a7
	or a7, t6, a6
	ld a6, 648(sp)
	or a7, a6, a7
	andn a6, a7, s4
	ld a7, 16(sp)
	or s4, t5, a7
	ld a7, 24(sp)
	or s5, a7, s4
	andn t6, s5, t6
	sh1add a6, a6, t6
	ld t6, 40(sp)
	or a7, t4, t6
	ld t6, 64(sp)
	or a7, t6, a7
	andn t5, a7, t5
	sh1add t6, a6, t5
	ld a6, 88(sp)
	ld t5, 104(sp)
	or a7, t3, a6
	or a6, t5, a7
	andn t4, a6, t4
	sh1add t5, t6, t4
	ld t6, 112(sp)
	ld t4, 128(sp)
	or a6, t2, t6
	or t6, t4, a6
	andn t3, t6, t3
	sh1add t4, t5, t3
	ld t5, 144(sp)
	ld t3, 168(sp)
	or t6, t1, t5
	or t5, t3, t6
	andn t2, t5, t2
	sh1add t3, t4, t2
	ld t4, 176(sp)
	ld t2, 192(sp)
	or t5, t0, t4
	or t4, t2, t5
	andn t1, t4, t1
	sh1add t2, t3, t1
	ld t3, 440(sp)
	ld t1, 488(sp)
	or t4, a5, t3
	or t3, t1, t4
	andn t0, t3, t0
	sh1add t1, t2, t0
	ld t2, 504(sp)
	ld t0, 536(sp)
	or t3, a4, t2
	or t2, t0, t3
	andn a5, t2, a5
	sh1add t0, t1, a5
	ld t1, 552(sp)
	ld a5, 616(sp)
	or t2, a3, t1
	or t1, a5, t2
	andn a4, t1, a4
	sh1add a5, t0, a4
	ld t0, 632(sp)
	ld a4, 408(sp)
	or t1, a2, t0
	or t0, a4, t1
	andn a3, t0, a3
	sh1add a4, a5, a3
	ld a5, 392(sp)
	ld a3, 328(sp)
	or t0, a1, a5
	or a5, a3, t0
	andn a2, a5, a2
	sh1add a3, a4, a2
	ld a4, 312(sp)
	ld a2, 280(sp)
	or a5, a0, a4
	or a4, a2, a5
	andn a5, a4, a1
	sh1add a1, a3, a5
	ld a3, 264(sp)
	or a2, s2, a3
	andn a4, a2, a0
	andi a2, s1, 1
	sh1add a0, a1, a4
	sh1add a1, a0, s3
	sh1add a0, a1, a2
	jal fib
	mv t1, a0
	slli a4, s0, 1
	slli t6, s0, 1
	sd a0, 200(sp)
	srli a6, t6, 52
	srliw a0, a0, 31
	add a1, t1, a0
	sraiw a2, a1, 1
	ld a1, 304(sp)
	andi a0, a2, 1
	and a3, a1, a0
	or a0, a1, a0
	andi a1, t1, 1
	andn a5, a0, a3
	andi a0, s0, 1
	and a2, a5, a0
	sd a5, 248(sp)
	and a2, a2, a1
	or t0, a3, a2
	srli a3, a4, 62
	add a5, s0, a3
	sd t0, 296(sp)
	sraiw a4, a5, 2
	slli a5, t1, 1
	andi a3, a4, 1
	srli a4, a5, 62
	add a5, t1, a4
	sraiw t0, a5, 2
	andi a4, t0, 1
	or a5, a3, a4
	and a4, a3, a4
	sd a5, 344(sp)
	ld t0, 296(sp)
	sd a4, 376(sp)
	and t1, t0, a5
	slli t0, s0, 1
	andn t1, t1, a4
	srli a3, t0, 61
	or a5, a4, t1
	add a4, s0, a3
	sd t1, 360(sp)
	sd a5, 424(sp)
	ld t1, 200(sp)
	sraiw a5, a4, 3
	andi a3, a5, 1
	slli a5, t1, 1
	srli a4, a5, 61
	add t0, t1, a4
	sraiw a5, t0, 3
	andi a4, a5, 1
	or t0, a3, a4
	and a4, a3, a4
	slli a3, s0, 1
	sd t0, 600(sp)
	ld a5, 424(sp)
	sd a4, 568(sp)
	and t1, a5, t0
	andn t1, t1, a4
	or t0, a4, t1
	sd t1, 584(sp)
	sd t0, 520(sp)
	ld t1, 200(sp)
	srli t0, a3, 60
	add a5, s0, t0
	sraiw a4, a5, 4
	slli a5, t1, 1
	andi a3, a4, 1
	srli a4, a5, 60
	add a5, t1, a4
	sraiw t0, a5, 4
	andi a4, t0, 1
	or a5, a3, a4
	and a4, a3, a4
	sd a5, 472(sp)
	slli a3, s0, 1
	ld t0, 520(sp)
	sd a4, 672(sp)
	and t1, t0, a5
	andn a5, t1, a4
	or t0, a4, a5
	sd a5, 456(sp)
	srli a5, a3, 59
	sd t0, 184(sp)
	ld t1, 200(sp)
	add t0, s0, a5
	slli a5, t1, 1
	sraiw a4, t0, 5
	andi a3, a4, 1
	srli a4, a5, 59
	add a5, t1, a4
	sraiw t0, a5, 5
	andi a4, t0, 1
	or a5, a3, a4
	and a4, a3, a4
	slli a3, s0, 1
	sd a5, 160(sp)
	ld t0, 184(sp)
	sd a4, 136(sp)
	and t1, t0, a5
	andn a5, t1, a4
	or t0, a4, a5
	sd a5, 152(sp)
	srli a5, a3, 58
	sd t0, 120(sp)
	ld t1, 200(sp)
	add t0, s0, a5
	slli a5, t1, 1
	sraiw a4, t0, 6
	andi a3, a4, 1
	srli a4, a5, 58
	add a5, t1, a4
	sraiw t0, a5, 6
	andi a4, t0, 1
	or a5, a3, a4
	and a4, a3, a4
	sd a5, 96(sp)
	ld t0, 120(sp)
	sd a4, 72(sp)
	and t1, t0, a5
	andn a5, t1, a4
	or t0, a4, a5
	slli a4, s0, 1
	sd a5, 80(sp)
	srli a3, a4, 57
	sd t0, 32(sp)
	add a5, s0, a3
	ld t1, 200(sp)
	sraiw a4, a5, 7
	slli a5, t1, 1
	andi a3, a4, 1
	srli a4, a5, 57
	add a5, t1, a4
	sraiw t0, a5, 7
	andi a4, t0, 1
	or a5, a3, a4
	and a4, a3, a4
	slli a3, s0, 1
	sd a5, 8(sp)
	ld t0, 32(sp)
	sd a4, 640(sp)
	and t1, t0, a5
	andn a5, t1, a4
	or t0, a4, a5
	sd a5, 664(sp)
	srli a5, a3, 56
	sd t0, 224(sp)
	add a4, s0, a5
	ld t1, 200(sp)
	sraiw t0, a4, 8
	slli a5, t1, 1
	andi a3, t0, 1
	srli a4, a5, 56
	add a5, t1, a4
	sraiw t0, a5, 8
	andi a4, t0, 1
	or a5, a3, a4
	and a4, a3, a4
	slli a3, s0, 1
	sd a5, 240(sp)
	ld t0, 224(sp)
	sd a4, 272(sp)
	and t1, t0, a5
	andn a5, t1, a4
	or t0, a4, a5
	sd a5, 256(sp)
	srli a5, a3, 55
	sd t0, 320(sp)
	add a4, s0, a5
	ld t1, 200(sp)
	sraiw t0, a4, 9
	slli a5, t1, 1
	andi a3, t0, 1
	srli a4, a5, 55
	add a5, t1, a4
	sraiw t0, a5, 9
	andi a4, t0, 1
	or a5, a3, a4
	and a4, a3, a4
	slli a3, s0, 1
	sd a5, 352(sp)
	ld t0, 320(sp)
	sd a4, 384(sp)
	and t1, t0, a5
	andn a5, t1, a4
	or t1, a4, a5
	srli a4, a3, 54
	sd a5, 368(sp)
	add a5, s0, a4
	sd t1, 416(sp)
	sraiw a3, a5, 10
	ld t1, 200(sp)
	andi a4, a3, 1
	slli a5, t1, 1
	srli a3, a5, 54
	add t0, t1, a3
	ld t1, 416(sp)
	sraiw t2, t0, 10
	andi a5, t2, 1
	slli t2, s0, 1
	or a3, a4, a5
	srli t3, t2, 53
	and a5, a4, a5
	and t0, t1, a3
	andn a3, a3, a5
	add t1, s0, t3
	andn a4, t0, a5
	sraiw t2, t1, 11
	or t0, a5, a4
	andi t3, t2, 1
	ld t1, 200(sp)
	slli t4, t1, 1
	srli t2, t4, 53
	add t4, t1, t2
	sraiw t5, t4, 11
	andi t1, t5, 1
	and t4, t3, t1
	or t2, t3, t1
	add t1, s0, a6
	and t5, t0, t2
	sraiw t6, t1, 12
	andn t3, t5, t4
	ld t1, 200(sp)
	andi a6, t6, 1
	or t5, t4, t3
	slli a7, t1, 1
	andn t4, t2, t4
	srli t6, a7, 52
	add a7, t1, t6
	sraiw t6, a7, 12
	andi t1, t6, 1
	and a7, a6, t1
	or t6, a6, t1
	slli t1, s0, 1
	and s1, t5, t6
	srli s2, t1, 51
	andn t6, t6, a7
	andn a6, s1, a7
	add t1, s0, s2
	or t5, t5, t6
	or s1, a7, a6
	sraiw s4, t1, 13
	andn a6, t5, a6
	ld t1, 200(sp)
	andi s3, s4, 1
	or t5, t0, t4
	slli s4, t1, 1
	andn t2, t5, t3
	srli s2, s4, 51
	add s4, t1, s2
	sraiw s5, s4, 13
	andi t1, s5, 1
	and s4, s3, t1
	or s2, s3, t1
	slli t1, s0, 1
	and s5, s1, s2
	srli s6, t1, 50
	andn s3, s5, s4
	add t1, s0, s6
	or s5, s4, s3
	sraiw s8, t1, 14
	ld t1, 200(sp)
	andi s7, s8, 1
	slli s8, t1, 1
	srli s6, s8, 50
	add s8, t1, s6
	sraiw s9, s8, 14
	andi t1, s9, 1
	and s8, s7, t1
	or s6, s7, t1
	slli t1, s0, 1
	and s9, s5, s6
	srli s10, t1, 49
	andn s6, s6, s8
	andn s7, s9, s8
	add t1, s0, s10
	or s9, s8, s7
	sraiw s11, t1, 15
	ld t1, 200(sp)
	andi s0, s11, 1
	slli s11, t1, 1
	srli s10, s11, 49
	add s11, t1, s10
	sraiw t1, s11, 15
	andi s10, t1, 1
	or t1, s0, s10
	and s10, s0, s10
	and s11, s9, t1
	andn t1, t1, s10
	andn s0, s11, s10
	or s9, s9, t1
	andn t1, s9, s0
	or s0, s5, s6
	andn s5, s0, s7
	andn s0, s2, s4
	sh1add t1, t1, s5
	or s1, s1, s0
	andn s2, s1, s3
	sh1add t1, t1, s2
	sh1add t1, t1, a6
	sh1add t0, t1, t2
	ld t1, 416(sp)
	or a5, t1, a3
	andn a4, a5, a4
	ld a5, 352(sp)
	sh1add a3, t0, a4
	ld a4, 384(sp)
	ld t0, 320(sp)
	andn t1, a5, a4
	ld a5, 368(sp)
	or a4, t0, t1
	andn t0, a4, a5
	ld a5, 240(sp)
	sh1add a3, a3, t0
	ld a4, 272(sp)
	ld t0, 224(sp)
	andn t1, a5, a4
	ld a5, 256(sp)
	or a4, t0, t1
	andn t0, a4, a5
	ld a5, 8(sp)
	sh1add a3, a3, t0
	ld a4, 640(sp)
	ld t0, 32(sp)
	andn t1, a5, a4
	ld a5, 664(sp)
	or a4, t0, t1
	andn t0, a4, a5
	ld a5, 96(sp)
	sh1add a3, a3, t0
	ld a4, 72(sp)
	ld t0, 120(sp)
	andn t1, a5, a4
	ld a5, 80(sp)
	or a4, t0, t1
	andn t0, a4, a5
	ld a5, 160(sp)
	sh1add a3, a3, t0
	ld a4, 136(sp)
	ld t0, 184(sp)
	andn t1, a5, a4
	ld a5, 152(sp)
	or a4, t0, t1
	andn t0, a4, a5
	ld a5, 472(sp)
	sh1add a3, a3, t0
	ld a4, 672(sp)
	ld t0, 520(sp)
	andn t1, a5, a4
	ld a5, 456(sp)
	or a4, t0, t1
	ld t0, 600(sp)
	andn t1, a4, a5
	ld a4, 568(sp)
	sh1add a3, a3, t1
	ld a5, 424(sp)
	andn t1, t0, a4
	or a4, a5, t1
	ld t1, 584(sp)
	ld a5, 344(sp)
	andn t0, a4, t1
	ld a4, 376(sp)
	sh1add a3, a3, t0
	andn t1, a5, a4
	ld t0, 296(sp)
	or a4, t0, t1
	ld t1, 360(sp)
	andn a5, a4, t1
	sh1add a4, a3, a5
	ld a5, 248(sp)
	and a3, a0, a1
	or a1, a0, a1
	or t1, a5, a3
	andn a3, a1, a3
	andn t0, t1, a2
	sh1add a2, a4, t0
	sh1add a0, a2, a3
	j label2
.globl main
main:
	addi sp, sp, -24
	sd s0, 16(sp)
	li s0, 1
	sd s1, 8(sp)
	sd ra, 0(sp)
label808:
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
	mv s1, a0
	li a0, 41
	jal putch
	li a0, 32
	jal putch
	li a0, 61
	jal putch
	li a0, 32
	jal putch
	mv a0, s1
	jal putint
	li a0, 10
	jal putch
	li a0, 21
	addiw s0, s0, 1
	bge s0, a0, label810
	j label808
label810:
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
