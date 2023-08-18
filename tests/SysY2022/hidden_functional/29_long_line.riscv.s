.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
lut_fib:
	.zero	16336
.text
.p2align 2
fib:
	# stack usage: CalleeArg[0] Local[0] RegSpill[656] CalleeSaved[104]
	addi sp, sp, -760
	mv a1, a0
pcrel897:
	auipc a2, %pcrel_hi(lut_fib)
	sd ra, 0(sp)
	sd s2, 8(sp)
	sd s6, 16(sp)
	sd s1, 24(sp)
	sd s0, 32(sp)
	sd s5, 40(sp)
	sd s4, 48(sp)
	sd s3, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	sd a0, 464(sp)
	addi a0, a2, %pcrel_lo(pcrel897)
	mv a2, zero
	jal cmmcCacheLookup
	sd a0, 416(sp)
	lw a1, 12(a0)
	beq a1, zero, label5
	lw a0, 8(a0)
label3:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s6, 16(sp)
	ld s1, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s4, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 760
	ret
label5:
	li a2, 3
	ld a1, 464(sp)
	blt a1, a2, label6
	mv a2, a1
	bge a1, zero, label708
	addiw a2, a1, 1
label708:
	sraiw a1, a2, 1
	andi a0, a1, 1
	xori t0, a0, 1
	sd a0, 480(sp)
	sd t0, 472(sp)
	ld a1, 464(sp)
	mv a5, a1
	andi a3, a1, 1
	andn a4, a3, a0
	or a2, a0, a4
	sd a3, 736(sp)
	sd a4, 752(sp)
	bge a1, zero, label710
	addiw a5, a1, 3
label710:
	sraiw a0, a5, 2
	andi a3, a0, 1
	andn a5, a2, a3
	xori t1, a3, 1
	sd a3, 496(sp)
	or a0, a3, a5
	sd t1, 488(sp)
	sd a5, 248(sp)
	ld a1, 464(sp)
	mv a4, a1
	bge a1, zero, label712
	addiw a4, a1, 7
label712:
	sraiw a1, a4, 3
	andi a2, a1, 1
	andn t0, a0, a2
	xori a4, a2, 1
	sd a2, 512(sp)
	or a0, a2, t0
	sd a4, 504(sp)
	sd t0, 216(sp)
	ld a1, 464(sp)
	mv a3, a1
	bge a1, zero, label714
	addiw a3, a1, 15
label714:
	sraiw a1, a3, 4
	andi a4, a1, 1
	andn a3, a0, a4
	xori a5, a4, 1
	sd a4, 400(sp)
	or a0, a4, a3
	sd a5, 408(sp)
	sd a3, 184(sp)
	ld a1, 464(sp)
	mv a2, a1
	bge a1, zero, label716
	addiw a2, a1, 31
label716:
	sraiw a1, a2, 5
	andi a3, a1, 1
	andn t0, a0, a3
	xori t1, a3, 1
	sd a3, 384(sp)
	or a0, a3, t0
	sd t1, 392(sp)
	sd t0, 152(sp)
	ld a1, 464(sp)
	mv a2, a1
	bge a1, zero, label718
	addiw a2, a1, 63
label718:
	sraiw a1, a2, 6
	andi a4, a1, 1
	xori t1, a4, 1
	andn a5, a0, a4
	sd a4, 336(sp)
	or a2, a4, a5
	sd t1, 360(sp)
	sd a5, 120(sp)
	ld a1, 464(sp)
	mv a0, a1
	bge a1, zero, label720
	addiw a0, a1, 127
label720:
	sraiw a1, a0, 7
	andi a5, a1, 1
	andn a0, a2, a5
	xori t2, a5, 1
	sd a5, 320(sp)
	or a3, a5, a0
	sd t2, 328(sp)
	ld a1, 464(sp)
	mv a2, a1
	bge a1, zero, label722
	addiw a2, a1, 255
label722:
	sraiw a1, a2, 8
	andi t0, a1, 1
	andn a2, a3, t0
	xori t3, t0, 1
	sd t0, 296(sp)
	or a4, t0, a2
	sd t3, 304(sp)
	ld a1, 464(sp)
	mv a3, a1
	bge a1, zero, label724
	addiw a3, a1, 511
label724:
	sraiw a1, a3, 9
	andi t1, a1, 1
	andn a3, a4, t1
	xori t4, t1, 1
	sd t1, 544(sp)
	or a5, t1, a3
	sd t4, 536(sp)
	ld a1, 464(sp)
	mv a4, a1
	bge a1, zero, label726
	addiw a4, a1, 1023
label726:
	sraiw a1, a4, 10
	andi t2, a1, 1
	andn a4, a5, t2
	xori t5, t2, 1
	sd t2, 568(sp)
	or t0, t2, a4
	sd t5, 560(sp)
	ld a1, 464(sp)
	mv a5, a1
	bge a1, zero, label728
	addiw a5, a1, 2047
label728:
	sraiw a1, a5, 11
	andi t3, a1, 1
	andn a5, t0, t3
	xori t6, t3, 1
	sd t3, 608(sp)
	lui t0, 1
	or t1, t3, a5
	addiw a6, t0, -1
	sd t6, 592(sp)
	sd a6, 448(sp)
	ld a1, 464(sp)
	mv t0, a1
	bge a1, zero, label731
	addw t0, a1, a6
label731:
	sraiw a1, t0, 12
	andi t4, a1, 1
	andn t0, t1, t4
	xori t6, t4, 1
	sd t4, 632(sp)
	lui t1, 2
	or t2, t4, t0
	addiw s2, t1, -1
	sd t6, 624(sp)
	sd s2, 440(sp)
	ld a1, 464(sp)
	mv t1, a1
	bge a1, zero, label734
	addw t1, a1, s2
label734:
	sraiw a1, t1, 13
	andi t6, a1, 1
	andn t1, t2, t6
	xori t5, t6, 1
	sd t6, 672(sp)
	lui t2, 4
	or t3, t6, t1
	addiw s6, t2, -1
	sd t5, 664(sp)
	sd s6, 432(sp)
	ld a1, 464(sp)
	mv t2, a1
	bge a1, zero, label737
	addw t2, a1, s6
label737:
	sraiw a1, t2, 14
	andi t5, a1, 1
	andn t2, t3, t5
	xori s0, t5, 1
	sd t5, 720(sp)
	lui t3, 8
	or t4, t5, t2
	addiw s6, t3, -1
	sd s0, 696(sp)
	sd s6, 424(sp)
	ld a1, 464(sp)
	mv t3, a1
	bge a1, zero, label740
	addw t3, a1, s6
label740:
	sraiw a1, t3, 15
	andi t6, a1, 1
	andn t3, t4, t6
	xori a7, t6, 1
	sd t6, 280(sp)
	or a6, t2, a7
	sd a7, 744(sp)
	ld t5, 720(sp)
	ld s0, 696(sp)
	or t6, t5, a6
	or t4, t1, s0
	andn a1, t6, t3
	ld t6, 672(sp)
	ld t5, 664(sp)
	or a7, t6, t4
	ld t4, 632(sp)
	andn a6, a7, t2
	ld t6, 624(sp)
	or t2, t0, t5
	sh1add t3, a1, a6
	or a6, t4, t2
	or t2, a5, t6
	andn t5, a6, t1
	sh1add a1, t3, t5
	ld t3, 608(sp)
	ld t6, 592(sp)
	or t5, t3, t2
	ld t2, 568(sp)
	andn t4, t5, t0
	ld t5, 560(sp)
	or t0, a4, t6
	sh1add t1, a1, t4
	or t4, t2, t0
	or t0, a3, t5
	andn t3, t4, a5
	sh1add a1, t1, t3
	ld t1, 544(sp)
	ld t4, 536(sp)
	or t3, t1, t0
	ld t0, 296(sp)
	or t1, a2, t4
	andn t2, t3, a4
	ld t3, 304(sp)
	sh1add a5, a1, t2
	or a1, t0, t1
	andn t2, a1, a3
	or a3, a0, t3
	sh1add a4, a5, t2
	ld a5, 320(sp)
	ld t2, 328(sp)
	or t1, a5, a3
	ld a5, 120(sp)
	andn t0, t1, a2
	or a3, a5, t2
	sh1add a1, a4, t0
	ld a4, 336(sp)
	ld t1, 360(sp)
	or t0, a4, a3
	andn a5, t0, a0
	ld t0, 152(sp)
	sh1add a2, a1, a5
	ld a3, 384(sp)
	or a0, t0, t1
	ld a5, 120(sp)
	or a4, a3, a0
	ld t1, 392(sp)
	andn t0, a4, a5
	ld a3, 184(sp)
	sh1add a1, a2, t0
	ld a4, 400(sp)
	or a0, a3, t1
	ld t0, 152(sp)
	or a2, a4, a0
	ld a5, 408(sp)
	andn a3, a2, t0
	ld t0, 216(sp)
	sh1add a0, a1, a3
	ld a2, 512(sp)
	or a1, t0, a5
	ld a3, 184(sp)
	or t1, a2, a1
	ld a4, 504(sp)
	andn t0, t1, a3
	ld a5, 248(sp)
	sh1add a1, a0, t0
	ld a3, 496(sp)
	or a0, a5, a4
	ld t0, 216(sp)
	or t2, a3, a0
	ld t1, 488(sp)
	andn a5, t2, t0
	ld a4, 752(sp)
	sh1add a2, a1, a5
	ld a0, 480(sp)
	or a1, a4, t1
	ld a5, 248(sp)
	or a3, a0, a1
	ld t0, 472(sp)
	andn a4, a3, a5
	ld a3, 736(sp)
	sh1add a0, a2, a4
	ld a4, 752(sp)
	or a2, a3, t0
	andn a5, a2, a4
	xori a2, a3, 1
	sh1add a1, a0, a5
	sh1add a0, a1, a2
	jal fib
	mv a2, a0
	sd a0, 456(sp)
	bge a0, zero, label742
	addiw a2, a0, 1
label742:
	sraiw a3, a2, 1
	andi a1, a3, 1
	sd a1, 224(sp)
	ld a0, 480(sp)
	ld a3, 496(sp)
	andn a5, a0, a3
	or a0, a3, a5
	sd a5, 136(sp)
	ld a2, 512(sp)
	andn t1, a0, a2
	or a1, a2, t1
	sd t1, 112(sp)
	ld a4, 400(sp)
	ld a3, 384(sp)
	andn a0, a1, a4
	or a2, a4, a0
	ld a4, 336(sp)
	andn a1, a2, a3
	or a5, a3, a1
	andn a2, a5, a4
	ld a5, 320(sp)
	or t0, a4, a2
	andn a3, t0, a5
	ld t0, 296(sp)
	or t1, a5, a3
	andn a4, t1, t0
	ld t1, 544(sp)
	or t2, t0, a4
	andn a5, t2, t1
	ld t2, 568(sp)
	or t3, t1, a5
	andn t0, t3, t2
	ld t3, 608(sp)
	or t4, t2, t0
	andn t1, t4, t3
	ld t4, 632(sp)
	or t5, t3, t1
	ld t6, 672(sp)
	andn t2, t5, t4
	ld t5, 720(sp)
	or a7, t4, t2
	andn t3, a7, t6
	or a6, t6, t3
	ld t6, 280(sp)
	andn t4, a6, t5
	ld a7, 744(sp)
	or s0, t5, t4
	andn a6, s0, t6
	ld s0, 696(sp)
	or t6, t4, a7
	or s1, t5, t6
	ld t6, 672(sp)
	or t5, t3, s0
	andn a7, s1, a6
	or s1, t6, t5
	ld t5, 664(sp)
	andn s0, s1, t4
	or t6, t2, t5
	sh1add a6, a7, s0
	ld t4, 632(sp)
	or s0, t4, t6
	ld t6, 624(sp)
	andn a7, s0, t3
	ld t3, 608(sp)
	sh1add t5, a6, a7
	or a7, t1, t6
	or t6, t3, a7
	andn a6, t6, t2
	ld t6, 592(sp)
	sh1add t4, t5, a6
	ld t2, 568(sp)
	or a6, t0, t6
	or t5, t2, a6
	andn a7, t5, t1
	ld t5, 560(sp)
	sh1add t3, t4, a7
	ld t1, 544(sp)
	or t6, a5, t5
	ld t4, 536(sp)
	or a7, t1, t6
	or t5, a4, t4
	andn a6, a7, t0
	ld t0, 296(sp)
	sh1add t2, t3, a6
	ld t3, 304(sp)
	or a6, t0, t5
	or t4, a3, t3
	andn t6, a6, a5
	ld a5, 320(sp)
	sh1add t1, t2, t6
	ld t2, 328(sp)
	or t6, a5, t4
	or t3, a2, t2
	andn t5, t6, a4
	ld a4, 336(sp)
	sh1add t0, t1, t5
	or t4, a4, t3
	ld t1, 360(sp)
	andn t2, t4, a3
	or a4, a1, t1
	sh1add a5, t0, t2
	ld a3, 384(sp)
	ld t1, 392(sp)
	or t3, a3, a4
	ld a4, 400(sp)
	andn t2, t3, a2
	or a2, a0, t1
	sh1add t0, a5, t2
	or t3, a4, a2
	ld a5, 408(sp)
	andn t2, t3, a1
	ld t1, 112(sp)
	sh1add a3, t0, t2
	ld a2, 512(sp)
	or a4, t1, a5
	or t0, a2, a4
	ld a4, 504(sp)
	andn t1, t0, a0
	ld a5, 136(sp)
	sh1add a1, a3, t1
	or a0, a5, a4
	ld a3, 496(sp)
	ld t1, 112(sp)
	or t0, a3, a0
	ld a0, 480(sp)
	andn a4, t0, t1
	ld t1, 488(sp)
	sh1add a2, a1, a4
	ld t0, 472(sp)
	or a1, a0, t1
	andn a4, a1, a5
	ld a1, 464(sp)
	sh1add a0, a2, a4
	andi a2, a1, 1
	sh1add a3, a0, t0
	sh1add a0, a3, a2
	jal fib
	mv a2, a0
	mv a1, a0
	sd a0, 688(sp)
	bge a0, zero, label744
	addiw a2, a0, 1
label744:
	sraiw a3, a2, 1
	ld a1, 224(sp)
	andi a0, a3, 1
	or a3, a1, a0
	and a2, a1, a0
	andn t1, a3, a2
	sd t1, 344(sp)
	ld a0, 456(sp)
	andi a4, a0, 1
	and a5, t1, a4
	sd a4, 368(sp)
	ld a1, 688(sp)
	andi a3, a1, 1
	and t0, a5, a3
	or a4, a2, t0
	sd a3, 376(sp)
	mv a3, a0
	sd t0, 352(sp)
	sd a4, 312(sp)
	bge a0, zero, label746
	addiw a3, a0, 3
label746:
	sraiw a4, a3, 2
	ld a1, 688(sp)
	andi a0, a4, 1
	mv a2, a1
	bge a1, zero, label748
	addiw a2, a1, 3
label748:
	sraiw a3, a2, 2
	andi a1, a3, 1
	and a3, a0, a1
	or a5, a0, a1
	sd a5, 288(sp)
	ld a4, 312(sp)
	sd a3, 528(sp)
	and t0, a4, a5
	andn a2, t0, a3
	or a5, a3, a2
	sd a2, 520(sp)
	sd a5, 552(sp)
	ld a0, 456(sp)
	mv a2, a0
	bge a0, zero, label750
	addiw a2, a0, 7
label750:
	sraiw a3, a2, 3
	ld a1, 688(sp)
	andi a0, a3, 1
	mv a2, a1
	bge a1, zero, label752
	addiw a2, a1, 7
label752:
	sraiw a3, a2, 3
	andi a1, a3, 1
	and a3, a0, a1
	or a4, a0, a1
	sd a4, 576(sp)
	ld a5, 552(sp)
	sd a3, 600(sp)
	and a2, a5, a4
	andn a1, a2, a3
	or a4, a3, a1
	sd a1, 584(sp)
	sd a4, 616(sp)
	ld a0, 456(sp)
	mv a2, a0
	bge a0, zero, label754
	addiw a2, a0, 15
label754:
	sraiw a3, a2, 4
	ld a1, 688(sp)
	andi a0, a3, 1
	mv a2, a1
	bge a1, zero, label756
	addiw a2, a1, 15
label756:
	sraiw a4, a2, 4
	andi a1, a4, 1
	and a2, a0, a1
	or a3, a0, a1
	sd a3, 640(sp)
	ld a4, 616(sp)
	sd a2, 656(sp)
	and t0, a4, a3
	andn a5, t0, a2
	or a3, a2, a5
	sd a5, 648(sp)
	sd a3, 680(sp)
	ld a0, 456(sp)
	mv a2, a0
	bge a0, zero, label758
	addiw a2, a0, 31
label758:
	sraiw a3, a2, 5
	ld a1, 688(sp)
	andi a0, a3, 1
	mv a2, a1
	bge a1, zero, label760
	addiw a2, a1, 31
label760:
	sraiw a3, a2, 5
	andi a1, a3, 1
	and a2, a0, a1
	or a4, a0, a1
	sd a4, 704(sp)
	ld a3, 680(sp)
	sd a2, 728(sp)
	and t0, a3, a4
	andn a5, t0, a2
	or a4, a2, a5
	sd a5, 712(sp)
	sd a4, 272(sp)
	ld a0, 456(sp)
	mv a2, a0
	bge a0, zero, label762
	addiw a2, a0, 63
label762:
	sraiw a3, a2, 6
	ld a1, 688(sp)
	andi a0, a3, 1
	mv a2, a1
	bge a1, zero, label764
	addiw a2, a1, 63
label764:
	sraiw a3, a2, 6
	andi a1, a3, 1
	and a2, a0, a1
	or a5, a0, a1
	sd a5, 264(sp)
	ld a4, 272(sp)
	sd a2, 240(sp)
	and t0, a4, a5
	andn a3, t0, a2
	or a4, a2, a3
	sd a3, 256(sp)
	sd a4, 232(sp)
	ld a0, 456(sp)
	mv a2, a0
	bge a0, zero, label766
	addiw a2, a0, 127
label766:
	sraiw a3, a2, 7
	ld a1, 688(sp)
	andi a0, a3, 1
	mv a2, a1
	bge a1, zero, label768
	addiw a2, a1, 127
label768:
	sraiw a3, a2, 7
	andi a1, a3, 1
	and a2, a0, a1
	or a5, a0, a1
	sd a5, 208(sp)
	ld a4, 232(sp)
	sd a2, 192(sp)
	and t0, a4, a5
	andn a3, t0, a2
	or a4, a2, a3
	sd a3, 200(sp)
	sd a4, 176(sp)
	ld a0, 456(sp)
	mv a2, a0
	bge a0, zero, label770
	addiw a2, a0, 255
label770:
	sraiw a3, a2, 8
	ld a1, 688(sp)
	andi a0, a3, 1
	mv a2, a1
	bge a1, zero, label772
	addiw a2, a1, 255
label772:
	sraiw a4, a2, 8
	andi a1, a4, 1
	and a2, a0, a1
	or a3, a0, a1
	sd a3, 168(sp)
	ld a4, 176(sp)
	sd a2, 144(sp)
	and a5, a4, a3
	andn a3, a5, a2
	or a4, a2, a3
	sd a3, 160(sp)
	sd a4, 128(sp)
	ld a0, 456(sp)
	mv a2, a0
	bge a0, zero, label774
	addiw a2, a0, 511
label774:
	sraiw a3, a2, 9
	ld a1, 688(sp)
	andi a0, a3, 1
	mv a2, a1
	bge a1, zero, label776
	addiw a2, a1, 511
label776:
	sraiw a3, a2, 9
	andi a1, a3, 1
	and a3, a0, a1
	or a5, a0, a1
	sd a5, 104(sp)
	ld a4, 128(sp)
	ld a0, 456(sp)
	and t0, a4, a5
	mv a5, a0
	andn a2, t0, a3
	or a4, a3, a2
	bge a0, zero, label778
	addiw a5, a0, 1023
label778:
	sraiw t1, a5, 10
	ld a1, 688(sp)
	andi a0, t1, 1
	mv t0, a1
	bge a1, zero, label780
	addiw t0, a1, 1023
label780:
	sraiw t1, t0, 10
	andi a1, t1, 1
	and t1, a0, a1
	or a5, a0, a1
	ld a0, 456(sp)
	and t3, a4, a5
	andn t0, t3, t1
	mv t3, a0
	or t2, t1, t0
	bge a0, zero, label782
	addiw t3, a0, 2047
label782:
	sraiw t5, t3, 11
	ld a1, 688(sp)
	andi a0, t5, 1
	mv t4, a1
	bge a1, zero, label784
	addiw t4, a1, 2047
label784:
	sraiw t5, t4, 11
	andi a1, t5, 1
	and t5, a0, a1
	or t3, a0, a1
	ld a0, 456(sp)
	and a6, t2, t3
	mv a7, a0
	andn t4, a6, t5
	or t6, t5, t4
	bge a0, zero, label786
	ld a6, 448(sp)
	addw a7, a0, a6
label786:
	sraiw a6, a7, 12
	ld a1, 688(sp)
	andi a0, a6, 1
	mv a7, a1
	bge a1, zero, label788
	ld a6, 448(sp)
	addw a7, a1, a6
label788:
	sraiw s0, a7, 12
	andi a1, s0, 1
	and s0, a0, a1
	or a6, a0, a1
	ld a0, 456(sp)
	and s2, t6, a6
	mv a1, a0
	andn a7, s2, s0
	or s1, s0, a7
	bge a0, zero, label790
	ld s2, 440(sp)
	addw a1, a0, s2
label790:
	sraiw s4, a1, 13
	ld a1, 688(sp)
	andi a0, s4, 1
	mv s3, a1
	bge a1, zero, label792
	ld s2, 440(sp)
	addw s3, a1, s2
label792:
	sraiw s4, s3, 13
	andi a1, s4, 1
	and s4, a0, a1
	or s2, a0, a1
	ld a0, 456(sp)
	and s6, s1, s2
	mv a1, a0
	andn s3, s6, s4
	or s5, s4, s3
	bge a0, zero, label794
	ld s6, 432(sp)
	addw a1, a0, s6
label794:
	sraiw s7, a1, 14
	ld a1, 688(sp)
	andi a0, s7, 1
	mv s8, a1
	bge a1, zero, label796
	ld s6, 432(sp)
	addw s8, a1, s6
label796:
	sraiw s9, s8, 14
	andi a1, s9, 1
	and s9, a0, a1
	or s7, a0, a1
	ld a0, 456(sp)
	and s6, s5, s7
	mv a1, a0
	andn s8, s6, s9
	or s10, s9, s8
	bge a0, zero, label798
	ld s6, 424(sp)
	addw a1, a0, s6
label798:
	sraiw s6, a1, 15
	ld a1, 688(sp)
	andi a0, s6, 1
	mv s11, a1
	bge a1, zero, label800
	ld s6, 424(sp)
	addw s11, a1, s6
label800:
	sraiw a1, s11, 15
	andi s6, a1, 1
	or a1, a0, s6
	and a0, a0, s6
	and s11, s10, a1
	andn s6, a1, a0
	andn s11, s11, a0
	or a0, s10, s6
	andn a1, a0, s11
	andn a0, s7, s9
	or s6, s5, a0
	andn s5, s2, s4
	andn s10, s6, s8
	andn s2, a6, s0
	or s7, s1, s5
	sh1add a0, a1, s10
	or s1, t6, s2
	andn s6, s7, s3
	andn a6, s1, a7
	sh1add a1, a0, s6
	andn a7, t3, t5
	sh1add a0, a1, a6
	andn t5, a5, t1
	or t6, t2, a7
	or t3, a4, t5
	ld a5, 104(sp)
	andn a6, t6, t4
	andn t2, t3, t0
	sh1add a1, a0, a6
	ld a4, 128(sp)
	andn t0, a5, a3
	sh1add a0, a1, t2
	ld a3, 168(sp)
	or t1, a4, t0
	andn a5, t1, a2
	ld a2, 144(sp)
	sh1add a1, a0, a5
	ld a4, 176(sp)
	andn a0, a3, a2
	ld a3, 160(sp)
	or t0, a4, a0
	ld a5, 208(sp)
	andn t1, t0, a3
	ld a2, 192(sp)
	sh1add a0, a1, t1
	ld a4, 232(sp)
	andn a1, a5, a2
	ld a3, 200(sp)
	or t0, a4, a1
	ld a5, 264(sp)
	andn t1, t0, a3
	ld a2, 240(sp)
	sh1add a1, a0, t1
	ld a4, 272(sp)
	andn a0, a5, a2
	ld a3, 256(sp)
	or t0, a4, a0
	ld a4, 704(sp)
	andn a5, t0, a3
	ld a2, 728(sp)
	sh1add a0, a1, a5
	ld a3, 680(sp)
	andn a1, a4, a2
	ld a5, 712(sp)
	or t0, a3, a1
	ld a3, 640(sp)
	andn a4, t0, a5
	ld a2, 656(sp)
	sh1add a1, a0, a4
	andn t0, a3, a2
	ld a4, 616(sp)
	ld a5, 648(sp)
	or a0, a4, t0
	ld a4, 576(sp)
	andn t1, a0, a5
	ld a3, 600(sp)
	sh1add a2, a1, t1
	ld a5, 552(sp)
	andn a0, a4, a3
	ld a1, 584(sp)
	or t0, a5, a0
	ld a5, 288(sp)
	andn a4, t0, a1
	ld a3, 528(sp)
	sh1add a0, a2, a4
	andn a1, a5, a3
	ld a4, 312(sp)
	ld a2, 520(sp)
	or t0, a4, a1
	ld a3, 376(sp)
	andn a5, t0, a2
	ld a4, 368(sp)
	sh1add a1, a0, a5
	ld t1, 344(sp)
	and a0, a4, a3
	ld t0, 352(sp)
	or a5, t1, a0
	andn t2, a5, t0
	or a5, a4, a3
	sh1add a2, a1, t2
	li a3, 1
	andn t0, a5, a0
	ld a0, 416(sp)
	sh1add a1, a2, t0
	sw a3, 12(a0)
	sw a1, 8(a0)
	mv a0, a1
	j label3
label6:
	li a2, 1
	ld a0, 416(sp)
	sw a2, 12(a0)
	sw a2, 8(a0)
	mv a0, a2
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
label899:
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
	blt s0, s1, label899
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 32
	ret
