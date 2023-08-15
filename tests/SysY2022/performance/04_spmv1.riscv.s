.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
x:
	.zero	400040
.align 8
y:
	.zero	12000000
.align 8
v:
	.zero	12000000
.align 8
a:
	.zero	400040
.align 8
b:
	.zero	400040
.align 8
cmmc_parallel_body_payload_0:
	.zero	4
.align 8
cmmc_parallel_body_payload_1:
	.zero	8
.align 8
cmmc_parallel_body_payload_2:
	.zero	4
.align 8
cmmc_parallel_body_payload_3:
	.zero	12
.align 8
cmmc_parallel_body_payload_4:
	.zero	8
.align 8
cmmc_parallel_body_payload_5:
	.zero	12
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[0] RegSpill[48] CalleeSaved[104]
	addi sp, sp, -152
pcrel855:
	auipc a0, %pcrel_hi(x)
	sd ra, 0(sp)
	sd s9, 8(sp)
	addi s9, a0, %pcrel_lo(pcrel855)
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s2, 48(sp)
	sd s7, 56(sp)
	sd s3, 64(sp)
	sd s4, 72(sp)
	sd s8, 80(sp)
	sd s11, 88(sp)
	sd s10, 96(sp)
	sd s9, 104(sp)
	mv a0, s9
	jal getarray
pcrel856:
	auipc a1, %pcrel_hi(y)
	mv s0, a0
	addi a0, a1, %pcrel_lo(pcrel856)
	jal getarray
pcrel857:
	auipc a1, %pcrel_hi(v)
	addi a0, a1, %pcrel_lo(pcrel857)
	jal getarray
pcrel858:
	auipc a2, %pcrel_hi(a)
	addi a1, a2, %pcrel_lo(pcrel858)
	sd a1, 112(sp)
	mv a0, a1
	jal getarray
	li a0, 39
	jal _sysy_starttime
	mv s8, zero
	addiw a1, s0, -1
pcrel859:
	auipc a0, %pcrel_hi(b)
	sd a1, 120(sp)
	addi a3, a0, %pcrel_lo(pcrel859)
pcrel860:
	auipc a1, %pcrel_hi(cmmc_parallel_body_1)
pcrel861:
	auipc a0, %pcrel_hi(cmmc_parallel_body_0)
	sd a3, 144(sp)
	addi s2, a1, %pcrel_lo(pcrel860)
	addi s6, a0, %pcrel_lo(pcrel861)
pcrel862:
	auipc a3, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel863:
	auipc a1, %pcrel_hi(cmmc_parallel_body_4)
pcrel864:
	auipc a0, %pcrel_hi(cmmc_parallel_body_2)
	addi a2, a3, %pcrel_lo(pcrel862)
	addi s4, a1, %pcrel_lo(pcrel863)
	addi s7, a0, %pcrel_lo(pcrel864)
pcrel865:
	auipc a3, %pcrel_hi(cmmc_parallel_body_payload_3)
	sd a2, 136(sp)
pcrel866:
	auipc a0, %pcrel_hi(cmmc_parallel_body_5)
	addi s0, a3, %pcrel_lo(pcrel865)
	addi s5, a0, %pcrel_lo(pcrel866)
pcrel867:
	auipc a3, %pcrel_hi(cmmc_parallel_body_payload_4)
	addi a2, a3, %pcrel_lo(pcrel867)
pcrel868:
	auipc a3, %pcrel_hi(cmmc_parallel_body_payload_5)
	sd a2, 128(sp)
	addi s1, a3, %pcrel_lo(pcrel868)
pcrel869:
	auipc a2, %pcrel_hi(cmmc_parallel_body_3)
	addi s3, a2, %pcrel_lo(pcrel869)
	j label660
.p2align 2
label682:
	ld a1, 120(sp)
	ble a1, s10, label778
.p2align 2
label683:
	addi s9, s9, 4
	mv s11, s10
	lw a0, 0(s9)
	addiw s10, s10, 1
	lw a1, 4(s9)
	bge a0, a1, label841
.p2align 2
label678:
	auipc a3, %pcrel_hi(cmmc_parallel_body_payload_4)
	sw a0, %pcrel_lo(label678)(a3)
	ld a2, 128(sp)
	sw a1, 4(a2)
	mv a2, s4
	jal cmmcParallelFor
	lw a0, 0(s9)
	lw a1, 4(s9)
	bge a0, a1, label682
.p2align 2
label684:
	ld a3, 144(sp)
	sh2add a4, s11, a3
pcrel870:
	auipc a3, %pcrel_hi(cmmc_parallel_body_payload_5)
	lw a5, 0(a4)
	lw a1, 4(s9)
	addi a2, a5, -1
	sw a0, %pcrel_lo(pcrel870)(a3)
	sw a2, 4(s1)
	sw a1, 8(s1)
	mv a2, s5
	jal cmmcParallelFor
	ld a1, 120(sp)
	bgt a1, s10, label683
	addiw s8, s8, 1
	li a0, 100
	bge s8, a0, label663
.p2align 2
label660:
	ld a1, 120(sp)
	ble a1, zero, label662
pcrel871:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_0)
	mv a0, zero
	sw a1, %pcrel_lo(pcrel871)(a2)
	mv a2, s6
	jal cmmcParallelFor
	mv s11, zero
	ld s9, 104(sp)
	lw a0, 0(s9)
	li s10, 1
	lw a1, 4(s9)
	bge a0, a1, label734
.p2align 2
label668:
	auipc a3, %pcrel_hi(cmmc_parallel_body_payload_1)
	sw a0, %pcrel_lo(label668)(a3)
	ld a2, 136(sp)
	sw a1, 4(a2)
	mv a2, s2
	jal cmmcParallelFor
	lw a0, 0(s9)
	lw a1, 4(s9)
	bge a0, a1, label743
.p2align 2
label672:
	ld a1, 112(sp)
	sh2add a3, s11, a1
	lw a4, 0(a3)
pcrel872:
	auipc a3, %pcrel_hi(cmmc_parallel_body_payload_3)
	addi a2, a4, -1
	lw a1, 4(s9)
	sw a0, %pcrel_lo(pcrel872)(a3)
	sw a2, 4(s0)
	sw a1, 8(s0)
	mv a2, s3
	jal cmmcParallelFor
	ld a1, 120(sp)
	ble a1, s10, label674
.p2align 2
label685:
	addi s9, s9, 4
	mv s11, s10
	lw a0, 0(s9)
	addiw s10, s10, 1
	lw a1, 4(s9)
	blt a0, a1, label668
.p2align 2
label743:
	ld a1, 120(sp)
	bgt a1, s10, label685
.p2align 2
label674:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_2)
	mv a0, zero
	ld a1, 120(sp)
	sw a1, %pcrel_lo(label674)(a2)
	mv a2, s7
	jal cmmcParallelFor
	mv s11, zero
	ld s9, 104(sp)
	lw a0, 0(s9)
	li s10, 1
	lw a1, 4(s9)
	blt a0, a1, label678
	j label682
label662:
	addiw s8, s8, 1
	li a0, 100
	blt s8, a0, label660
	j label663
.p2align 2
label841:
	blt a0, a1, label684
	j label682
label663:
	li a0, 47
	jal _sysy_stoptime
	ld a1, 120(sp)
	ld a3, 144(sp)
	mv a0, a1
	mv a1, a3
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s9, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s2, 48(sp)
	ld s7, 56(sp)
	ld s3, 64(sp)
	ld s4, 72(sp)
	ld s8, 80(sp)
	ld s11, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 152
	ret
label734:
	blt a0, a1, label672
	j label743
label778:
	addiw s8, s8, 1
	li a0, 100
	blt s8, a0, label660
	j label663
.p2align 2
cmmc_parallel_body_0:
	mv a2, a0
	addiw a4, a0, 3
pcrel114:
	auipc a0, %pcrel_hi(b)
	addi a3, a0, %pcrel_lo(pcrel114)
	ble a1, a4, label16
	addiw t0, a2, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge t0, a4, label37
	sh2add a0, a2, a3
	j label12
.p2align 2
label15:
	addi a0, a0, 64
.p2align 2
label12:
	addiw a2, a2, 16
	sd zero, 0(a0)
	sd zero, 8(a0)
	sd zero, 16(a0)
	sd zero, 24(a0)
	sd zero, 32(a0)
	sd zero, 40(a0)
	sd zero, 48(a0)
	sd zero, 56(a0)
	bgt a5, a2, label15
	mv a0, a2
label3:
	ble a4, a0, label16
	sh2add a5, a0, a3
	mv a2, a0
	j label7
label10:
	addi a5, a5, 16
label7:
	addiw a2, a2, 4
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	bgt a4, a2, label10
label16:
	ble a1, a2, label23
	sh2add a0, a2, a3
	j label19
label22:
	addi a0, a0, 4
label19:
	addiw a2, a2, 1
	sw zero, 0(a0)
	bgt a1, a2, label22
label23:
	ret
label37:
	mv a0, a2
	mv a2, zero
	j label3
.p2align 2
cmmc_parallel_body_1:
	mv t0, a0
	addiw t1, a0, 3
pcrel214:
	auipc a5, %pcrel_hi(b)
pcrel215:
	auipc a0, %pcrel_hi(y)
	addi a2, a5, %pcrel_lo(pcrel214)
	addi a4, a0, %pcrel_lo(pcrel215)
	addiw a5, a1, -3
pcrel216:
	auipc a0, %pcrel_hi(v)
	addi a3, a0, %pcrel_lo(pcrel216)
	ble a1, t1, label116
	sh2add a0, t0, a3
.p2align 2
label125:
	sh2add t1, t0, a4
	addiw t0, t0, 4
	lw t3, 0(t1)
	lw t5, 0(a0)
	sh2add t2, t3, a2
	amoadd.w.aqrl t6, t5, (t2)
	lw t4, 4(t1)
	lw t5, 4(a0)
	sh2add t3, t4, a2
	amoadd.w.aqrl t6, t5, (t3)
	lw t4, 8(t1)
	lw t5, 8(a0)
	sh2add t2, t4, a2
	amoadd.w.aqrl t6, t5, (t2)
	lw t4, 12(t1)
	lw t2, 12(a0)
	sh2add t3, t4, a2
	amoadd.w.aqrl t1, t2, (t3)
	ble a5, t0, label116
	addi a0, a0, 16
	j label125
label116:
	ble a1, t0, label123
	sh2add a0, t0, a4
label119:
	lw a5, 0(a0)
	sh2add t2, t0, a3
	sh2add a4, a5, a2
	addiw t0, t0, 1
	lw t1, 0(t2)
	amoadd.w.aqrl a5, t1, (a4)
	ble a1, t0, label123
	addi a0, a0, 4
	j label119
label123:
	ret
.p2align 2
cmmc_parallel_body_2:
	mv a2, a0
	addiw a4, a0, 3
pcrel330:
	auipc a0, %pcrel_hi(a)
	addi a3, a0, %pcrel_lo(pcrel330)
	ble a1, a4, label232
	addiw t0, a2, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge t0, a4, label253
	sh2add a0, a2, a3
	j label228
.p2align 2
label231:
	addi a0, a0, 64
.p2align 2
label228:
	addiw a2, a2, 16
	sd zero, 0(a0)
	sd zero, 8(a0)
	sd zero, 16(a0)
	sd zero, 24(a0)
	sd zero, 32(a0)
	sd zero, 40(a0)
	sd zero, 48(a0)
	sd zero, 56(a0)
	bgt a5, a2, label231
	mv a0, a2
label219:
	ble a4, a0, label232
	sh2add a5, a0, a3
	mv a2, a0
	j label223
label226:
	addi a5, a5, 16
label223:
	addiw a2, a2, 4
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	bgt a4, a2, label226
label232:
	ble a1, a2, label239
	sh2add a0, a2, a3
	j label235
label238:
	addi a0, a0, 4
label235:
	addiw a2, a2, 1
	sw zero, 0(a0)
	bgt a1, a2, label238
label239:
	ret
label253:
	mv a0, a2
	mv a2, zero
	j label219
.p2align 2
cmmc_parallel_body_3:
	mv t1, a0
	addiw a3, a0, 3
pcrel440:
	auipc a5, %pcrel_hi(cmmc_parallel_body_payload_3)
pcrel441:
	auipc a4, %pcrel_hi(y)
pcrel442:
	auipc t0, %pcrel_hi(b)
pcrel443:
	auipc t2, %pcrel_hi(v)
	addi a2, a5, %pcrel_lo(pcrel440)
	addi a5, a4, %pcrel_lo(pcrel441)
	lw a0, 4(a2)
	addi a4, t2, %pcrel_lo(pcrel443)
	addi a2, t0, %pcrel_lo(pcrel442)
	addiw t0, a1, -3
	ble a1, a3, label332
	sh2add a3, t1, a4
.p2align 2
label341:
	sh2add t2, t1, a5
	addiw t1, t1, 4
	lw t6, 0(t2)
	lw t3, 0(a3)
	sh2add t4, t6, a2
	mulw t5, a0, t3
	amoadd.w.aqrl a6, t5, (t4)
	lw t6, 4(t2)
	lw t4, 4(a3)
	sh2add t3, t6, a2
	mulw t5, a0, t4
	amoadd.w.aqrl a6, t5, (t3)
	lw t6, 8(t2)
	lw t3, 8(a3)
	sh2add t4, t6, a2
	mulw a6, a0, t3
	amoadd.w.aqrl t6, a6, (t4)
	lw t5, 12(t2)
	lw t4, 12(a3)
	sh2add t3, t5, a2
	mulw t2, a0, t4
	amoadd.w.aqrl t5, t2, (t3)
	ble t0, t1, label332
	addi a3, a3, 16
	j label341
label332:
	ble a1, t1, label339
	sh2add a3, t1, a5
label335:
	sh2add t0, t1, a4
	lw a5, 0(a3)
	addiw t1, t1, 1
	sh2add t4, a5, a2
	lw t3, 0(t0)
	mulw t2, a0, t3
	amoadd.w.aqrl t0, t2, (t4)
	ble a1, t1, label339
	addi a3, a3, 4
	j label335
label339:
	ret
.p2align 2
cmmc_parallel_body_4:
	mv t0, a0
	addiw t1, a0, 3
pcrel543:
	auipc a5, %pcrel_hi(a)
pcrel544:
	auipc a0, %pcrel_hi(y)
	addi a2, a5, %pcrel_lo(pcrel543)
	addi a4, a0, %pcrel_lo(pcrel544)
	addiw a5, a1, -3
pcrel545:
	auipc a0, %pcrel_hi(v)
	addi a3, a0, %pcrel_lo(pcrel545)
	ble a1, t1, label445
	sh2add a0, t0, a3
.p2align 2
label454:
	sh2add t1, t0, a4
	addiw t0, t0, 4
	lw t3, 0(t1)
	lw t5, 0(a0)
	sh2add t2, t3, a2
	amoadd.w.aqrl t6, t5, (t2)
	lw t4, 4(t1)
	lw t5, 4(a0)
	sh2add t3, t4, a2
	amoadd.w.aqrl t6, t5, (t3)
	lw t4, 8(t1)
	lw t5, 8(a0)
	sh2add t2, t4, a2
	amoadd.w.aqrl t6, t5, (t2)
	lw t4, 12(t1)
	lw t2, 12(a0)
	sh2add t3, t4, a2
	amoadd.w.aqrl t1, t2, (t3)
	ble a5, t0, label445
	addi a0, a0, 16
	j label454
label445:
	ble a1, t0, label452
	sh2add a0, t0, a4
label448:
	lw a5, 0(a0)
	sh2add t2, t0, a3
	sh2add a4, a5, a2
	addiw t0, t0, 1
	lw t1, 0(t2)
	amoadd.w.aqrl a5, t1, (a4)
	ble a1, t0, label452
	addi a0, a0, 4
	j label448
label452:
	ret
.p2align 2
cmmc_parallel_body_5:
	mv t1, a0
	addiw a3, a0, 3
pcrel655:
	auipc a5, %pcrel_hi(cmmc_parallel_body_payload_5)
pcrel656:
	auipc a4, %pcrel_hi(y)
pcrel657:
	auipc t0, %pcrel_hi(a)
pcrel658:
	auipc t2, %pcrel_hi(v)
	addi a2, a5, %pcrel_lo(pcrel655)
	addi a5, a4, %pcrel_lo(pcrel656)
	lw a0, 4(a2)
	addi a4, t2, %pcrel_lo(pcrel658)
	addi a2, t0, %pcrel_lo(pcrel657)
	addiw t0, a1, -3
	ble a1, a3, label552
	sh2add a3, t1, a4
.p2align 2
label548:
	sh2add t2, t1, a5
	addiw t1, t1, 4
	lw t4, 0(t2)
	lw t5, 0(a3)
	sh2add t3, t4, a2
	mulw t6, a0, t5
	amoadd.w.aqrl a6, t6, (t3)
	lw t4, 4(t2)
	lw t3, 4(a3)
	sh2add t5, t4, a2
	mulw t6, a0, t3
	amoadd.w.aqrl a7, t6, (t5)
	lw a6, 8(t2)
	lw t3, 8(a3)
	sh2add t4, a6, a2
	mulw t6, a0, t3
	amoadd.w.aqrl a6, t6, (t4)
	lw t5, 12(t2)
	lw t4, 12(a3)
	sh2add t3, t5, a2
	mulw t2, a0, t4
	amoadd.w.aqrl t5, t2, (t3)
	ble t0, t1, label552
	addi a3, a3, 16
	j label548
label552:
	ble a1, t1, label559
	sh2add a3, t1, a5
label555:
	sh2add t0, t1, a4
	lw a5, 0(a3)
	addiw t1, t1, 1
	sh2add t3, a5, a2
	lw t4, 0(t0)
	mulw t2, a0, t4
	amoadd.w.aqrl t0, t2, (t3)
	ble a1, t1, label559
	addi a3, a3, 4
	j label555
label559:
	ret
