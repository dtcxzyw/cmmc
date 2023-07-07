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
pcrel832:
	auipc a0, %pcrel_hi(imgIn)
	sd s1, 16(sp)
	addi a0, a0, %pcrel_lo(pcrel832)
	sd s0, 8(sp)
	mv s1, a0
	sd ra, 0(sp)
	jal getfarray
	li a0, 156
	jal _sysy_starttime
	mv a4, zero
pcrel833:
	auipc a1, %pcrel_hi(my_y2)
pcrel834:
	auipc a0, %pcrel_hi(imgOut)
	addi a1, a1, %pcrel_lo(pcrel833)
	addi s0, a0, %pcrel_lo(pcrel834)
pcrel835:
	auipc a0, %pcrel_hi(my_y1)
	addi a0, a0, %pcrel_lo(pcrel835)
	li a2, 512
	bge zero, a2, label94
	j label93
label94:
	mv a3, zero
	li a2, 512
	bge zero, a2, label211
	j label68
label211:
	mv a3, zero
	li a2, 512
	bge zero, a2, label215
label214:
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
	bge t0, t1, label551
	j label64
label215:
	mv a2, zero
	li a3, 270
	bge zero, a3, label219
	fmv.w.x f13, zero
	mv t0, zero
	fmv.w.x f10, zero
	fmv.w.x f12, zero
	addiw a3, zero, 4
	li a4, 512
	bge a3, a4, label419
	j label60
label219:
	mv a2, zero
	li a3, 270
	bge zero, a3, label226
	fmv.w.x f10, zero
	li t0, 511
	fmv.w.x f14, zero
	fmv.w.x f11, zero
	fmv.w.x f13, zero
	addiw a3, t0, -4
	blt a3, zero, label235
	j label38
label226:
	mv a3, zero
	li a2, 512
	bge zero, a2, label48
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
	bge t0, t1, label372
	j label47
label68:
	li a4, 1080
	fmv.w.x f10, zero
	fmv.w.x f13, zero
	li t2, 269
	mulw a2, a3, a4
	fmv.w.x f11, zero
	add a2, a1, a2
	fmv.w.x f12, zero
	mulw a4, a3, a4
	add a4, s1, a4
	addiw a5, t2, -4
	blt a5, zero, label606
	j label82
label606:
	mv a5, t2
label75:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t0, %pcrel_lo(label75)
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
	blt a5, zero, label81
	fmv.s f13, f10
	fmv.s f12, f11
	fmv.s f10, f15
	fmv.s f11, f14
	j label75
label82:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	sh2add t1, t2, a2
	addi t0, t0, %pcrel_lo(label82)
	sh2add t2, t2, a4
	flw f14, 12(t0)
	flw f15, 16(t0)
	fmul.s f14, f10, f14
	fmul.s f13, f13, f15
	fadd.s f13, f14, f13
	flw f14, 8(t0)
	fmul.s f12, f12, f14
	fadd.s f13, f13, f11
	fadd.s f12, f13, f12
	fsw f12, 0(t1)
	flw f13, 0(t2)
	flw f14, 12(t0)
	flw f15, 16(t0)
	fmul.s f14, f13, f14
	fmul.s f10, f10, f15
	fadd.s f10, f14, f10
	flw f14, 8(t0)
	fmul.s f11, f11, f14
	fadd.s f10, f10, f12
	fadd.s f10, f10, f11
	fsw f10, -4(t1)
	flw f11, -4(t2)
	flw f14, 12(t0)
	flw f15, 16(t0)
	fmul.s f14, f11, f14
	fmul.s f13, f13, f15
	fadd.s f13, f14, f13
	flw f14, 8(t0)
	fmul.s f12, f12, f14
	fadd.s f13, f13, f10
	fadd.s f12, f13, f12
	fsw f12, -8(t1)
	flw f13, -8(t2)
	flw f14, 12(t0)
	flw f15, 16(t0)
	fmul.s f14, f13, f14
	fmul.s f11, f11, f15
	fadd.s f11, f14, f11
	flw f14, 8(t0)
	fmul.s f10, f10, f14
	fadd.s f11, f11, f12
	fadd.s f11, f11, f10
	fsw f11, -12(t1)
	flw f10, -12(t2)
	mv t2, a5
	addiw a5, a5, -4
	blt a5, zero, label606
	j label82
label551:
	mv t0, t3
	sh2add t1, t3, a4
	flw f10, 0(t1)
	sh2add t1, t3, a5
	flw f11, 0(t1)
	sh2add t1, t3, a2
	fadd.s f10, f10, f11
	addiw t0, t3, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label67
	sh2add t1, t0, a4
	flw f10, 0(t1)
	sh2add t1, t0, a5
	flw f11, 0(t1)
	sh2add t1, t0, a2
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label67
	sh2add t1, t0, a4
	flw f10, 0(t1)
	sh2add t1, t0, a5
	flw f11, 0(t1)
	sh2add t1, t0, a2
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label67
	sh2add t1, t0, a4
	flw f10, 0(t1)
	sh2add t1, t0, a5
	flw f11, 0(t1)
	sh2add t1, t0, a2
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label67
	sh2add t1, t0, a4
	flw f10, 0(t1)
	sh2add t1, t0, a5
	flw f11, 0(t1)
	sh2add t1, t0, a2
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label67
	sh2add t1, t0, a4
	flw f10, 0(t1)
	sh2add t1, t0, a5
	flw f11, 0(t1)
	sh2add t1, t0, a2
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label67
	sh2add t1, t0, a4
	flw f10, 0(t1)
	sh2add t1, t0, a5
	flw f11, 0(t1)
	sh2add t1, t0, a2
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label67
	sh2add t1, t0, a4
	flw f10, 0(t1)
	sh2add t1, t0, a5
	flw f11, 0(t1)
	sh2add t1, t0, a2
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label67
	sh2add t1, t0, a4
	flw f10, 0(t1)
	sh2add t1, t0, a5
	flw f11, 0(t1)
	sh2add t1, t0, a2
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label67
	sh2add t1, t0, a4
	flw f10, 0(t1)
	sh2add t1, t0, a5
	flw f11, 0(t1)
	sh2add t1, t0, a2
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label67
	j label827
label64:
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
	bge t0, t1, label551
	j label64
label827:
	sh2add t1, t0, a4
	flw f10, 0(t1)
	sh2add t1, t0, a5
	flw f11, 0(t1)
	sh2add t1, t0, a2
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label67
	j label827
label67:
	addiw a3, a3, 1
	li a2, 512
	bge a3, a2, label215
	j label214
label235:
	mv a3, t0
label31:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(label31)
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
	blt a3, zero, label37
	fmv.s f14, f10
	fmv.s f13, f11
	fmv.s f10, f15
	fmv.s f11, f12
	j label31
label37:
	addiw a2, a2, 1
	li a3, 270
	bge a2, a3, label226
	fmv.w.x f10, zero
	li t0, 511
	fmv.w.x f14, zero
	fmv.w.x f11, zero
	fmv.w.x f13, zero
	addiw a3, t0, -4
	blt a3, zero, label235
	j label38
label372:
	mv t0, t3
	sh2add t1, t3, a4
	flw f10, 0(t1)
	sh2add t1, t3, a5
	flw f11, 0(t1)
	sh2add t1, t3, a2
	fadd.s f10, f10, f11
	addiw t0, t3, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label46
	sh2add t1, t0, a4
	flw f10, 0(t1)
	sh2add t1, t0, a5
	flw f11, 0(t1)
	sh2add t1, t0, a2
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label46
	sh2add t1, t0, a4
	flw f10, 0(t1)
	sh2add t1, t0, a5
	flw f11, 0(t1)
	sh2add t1, t0, a2
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label46
	sh2add t1, t0, a4
	flw f10, 0(t1)
	sh2add t1, t0, a5
	flw f11, 0(t1)
	sh2add t1, t0, a2
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label46
	sh2add t1, t0, a4
	flw f10, 0(t1)
	sh2add t1, t0, a5
	flw f11, 0(t1)
	sh2add t1, t0, a2
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label46
	sh2add t1, t0, a4
	flw f10, 0(t1)
	sh2add t1, t0, a5
	flw f11, 0(t1)
	sh2add t1, t0, a2
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label46
	sh2add t1, t0, a4
	flw f10, 0(t1)
	sh2add t1, t0, a5
	flw f11, 0(t1)
	sh2add t1, t0, a2
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label46
	sh2add t1, t0, a4
	flw f10, 0(t1)
	sh2add t1, t0, a5
	flw f11, 0(t1)
	sh2add t1, t0, a2
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label46
	sh2add t1, t0, a4
	flw f10, 0(t1)
	sh2add t1, t0, a5
	flw f11, 0(t1)
	sh2add t1, t0, a2
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label46
	sh2add t1, t0, a4
	flw f10, 0(t1)
	sh2add t1, t0, a5
	flw f11, 0(t1)
	sh2add t1, t0, a2
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label46
label825:
	sh2add t1, t0, a4
	flw f10, 0(t1)
	sh2add t1, t0, a5
	flw f11, 0(t1)
	sh2add t1, t0, a2
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label46
	j label825
label38:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	li t1, 1080
	addi a4, a4, %pcrel_lo(label38)
	mulw a5, t0, t1
	flw f12, 12(a4)
	mulw t0, t0, t1
	add a5, a1, a5
	add t0, s0, t0
	flw f15, 16(a4)
	fmul.s f12, f10, f12
	sh2add t2, a2, a5
	sh2add t1, a2, t0
	fmul.s f14, f14, f15
	fadd.s f12, f12, f14
	flw f14, 8(a4)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f11
	fadd.s f12, f12, f13
	fsw f12, 0(t2)
	flw f13, 0(t1)
	addi t1, a5, -1080
	flw f14, 12(a4)
	sh2add t1, a2, t1
	flw f15, 16(a4)
	fmul.s f14, f13, f14
	fmul.s f10, f10, f15
	fadd.s f10, f14, f10
	flw f14, 8(a4)
	fmul.s f11, f11, f14
	fadd.s f10, f10, f12
	fadd.s f10, f10, f11
	fsw f10, 0(t1)
	addi t1, t0, -1080
	sh2add t1, a2, t1
	flw f11, 0(t1)
	li t1, -2160
	flw f14, 12(a4)
	add t2, a5, t1
	flw f15, 16(a4)
	fmul.s f14, f11, f14
	sh2add t2, a2, t2
	fmul.s f13, f13, f15
	fadd.s f13, f14, f13
	flw f14, 8(a4)
	fmul.s f12, f12, f14
	fadd.s f13, f13, f10
	fadd.s f13, f13, f12
	fsw f13, 0(t2)
	add t2, t0, t1
	sh2add t2, a2, t2
	flw f14, 0(t2)
	flw f12, 12(a4)
	flw f15, 16(a4)
	fmul.s f12, f14, f12
	fmul.s f11, f11, f15
	fadd.s f11, f12, f11
	flw f12, 8(a4)
	addi a4, t1, -1080
	fmul.s f10, f10, f12
	add a5, a5, a4
	add a4, t0, a4
	sh2add a5, a2, a5
	fadd.s f11, f11, f13
	mv t0, a3
	sh2add a4, a2, a4
	fadd.s f11, f11, f10
	fsw f11, 0(a5)
	flw f10, 0(a4)
	addiw a3, a3, -4
	blt a3, zero, label235
	j label38
label360:
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
	bge t0, t1, label372
label47:
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
	bge t0, t1, label372
	j label47
label60:
	li t1, 1080
	mulw a4, t0, t1
	mulw t0, t0, t1
	add a5, s0, a4
	slli t1, t1, 1
	add t0, a0, t0
	sh2add a4, a2, a5
	sh2add t2, a2, t0
	flw f14, 0(a4)
pcrel836:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(pcrel836)
	flw f11, 0(a4)
	flw f15, 4(a4)
	fmul.s f11, f14, f11
	fmul.s f13, f13, f15
	fadd.s f11, f11, f13
	flw f13, 8(a4)
	fmul.s f12, f12, f13
	fadd.s f11, f11, f10
	fadd.s f11, f11, f12
	fsw f11, 0(t2)
	addi t2, a5, 1080
	sh2add t2, a2, t2
	flw f12, 0(t2)
	addi t2, t0, 1080
	flw f13, 0(a4)
	sh2add t2, a2, t2
	flw f15, 4(a4)
	fmul.s f13, f12, f13
	fmul.s f14, f14, f15
	fadd.s f13, f13, f14
	flw f14, 8(a4)
	fmul.s f10, f10, f14
	fadd.s f13, f13, f11
	fadd.s f10, f13, f10
	fsw f10, 0(t2)
	add t2, a5, t1
	sh2add t2, a2, t2
	flw f13, 0(t2)
	add t2, t0, t1
	flw f14, 0(a4)
	addi t1, t1, 1080
	sh2add t2, a2, t2
	flw f15, 4(a4)
	fmul.s f14, f13, f14
	add a5, a5, t1
	fmul.s f12, f12, f15
	sh2add a5, a2, a5
	fadd.s f12, f14, f12
	flw f14, 8(a4)
	fmul.s f11, f11, f14
	fadd.s f12, f12, f10
	fadd.s f12, f12, f11
	fsw f12, 0(t2)
	flw f11, 0(a5)
	flw f14, 0(a4)
	flw f15, 4(a4)
	fmul.s f14, f11, f14
	fmul.s f13, f13, f15
	fadd.s f13, f14, f13
	flw f14, 8(a4)
	add a4, t0, t1
	fmul.s f10, f10, f14
	mv t0, a3
	sh2add a4, a2, a4
	fadd.s f13, f13, f12
	fadd.s f10, f13, f10
	fmv.s f13, f11
	fsw f10, 0(a4)
	addiw a3, a3, 4
	li a4, 512
	bge a3, a4, label419
	j label60
label419:
	mv a3, t0
	j label54
label59:
	addiw a2, a2, 1
	li a3, 270
	bge a2, a3, label219
	fmv.w.x f13, zero
	mv t0, zero
	fmv.w.x f10, zero
	fmv.w.x f12, zero
	addiw a3, zero, 4
	li a4, 512
	bge a3, a4, label419
	j label60
label54:
	li a4, 1080
	mulw a5, a3, a4
	mulw a4, a3, a4
	add a5, s0, a5
	addiw a3, a3, 1
	add a4, a0, a4
	sh2add a5, a2, a5
	sh2add a4, a2, a4
	flw f11, 0(a5)
pcrel837:
	auipc a5, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a5, a5, %pcrel_lo(pcrel837)
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
	bge a3, a4, label59
	fmv.s f13, f11
	fmv.s f12, f10
	fmv.s f10, f14
	j label54
label93:
	li a3, 1080
	fmv.w.x f13, zero
	fmv.w.x f10, zero
	mv t2, zero
	mulw a2, a4, a3
	fmv.w.x f12, zero
	add a2, a0, a2
	mulw a3, a4, a3
	add a3, s1, a3
	addiw a5, zero, 4
	li t0, 270
	bge a5, t0, label106
label10:
	sh2add t1, t2, a3
pcrel838:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	sh2add t2, t2, a2
	flw f14, 0(t1)
	addi t0, t0, %pcrel_lo(pcrel838)
	flw f11, 0(t0)
	flw f15, 4(t0)
	fmul.s f11, f14, f11
	fmul.s f13, f13, f15
	fadd.s f11, f11, f13
	flw f13, 8(t0)
	fmul.s f12, f12, f13
	fadd.s f11, f11, f10
	fadd.s f11, f11, f12
	fsw f11, 0(t2)
	flw f12, 4(t1)
	flw f13, 0(t0)
	flw f15, 4(t0)
	fmul.s f13, f12, f13
	fmul.s f14, f14, f15
	fadd.s f13, f13, f14
	flw f14, 8(t0)
	fmul.s f10, f10, f14
	fadd.s f13, f13, f11
	fadd.s f10, f13, f10
	fsw f10, 4(t2)
	flw f13, 8(t1)
	flw f14, 0(t0)
	flw f15, 4(t0)
	fmul.s f14, f13, f14
	fmul.s f12, f12, f15
	fadd.s f12, f14, f12
	flw f14, 8(t0)
	fmul.s f11, f11, f14
	fadd.s f12, f12, f10
	fadd.s f12, f12, f11
	fsw f12, 8(t2)
	flw f11, 12(t1)
	flw f14, 0(t0)
	flw f15, 4(t0)
	fmul.s f14, f11, f14
	fmul.s f13, f13, f15
	fadd.s f13, f14, f13
	flw f14, 8(t0)
	fmul.s f10, f10, f14
	fadd.s f13, f13, f12
	fadd.s f10, f13, f10
	fmv.s f13, f11
	fsw f10, 12(t2)
	mv t2, a5
	addiw a5, a5, 4
	li t0, 270
	bge a5, t0, label106
	j label10
label16:
	addiw a4, a4, 1
	li a2, 512
	bge a4, a2, label94
	j label93
label106:
	mv a5, t2
label11:
	sh2add t0, a5, a3
	flw f11, 0(t0)
pcrel839:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t0, %pcrel_lo(pcrel839)
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
label46:
	addiw a3, a3, 1
	li a2, 512
	bge a3, a2, label48
	j label360
label81:
	addiw a3, a3, 1
	li a2, 512
	bge a3, a2, label211
	j label68
label48:
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
