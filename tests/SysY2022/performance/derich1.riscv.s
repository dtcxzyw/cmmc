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
pcrel696:
	auipc a1, %pcrel_hi(imgIn)
	sd s1, 16(sp)
	addi a0, a1, %pcrel_lo(pcrel696)
	sd s0, 8(sp)
	mv s1, a0
	sd ra, 0(sp)
	jal getfarray
	li a0, 156
	jal _sysy_starttime
pcrel697:
	auipc a2, %pcrel_hi(my_y2)
pcrel698:
	auipc a1, %pcrel_hi(imgOut)
	addi s0, a1, %pcrel_lo(pcrel698)
pcrel699:
	auipc a1, %pcrel_hi(my_y1)
	addi a0, a1, %pcrel_lo(pcrel699)
	addi a1, a2, %pcrel_lo(pcrel697)
	mv a2, zero
	li a3, 512
	bge zero, a3, label94
label93:
	li a4, 1080
	fmv.w.x f14, zero
	mv t1, zero
	mulw t0, a2, a4
	mulw a5, a2, a4
	fmv.s f11, f14
	fmv.s f13, f14
	add a4, s1, t0
	add a3, a0, a5
	li a5, 4
	li t0, 270
	bge a5, t0, label11
	j label10
label94:
	mv a2, zero
	li a3, 512
	bge zero, a3, label182
	j label68
label10:
	sh2add t0, t1, a4
pcrel700:
	auipc t3, %pcrel_hi(__cmmc_fp_constant_pool)
	sh2add t1, t1, a3
	flw f15, 0(t0)
	addi t2, t3, %pcrel_lo(pcrel700)
	flw f10, 0(t2)
	flw f12, 4(t2)
	fmul.s f0, f15, f10
	fmul.s f2, f15, f12
	fmul.s f13, f13, f12
	fadd.s f1, f0, f13
	flw f13, 8(t2)
	fadd.s f0, f1, f11
	fmul.s f1, f14, f13
	fadd.s f14, f0, f1
	fsw f14, 0(t1)
	flw f0, 4(t0)
	fmul.s f1, f0, f10
	fadd.s f3, f1, f2
	fmul.s f1, f11, f13
	fadd.s f15, f3, f14
	fmul.s f3, f0, f12
	fadd.s f11, f15, f1
	fsw f11, 4(t1)
	flw f15, 8(t0)
	fmul.s f12, f15, f12
	fmul.s f1, f15, f10
	fadd.s f2, f1, f3
	fmul.s f1, f14, f13
	fadd.s f0, f2, f11
	fadd.s f14, f0, f1
	fsw f14, 8(t1)
	flw f0, 12(t0)
	fmul.s f10, f0, f10
	fadd.s f15, f10, f12
	fmul.s f12, f11, f13
	fmv.s f13, f0
	fadd.s f10, f15, f14
	fadd.s f11, f10, f12
	fsw f11, 12(t1)
	mv t1, a5
	addiw a5, a5, 4
	li t0, 270
	bge a5, t0, label11
	j label10
label182:
	mv a2, zero
	li a3, 512
	bge zero, a3, label186
	j label185
label186:
	mv a2, zero
	li a3, 270
	bge zero, a3, label190
	fmv.w.x f14, zero
	mv a5, zero
	fmv.s f13, f14
	fmv.s f12, f14
	li a3, 4
	li a4, 512
	bge a3, a4, label28
	j label34
label190:
	mv a2, zero
	li a3, 270
	bge zero, a3, label294
	fmv.w.x f15, zero
	li a5, 511
	fmv.s f14, f15
	fmv.s f12, f15
	fmv.s f13, f15
	addiw a3, a5, -4
	blt a3, zero, label43
	j label50
label34:
	li t0, 1080
pcrel701:
	auipc t2, %pcrel_hi(__cmmc_fp_constant_pool)
	mulw t1, a5, t0
	add a4, s0, t1
	addi t1, t2, %pcrel_lo(pcrel701)
	sh2add t3, a2, a4
	mulw t2, a5, t0
	slli t0, t0, 1
	add a5, a0, t2
	flw f15, 0(t3)
	addi t2, a4, 1080
	flw f10, 0(t1)
	flw f11, 4(t1)
	fmul.s f0, f15, f10
	fmul.s f3, f15, f11
	fmul.s f12, f12, f11
	fadd.s f1, f0, f12
	flw f12, 8(t1)
	sh2add t1, a2, a5
	fadd.s f0, f1, f13
	fmul.s f1, f14, f12
	fadd.s f14, f0, f1
	fsw f14, 0(t1)
	sh2add t1, a2, t2
	flw f0, 0(t1)
	addi t1, a5, 1080
	fmul.s f1, f0, f10
	sh2add t2, a2, t1
	fadd.s f2, f1, f3
	fmul.s f1, f13, f12
	fadd.s f15, f2, f14
	fmul.s f2, f0, f11
	fadd.s f13, f15, f1
	fsw f13, 0(t2)
	add t2, a4, t0
	sh2add t1, a2, t2
	add t2, a5, t0
	flw f15, 0(t1)
	addi t0, t0, 1080
	sh2add t1, a2, t2
	add a5, a5, t0
	add a4, a4, t0
	fmul.s f1, f15, f10
	fmul.s f15, f15, f11
	fadd.s f3, f1, f2
	fmul.s f1, f14, f12
	fmul.s f12, f13, f12
	fadd.s f0, f3, f13
	fadd.s f14, f0, f1
	fsw f14, 0(t1)
	sh2add t1, a2, a4
	sh2add a4, a2, a5
	flw f0, 0(t1)
	mv a5, a3
	fmul.s f10, f0, f10
	fadd.s f11, f10, f15
	fadd.s f10, f11, f14
	fadd.s f13, f10, f12
	fmv.s f12, f0
	fsw f13, 0(a4)
	addiw a3, a3, 4
	li a4, 512
	bge a3, a4, label28
	j label34
label50:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, t0, %pcrel_lo(label50)
	li t0, 1080
	flw f10, 12(a4)
	mulw t1, a5, t0
	flw f11, 16(a4)
	add a5, s0, t1
	fmul.s f0, f13, f10
	fmul.s f12, f12, f11
	sh2add t0, a2, a5
	fmul.s f13, f13, f11
	fadd.s f1, f0, f12
	flw f12, 8(a4)
	add a4, a1, t1
	addi t1, a4, -1080
	sh2add t2, a2, a4
	fadd.s f0, f1, f14
	fmul.s f14, f14, f12
	fmul.s f1, f15, f12
	fadd.s f15, f0, f1
	fsw f15, 0(t2)
	flw f1, 0(t0)
	sh2add t0, a2, t1
	fmul.s f0, f1, f10
	addi t1, a5, -1080
	fmul.s f1, f1, f11
	fadd.s f2, f0, f13
	fadd.s f0, f2, f15
	fadd.s f13, f0, f14
	fsw f13, 0(t0)
	sh2add t0, a2, t1
	flw f0, 0(t0)
	li t0, -2160
	fmul.s f14, f0, f10
	add t2, a5, t0
	add t1, a4, t0
	addi t0, t0, -1080
	sh2add t3, a2, t1
	add a5, a5, t0
	sh2add t1, a2, t2
	fadd.s f2, f14, f1
	fmul.s f1, f15, f12
	fmul.s f12, f13, f12
	fadd.s f14, f2, f13
	fadd.s f15, f14, f1
	fmul.s f1, f0, f11
	fsw f15, 0(t3)
	flw f14, 0(t1)
	add t1, a4, t0
	fmul.s f10, f14, f10
	sh2add a4, a2, t1
	fadd.s f0, f10, f1
	fadd.s f11, f0, f15
	fadd.s f10, f11, f12
	fmv.s f12, f14
	fmv.s f14, f10
	fsw f10, 0(a4)
	sh2add a4, a2, a5
	mv a5, a3
	flw f13, 0(a4)
	addiw a3, a3, -4
	blt a3, zero, label43
	j label50
label68:
	li a4, 1080
	fmv.w.x f15, zero
	li t1, 269
	mulw a5, a2, a4
	mulw t0, a2, a4
	fmv.s f13, f15
	fmv.s f12, f15
	fmv.s f14, f15
	add a4, s1, a5
	add a3, a1, t0
	addiw a5, t1, -4
	blt a5, zero, label75
label82:
	auipc t2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t2, %pcrel_lo(label82)
	flw f10, 12(t0)
	flw f11, 16(t0)
	fmul.s f0, f14, f10
	fmul.s f2, f14, f11
	fmul.s f12, f12, f11
	fadd.s f1, f0, f12
	flw f12, 8(t0)
	sh2add t0, t1, a3
	sh2add t1, t1, a4
	fadd.s f0, f1, f13
	fmul.s f1, f15, f12
	fadd.s f15, f0, f1
	fsw f15, 0(t0)
	flw f0, 0(t1)
	fmul.s f1, f0, f10
	fadd.s f3, f1, f2
	fmul.s f2, f0, f11
	fmul.s f1, f13, f12
	fadd.s f14, f3, f15
	fadd.s f13, f14, f1
	fsw f13, -4(t0)
	flw f14, -4(t1)
	fmul.s f11, f14, f11
	fmul.s f1, f14, f10
	fadd.s f3, f1, f2
	fmul.s f1, f15, f12
	fadd.s f0, f3, f13
	fadd.s f15, f0, f1
	fsw f15, -8(t0)
	flw f0, -8(t1)
	fmul.s f10, f0, f10
	fadd.s f14, f10, f11
	fmul.s f11, f13, f12
	fmv.s f12, f0
	fadd.s f10, f14, f15
	fadd.s f13, f10, f11
	fsw f13, -12(t0)
	flw f14, -12(t1)
	mv t1, a5
	addiw a5, a5, -4
	blt a5, zero, label75
	j label82
label294:
	mv a2, zero
	li a3, 512
	bge zero, a3, label60
	li a5, 1080
	mv t3, zero
	mv t0, zero
	mv t1, zero
	mv a4, zero
	mv a5, a1
	mv a3, s0
	mv a4, a0
	li t0, 4
	li t1, 270
	bge t0, t1, label56
	j label59
label185:
	li a5, 1080
	mv t3, zero
	mulw t1, a2, a5
	mulw t0, a2, a5
	mulw a4, a2, a5
	add a5, a1, t1
	add a3, s0, a4
	add a4, a0, t0
	li t0, 4
	li t1, 270
	bge t0, t1, label65
label64:
	sh2add t1, t3, a4
	sh2add t2, t3, a5
	flw f10, 0(t1)
	sh2add t3, t3, a3
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	fsw f10, 0(t3)
	flw f10, 4(t1)
	flw f12, 4(t2)
	fadd.s f11, f10, f12
	fsw f11, 4(t3)
	flw f10, 8(t1)
	flw f11, 8(t2)
	fadd.s f12, f10, f11
	fsw f12, 8(t3)
	flw f10, 12(t1)
	flw f11, 12(t2)
	fadd.s f12, f10, f11
	fsw f12, 12(t3)
	mv t3, t0
	addiw t0, t0, 4
	li t1, 270
	bge t0, t1, label65
	j label64
label65:
	sh2add t1, t3, a4
	sh2add t0, t3, a5
	flw f10, 0(t1)
	flw f11, 0(t0)
	sh2add t0, t3, a3
	fadd.s f10, f10, f11
	addiw t3, t3, 1
	fsw f10, 0(t0)
	li t0, 270
	bge t3, t0, label67
	j label65
label67:
	addiw a2, a2, 1
	li a3, 512
	bge a2, a3, label186
	j label185
label28:
	li a3, 1080
	mulw a4, a5, a3
	add t0, s0, a4
	sh2add t1, a2, t0
pcrel702:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, t0, %pcrel_lo(pcrel702)
	flw f10, 0(t1)
	mulw t0, a5, a3
	flw f15, 0(a4)
	addiw a5, a5, 1
	flw f0, 4(a4)
	fmul.s f11, f10, f15
	fmul.s f15, f12, f0
	fadd.s f12, f11, f15
	flw f15, 8(a4)
	add a4, a0, t0
	sh2add a3, a2, a4
	fadd.s f11, f12, f13
	fmul.s f12, f14, f15
	fadd.s f11, f11, f12
	fsw f11, 0(a3)
	li a3, 512
	bge a5, a3, label33
	fmv.s f12, f10
	fmv.s f14, f13
	fmv.s f13, f11
	j label28
label33:
	addiw a2, a2, 1
	li a3, 270
	bge a2, a3, label190
	fmv.w.x f14, zero
	mv a5, zero
	fmv.s f13, f14
	fmv.s f12, f14
	li a3, 4
	li a4, 512
	bge a3, a4, label28
	j label34
label59:
	sh2add t1, t3, a4
	sh2add t2, t3, a5
	flw f10, 0(t1)
	sh2add t3, t3, a3
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	fsw f10, 0(t3)
	flw f10, 4(t1)
	flw f12, 4(t2)
	fadd.s f11, f10, f12
	fsw f11, 4(t3)
	flw f10, 8(t1)
	flw f12, 8(t2)
	fadd.s f11, f10, f12
	fsw f11, 8(t3)
	flw f10, 12(t1)
	flw f11, 12(t2)
	fadd.s f12, f10, f11
	fsw f12, 12(t3)
	mv t3, t0
	addiw t0, t0, 4
	li t1, 270
	bge t0, t1, label56
	j label59
label43:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a3, a4, %pcrel_lo(label43)
	flw f11, 12(a3)
	flw f0, 16(a3)
	fmul.s f10, f13, f11
	fmul.s f11, f12, f0
	flw f12, 8(a3)
	li a3, 1080
	mulw a4, a5, a3
	mulw a3, a5, a3
	add t0, a1, a4
	fadd.s f1, f10, f11
	addiw a5, a5, -1
	add a4, s0, a3
	sh2add t1, a2, t0
	fmul.s f11, f15, f12
	sh2add t0, a2, a4
	fadd.s f10, f1, f14
	fadd.s f10, f10, f11
	fsw f10, 0(t1)
	flw f11, 0(t0)
	blt a5, zero, label49
	fmv.s f12, f13
	fmv.s f15, f14
	fmv.s f13, f11
	fmv.s f14, f10
	j label43
label49:
	addiw a2, a2, 1
	li a3, 270
	bge a2, a3, label294
	fmv.w.x f15, zero
	li a5, 511
	fmv.s f14, f15
	fmv.s f12, f15
	fmv.s f13, f15
	addiw a3, a5, -4
	blt a3, zero, label43
	j label50
label75:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a5, t0, %pcrel_lo(label75)
	sh2add t0, t1, a3
	flw f11, 12(a5)
	flw f0, 16(a5)
	fmul.s f10, f14, f11
	fmul.s f11, f12, f0
	flw f12, 8(a5)
	sh2add a5, t1, a4
	addiw t1, t1, -1
	fadd.s f1, f10, f11
	fmul.s f11, f15, f12
	fadd.s f10, f1, f13
	fadd.s f10, f10, f11
	fsw f10, 0(t0)
	flw f11, 0(a5)
	blt t1, zero, label81
	fmv.s f12, f14
	fmv.s f15, f13
	fmv.s f14, f11
	fmv.s f13, f10
	j label75
label11:
	sh2add a5, t1, a4
pcrel703:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	flw f10, 0(a5)
	addi a5, t0, %pcrel_lo(pcrel703)
	flw f15, 0(a5)
	flw f0, 4(a5)
	fmul.s f12, f10, f15
	fmul.s f13, f13, f0
	fadd.s f15, f12, f13
	flw f13, 8(a5)
	sh2add a5, t1, a3
	fmul.s f14, f14, f13
	addiw t1, t1, 1
	fadd.s f12, f15, f11
	fadd.s f12, f12, f14
	fsw f12, 0(a5)
	li a5, 270
	bge t1, a5, label16
	fmv.s f13, f10
	fmv.s f14, f11
	fmv.s f11, f12
	j label11
label16:
	addiw a2, a2, 1
	li a3, 512
	bge a2, a3, label94
	j label93
label398:
	li a5, 1080
	mv t3, zero
	mulw t0, a2, a5
	mulw t1, a2, a5
	mulw a4, a2, a5
	add a5, a1, t0
	add a3, s0, a4
	add a4, a0, t1
	li t0, 4
	li t1, 270
	bge t0, t1, label56
	j label59
label56:
	sh2add t1, t3, a4
	sh2add t0, t3, a5
	flw f10, 0(t1)
	flw f11, 0(t0)
	sh2add t0, t3, a3
	fadd.s f10, f10, f11
	addiw t3, t3, 1
	fsw f10, 0(t0)
	li t0, 270
	bge t3, t0, label58
	j label56
label58:
	addiw a2, a2, 1
	li a3, 512
	bge a2, a3, label60
	j label398
label81:
	addiw a2, a2, 1
	li a3, 512
	bge a2, a3, label182
	j label68
label60:
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
