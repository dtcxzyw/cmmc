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
.text
.globl main
main:
	addi sp, sp, -24
pcrel688:
	auipc a0, %pcrel_hi(imgIn)
	sd s1, 16(sp)
	addi a0, a0, %pcrel_lo(pcrel688)
	sd s0, 8(sp)
	mv s1, a0
	sd ra, 0(sp)
	jal getfarray
	li a0, 156
	jal _sysy_starttime
	mv a4, zero
pcrel689:
	auipc a1, %pcrel_hi(my_y2)
pcrel690:
	auipc a0, %pcrel_hi(imgOut)
	addi a1, a1, %pcrel_lo(pcrel689)
	addi s0, a0, %pcrel_lo(pcrel690)
pcrel691:
	auipc a0, %pcrel_hi(my_y1)
	addi a0, a0, %pcrel_lo(pcrel691)
	li a2, 512
	bge zero, a2, label94
	j label93
label94:
	mv a3, zero
	li a2, 512
	bge zero, a2, label182
	j label19
label182:
	mv a3, zero
	li a2, 512
	bge zero, a2, label271
	li a5, 1080
	mv t3, zero
	mulw a4, zero, a5
	mulw a2, zero, a5
	add a4, a0, a4
	mulw a5, zero, a5
	add a2, s0, a2
	add a5, a1, a5
	addiw t0, zero, 4
	li t1, 270
	bge t0, t1, label282
	j label42
label271:
	mv a2, zero
	li a3, 270
	bge zero, a3, label328
	fmv.w.x f14, zero
	mv a5, zero
	fmv.s f10, f14
	fmv.s f13, f14
	addiw a3, zero, 4
	li a4, 512
	bge a3, a4, label334
label56:
	li t0, 1080
	mulw a4, a5, t0
	mulw a5, a5, t0
	add a4, s0, a4
	slli t0, t0, 1
	add a5, a0, a5
	sh2add t1, a2, a4
	flw f15, 0(t1)
pcrel692:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t1, t1, %pcrel_lo(pcrel692)
	flw f11, 0(t1)
	flw f12, 4(t1)
	fmul.s f0, f15, f11
	fmul.s f13, f13, f12
	fmul.s f15, f15, f12
	fadd.s f13, f0, f13
	fadd.s f0, f13, f10
	flw f13, 8(t1)
	sh2add t1, a2, a5
	fmul.s f14, f14, f13
	fmul.s f10, f10, f13
	fadd.s f14, f0, f14
	fsw f14, 0(t1)
	addi t1, a4, 1080
	sh2add t1, a2, t1
	flw f0, 0(t1)
	addi t1, a5, 1080
	fmul.s f1, f0, f11
	sh2add t1, a2, t1
	fmul.s f0, f0, f12
	fadd.s f15, f1, f15
	fadd.s f15, f15, f14
	fmul.s f14, f14, f13
	fadd.s f10, f15, f10
	fsw f10, 0(t1)
	add t1, a4, t0
	sh2add t1, a2, t1
	flw f15, 0(t1)
	add t1, a5, t0
	fmul.s f1, f15, f11
	addi t0, t0, 1080
	sh2add t1, a2, t1
	add a4, a4, t0
	fmul.s f12, f15, f12
	sh2add a4, a2, a4
	fadd.s f0, f1, f0
	fadd.s f0, f0, f10
	fmul.s f10, f10, f13
	fadd.s f14, f0, f14
	fsw f14, 0(t1)
	flw f0, 0(a4)
	fmv.s f13, f0
	add a4, a5, t0
	fmul.s f11, f0, f11
	mv a5, a3
	sh2add a4, a2, a4
	fadd.s f11, f11, f12
	fadd.s f11, f11, f14
	fadd.s f10, f11, f10
	fsw f10, 0(a4)
	addiw a3, a3, 4
	li a4, 512
	bge a3, a4, label334
	j label56
label19:
	li a4, 1080
	fmv.w.x f12, zero
	li t1, 269
	mulw a2, a3, a4
	fmv.s f11, f12
	fmv.s f15, f12
	fmv.s f10, f12
	mulw a4, a3, a4
	add a2, a1, a2
	add a4, s1, a4
	addiw a5, t1, -4
	blt a5, zero, label192
	j label26
label192:
	mv a5, t1
	fmv.s f13, f15
	j label27
label26:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t0, %pcrel_lo(label26)
	flw f13, 12(t0)
	flw f14, 16(t0)
	fmul.s f0, f10, f13
	fmul.s f15, f15, f14
	fmul.s f10, f10, f14
	fadd.s f15, f0, f15
	fadd.s f0, f15, f11
	flw f15, 8(t0)
	sh2add t0, t1, a2
	fmul.s f12, f12, f15
	fmul.s f11, f11, f15
	sh2add t1, t1, a4
	fadd.s f12, f0, f12
	fsw f12, 0(t0)
	flw f0, 0(t1)
	fmul.s f1, f0, f13
	fmul.s f0, f0, f14
	fadd.s f10, f1, f10
	fadd.s f10, f10, f12
	fmul.s f12, f12, f15
	fadd.s f10, f10, f11
	fsw f10, -4(t0)
	flw f1, -4(t1)
	fmul.s f14, f1, f14
	fmul.s f11, f1, f13
	fadd.s f11, f11, f0
	fadd.s f11, f11, f10
	fmul.s f10, f10, f15
	fadd.s f12, f11, f12
	fsw f12, -8(t0)
	flw f11, -8(t1)
	fmv.s f15, f11
	fmul.s f13, f11, f13
	fadd.s f13, f13, f14
	fadd.s f13, f13, f12
	fadd.s f13, f13, f10
	fmv.s f11, f13
	fsw f13, -12(t0)
	flw f10, -12(t1)
	mv t1, a5
	addiw a5, a5, -4
	blt a5, zero, label192
	j label26
label27:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t0, %pcrel_lo(label27)
	flw f14, 12(t0)
	flw f15, 16(t0)
	fmul.s f14, f10, f14
	fmul.s f13, f13, f15
	fadd.s f13, f14, f13
	flw f14, 8(t0)
	sh2add t0, a5, a2
	fmul.s f12, f12, f14
	fadd.s f13, f13, f11
	fadd.s f14, f13, f12
	fsw f14, 0(t0)
	sh2add t0, a5, a4
	addiw a5, a5, -1
	flw f15, 0(t0)
	blt a5, zero, label33
	fmv.s f13, f10
	fmv.s f12, f11
	fmv.s f10, f15
	fmv.s f11, f14
	j label27
label33:
	addiw a3, a3, 1
	li a2, 512
	bge a3, a2, label182
	j label19
label282:
	mv t0, t3
label39:
	sh2add t1, t0, a4
	flw f10, 0(t1)
	sh2add t1, t0, a5
	flw f11, 0(t1)
	sh2add t1, t0, a2
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label41
	j label39
label42:
	sh2add t1, t3, a4
	sh2add t2, t3, a5
	flw f10, 0(t1)
	sh2add t3, t3, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	fsw f10, 0(t3)
	flw f10, 4(t1)
	flw f11, 4(t2)
	fadd.s f10, f10, f11
	fsw f10, 4(t3)
	flw f10, 8(t1)
	flw f11, 8(t2)
	fadd.s f10, f10, f11
	fsw f10, 8(t3)
	flw f10, 12(t1)
	flw f11, 12(t2)
	fadd.s f10, f10, f11
	fsw f10, 12(t3)
	mv t3, t0
	addiw t0, t0, 4
	li t1, 270
	bge t0, t1, label282
	j label42
label328:
	mv a2, zero
	li a3, 270
	bge zero, a3, label432
	fmv.w.x f15, zero
	li a5, 511
	fmv.s f11, f15
	fmv.s f13, f15
	fmv.s f14, f15
	addiw a3, a5, -4
	blt a3, zero, label495
label82:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	li t0, 1080
	addi a4, a4, %pcrel_lo(label82)
	flw f10, 12(a4)
	flw f12, 16(a4)
	fmul.s f0, f14, f10
	fmul.s f13, f13, f12
	fmul.s f14, f14, f12
	fadd.s f13, f0, f13
	fadd.s f0, f13, f11
	flw f13, 8(a4)
	mulw a4, a5, t0
	fmul.s f15, f15, f13
	add a4, a1, a4
	fmul.s f11, f11, f13
	mulw a5, a5, t0
	sh2add t1, a2, a4
	add a5, s0, a5
	sh2add t0, a2, a5
	fadd.s f15, f0, f15
	fsw f15, 0(t1)
	flw f0, 0(t0)
	addi t0, a4, -1080
	fmul.s f1, f0, f10
	sh2add t0, a2, t0
	fmul.s f0, f0, f12
	fadd.s f14, f1, f14
	fadd.s f14, f14, f15
	fmul.s f15, f15, f13
	fadd.s f11, f14, f11
	fsw f11, 0(t0)
	addi t0, a5, -1080
	sh2add t0, a2, t0
	flw f14, 0(t0)
	li t0, -2160
	fmul.s f1, f14, f10
	add t1, a4, t0
	fmul.s f12, f14, f12
	sh2add t1, a2, t1
	fadd.s f0, f1, f0
	fadd.s f0, f0, f11
	fmul.s f11, f11, f13
	fadd.s f15, f0, f15
	fsw f15, 0(t1)
	add t1, a5, t0
	addi t0, t0, -1080
	sh2add t1, a2, t1
	add a4, a4, t0
	flw f0, 0(t1)
	sh2add a4, a2, a4
	fmv.s f13, f0
	fmul.s f10, f0, f10
	fadd.s f10, f10, f12
	fadd.s f10, f10, f15
	fadd.s f11, f10, f11
	fsw f11, 0(a4)
	add a4, a5, t0
	mv a5, a3
	sh2add a4, a2, a4
	flw f14, 0(a4)
	addiw a3, a3, -4
	blt a3, zero, label495
	j label82
label432:
	mv a3, zero
	li a2, 512
	bge zero, a2, label68
label436:
	li a5, 1080
	mv t3, zero
	mulw a4, a3, a5
	mulw a2, a3, a5
	add a4, a0, a4
	mulw a5, a3, a5
	add a2, s0, a2
	add a5, a1, a5
	addiw t0, zero, 4
	li t1, 270
	bge t0, t1, label448
	j label67
label495:
	mv a3, a5
	fmv.s f10, f14
	fmv.s f14, f13
	fmv.s f13, f15
label75:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(label75)
	flw f12, 12(a4)
	flw f15, 16(a4)
	fmul.s f12, f10, f12
	fmul.s f14, f14, f15
	fadd.s f12, f12, f14
	flw f14, 8(a4)
	li a4, 1080
	fmul.s f13, f13, f14
	mulw a5, a3, a4
	fadd.s f12, f12, f11
	add a5, a1, a5
	mulw a4, a3, a4
	sh2add a5, a2, a5
	addiw a3, a3, -1
	add a4, s0, a4
	sh2add a4, a2, a4
	fadd.s f12, f12, f13
	fsw f12, 0(a5)
	flw f15, 0(a4)
	blt a3, zero, label81
	fmv.s f14, f10
	fmv.s f13, f11
	fmv.s f10, f15
	fmv.s f11, f12
	j label75
label448:
	mv t0, t3
label64:
	sh2add t1, t0, a4
	flw f10, 0(t1)
	sh2add t1, t0, a5
	flw f11, 0(t1)
	sh2add t1, t0, a2
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label66
	j label64
label66:
	addiw a3, a3, 1
	li a2, 512
	bge a3, a2, label68
	j label436
label81:
	addiw a2, a2, 1
	li a3, 270
	bge a2, a3, label432
	fmv.w.x f15, zero
	li a5, 511
	fmv.s f11, f15
	fmv.s f13, f15
	fmv.s f14, f15
	addiw a3, a5, -4
	blt a3, zero, label495
	j label82
label67:
	sh2add t1, t3, a4
	sh2add t2, t3, a5
	flw f10, 0(t1)
	sh2add t3, t3, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	fsw f10, 0(t3)
	flw f10, 4(t1)
	flw f11, 4(t2)
	fadd.s f10, f10, f11
	fsw f10, 4(t3)
	flw f10, 8(t1)
	flw f11, 8(t2)
	fadd.s f10, f10, f11
	fsw f10, 8(t3)
	flw f10, 12(t1)
	flw f11, 12(t2)
	fadd.s f10, f10, f11
	fsw f10, 12(t3)
	mv t3, t0
	addiw t0, t0, 4
	li t1, 270
	bge t0, t1, label448
	j label67
label334:
	mv a3, a5
	fmv.s f12, f14
	j label50
label55:
	addiw a2, a2, 1
	li a3, 270
	bge a2, a3, label328
	fmv.w.x f14, zero
	mv a5, zero
	fmv.s f10, f14
	fmv.s f13, f14
	addiw a3, zero, 4
	li a4, 512
	bge a3, a4, label334
	j label56
label50:
	li a4, 1080
	mulw a5, a3, a4
	mulw a4, a3, a4
	add a5, s0, a5
	addiw a3, a3, 1
	add a4, a0, a4
	sh2add a5, a2, a5
	sh2add a4, a2, a4
	flw f11, 0(a5)
pcrel693:
	auipc a5, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a5, a5, %pcrel_lo(pcrel693)
	flw f14, 0(a5)
	flw f15, 4(a5)
	fmul.s f14, f11, f14
	fmul.s f13, f13, f15
	fadd.s f13, f14, f13
	flw f14, 8(a5)
	fmul.s f12, f12, f14
	fadd.s f13, f13, f10
	fadd.s f14, f13, f12
	fsw f14, 0(a4)
	li a4, 512
	bge a3, a4, label55
	fmv.s f13, f11
	fmv.s f12, f10
	fmv.s f10, f14
	j label50
label93:
	li a3, 1080
	fmv.w.x f12, zero
	mv t1, zero
	mulw a2, a4, a3
	fmv.s f10, f12
	fmv.s f14, f12
	mulw a3, a4, a3
	add a2, a0, a2
	add a3, s1, a3
	addiw a5, zero, 4
	li t0, 270
	bge a5, t0, label104
	j label10
label16:
	addiw a4, a4, 1
	li a2, 512
	bge a4, a2, label94
	j label93
label10:
	sh2add t0, t1, a3
pcrel694:
	auipc t2, %pcrel_hi(__cmmc_fp_constant_pool)
	sh2add t1, t1, a2
	flw f15, 0(t0)
	addi t2, t2, %pcrel_lo(pcrel694)
	flw f11, 0(t2)
	flw f13, 4(t2)
	fmul.s f0, f15, f11
	fmul.s f14, f14, f13
	fmul.s f15, f15, f13
	fadd.s f14, f0, f14
	fadd.s f0, f14, f10
	flw f14, 8(t2)
	fmul.s f10, f10, f14
	fmul.s f12, f12, f14
	fadd.s f12, f0, f12
	fsw f12, 0(t1)
	flw f0, 4(t0)
	fmul.s f1, f0, f11
	fmul.s f0, f0, f13
	fadd.s f15, f1, f15
	fadd.s f15, f15, f12
	fmul.s f12, f12, f14
	fadd.s f10, f15, f10
	fsw f10, 4(t1)
	flw f15, 8(t0)
	fmul.s f13, f15, f13
	fmul.s f1, f15, f11
	fadd.s f0, f1, f0
	fadd.s f0, f0, f10
	fmul.s f10, f10, f14
	fadd.s f12, f0, f12
	fsw f12, 8(t1)
	flw f0, 12(t0)
	fmv.s f14, f0
	fmul.s f11, f0, f11
	fadd.s f11, f11, f13
	fadd.s f11, f11, f12
	fadd.s f10, f11, f10
	fsw f10, 12(t1)
	mv t1, a5
	addiw a5, a5, 4
	li t0, 270
	bge a5, t0, label104
	j label10
label104:
	mv a5, t1
	fmv.s f13, f14
label11:
	sh2add t0, a5, a3
	flw f11, 0(t0)
pcrel695:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t0, %pcrel_lo(pcrel695)
	flw f14, 0(t0)
	flw f15, 4(t0)
	fmul.s f14, f11, f14
	fmul.s f13, f13, f15
	fadd.s f13, f14, f13
	flw f14, 8(t0)
	sh2add t0, a5, a2
	fmul.s f12, f12, f14
	addiw a5, a5, 1
	fadd.s f13, f13, f10
	fadd.s f14, f13, f12
	fsw f14, 0(t0)
	li t0, 270
	bge a5, t0, label16
	fmv.s f13, f11
	fmv.s f12, f10
	fmv.s f10, f14
	j label11
label270:
	li a5, 1080
	mv t3, zero
	mulw a4, a3, a5
	mulw a2, a3, a5
	add a4, a0, a4
	mulw a5, a3, a5
	add a2, s0, a2
	add a5, a1, a5
	addiw t0, zero, 4
	li t1, 270
	bge t0, t1, label282
	j label42
label41:
	addiw a3, a3, 1
	li a2, 512
	bge a3, a2, label271
	j label270
label68:
	li a0, 158
	jal _sysy_stoptime
	mv a1, s0
	li a0, 138240
	jal putfarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 24
	ret
