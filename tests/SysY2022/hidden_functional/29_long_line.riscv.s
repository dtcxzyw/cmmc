.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
fib:
.p2align 2
	addi sp, sp, -664
	sd s1, 408(sp)
	mv s1, a0
	sd s6, 424(sp)
	sd s2, 440(sp)
	sd s3, 456(sp)
	sd s5, 472(sp)
	sd s0, 488(sp)
	sd s4, 504(sp)
	sd s7, 520(sp)
	sd s8, 536(sp)
	sd s9, 552(sp)
	sd s10, 568(sp)
	sd s11, 584(sp)
	sd ra, 600(sp)
	sd a0, 200(sp)
	li a0, 3
	bge s1, a0, label4
	li a0, 1
label2:
	ld ra, 600(sp)
	ld s11, 584(sp)
	ld s10, 568(sp)
	ld s9, 552(sp)
	ld s8, 536(sp)
	ld s7, 520(sp)
	ld s4, 504(sp)
	ld s0, 488(sp)
	ld s5, 472(sp)
	ld s3, 456(sp)
	ld s2, 440(sp)
	ld s6, 424(sp)
	ld s1, 408(sp)
	addi sp, sp, 664
	ret
label4:
	ld s1, 200(sp)
	srliw a0, s1, 31
	add a1, s1, a0
	sraiw a2, a1, 1
	andi a1, s1, 1
	andi s2, a2, 1
	sd a1, 24(sp)
	andn a2, a1, s2
	xori s6, s2, 1
	slli a1, s1, 1
	or a0, s2, a2
	srli a4, a1, 62
	sd a2, 0(sp)
	add a2, s1, a4
	sraiw a3, a2, 2
	andi s3, a3, 1
	srli a3, a1, 61
	andn a2, a0, s3
	xori s5, s3, 1
	add a4, s1, a3
	or a0, s3, a2
	sd a2, 216(sp)
	sraiw a2, a4, 3
	andi a3, a2, 1
	andn a2, a0, a3
	xori s4, a3, 1
	sd a3, 288(sp)
	or a0, a3, a2
	sd a2, 248(sp)
	srli a3, a1, 60
	add a5, s1, a3
	srli a3, a1, 59
	sraiw a2, a5, 4
	andi a4, a2, 1
	andn a2, a0, a4
	xori a5, a4, 1
	sd a4, 352(sp)
	or a0, a4, a2
	sd a5, 336(sp)
	sd a2, 296(sp)
	add a2, s1, a3
	srli a3, a1, 58
	sraiw a4, a2, 5
	andi a5, a4, 1
	add a4, s1, a3
	andn a2, a0, a5
	xori t0, a5, 1
	srli a3, a1, 57
	or a0, a5, a2
	sd a5, 400(sp)
	sd t0, 384(sp)
	sd a2, 360(sp)
	sraiw a2, a4, 6
	add a4, s1, a3
	andi t0, a2, 1
	sraiw a5, a4, 7
	andn a0, a0, t0
	xori t1, t0, 1
	or a2, t0, a0
	sd t0, 544(sp)
	srli t0, a1, 56
	sd t1, 560(sp)
	andi t1, a5, 1
	add a5, s1, t0
	andn a2, a2, t1
	xori t2, t1, 1
	sraiw a4, a5, 8
	or a3, t1, a2
	srli a5, a1, 55
	sd t1, 496(sp)
	add t1, s1, a5
	sd t2, 512(sp)
	sraiw t0, t1, 9
	andi t2, a4, 1
	srli t1, a1, 54
	andn a3, a3, t2
	xori t3, t2, 1
	sd t2, 416(sp)
	or a4, t2, a3
	sd t3, 448(sp)
	andi t3, t0, 1
	add t0, s1, t1
	andn a4, a4, t3
	xori t4, t3, 1
	sraiw t2, t0, 10
	or a5, t3, a4
	sd t3, 640(sp)
	sd t4, 632(sp)
	andi t4, t2, 1
	srli t2, a1, 53
	andn a5, a5, t4
	xori t5, t4, 1
	add t3, s1, t2
	or t0, t4, a5
	sraiw t1, t3, 11
	sd t4, 168(sp)
	srli t3, a1, 52
	andi t6, t1, 1
	add t4, s1, t3
	sd t5, 184(sp)
	andn t0, t0, t6
	xori a6, t6, 1
	sraiw t2, t4, 12
	sd t6, 136(sp)
	or t1, t6, t0
	andi t5, t2, 1
	sd a6, 152(sp)
	andn t1, t1, t5
	xori t4, t5, 1
	or t2, t5, t1
	sd t5, 96(sp)
	sd t4, 120(sp)
	srli t4, a1, 51
	add t5, s1, t4
	sraiw t3, t5, 13
	srli t5, a1, 50
	andi t4, t3, 1
	xori t6, t4, 1
	andn t2, t2, t4
	sd t4, 56(sp)
	or t3, t4, t2
	sd t6, 72(sp)
	add t6, s1, t5
	sraiw t4, t6, 14
	andi t5, t4, 1
	srli t4, a1, 49
	andn t3, t3, t5
	xori t6, t5, 1
	or a6, t5, t3
	sd t5, 16(sp)
	add t5, s1, t4
	sd t6, 48(sp)
	sraiw a1, t5, 15
	andi t4, a1, 1
	andn a1, a6, t4
	xori t6, t4, 1
	sd t4, 192(sp)
	or t4, t3, t6
	sd t6, 616(sp)
	ld t5, 16(sp)
	ld t6, 48(sp)
	or a6, t5, t4
	ld t4, 56(sp)
	or t5, t2, t6
	andn a1, a6, a1
	or t6, t4, t5
	andn t3, t6, t3
	ld t6, 72(sp)
	sh1add a1, a1, t3
	ld t5, 96(sp)
	or t3, t1, t6
	or t4, t5, t3
	andn t2, t4, t2
	ld t4, 120(sp)
	sh1add a1, a1, t2
	ld t6, 136(sp)
	or t2, t0, t4
	ld a6, 152(sp)
	or t3, t6, t2
	ld t4, 168(sp)
	andn t1, t3, t1
	ld t5, 184(sp)
	sh1add a1, a1, t1
	ld t3, 640(sp)
	or t1, a5, a6
	or t2, t4, t1
	ld t4, 632(sp)
	andn t0, t2, t0
	ld t2, 416(sp)
	sh1add a1, a1, t0
	or t0, a4, t5
	or t1, t3, t0
	ld t3, 448(sp)
	andn a5, t1, a5
	ld t1, 496(sp)
	sh1add a1, a1, a5
	or a5, a3, t4
	or t0, t2, a5
	ld t2, 512(sp)
	andn a4, t0, a4
	ld t0, 544(sp)
	sh1add a1, a1, a4
	or a4, a2, t3
	or a5, t1, a4
	ld t1, 560(sp)
	andn a3, a5, a3
	sh1add a1, a1, a3
	or a3, a0, t2
	or a4, t0, a3
	andn a2, a4, a2
	sh1add a1, a1, a2
	ld a2, 360(sp)
	ld a5, 400(sp)
	or a3, a2, t1
	ld t0, 384(sp)
	or a2, a5, a3
	andn a3, a2, a0
	ld a2, 296(sp)
	sh1add a0, a1, a3
	ld a4, 352(sp)
	or a1, a2, t0
	ld a2, 360(sp)
	or a3, a4, a1
	ld a5, 336(sp)
	andn a1, a3, a2
	ld a2, 248(sp)
	sh1add a0, a0, a1
	ld a3, 288(sp)
	or a4, a2, a5
	ld a2, 296(sp)
	or a1, a3, a4
	andn a3, a1, a2
	ld a2, 216(sp)
	sh1add a0, a0, a3
	or a3, a2, s4
	ld a2, 248(sp)
	or a1, s3, a3
	andn a3, a1, a2
	ld a2, 0(sp)
	sh1add a0, a0, a3
	or a3, a2, s5
	ld a2, 216(sp)
	or a1, s2, a3
	andn a3, a1, a2
	ld a1, 24(sp)
	sh1add a0, a0, a3
	ld a2, 0(sp)
	or a3, a1, s6
	andn a4, a3, a2
	xori a2, a1, 1
	sh1add a0, a0, a4
	sh1add a0, a0, a2
	jal fib
	srliw a2, a0, 31
	mv s0, a0
	add a1, a0, a2
	sraiw a0, a1, 1
	andi a3, a0, 1
	andn a0, s2, s3
	or a2, s3, a0
	sd a3, 264(sp)
	ld a3, 288(sp)
	ld a4, 352(sp)
	andn a1, a2, a3
	or a5, a3, a1
	andn a2, a5, a4
	ld a5, 400(sp)
	or t0, a4, a2
	andn a3, t0, a5
	ld t0, 544(sp)
	or t1, a5, a3
	andn a4, t1, t0
	ld t1, 496(sp)
	or t2, t0, a4
	andn a5, t2, t1
	ld t2, 416(sp)
	or t3, t1, a5
	andn t0, t3, t2
	ld t3, 640(sp)
	or t4, t2, t0
	andn t1, t4, t3
	ld t4, 168(sp)
	or t5, t3, t1
	ld t6, 136(sp)
	andn t2, t5, t4
	or t5, t4, t2
	andn t3, t5, t6
	ld t5, 96(sp)
	or t4, t6, t3
	andn a6, t4, t5
	ld t4, 56(sp)
	or t6, t5, a6
	ld t5, 16(sp)
	andn a7, t6, t4
	or t6, t4, a7
	ld t4, 192(sp)
	andn s7, t6, t5
	or t6, t5, s7
	andn s8, t6, t4
	ld t6, 616(sp)
	or t4, s7, t6
	ld t6, 48(sp)
	or t4, t5, t4
	andn t5, t4, s8
	ld t4, 56(sp)
	or s8, a7, t6
	or t6, t4, s8
	andn s7, t6, s7
	ld t6, 72(sp)
	sh1add t4, t5, s7
	ld t5, 96(sp)
	or s7, a6, t6
	or s8, t5, s7
	andn t6, s8, a7
	sh1add t5, t4, t6
	ld t4, 120(sp)
	ld t6, 136(sp)
	or a7, t3, t4
	or t4, t6, a7
	andn a7, t4, a6
	ld a6, 152(sp)
	sh1add t5, t5, a7
	ld t4, 168(sp)
	or t6, t2, a6
	or a6, t4, t6
	andn t3, a6, t3
	sh1add t4, t5, t3
	ld t5, 184(sp)
	ld t3, 640(sp)
	or t6, t1, t5
	or t5, t3, t6
	andn t2, t5, t2
	sh1add t3, t4, t2
	ld t4, 632(sp)
	ld t2, 416(sp)
	or t5, t0, t4
	or t4, t2, t5
	andn t1, t4, t1
	sh1add t2, t3, t1
	ld t3, 448(sp)
	ld t1, 496(sp)
	or t4, a5, t3
	or t3, t1, t4
	andn t0, t3, t0
	sh1add t1, t2, t0
	ld t2, 512(sp)
	ld t0, 544(sp)
	or t3, a4, t2
	or t2, t0, t3
	andn a5, t2, a5
	sh1add t0, t1, a5
	ld t1, 560(sp)
	ld a5, 400(sp)
	or t2, a3, t1
	or t1, a5, t2
	andn a4, t1, a4
	sh1add a5, t0, a4
	ld t0, 384(sp)
	ld a4, 352(sp)
	or t1, a2, t0
	or t0, a4, t1
	andn a3, t0, a3
	sh1add a4, a5, a3
	ld a5, 336(sp)
	ld a3, 288(sp)
	or t0, a1, a5
	or t1, a3, t0
	or a3, a0, s4
	andn a5, t1, a2
	sh1add a2, a4, a5
	or a5, s3, a3
	or a3, s2, s5
	andn a4, a5, a1
	sh1add a1, a2, a4
	andn a2, a3, a0
	sh1add a0, a1, a2
	andi a2, s1, 1
	sh1add a1, a0, s6
	sh1add a0, a1, a2
	jal fib
	mv t4, a0
	sd a0, 160(sp)
	srliw a0, a0, 31
	ld a3, 264(sp)
	add a2, t4, a0
	sraiw a0, a2, 1
	andi a1, a0, 1
	and a0, a3, a1
	or a1, a3, a1
	andi a3, s0, 1
	andn a2, a1, a0
	and a1, a2, a3
	sd a2, 320(sp)
	andi a2, t4, 1
	sd a3, 272(sp)
	slli t4, s0, 1
	and a4, a1, a2
	sd a2, 256(sp)
	or a3, a0, a4
	sd a4, 304(sp)
	srli a0, t4, 62
	sd a3, 368(sp)
	add a1, s0, a0
	sd t4, 80(sp)
	sraiw a2, a1, 2
	ld t4, 160(sp)
	andi a0, a2, 1
	slli s8, t4, 1
	srli a1, s8, 62
	add a2, t4, a1
	sd s8, 88(sp)
	sraiw a3, a2, 2
	andi a1, a3, 1
	or a2, a0, a1
	and a1, a0, a1
	sd a2, 608(sp)
	ld a3, 368(sp)
	sd a1, 576(sp)
	and a4, a3, a2
	andn a2, a4, a1
	or a3, a1, a2
	sd a2, 592(sp)
	sd a3, 528(sp)
	ld t4, 80(sp)
	srli a0, t4, 61
	ld t4, 160(sp)
	add a2, s0, a0
	sraiw a1, a2, 3
	andi a0, a1, 1
	srli a1, s8, 61
	add a2, t4, a1
	sraiw a3, a2, 3
	andi a1, a3, 1
	or a2, a0, a1
	and a1, a0, a1
	sd a2, 480(sp)
	ld a3, 528(sp)
	sd a1, 432(sp)
	and a4, a3, a2
	andn a2, a4, a1
	or a3, a1, a2
	sd a2, 464(sp)
	sd a3, 624(sp)
	ld t4, 80(sp)
	srli a0, t4, 60
	ld t4, 160(sp)
	add a2, s0, a0
	sraiw a1, a2, 4
	andi a0, a1, 1
	srli a1, s8, 60
	add a2, t4, a1
	sraiw a3, a2, 4
	andi a1, a3, 1
	or a2, a0, a1
	and a1, a0, a1
	sd a2, 648(sp)
	ld a3, 624(sp)
	sd a1, 176(sp)
	and a4, a3, a2
	andn a2, a4, a1
	or a3, a1, a2
	sd a2, 656(sp)
	sd a3, 144(sp)
	ld t4, 80(sp)
	srli a0, t4, 59
	ld t4, 160(sp)
	add a2, s0, a0
	sraiw a1, a2, 5
	andi a0, a1, 1
	srli a1, s8, 59
	add a2, t4, a1
	sraiw a3, a2, 5
	andi a1, a3, 1
	or a2, a0, a1
	and a1, a0, a1
	sd a2, 128(sp)
	ld a3, 144(sp)
	sd a1, 104(sp)
	and a4, a3, a2
	andn a2, a4, a1
	or a3, a1, a2
	sd a2, 112(sp)
	sd a3, 64(sp)
	ld t4, 80(sp)
	srli a0, t4, 58
	ld t4, 160(sp)
	add a2, s0, a0
	sraiw a1, a2, 6
	andi a0, a1, 1
	srli a1, s8, 58
	add a2, t4, a1
	sraiw a3, a2, 6
	andi a1, a3, 1
	or a2, a0, a1
	and a1, a0, a1
	sd a2, 40(sp)
	ld a3, 64(sp)
	sd a1, 8(sp)
	and a4, a3, a2
	andn a2, a4, a1
	or a3, a1, a2
	sd a2, 32(sp)
	sd a3, 208(sp)
	ld t4, 80(sp)
	srli a0, t4, 57
	ld t4, 160(sp)
	add a1, s0, a0
	sraiw a2, a1, 7
	srli a1, s8, 57
	andi a0, a2, 1
	add a2, t4, a1
	sraiw a3, a2, 7
	andi a1, a3, 1
	or a2, a0, a1
	and a1, a0, a1
	sd a2, 224(sp)
	ld a3, 208(sp)
	sd a1, 240(sp)
	and a4, a3, a2
	andn a2, a4, a1
	or a3, a1, a2
	sd a2, 232(sp)
	sd a3, 280(sp)
	ld t4, 80(sp)
	srli a0, t4, 56
	ld t4, 160(sp)
	add a1, s0, a0
	sraiw a2, a1, 8
	srli a1, s8, 56
	andi a0, a2, 1
	add a2, t4, a1
	sraiw a3, a2, 8
	andi a1, a3, 1
	or a2, a0, a1
	and a1, a0, a1
	sd a2, 312(sp)
	ld a3, 280(sp)
	sd a1, 344(sp)
	and a4, a3, a2
	andn a2, a4, a1
	or a3, a1, a2
	sd a2, 328(sp)
	sd a3, 376(sp)
	ld t4, 80(sp)
	srli a0, t4, 55
	ld t4, 160(sp)
	add a2, s0, a0
	sraiw a1, a2, 9
	andi a0, a1, 1
	srli a1, s8, 55
	add a2, t4, a1
	sraiw a3, a2, 9
	andi a1, a3, 1
	or a4, a0, a1
	and a1, a0, a1
	sd a4, 392(sp)
	ld a3, 376(sp)
	ld t4, 80(sp)
	and a2, a3, a4
	srli a4, t4, 54
	andn a0, a2, a1
	ld t4, 160(sp)
	add a5, s0, a4
	or a2, a1, a0
	sraiw a3, a5, 10
	andi a4, a3, 1
	srli a3, s8, 54
	add t1, t4, a3
	ld t4, 80(sp)
	sraiw t0, t1, 10
	srli t2, t4, 53
	andi a5, t0, 1
	ld t4, 160(sp)
	add t3, s0, t2
	or a3, a4, a5
	sraiw t1, t3, 11
	and a5, a4, a5
	and t0, a2, a3
	andi t2, t1, 1
	andn a4, t0, a5
	srli t1, s8, 53
	or t0, a5, a4
	add t6, t4, t1
	sraiw t5, t6, 11
	andi t3, t5, 1
	or t1, t2, t3
	and t3, t2, t3
	and t4, t0, t1
	andn t2, t4, t3
	ld t4, 80(sp)
	or t5, t3, t2
	srli t6, t4, 52
	andn t3, t1, t3
	add a7, s0, t6
	or t1, t0, t3
	srli t6, s8, 52
	sraiw t4, a7, 12
	andn t2, t1, t2
	andi a6, t4, 1
	andn t1, a3, a5
	ld t4, 160(sp)
	or a3, a2, t1
	add a7, t4, t6
	andn a5, a3, a4
	sraiw t6, a7, 12
	andi t4, t6, 1
	and a7, a6, t4
	or t6, a6, t4
	ld t4, 80(sp)
	and s1, t5, t6
	srli s2, t4, 51
	andn t6, t6, a7
	andn a6, s1, a7
	add s4, s0, s2
	or t5, t5, t6
	or s1, a7, a6
	srli s2, s8, 51
	sraiw t4, s4, 13
	andn a6, t5, a6
	andi s3, t4, 1
	ld t4, 160(sp)
	add s4, t4, s2
	sraiw s5, s4, 13
	andi t4, s5, 1
	and s4, s3, t4
	or s2, s3, t4
	ld t4, 80(sp)
	and s5, s1, s2
	srli s7, t4, 50
	andn s2, s2, s4
	andn s3, s5, s4
	add t4, s0, s7
	or s5, s4, s3
	sraiw s6, t4, 14
	ld t4, 160(sp)
	andi s7, s6, 1
	srli s6, s8, 50
	add s8, t4, s6
	sraiw s9, s8, 14
	andi t4, s9, 1
	and s9, s7, t4
	or s6, s7, t4
	ld t4, 80(sp)
	and s8, s5, s6
	andn s6, s6, s9
	andn s7, s8, s9
	srli s8, t4, 49
	or s10, s9, s7
	add s11, s0, s8
	ld s8, 88(sp)
	sraiw t4, s11, 15
	srli s11, s8, 49
	andi s0, t4, 1
	ld t4, 160(sp)
	ld a4, 392(sp)
	add t4, t4, s11
	ld a3, 376(sp)
	andn a1, a4, a1
	sraiw s11, t4, 15
	or a4, a3, a1
	andi s8, s11, 1
	andn a1, a4, a0
	or t4, s0, s8
	and s8, s0, s8
	and s11, s10, t4
	andn t4, t4, s8
	andn s0, s11, s8
	or s8, s10, t4
	andn t4, s8, s0
	or s0, s5, s6
	andn s5, s0, s7
	or s0, s1, s2
	sh1add t4, t4, s5
	andn s1, s0, s3
	sh1add t4, t4, s1
	sh1add t4, t4, a6
	sh1add t0, t4, t2
	sh1add a2, t0, a5
	sh1add a0, a2, a1
	ld a2, 312(sp)
	ld a1, 344(sp)
	ld a3, 280(sp)
	andn a4, a2, a1
	ld a2, 328(sp)
	or a1, a3, a4
	andn a3, a1, a2
	ld a2, 224(sp)
	sh1add a0, a0, a3
	ld a1, 240(sp)
	ld a3, 208(sp)
	andn a4, a2, a1
	ld a2, 232(sp)
	or a1, a3, a4
	andn a3, a1, a2
	ld a2, 40(sp)
	sh1add a0, a0, a3
	ld a1, 8(sp)
	ld a3, 64(sp)
	andn a4, a2, a1
	ld a2, 32(sp)
	or a1, a3, a4
	andn a3, a1, a2
	ld a2, 128(sp)
	sh1add a0, a0, a3
	ld a1, 104(sp)
	ld a3, 144(sp)
	andn a4, a2, a1
	ld a2, 112(sp)
	or a1, a3, a4
	andn a3, a1, a2
	ld a2, 648(sp)
	sh1add a0, a0, a3
	ld a1, 176(sp)
	ld a3, 624(sp)
	andn a4, a2, a1
	ld a2, 656(sp)
	or a1, a3, a4
	andn a3, a1, a2
	ld a2, 480(sp)
	sh1add a0, a0, a3
	ld a1, 432(sp)
	ld a3, 528(sp)
	andn a4, a2, a1
	ld a2, 464(sp)
	or a1, a3, a4
	andn a3, a1, a2
	ld a2, 608(sp)
	sh1add a0, a0, a3
	ld a1, 576(sp)
	ld a3, 368(sp)
	andn a4, a2, a1
	ld a2, 592(sp)
	or a1, a3, a4
	andn a3, a1, a2
	ld a2, 256(sp)
	sh1add a1, a0, a3
	ld a3, 272(sp)
	and a0, a3, a2
	ld a2, 320(sp)
	ld a4, 304(sp)
	or a3, a2, a0
	ld a2, 256(sp)
	andn a5, a3, a4
	ld a3, 272(sp)
	sh1add a1, a1, a5
	or a4, a3, a2
	andn a2, a4, a0
	sh1add a0, a1, a2
	j label2
.globl main
main:
.p2align 2
	addi sp, sp, -24
	sd s0, 16(sp)
	li s0, 1
	sd s1, 8(sp)
	sd ra, 0(sp)
.p2align 2
label850:
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
	blt s0, a0, label850
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret