.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
A:
	.zero	4194304
.align 8
B:
	.zero	4194304
.align 8
C:
	.zero	4194304
.align 8
cmmc_parallel_body_payload_0:
	.zero	8
.align 8
cmmc_parallel_body_payload_1:
	.zero	4
.align 8
cmmc_parallel_body_payload_2:
	.zero	4
.align 8
cmmc_parallel_body_payload_3:
	.zero	4
.align 8
cmmc_parallel_body_payload_4:
	.zero	4
.text
.p2align 2
.globl main
main:
	addi sp, sp, -96
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	jal getint
pcrel1067:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_3)
pcrel1068:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_1)
	lui s6, 1
	li s3, 5
pcrel1069:
	auipc a1, %pcrel_hi(cmmc_parallel_body_1)
	mv s0, a0
	addi s1, a1, %pcrel_lo(pcrel1069)
pcrel1070:
	auipc a0, %pcrel_hi(cmmc_parallel_body_3)
	addi s2, a0, %pcrel_lo(pcrel1070)
	ble s0, zero, label907
pcrel1071:
	auipc a0, %pcrel_hi(A)
	mv s8, zero
	addi s7, a0, %pcrel_lo(pcrel1071)
	mv s9, s7
	mv s10, zero
	j label923
.p2align 2
label989:
	addiw s8, s8, 1
	ble s0, s8, label1059
	add s7, s7, s6
	mv s10, zero
	mv s9, s7
.p2align 2
label923:
	jal getint
	addiw s10, s10, 1
	sw a0, 0(s9)
	ble s0, s10, label989
	addi s9, s9, 4
	j label923
label907:
	li a0, 65
	jal _sysy_starttime
	mv s6, zero
	j label908
label910:
	addiw s6, s6, 1
	bge s6, s3, label911
.p2align 2
label908:
	ble s0, zero, label910
pcrel1072:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_1)
	sw s0, %pcrel_lo(pcrel1072)(s4)
	mv a0, zero
	mv a1, s0
	mv a2, s1
	jal cmmcParallelFor
	ble s0, zero, label917
pcrel1073:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel1074:
	auipc a3, %pcrel_hi(cmmc_parallel_body_2)
	sw s0, %pcrel_lo(pcrel1073)(a0)
	addi a2, a3, %pcrel_lo(pcrel1074)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
.p2align 2
label917:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_3)
	sw s0, %pcrel_lo(label917)(s5)
	mv a0, zero
	mv a1, s0
	mv a2, s2
	jal cmmcParallelFor
	ble s0, zero, label910
pcrel1075:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_4)
pcrel1076:
	auipc a3, %pcrel_hi(cmmc_parallel_body_4)
	sw s0, %pcrel_lo(pcrel1075)(a0)
	addi a2, a3, %pcrel_lo(pcrel1076)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
	addiw s6, s6, 1
	blt s6, s3, label908
label911:
	ble s0, zero, label953
pcrel1077:
	auipc s1, %pcrel_hi(cmmc_parallel_body_payload_0)
	slli a0, s0, 32
pcrel1078:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	sd a0, %pcrel_lo(pcrel1077)(s1)
	addi a2, a3, %pcrel_lo(pcrel1078)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
	lw s0, %pcrel_lo(pcrel1077)(s1)
label912:
	li a0, 84
	jal _sysy_stoptime
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	addi sp, sp, 96
	ret
label1059:
	auipc a0, %pcrel_hi(B)
	mv s8, zero
	mv s10, zero
	addi s7, a0, %pcrel_lo(label1059)
	mv s9, s7
	j label933
.p2align 2
label938:
	addi s9, s9, 4
.p2align 2
label933:
	jal getint
	addiw s10, s10, 1
	sw a0, 0(s9)
	bgt s0, s10, label938
	addiw s8, s8, 1
	ble s0, s8, label907
	add s7, s7, s6
	mv s10, zero
	mv s9, s7
	j label933
label953:
	mv s0, zero
	j label912
.p2align 2
cmmc_parallel_body_0:
	mv t0, a0
pcrel146:
	auipc a4, %pcrel_hi(cmmc_parallel_body_payload_0)
	lui a2, 1
	addi a3, a4, %pcrel_lo(pcrel146)
	lw a0, 4(a3)
	bgt a0, zero, label2
	mv t2, zero
label35:
	amoadd.w.aqrl a0, t2, (a3)
	ret
label2:
	addiw a5, a0, -7
pcrel147:
	auipc t2, %pcrel_hi(B)
	li t1, 7
	addi a4, t2, %pcrel_lo(pcrel147)
	bgt a0, t1, label3
	slli t1, t0, 12
	mv a5, t0
	mv t2, zero
	add a4, a4, t1
	mv t0, a4
	mv t1, zero
	j label28
.p2align 2
label32:
	addi t0, t0, 4
.p2align 2
label28:
	lw t3, 0(t0)
	addiw t2, t2, 1
	addw t1, t1, t3
	bgt a0, t2, label32
	addiw a5, a5, 1
	ble a1, a5, label137
.p2align 2
label34:
	add a4, a4, a2
	li t2, 1
	lw t3, 0(a4)
	mv t0, a4
	addw t1, t1, t3
	bgt a0, t2, label32
	addiw a5, a5, 1
	bgt a1, a5, label34
label137:
	mv t2, t1
	j label35
label3:
	slli t1, t0, 12
	mv t3, zero
	add a4, a4, t1
	mv t1, a4
	mv t2, zero
	j label8
.p2align 2
label95:
	addiw t0, t0, 1
	ble a1, t0, label35
.p2align 2
label22:
	add a4, a4, a2
	mv t3, t2
	mv t1, a4
	mv t2, zero
.p2align 2
label8:
	lw t5, 0(t1)
	addiw t2, t2, 8
	lw a6, 4(t1)
	addw t4, t3, t5
	lw t3, 8(t1)
	addw t6, t4, a6
	lw a6, 12(t1)
	addw t5, t6, t3
	lw t6, 16(t1)
	addw t4, t5, a6
	lw a6, 20(t1)
	addw t3, t4, t6
	lw t6, 24(t1)
	addw t5, t3, a6
	lw a6, 28(t1)
	addw t4, t5, t6
	addw t3, t4, a6
	ble a5, t2, label81
	addi t1, t1, 32
	j label8
.p2align 2
label81:
	ble a0, t2, label134
	sh2add t1, t2, a4
	mv t4, t2
	mv t2, t3
.p2align 2
label15:
	lw t5, 0(t1)
	addiw t4, t4, 1
	addw t2, t2, t5
	ble a0, t4, label95
	addi t1, t1, 4
	j label15
label134:
	mv t2, t3
	addiw t0, t0, 1
	bgt a1, t0, label22
	j label35
.p2align 2
cmmc_parallel_body_1:
	mv a5, a0
pcrel273:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel274:
	auipc t1, %pcrel_hi(C)
	li t0, 7
	lw a0, %pcrel_lo(pcrel273)(a2)
	addi a4, t1, %pcrel_lo(pcrel274)
	lui a2, 1
	addi a3, a0, -7
	bgt a0, t0, label149
	bgt a0, zero, label166
	j label176
label149:
	slliw t0, a5, 12
	add a4, a4, t0
	mv t0, a4
	mv t1, zero
	j label153
.p2align 2
label162:
	addi t0, t0, 4
.p2align 2
label159:
	addiw t2, t2, 1
	sw zero, 0(t0)
	bgt a0, t2, label162
	addiw a5, a5, 1
	ble a1, a5, label176
.p2align 2
label164:
	add a4, a4, a2
	li t1, 8
	sd zero, 0(a4)
	mv t0, a4
	sd zero, 8(a4)
	sd zero, 16(a4)
	sd zero, 24(a4)
	ble a3, t1, label265
.p2align 2
label156:
	addi t0, t0, 32
.p2align 2
label153:
	addiw t1, t1, 8
	sd zero, 0(t0)
	sd zero, 8(t0)
	sd zero, 16(t0)
	sd zero, 24(t0)
	bgt a3, t1, label156
	ble a0, t1, label261
.p2align 2
label158:
	sh2add t0, t1, a4
	mv t2, t1
	j label159
label265:
	bgt a0, t1, label158
.p2align 2
label261:
	addiw a5, a5, 1
	bgt a1, a5, label164
label176:
	ret
label166:
	slliw t0, a5, 12
	add a3, a4, t0
	mv a4, a5
	mv a5, a3
	mv t0, zero
	j label170
.p2align 2
label175:
	addi a5, a5, 4
.p2align 2
label170:
	addiw t0, t0, 1
	sw zero, 0(a5)
	bgt a0, t0, label175
	addiw a4, a4, 1
	ble a1, a4, label176
.p2align 2
label174:
	add a3, a3, a2
	li t0, 1
	sw zero, 0(a3)
	mv a5, a3
	bgt a0, t0, label175
	addiw a4, a4, 1
	bgt a1, a4, label174
	j label176
.p2align 2
cmmc_parallel_body_2:
	addi sp, sp, -48
	mv t2, a0
	mv a4, a1
pcrel522:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel523:
	auipc a5, %pcrel_hi(A)
pcrel524:
	auipc t3, %pcrel_hi(B)
	li t0, 7
pcrel525:
	auipc a1, %pcrel_hi(C)
	addi a3, a5, %pcrel_lo(pcrel523)
	sd s0, 0(sp)
	addi a5, t3, %pcrel_lo(pcrel524)
	sd s5, 8(sp)
	sd s1, 16(sp)
	sd s3, 24(sp)
	sd s2, 32(sp)
	sd s4, 40(sp)
	lw a0, %pcrel_lo(pcrel522)(a2)
	addi a2, a1, %pcrel_lo(pcrel525)
	addi t1, a0, -7
	lui a1, 1
	bgt a0, t0, label276
	bgt a0, zero, label302
label300:
	ld s0, 0(sp)
	ld s5, 8(sp)
	ld s1, 16(sp)
	ld s3, 24(sp)
	ld s2, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 48
	ret
label276:
	slliw t3, t2, 12
	add t0, a5, t3
	mv t3, a3
	mv t5, zero
	bgt a0, zero, label283
	j label339
.p2align 2
label284:
	add t3, t3, a1
	mv t5, t4
	ble a0, t4, label498
.p2align 2
label283:
	sh2add t6, t2, t3
	addiw t4, t5, 1
	lw a5, 0(t6)
	beq a5, zero, label284
	slliw a7, t5, 12
	mv a6, zero
	add t5, a2, a7
	mv t6, t5
	j label286
.p2align 2
label289:
	addi t6, t6, 32
.p2align 2
label286:
	sh2add a7, a6, t0
	addi s4, t6, 4
	addiw a6, a6, 8
	lw s0, 0(a7)
	mulw s1, a5, s0
	amoadd.w.aqrl s3, s1, (t6)
	lw s2, 4(a7)
	mulw s0, a5, s2
	addi s2, t6, 8
	amoadd.w.aqrl s5, s0, (s4)
	lw s3, 8(a7)
	mulw s1, a5, s3
	amoadd.w.aqrl s4, s1, (s2)
	addi s2, t6, 12
	lw s3, 12(a7)
	mulw s0, a5, s3
	amoadd.w.aqrl s4, s0, (s2)
	addi s2, t6, 16
	lw s3, 16(a7)
	mulw s1, a5, s3
	amoadd.w.aqrl s4, s1, (s2)
	addi s2, t6, 20
	lw s3, 20(a7)
	mulw s0, a5, s3
	amoadd.w.aqrl s4, s0, (s2)
	addi s2, t6, 24
	lw s3, 24(a7)
	mulw s1, a5, s3
	amoadd.w.aqrl s4, s1, (s2)
	lw s3, 28(a7)
	addi a7, t6, 28
	mulw s0, a5, s3
	amoadd.w.aqrl s1, s0, (a7)
	bgt t1, a6, label289
	ble a0, a6, label499
	sh2add t6, a6, t0
	j label292
.p2align 2
label295:
	addi t6, t6, 4
.p2align 2
label292:
	lw s1, 0(t6)
	sh2add s0, a6, t5
	addiw a6, a6, 1
	mulw a7, a5, s1
	amoadd.w.aqrl s2, a7, (s0)
	bgt a0, a6, label295
	add t3, t3, a1
	mv t5, t4
	bgt a0, t4, label283
	addiw t2, t2, 1
	bgt a4, t2, label299
	j label300
.p2align 2
label498:
	addiw t2, t2, 1
	ble a4, t2, label300
.p2align 2
label299:
	add t0, t0, a1
	mv t3, a3
	mv t5, zero
	bgt a0, zero, label283
label339:
	addiw t2, t2, 1
	bgt a4, t2, label299
	j label300
.p2align 2
label499:
	add t3, t3, a1
	mv t5, t4
	bgt a0, t4, label283
	addiw t2, t2, 1
	bgt a4, t2, label299
	j label300
label302:
	slliw t1, t2, 12
	add t0, a5, t1
	mv a5, t2
	mv t1, a3
	mv t4, zero
	bgt a0, zero, label311
	j label309
.p2align 2
label317:
	addi t5, t5, 4
.p2align 2
label313:
	lw a7, 0(t5)
	sh2add s0, t6, t4
	addiw t6, t6, 1
	mulw a6, t3, a7
	amoadd.w.aqrl a7, a6, (s0)
	bgt a0, t6, label317
	add t1, t1, a1
	mv t4, t2
	ble a0, t2, label502
.p2align 2
label311:
	sh2add t5, a5, t1
	addiw t2, t4, 1
	lw t3, 0(t5)
	bne t3, zero, label312
	add t1, t1, a1
	mv t4, t2
	bgt a0, t2, label311
	addiw a5, a5, 1
	bgt a4, a5, label310
	j label300
.p2align 2
label312:
	slliw a6, t4, 12
	mv t5, t0
	mv t6, zero
	add t4, a2, a6
	j label313
.p2align 2
label502:
	addiw a5, a5, 1
	ble a4, a5, label300
.p2align 2
label310:
	add t0, t0, a1
	mv t1, a3
	mv t4, zero
	bgt a0, zero, label311
label309:
	addiw a5, a5, 1
	bgt a4, a5, label310
	j label300
.p2align 2
cmmc_parallel_body_3:
	mv a5, a0
pcrel651:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_3)
pcrel652:
	auipc t1, %pcrel_hi(B)
	li t0, 7
	lw a0, %pcrel_lo(pcrel651)(a2)
	addi a4, t1, %pcrel_lo(pcrel652)
	lui a2, 1
	addi a3, a0, -7
	bgt a0, t0, label527
	bgt a0, zero, label545
	j label543
label527:
	slliw t0, a5, 12
	add a4, a4, t0
	mv t0, a4
	mv t1, zero
	j label531
.p2align 2
label540:
	addi t0, t0, 4
.p2align 2
label537:
	addiw t2, t2, 1
	sw zero, 0(t0)
	bgt a0, t2, label540
	addiw a5, a5, 1
	ble a1, a5, label543
.p2align 2
label542:
	add a4, a4, a2
	li t1, 8
	sd zero, 0(a4)
	mv t0, a4
	sd zero, 8(a4)
	sd zero, 16(a4)
	sd zero, 24(a4)
	ble a3, t1, label643
.p2align 2
label534:
	addi t0, t0, 32
.p2align 2
label531:
	addiw t1, t1, 8
	sd zero, 0(t0)
	sd zero, 8(t0)
	sd zero, 16(t0)
	sd zero, 24(t0)
	bgt a3, t1, label534
	ble a0, t1, label639
.p2align 2
label536:
	sh2add t0, t1, a4
	mv t2, t1
	j label537
label643:
	bgt a0, t1, label536
.p2align 2
label639:
	addiw a5, a5, 1
	bgt a1, a5, label542
label543:
	ret
label545:
	slliw t0, a5, 12
	add a3, a4, t0
	mv a4, a5
	mv a5, a3
	mv t0, zero
	j label549
.p2align 2
label554:
	addi a5, a5, 4
.p2align 2
label549:
	addiw t0, t0, 1
	sw zero, 0(a5)
	bgt a0, t0, label554
	addiw a4, a4, 1
	ble a1, a4, label543
.p2align 2
label553:
	add a3, a3, a2
	li t0, 1
	sw zero, 0(a3)
	mv a5, a3
	bgt a0, t0, label554
	addiw a4, a4, 1
	bgt a1, a4, label553
	j label543
.p2align 2
cmmc_parallel_body_4:
	addi sp, sp, -48
	mv t2, a0
	mv a4, a1
pcrel902:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_4)
pcrel903:
	auipc a5, %pcrel_hi(A)
pcrel904:
	auipc t3, %pcrel_hi(C)
	li t0, 7
pcrel905:
	auipc a1, %pcrel_hi(B)
	addi a3, a5, %pcrel_lo(pcrel903)
	sd s0, 0(sp)
	addi a5, t3, %pcrel_lo(pcrel904)
	sd s5, 8(sp)
	sd s2, 16(sp)
	sd s3, 24(sp)
	sd s1, 32(sp)
	sd s4, 40(sp)
	lw a0, %pcrel_lo(pcrel902)(a2)
	addi a2, a1, %pcrel_lo(pcrel905)
	addi t1, a0, -7
	lui a1, 1
	ble a0, t0, label679
	slliw t3, t2, 12
	add t0, a5, t3
	mv t3, a3
	mv t5, zero
	bgt a0, zero, label661
	j label717
.p2align 2
label675:
	add t3, t3, a1
	mv t5, t4
	ble a0, t4, label879
.p2align 2
label661:
	sh2add t6, t2, t3
	addiw t4, t5, 1
	lw a5, 0(t6)
	beq a5, zero, label675
	slliw a7, t5, 12
	mv a6, zero
	add t5, a2, a7
	mv t6, t5
	j label663
.p2align 2
label666:
	addi t6, t6, 32
.p2align 2
label663:
	sh2add a7, a6, t0
	addiw a6, a6, 8
	lw s0, 0(a7)
	mulw s2, a5, s0
	amoadd.w.aqrl s3, s2, (t6)
	addi s2, t6, 4
	lw s1, 4(a7)
	mulw s0, a5, s1
	amoadd.w.aqrl s3, s0, (s2)
	addi s3, t6, 8
	lw s4, 8(a7)
	mulw s1, a5, s4
	amoadd.w.aqrl s5, s1, (s3)
	addi s3, t6, 12
	lw s2, 12(a7)
	mulw s0, a5, s2
	amoadd.w.aqrl s4, s0, (s3)
	addi s3, t6, 16
	lw s2, 16(a7)
	mulw s1, a5, s2
	amoadd.w.aqrl s4, s1, (s3)
	addi s3, t6, 20
	lw s2, 20(a7)
	mulw s0, a5, s2
	addi s2, t6, 24
	amoadd.w.aqrl s5, s0, (s3)
	lw s4, 24(a7)
	mulw s1, a5, s4
	amoadd.w.aqrl s5, s1, (s2)
	lw s3, 28(a7)
	addi a7, t6, 28
	mulw s0, a5, s3
	amoadd.w.aqrl s1, s0, (a7)
	bgt t1, a6, label666
	ble a0, a6, label876
	sh2add t6, a6, t0
.p2align 2
label669:
	lw s1, 0(t6)
	sh2add s0, a6, t5
	addiw a6, a6, 1
	mulw a7, a5, s1
	amoadd.w.aqrl s2, a7, (s0)
	ble a0, a6, label789
	addi t6, t6, 4
	j label669
.p2align 2
label879:
	addiw t2, t2, 1
	ble a4, t2, label678
.p2align 2
label677:
	add t0, t0, a1
	mv t3, a3
	mv t5, zero
	bgt a0, zero, label661
	j label717
.p2align 2
label789:
	add t3, t3, a1
	mv t5, t4
	bgt a0, t4, label661
	addiw t2, t2, 1
	bgt a4, t2, label677
	j label678
.p2align 2
label876:
	add t3, t3, a1
	mv t5, t4
	bgt a0, t4, label661
label717:
	addiw t2, t2, 1
	bgt a4, t2, label677
	j label678
label679:
	bgt a0, zero, label680
label678:
	ld s0, 0(sp)
	ld s5, 8(sp)
	ld s2, 16(sp)
	ld s3, 24(sp)
	ld s1, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 48
	ret
label680:
	slliw t1, t2, 12
	add t0, a5, t1
	mv a5, t2
	mv t1, a3
	mv t4, zero
	bgt a0, zero, label689
	j label687
.p2align 2
label694:
	add t1, t1, a1
	mv t4, t2
	ble a0, t2, label880
.p2align 2
label689:
	sh2add t5, a5, t1
	addiw t2, t4, 1
	lw t3, 0(t5)
	bne t3, zero, label690
	add t1, t1, a1
	mv t4, t2
	bgt a0, t2, label689
	addiw a5, a5, 1
	ble a4, a5, label678
.p2align 2
label688:
	add t0, t0, a1
	mv t1, a3
	mv t4, zero
	bgt a0, zero, label689
label687:
	addiw a5, a5, 1
	bgt a4, a5, label688
	j label678
.p2align 2
label690:
	slliw a6, t4, 12
	mv t5, t0
	mv t6, zero
	add t4, a2, a6
.p2align 2
label691:
	lw a7, 0(t5)
	sh2add s0, t6, t4
	addiw t6, t6, 1
	mulw a6, t3, a7
	amoadd.w.aqrl a7, a6, (s0)
	ble a0, t6, label694
	addi t5, t5, 4
	j label691
.p2align 2
label880:
	addiw a5, a5, 1
	bgt a4, a5, label688
	j label678
