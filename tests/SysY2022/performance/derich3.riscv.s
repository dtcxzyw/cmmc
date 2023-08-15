.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	3191992809
	.4byte	1038256634
	.4byte	3206230588
	.4byte	3191654481
	.4byte	1038821134
.bss
.align 8
imgIn:
	.zero	552960
.align 8
imgOut:
	.zero	552960
.align 8
my_y1:
	.zero	552960
.align 8
my_y2:
	.zero	552960
.align 8
cmmc_parallel_body_payload_0:
	.zero	25
.align 8
cmmc_parallel_body_payload_1:
	.zero	25
.align 8
cmmc_parallel_body_payload_2:
	.zero	9
.align 8
cmmc_parallel_body_payload_3:
	.zero	25
.align 8
cmmc_parallel_body_payload_4:
	.zero	9
.align 8
cmmc_parallel_body_payload_5:
	.zero	25
.text
.p2align 2
.globl main
main:
	addi sp, sp, -80
pcrel1130:
	auipc a1, %pcrel_hi(imgIn)
	sd ra, 0(sp)
	addi a0, a1, %pcrel_lo(pcrel1130)
	sd s4, 8(sp)
	fsw f18, 16(sp)
	fsw f19, 20(sp)
	fsw f8, 24(sp)
	fsw f21, 28(sp)
	fsw f9, 32(sp)
	sd s1, 40(sp)
	sd s0, 48(sp)
	sd s2, 56(sp)
	sd s3, 64(sp)
	fsw f20, 72(sp)
	jal getfarray
	li a0, 156
	jal _sysy_starttime
	li s1, 270
	li s0, 512
	li s3, 1
pcrel1131:
	auipc a1, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel1132:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
pcrel1133:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel1131)
	addi s4, a2, %pcrel_lo(pcrel1133)
	li a2, 1
	flw f18, 0(s4)
	slli s2, a2, 41
	addi a2, a3, %pcrel_lo(pcrel1132)
	fsw f18, %pcrel_lo(pcrel1131)(a1)
	lui a1, 260096
	flw f19, 4(s4)
	fmv.w.x f8, a1
	ori a1, s2, 270
	fsw f19, 4(a0)
	fsw f8, 8(a0)
	flw f9, 8(s4)
	fsw f9, 12(a0)
	sd a1, 16(a0)
	sb s3, 24(a0)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
pcrel1134:
	auipc a1, %pcrel_hi(cmmc_parallel_body_payload_1)
	li a2, 269
pcrel1135:
	auipc a3, %pcrel_hi(cmmc_parallel_body_1)
	addi a0, a1, %pcrel_lo(pcrel1134)
	sw a2, %pcrel_lo(pcrel1134)(a1)
	addi a2, a3, %pcrel_lo(pcrel1135)
	flw f20, 12(s4)
	fsw f20, 4(a0)
	flw f21, 16(s4)
	fsw f21, 8(a0)
	fsw f8, 12(a0)
	fsw f9, 16(a0)
	sw s0, 20(a0)
	sb s3, 24(a0)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
pcrel1136:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_4)
pcrel1137:
	auipc a3, %pcrel_hi(cmmc_parallel_body_4)
	ori a2, s2, 270
	addi a1, a0, %pcrel_lo(pcrel1136)
	sd a2, %pcrel_lo(pcrel1136)(a0)
	mv a0, zero
	addi a2, a3, %pcrel_lo(pcrel1137)
	sb s3, 8(a1)
	mv a1, s0
	jal cmmcParallelFor
pcrel1138:
	auipc a1, %pcrel_hi(cmmc_parallel_body_payload_3)
	li a3, 270
	fsw f18, %pcrel_lo(pcrel1138)(a1)
	addi a0, a1, %pcrel_lo(pcrel1138)
	slli a1, a3, 32
	fsw f19, 4(a0)
pcrel1139:
	auipc a3, %pcrel_hi(cmmc_parallel_body_3)
	addi a2, a1, 512
	fsw f8, 8(a0)
	fsw f9, 12(a0)
	sd a2, 16(a0)
	addi a2, a3, %pcrel_lo(pcrel1139)
	sb s3, 24(a0)
	mv a1, s1
	mv a0, zero
	jal cmmcParallelFor
pcrel1140:
	auipc a1, %pcrel_hi(cmmc_parallel_body_payload_5)
	li a2, 511
pcrel1141:
	auipc a3, %pcrel_hi(cmmc_parallel_body_5)
	addi a0, a1, %pcrel_lo(pcrel1140)
	sw a2, %pcrel_lo(pcrel1140)(a1)
	addi a2, a3, %pcrel_lo(pcrel1141)
	fsw f20, 4(a0)
	fsw f21, 8(a0)
	fsw f8, 12(a0)
	fsw f9, 16(a0)
	sw s1, 20(a0)
	sb s3, 24(a0)
	mv a1, s1
	mv a0, zero
	jal cmmcParallelFor
pcrel1142:
	auipc a3, %pcrel_hi(cmmc_parallel_body_2)
	ori a2, s2, 270
pcrel1143:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_2)
	sd a2, %pcrel_lo(pcrel1143)(a0)
	addi a1, a0, %pcrel_lo(pcrel1143)
	addi a2, a3, %pcrel_lo(pcrel1142)
	mv a0, zero
	sb s3, 8(a1)
	mv a1, s0
	jal cmmcParallelFor
	li a0, 158
pcrel1144:
	auipc a1, %pcrel_hi(imgOut)
	addi s0, a1, %pcrel_lo(pcrel1144)
	jal _sysy_stoptime
	mv a1, s0
	li a2, 135
	slli a0, a2, 10
	jal putfarray
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	flw f18, 16(sp)
	flw f19, 20(sp)
	flw f8, 24(sp)
	flw f21, 28(sp)
	flw f9, 32(sp)
	ld s1, 40(sp)
	ld s0, 48(sp)
	ld s2, 56(sp)
	ld s3, 64(sp)
	flw f20, 72(sp)
	addi sp, sp, 80
	ret
.p2align 2
cmmc_parallel_body_0:
	mv t2, a0
	mv a3, a1
pcrel161:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_0)
	li a4, 1080
pcrel162:
	auipc t4, %pcrel_hi(imgIn)
pcrel163:
	auipc a0, %pcrel_hi(my_y1)
	flw f10, %pcrel_lo(pcrel161)(a2)
	addi t1, a2, %pcrel_lo(pcrel161)
	mulw t3, t2, a4
	addi t0, a0, %pcrel_lo(pcrel163)
	flw f11, 4(t1)
	add a0, t0, t3
	flw f12, 8(t1)
	addi t0, t4, %pcrel_lo(pcrel162)
	flw f13, 12(t1)
	lw a2, 16(t1)
	lb a5, 24(t1)
	addi a1, a2, -3
	li t1, 3
	bne a5, zero, label5
	j label27
.p2align 2
label18:
	addi t3, t3, 4
	fmv.s f2, f15
	fmv.s f1, f14
	fmv.s f14, f0
.p2align 2
label12:
	flw f15, 0(t3)
	fmul.s f4, f11, f2
	fmul.s f5, f12, f14
	sh2add t5, t4, a0
	fmul.s f0, f10, f15
	addiw t4, t4, 1
	fadd.s f3, f0, f4
	fmul.s f4, f13, f1
	fadd.s f2, f3, f5
	fadd.s f0, f2, f4
	fsw f0, 0(t5)
	bgt a2, t4, label18
	addiw t2, t2, 1
	ble a3, t2, label29
.p2align 2
label28:
	addi a0, a0, 1080
	beq a5, zero, label27
.p2align 2
label5:
	mulw t4, t2, a4
	add t3, t0, t4
	ble a2, t1, label59
	fmv.w.x f15, zero
	mv t4, t3
	mv t5, zero
	fmv.s f14, f15
	fmv.s f1, f15
.p2align 2
label20:
	flw f0, 0(t4)
	fmul.s f6, f11, f15
	fmul.s f5, f12, f14
	sh2add t6, t5, a0
	fmul.s f7, f11, f0
	addiw t5, t5, 4
	fmul.s f4, f10, f0
	fadd.s f3, f4, f6
	fmul.s f4, f13, f1
	fadd.s f2, f3, f5
	fmul.s f5, f13, f14
	fadd.s f15, f2, f4
	fmul.s f1, f12, f15
	fsw f15, 0(t6)
	flw f2, 4(t4)
	fmul.s f3, f10, f2
	fadd.s f6, f3, f7
	fadd.s f4, f6, f1
	fadd.s f0, f4, f5
	fmul.s f5, f11, f2
	fmul.s f2, f13, f15
	fmul.s f3, f12, f0
	fsw f0, 4(t6)
	flw f1, 8(t4)
	fmul.s f14, f10, f1
	fadd.s f6, f14, f5
	fadd.s f4, f6, f3
	fmul.s f6, f11, f1
	fmul.s f1, f13, f0
	fadd.s f14, f4, f2
	fmul.s f3, f12, f14
	fsw f14, 8(t6)
	flw f15, 12(t4)
	fmul.s f2, f10, f15
	fadd.s f5, f2, f6
	fadd.s f4, f5, f3
	fadd.s f2, f4, f1
	fsw f2, 12(t6)
	ble a1, t5, label129
	addi t4, t4, 16
	fmv.s f1, f14
	fmv.s f14, f2
	j label20
.p2align 2
label129:
	fmv.s f1, f14
	fmv.s f14, f2
	ble a2, t5, label153
.p2align 2
label11:
	sh2add t3, t5, t3
	mv t4, t5
	fmv.s f2, f15
	j label12
label59:
	fmv.w.x f15, zero
	mv t5, zero
	fmv.s f14, f15
	fmv.s f1, f15
	bgt a2, zero, label11
	addiw t2, t2, 1
	bgt a3, t2, label28
	j label29
label27:
	addiw t2, t2, 1
	bgt a3, t2, label28
label29:
	ret
.p2align 2
label153:
	addiw t2, t2, 1
	bgt a3, t2, label28
	j label29
.p2align 2
cmmc_parallel_body_1:
	mv a2, a1
pcrel334:
	auipc a3, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel335:
	auipc t3, %pcrel_hi(my_y2)
	li a5, 1080
	lw a1, %pcrel_lo(pcrel334)(a3)
	addi t2, a3, %pcrel_lo(pcrel334)
	addi t0, t3, %pcrel_lo(pcrel335)
	mulw t1, a0, a5
	addi a4, a1, -3
pcrel336:
	auipc t3, %pcrel_hi(imgIn)
	add a3, t0, t1
	flw f10, 4(t2)
	addi t1, t3, %pcrel_lo(pcrel336)
	flw f11, 8(t2)
	flw f12, 12(t2)
	flw f13, 16(t2)
	lb t0, 24(t2)
	mv t2, a0
	li a0, 2
	bne t0, zero, label168
	j label193
.p2align 2
label192:
	addi t4, t4, -4
	fmv.s f3, f14
	fmv.s f1, f15
	fmv.s f14, f2
	fmv.s f15, f0
.p2align 2
label185:
	fmul.s f0, f10, f14
	fmul.s f6, f11, f3
	fmul.s f5, f12, f15
	sh2add t6, t5, t3
	fmul.s f3, f13, f1
	addiw t5, t5, -1
	fadd.s f4, f0, f6
	fadd.s f2, f4, f5
	fadd.s f0, f2, f3
	fsw f0, 0(t4)
	flw f2, 0(t6)
	bge t5, zero, label192
	addiw t2, t2, 1
	ble a2, t2, label195
.p2align 2
label194:
	addi a3, a3, 1080
	beq t0, zero, label193
.p2align 2
label168:
	mulw t4, t2, a5
	add t3, t1, t4
	blt a4, zero, label225
	sh2add t4, a1, a3
	mv t5, a1
	fmv.w.x f0, zero
	fmv.s f15, f0
	fmv.s f14, f0
	fmv.s f1, f0
	j label170
.p2align 2
label177:
	addi t4, t4, -16
	fmv.s f1, f14
	fmv.s f14, f2
.p2align 2
label170:
	fmul.s f4, f10, f0
	fmul.s f5, f11, f15
	fmul.s f6, f12, f14
	sh2add t6, t5, t3
	fmul.s f7, f13, f14
	addiw t5, t5, -4
	fadd.s f2, f4, f5
	fmul.s f4, f13, f1
	fadd.s f3, f2, f6
	fmul.s f6, f11, f0
	fadd.s f15, f3, f4
	fmul.s f2, f12, f15
	fsw f15, 0(t4)
	flw f1, 0(t6)
	fmul.s f3, f10, f1
	fadd.s f5, f3, f6
	fmul.s f6, f11, f1
	fadd.s f4, f5, f2
	fadd.s f0, f4, f7
	fmul.s f7, f13, f15
	fmul.s f3, f12, f0
	fsw f0, -4(t4)
	flw f2, -4(t6)
	fmul.s f14, f10, f2
	fadd.s f5, f14, f6
	fadd.s f4, f5, f3
	fmul.s f5, f13, f0
	fadd.s f14, f4, f7
	fmul.s f7, f11, f2
	fmul.s f1, f12, f14
	fsw f14, -8(t4)
	flw f15, -8(t6)
	fmul.s f4, f10, f15
	fadd.s f6, f4, f7
	fadd.s f3, f6, f1
	fadd.s f2, f3, f5
	fsw f2, -12(t4)
	flw f0, -12(t6)
	bgt t5, a0, label177
	fmv.s f1, f14
	blt t5, zero, label325
.p2align 2
label184:
	sh2add t4, t5, a3
	fmv.s f14, f0
	fmv.s f3, f15
	fmv.s f15, f2
	j label185
label193:
	addiw t2, t2, 1
	bgt a2, t2, label194
	j label195
label225:
	fmv.w.x f0, zero
	mv t5, a1
	fmv.s f15, f0
	fmv.s f2, f0
	fmv.s f1, f0
	bge a1, zero, label184
	addiw t2, t2, 1
	bgt a2, t2, label194
label195:
	ret
.p2align 2
label325:
	addiw t2, t2, 1
	bgt a2, t2, label194
	j label195
.p2align 2
cmmc_parallel_body_2:
	addi sp, sp, -8
	mv t3, a0
	mv a3, a1
pcrel465:
	auipc a4, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel466:
	auipc t4, %pcrel_hi(my_y1)
pcrel467:
	auipc a1, %pcrel_hi(imgOut)
	addi t1, a4, %pcrel_lo(pcrel465)
	addi t0, a1, %pcrel_lo(pcrel467)
	sd s0, 0(sp)
	lw a2, %pcrel_lo(pcrel465)(a4)
	lb a5, 8(t1)
	li a4, 1080
	addi a0, a2, -3
	mulw t2, t3, a4
	add a1, t0, t2
pcrel468:
	auipc t2, %pcrel_hi(my_y2)
	addi t0, t4, %pcrel_lo(pcrel466)
	addi t1, t2, %pcrel_lo(pcrel468)
	li t2, 3
	bne a5, zero, label341
	j label354
.p2align 2
label353:
	addi t5, t5, 4
.p2align 2
label350:
	sh2add a6, t6, t4
	flw f10, 0(t5)
	sh2add a7, t6, a1
	flw f12, 0(a6)
	addiw t6, t6, 1
	fadd.s f11, f10, f12
	fsw f11, 0(a7)
	bgt a2, t6, label353
	addiw t3, t3, 1
	ble a3, t3, label356
.p2align 2
label355:
	addi a1, a1, 1080
	beq a5, zero, label354
.p2align 2
label341:
	mulw t6, t3, a4
	add t4, t1, t6
	add t5, t0, t6
	ble a2, t2, label382
	mv t6, a1
	mv a6, zero
	j label343
.p2align 2
label346:
	addi t6, t6, 16
.p2align 2
label343:
	sh2add a7, a6, t5
	sh2add s0, a6, t4
	flw f10, 0(a7)
	addiw a6, a6, 4
	flw f13, 0(s0)
	fadd.s f12, f10, f13
	fsw f12, 0(t6)
	flw f11, 4(a7)
	flw f13, 4(s0)
	fadd.s f12, f11, f13
	fsw f12, 4(t6)
	flw f10, 8(a7)
	flw f13, 8(s0)
	fadd.s f12, f10, f13
	fsw f12, 8(t6)
	flw f11, 12(a7)
	flw f13, 12(s0)
	fadd.s f10, f11, f13
	fsw f10, 12(t6)
	bgt a0, a6, label346
	ble a2, a6, label456
.p2align 2
label349:
	sh2add t5, a6, t5
	mv t6, a6
	j label350
label354:
	addiw t3, t3, 1
	bgt a3, t3, label355
	j label356
label382:
	mv a6, zero
	bgt a2, zero, label349
	addiw t3, t3, 1
	bgt a3, t3, label355
label356:
	ld s0, 0(sp)
	addi sp, sp, 8
	ret
.p2align 2
label456:
	addiw t3, t3, 1
	bgt a3, t3, label355
	j label356
.p2align 2
cmmc_parallel_body_3:
	addi sp, sp, -24
	mv t2, a1
pcrel655:
	auipc a3, %pcrel_hi(cmmc_parallel_body_payload_3)
	li t5, 3
	sd s0, 0(sp)
pcrel656:
	auipc a1, %pcrel_hi(my_y1)
	addi a2, a3, %pcrel_lo(pcrel655)
	addi a4, a1, %pcrel_lo(pcrel656)
	sd s2, 8(sp)
	sd s1, 16(sp)
	flw f10, %pcrel_lo(pcrel655)(a3)
	li a3, 1080
	flw f11, 4(a2)
	slli a1, a3, 1
	flw f12, 8(a2)
	flw f13, 12(a2)
	lw t1, 16(a2)
	lb t4, 24(a2)
	addi a5, t1, -3
pcrel657:
	auipc a2, %pcrel_hi(imgOut)
	addi t3, a2, %pcrel_lo(pcrel657)
	addi a2, a1, 1080
	addi t0, a2, 1080
	j label470
.p2align 2
label493:
	addi t6, t6, 1080
	fmv.s f2, f15
	fmv.s f1, f14
	fmv.s f14, f0
.p2align 2
label487:
	sh2add a7, a0, t6
	fmul.s f4, f11, f2
	flw f15, 0(a7)
	fmul.s f5, f12, f14
	mulw a7, a6, a3
	fmul.s f0, f10, f15
	addiw a6, a6, 1
	add s1, a4, a7
	sh2add s0, a0, s1
	fadd.s f3, f0, f4
	fmul.s f4, f13, f1
	fadd.s f2, f3, f5
	fadd.s f0, f2, f4
	fsw f0, 0(s0)
	bgt t1, a6, label493
	addiw a0, a0, 1
	ble t2, a0, label495
.p2align 2
label470:
	beq t4, zero, label494
	ble t1, t5, label521
	fmv.w.x f14, zero
	mv t6, t3
	mv a6, zero
	fmv.s f0, f14
	fmv.s f1, f14
	j label474
.p2align 2
label480:
	add t6, t6, t0
	fmv.s f1, f0
	fmv.s f0, f2
.p2align 2
label474:
	sh2add a7, a0, t6
	addi s1, t6, 1080
	fmul.s f5, f11, f14
	flw f15, 0(a7)
	fmul.s f6, f12, f0
	mulw s0, a6, a3
	fmul.s f4, f10, f15
	addiw a6, a6, 4
	add a7, a4, s0
	sh2add s0, a0, s1
	sh2add s2, a0, a7
	addi s1, a7, 1080
	fadd.s f2, f4, f5
	fmul.s f5, f11, f15
	fmul.s f4, f13, f1
	fadd.s f3, f2, f6
	fmul.s f6, f13, f0
	fadd.s f14, f3, f4
	fmul.s f1, f12, f14
	fsw f14, 0(s2)
	flw f2, 0(s0)
	sh2add s0, a0, s1
	fmul.s f3, f10, f2
	add s1, t6, a1
	fadd.s f7, f3, f5
	fmul.s f5, f11, f2
	fmul.s f2, f13, f14
	fadd.s f4, f7, f1
	fadd.s f15, f4, f6
	fmul.s f3, f12, f15
	fsw f15, 0(s0)
	sh2add s0, a0, s1
	add s1, a7, a1
	flw f1, 0(s0)
	sh2add s0, a0, s1
	fmul.s f0, f10, f1
	add s1, t6, a2
	fadd.s f6, f0, f5
	fmul.s f5, f11, f1
	fmul.s f1, f13, f15
	fadd.s f4, f6, f3
	fadd.s f0, f4, f2
	fmul.s f3, f12, f0
	fsw f0, 0(s0)
	sh2add s0, a0, s1
	add s1, a7, a2
	flw f14, 0(s0)
	sh2add s0, a0, s1
	fmul.s f2, f10, f14
	fadd.s f6, f2, f5
	fadd.s f4, f6, f3
	fadd.s f2, f4, f1
	fsw f2, 0(s0)
	bgt a5, a6, label480
	fmv.s f15, f2
	ble t1, a6, label647
.p2align 2
label486:
	mulw a7, a6, a3
	fmv.s f2, f14
	fmv.s f1, f0
	add t6, t3, a7
	fmv.s f14, f15
	j label487
label494:
	addiw a0, a0, 1
	bgt t2, a0, label470
	j label495
label521:
	fmv.w.x f14, zero
	mv a6, zero
	fmv.s f15, f14
	fmv.s f0, f14
	bgt t1, zero, label486
	addiw a0, a0, 1
	bgt t2, a0, label470
label495:
	ld s0, 0(sp)
	ld s2, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 24
	ret
.p2align 2
label647:
	addiw a0, a0, 1
	bgt t2, a0, label470
	j label495
.p2align 2
cmmc_parallel_body_4:
	addi sp, sp, -8
	mv t3, a0
	mv a3, a1
pcrel786:
	auipc a4, %pcrel_hi(cmmc_parallel_body_payload_4)
pcrel787:
	auipc t4, %pcrel_hi(my_y1)
pcrel788:
	auipc a1, %pcrel_hi(imgOut)
	addi t1, a4, %pcrel_lo(pcrel786)
	addi t0, a1, %pcrel_lo(pcrel788)
	sd s0, 0(sp)
	lw a2, %pcrel_lo(pcrel786)(a4)
	lb a5, 8(t1)
	li a4, 1080
	addi a0, a2, -3
	mulw t2, t3, a4
	add a1, t0, t2
pcrel789:
	auipc t2, %pcrel_hi(my_y2)
	addi t0, t4, %pcrel_lo(pcrel787)
	addi t1, t2, %pcrel_lo(pcrel789)
	li t2, 3
	bne a5, zero, label662
	j label675
.p2align 2
label674:
	addi t5, t5, 4
.p2align 2
label671:
	sh2add a6, t6, t4
	flw f10, 0(t5)
	sh2add a7, t6, a1
	flw f12, 0(a6)
	addiw t6, t6, 1
	fadd.s f11, f10, f12
	fsw f11, 0(a7)
	bgt a2, t6, label674
	addiw t3, t3, 1
	ble a3, t3, label677
.p2align 2
label676:
	addi a1, a1, 1080
	beq a5, zero, label675
.p2align 2
label662:
	mulw t6, t3, a4
	add t4, t1, t6
	add t5, t0, t6
	ble a2, t2, label703
	mv t6, a1
	mv a6, zero
	j label664
.p2align 2
label667:
	addi t6, t6, 16
.p2align 2
label664:
	sh2add a7, a6, t5
	sh2add s0, a6, t4
	flw f10, 0(a7)
	addiw a6, a6, 4
	flw f13, 0(s0)
	fadd.s f12, f10, f13
	fsw f12, 0(t6)
	flw f11, 4(a7)
	flw f13, 4(s0)
	fadd.s f12, f11, f13
	fsw f12, 4(t6)
	flw f10, 8(a7)
	flw f13, 8(s0)
	fadd.s f12, f10, f13
	fsw f12, 8(t6)
	flw f11, 12(a7)
	flw f13, 12(s0)
	fadd.s f10, f11, f13
	fsw f10, 12(t6)
	bgt a0, a6, label667
	ble a2, a6, label777
.p2align 2
label670:
	sh2add t5, a6, t5
	mv t6, a6
	j label671
label675:
	addiw t3, t3, 1
	bgt a3, t3, label676
	j label677
label703:
	mv a6, zero
	bgt a2, zero, label670
	addiw t3, t3, 1
	bgt a3, t3, label676
label677:
	ld s0, 0(sp)
	addi sp, sp, 8
	ret
.p2align 2
label777:
	addiw t3, t3, 1
	bgt a3, t3, label676
	j label677
.p2align 2
cmmc_parallel_body_5:
	addi sp, sp, -24
	mv t2, a1
pcrel989:
	auipc a3, %pcrel_hi(cmmc_parallel_body_payload_5)
	li t0, -135
	li a5, 2
pcrel990:
	auipc a1, %pcrel_hi(my_y2)
	addi a2, a3, %pcrel_lo(pcrel989)
	addi t3, a1, %pcrel_lo(pcrel990)
	sd s0, 0(sp)
	slli a1, t0, 4
	sd s1, 8(sp)
	sd s2, 16(sp)
	lw t1, %pcrel_lo(pcrel989)(a3)
	li a3, 1080
	addi t4, t1, -3
	flw f10, 4(a2)
	flw f11, 8(a2)
	flw f12, 12(a2)
	flw f13, 16(a2)
	lb t5, 24(a2)
pcrel991:
	auipc a2, %pcrel_hi(imgOut)
	addi a4, a2, %pcrel_lo(pcrel991)
	addi a2, a1, -1080
	addi t0, a2, -1080
	j label791
.p2align 2
label819:
	addi t6, t6, -1080
	fmv.s f3, f14
	fmv.s f1, f15
	fmv.s f14, f2
	fmv.s f15, f0
.p2align 2
label812:
	fmul.s f4, f10, f14
	fmul.s f0, f11, f3
	fmul.s f5, f12, f15
	sh2add s0, a0, t6
	mulw a7, a6, a3
	addiw a6, a6, -1
	add s1, a4, a7
	fadd.s f2, f4, f0
	fmul.s f4, f13, f1
	fadd.s f3, f2, f5
	fadd.s f0, f3, f4
	fsw f0, 0(s0)
	sh2add s0, a0, s1
	flw f2, 0(s0)
	bge a6, zero, label819
	addiw a0, a0, 1
	ble t2, a0, label794
.p2align 2
label791:
	beq t5, zero, label793
	blt t4, zero, label850
	mulw a6, t1, a3
	fmv.w.x f15, zero
	add t6, t3, a6
	fmv.s f14, f15
	fmv.s f0, f15
	fmv.s f2, f15
	mv a6, t1
.p2align 2
label797:
	fmul.s f3, f10, f15
	fmul.s f5, f11, f14
	fmul.s f6, f12, f0
	sh2add a7, a0, t6
	mulw s0, a6, a3
	fmul.s f7, f13, f0
	addiw a6, a6, -4
	fadd.s f4, f3, f5
	fmul.s f5, f11, f15
	fmul.s f3, f13, f2
	fadd.s f1, f4, f6
	fadd.s f14, f1, f3
	fmul.s f1, f12, f14
	fsw f14, 0(a7)
	add a7, a4, s0
	addi s2, a7, -1080
	addi s0, t6, -1080
	sh2add s1, a0, a7
	flw f2, 0(s1)
	sh2add s1, a0, s0
	fmul.s f3, f10, f2
	sh2add s0, a0, s2
	fadd.s f6, f3, f5
	fmul.s f5, f11, f2
	fmul.s f2, f13, f14
	fadd.s f4, f6, f1
	fadd.s f15, f4, f7
	fmul.s f3, f12, f15
	fsw f15, 0(s1)
	add s1, a7, a1
	flw f1, 0(s0)
	add s0, t6, a1
	fmul.s f0, f10, f1
	sh2add s2, a0, s0
	sh2add s0, a0, s1
	add s1, a7, a2
	fadd.s f6, f0, f5
	fmul.s f5, f11, f1
	fadd.s f4, f6, f3
	fmul.s f6, f13, f15
	fadd.s f0, f4, f2
	fmul.s f2, f12, f0
	fsw f0, 0(s2)
	flw f14, 0(s0)
	add s0, t6, a2
	fmul.s f3, f10, f14
	sh2add s2, a0, s0
	sh2add s0, a0, s1
	fadd.s f7, f3, f5
	fadd.s f4, f7, f2
	fadd.s f1, f4, f6
	fsw f1, 0(s2)
	flw f15, 0(s0)
	ble a6, a5, label915
	add t6, t6, t0
	fmv.s f2, f0
	fmv.s f0, f1
	j label797
.p2align 2
label915:
	fmv.s f3, f14
	blt a6, zero, label980
.p2align 2
label811:
	mulw a7, a6, a3
	fmv.s f14, f15
	add t6, t3, a7
	fmv.s f15, f1
	fmv.s f1, f0
	j label812
label793:
	addiw a0, a0, 1
	bgt t2, a0, label791
	j label794
label850:
	fmv.w.x f15, zero
	mv a6, t1
	fmv.s f3, f15
	fmv.s f1, f15
	fmv.s f0, f15
	bge t1, zero, label811
	addiw a0, a0, 1
	bgt t2, a0, label791
label794:
	ld s0, 0(sp)
	ld s1, 8(sp)
	ld s2, 16(sp)
	addi sp, sp, 24
	ret
.p2align 2
label980:
	addiw a0, a0, 1
	bgt t2, a0, label791
	j label794
