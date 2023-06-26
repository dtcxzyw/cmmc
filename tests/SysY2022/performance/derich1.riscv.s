.data
.align 4
imgIn:
	.zero	552960
.align 4
imgOut:
	.zero	552960
.align 4
my_y1:
	.zero	552960
.align 4
my_y2:
	.zero	552960
.align 4
__cmmc_fp_constant_pool:
	.4byte	3191654481
	.4byte	1038821134
	.4byte	3206230588
	.4byte	3191992809
	.4byte	1038256634
.text
.globl main
main:
	addi sp, sp, -24
	sd s1, 16(sp)
	sd s0, 8(sp)
	sd ra, 0(sp)
pcrel5218:
	auipc a0, %pcrel_hi(imgIn)
	addi a0, a0, %pcrel_lo(pcrel5218)
	mv s1, a0
	jal getfarray
	li a0, 156
	jal _sysy_starttime
pcrel5219:
	auipc a0, %pcrel_hi(imgOut)
	addi s0, a0, %pcrel_lo(pcrel5219)
pcrel5220:
	auipc a0, %pcrel_hi(my_y1)
	addi a0, a0, %pcrel_lo(pcrel5220)
pcrel5221:
	auipc a1, %pcrel_hi(my_y2)
	addi a1, a1, %pcrel_lo(pcrel5221)
	mv a2, zero
	li a3, 512
	bge zero, a3, label158
	j label157
label158:
	mv a2, zero
	li a3, 512
	bge zero, a3, label162
	j label6
label162:
	mv a3, zero
	li a2, 512
	bge zero, a2, label1087
	li a2, 1080
	mulw a4, zero, a2
	add a4, a1, a4
	mulw a5, zero, a2
	add a5, a0, a5
	mulw a2, zero, a2
	add t1, s0, a2
	mv a2, zero
	addiw t2, zero, 16
	li t3, 270
	bge t2, t3, label41
	j label40
label1087:
	mv a2, zero
	li a3, 270
	bge zero, a3, label1424
	fmv.w.x f10, zero
	fmv.w.x f12, zero
	fmv.w.x f11, zero
	mv a3, zero
	addiw a4, zero, 16
	li a5, 512
	bge a4, a5, label58
	j label57
label1424:
	mv a2, zero
	li a3, 270
	bge zero, a3, label2539
	fmv.w.x f10, zero
	fmv.w.x f11, zero
	fmv.w.x f13, zero
	fmv.w.x f12, zero
	li a3, 511
	addiw a4, a3, -16
	blt a4, zero, label100
	j label121
label100:
	addiw a4, a3, -16
	blt a4, zero, label107
	j label106
label107:
	addiw a4, a3, -16
	blt a4, zero, label114
	j label113
label114:
	li a4, 1080
	mulw a5, a3, a4
	add a5, a1, a5
	slli t1, a2, 2
	add a5, a5, t1
pcrel5222:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t1, t1, %pcrel_lo(pcrel5222)
	flw f14, 0(t1)
	fmul.s f14, f14, f11
	flw f15, 4(t1)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(t1)
	fmul.s f13, f14, f13
	fadd.s f14, f12, f13
	fsw f14, 0(a5)
	mulw a4, a3, a4
	add a4, s0, a4
	slli a5, a2, 2
	add a4, a4, a5
	flw f15, 0(a4)
	addiw a3, a3, -1
	blt a3, zero, label120
	fmv.s f13, f10
	fmv.s f12, f11
	fmv.s f10, f14
	fmv.s f11, f15
	j label114
label120:
	addiw a2, a2, 1
	li a3, 270
	bge a2, a3, label2539
	fmv.w.x f10, zero
	fmv.w.x f11, zero
	fmv.w.x f13, zero
	fmv.w.x f12, zero
	li a3, 511
	addiw a4, a3, -16
	blt a4, zero, label100
	j label121
label57:
	li t1, 1080
	mulw a5, a3, t1
	add a5, a0, a5
	slli t2, a2, 2
	add t2, a5, t2
	mulw a3, a3, t1
	add t1, s0, a3
	slli a3, a2, 2
	add a3, t1, a3
	flw f13, 0(a3)
pcrel5223:
	auipc a3, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a3, a3, %pcrel_lo(pcrel5223)
	flw f14, 12(a3)
	fmul.s f14, f14, f13
	flw f15, 16(a3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a3)
	fmul.s f11, f14, f11
	fadd.s f11, f12, f11
	fsw f11, 0(t2)
	addi t2, a5, 1080
	slli t3, a2, 2
	add t2, t2, t3
	addi t3, t1, 1080
	slli t4, a2, 2
	add t3, t3, t4
	flw f12, 0(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f12
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(a3)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 0(t2)
	li t3, 2160
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f13, 0(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f13
	flw f15, 16(a3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a3)
	fmul.s f11, f14, f11
	fadd.s f11, f12, f11
	fsw f11, 0(t2)
	li t3, 3240
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f12, 0(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f12
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(a3)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 0(t2)
	li t3, 4320
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f13, 0(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f13
	flw f15, 16(a3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a3)
	fmul.s f11, f14, f11
	fadd.s f11, f12, f11
	fsw f11, 0(t2)
	li t3, 5400
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f14, 0(t3)
	flw f12, 12(a3)
	fmul.s f12, f12, f14
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f12, f12, f13
	fadd.s f12, f12, f11
	flw f13, 8(a3)
	fmul.s f10, f13, f10
	fadd.s f10, f12, f10
	fsw f10, 0(t2)
	li t3, 6480
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f12, 0(t3)
	flw f13, 12(a3)
	fmul.s f13, f13, f12
	flw f15, 16(a3)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f10
	flw f14, 8(a3)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	fsw f11, 0(t2)
	li t3, 7560
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f13, 0(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f13
	flw f15, 16(a3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f11
	flw f14, 8(a3)
	fmul.s f10, f14, f10
	fadd.s f12, f12, f10
	fsw f12, 0(t2)
	li t3, 8640
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f14, 0(t3)
	flw f10, 12(a3)
	fmul.s f10, f10, f14
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f10, f10, f13
	fadd.s f10, f10, f12
	flw f13, 8(a3)
	fmul.s f11, f13, f11
	fadd.s f10, f10, f11
	fsw f10, 0(t2)
	li t3, 9720
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f13, 0(t3)
	flw f11, 12(a3)
	fmul.s f11, f11, f13
	flw f15, 16(a3)
	fmul.s f14, f15, f14
	fadd.s f11, f11, f14
	fadd.s f11, f11, f10
	flw f14, 8(a3)
	fmul.s f12, f14, f12
	fadd.s f11, f11, f12
	fsw f11, 0(t2)
	li t3, 10800
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f12, 0(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f12
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(a3)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 0(t2)
	li t3, 11880
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f13, 0(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f13
	flw f15, 16(a3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a3)
	fmul.s f11, f14, f11
	fadd.s f11, f12, f11
	fsw f11, 0(t2)
	li t3, 12960
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f14, 0(t3)
	flw f12, 12(a3)
	fmul.s f12, f12, f14
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f12, f12, f13
	fadd.s f12, f12, f11
	flw f13, 8(a3)
	fmul.s f10, f13, f10
	fadd.s f12, f12, f10
	fsw f12, 0(t2)
	li t3, 14040
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f13, 0(t3)
	flw f10, 12(a3)
	fmul.s f10, f10, f13
	flw f15, 16(a3)
	fmul.s f14, f15, f14
	fadd.s f10, f10, f14
	fadd.s f10, f10, f12
	flw f14, 8(a3)
	fmul.s f11, f14, f11
	fadd.s f10, f10, f11
	fsw f10, 0(t2)
	li t3, 15120
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f14, 0(t3)
	flw f11, 12(a3)
	fmul.s f11, f11, f14
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f11, f11, f13
	fadd.s f11, f11, f10
	flw f13, 8(a3)
	fmul.s f12, f13, f12
	fadd.s f11, f11, f12
	fsw f11, 0(t2)
	li t2, 16200
	add a5, a5, t2
	slli t3, a2, 2
	add a5, a5, t3
	add t1, t1, t2
	slli t2, a2, 2
	add t1, t1, t2
	flw f12, 0(t1)
	flw f13, 12(a3)
	fmul.s f13, f13, f12
	flw f15, 16(a3)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f11
	flw f14, 8(a3)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 0(a5)
	mv a3, a4
	addiw a4, a4, 16
	li a5, 512
	bge a4, a5, label58
	j label57
label41:
	addiw t2, a2, 16
	li t3, 270
	bge t2, t3, label43
	j label49
label43:
	addiw t2, a2, 16
	li t3, 270
	bge t2, t3, label45
	j label48
label45:
	slli t2, a2, 2
	add t2, t1, t2
	slli t3, a2, 2
	add t3, a5, t3
	flw f10, 0(t3)
	slli t3, a2, 2
	add t3, a4, t3
	flw f11, 0(t3)
	fadd.s f10, f10, f11
	fsw f10, 0(t2)
	addiw a2, a2, 1
	li t2, 270
	bge a2, t2, label47
	j label45
label58:
	addiw a4, a3, 16
	li a5, 512
	bge a4, a5, label63
	j label75
label63:
	addiw a4, a3, 16
	li a5, 512
	bge a4, a5, label69
label68:
	li t1, 1080
	mulw a5, a3, t1
	add a5, a0, a5
	slli t2, a2, 2
	add t2, a5, t2
	mulw a3, a3, t1
	add t1, s0, a3
	slli a3, a2, 2
	add a3, t1, a3
	flw f13, 0(a3)
pcrel5224:
	auipc a3, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a3, a3, %pcrel_lo(pcrel5224)
	flw f14, 12(a3)
	fmul.s f14, f14, f13
	flw f15, 16(a3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a3)
	fmul.s f11, f14, f11
	fadd.s f11, f12, f11
	fsw f11, 0(t2)
	addi t2, a5, 1080
	slli t3, a2, 2
	add t2, t2, t3
	addi t3, t1, 1080
	slli t4, a2, 2
	add t3, t3, t4
	flw f14, 0(t3)
	flw f12, 12(a3)
	fmul.s f12, f12, f14
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f12, f12, f13
	fadd.s f12, f12, f11
	flw f13, 8(a3)
	fmul.s f10, f13, f10
	fadd.s f10, f12, f10
	fsw f10, 0(t2)
	li t3, 2160
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f12, 0(t3)
	flw f13, 12(a3)
	fmul.s f13, f13, f12
	flw f15, 16(a3)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f10
	flw f14, 8(a3)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	fsw f11, 0(t2)
	li t3, 3240
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f13, 0(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f13
	flw f15, 16(a3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f11
	flw f14, 8(a3)
	fmul.s f10, f14, f10
	fadd.s f12, f12, f10
	fsw f12, 0(t2)
	li t3, 4320
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f14, 0(t3)
	flw f10, 12(a3)
	fmul.s f10, f10, f14
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f10, f10, f13
	fadd.s f10, f10, f12
	flw f13, 8(a3)
	fmul.s f11, f13, f11
	fadd.s f10, f10, f11
	fsw f10, 0(t2)
	li t3, 5400
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f13, 0(t3)
	flw f11, 12(a3)
	fmul.s f11, f11, f13
	flw f15, 16(a3)
	fmul.s f14, f15, f14
	fadd.s f11, f11, f14
	fadd.s f11, f11, f10
	flw f14, 8(a3)
	fmul.s f12, f14, f12
	fadd.s f11, f11, f12
	fsw f11, 0(t2)
	li t3, 6480
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f14, 0(t3)
	flw f12, 12(a3)
	fmul.s f12, f12, f14
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f12, f12, f13
	fadd.s f12, f12, f11
	flw f13, 8(a3)
	fmul.s f10, f13, f10
	fadd.s f10, f12, f10
	fsw f10, 0(t2)
	li t3, 7560
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f12, 0(t3)
	flw f13, 12(a3)
	fmul.s f13, f13, f12
	flw f15, 16(a3)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f10
	flw f14, 8(a3)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	fsw f11, 0(t2)
	li t3, 8640
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f14, 0(t3)
	flw f13, 12(a3)
	fmul.s f13, f13, f14
	flw f15, 16(a3)
	fmul.s f12, f15, f12
	fadd.s f12, f13, f12
	fadd.s f12, f12, f11
	flw f13, 8(a3)
	fmul.s f10, f13, f10
	fadd.s f12, f12, f10
	fsw f12, 0(t2)
	li t3, 9720
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f13, 0(t3)
	flw f10, 12(a3)
	fmul.s f10, f10, f13
	flw f15, 16(a3)
	fmul.s f14, f15, f14
	fadd.s f10, f10, f14
	fadd.s f10, f10, f12
	flw f14, 8(a3)
	fmul.s f11, f14, f11
	fadd.s f10, f10, f11
	fsw f10, 0(t2)
	li t3, 10800
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f14, 0(t3)
	flw f11, 12(a3)
	fmul.s f11, f11, f14
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f11, f11, f13
	fadd.s f11, f11, f10
	flw f13, 8(a3)
	fmul.s f12, f13, f12
	fadd.s f11, f11, f12
	fsw f11, 0(t2)
	li t3, 11880
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f13, 0(t3)
	flw f12, 12(a3)
	fmul.s f12, f12, f13
	flw f15, 16(a3)
	fmul.s f14, f15, f14
	fadd.s f12, f12, f14
	fadd.s f12, f12, f11
	flw f14, 8(a3)
	fmul.s f10, f14, f10
	fadd.s f10, f12, f10
	fsw f10, 0(t2)
	li t3, 12960
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f12, 0(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f12
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a3)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	fsw f11, 0(t2)
	li t3, 14040
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f14, 0(t3)
	flw f13, 12(a3)
	fmul.s f13, f13, f14
	flw f15, 16(a3)
	fmul.s f12, f15, f12
	fadd.s f12, f13, f12
	fadd.s f12, f12, f11
	flw f13, 8(a3)
	fmul.s f10, f13, f10
	fadd.s f10, f12, f10
	fsw f10, 0(t2)
	li t3, 15120
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f13, 0(t3)
	flw f12, 12(a3)
	fmul.s f12, f12, f13
	flw f15, 16(a3)
	fmul.s f14, f15, f14
	fadd.s f12, f12, f14
	fadd.s f12, f12, f10
	flw f14, 8(a3)
	fmul.s f11, f14, f11
	fadd.s f11, f12, f11
	fsw f11, 0(t2)
	li t2, 16200
	add a5, a5, t2
	slli t3, a2, 2
	add a5, a5, t3
	add t1, t1, t2
	slli t2, a2, 2
	add t1, t1, t2
	flw f12, 0(t1)
	flw f14, 12(a3)
	fmul.s f14, f14, f12
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(a3)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 0(a5)
	mv a3, a4
	addiw a4, a4, 16
	li a5, 512
	bge a4, a5, label69
	j label68
label69:
	li a5, 1080
	mulw a4, a3, a5
	add a4, a0, a4
	slli t1, a2, 2
	add a4, a4, t1
	mulw a5, a3, a5
	add a5, s0, a5
	add a5, a5, t1
	flw f13, 0(a5)
pcrel5225:
	auipc a5, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a5, a5, %pcrel_lo(pcrel5225)
	flw f14, 12(a5)
	fmul.s f14, f14, f13
	flw f15, 16(a5)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a5)
	fmul.s f11, f14, f11
	fadd.s f14, f12, f11
	fsw f14, 0(a4)
	addiw a3, a3, 1
	li a4, 512
	bge a3, a4, label74
	fmv.s f12, f13
	fmv.s f11, f10
	fmv.s f10, f14
	j label69
label74:
	addiw a2, a2, 1
	li a3, 270
	bge a2, a3, label1424
	fmv.w.x f10, zero
	fmv.w.x f12, zero
	fmv.w.x f11, zero
	mv a3, zero
	addiw a4, zero, 16
	li a5, 512
	bge a4, a5, label58
	j label57
label75:
	li t1, 1080
	mulw a5, a3, t1
	add a5, a0, a5
	slli t2, a2, 2
	add t2, a5, t2
	mulw a3, a3, t1
	add t1, s0, a3
	slli a3, a2, 2
	add a3, t1, a3
	flw f13, 0(a3)
pcrel5226:
	auipc a3, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a3, a3, %pcrel_lo(pcrel5226)
	flw f14, 12(a3)
	fmul.s f14, f14, f13
	flw f15, 16(a3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a3)
	fmul.s f11, f14, f11
	fadd.s f11, f12, f11
	fsw f11, 0(t2)
	addi t2, a5, 1080
	slli t3, a2, 2
	add t2, t2, t3
	addi t3, t1, 1080
	slli t4, a2, 2
	add t3, t3, t4
	flw f12, 0(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f12
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(a3)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 0(t2)
	li t3, 2160
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f13, 0(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f13
	flw f15, 16(a3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a3)
	fmul.s f11, f14, f11
	fadd.s f11, f12, f11
	fsw f11, 0(t2)
	li t3, 3240
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f14, 0(t3)
	flw f12, 12(a3)
	fmul.s f12, f12, f14
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f12, f12, f13
	fadd.s f12, f12, f11
	flw f13, 8(a3)
	fmul.s f10, f13, f10
	fadd.s f10, f12, f10
	fsw f10, 0(t2)
	li t3, 4320
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f12, 0(t3)
	flw f13, 12(a3)
	fmul.s f13, f13, f12
	flw f15, 16(a3)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f10
	flw f14, 8(a3)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	fsw f11, 0(t2)
	li t3, 5400
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f13, 0(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f13
	flw f15, 16(a3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f11
	flw f14, 8(a3)
	fmul.s f10, f14, f10
	fadd.s f10, f12, f10
	fsw f10, 0(t2)
	li t3, 6480
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f12, 0(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f12
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a3)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	fsw f11, 0(t2)
	li t3, 7560
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f13, 0(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f13
	flw f15, 16(a3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f11
	flw f14, 8(a3)
	fmul.s f10, f14, f10
	fadd.s f10, f12, f10
	fsw f10, 0(t2)
	li t3, 8640
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f12, 0(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f12
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a3)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	fsw f11, 0(t2)
	li t3, 9720
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f13, 0(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f13
	flw f15, 16(a3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f11
	flw f14, 8(a3)
	fmul.s f10, f14, f10
	fadd.s f12, f12, f10
	fsw f12, 0(t2)
	li t3, 10800
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f14, 0(t3)
	flw f10, 12(a3)
	fmul.s f10, f10, f14
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f10, f10, f13
	fadd.s f10, f10, f12
	flw f13, 8(a3)
	fmul.s f11, f13, f11
	fadd.s f10, f10, f11
	fsw f10, 0(t2)
	li t3, 11880
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f11, 0(t3)
	flw f13, 12(a3)
	fmul.s f13, f13, f11
	flw f15, 16(a3)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f10
	flw f14, 8(a3)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	fsw f12, 0(t2)
	li t3, 12960
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f13, 0(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f13
	flw f15, 16(a3)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(a3)
	fmul.s f10, f14, f10
	fadd.s f11, f11, f10
	fsw f11, 0(t2)
	li t3, 14040
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f14, 0(t3)
	flw f10, 12(a3)
	fmul.s f10, f10, f14
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f10, f10, f13
	fadd.s f10, f10, f11
	flw f13, 8(a3)
	fmul.s f12, f13, f12
	fadd.s f10, f10, f12
	fsw f10, 0(t2)
	li t3, 15120
	add t2, a5, t3
	add t2, t2, t4
	add t3, t1, t3
	add t3, t3, t4
	flw f13, 0(t3)
	flw f12, 12(a3)
	fmul.s f12, f12, f13
	flw f15, 16(a3)
	fmul.s f14, f15, f14
	fadd.s f12, f12, f14
	fadd.s f12, f12, f10
	flw f14, 8(a3)
	fmul.s f11, f14, f11
	fadd.s f11, f12, f11
	fsw f11, 0(t2)
	li t2, 16200
	add a5, a5, t2
	slli t3, a2, 2
	add a5, a5, t3
	add t1, t1, t2
	slli t2, a2, 2
	add t1, t1, t2
	flw f12, 0(t1)
	flw f14, 12(a3)
	fmul.s f14, f14, f12
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(a3)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 0(a5)
	mv a3, a4
	addiw a4, a4, 16
	li a5, 512
	bge a4, a5, label63
	j label75
label2539:
	mv a3, zero
	li a2, 512
	bge zero, a2, label93
	j label2546
label121:
	li t2, 1080
	mulw a5, a3, t2
	add t1, a1, a5
	slli a5, a2, 2
	add t3, t1, a5
pcrel5227:
	auipc a5, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a5, a5, %pcrel_lo(pcrel5227)
	flw f14, 0(a5)
	fmul.s f14, f14, f11
	flw f15, 4(a5)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a5)
	fmul.s f13, f14, f13
	fadd.s f12, f12, f13
	fsw f12, 0(t3)
	mulw a3, a3, t2
	add a3, s0, a3
	slli t2, a2, 2
	add t2, a3, t2
	flw f13, 0(t2)
	addi t2, t1, -1080
	slli t3, a2, 2
	add t2, t2, t3
	flw f14, 0(a5)
	fmul.s f14, f14, f13
	flw f15, 4(a5)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(a5)
	fmul.s f10, f14, f10
	fadd.s f11, f11, f10
	fsw f11, 0(t2)
	addi t2, a3, -1080
	add t2, t2, t3
	flw f14, 0(t2)
	li t2, -2160
	add t3, t1, t2
	slli t4, a2, 2
	add t3, t3, t4
	flw f10, 0(a5)
	fmul.s f10, f10, f14
	flw f15, 4(a5)
	fmul.s f13, f15, f13
	fadd.s f10, f10, f13
	fadd.s f10, f10, f11
	flw f13, 8(a5)
	fmul.s f12, f13, f12
	fadd.s f10, f10, f12
	fsw f10, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f13, 0(t2)
	li t2, -3240
	add t3, t1, t2
	add t3, t3, t4
	flw f12, 0(a5)
	fmul.s f12, f12, f13
	flw f15, 4(a5)
	fmul.s f14, f15, f14
	fadd.s f12, f12, f14
	fadd.s f12, f12, f10
	flw f14, 8(a5)
	fmul.s f11, f14, f11
	fadd.s f11, f12, f11
	fsw f11, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f12, 0(t2)
	li t2, -4320
	add t3, t1, t2
	add t3, t3, t4
	flw f14, 0(a5)
	fmul.s f14, f14, f12
	flw f15, 4(a5)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(a5)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f14, 0(t2)
	li t2, -5400
	add t3, t1, t2
	add t3, t3, t4
	flw f13, 0(a5)
	fmul.s f13, f13, f14
	flw f15, 4(a5)
	fmul.s f12, f15, f12
	fadd.s f12, f13, f12
	fadd.s f12, f12, f10
	flw f13, 8(a5)
	fmul.s f11, f13, f11
	fadd.s f11, f12, f11
	fsw f11, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f13, 0(t2)
	li t2, -6480
	add t3, t1, t2
	add t3, t3, t4
	flw f12, 0(a5)
	fmul.s f12, f12, f13
	flw f15, 4(a5)
	fmul.s f14, f15, f14
	fadd.s f12, f12, f14
	fadd.s f12, f12, f11
	flw f14, 8(a5)
	fmul.s f10, f14, f10
	fadd.s f10, f12, f10
	fsw f10, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f12, 0(t2)
	li t2, -7560
	add t3, t1, t2
	add t3, t3, t4
	flw f14, 0(a5)
	fmul.s f14, f14, f12
	flw f15, 4(a5)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a5)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	fsw f11, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f14, 0(t2)
	li t2, -8640
	add t3, t1, t2
	add t3, t3, t4
	flw f13, 0(a5)
	fmul.s f13, f13, f14
	flw f15, 4(a5)
	fmul.s f12, f15, f12
	fadd.s f12, f13, f12
	fadd.s f12, f12, f11
	flw f13, 8(a5)
	fmul.s f10, f13, f10
	fadd.s f12, f12, f10
	fsw f12, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f13, 0(t2)
	li t2, -9720
	add t3, t1, t2
	add t3, t3, t4
	flw f10, 0(a5)
	fmul.s f10, f10, f13
	flw f15, 4(a5)
	fmul.s f14, f15, f14
	fadd.s f10, f10, f14
	fadd.s f10, f10, f12
	flw f14, 8(a5)
	fmul.s f11, f14, f11
	fadd.s f10, f10, f11
	fsw f10, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f14, 0(t2)
	li t2, -10800
	add t3, t1, t2
	add t3, t3, t4
	flw f11, 0(a5)
	fmul.s f11, f11, f14
	flw f15, 4(a5)
	fmul.s f13, f15, f13
	fadd.s f11, f11, f13
	fadd.s f11, f11, f10
	flw f13, 8(a5)
	fmul.s f12, f13, f12
	fadd.s f11, f11, f12
	fsw f11, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f12, 0(t2)
	li t2, -11880
	add t3, t1, t2
	add t3, t3, t4
	flw f13, 0(a5)
	fmul.s f13, f13, f12
	flw f15, 4(a5)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f11
	flw f14, 8(a5)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f13, 0(t2)
	li t2, -12960
	add t3, t1, t2
	add t3, t3, t4
	flw f14, 0(a5)
	fmul.s f14, f14, f13
	flw f15, 4(a5)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a5)
	fmul.s f11, f14, f11
	fadd.s f11, f12, f11
	fsw f11, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f12, 0(t2)
	li t2, -14040
	add t3, t1, t2
	add t3, t3, t4
	flw f14, 0(a5)
	fmul.s f14, f14, f12
	flw f15, 4(a5)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(a5)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f14, 0(t2)
	li t2, -15120
	add t3, t1, t2
	add t3, t3, t4
	flw f13, 0(a5)
	fmul.s f13, f13, f14
	flw f15, 4(a5)
	fmul.s f12, f15, f12
	fadd.s f12, f13, f12
	fadd.s f12, f12, f10
	flw f13, 8(a5)
	fmul.s f11, f13, f11
	fadd.s f13, f12, f11
	fsw f13, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f12, 0(t2)
	li t2, -16200
	add t1, t1, t2
	add t1, t1, t3
	flw f11, 0(a5)
	fmul.s f11, f11, f12
	flw f15, 4(a5)
	fmul.s f14, f15, f14
	fadd.s f11, f11, f14
	fadd.s f11, f11, f13
	flw f14, 8(a5)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, 0(t1)
	add a3, a3, t2
	slli a5, a2, 2
	add a3, a3, a5
	flw f11, 0(a3)
	mv a3, a4
	addiw a4, a4, -16
	blt a4, zero, label100
	j label121
label2546:
	li a2, 1080
	mulw a4, a3, a2
	add a4, a1, a4
	mulw a5, a3, a2
	add a5, a0, a5
	mulw a2, a3, a2
	add t1, s0, a2
	mv a2, zero
	addiw t2, zero, 16
	li t3, 270
	bge t2, t3, label84
label83:
	slli t3, a2, 2
	add t3, t1, t3
	slli t4, a2, 2
	add t4, a5, t4
	flw f10, 0(t4)
	slli a2, a2, 2
	add a2, a4, a2
	flw f11, 0(a2)
	fadd.s f10, f10, f11
	fsw f10, 0(t3)
	flw f10, 4(t4)
	flw f11, 4(a2)
	fadd.s f10, f10, f11
	fsw f10, 4(t3)
	flw f10, 8(t4)
	flw f11, 8(a2)
	fadd.s f10, f10, f11
	fsw f10, 8(t3)
	flw f10, 12(t4)
	flw f11, 12(a2)
	fadd.s f10, f10, f11
	fsw f10, 12(t3)
	flw f10, 16(t4)
	flw f11, 16(a2)
	fadd.s f10, f10, f11
	fsw f10, 16(t3)
	flw f10, 20(t4)
	flw f11, 20(a2)
	fadd.s f10, f10, f11
	fsw f10, 20(t3)
	flw f10, 24(t4)
	flw f11, 24(a2)
	fadd.s f10, f10, f11
	fsw f10, 24(t3)
	flw f10, 28(t4)
	flw f11, 28(a2)
	fadd.s f10, f10, f11
	fsw f10, 28(t3)
	flw f10, 32(t4)
	flw f11, 32(a2)
	fadd.s f10, f10, f11
	fsw f10, 32(t3)
	flw f10, 36(t4)
	flw f11, 36(a2)
	fadd.s f10, f10, f11
	fsw f10, 36(t3)
	flw f10, 40(t4)
	flw f11, 40(a2)
	fadd.s f10, f10, f11
	fsw f10, 40(t3)
	flw f10, 44(t4)
	flw f11, 44(a2)
	fadd.s f10, f10, f11
	fsw f10, 44(t3)
	flw f10, 48(t4)
	flw f11, 48(a2)
	fadd.s f10, f10, f11
	fsw f10, 48(t3)
	flw f10, 52(t4)
	flw f11, 52(a2)
	fadd.s f10, f10, f11
	fsw f10, 52(t3)
	flw f10, 56(t4)
	flw f11, 56(a2)
	fadd.s f10, f10, f11
	fsw f10, 56(t3)
	flw f10, 60(t4)
	flw f11, 60(a2)
	fadd.s f10, f10, f11
	fsw f10, 60(t3)
	mv a2, t2
	addiw t2, t2, 16
	li t3, 270
	bge t2, t3, label84
	j label83
label91:
	addiw a3, a3, 1
	li a2, 512
	bge a3, a2, label93
	j label2546
label84:
	addiw t2, a2, 16
	li t3, 270
	bge t2, t3, label87
label86:
	slli t3, a2, 2
	add t3, t1, t3
	slli t4, a2, 2
	add t4, a5, t4
	flw f10, 0(t4)
	slli a2, a2, 2
	add a2, a4, a2
	flw f11, 0(a2)
	fadd.s f10, f10, f11
	fsw f10, 0(t3)
	flw f10, 4(t4)
	flw f11, 4(a2)
	fadd.s f10, f10, f11
	fsw f10, 4(t3)
	flw f10, 8(t4)
	flw f11, 8(a2)
	fadd.s f10, f10, f11
	fsw f10, 8(t3)
	flw f10, 12(t4)
	flw f11, 12(a2)
	fadd.s f10, f10, f11
	fsw f10, 12(t3)
	flw f10, 16(t4)
	flw f11, 16(a2)
	fadd.s f10, f10, f11
	fsw f10, 16(t3)
	flw f10, 20(t4)
	flw f11, 20(a2)
	fadd.s f10, f10, f11
	fsw f10, 20(t3)
	flw f10, 24(t4)
	flw f11, 24(a2)
	fadd.s f10, f10, f11
	fsw f10, 24(t3)
	flw f10, 28(t4)
	flw f11, 28(a2)
	fadd.s f10, f10, f11
	fsw f10, 28(t3)
	flw f10, 32(t4)
	flw f11, 32(a2)
	fadd.s f10, f10, f11
	fsw f10, 32(t3)
	flw f10, 36(t4)
	flw f11, 36(a2)
	fadd.s f10, f10, f11
	fsw f10, 36(t3)
	flw f10, 40(t4)
	flw f11, 40(a2)
	fadd.s f10, f10, f11
	fsw f10, 40(t3)
	flw f10, 44(t4)
	flw f11, 44(a2)
	fadd.s f10, f10, f11
	fsw f10, 44(t3)
	flw f10, 48(t4)
	flw f11, 48(a2)
	fadd.s f10, f10, f11
	fsw f10, 48(t3)
	flw f10, 52(t4)
	flw f11, 52(a2)
	fadd.s f10, f10, f11
	fsw f10, 52(t3)
	flw f10, 56(t4)
	flw f11, 56(a2)
	fadd.s f10, f10, f11
	fsw f10, 56(t3)
	flw f10, 60(t4)
	flw f11, 60(a2)
	fadd.s f10, f10, f11
	fsw f10, 60(t3)
	mv a2, t2
	addiw t2, t2, 16
	li t3, 270
	bge t2, t3, label87
	j label86
label87:
	addiw t2, a2, 16
	li t3, 270
	bge t2, t3, label89
	j label92
label89:
	slli t2, a2, 2
	add t2, t1, t2
	slli t3, a2, 2
	add t3, a5, t3
	flw f10, 0(t3)
	slli t3, a2, 2
	add t3, a4, t3
	flw f11, 0(t3)
	fadd.s f10, f10, f11
	fsw f10, 0(t2)
	addiw a2, a2, 1
	li t2, 270
	bge a2, t2, label91
	j label89
label48:
	slli t3, a2, 2
	add t3, t1, t3
	slli t4, a2, 2
	add t4, a5, t4
	flw f10, 0(t4)
	slli a2, a2, 2
	add a2, a4, a2
	flw f11, 0(a2)
	fadd.s f10, f10, f11
	fsw f10, 0(t3)
	flw f10, 4(t4)
	flw f11, 4(a2)
	fadd.s f10, f10, f11
	fsw f10, 4(t3)
	flw f10, 8(t4)
	flw f11, 8(a2)
	fadd.s f10, f10, f11
	fsw f10, 8(t3)
	flw f10, 12(t4)
	flw f11, 12(a2)
	fadd.s f10, f10, f11
	fsw f10, 12(t3)
	flw f10, 16(t4)
	flw f11, 16(a2)
	fadd.s f10, f10, f11
	fsw f10, 16(t3)
	flw f10, 20(t4)
	flw f11, 20(a2)
	fadd.s f10, f10, f11
	fsw f10, 20(t3)
	flw f10, 24(t4)
	flw f11, 24(a2)
	fadd.s f10, f10, f11
	fsw f10, 24(t3)
	flw f10, 28(t4)
	flw f11, 28(a2)
	fadd.s f10, f10, f11
	fsw f10, 28(t3)
	flw f10, 32(t4)
	flw f11, 32(a2)
	fadd.s f10, f10, f11
	fsw f10, 32(t3)
	flw f10, 36(t4)
	flw f11, 36(a2)
	fadd.s f10, f10, f11
	fsw f10, 36(t3)
	flw f10, 40(t4)
	flw f11, 40(a2)
	fadd.s f10, f10, f11
	fsw f10, 40(t3)
	flw f10, 44(t4)
	flw f11, 44(a2)
	fadd.s f10, f10, f11
	fsw f10, 44(t3)
	flw f10, 48(t4)
	flw f11, 48(a2)
	fadd.s f10, f10, f11
	fsw f10, 48(t3)
	flw f10, 52(t4)
	flw f11, 52(a2)
	fadd.s f10, f10, f11
	fsw f10, 52(t3)
	flw f10, 56(t4)
	flw f11, 56(a2)
	fadd.s f10, f10, f11
	fsw f10, 56(t3)
	flw f10, 60(t4)
	flw f11, 60(a2)
	fadd.s f10, f10, f11
	fsw f10, 60(t3)
	mv a2, t2
	addiw t2, t2, 16
	li t3, 270
	bge t2, t3, label45
	j label48
label113:
	li t2, 1080
	mulw a5, a3, t2
	add t1, a1, a5
	slli a5, a2, 2
	add t3, t1, a5
pcrel5228:
	auipc a5, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a5, a5, %pcrel_lo(pcrel5228)
	flw f14, 0(a5)
	fmul.s f14, f14, f11
	flw f15, 4(a5)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a5)
	fmul.s f13, f14, f13
	fadd.s f12, f12, f13
	fsw f12, 0(t3)
	mulw a3, a3, t2
	add a3, s0, a3
	slli t2, a2, 2
	add t2, a3, t2
	flw f14, 0(t2)
	addi t2, t1, -1080
	slli t3, a2, 2
	add t2, t2, t3
	flw f13, 0(a5)
	fmul.s f13, f13, f14
	flw f15, 4(a5)
	fmul.s f11, f15, f11
	fadd.s f11, f13, f11
	fadd.s f11, f11, f12
	flw f13, 8(a5)
	fmul.s f10, f13, f10
	fadd.s f11, f11, f10
	fsw f11, 0(t2)
	addi t2, a3, -1080
	add t2, t2, t3
	flw f13, 0(t2)
	li t2, -2160
	add t3, t1, t2
	slli t4, a2, 2
	add t3, t3, t4
	flw f10, 0(a5)
	fmul.s f10, f10, f13
	flw f15, 4(a5)
	fmul.s f14, f15, f14
	fadd.s f10, f10, f14
	fadd.s f10, f10, f11
	flw f14, 8(a5)
	fmul.s f12, f14, f12
	fadd.s f10, f10, f12
	fsw f10, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f12, 0(t2)
	li t2, -3240
	add t3, t1, t2
	add t3, t3, t4
	flw f14, 0(a5)
	fmul.s f14, f14, f12
	flw f15, 4(a5)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a5)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	fsw f11, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f13, 0(t2)
	li t2, -4320
	add t3, t1, t2
	add t3, t3, t4
	flw f14, 0(a5)
	fmul.s f14, f14, f13
	flw f15, 4(a5)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f11
	flw f14, 8(a5)
	fmul.s f10, f14, f10
	fadd.s f10, f12, f10
	fsw f10, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f12, 0(t2)
	li t2, -5400
	add t3, t1, t2
	add t3, t3, t4
	flw f14, 0(a5)
	fmul.s f14, f14, f12
	flw f15, 4(a5)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a5)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	fsw f11, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f13, 0(t2)
	li t2, -6480
	add t3, t1, t2
	add t3, t3, t4
	flw f14, 0(a5)
	fmul.s f14, f14, f13
	flw f15, 4(a5)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f11
	flw f14, 8(a5)
	fmul.s f10, f14, f10
	fadd.s f10, f12, f10
	fsw f10, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f12, 0(t2)
	li t2, -7560
	add t3, t1, t2
	add t3, t3, t4
	flw f14, 0(a5)
	fmul.s f14, f14, f12
	flw f15, 4(a5)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a5)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	fsw f11, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f13, 0(t2)
	li t2, -8640
	add t3, t1, t2
	add t3, t3, t4
	flw f14, 0(a5)
	fmul.s f14, f14, f13
	flw f15, 4(a5)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f11
	flw f14, 8(a5)
	fmul.s f10, f14, f10
	fadd.s f10, f12, f10
	fsw f10, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f14, 0(t2)
	li t2, -9720
	add t3, t1, t2
	add t3, t3, t4
	flw f12, 0(a5)
	fmul.s f12, f12, f14
	flw f15, 4(a5)
	fmul.s f13, f15, f13
	fadd.s f12, f12, f13
	fadd.s f12, f12, f10
	flw f13, 8(a5)
	fmul.s f11, f13, f11
	fadd.s f11, f12, f11
	fsw f11, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f12, 0(t2)
	li t2, -10800
	add t3, t1, t2
	add t3, t3, t4
	flw f13, 0(a5)
	fmul.s f13, f13, f12
	flw f15, 4(a5)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f11
	flw f14, 8(a5)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f13, 0(t2)
	li t2, -11880
	add t3, t1, t2
	add t3, t3, t4
	flw f14, 0(a5)
	fmul.s f14, f14, f13
	flw f15, 4(a5)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a5)
	fmul.s f11, f14, f11
	fadd.s f11, f12, f11
	fsw f11, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f12, 0(t2)
	li t2, -12960
	add t3, t1, t2
	add t3, t3, t4
	flw f14, 0(a5)
	fmul.s f14, f14, f12
	flw f15, 4(a5)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(a5)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f13, 0(t2)
	li t2, -14040
	add t3, t1, t2
	add t3, t3, t4
	flw f14, 0(a5)
	fmul.s f14, f14, f13
	flw f15, 4(a5)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a5)
	fmul.s f11, f14, f11
	fadd.s f11, f12, f11
	fsw f11, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f14, 0(t2)
	li t2, -15120
	add t3, t1, t2
	add t3, t3, t4
	flw f12, 0(a5)
	fmul.s f12, f12, f14
	flw f15, 4(a5)
	fmul.s f13, f15, f13
	fadd.s f12, f12, f13
	fadd.s f12, f12, f11
	flw f13, 8(a5)
	fmul.s f10, f13, f10
	fadd.s f13, f12, f10
	fsw f13, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f12, 0(t2)
	li t2, -16200
	add t1, t1, t2
	add t1, t1, t3
	flw f10, 0(a5)
	fmul.s f10, f10, f12
	flw f15, 4(a5)
	fmul.s f14, f15, f14
	fadd.s f10, f10, f14
	fadd.s f10, f10, f13
	flw f14, 8(a5)
	fmul.s f11, f14, f11
	fadd.s f10, f10, f11
	fsw f10, 0(t1)
	add a3, a3, t2
	slli a5, a2, 2
	add a3, a3, a5
	flw f11, 0(a3)
	mv a3, a4
	addiw a4, a4, -16
	blt a4, zero, label114
	j label113
label92:
	slli t3, a2, 2
	add t3, t1, t3
	slli t4, a2, 2
	add t4, a5, t4
	flw f10, 0(t4)
	slli a2, a2, 2
	add a2, a4, a2
	flw f11, 0(a2)
	fadd.s f10, f10, f11
	fsw f10, 0(t3)
	flw f10, 4(t4)
	flw f11, 4(a2)
	fadd.s f10, f10, f11
	fsw f10, 4(t3)
	flw f10, 8(t4)
	flw f11, 8(a2)
	fadd.s f10, f10, f11
	fsw f10, 8(t3)
	flw f10, 12(t4)
	flw f11, 12(a2)
	fadd.s f10, f10, f11
	fsw f10, 12(t3)
	flw f10, 16(t4)
	flw f11, 16(a2)
	fadd.s f10, f10, f11
	fsw f10, 16(t3)
	flw f10, 20(t4)
	flw f11, 20(a2)
	fadd.s f10, f10, f11
	fsw f10, 20(t3)
	flw f10, 24(t4)
	flw f11, 24(a2)
	fadd.s f10, f10, f11
	fsw f10, 24(t3)
	flw f10, 28(t4)
	flw f11, 28(a2)
	fadd.s f10, f10, f11
	fsw f10, 28(t3)
	flw f10, 32(t4)
	flw f11, 32(a2)
	fadd.s f10, f10, f11
	fsw f10, 32(t3)
	flw f10, 36(t4)
	flw f11, 36(a2)
	fadd.s f10, f10, f11
	fsw f10, 36(t3)
	flw f10, 40(t4)
	flw f11, 40(a2)
	fadd.s f10, f10, f11
	fsw f10, 40(t3)
	flw f10, 44(t4)
	flw f11, 44(a2)
	fadd.s f10, f10, f11
	fsw f10, 44(t3)
	flw f10, 48(t4)
	flw f11, 48(a2)
	fadd.s f10, f10, f11
	fsw f10, 48(t3)
	flw f10, 52(t4)
	flw f11, 52(a2)
	fadd.s f10, f10, f11
	fsw f10, 52(t3)
	flw f10, 56(t4)
	flw f11, 56(a2)
	fadd.s f10, f10, f11
	fsw f10, 56(t3)
	flw f10, 60(t4)
	flw f11, 60(a2)
	fadd.s f10, f10, f11
	fsw f10, 60(t3)
	mv a2, t2
	addiw t2, t2, 16
	li t3, 270
	bge t2, t3, label89
	j label92
label106:
	li t2, 1080
	mulw a5, a3, t2
	add t1, a1, a5
	slli a5, a2, 2
	add t3, t1, a5
pcrel5229:
	auipc a5, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a5, a5, %pcrel_lo(pcrel5229)
	flw f14, 0(a5)
	fmul.s f14, f14, f11
	flw f15, 4(a5)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a5)
	fmul.s f13, f14, f13
	fadd.s f12, f12, f13
	fsw f12, 0(t3)
	mulw a3, a3, t2
	add a3, s0, a3
	slli t2, a2, 2
	add t2, a3, t2
	flw f14, 0(t2)
	addi t2, t1, -1080
	slli t3, a2, 2
	add t2, t2, t3
	flw f13, 0(a5)
	fmul.s f13, f13, f14
	flw f15, 4(a5)
	fmul.s f11, f15, f11
	fadd.s f11, f13, f11
	fadd.s f11, f11, f12
	flw f13, 8(a5)
	fmul.s f10, f13, f10
	fadd.s f11, f11, f10
	fsw f11, 0(t2)
	addi t2, a3, -1080
	add t2, t2, t3
	flw f13, 0(t2)
	li t2, -2160
	add t3, t1, t2
	slli t4, a2, 2
	add t3, t3, t4
	flw f10, 0(a5)
	fmul.s f10, f10, f13
	flw f15, 4(a5)
	fmul.s f14, f15, f14
	fadd.s f10, f10, f14
	fadd.s f10, f10, f11
	flw f14, 8(a5)
	fmul.s f12, f14, f12
	fadd.s f10, f10, f12
	fsw f10, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f12, 0(t2)
	li t2, -3240
	add t3, t1, t2
	add t3, t3, t4
	flw f14, 0(a5)
	fmul.s f14, f14, f12
	flw f15, 4(a5)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a5)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	fsw f11, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f13, 0(t2)
	li t2, -4320
	add t3, t1, t2
	add t3, t3, t4
	flw f14, 0(a5)
	fmul.s f14, f14, f13
	flw f15, 4(a5)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f11
	flw f14, 8(a5)
	fmul.s f10, f14, f10
	fadd.s f10, f12, f10
	fsw f10, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f12, 0(t2)
	li t2, -5400
	add t3, t1, t2
	add t3, t3, t4
	flw f14, 0(a5)
	fmul.s f14, f14, f12
	flw f15, 4(a5)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a5)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	fsw f11, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f13, 0(t2)
	li t2, -6480
	add t3, t1, t2
	add t3, t3, t4
	flw f14, 0(a5)
	fmul.s f14, f14, f13
	flw f15, 4(a5)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f11
	flw f14, 8(a5)
	fmul.s f10, f14, f10
	fadd.s f10, f12, f10
	fsw f10, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f12, 0(t2)
	li t2, -7560
	add t3, t1, t2
	add t3, t3, t4
	flw f14, 0(a5)
	fmul.s f14, f14, f12
	flw f15, 4(a5)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a5)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	fsw f11, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f13, 0(t2)
	li t2, -8640
	add t3, t1, t2
	add t3, t3, t4
	flw f14, 0(a5)
	fmul.s f14, f14, f13
	flw f15, 4(a5)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f11
	flw f14, 8(a5)
	fmul.s f10, f14, f10
	fadd.s f10, f12, f10
	fsw f10, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f12, 0(t2)
	li t2, -9720
	add t3, t1, t2
	add t3, t3, t4
	flw f14, 0(a5)
	fmul.s f14, f14, f12
	flw f15, 4(a5)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a5)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	fsw f11, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f13, 0(t2)
	li t2, -10800
	add t3, t1, t2
	add t3, t3, t4
	flw f14, 0(a5)
	fmul.s f14, f14, f13
	flw f15, 4(a5)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f11
	flw f14, 8(a5)
	fmul.s f10, f14, f10
	fadd.s f12, f12, f10
	fsw f12, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f14, 0(t2)
	li t2, -11880
	add t3, t1, t2
	add t3, t3, t4
	flw f10, 0(a5)
	fmul.s f10, f10, f14
	flw f15, 4(a5)
	fmul.s f13, f15, f13
	fadd.s f10, f10, f13
	fadd.s f10, f10, f12
	flw f13, 8(a5)
	fmul.s f11, f13, f11
	fadd.s f10, f10, f11
	fsw f10, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f13, 0(t2)
	li t2, -12960
	add t3, t1, t2
	add t3, t3, t4
	flw f11, 0(a5)
	fmul.s f11, f11, f13
	flw f15, 4(a5)
	fmul.s f14, f15, f14
	fadd.s f11, f11, f14
	fadd.s f11, f11, f10
	flw f14, 8(a5)
	fmul.s f12, f14, f12
	fadd.s f11, f11, f12
	fsw f11, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f12, 0(t2)
	li t2, -14040
	add t3, t1, t2
	add t3, t3, t4
	flw f14, 0(a5)
	fmul.s f14, f14, f12
	flw f15, 4(a5)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(a5)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f14, 0(t2)
	li t2, -15120
	add t3, t1, t2
	add t3, t3, t4
	flw f13, 0(a5)
	fmul.s f13, f13, f14
	flw f15, 4(a5)
	fmul.s f12, f15, f12
	fadd.s f12, f13, f12
	fadd.s f12, f12, f10
	flw f13, 8(a5)
	fmul.s f11, f13, f11
	fadd.s f13, f12, f11
	fsw f13, 0(t3)
	add t2, a3, t2
	slli t3, a2, 2
	add t2, t2, t3
	flw f12, 0(t2)
	li t2, -16200
	add t1, t1, t2
	add t1, t1, t3
	flw f11, 0(a5)
	fmul.s f11, f11, f12
	flw f15, 4(a5)
	fmul.s f14, f15, f14
	fadd.s f11, f11, f14
	fadd.s f11, f11, f13
	flw f14, 8(a5)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, 0(t1)
	add a3, a3, t2
	slli a5, a2, 2
	add a3, a3, a5
	flw f11, 0(a3)
	mv a3, a4
	addiw a4, a4, -16
	blt a4, zero, label107
	j label106
label49:
	slli t3, a2, 2
	add t3, t1, t3
	slli t4, a2, 2
	add t4, a5, t4
	flw f10, 0(t4)
	slli a2, a2, 2
	add a2, a4, a2
	flw f11, 0(a2)
	fadd.s f10, f10, f11
	fsw f10, 0(t3)
	flw f10, 4(t4)
	flw f11, 4(a2)
	fadd.s f10, f10, f11
	fsw f10, 4(t3)
	flw f10, 8(t4)
	flw f11, 8(a2)
	fadd.s f10, f10, f11
	fsw f10, 8(t3)
	flw f10, 12(t4)
	flw f11, 12(a2)
	fadd.s f10, f10, f11
	fsw f10, 12(t3)
	flw f10, 16(t4)
	flw f11, 16(a2)
	fadd.s f10, f10, f11
	fsw f10, 16(t3)
	flw f10, 20(t4)
	flw f11, 20(a2)
	fadd.s f10, f10, f11
	fsw f10, 20(t3)
	flw f10, 24(t4)
	flw f11, 24(a2)
	fadd.s f10, f10, f11
	fsw f10, 24(t3)
	flw f10, 28(t4)
	flw f11, 28(a2)
	fadd.s f10, f10, f11
	fsw f10, 28(t3)
	flw f10, 32(t4)
	flw f11, 32(a2)
	fadd.s f10, f10, f11
	fsw f10, 32(t3)
	flw f10, 36(t4)
	flw f11, 36(a2)
	fadd.s f10, f10, f11
	fsw f10, 36(t3)
	flw f10, 40(t4)
	flw f11, 40(a2)
	fadd.s f10, f10, f11
	fsw f10, 40(t3)
	flw f10, 44(t4)
	flw f11, 44(a2)
	fadd.s f10, f10, f11
	fsw f10, 44(t3)
	flw f10, 48(t4)
	flw f11, 48(a2)
	fadd.s f10, f10, f11
	fsw f10, 48(t3)
	flw f10, 52(t4)
	flw f11, 52(a2)
	fadd.s f10, f10, f11
	fsw f10, 52(t3)
	flw f10, 56(t4)
	flw f11, 56(a2)
	fadd.s f10, f10, f11
	fsw f10, 56(t3)
	flw f10, 60(t4)
	flw f11, 60(a2)
	fadd.s f10, f10, f11
	fsw f10, 60(t3)
	mv a2, t2
	addiw t2, t2, 16
	li t3, 270
	bge t2, t3, label43
	j label49
label6:
	li a3, 1080
	mulw a4, a2, a3
	add a4, s1, a4
	mulw a3, a2, a3
	add a5, a1, a3
	fmv.w.x f10, zero
	fmv.w.x f11, zero
	fmv.w.x f13, zero
	fmv.w.x f12, zero
	li a3, 269
	addiw t1, a3, -16
	blt t1, zero, label14
label13:
	slli t2, a3, 2
	add t2, a5, t2
pcrel5230:
	auipc t3, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t3, t3, %pcrel_lo(pcrel5230)
	flw f14, 0(t3)
	fmul.s f14, f14, f11
	flw f15, 4(t3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(t3)
	fmul.s f13, f14, f13
	fadd.s f12, f12, f13
	fsw f12, 0(t2)
	slli a3, a3, 2
	add a3, a4, a3
	flw f13, 0(a3)
	flw f14, 0(t3)
	fmul.s f14, f14, f13
	flw f15, 4(t3)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t3)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -4(t2)
	flw f11, -4(a3)
	flw f14, 0(t3)
	fmul.s f14, f14, f11
	flw f15, 4(t3)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t3)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	fsw f12, -8(t2)
	flw f13, -8(a3)
	flw f14, 0(t3)
	fmul.s f14, f14, f13
	flw f15, 4(t3)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t3)
	fmul.s f10, f14, f10
	fadd.s f11, f11, f10
	fsw f11, -12(t2)
	flw f14, -12(a3)
	flw f10, 0(t3)
	fmul.s f10, f10, f14
	flw f15, 4(t3)
	fmul.s f13, f15, f13
	fadd.s f10, f10, f13
	fadd.s f10, f10, f11
	flw f13, 8(t3)
	fmul.s f12, f13, f12
	fadd.s f10, f10, f12
	fsw f10, -16(t2)
	flw f12, -16(a3)
	flw f13, 0(t3)
	fmul.s f13, f13, f12
	flw f15, 4(t3)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f10
	flw f14, 8(t3)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	fsw f11, -20(t2)
	flw f13, -20(a3)
	flw f14, 0(t3)
	fmul.s f14, f14, f13
	flw f15, 4(t3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f11
	flw f14, 8(t3)
	fmul.s f10, f14, f10
	fadd.s f10, f12, f10
	fsw f10, -24(t2)
	flw f12, -24(a3)
	flw f14, 0(t3)
	fmul.s f14, f14, f12
	flw f15, 4(t3)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t3)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	fsw f11, -28(t2)
	flw f13, -28(a3)
	flw f14, 0(t3)
	fmul.s f14, f14, f13
	flw f15, 4(t3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f11
	flw f14, 8(t3)
	fmul.s f10, f14, f10
	fadd.s f10, f12, f10
	fsw f10, -32(t2)
	flw f12, -32(a3)
	flw f14, 0(t3)
	fmul.s f14, f14, f12
	flw f15, 4(t3)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t3)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	fsw f11, -36(t2)
	flw f13, -36(a3)
	flw f14, 0(t3)
	fmul.s f14, f14, f13
	flw f15, 4(t3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f11
	flw f14, 8(t3)
	fmul.s f10, f14, f10
	fadd.s f10, f12, f10
	fsw f10, -40(t2)
	flw f12, -40(a3)
	flw f14, 0(t3)
	fmul.s f14, f14, f12
	flw f15, 4(t3)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t3)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	fsw f11, -44(t2)
	flw f13, -44(a3)
	flw f14, 0(t3)
	fmul.s f14, f14, f13
	flw f15, 4(t3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f11
	flw f14, 8(t3)
	fmul.s f10, f14, f10
	fadd.s f12, f12, f10
	fsw f12, -48(t2)
	flw f14, -48(a3)
	flw f10, 0(t3)
	fmul.s f10, f10, f14
	flw f15, 4(t3)
	fmul.s f13, f15, f13
	fadd.s f10, f10, f13
	fadd.s f10, f10, f12
	flw f13, 8(t3)
	fmul.s f11, f13, f11
	fadd.s f10, f10, f11
	fsw f10, -52(t2)
	flw f11, -52(a3)
	flw f13, 0(t3)
	fmul.s f13, f13, f11
	flw f15, 4(t3)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f10
	flw f14, 8(t3)
	fmul.s f12, f14, f12
	fadd.s f13, f13, f12
	fsw f13, -56(t2)
	flw f12, -56(a3)
	flw f14, 0(t3)
	fmul.s f14, f14, f12
	flw f15, 4(t3)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f13
	flw f14, 8(t3)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -60(t2)
	flw f11, -60(a3)
	mv a3, t1
	addiw t1, t1, -16
	blt t1, zero, label14
	j label13
label14:
	addiw t1, a3, -16
	blt t1, zero, label21
	j label20
label21:
	addiw t1, a3, -16
	blt t1, zero, label28
	j label27
label34:
	addiw a2, a2, 1
	li a3, 512
	bge a2, a3, label162
	j label6
label28:
	slli t1, a3, 2
	add t1, a5, t1
pcrel5231:
	auipc t2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t2, t2, %pcrel_lo(pcrel5231)
	flw f14, 0(t2)
	fmul.s f14, f14, f11
	flw f15, 4(t2)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(t2)
	fmul.s f13, f14, f13
	fadd.s f14, f12, f13
	fsw f14, 0(t1)
	slli t1, a3, 2
	add t1, a4, t1
	flw f15, 0(t1)
	addiw a3, a3, -1
	blt a3, zero, label34
	fmv.s f13, f10
	fmv.s f12, f11
	fmv.s f10, f14
	fmv.s f11, f15
	j label28
label27:
	slli t2, a3, 2
	add t2, a5, t2
pcrel5232:
	auipc t3, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t3, t3, %pcrel_lo(pcrel5232)
	flw f14, 0(t3)
	fmul.s f14, f14, f11
	flw f15, 4(t3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(t3)
	fmul.s f13, f14, f13
	fadd.s f12, f12, f13
	fsw f12, 0(t2)
	slli a3, a3, 2
	add a3, a4, a3
	flw f14, 0(a3)
	flw f13, 0(t3)
	fmul.s f13, f13, f14
	flw f15, 4(t3)
	fmul.s f11, f15, f11
	fadd.s f11, f13, f11
	fadd.s f11, f11, f12
	flw f13, 8(t3)
	fmul.s f10, f13, f10
	fadd.s f10, f11, f10
	fsw f10, -4(t2)
	flw f13, -4(a3)
	flw f11, 0(t3)
	fmul.s f11, f11, f13
	flw f15, 4(t3)
	fmul.s f14, f15, f14
	fadd.s f11, f11, f14
	fadd.s f11, f11, f10
	flw f14, 8(t3)
	fmul.s f12, f14, f12
	fadd.s f11, f11, f12
	fsw f11, -8(t2)
	flw f14, -8(a3)
	flw f12, 0(t3)
	fmul.s f12, f12, f14
	flw f15, 4(t3)
	fmul.s f13, f15, f13
	fadd.s f12, f12, f13
	fadd.s f12, f12, f11
	flw f13, 8(t3)
	fmul.s f10, f13, f10
	fadd.s f10, f12, f10
	fsw f10, -12(t2)
	flw f12, -12(a3)
	flw f13, 0(t3)
	fmul.s f13, f13, f12
	flw f15, 4(t3)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f10
	flw f14, 8(t3)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	fsw f11, -16(t2)
	flw f13, -16(a3)
	flw f14, 0(t3)
	fmul.s f14, f14, f13
	flw f15, 4(t3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f11
	flw f14, 8(t3)
	fmul.s f10, f14, f10
	fadd.s f10, f12, f10
	fsw f10, -20(t2)
	flw f12, -20(a3)
	flw f14, 0(t3)
	fmul.s f14, f14, f12
	flw f15, 4(t3)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t3)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	fsw f11, -24(t2)
	flw f14, -24(a3)
	flw f13, 0(t3)
	fmul.s f13, f13, f14
	flw f15, 4(t3)
	fmul.s f12, f15, f12
	fadd.s f12, f13, f12
	fadd.s f12, f12, f11
	flw f13, 8(t3)
	fmul.s f10, f13, f10
	fadd.s f12, f12, f10
	fsw f12, -28(t2)
	flw f13, -28(a3)
	flw f10, 0(t3)
	fmul.s f10, f10, f13
	flw f15, 4(t3)
	fmul.s f14, f15, f14
	fadd.s f10, f10, f14
	fadd.s f10, f10, f12
	flw f14, 8(t3)
	fmul.s f11, f14, f11
	fadd.s f10, f10, f11
	fsw f10, -32(t2)
	flw f14, -32(a3)
	flw f11, 0(t3)
	fmul.s f11, f11, f14
	flw f15, 4(t3)
	fmul.s f13, f15, f13
	fadd.s f11, f11, f13
	fadd.s f11, f11, f10
	flw f13, 8(t3)
	fmul.s f12, f13, f12
	fadd.s f11, f11, f12
	fsw f11, -36(t2)
	flw f12, -36(a3)
	flw f13, 0(t3)
	fmul.s f13, f13, f12
	flw f15, 4(t3)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f11
	flw f14, 8(t3)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, -40(t2)
	flw f13, -40(a3)
	flw f14, 0(t3)
	fmul.s f14, f14, f13
	flw f15, 4(t3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(t3)
	fmul.s f11, f14, f11
	fadd.s f11, f12, f11
	fsw f11, -44(t2)
	flw f12, -44(a3)
	flw f14, 0(t3)
	fmul.s f14, f14, f12
	flw f15, 4(t3)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(t3)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, -48(t2)
	flw f13, -48(a3)
	flw f14, 0(t3)
	fmul.s f14, f14, f13
	flw f15, 4(t3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(t3)
	fmul.s f11, f14, f11
	fadd.s f11, f12, f11
	fsw f11, -52(t2)
	flw f14, -52(a3)
	flw f12, 0(t3)
	fmul.s f12, f12, f14
	flw f15, 4(t3)
	fmul.s f13, f15, f13
	fadd.s f12, f12, f13
	fadd.s f12, f12, f11
	flw f13, 8(t3)
	fmul.s f10, f13, f10
	fadd.s f13, f12, f10
	fsw f13, -56(t2)
	flw f12, -56(a3)
	flw f10, 0(t3)
	fmul.s f10, f10, f12
	flw f15, 4(t3)
	fmul.s f14, f15, f14
	fadd.s f10, f10, f14
	fadd.s f10, f10, f13
	flw f14, 8(t3)
	fmul.s f11, f14, f11
	fadd.s f10, f10, f11
	fsw f10, -60(t2)
	flw f11, -60(a3)
	mv a3, t1
	addiw t1, t1, -16
	blt t1, zero, label28
	j label27
label20:
	slli t2, a3, 2
	add t2, a5, t2
pcrel5233:
	auipc t3, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t3, t3, %pcrel_lo(pcrel5233)
	flw f14, 0(t3)
	fmul.s f14, f14, f11
	flw f15, 4(t3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(t3)
	fmul.s f13, f14, f13
	fadd.s f12, f12, f13
	fsw f12, 0(t2)
	slli a3, a3, 2
	add a3, a4, a3
	flw f13, 0(a3)
	flw f14, 0(t3)
	fmul.s f14, f14, f13
	flw f15, 4(t3)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t3)
	fmul.s f10, f14, f10
	fadd.s f11, f11, f10
	fsw f11, -4(t2)
	flw f14, -4(a3)
	flw f10, 0(t3)
	fmul.s f10, f10, f14
	flw f15, 4(t3)
	fmul.s f13, f15, f13
	fadd.s f10, f10, f13
	fadd.s f10, f10, f11
	flw f13, 8(t3)
	fmul.s f12, f13, f12
	fadd.s f10, f10, f12
	fsw f10, -8(t2)
	flw f12, -8(a3)
	flw f13, 0(t3)
	fmul.s f13, f13, f12
	flw f15, 4(t3)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f10
	flw f14, 8(t3)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	fsw f11, -12(t2)
	flw f13, -12(a3)
	flw f14, 0(t3)
	fmul.s f14, f14, f13
	flw f15, 4(t3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f11
	flw f14, 8(t3)
	fmul.s f10, f14, f10
	fadd.s f12, f12, f10
	fsw f12, -16(t2)
	flw f14, -16(a3)
	flw f10, 0(t3)
	fmul.s f10, f10, f14
	flw f15, 4(t3)
	fmul.s f13, f15, f13
	fadd.s f10, f10, f13
	fadd.s f10, f10, f12
	flw f13, 8(t3)
	fmul.s f11, f13, f11
	fadd.s f10, f10, f11
	fsw f10, -20(t2)
	flw f13, -20(a3)
	flw f11, 0(t3)
	fmul.s f11, f11, f13
	flw f15, 4(t3)
	fmul.s f14, f15, f14
	fadd.s f11, f11, f14
	fadd.s f11, f11, f10
	flw f14, 8(t3)
	fmul.s f12, f14, f12
	fadd.s f11, f11, f12
	fsw f11, -24(t2)
	flw f15, -24(a3)
	flw f12, 0(t3)
	fmul.s f12, f12, f15
	flw f14, 4(t3)
	fmul.s f13, f14, f13
	fadd.s f12, f12, f13
	fadd.s f12, f12, f11
	flw f13, 8(t3)
	fmul.s f10, f13, f10
	fadd.s f12, f12, f10
	fsw f12, -28(t2)
	flw f14, -28(a3)
	flw f10, 0(t3)
	fmul.s f10, f10, f14
	flw f13, 4(t3)
	fmul.s f13, f13, f15
	fadd.s f10, f10, f13
	fadd.s f10, f10, f12
	flw f13, 8(t3)
	fmul.s f11, f13, f11
	fadd.s f10, f10, f11
	fsw f10, -32(t2)
	flw f13, -32(a3)
	flw f11, 0(t3)
	fmul.s f11, f11, f13
	flw f15, 4(t3)
	fmul.s f14, f15, f14
	fadd.s f11, f11, f14
	fadd.s f11, f11, f10
	flw f14, 8(t3)
	fmul.s f12, f14, f12
	fadd.s f11, f11, f12
	fsw f11, -36(t2)
	flw f12, -36(a3)
	flw f14, 0(t3)
	fmul.s f14, f14, f12
	flw f15, 4(t3)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(t3)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, -40(t2)
	flw f13, -40(a3)
	flw f14, 0(t3)
	fmul.s f14, f14, f13
	flw f15, 4(t3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(t3)
	fmul.s f11, f14, f11
	fadd.s f12, f12, f11
	fsw f12, -44(t2)
	flw f14, -44(a3)
	flw f11, 0(t3)
	fmul.s f11, f11, f14
	flw f15, 4(t3)
	fmul.s f13, f15, f13
	fadd.s f11, f11, f13
	fadd.s f11, f11, f12
	flw f13, 8(t3)
	fmul.s f10, f13, f10
	fadd.s f11, f11, f10
	fsw f11, -48(t2)
	flw f13, -48(a3)
	flw f10, 0(t3)
	fmul.s f10, f10, f13
	flw f15, 4(t3)
	fmul.s f14, f15, f14
	fadd.s f10, f10, f14
	fadd.s f10, f10, f11
	flw f14, 8(t3)
	fmul.s f12, f14, f12
	fadd.s f10, f10, f12
	fsw f10, -52(t2)
	flw f14, -52(a3)
	flw f12, 0(t3)
	fmul.s f12, f12, f14
	flw f15, 4(t3)
	fmul.s f13, f15, f13
	fadd.s f12, f12, f13
	fadd.s f12, f12, f10
	flw f13, 8(t3)
	fmul.s f11, f13, f11
	fadd.s f13, f12, f11
	fsw f13, -56(t2)
	flw f12, -56(a3)
	flw f11, 0(t3)
	fmul.s f11, f11, f12
	flw f15, 4(t3)
	fmul.s f14, f15, f14
	fadd.s f11, f11, f14
	fadd.s f11, f11, f13
	flw f14, 8(t3)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -60(t2)
	flw f11, -60(a3)
	mv a3, t1
	addiw t1, t1, -16
	blt t1, zero, label21
	j label20
label40:
	slli t3, a2, 2
	add t3, t1, t3
	slli t4, a2, 2
	add t4, a5, t4
	flw f10, 0(t4)
	slli a2, a2, 2
	add a2, a4, a2
	flw f11, 0(a2)
	fadd.s f10, f10, f11
	fsw f10, 0(t3)
	flw f10, 4(t4)
	flw f11, 4(a2)
	fadd.s f10, f10, f11
	fsw f10, 4(t3)
	flw f10, 8(t4)
	flw f11, 8(a2)
	fadd.s f10, f10, f11
	fsw f10, 8(t3)
	flw f10, 12(t4)
	flw f11, 12(a2)
	fadd.s f10, f10, f11
	fsw f10, 12(t3)
	flw f10, 16(t4)
	flw f11, 16(a2)
	fadd.s f10, f10, f11
	fsw f10, 16(t3)
	flw f10, 20(t4)
	flw f11, 20(a2)
	fadd.s f10, f10, f11
	fsw f10, 20(t3)
	flw f10, 24(t4)
	flw f11, 24(a2)
	fadd.s f10, f10, f11
	fsw f10, 24(t3)
	flw f10, 28(t4)
	flw f11, 28(a2)
	fadd.s f10, f10, f11
	fsw f10, 28(t3)
	flw f10, 32(t4)
	flw f11, 32(a2)
	fadd.s f10, f10, f11
	fsw f10, 32(t3)
	flw f10, 36(t4)
	flw f11, 36(a2)
	fadd.s f10, f10, f11
	fsw f10, 36(t3)
	flw f10, 40(t4)
	flw f11, 40(a2)
	fadd.s f10, f10, f11
	fsw f10, 40(t3)
	flw f10, 44(t4)
	flw f11, 44(a2)
	fadd.s f10, f10, f11
	fsw f10, 44(t3)
	flw f10, 48(t4)
	flw f11, 48(a2)
	fadd.s f10, f10, f11
	fsw f10, 48(t3)
	flw f10, 52(t4)
	flw f11, 52(a2)
	fadd.s f10, f10, f11
	fsw f10, 52(t3)
	flw f10, 56(t4)
	flw f11, 56(a2)
	fadd.s f10, f10, f11
	fsw f10, 56(t3)
	flw f10, 60(t4)
	flw f11, 60(a2)
	fadd.s f10, f10, f11
	fsw f10, 60(t3)
	mv a2, t2
	addiw t2, t2, 16
	li t3, 270
	bge t2, t3, label41
	j label40
label157:
	li a3, 1080
	mulw a4, a2, a3
	add a4, s1, a4
	mulw a3, a2, a3
	add a5, a0, a3
	fmv.w.x f10, zero
	fmv.w.x f12, zero
	fmv.w.x f11, zero
	mv a3, zero
	addiw t1, zero, 16
	li t2, 270
	bge t1, t2, label128
	j label146
label145:
	addiw a2, a2, 1
	li a3, 512
	bge a2, a3, label158
	j label157
label128:
	addiw t1, a3, 16
	li t2, 270
	bge t1, t2, label134
	j label133
label134:
	addiw t1, a3, 16
	li t2, 270
	bge t1, t2, label140
	j label139
label140:
	slli t1, a3, 2
	add t1, a5, t1
	slli t2, a3, 2
	add t2, a4, t2
	flw f13, 0(t2)
pcrel5234:
	auipc t2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t2, t2, %pcrel_lo(pcrel5234)
	flw f14, 12(t2)
	fmul.s f14, f14, f13
	flw f15, 16(t2)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(t2)
	fmul.s f11, f14, f11
	fadd.s f14, f12, f11
	fsw f14, 0(t1)
	addiw a3, a3, 1
	li t1, 270
	bge a3, t1, label145
	fmv.s f12, f13
	fmv.s f11, f10
	fmv.s f10, f14
	j label140
label146:
	slli t2, a3, 2
	add t2, a5, t2
	slli a3, a3, 2
	add t3, a4, a3
	flw f13, 0(t3)
pcrel5235:
	auipc a3, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a3, a3, %pcrel_lo(pcrel5235)
	flw f14, 12(a3)
	fmul.s f14, f14, f13
	flw f15, 16(a3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a3)
	fmul.s f11, f14, f11
	fadd.s f11, f12, f11
	fsw f11, 0(t2)
	flw f12, 4(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f12
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(a3)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 4(t2)
	flw f14, 8(t3)
	flw f13, 12(a3)
	fmul.s f13, f13, f14
	flw f15, 16(a3)
	fmul.s f12, f15, f12
	fadd.s f12, f13, f12
	fadd.s f12, f12, f10
	flw f13, 8(a3)
	fmul.s f11, f13, f11
	fadd.s f11, f12, f11
	fsw f11, 8(t2)
	flw f13, 12(t3)
	flw f12, 12(a3)
	fmul.s f12, f12, f13
	flw f15, 16(a3)
	fmul.s f14, f15, f14
	fadd.s f12, f12, f14
	fadd.s f12, f12, f11
	flw f14, 8(a3)
	fmul.s f10, f14, f10
	fadd.s f10, f12, f10
	fsw f10, 12(t2)
	flw f12, 16(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f12
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a3)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	fsw f11, 16(t2)
	flw f13, 20(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f13
	flw f15, 16(a3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f11
	flw f14, 8(a3)
	fmul.s f10, f14, f10
	fadd.s f10, f12, f10
	fsw f10, 20(t2)
	flw f12, 24(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f12
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a3)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	fsw f11, 24(t2)
	flw f13, 28(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f13
	flw f15, 16(a3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f11
	flw f14, 8(a3)
	fmul.s f10, f14, f10
	fadd.s f12, f12, f10
	fsw f12, 28(t2)
	flw f14, 32(t3)
	flw f10, 12(a3)
	fmul.s f10, f10, f14
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f10, f10, f13
	fadd.s f10, f10, f12
	flw f13, 8(a3)
	fmul.s f11, f13, f11
	fadd.s f10, f10, f11
	fsw f10, 32(t2)
	flw f13, 36(t3)
	flw f11, 12(a3)
	fmul.s f11, f11, f13
	flw f15, 16(a3)
	fmul.s f14, f15, f14
	fadd.s f11, f11, f14
	fadd.s f11, f11, f10
	flw f14, 8(a3)
	fmul.s f12, f14, f12
	fadd.s f11, f11, f12
	fsw f11, 36(t2)
	flw f12, 40(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f12
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(a3)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 40(t2)
	flw f13, 44(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f13
	flw f15, 16(a3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a3)
	fmul.s f11, f14, f11
	fadd.s f11, f12, f11
	fsw f11, 44(t2)
	flw f12, 48(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f12
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(a3)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 48(t2)
	flw f14, 52(t3)
	flw f13, 12(a3)
	fmul.s f13, f13, f14
	flw f15, 16(a3)
	fmul.s f12, f15, f12
	fadd.s f12, f13, f12
	fadd.s f12, f12, f10
	flw f13, 8(a3)
	fmul.s f11, f13, f11
	fadd.s f13, f12, f11
	fsw f13, 52(t2)
	flw f15, 56(t3)
	flw f11, 12(a3)
	fmul.s f11, f11, f15
	flw f12, 16(a3)
	fmul.s f12, f12, f14
	fadd.s f11, f11, f12
	fadd.s f11, f11, f13
	flw f12, 8(a3)
	fmul.s f10, f12, f10
	fadd.s f11, f11, f10
	fsw f11, 56(t2)
	flw f12, 60(t3)
	flw f10, 12(a3)
	fmul.s f10, f10, f12
	flw f14, 16(a3)
	fmul.s f14, f14, f15
	fadd.s f10, f10, f14
	fadd.s f10, f10, f11
	flw f14, 8(a3)
	fmul.s f13, f14, f13
	fadd.s f10, f10, f13
	fsw f10, 60(t2)
	mv a3, t1
	addiw t1, t1, 16
	li t2, 270
	bge t1, t2, label128
	j label146
label133:
	slli t2, a3, 2
	add t2, a5, t2
	slli a3, a3, 2
	add t3, a4, a3
	flw f13, 0(t3)
pcrel5236:
	auipc a3, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a3, a3, %pcrel_lo(pcrel5236)
	flw f14, 12(a3)
	fmul.s f14, f14, f13
	flw f15, 16(a3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a3)
	fmul.s f11, f14, f11
	fadd.s f11, f12, f11
	fsw f11, 0(t2)
	flw f14, 4(t3)
	flw f12, 12(a3)
	fmul.s f12, f12, f14
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f12, f12, f13
	fadd.s f12, f12, f11
	flw f13, 8(a3)
	fmul.s f10, f13, f10
	fadd.s f10, f12, f10
	fsw f10, 4(t2)
	flw f12, 8(t3)
	flw f13, 12(a3)
	fmul.s f13, f13, f12
	flw f15, 16(a3)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f10
	flw f14, 8(a3)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	fsw f11, 8(t2)
	flw f13, 12(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f13
	flw f15, 16(a3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f11
	flw f14, 8(a3)
	fmul.s f10, f14, f10
	fadd.s f10, f12, f10
	fsw f10, 12(t2)
	flw f12, 16(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f12
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a3)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	fsw f11, 16(t2)
	flw f13, 20(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f13
	flw f15, 16(a3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f11
	flw f14, 8(a3)
	fmul.s f10, f14, f10
	fadd.s f10, f12, f10
	fsw f10, 20(t2)
	flw f14, 24(t3)
	flw f12, 12(a3)
	fmul.s f12, f12, f14
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f12, f12, f13
	fadd.s f12, f12, f10
	flw f13, 8(a3)
	fmul.s f11, f13, f11
	fadd.s f11, f12, f11
	fsw f11, 24(t2)
	flw f12, 28(t3)
	flw f13, 12(a3)
	fmul.s f13, f13, f12
	flw f15, 16(a3)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f11
	flw f14, 8(a3)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 28(t2)
	flw f13, 32(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f13
	flw f15, 16(a3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a3)
	fmul.s f11, f14, f11
	fadd.s f11, f12, f11
	fsw f11, 32(t2)
	flw f12, 36(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f12
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(a3)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 36(t2)
	flw f14, 40(t3)
	flw f13, 12(a3)
	fmul.s f13, f13, f14
	flw f15, 16(a3)
	fmul.s f12, f15, f12
	fadd.s f12, f13, f12
	fadd.s f12, f12, f10
	flw f13, 8(a3)
	fmul.s f11, f13, f11
	fadd.s f11, f12, f11
	fsw f11, 40(t2)
	flw f13, 44(t3)
	flw f12, 12(a3)
	fmul.s f12, f12, f13
	flw f15, 16(a3)
	fmul.s f14, f15, f14
	fadd.s f12, f12, f14
	fadd.s f12, f12, f11
	flw f14, 8(a3)
	fmul.s f10, f14, f10
	fadd.s f10, f12, f10
	fsw f10, 44(t2)
	flw f12, 48(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f12
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a3)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	fsw f11, 48(t2)
	flw f14, 52(t3)
	flw f13, 12(a3)
	fmul.s f13, f13, f14
	flw f15, 16(a3)
	fmul.s f12, f15, f12
	fadd.s f12, f13, f12
	fadd.s f12, f12, f11
	flw f13, 8(a3)
	fmul.s f10, f13, f10
	fadd.s f10, f12, f10
	fsw f10, 52(t2)
	flw f13, 56(t3)
	flw f12, 12(a3)
	fmul.s f12, f12, f13
	flw f15, 16(a3)
	fmul.s f14, f15, f14
	fadd.s f12, f12, f14
	fadd.s f12, f12, f10
	flw f14, 8(a3)
	fmul.s f11, f14, f11
	fadd.s f11, f12, f11
	fsw f11, 56(t2)
	flw f12, 60(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f12
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(a3)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 60(t2)
	mv a3, t1
	addiw t1, t1, 16
	li t2, 270
	bge t1, t2, label134
	j label133
label139:
	slli t2, a3, 2
	add t2, a5, t2
	slli a3, a3, 2
	add t3, a4, a3
	flw f13, 0(t3)
pcrel5237:
	auipc a3, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a3, a3, %pcrel_lo(pcrel5237)
	flw f14, 12(a3)
	fmul.s f14, f14, f13
	flw f15, 16(a3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a3)
	fmul.s f11, f14, f11
	fadd.s f11, f12, f11
	fsw f11, 0(t2)
	flw f14, 4(t3)
	flw f12, 12(a3)
	fmul.s f12, f12, f14
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f12, f12, f13
	fadd.s f12, f12, f11
	flw f13, 8(a3)
	fmul.s f10, f13, f10
	fadd.s f10, f12, f10
	fsw f10, 4(t2)
	flw f12, 8(t3)
	flw f13, 12(a3)
	fmul.s f13, f13, f12
	flw f15, 16(a3)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f10
	flw f14, 8(a3)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	fsw f11, 8(t2)
	flw f13, 12(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f13
	flw f15, 16(a3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f11
	flw f14, 8(a3)
	fmul.s f10, f14, f10
	fadd.s f10, f12, f10
	fsw f10, 12(t2)
	flw f12, 16(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f12
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a3)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	fsw f11, 16(t2)
	flw f13, 20(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f13
	flw f15, 16(a3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f11
	flw f14, 8(a3)
	fmul.s f10, f14, f10
	fadd.s f10, f12, f10
	fsw f10, 20(t2)
	flw f12, 24(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f12
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a3)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	fsw f11, 24(t2)
	flw f13, 28(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f13
	flw f15, 16(a3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f11
	flw f14, 8(a3)
	fmul.s f10, f14, f10
	fadd.s f12, f12, f10
	fsw f12, 28(t2)
	flw f14, 32(t3)
	flw f10, 12(a3)
	fmul.s f10, f10, f14
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f10, f10, f13
	fadd.s f10, f10, f12
	flw f13, 8(a3)
	fmul.s f11, f13, f11
	fadd.s f10, f10, f11
	fsw f10, 32(t2)
	flw f13, 36(t3)
	flw f11, 12(a3)
	fmul.s f11, f11, f13
	flw f15, 16(a3)
	fmul.s f14, f15, f14
	fadd.s f11, f11, f14
	fadd.s f11, f11, f10
	flw f14, 8(a3)
	fmul.s f12, f14, f12
	fadd.s f11, f11, f12
	fsw f11, 36(t2)
	flw f12, 40(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f12
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(a3)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 40(t2)
	flw f13, 44(t3)
	flw f14, 12(a3)
	fmul.s f14, f14, f13
	flw f15, 16(a3)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a3)
	fmul.s f11, f14, f11
	fadd.s f12, f12, f11
	fsw f12, 44(t2)
	flw f14, 48(t3)
	flw f11, 12(a3)
	fmul.s f11, f11, f14
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f11, f11, f13
	fadd.s f11, f11, f12
	flw f13, 8(a3)
	fmul.s f10, f13, f10
	fadd.s f11, f11, f10
	fsw f11, 48(t2)
	flw f13, 52(t3)
	flw f10, 12(a3)
	fmul.s f10, f10, f13
	flw f15, 16(a3)
	fmul.s f14, f15, f14
	fadd.s f10, f10, f14
	fadd.s f10, f10, f11
	flw f14, 8(a3)
	fmul.s f12, f14, f12
	fadd.s f10, f10, f12
	fsw f10, 52(t2)
	flw f14, 56(t3)
	flw f12, 12(a3)
	fmul.s f12, f12, f14
	flw f15, 16(a3)
	fmul.s f13, f15, f13
	fadd.s f12, f12, f13
	fadd.s f12, f12, f10
	flw f13, 8(a3)
	fmul.s f11, f13, f11
	fadd.s f11, f12, f11
	fsw f11, 56(t2)
	flw f12, 60(t3)
	flw f13, 12(a3)
	fmul.s f13, f13, f12
	flw f15, 16(a3)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f11
	flw f14, 8(a3)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 60(t2)
	mv a3, t1
	addiw t1, t1, 16
	li t2, 270
	bge t1, t2, label140
	j label139
label47:
	addiw a3, a3, 1
	li a2, 512
	bge a3, a2, label1087
	li a2, 1080
	mulw a4, a3, a2
	add a4, a1, a4
	mulw a5, a3, a2
	add a5, a0, a5
	mulw a2, a3, a2
	add t1, s0, a2
	mv a2, zero
	addiw t2, zero, 16
	li t3, 270
	bge t2, t3, label41
	j label40
label93:
	li a0, 158
	jal _sysy_stoptime
	li a0, 138240
	mv a1, s0
	jal putfarray
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 24
	ret
