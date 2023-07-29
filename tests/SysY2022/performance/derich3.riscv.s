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
.p2align 2
	addi sp, sp, -24
pcrel2219:
	auipc a1, %pcrel_hi(imgIn)
	sd s1, 16(sp)
	addi a0, a1, %pcrel_lo(pcrel2219)
	sd s0, 8(sp)
	mv s1, a0
	sd ra, 0(sp)
	jal getfarray
	li a0, 156
	jal _sysy_starttime
pcrel2220:
	auipc a2, %pcrel_hi(my_y2)
pcrel2221:
	auipc a1, %pcrel_hi(imgOut)
	addi s0, a1, %pcrel_lo(pcrel2221)
pcrel2222:
	auipc a1, %pcrel_hi(my_y1)
	addi a0, a1, %pcrel_lo(pcrel2222)
	addi a1, a2, %pcrel_lo(pcrel2220)
	mv a2, zero
	li a3, 512
	blt zero, a3, label4
	li a3, 270
	blt zero, a3, label731
	li a4, 270
	blt zero, a4, label736
	li a3, 512
	blt zero, a3, label56
	j label63
.p2align 2
label736:
	fmv.w.x f15, zero
	li a3, 511
	fmv.s f12, f15
	fmv.s f14, f15
	fmv.s f13, f15
.p2align 2
label40:
	auipc a5, %pcrel_hi(__cmmc_fp_constant_pool)
	li t0, 1080
	addi a4, a5, %pcrel_lo(label40)
	flw f10, 12(a4)
	flw f11, 16(a4)
	fmul.s f0, f15, f10
	fmul.s f12, f12, f11
	fmul.s f15, f15, f11
	fadd.s f1, f0, f12
	flw f12, 8(a4)
	mulw a4, a3, t0
	add a5, a1, a4
	sh2add t0, a2, a5
	add a4, s0, a4
	fadd.s f0, f1, f14
	fmul.s f14, f14, f12
	fmul.s f1, f13, f12
	fadd.s f13, f0, f1
	fsw f13, 0(t0)
	sh2add t0, a2, a4
	flw f0, 0(t0)
	addi t0, a5, -1080
	fmul.s f1, f0, f10
	sh2add t1, a2, t0
	addi t0, a4, -1080
	fadd.s f2, f1, f15
	fadd.s f1, f2, f13
	fmul.s f13, f13, f12
	fmul.s f2, f0, f11
	fadd.s f15, f1, f14
	fsw f15, 0(t1)
	sh2add t1, a2, t0
	li t0, -2160
	flw f1, 0(t1)
	add t1, a5, t0
	fmul.s f14, f1, f10
	sh2add t2, a2, t1
	add t1, a4, t0
	addi t0, t0, -1080
	fadd.s f3, f14, f2
	fadd.s f0, f3, f15
	fmul.s f3, f1, f11
	fmul.s f15, f15, f12
	fadd.s f14, f0, f13
	fsw f14, 0(t2)
	sh2add t2, a2, t1
	flw f0, 0(t2)
	add t2, a5, t0
	fmul.s f13, f0, f10
	sh2add t1, a2, t2
	add t2, a4, t0
	addi t0, t0, -1080
	fadd.s f2, f13, f3
	fadd.s f1, f2, f14
	fmul.s f2, f0, f11
	fadd.s f13, f1, f15
	fsw f13, 0(t1)
	sh2add t1, a2, t2
	add t2, a5, t0
	flw f15, 0(t1)
	sh2add t1, a2, t2
	fmul.s f1, f15, f10
	add t2, a4, t0
	addi t0, t0, -1080
	fadd.s f3, f1, f2
	fmul.s f2, f15, f11
	fmul.s f1, f14, f12
	fadd.s f0, f3, f13
	fadd.s f14, f0, f1
	fsw f14, 0(t1)
	sh2add t1, a2, t2
	flw f0, 0(t1)
	add t1, a5, t0
	fmul.s f1, f0, f10
	sh2add t2, a2, t1
	add t1, a4, t0
	addi t0, t0, -1080
	add t3, a4, t0
	fadd.s f3, f1, f2
	fmul.s f2, f0, f11
	fmul.s f1, f13, f12
	fadd.s f15, f3, f14
	fadd.s f13, f15, f1
	fsw f13, 0(t2)
	sh2add t2, a2, t1
	add t1, a5, t0
	flw f15, 0(t2)
	addi t0, t0, -1080
	sh2add t2, a2, t1
	fmul.s f1, f15, f10
	sh2add t1, a2, t3
	fadd.s f3, f1, f2
	fmul.s f2, f15, f11
	fmul.s f1, f14, f12
	fadd.s f0, f3, f13
	fadd.s f14, f0, f1
	fsw f14, 0(t2)
	flw f0, 0(t1)
	add t1, a5, t0
	fmul.s f1, f0, f10
	sh2add t2, a2, t1
	add t1, a4, t0
	addi t0, t0, -1080
	fadd.s f3, f1, f2
	fmul.s f2, f0, f11
	fmul.s f1, f13, f12
	fadd.s f15, f3, f14
	fadd.s f13, f15, f1
	fsw f13, 0(t2)
	sh2add t2, a2, t1
	flw f15, 0(t2)
	add t2, a5, t0
	fmul.s f1, f15, f10
	sh2add t1, a2, t2
	add t2, a4, t0
	addi t0, t0, -1080
	fadd.s f3, f1, f2
	fmul.s f2, f15, f11
	fmul.s f1, f14, f12
	fadd.s f0, f3, f13
	fmul.s f13, f13, f12
	fadd.s f14, f0, f1
	fsw f14, 0(t1)
	sh2add t1, a2, t2
	add t2, a5, t0
	flw f0, 0(t1)
	sh2add t1, a2, t2
	fmul.s f1, f0, f10
	add t2, a4, t0
	fmul.s f3, f0, f11
	addi t0, t0, -1080
	add t3, a4, t0
	fadd.s f15, f1, f2
	fadd.s f1, f15, f14
	fmul.s f14, f14, f12
	fadd.s f15, f1, f13
	fsw f15, 0(t1)
	sh2add t1, a2, t2
	flw f1, 0(t1)
	add t1, a5, t0
	fmul.s f13, f1, f10
	addi t0, t0, -1080
	sh2add t2, a2, t1
	sh2add t1, a2, t3
	fadd.s f2, f13, f3
	fadd.s f0, f2, f15
	fmul.s f2, f1, f11
	fmul.s f15, f15, f12
	fadd.s f13, f0, f14
	fsw f13, 0(t2)
	add t2, a5, t0
	flw f0, 0(t1)
	sh2add t1, a2, t2
	fmul.s f14, f0, f10
	add t2, a4, t0
	fmul.s f0, f0, f11
	addi t0, t0, -1080
	add t3, a4, t0
	fadd.s f3, f14, f2
	fadd.s f1, f3, f13
	fadd.s f14, f1, f15
	fsw f14, 0(t1)
	sh2add t1, a2, t2
	flw f1, 0(t1)
	add t1, a5, t0
	fmul.s f15, f1, f10
	addi t0, t0, -1080
	sh2add t2, a2, t1
	fmul.s f1, f1, f11
	sh2add t1, a2, t3
	fadd.s f2, f15, f0
	fmul.s f0, f13, f12
	fadd.s f15, f2, f14
	fadd.s f13, f15, f0
	fsw f13, 0(t2)
	add t2, a5, t0
	flw f15, 0(t1)
	sh2add t1, a2, t2
	fmul.s f0, f15, f10
	add t2, a4, t0
	fmul.s f3, f15, f11
	addi t0, t0, -1080
	fadd.s f2, f0, f1
	fmul.s f1, f14, f12
	fadd.s f0, f2, f13
	fadd.s f14, f0, f1
	fsw f14, 0(t1)
	sh2add t1, a2, t2
	add t2, a4, t0
	flw f0, 0(t1)
	add t1, a5, t0
	fmul.s f1, f0, f10
	addi t0, t0, -1080
	sh2add t3, a2, t1
	add a4, a4, t0
	fmul.s f0, f0, f11
	sh2add t1, a2, t2
	fadd.s f2, f1, f3
	fmul.s f1, f13, f12
	fmul.s f12, f14, f12
	fadd.s f15, f2, f14
	fadd.s f13, f15, f1
	fsw f13, 0(t3)
	flw f15, 0(t1)
	add t1, a5, t0
	fmul.s f10, f15, f10
	sh2add a5, a2, t1
	fadd.s f11, f10, f0
	fadd.s f10, f11, f13
	fadd.s f14, f10, f12
	fsw f14, 0(a5)
	sh2add a5, a2, a4
	addiw a4, a3, -16
	flw f11, 0(a5)
	li a5, 15
	ble a4, a5, label46
	fmv.s f12, f15
	mv a3, a4
	fmv.s f15, f11
	j label40
.p2align 2
label46:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addiw a3, a3, -28
	addi a5, t0, %pcrel_lo(label46)
	li t0, 1080
	flw f10, 12(a5)
	mulw a4, a4, t0
	flw f12, 16(a5)
	fmul.s f0, f11, f10
	fmul.s f15, f15, f12
	fmul.s f11, f11, f12
	fadd.s f1, f0, f15
	flw f15, 8(a5)
	add a5, a1, a4
	sh2add t0, a2, a5
	add a4, s0, a4
	fadd.s f0, f1, f14
	fmul.s f14, f14, f15
	fmul.s f1, f13, f15
	fadd.s f13, f0, f1
	fsw f13, 0(t0)
	sh2add t0, a2, a4
	flw f1, 0(t0)
	addi t0, a5, -1080
	fmul.s f0, f1, f10
	sh2add t1, a2, t0
	fmul.s f1, f1, f12
	addi t0, a4, -1080
	fadd.s f2, f0, f11
	fadd.s f0, f2, f13
	fadd.s f11, f0, f14
	fsw f11, 0(t1)
	sh2add t1, a2, t0
	li t0, -2160
	flw f0, 0(t1)
	add t1, a5, t0
	fmul.s f14, f0, f10
	fmul.s f3, f0, f12
	sh2add t2, a2, t1
	add t1, a4, t0
	addi t0, t0, -1080
	fadd.s f2, f14, f1
	fmul.s f1, f13, f15
	fadd.s f14, f2, f11
	fadd.s f13, f14, f1
	fsw f13, 0(t2)
	sh2add t2, a2, t1
	add t1, a5, t0
	flw f14, 0(t2)
	sh2add t3, a2, t1
	add t2, a4, t0
	fmul.s f1, f14, f10
	addi t0, t0, -1080
	sh2add t1, a2, t2
	fadd.s f2, f1, f3
	fmul.s f1, f11, f15
	fadd.s f0, f2, f13
	fmul.s f2, f14, f12
	fadd.s f11, f0, f1
	fsw f11, 0(t3)
	flw f0, 0(t1)
	add t1, a5, t0
	fmul.s f1, f0, f10
	sh2add t2, a2, t1
	add t1, a4, t0
	addi t0, t0, -1080
	add t3, a4, t0
	fadd.s f3, f1, f2
	fmul.s f2, f0, f12
	fmul.s f1, f13, f15
	fadd.s f14, f3, f11
	fadd.s f13, f14, f1
	fsw f13, 0(t2)
	sh2add t2, a2, t1
	add t1, a5, t0
	flw f14, 0(t2)
	addi t0, t0, -1080
	sh2add t2, a2, t1
	fmul.s f1, f14, f10
	sh2add t1, a2, t3
	fadd.s f3, f1, f2
	fmul.s f2, f14, f12
	fmul.s f1, f11, f15
	fadd.s f0, f3, f13
	fadd.s f11, f0, f1
	fsw f11, 0(t2)
	add t2, a4, t0
	flw f0, 0(t1)
	add t1, a5, t0
	fmul.s f1, f0, f10
	addi t0, t0, -1080
	sh2add t3, a2, t1
	sh2add t1, a2, t2
	add t2, a5, t0
	fadd.s f3, f1, f2
	fmul.s f1, f13, f15
	fadd.s f14, f3, f11
	fmul.s f3, f0, f12
	fadd.s f13, f14, f1
	fsw f13, 0(t3)
	flw f14, 0(t1)
	sh2add t1, a2, t2
	fmul.s f1, f14, f10
	add t2, a4, t0
	addi t0, t0, -1080
	fadd.s f2, f1, f3
	fmul.s f1, f11, f15
	fadd.s f0, f2, f13
	fmul.s f2, f14, f12
	fadd.s f11, f0, f1
	fsw f11, 0(t1)
	sh2add t1, a2, t2
	add t2, a5, t0
	flw f0, 0(t1)
	sh2add t1, a2, t2
	fmul.s f1, f0, f10
	add t2, a4, t0
	addi t0, t0, -1080
	add t3, a4, t0
	fadd.s f3, f1, f2
	fmul.s f2, f0, f12
	fmul.s f1, f13, f15
	fadd.s f14, f3, f11
	fadd.s f13, f14, f1
	fsw f13, 0(t1)
	sh2add t1, a2, t2
	flw f14, 0(t1)
	add t1, a5, t0
	fmul.s f1, f14, f10
	addi t0, t0, -1080
	sh2add t2, a2, t1
	sh2add t1, a2, t3
	fadd.s f3, f1, f2
	fmul.s f2, f14, f12
	fmul.s f1, f11, f15
	fadd.s f0, f3, f13
	fadd.s f11, f0, f1
	fsw f11, 0(t2)
	flw f0, 0(t1)
	add t1, a5, t0
	fmul.s f1, f0, f10
	fmul.s f12, f0, f12
	sh2add t2, a2, t1
	add t1, a4, t0
	addi t0, t0, -1080
	fadd.s f3, f1, f2
	add a5, a5, t0
	fmul.s f1, f13, f15
	fadd.s f14, f3, f11
	fadd.s f13, f14, f1
	fsw f13, 0(t2)
	sh2add t2, a2, t1
	sh2add t1, a2, a5
	flw f14, 0(t2)
	add a5, a4, t0
	fmul.s f10, f14, f10
	sh2add a4, a2, a5
	fadd.s f0, f10, f12
	fmul.s f12, f11, f15
	fadd.s f10, f0, f13
	fadd.s f11, f10, f12
	fsw f11, 0(t1)
	flw f10, 0(a4)
.p2align 2
label47:
	auipc a5, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a5, %pcrel_lo(label47)
	li a5, 1080
	flw f15, 12(a4)
	flw f0, 16(a4)
	fmul.s f12, f10, f15
	fmul.s f14, f14, f0
	fadd.s f15, f12, f14
	flw f14, 8(a4)
	mulw a4, a3, a5
	fmul.s f13, f13, f14
	addiw a3, a3, -1
	add t0, a1, a4
	fadd.s f12, f15, f11
	add a4, s0, a4
	sh2add a5, a2, t0
	fadd.s f12, f12, f13
	fsw f12, 0(a5)
	sh2add a5, a2, a4
	flw f15, 0(a5)
	bge a3, zero, label1158
	addiw a2, a2, 1
	li a4, 270
	blt a2, a4, label736
	mv a2, zero
	li a3, 512
	blt zero, a3, label56
	j label63
.p2align 2
label1158:
	fmv.s f14, f10
	fmv.s f13, f11
	fmv.s f10, f15
	fmv.s f11, f12
	j label47
.p2align 2
label731:
	fmv.w.x f0, zero
	mv a3, zero
	fmv.s f13, f0
	fmv.s f14, f0
.p2align 2
label64:
	li t0, 1080
pcrel2223:
	auipc t2, %pcrel_hi(__cmmc_fp_constant_pool)
	mulw a5, a3, t0
	slli t0, t0, 1
	add a4, s0, a5
	add a5, a0, a5
	sh2add t1, a2, a4
	flw f15, 0(t1)
	addi t1, t2, %pcrel_lo(pcrel2223)
	addi t2, a4, 1080
	flw f10, 0(t1)
	flw f11, 4(t1)
	fmul.s f12, f15, f10
	fmul.s f2, f0, f11
	fmul.s f3, f15, f11
	fadd.s f1, f12, f2
	flw f12, 8(t1)
	sh2add t1, a2, a5
	fadd.s f0, f1, f13
	fmul.s f1, f14, f12
	fadd.s f14, f0, f1
	fsw f14, 0(t1)
	sh2add t1, a2, t2
	addi t2, a5, 1080
	flw f0, 0(t1)
	sh2add t1, a2, t2
	fmul.s f1, f0, f10
	fmul.s f0, f0, f11
	fadd.s f2, f1, f3
	fmul.s f1, f13, f12
	fadd.s f15, f2, f14
	fadd.s f13, f15, f1
	fsw f13, 0(t1)
	add t1, a4, t0
	sh2add t2, a2, t1
	flw f1, 0(t2)
	add t2, a5, t0
	fmul.s f15, f1, f10
	addi t0, t0, 1080
	sh2add t1, a2, t2
	fmul.s f1, f1, f11
	add t2, a4, t0
	fadd.s f2, f15, f0
	fmul.s f0, f14, f12
	fadd.s f15, f2, f13
	fadd.s f14, f15, f0
	fsw f14, 0(t1)
	sh2add t1, a2, t2
	add t2, a5, t0
	flw f15, 0(t1)
	addi t0, t0, 1080
	sh2add t1, a2, t2
	fmul.s f0, f15, f10
	add t2, a4, t0
	fadd.s f2, f0, f1
	fmul.s f1, f13, f12
	fadd.s f0, f2, f14
	fmul.s f2, f15, f11
	fmul.s f14, f14, f12
	fadd.s f13, f0, f1
	fsw f13, 0(t1)
	sh2add t1, a2, t2
	add t2, a5, t0
	flw f1, 0(t1)
	addi t0, t0, 1080
	sh2add t1, a2, t2
	fmul.s f0, f1, f10
	fadd.s f15, f0, f2
	fmul.s f2, f1, f11
	fadd.s f0, f15, f13
	fmul.s f13, f13, f12
	fadd.s f15, f0, f14
	fsw f15, 0(t1)
	add t1, a4, t0
	sh2add t2, a2, t1
	add t1, a5, t0
	flw f0, 0(t2)
	addi t0, t0, 1080
	sh2add t2, a2, t1
	fmul.s f14, f0, f10
	fadd.s f3, f14, f2
	fadd.s f1, f3, f15
	fmul.s f3, f0, f11
	fmul.s f15, f15, f12
	fadd.s f14, f1, f13
	fsw f14, 0(t2)
	add t2, a4, t0
	sh2add t1, a2, t2
	add t2, a5, t0
	flw f1, 0(t1)
	addi t0, t0, 1080
	sh2add t1, a2, t2
	fmul.s f13, f1, f10
	add t2, a4, t0
	fmul.s f1, f1, f11
	fadd.s f2, f13, f3
	fadd.s f0, f2, f14
	fadd.s f13, f0, f15
	fsw f13, 0(t1)
	sh2add t1, a2, t2
	flw f0, 0(t1)
	add t1, a5, t0
	fmul.s f15, f0, f10
	addi t0, t0, 1080
	sh2add t2, a2, t1
	fmul.s f3, f0, f11
	fadd.s f2, f15, f1
	fmul.s f1, f14, f12
	fadd.s f15, f2, f13
	fadd.s f14, f15, f1
	fsw f14, 0(t2)
	add t2, a4, t0
	sh2add t1, a2, t2
	flw f15, 0(t1)
	add t1, a5, t0
	fmul.s f1, f15, f10
	addi t0, t0, 1080
	sh2add t2, a2, t1
	add t1, a4, t0
	fadd.s f2, f1, f3
	fmul.s f3, f15, f11
	fmul.s f1, f13, f12
	fadd.s f0, f2, f14
	fadd.s f13, f0, f1
	fsw f13, 0(t2)
	sh2add t2, a2, t1
	add t1, a5, t0
	flw f0, 0(t2)
	addi t0, t0, 1080
	sh2add t2, a2, t1
	fmul.s f1, f0, f10
	add t1, a4, t0
	fadd.s f2, f1, f3
	fmul.s f1, f14, f12
	fadd.s f15, f2, f13
	fmul.s f2, f0, f11
	fadd.s f14, f15, f1
	fsw f14, 0(t2)
	sh2add t2, a2, t1
	flw f15, 0(t2)
	add t2, a5, t0
	fmul.s f1, f15, f10
	addi t0, t0, 1080
	sh2add t1, a2, t2
	fadd.s f3, f1, f2
	fmul.s f2, f15, f11
	fmul.s f1, f13, f12
	fadd.s f0, f3, f14
	fmul.s f14, f14, f12
	fadd.s f13, f0, f1
	fsw f13, 0(t1)
	add t1, a4, t0
	sh2add t2, a2, t1
	flw f0, 0(t2)
	add t2, a5, t0
	fmul.s f1, f0, f10
	addi t0, t0, 1080
	sh2add t1, a2, t2
	fadd.s f15, f1, f2
	fmul.s f2, f0, f11
	fadd.s f1, f15, f13
	fmul.s f13, f13, f12
	fadd.s f15, f1, f14
	fsw f15, 0(t1)
	add t1, a4, t0
	sh2add t2, a2, t1
	add t1, a5, t0
	flw f1, 0(t2)
	addi t0, t0, 1080
	sh2add t2, a2, t1
	fmul.s f14, f1, f10
	fadd.s f3, f14, f2
	fmul.s f2, f1, f11
	fadd.s f0, f3, f15
	fmul.s f15, f15, f12
	fadd.s f14, f0, f13
	fsw f14, 0(t2)
	add t2, a4, t0
	sh2add t1, a2, t2
	flw f0, 0(t1)
	add t1, a5, t0
	fmul.s f13, f0, f10
	addi t0, t0, 1080
	sh2add t2, a2, t1
	add t1, a4, t0
	fadd.s f3, f13, f2
	fadd.s f1, f3, f14
	fmul.s f3, f0, f11
	fadd.s f13, f1, f15
	fsw f13, 0(t2)
	sh2add t2, a2, t1
	add t1, a5, t0
	flw f15, 0(t2)
	addi t0, t0, 1080
	sh2add t2, a2, t1
	fmul.s f1, f15, f10
	add t1, a4, t0
	fmul.s f15, f15, f11
	sh2add a4, a2, t1
	fadd.s f2, f1, f3
	fmul.s f1, f14, f12
	fmul.s f12, f13, f12
	fadd.s f0, f2, f13
	fadd.s f14, f0, f1
	fsw f14, 0(t2)
	flw f0, 0(a4)
	add a4, a5, t0
	fmul.s f10, f0, f10
	sh2add a5, a2, a4
	addiw a4, a3, 16
	fadd.s f11, f10, f15
	fadd.s f10, f11, f14
	fadd.s f13, f10, f12
	fsw f13, 0(a5)
	li a5, 496
	bge a4, a5, label69
	mv a3, a4
	j label64
.p2align 2
label69:
	li t0, 1080
pcrel2224:
	auipc t2, %pcrel_hi(__cmmc_fp_constant_pool)
	addiw a3, a3, 28
	mulw a5, a4, t0
	slli t0, t0, 1
	add a4, s0, a5
	add a5, a0, a5
	sh2add t1, a2, a4
	flw f15, 0(t1)
	addi t1, t2, %pcrel_lo(pcrel2224)
	addi t2, a4, 1080
	flw f10, 0(t1)
	flw f11, 4(t1)
	fmul.s f12, f15, f10
	fmul.s f1, f0, f11
	fmul.s f3, f15, f11
	fadd.s f2, f12, f1
	flw f12, 8(t1)
	sh2add t1, a2, a5
	fmul.s f1, f14, f12
	fadd.s f0, f2, f13
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
	fmul.s f1, f15, f10
	add t2, a4, t0
	fadd.s f3, f1, f2
	fmul.s f2, f15, f11
	fmul.s f1, f14, f12
	fadd.s f0, f3, f13
	fadd.s f14, f0, f1
	fsw f14, 0(t1)
	sh2add t1, a2, t2
	add t2, a5, t0
	flw f0, 0(t1)
	addi t0, t0, 1080
	sh2add t1, a2, t2
	fmul.s f1, f0, f10
	fadd.s f3, f1, f2
	fmul.s f2, f0, f11
	fmul.s f1, f13, f12
	fadd.s f15, f3, f14
	fadd.s f13, f15, f1
	fsw f13, 0(t1)
	add t1, a4, t0
	sh2add t2, a2, t1
	add t1, a5, t0
	flw f15, 0(t2)
	addi t0, t0, 1080
	sh2add t2, a2, t1
	fmul.s f1, f15, f10
	add t1, a4, t0
	fadd.s f3, f1, f2
	fmul.s f2, f15, f11
	fmul.s f1, f14, f12
	fadd.s f0, f3, f13
	fadd.s f14, f0, f1
	fsw f14, 0(t2)
	sh2add t2, a2, t1
	add t1, a5, t0
	flw f1, 0(t2)
	addi t0, t0, 1080
	sh2add t2, a2, t1
	fmul.s f0, f1, f10
	add t1, a4, t0
	fadd.s f3, f0, f2
	fmul.s f2, f1, f11
	fmul.s f0, f13, f12
	fadd.s f15, f3, f14
	fmul.s f14, f14, f12
	fadd.s f13, f15, f0
	fsw f13, 0(t2)
	sh2add t2, a2, t1
	flw f0, 0(t2)
	add t2, a5, t0
	fmul.s f15, f0, f10
	addi t0, t0, 1080
	sh2add t1, a2, t2
	add t2, a4, t0
	fadd.s f3, f15, f2
	fadd.s f1, f3, f13
	fmul.s f3, f0, f11
	fmul.s f13, f13, f12
	fadd.s f15, f1, f14
	fsw f15, 0(t1)
	sh2add t1, a2, t2
	flw f1, 0(t1)
	add t1, a5, t0
	fmul.s f14, f1, f10
	addi t0, t0, 1080
	sh2add t2, a2, t1
	add t1, a4, t0
	fadd.s f2, f14, f3
	fadd.s f0, f2, f15
	fmul.s f2, f1, f11
	fmul.s f15, f15, f12
	fadd.s f14, f0, f13
	fsw f14, 0(t2)
	sh2add t2, a2, t1
	add t1, a5, t0
	flw f0, 0(t2)
	addi t0, t0, 1080
	sh2add t2, a2, t1
	fmul.s f13, f0, f10
	fadd.s f3, f13, f2
	fadd.s f1, f3, f14
	fmul.s f3, f0, f11
	fadd.s f13, f1, f15
	fsw f13, 0(t2)
	add t2, a4, t0
	sh2add t1, a2, t2
	add t2, a5, t0
	flw f15, 0(t1)
	addi t0, t0, 1080
	sh2add t1, a2, t2
	fmul.s f1, f15, f10
	fadd.s f2, f1, f3
	fmul.s f1, f14, f12
	fadd.s f0, f2, f13
	fmul.s f2, f15, f11
	fmul.s f13, f13, f12
	fadd.s f14, f0, f1
	fmul.s f12, f14, f12
	fsw f14, 0(t1)
	add t1, a4, t0
	sh2add t2, a2, t1
	add t1, a5, t0
	flw f0, 0(t2)
	addi t0, t0, 1080
	sh2add t2, a2, t1
	add a5, a5, t0
	add a4, a4, t0
	fmul.s f1, f0, f10
	sh2add t1, a2, a4
	fmul.s f0, f0, f11
	sh2add a4, a2, a5
	fadd.s f15, f1, f2
	fadd.s f1, f15, f14
	fadd.s f15, f1, f13
	fsw f15, 0(t2)
	flw f13, 0(t1)
	fmul.s f10, f13, f10
	fadd.s f1, f10, f0
	fadd.s f11, f1, f15
	fadd.s f10, f11, f12
	fmv.s f12, f15
	fsw f10, 0(a4)
.p2align 2
label70:
	li a5, 1080
	mulw a4, a3, a5
	addiw a3, a3, 1
	add t0, s0, a4
	sh2add a5, a2, t0
pcrel2225:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	flw f11, 0(a5)
	addi a5, t0, %pcrel_lo(pcrel2225)
	flw f0, 0(a5)
	flw f15, 4(a5)
	fmul.s f14, f11, f0
	fmul.s f0, f13, f15
	flw f15, 8(a5)
	add a5, a0, a4
	fmul.s f12, f12, f15
	sh2add a4, a2, a5
	fadd.s f14, f14, f0
	fadd.s f13, f14, f10
	fadd.s f14, f13, f12
	fsw f14, 0(a4)
	li a4, 512
	blt a3, a4, label1787
	addiw a2, a2, 1
	li a3, 270
	blt a2, a3, label731
	mv a2, zero
	li a4, 270
	blt zero, a4, label736
	li a3, 512
	blt zero, a3, label56
	j label63
.p2align 2
label1787:
	fmv.s f13, f11
	fmv.s f12, f10
	fmv.s f10, f14
	j label70
.p2align 2
label56:
	li a4, 1080
	mv t0, zero
	mulw a5, a2, a4
	add a4, a0, a5
	add a3, s0, a5
	add a5, a1, a5
.p2align 2
label57:
	sh2add t1, t0, a4
	sh2add t2, t0, a5
	flw f10, 0(t1)
	sh2add t3, t0, a3
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
	flw f12, 12(t2)
	fadd.s f11, f10, f12
	fsw f11, 12(t3)
	flw f10, 16(t1)
	flw f12, 16(t2)
	fadd.s f11, f10, f12
	fsw f11, 16(t3)
	flw f10, 20(t1)
	flw f12, 20(t2)
	fadd.s f11, f10, f12
	fsw f11, 20(t3)
	flw f10, 24(t1)
	flw f11, 24(t2)
	fadd.s f12, f10, f11
	fsw f12, 24(t3)
	flw f10, 28(t1)
	flw f11, 28(t2)
	fadd.s f12, f10, f11
	fsw f12, 28(t3)
	flw f10, 32(t1)
	flw f11, 32(t2)
	fadd.s f12, f10, f11
	fsw f12, 32(t3)
	flw f10, 36(t1)
	flw f11, 36(t2)
	fadd.s f12, f10, f11
	fsw f12, 36(t3)
	flw f10, 40(t1)
	flw f12, 40(t2)
	fadd.s f11, f10, f12
	fsw f11, 40(t3)
	flw f10, 44(t1)
	flw f12, 44(t2)
	fadd.s f11, f10, f12
	fsw f11, 44(t3)
	flw f10, 48(t1)
	flw f12, 48(t2)
	fadd.s f11, f10, f12
	fsw f11, 48(t3)
	flw f10, 52(t1)
	flw f12, 52(t2)
	fadd.s f11, f10, f12
	fsw f11, 52(t3)
	flw f10, 56(t1)
	flw f12, 56(t2)
	fadd.s f11, f10, f12
	fsw f11, 56(t3)
	flw f10, 60(t1)
	addiw t1, t0, 16
	flw f11, 60(t2)
	li t2, 256
	fadd.s f12, f10, f11
	fsw f12, 60(t3)
	bge t1, t2, label59
	mv t0, t1
	j label57
.p2align 2
label59:
	sh2add t2, t1, a4
	addiw t0, t0, 28
	sh2add t3, t1, a5
	flw f10, 0(t2)
	sh2add t1, t1, a3
	flw f11, 0(t3)
	fadd.s f10, f10, f11
	fsw f10, 0(t1)
	flw f10, 4(t2)
	flw f12, 4(t3)
	fadd.s f11, f10, f12
	fsw f11, 4(t1)
	flw f10, 8(t2)
	flw f11, 8(t3)
	fadd.s f12, f10, f11
	fsw f12, 8(t1)
	flw f10, 12(t2)
	flw f11, 12(t3)
	fadd.s f12, f10, f11
	fsw f12, 12(t1)
	flw f10, 16(t2)
	flw f11, 16(t3)
	fadd.s f12, f10, f11
	fsw f12, 16(t1)
	flw f10, 20(t2)
	flw f11, 20(t3)
	fadd.s f12, f10, f11
	fsw f12, 20(t1)
	flw f10, 24(t2)
	flw f12, 24(t3)
	fadd.s f11, f10, f12
	fsw f11, 24(t1)
	flw f10, 28(t2)
	flw f11, 28(t3)
	fadd.s f12, f10, f11
	fsw f12, 28(t1)
	flw f10, 32(t2)
	flw f11, 32(t3)
	fadd.s f12, f10, f11
	fsw f12, 32(t1)
	flw f10, 36(t2)
	flw f11, 36(t3)
	fadd.s f12, f10, f11
	fsw f12, 36(t1)
	flw f10, 40(t2)
	flw f12, 40(t3)
	fadd.s f11, f10, f12
	fsw f11, 40(t1)
	flw f10, 44(t2)
	flw f12, 44(t3)
	fadd.s f11, f10, f12
	fsw f11, 44(t1)
.p2align 2
label60:
	sh2add t1, t0, a4
	sh2add t2, t0, a5
	flw f10, 0(t1)
	sh2add t1, t0, a3
	flw f11, 0(t2)
	addiw t0, t0, 1
	fadd.s f10, f10, f11
	fsw f10, 0(t1)
	li t1, 270
	blt t0, t1, label60
	addiw a2, a2, 1
	li a3, 512
	blt a2, a3, label56
label63:
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
.p2align 2
label727:
	li a4, 1080
	mv t0, zero
	mulw a5, a2, a4
	add a4, a0, a5
	add a3, s0, a5
	add a5, a1, a5
.p2align 2
label77:
	sh2add t1, t0, a4
	sh2add t2, t0, a5
	flw f10, 0(t1)
	sh2add t3, t0, a3
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	fsw f10, 0(t3)
	flw f10, 4(t1)
	flw f11, 4(t2)
	fadd.s f12, f10, f11
	fsw f12, 4(t3)
	flw f10, 8(t1)
	flw f11, 8(t2)
	fadd.s f12, f10, f11
	fsw f12, 8(t3)
	flw f10, 12(t1)
	flw f12, 12(t2)
	fadd.s f11, f10, f12
	fsw f11, 12(t3)
	flw f10, 16(t1)
	flw f12, 16(t2)
	fadd.s f11, f10, f12
	fsw f11, 16(t3)
	flw f10, 20(t1)
	flw f12, 20(t2)
	fadd.s f11, f10, f12
	fsw f11, 20(t3)
	flw f10, 24(t1)
	flw f12, 24(t2)
	fadd.s f11, f10, f12
	fsw f11, 24(t3)
	flw f10, 28(t1)
	flw f12, 28(t2)
	fadd.s f11, f10, f12
	fsw f11, 28(t3)
	flw f10, 32(t1)
	flw f12, 32(t2)
	fadd.s f11, f10, f12
	fsw f11, 32(t3)
	flw f10, 36(t1)
	flw f11, 36(t2)
	fadd.s f12, f10, f11
	fsw f12, 36(t3)
	flw f10, 40(t1)
	flw f12, 40(t2)
	fadd.s f11, f10, f12
	fsw f11, 40(t3)
	flw f10, 44(t1)
	flw f11, 44(t2)
	fadd.s f12, f10, f11
	fsw f12, 44(t3)
	flw f10, 48(t1)
	flw f11, 48(t2)
	fadd.s f12, f10, f11
	fsw f12, 48(t3)
	flw f10, 52(t1)
	flw f12, 52(t2)
	fadd.s f11, f10, f12
	fsw f11, 52(t3)
	flw f10, 56(t1)
	flw f12, 56(t2)
	fadd.s f11, f10, f12
	fsw f11, 56(t3)
	flw f10, 60(t1)
	addiw t1, t0, 16
	flw f12, 60(t2)
	li t2, 256
	fadd.s f11, f10, f12
	fsw f11, 60(t3)
	bge t1, t2, label79
	mv t0, t1
	j label77
.p2align 2
label79:
	sh2add t2, t1, a4
	addiw t0, t0, 28
	sh2add t3, t1, a5
	flw f10, 0(t2)
	sh2add t1, t1, a3
	flw f11, 0(t3)
	fadd.s f10, f10, f11
	fsw f10, 0(t1)
	flw f10, 4(t2)
	flw f11, 4(t3)
	fadd.s f12, f10, f11
	fsw f12, 4(t1)
	flw f10, 8(t2)
	flw f11, 8(t3)
	fadd.s f12, f10, f11
	fsw f12, 8(t1)
	flw f10, 12(t2)
	flw f12, 12(t3)
	fadd.s f11, f10, f12
	fsw f11, 12(t1)
	flw f10, 16(t2)
	flw f12, 16(t3)
	fadd.s f11, f10, f12
	fsw f11, 16(t1)
	flw f10, 20(t2)
	flw f12, 20(t3)
	fadd.s f11, f10, f12
	fsw f11, 20(t1)
	flw f10, 24(t2)
	flw f11, 24(t3)
	fadd.s f12, f10, f11
	fsw f12, 24(t1)
	flw f10, 28(t2)
	flw f12, 28(t3)
	fadd.s f11, f10, f12
	fsw f11, 28(t1)
	flw f10, 32(t2)
	flw f12, 32(t3)
	fadd.s f11, f10, f12
	fsw f11, 32(t1)
	flw f10, 36(t2)
	flw f12, 36(t3)
	fadd.s f11, f10, f12
	fsw f11, 36(t1)
	flw f10, 40(t2)
	flw f12, 40(t3)
	fadd.s f11, f10, f12
	fsw f11, 40(t1)
	flw f10, 44(t2)
	flw f11, 44(t3)
	fadd.s f12, f10, f11
	fsw f12, 44(t1)
.p2align 2
label80:
	sh2add t2, t0, a4
	sh2add t1, t0, a5
	flw f10, 0(t2)
	flw f11, 0(t1)
	sh2add t1, t0, a3
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	blt t0, t1, label80
	addiw a2, a2, 1
	li a3, 512
	blt a2, a3, label727
	mv a2, zero
	li a3, 270
	blt zero, a3, label731
	li a4, 270
	blt zero, a4, label736
	li a3, 512
	blt zero, a3, label56
	j label63
.p2align 2
label4:
	li a4, 1080
	fmv.w.x f12, zero
	mulw a5, a2, a4
	fmv.s f13, f12
	fmv.s f14, f12
	add a4, s1, a5
	add a3, a0, a5
	mv a5, zero
.p2align 2
label5:
	sh2add t0, a5, a4
pcrel2226:
	auipc t2, %pcrel_hi(__cmmc_fp_constant_pool)
	flw f15, 0(t0)
	addi t1, t2, %pcrel_lo(pcrel2226)
	flw f10, 0(t1)
	flw f11, 4(t1)
	fmul.s f0, f15, f10
	fmul.s f12, f12, f11
	fmul.s f2, f15, f11
	fadd.s f1, f0, f12
	flw f12, 8(t1)
	sh2add t1, a5, a3
	fadd.s f0, f1, f13
	fmul.s f1, f14, f12
	fadd.s f14, f0, f1
	fsw f14, 0(t1)
	flw f0, 4(t0)
	fmul.s f1, f0, f10
	fadd.s f3, f1, f2
	fmul.s f2, f0, f11
	fmul.s f1, f13, f12
	fadd.s f15, f3, f14
	fadd.s f13, f15, f1
	fsw f13, 4(t1)
	flw f15, 8(t0)
	fmul.s f1, f15, f10
	fadd.s f3, f1, f2
	fmul.s f1, f14, f12
	fadd.s f0, f3, f13
	fmul.s f3, f15, f11
	fadd.s f14, f0, f1
	fsw f14, 8(t1)
	flw f1, 12(t0)
	fmul.s f0, f1, f10
	fadd.s f2, f0, f3
	fmul.s f0, f13, f12
	fadd.s f15, f2, f14
	fmul.s f2, f1, f11
	fadd.s f13, f15, f0
	fsw f13, 12(t1)
	flw f0, 16(t0)
	fmul.s f3, f0, f11
	fmul.s f15, f0, f10
	fadd.s f1, f15, f2
	fmul.s f2, f14, f12
	fadd.s f15, f1, f13
	fadd.s f14, f15, f2
	fsw f14, 16(t1)
	flw f15, 20(t0)
	fmul.s f1, f15, f10
	fadd.s f2, f1, f3
	fmul.s f3, f15, f11
	fmul.s f1, f13, f12
	fadd.s f0, f2, f14
	fadd.s f13, f0, f1
	fsw f13, 20(t1)
	flw f0, 24(t0)
	fmul.s f1, f0, f10
	fadd.s f2, f1, f3
	fmul.s f3, f0, f11
	fmul.s f1, f14, f12
	fadd.s f15, f2, f13
	fadd.s f14, f15, f1
	fsw f14, 24(t1)
	flw f15, 28(t0)
	fmul.s f1, f15, f10
	fadd.s f2, f1, f3
	fmul.s f1, f13, f12
	fadd.s f0, f2, f14
	fmul.s f2, f15, f11
	fadd.s f13, f0, f1
	fsw f13, 28(t1)
	flw f0, 32(t0)
	fmul.s f1, f0, f10
	fadd.s f3, f1, f2
	fmul.s f2, f0, f11
	fmul.s f1, f14, f12
	fadd.s f15, f3, f13
	fmul.s f13, f13, f12
	fadd.s f14, f15, f1
	fsw f14, 32(t1)
	flw f1, 36(t0)
	fmul.s f15, f1, f10
	fadd.s f3, f15, f2
	fmul.s f2, f1, f11
	fadd.s f0, f3, f14
	fmul.s f14, f14, f12
	fadd.s f15, f0, f13
	fsw f15, 36(t1)
	flw f0, 40(t0)
	fmul.s f13, f0, f10
	fadd.s f3, f13, f2
	fadd.s f1, f3, f15
	fmul.s f15, f15, f12
	fmul.s f3, f0, f11
	fadd.s f13, f1, f14
	fsw f13, 40(t1)
	flw f1, 44(t0)
	fmul.s f14, f1, f10
	fmul.s f1, f1, f11
	fadd.s f2, f14, f3
	fadd.s f0, f2, f13
	fadd.s f14, f0, f15
	fsw f14, 44(t1)
	flw f15, 48(t0)
	fmul.s f3, f15, f11
	fmul.s f0, f15, f10
	fadd.s f2, f0, f1
	fmul.s f1, f13, f12
	fadd.s f0, f2, f14
	fadd.s f13, f0, f1
	fsw f13, 48(t1)
	flw f0, 52(t0)
	fmul.s f1, f0, f10
	fmul.s f0, f0, f11
	fadd.s f2, f1, f3
	fmul.s f1, f14, f12
	fadd.s f15, f2, f13
	fadd.s f14, f15, f1
	fsw f14, 52(t1)
	flw f1, 56(t0)
	fmul.s f15, f1, f10
	fadd.s f2, f15, f0
	fmul.s f0, f13, f12
	fmul.s f12, f14, f12
	fadd.s f15, f2, f14
	fadd.s f13, f15, f0
	fmul.s f0, f1, f11
	fsw f13, 56(t1)
	flw f15, 60(t0)
	li t0, 256
	fmul.s f10, f15, f10
	fadd.s f1, f10, f0
	fadd.s f11, f1, f13
	fadd.s f10, f11, f12
	fsw f10, 60(t1)
	addiw t1, a5, 16
	bge t1, t0, label10
	fmv.s f14, f13
	fmv.s f12, f15
	mv a5, t1
	fmv.s f13, f10
	j label5
.p2align 2
label10:
	sh2add t0, t1, a4
pcrel2227:
	auipc t3, %pcrel_hi(__cmmc_fp_constant_pool)
	addiw a5, a5, 28
	sh2add t1, t1, a3
	flw f0, 0(t0)
	addi t2, t3, %pcrel_lo(pcrel2227)
	flw f11, 0(t2)
	flw f12, 4(t2)
	fmul.s f14, f0, f11
	fmul.s f2, f15, f12
	fadd.s f1, f14, f2
	fmul.s f2, f0, f12
	flw f14, 8(t2)
	fadd.s f15, f1, f10
	fmul.s f1, f13, f14
	fadd.s f13, f15, f1
	fsw f13, 0(t1)
	flw f15, 4(t0)
	fmul.s f1, f15, f11
	fadd.s f3, f1, f2
	fmul.s f2, f15, f12
	fmul.s f1, f10, f14
	fadd.s f0, f3, f13
	fadd.s f10, f0, f1
	fsw f10, 4(t1)
	flw f0, 8(t0)
	fmul.s f1, f0, f11
	fadd.s f3, f1, f2
	fmul.s f1, f13, f14
	fadd.s f15, f3, f10
	fmul.s f3, f0, f12
	fadd.s f13, f15, f1
	fsw f13, 8(t1)
	flw f15, 12(t0)
	fmul.s f1, f15, f11
	fadd.s f2, f1, f3
	fmul.s f3, f15, f12
	fmul.s f1, f10, f14
	fadd.s f0, f2, f13
	fadd.s f10, f0, f1
	fsw f10, 12(t1)
	flw f0, 16(t0)
	fmul.s f1, f0, f11
	fadd.s f2, f1, f3
	fmul.s f3, f0, f12
	fmul.s f1, f13, f14
	fadd.s f15, f2, f10
	fadd.s f13, f15, f1
	fsw f13, 16(t1)
	flw f15, 20(t0)
	fmul.s f1, f15, f11
	fadd.s f2, f1, f3
	fmul.s f1, f10, f14
	fadd.s f0, f2, f13
	fmul.s f2, f15, f12
	fadd.s f10, f0, f1
	fsw f10, 20(t1)
	flw f0, 24(t0)
	fmul.s f1, f0, f11
	fadd.s f3, f1, f2
	fmul.s f1, f13, f14
	fadd.s f15, f3, f10
	fmul.s f3, f0, f12
	fadd.s f13, f15, f1
	fsw f13, 24(t1)
	flw f15, 28(t0)
	fmul.s f1, f15, f11
	fadd.s f2, f1, f3
	fmul.s f1, f10, f14
	fadd.s f0, f2, f13
	fmul.s f2, f15, f12
	fadd.s f10, f0, f1
	fsw f10, 28(t1)
	flw f0, 32(t0)
	fmul.s f1, f0, f11
	fadd.s f3, f1, f2
	fmul.s f1, f13, f14
	fadd.s f15, f3, f10
	fmul.s f3, f0, f12
	fadd.s f13, f15, f1
	fsw f13, 32(t1)
	flw f15, 36(t0)
	fmul.s f1, f15, f11
	fmul.s f15, f15, f12
	fadd.s f2, f1, f3
	fmul.s f1, f10, f14
	fadd.s f0, f2, f13
	fmul.s f13, f13, f14
	fadd.s f10, f0, f1
	fsw f10, 36(t1)
	flw f0, 40(t0)
	fmul.s f12, f0, f12
	fmul.s f1, f0, f11
	fadd.s f2, f1, f15
	fadd.s f1, f2, f10
	fadd.s f15, f1, f13
	fsw f15, 40(t1)
	flw f13, 44(t0)
	fmul.s f11, f13, f11
	fadd.s f0, f11, f12
	fmul.s f12, f10, f14
	fadd.s f11, f0, f15
	fadd.s f10, f11, f12
	fmv.s f12, f15
	fsw f10, 44(t1)
.p2align 2
label11:
	sh2add t0, a5, a4
pcrel2228:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	flw f11, 0(t0)
	addi t0, t1, %pcrel_lo(pcrel2228)
	flw f15, 0(t0)
	flw f0, 4(t0)
	fmul.s f14, f11, f15
	fmul.s f15, f13, f0
	fadd.s f14, f14, f15
	flw f15, 8(t0)
	sh2add t0, a5, a3
	fmul.s f12, f12, f15
	addiw a5, a5, 1
	fadd.s f13, f14, f10
	fadd.s f14, f13, f12
	fsw f14, 0(t0)
	li t0, 270
	blt a5, t0, label404
	addiw a2, a2, 1
	li a3, 512
	blt a2, a3, label4
	mv a2, zero
	blt zero, a3, label19
	li a3, 270
	blt zero, a3, label731
	li a4, 270
	blt zero, a4, label736
	li a3, 512
	blt zero, a3, label56
	j label63
.p2align 2
label404:
	fmv.s f13, f11
	fmv.s f12, f10
	fmv.s f10, f14
	j label11
.p2align 2
label19:
	li a4, 1080
	fmv.w.x f15, zero
	mulw a5, a2, a4
	fmv.s f12, f15
	fmv.s f13, f15
	fmv.s f14, f15
	add a4, s1, a5
	add a3, a1, a5
	li a5, 269
.p2align 2
label20:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t1, %pcrel_lo(label20)
	sh2add t1, a5, a4
	flw f10, 12(t0)
	flw f11, 16(t0)
	fmul.s f0, f15, f10
	fmul.s f12, f12, f11
	fmul.s f2, f15, f11
	fadd.s f1, f0, f12
	flw f12, 8(t0)
	sh2add t0, a5, a3
	fadd.s f0, f1, f13
	fmul.s f1, f14, f12
	fadd.s f14, f0, f1
	fsw f14, 0(t0)
	flw f0, 0(t1)
	fmul.s f1, f0, f10
	fadd.s f3, f1, f2
	fmul.s f2, f0, f11
	fmul.s f1, f13, f12
	fadd.s f15, f3, f14
	fadd.s f13, f15, f1
	fsw f13, -4(t0)
	flw f15, -4(t1)
	fmul.s f1, f15, f10
	fadd.s f3, f1, f2
	fmul.s f2, f15, f11
	fmul.s f1, f14, f12
	fadd.s f0, f3, f13
	fadd.s f14, f0, f1
	fsw f14, -8(t0)
	flw f0, -8(t1)
	fmul.s f1, f0, f10
	fadd.s f3, f1, f2
	fmul.s f2, f0, f11
	fmul.s f1, f13, f12
	fadd.s f15, f3, f14
	fadd.s f13, f15, f1
	fsw f13, -12(t0)
	flw f15, -12(t1)
	fmul.s f1, f15, f10
	fmul.s f15, f15, f11
	fadd.s f3, f1, f2
	fmul.s f1, f14, f12
	fadd.s f0, f3, f13
	fmul.s f13, f13, f12
	fadd.s f14, f0, f1
	fsw f14, -16(t0)
	flw f0, -16(t1)
	fmul.s f1, f0, f10
	fadd.s f2, f1, f15
	fadd.s f1, f2, f14
	fmul.s f14, f14, f12
	fmul.s f2, f0, f11
	fadd.s f15, f1, f13
	fsw f15, -20(t0)
	flw f1, -20(t1)
	fmul.s f13, f1, f10
	fadd.s f3, f13, f2
	fmul.s f2, f1, f11
	fadd.s f0, f3, f15
	fmul.s f15, f15, f12
	fadd.s f13, f0, f14
	fsw f13, -24(t0)
	flw f0, -24(t1)
	fmul.s f14, f0, f10
	fadd.s f3, f14, f2
	fmul.s f2, f0, f11
	fadd.s f1, f3, f13
	fmul.s f13, f13, f12
	fadd.s f14, f1, f15
	fsw f14, -28(t0)
	flw f1, -28(t1)
	fmul.s f15, f1, f10
	fadd.s f3, f15, f2
	fmul.s f2, f1, f11
	fadd.s f0, f3, f14
	fmul.s f14, f14, f12
	fadd.s f15, f0, f13
	fsw f15, -32(t0)
	flw f0, -32(t1)
	fmul.s f13, f0, f10
	fadd.s f3, f13, f2
	fadd.s f1, f3, f15
	fmul.s f15, f15, f12
	fmul.s f3, f0, f11
	fadd.s f13, f1, f14
	fsw f13, -36(t0)
	flw f1, -36(t1)
	fmul.s f14, f1, f10
	fmul.s f1, f1, f11
	fadd.s f2, f14, f3
	fadd.s f0, f2, f13
	fadd.s f14, f0, f15
	fsw f14, -40(t0)
	flw f15, -40(t1)
	fmul.s f3, f15, f11
	fmul.s f0, f15, f10
	fadd.s f2, f0, f1
	fmul.s f1, f13, f12
	fadd.s f0, f2, f14
	fadd.s f13, f0, f1
	fsw f13, -44(t0)
	flw f0, -44(t1)
	fmul.s f1, f0, f10
	fadd.s f2, f1, f3
	fmul.s f3, f0, f11
	fmul.s f1, f14, f12
	fadd.s f15, f2, f13
	fadd.s f14, f15, f1
	fsw f14, -48(t0)
	flw f15, -48(t1)
	fmul.s f1, f15, f10
	fadd.s f2, f1, f3
	fmul.s f3, f15, f11
	fmul.s f1, f13, f12
	fadd.s f0, f2, f14
	fadd.s f13, f0, f1
	fsw f13, -52(t0)
	flw f0, -52(t1)
	fmul.s f1, f0, f10
	fmul.s f0, f0, f11
	fadd.s f2, f1, f3
	fmul.s f1, f14, f12
	fmul.s f12, f13, f12
	fadd.s f15, f2, f13
	fadd.s f14, f15, f1
	fsw f14, -56(t0)
	flw f15, -56(t1)
	fmul.s f10, f15, f10
	fadd.s f11, f10, f0
	fadd.s f10, f11, f14
	fadd.s f13, f10, f12
	fsw f13, -60(t0)
	li t0, 13
	flw f0, -60(t1)
	addiw t1, a5, -16
	ble t1, t0, label26
	fmv.s f12, f15
	mv a5, t1
	fmv.s f15, f0
	j label20
.p2align 2
label26:
	auipc t2, %pcrel_hi(__cmmc_fp_constant_pool)
	addiw a5, a5, -28
	addi t0, t2, %pcrel_lo(label26)
	flw f10, 12(t0)
	flw f11, 16(t0)
	fmul.s f12, f0, f10
	fmul.s f1, f15, f11
	fmul.s f3, f0, f11
	fadd.s f2, f12, f1
	flw f12, 8(t0)
	sh2add t0, t1, a3
	fmul.s f1, f14, f12
	sh2add t1, t1, a4
	fadd.s f15, f2, f13
	fadd.s f14, f15, f1
	fsw f14, 0(t0)
	flw f15, 0(t1)
	fmul.s f1, f15, f10
	fadd.s f2, f1, f3
	fmul.s f1, f13, f12
	fadd.s f0, f2, f14
	fmul.s f2, f15, f11
	fadd.s f13, f0, f1
	fsw f13, -4(t0)
	flw f0, -4(t1)
	fmul.s f1, f0, f10
	fadd.s f3, f1, f2
	fmul.s f2, f0, f11
	fmul.s f1, f14, f12
	fadd.s f15, f3, f13
	fadd.s f14, f15, f1
	fsw f14, -8(t0)
	flw f15, -8(t1)
	fmul.s f1, f15, f10
	fadd.s f3, f1, f2
	fmul.s f1, f13, f12
	fadd.s f0, f3, f14
	fmul.s f3, f15, f11
	fadd.s f13, f0, f1
	fsw f13, -12(t0)
	flw f0, -12(t1)
	fmul.s f1, f0, f10
	fadd.s f2, f1, f3
	fmul.s f1, f14, f12
	fadd.s f15, f2, f13
	fmul.s f2, f0, f11
	fadd.s f14, f15, f1
	fsw f14, -16(t0)
	flw f1, -16(t1)
	fmul.s f15, f1, f10
	fadd.s f0, f15, f2
	fmul.s f2, f13, f12
	fadd.s f15, f0, f14
	fadd.s f13, f15, f2
	fmul.s f2, f1, f11
	fsw f13, -20(t0)
	flw f15, -20(t1)
	fmul.s f0, f15, f10
	fadd.s f1, f0, f2
	fmul.s f2, f14, f12
	fadd.s f0, f1, f13
	fmul.s f13, f13, f12
	fadd.s f14, f0, f2
	fmul.s f2, f15, f11
	fsw f14, -24(t0)
	flw f1, -24(t1)
	fmul.s f3, f1, f11
	fmul.s f0, f1, f10
	fadd.s f15, f0, f2
	fadd.s f0, f15, f14
	fmul.s f14, f14, f12
	fadd.s f15, f0, f13
	fsw f15, -28(t0)
	flw f0, -28(t1)
	fmul.s f13, f0, f10
	fadd.s f2, f13, f3
	fadd.s f1, f2, f15
	fmul.s f15, f15, f12
	fmul.s f2, f0, f11
	fadd.s f13, f1, f14
	fsw f13, -32(t0)
	flw f1, -32(t1)
	fmul.s f14, f1, f10
	fadd.s f3, f14, f2
	fmul.s f2, f1, f11
	fadd.s f0, f3, f13
	fadd.s f14, f0, f15
	fsw f14, -36(t0)
	flw f0, -36(t1)
	fmul.s f11, f0, f11
	fmul.s f15, f0, f10
	fadd.s f1, f15, f2
	fmul.s f2, f13, f12
	fmul.s f12, f14, f12
	fadd.s f15, f1, f14
	fadd.s f13, f15, f2
	fsw f13, -40(t0)
	flw f15, -40(t1)
	fmv.s f14, f15
	fmul.s f10, f15, f10
	fadd.s f0, f10, f11
	fadd.s f10, f0, f13
	fadd.s f11, f10, f12
	fmv.s f12, f13
	fsw f11, -44(t0)
	flw f10, -44(t1)
.p2align 2
label27:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t1, %pcrel_lo(label27)
	sh2add t1, a5, a3
	flw f0, 12(t0)
	flw f15, 16(t0)
	fmul.s f13, f10, f0
	fmul.s f0, f14, f15
	flw f15, 8(t0)
	sh2add t0, a5, a4
	fmul.s f12, f12, f15
	addiw a5, a5, -1
	fadd.s f14, f13, f0
	fadd.s f13, f14, f11
	fadd.s f13, f13, f12
	fsw f13, 0(t1)
	flw f15, 0(t0)
	bge a5, zero, label720
	addiw a2, a2, 1
	li a3, 512
	blt a2, a3, label19
	mv a2, zero
	blt zero, a3, label727
	li a3, 270
	blt zero, a3, label731
	li a4, 270
	blt zero, a4, label736
	li a3, 512
	blt zero, a3, label56
	j label63
.p2align 2
label720:
	fmv.s f14, f10
	fmv.s f12, f11
	fmv.s f10, f15
	fmv.s f11, f13
	j label27
