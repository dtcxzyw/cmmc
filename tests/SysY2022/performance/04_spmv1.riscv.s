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
	.zero	4
.align 8
cmmc_parallel_body_payload_2:
	.zero	4
.align 8
cmmc_parallel_body_payload_3:
	.zero	4
.text
.p2align 2
.globl main
main:
	addi sp, sp, -88
pcrel789:
	auipc a1, %pcrel_hi(x)
	sd ra, 0(sp)
	addi a0, a1, %pcrel_lo(pcrel789)
	sd s1, 8(sp)
	sd s6, 16(sp)
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s9, 64(sp)
	sd s7, 72(sp)
	sd s8, 80(sp)
	jal getarray
pcrel790:
	auipc a1, %pcrel_hi(y)
	mv s1, a0
	addi a0, a1, %pcrel_lo(pcrel790)
	jal getarray
pcrel791:
	auipc a1, %pcrel_hi(v)
	addi a0, a1, %pcrel_lo(pcrel791)
	jal getarray
pcrel792:
	auipc a1, %pcrel_hi(a)
	addi a0, a1, %pcrel_lo(pcrel792)
	jal getarray
	li a0, 39
	jal _sysy_starttime
	addiw s0, s1, -1
pcrel793:
	auipc s7, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel794:
	auipc a1, %pcrel_hi(cmmc_parallel_body_0)
	mv s9, zero
	li s6, 100
pcrel795:
	auipc s8, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel796:
	auipc a0, %pcrel_hi(b)
pcrel797:
	auipc a2, %pcrel_hi(cmmc_parallel_body_1)
	addi s1, a1, %pcrel_lo(pcrel794)
	addi s5, a0, %pcrel_lo(pcrel796)
	addi s2, a2, %pcrel_lo(pcrel797)
pcrel798:
	auipc a1, %pcrel_hi(cmmc_parallel_body_3)
pcrel799:
	auipc a0, %pcrel_hi(cmmc_parallel_body_2)
	addi s4, a1, %pcrel_lo(pcrel798)
	addi s3, a0, %pcrel_lo(pcrel799)
	j label710
.p2align 2
label713:
	addiw s9, s9, 1
	bge s9, s6, label714
.p2align 2
label710:
	ble s0, zero, label713
pcrel800:
	auipc s7, %pcrel_hi(cmmc_parallel_body_payload_0)
	sw s0, %pcrel_lo(pcrel800)(s7)
	mv a0, zero
	mv a1, s0
	mv a2, s1
	jal cmmcParallelFor
	mv a0, zero
pcrel801:
	auipc s8, %pcrel_hi(cmmc_parallel_body_payload_1)
	sw s0, %pcrel_lo(pcrel801)(s8)
	mv a1, s0
	mv a2, s2
	jal cmmcParallelFor
	mv a0, zero
pcrel802:
	auipc a3, %pcrel_hi(cmmc_parallel_body_payload_2)
	sw s0, %pcrel_lo(pcrel802)(a3)
	mv a1, s0
	mv a2, s3
	jal cmmcParallelFor
	mv a0, zero
pcrel803:
	auipc a3, %pcrel_hi(cmmc_parallel_body_payload_3)
	sw s0, %pcrel_lo(pcrel803)(a3)
	mv a1, s0
	mv a2, s4
	jal cmmcParallelFor
	j label713
label714:
	li a0, 47
	jal _sysy_stoptime
	mv a0, s0
	mv a1, s5
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s9, 64(sp)
	ld s7, 72(sp)
	ld s8, 80(sp)
	addi sp, sp, 88
	ret
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
	addi sp, sp, -24
	mv t0, a0
	mv a3, a1
pcrel348:
	auipc a2, %pcrel_hi(x)
pcrel349:
	auipc a5, %pcrel_hi(y)
pcrel350:
	auipc t2, %pcrel_hi(b)
pcrel351:
	auipc t1, %pcrel_hi(v)
	addi a0, a2, %pcrel_lo(pcrel348)
	addi a1, a5, %pcrel_lo(pcrel349)
	addi a2, t1, %pcrel_lo(pcrel351)
	sh2add a4, t0, a0
	sd s0, 0(sp)
	addi a0, t2, %pcrel_lo(pcrel350)
	sd s1, 8(sp)
pcrel352:
	auipc t2, %pcrel_hi(a)
	sd s2, 16(sp)
	addi a5, t2, %pcrel_lo(pcrel352)
	lw t5, 0(a4)
	lw t1, 4(a4)
	blt t5, t1, label119
	j label145
.p2align 2
label139:
	addi t2, t2, 4
.p2align 2
label136:
	sh2add t6, t4, a2
	lw t5, 0(t2)
	addiw t4, t4, 1
	lw a7, 0(t6)
	sh2add t6, t5, a0
	mulw a6, t3, a7
	amoadd.w.aqrl a7, a6, (t6)
	bgt t1, t4, label139
	addiw t0, t0, 1
	ble a3, t0, label146
.p2align 2
label147:
	addi a4, a4, 4
	lw t5, 0(a4)
	lw t1, 4(a4)
	bge t5, t1, label145
.p2align 2
label119:
	addiw t4, t5, 3
	addiw t2, t1, -3
	ble t1, t4, label172
	sh2add t3, t5, a2
	mv t6, t5
	j label141
.p2align 2
label144:
	addi t3, t3, 16
.p2align 2
label141:
	sh2add a6, t6, a1
	addiw t6, t6, 4
	lw s0, 0(a6)
	lw s1, 0(t3)
	sh2add a7, s0, a0
	amoadd.w.aqrl s2, s1, (a7)
	lw s0, 4(a6)
	lw s1, 4(t3)
	sh2add a7, s0, a0
	amoadd.w.aqrl s2, s1, (a7)
	lw s0, 8(a6)
	lw s1, 8(t3)
	sh2add a7, s0, a0
	amoadd.w.aqrl s2, s1, (a7)
	lw s0, 12(a6)
	lw a6, 12(t3)
	sh2add a7, s0, a0
	amoadd.w.aqrl s1, a6, (a7)
	bgt t2, t6, label144
	ble t1, t6, label337
.p2align 2
label122:
	sh2add t3, t6, a1
	j label123
.p2align 2
label126:
	addi t3, t3, 4
.p2align 2
label123:
	lw a7, 0(t3)
	sh2add s0, t6, a2
	sh2add a6, a7, a0
	addiw t6, t6, 1
	lw a7, 0(s0)
	amoadd.w.aqrl s1, a7, (a6)
	bgt t1, t6, label126
	sh2add a6, t0, a5
	lw t6, 0(a6)
	addi t3, t6, -1
	ble t1, t4, label332
.p2align 2
label128:
	sh2add t4, t5, a2
	j label129
.p2align 2
label132:
	addi t4, t4, 16
.p2align 2
label129:
	sh2add t6, t5, a1
	addiw t5, t5, 4
	lw a7, 0(t6)
	lw s1, 0(t4)
	sh2add a6, a7, a0
	mulw a7, t3, s1
	amoadd.w.aqrl s2, a7, (a6)
	lw s0, 4(t6)
	lw a6, 4(t4)
	sh2add a7, s0, a0
	mulw s1, t3, a6
	amoadd.w.aqrl s2, s1, (a7)
	lw s0, 8(t6)
	lw a7, 8(t4)
	sh2add a6, s0, a0
	mulw s1, t3, a7
	amoadd.w.aqrl s0, s1, (a6)
	lw a7, 12(t6)
	lw t6, 12(t4)
	sh2add a6, a7, a0
	mulw a7, t3, t6
	amoadd.w.aqrl s0, a7, (a6)
	bgt t2, t5, label132
	ble t1, t5, label334
.p2align 2
label135:
	sh2add t2, t5, a1
	mv t4, t5
	j label136
label172:
	mv t6, t5
	bgt t1, t5, label122
	sh2add a6, t0, a5
	lw t6, 0(a6)
	addi t3, t6, -1
	bgt t1, t4, label128
	j label198
label145:
	addiw t0, t0, 1
	bgt a3, t0, label147
	j label146
.p2align 2
label337:
	sh2add a6, t0, a5
	lw t6, 0(a6)
	addi t3, t6, -1
	bgt t1, t4, label128
label198:
	bgt t1, t5, label135
	j label242
label146:
	ld s0, 0(sp)
	ld s1, 8(sp)
	ld s2, 16(sp)
	addi sp, sp, 24
	ret
label332:
	bgt t1, t5, label135
label242:
	addiw t0, t0, 1
	bgt a3, t0, label147
	j label146
.p2align 2
label334:
	addiw t0, t0, 1
	bgt a3, t0, label147
	j label146
.p2align 2
cmmc_parallel_body_2:
	mv a2, a0
	addiw a4, a0, 3
pcrel467:
	auipc a0, %pcrel_hi(a)
	addi a3, a0, %pcrel_lo(pcrel467)
	ble a1, a4, label354
	addiw t0, a2, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge t0, a4, label401
	sh2add a0, a2, a3
	j label364
.p2align 2
label367:
	addi a0, a0, 64
.p2align 2
label364:
	addiw a2, a2, 16
	sd zero, 0(a0)
	sd zero, 8(a0)
	sd zero, 16(a0)
	sd zero, 24(a0)
	sd zero, 32(a0)
	sd zero, 40(a0)
	sd zero, 48(a0)
	sd zero, 56(a0)
	bgt a5, a2, label367
	mv a0, a2
label368:
	ble a4, a0, label354
	sh2add a5, a0, a3
	mv a2, a0
label372:
	addiw a2, a2, 4
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	ble a4, a2, label354
	addi a5, a5, 16
	j label372
label354:
	ble a1, a2, label361
	sh2add a0, a2, a3
	j label357
label360:
	addi a0, a0, 4
label357:
	addiw a2, a2, 1
	sw zero, 0(a0)
	bgt a1, a2, label360
label361:
	ret
label401:
	mv a0, a2
	mv a2, zero
	j label368
.p2align 2
cmmc_parallel_body_3:
	addi sp, sp, -24
	mv t0, a0
	mv a3, a1
pcrel704:
	auipc a5, %pcrel_hi(x)
pcrel705:
	auipc a2, %pcrel_hi(y)
pcrel706:
	auipc t1, %pcrel_hi(v)
pcrel707:
	auipc t2, %pcrel_hi(b)
	addi a0, a5, %pcrel_lo(pcrel704)
	addi a1, a2, %pcrel_lo(pcrel705)
pcrel708:
	auipc a5, %pcrel_hi(a)
	sh2add a4, t0, a0
	sd s1, 0(sp)
	addi a2, t1, %pcrel_lo(pcrel706)
	addi a0, a5, %pcrel_lo(pcrel708)
	sd s0, 8(sp)
	addi a5, t2, %pcrel_lo(pcrel707)
	sd s2, 16(sp)
	lw t5, 0(a4)
	lw t1, 4(a4)
	blt t5, t1, label472
	j label498
.p2align 2
label631:
	addiw t0, t0, 1
	ble a3, t0, label499
.p2align 2
label500:
	addi a4, a4, 4
	lw t5, 0(a4)
	lw t1, 4(a4)
	bge t5, t1, label498
.p2align 2
label472:
	addiw t4, t5, 3
	addiw t2, t1, -3
	ble t1, t4, label525
	sh2add t3, t5, a2
	mv t6, t5
	j label474
.p2align 2
label477:
	addi t3, t3, 16
.p2align 2
label474:
	sh2add a6, t6, a1
	addiw t6, t6, 4
	lw s1, 0(a6)
	lw s0, 0(t3)
	sh2add a7, s1, a0
	amoadd.w.aqrl s2, s0, (a7)
	lw s1, 4(a6)
	lw s0, 4(t3)
	sh2add a7, s1, a0
	amoadd.w.aqrl s2, s0, (a7)
	lw s1, 8(a6)
	lw s0, 8(t3)
	sh2add a7, s1, a0
	amoadd.w.aqrl s2, s0, (a7)
	lw s1, 12(a6)
	lw a6, 12(t3)
	sh2add a7, s1, a0
	amoadd.w.aqrl s0, a6, (a7)
	bgt t2, t6, label477
	ble t1, t6, label685
.p2align 2
label493:
	sh2add t3, t6, a1
	j label494
.p2align 2
label497:
	addi t3, t3, 4
.p2align 2
label494:
	lw a7, 0(t3)
	sh2add s0, t6, a2
	sh2add a6, a7, a0
	addiw t6, t6, 1
	lw a7, 0(s0)
	amoadd.w.aqrl s1, a7, (a6)
	bgt t1, t6, label497
	sh2add a6, t0, a5
	lw t6, 0(a6)
	addi t3, t6, -1
	ble t1, t4, label690
.p2align 2
label481:
	sh2add t4, t5, a2
.p2align 2
label482:
	sh2add t6, t5, a1
	addiw t5, t5, 4
	lw a7, 0(t6)
	lw s0, 0(t4)
	sh2add a6, a7, a0
	mulw a7, t3, s0
	amoadd.w.aqrl s2, a7, (a6)
	lw s1, 4(t6)
	lw a6, 4(t4)
	sh2add a7, s1, a0
	mulw s0, t3, a6
	amoadd.w.aqrl s2, s0, (a7)
	lw s1, 8(t6)
	lw a7, 8(t4)
	sh2add a6, s1, a0
	mulw s0, t3, a7
	amoadd.w.aqrl s2, s0, (a6)
	lw s1, 12(t6)
	lw a6, 12(t4)
	sh2add a7, s1, a0
	mulw t6, t3, a6
	amoadd.w.aqrl s0, t6, (a7)
	ble t2, t5, label611
	addi t4, t4, 16
	j label482
.p2align 2
label611:
	ble t1, t5, label687
.p2align 2
label488:
	sh2add t2, t5, a1
	mv t4, t5
.p2align 2
label489:
	sh2add t6, t4, a2
	lw t5, 0(t2)
	addiw t4, t4, 1
	lw a7, 0(t6)
	sh2add t6, t5, a0
	mulw a6, t3, a7
	amoadd.w.aqrl a7, a6, (t6)
	ble t1, t4, label631
	addi t2, t2, 4
	j label489
label498:
	addiw t0, t0, 1
	bgt a3, t0, label500
	j label499
label525:
	mv t6, t5
	bgt t1, t5, label493
	sh2add a6, t0, a5
	lw t6, 0(a6)
	addi t3, t6, -1
	bgt t1, t4, label481
	j label572
.p2align 2
label685:
	sh2add a6, t0, a5
	lw t6, 0(a6)
	addi t3, t6, -1
	bgt t1, t4, label481
label572:
	bgt t1, t5, label488
	j label616
label499:
	ld s1, 0(sp)
	ld s0, 8(sp)
	ld s2, 16(sp)
	addi sp, sp, 24
	ret
label690:
	bgt t1, t5, label488
label616:
	addiw t0, t0, 1
	bgt a3, t0, label500
	j label499
.p2align 2
label687:
	addiw t0, t0, 1
	bgt a3, t0, label500
	j label499
