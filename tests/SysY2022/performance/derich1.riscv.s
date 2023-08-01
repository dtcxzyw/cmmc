.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	3191654481
	.4byte	1038821134
	.4byte	3206230588
	.4byte	3191992809
	.4byte	1038256634
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
.text
.p2align 2
.globl main
main:
	addi sp, sp, -24
pcrel909:
	auipc a1, %pcrel_hi(imgIn)
	sd ra, 0(sp)
	addi a0, a1, %pcrel_lo(pcrel909)
	sd s1, 8(sp)
	mv s1, a0
	sd s0, 16(sp)
	jal getfarray
	li a0, 156
	jal _sysy_starttime
	mv a4, zero
pcrel910:
	auipc a2, %pcrel_hi(my_y2)
pcrel911:
	auipc a1, %pcrel_hi(imgOut)
	addi s0, a1, %pcrel_lo(pcrel911)
pcrel912:
	auipc a1, %pcrel_hi(my_y1)
	addi a0, a1, %pcrel_lo(pcrel912)
	addi a1, a2, %pcrel_lo(pcrel910)
	li a2, 512
	blt zero, a2, label65
label87:
	mv a4, zero
	li a2, 512
	blt zero, a2, label6
	j label91
.p2align 2
label65:
	li a3, 1080
	fmv.w.x f12, zero
	mulw a5, a4, a3
	fmv.s f13, f12
	fmv.s f14, f12
	add a3, s1, a5
	add a2, a0, a5
	mv a5, zero
	j label66
.p2align 2
label805:
	addiw a4, a4, 1
	li a2, 512
	blt a4, a2, label65
	j label87
.p2align 2
label66:
	sh2add t0, a5, a3
pcrel913:
	auipc t2, %pcrel_hi(__cmmc_fp_constant_pool)
	flw f15, 0(t0)
	addi t1, t2, %pcrel_lo(pcrel913)
	flw f10, 12(t1)
	flw f11, 16(t1)
	fmul.s f0, f15, f10
	fmul.s f2, f15, f11
	fmul.s f12, f12, f11
	fadd.s f1, f0, f12
	flw f12, 8(t1)
	sh2add t1, a5, a2
	addiw a5, a5, 8
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
	flw f0, 12(t0)
	fmul.s f1, f0, f10
	fadd.s f2, f1, f3
	fmul.s f3, f0, f11
	fmul.s f1, f13, f12
	fadd.s f15, f2, f14
	fadd.s f13, f15, f1
	fsw f13, 12(t1)
	flw f15, 16(t0)
	fmul.s f1, f15, f10
	fadd.s f2, f1, f3
	fmul.s f3, f15, f11
	fmul.s f1, f14, f12
	fadd.s f0, f2, f13
	fadd.s f14, f0, f1
	fsw f14, 16(t1)
	flw f1, 20(t0)
	fmul.s f0, f1, f10
	fmul.s f1, f1, f11
	fadd.s f2, f0, f3
	fmul.s f0, f13, f12
	fadd.s f15, f2, f14
	fadd.s f13, f15, f0
	fsw f13, 20(t1)
	flw f0, 24(t0)
	fmul.s f15, f0, f10
	fmul.s f0, f0, f11
	fadd.s f2, f15, f1
	fmul.s f1, f14, f12
	fmul.s f12, f13, f12
	fadd.s f15, f2, f13
	fadd.s f14, f15, f1
	fsw f14, 24(t1)
	flw f15, 28(t0)
	li t0, 262
	fmul.s f10, f15, f10
	fadd.s f11, f10, f0
	fadd.s f10, f11, f14
	fadd.s f13, f10, f12
	fsw f13, 28(t1)
	bge a5, t0, label71
	fmv.s f12, f15
	j label66
label91:
	mv a5, zero
	j label20
.p2align 2
label6:
	li a3, 1080
	fmv.w.x f14, zero
	mulw a5, a4, a3
	fmv.s f12, f14
	fmv.s f13, f14
	fmv.s f15, f14
	add a3, s1, a5
	add a2, a1, a5
	li a5, 269
.p2align 2
label7:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t1, %pcrel_lo(label7)
	sh2add t1, a5, a3
	flw f10, 0(t0)
	flw f11, 4(t0)
	fmul.s f0, f14, f10
	fmul.s f3, f14, f11
	fmul.s f12, f12, f11
	fadd.s f1, f0, f12
	flw f12, 8(t0)
	sh2add t0, a5, a2
	addiw a5, a5, -8
	fadd.s f0, f1, f13
	fmul.s f1, f15, f12
	fadd.s f15, f0, f1
	fsw f15, 0(t0)
	flw f1, 0(t1)
	fmul.s f0, f1, f10
	fadd.s f2, f0, f3
	fmul.s f0, f13, f12
	fadd.s f14, f2, f15
	fmul.s f15, f15, f12
	fmul.s f2, f1, f11
	fadd.s f13, f14, f0
	fsw f13, -4(t0)
	flw f0, -4(t1)
	fmul.s f14, f0, f10
	fadd.s f3, f14, f2
	fadd.s f1, f3, f13
	fmul.s f3, f0, f11
	fadd.s f14, f1, f15
	fsw f14, -8(t0)
	flw f15, -8(t1)
	fmul.s f1, f15, f10
	fadd.s f2, f1, f3
	fmul.s f3, f15, f11
	fmul.s f1, f13, f12
	fadd.s f0, f2, f14
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
	flw f15, -16(t1)
	fmul.s f1, f15, f10
	fmul.s f15, f15, f11
	fadd.s f3, f1, f2
	fmul.s f1, f13, f12
	fadd.s f0, f3, f14
	fmul.s f14, f14, f12
	fadd.s f13, f0, f1
	fmul.s f12, f13, f12
	fsw f13, -20(t0)
	flw f0, -20(t1)
	fmul.s f1, f0, f10
	fmul.s f0, f0, f11
	fadd.s f2, f1, f15
	fadd.s f1, f2, f13
	fadd.s f15, f1, f14
	fsw f15, -24(t0)
	flw f14, -24(t1)
	fmul.s f10, f14, f10
	fadd.s f11, f10, f0
	fadd.s f10, f11, f15
	fadd.s f13, f10, f12
	fsw f13, -28(t0)
	li t0, 7
	flw f10, -28(t1)
	ble a5, t0, label13
	fmv.s f12, f14
	fmv.s f14, f10
	j label7
.p2align 2
label209:
	addiw a4, a4, 1
	li a2, 512
	blt a4, a2, label6
	j label91
label20:
	li a3, 512
	blt a5, a3, label59
label216:
	mv a2, zero
	li a3, 270
	blt zero, a3, label221
	j label220
.p2align 2
label59:
	li a3, 1080
	mv t0, zero
	mulw a4, a5, a3
	add a3, a0, a4
	add a2, s0, a4
	add a4, a1, a4
.p2align 2
label60:
	sh2add t1, t0, a3
	sh2add t2, t0, a4
	flw f10, 0(t1)
	sh2add t3, t0, a2
	flw f11, 0(t2)
	addiw t0, t0, 8
	fadd.s f10, f10, f11
	fsw f10, 0(t3)
	flw f10, 4(t1)
	flw f11, 4(t2)
	fadd.s f12, f10, f11
	fsw f12, 4(t3)
	flw f10, 8(t1)
	flw f12, 8(t2)
	fadd.s f11, f10, f12
	fsw f11, 8(t3)
	flw f10, 12(t1)
	flw f11, 12(t2)
	fadd.s f12, f10, f11
	fsw f12, 12(t3)
	flw f10, 16(t1)
	flw f11, 16(t2)
	fadd.s f12, f10, f11
	fsw f12, 16(t3)
	flw f10, 20(t1)
	flw f12, 20(t2)
	fadd.s f11, f10, f12
	fsw f11, 20(t3)
	flw f10, 24(t1)
	flw f12, 24(t2)
	fadd.s f11, f10, f12
	fsw f11, 24(t3)
	flw f10, 28(t1)
	li t1, 262
	flw f12, 28(t2)
	fadd.s f11, f10, f12
	fsw f11, 28(t3)
	blt t0, t1, label60
.p2align 2
label62:
	sh2add t1, t0, a3
	sh2add t2, t0, a4
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t2)
	addiw t0, t0, 1
	fadd.s f10, f10, f11
	fsw f10, 0(t1)
	li t1, 270
	blt t0, t1, label62
	addiw a5, a5, 1
	li a3, 512
	blt a5, a3, label59
	j label216
.p2align 2
label13:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t1, %pcrel_lo(label13)
	sh2add t1, a5, a2
	flw f0, 0(t0)
	flw f12, 4(t0)
	fmul.s f11, f10, f0
	fmul.s f0, f14, f12
	flw f12, 8(t0)
	sh2add t0, a5, a3
	addiw a5, a5, -1
	fadd.s f14, f11, f0
	fadd.s f11, f14, f13
	fmul.s f14, f15, f12
	fadd.s f11, f11, f14
	fsw f11, 0(t1)
	flw f12, 0(t0)
	blt a5, zero, label209
	fmv.s f14, f10
	fmv.s f15, f13
	fmv.s f10, f12
	fmv.s f13, f11
	j label13
label220:
	mv a2, zero
	j label35
.p2align 2
label221:
	fmv.w.x f0, zero
	mv a3, zero
	fmv.s f13, f0
	fmv.s f14, f0
.p2align 2
label24:
	li t0, 1080
pcrel914:
	auipc t2, %pcrel_hi(__cmmc_fp_constant_pool)
	mulw a5, a3, t0
	addiw a3, a3, 8
	slli t0, t0, 1
	add a4, s0, a5
	add a5, a0, a5
	sh2add t1, a2, a4
	flw f15, 0(t1)
	addi t1, t2, %pcrel_lo(pcrel914)
	addi t2, a4, 1080
	flw f10, 12(t1)
	flw f11, 16(t1)
	fmul.s f12, f15, f10
	fmul.s f2, f0, f11
	fadd.s f1, f12, f2
	fmul.s f2, f15, f11
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
	fmul.s f0, f0, f11
	add t1, a4, t0
	fadd.s f3, f1, f2
	fmul.s f1, f13, f12
	fadd.s f15, f3, f14
	fadd.s f13, f15, f1
	fsw f13, 0(t2)
	sh2add t2, a2, t1
	add t1, a5, t0
	flw f1, 0(t2)
	addi t0, t0, 1080
	sh2add t2, a2, t1
	fmul.s f15, f1, f10
	fadd.s f2, f15, f0
	fmul.s f0, f14, f12
	fadd.s f15, f2, f13
	fmul.s f2, f1, f11
	fadd.s f14, f15, f0
	fsw f14, 0(t2)
	add t2, a4, t0
	sh2add t1, a2, t2
	add t2, a5, t0
	flw f15, 0(t1)
	addi t0, t0, 1080
	sh2add t1, a2, t2
	fmul.s f0, f15, f10
	fadd.s f1, f0, f2
	fmul.s f2, f13, f12
	fadd.s f0, f1, f14
	fadd.s f13, f0, f2
	fmul.s f2, f15, f11
	fsw f13, 0(t1)
	add t1, a4, t0
	sh2add t2, a2, t1
	flw f1, 0(t2)
	add t2, a5, t0
	fmul.s f0, f1, f10
	addi t0, t0, 1080
	sh2add t1, a2, t2
	add t2, a4, t0
	fadd.s f3, f0, f2
	fmul.s f2, f1, f11
	fmul.s f0, f14, f12
	fadd.s f15, f3, f13
	fadd.s f14, f15, f0
	fsw f14, 0(t1)
	sh2add t1, a2, t2
	flw f0, 0(t1)
	add t1, a5, t0
	fmul.s f15, f0, f10
	addi t0, t0, 1080
	sh2add t2, a2, t1
	fadd.s f1, f15, f2
	fmul.s f2, f13, f12
	fadd.s f15, f1, f14
	fadd.s f13, f15, f2
	fmul.s f2, f0, f11
	fsw f13, 0(t2)
	add t2, a4, t0
	sh2add t1, a2, t2
	add t2, a5, t0
	flw f15, 0(t1)
	addi t0, t0, 1080
	sh2add t1, a2, t2
	add a4, a4, t0
	fmul.s f11, f15, f11
	fmul.s f1, f15, f10
	fadd.s f3, f1, f2
	fmul.s f1, f14, f12
	fadd.s f0, f3, f13
	fadd.s f14, f0, f1
	fsw f14, 0(t1)
	sh2add t1, a2, a4
	add a4, a5, t0
	flw f0, 0(t1)
	sh2add a5, a2, a4
	li a4, 504
	fmul.s f10, f0, f10
	fadd.s f15, f10, f11
	fmul.s f11, f13, f12
	fadd.s f10, f15, f14
	fadd.s f13, f10, f11
	fsw f13, 0(a5)
	blt a3, a4, label24
	j label29
.p2align 2
label370:
	addiw a2, a2, 1
	li a3, 270
	blt a2, a3, label221
	j label220
label35:
	li a3, 270
	blt a2, a3, label377
label376:
	mv a5, zero
	j label37
.p2align 2
label377:
	fmv.w.x f15, zero
	li a3, 511
	fmv.s f12, f15
	fmv.s f13, f15
	fmv.s f14, f15
	j label46
label37:
	li a2, 512
	blt a5, a2, label39
	j label45
.p2align 2
label46:
	auipc a5, %pcrel_hi(__cmmc_fp_constant_pool)
	li t0, 1080
	addi a4, a5, %pcrel_lo(label46)
	flw f10, 0(a4)
	flw f11, 4(a4)
	fmul.s f0, f15, f10
	fmul.s f2, f15, f11
	fmul.s f12, f12, f11
	fadd.s f1, f0, f12
	flw f12, 8(a4)
	mulw a4, a3, t0
	addiw a3, a3, -8
	add a5, a1, a4
	add a4, s0, a4
	sh2add t0, a2, a5
	fadd.s f0, f1, f13
	fmul.s f13, f13, f12
	fmul.s f1, f14, f12
	fadd.s f14, f0, f1
	fsw f14, 0(t0)
	sh2add t0, a2, a4
	flw f1, 0(t0)
	addi t0, a5, -1080
	fmul.s f0, f1, f10
	sh2add t1, a2, t0
	addi t0, a4, -1080
	fadd.s f15, f0, f2
	fmul.s f2, f1, f11
	fadd.s f0, f15, f14
	fmul.s f14, f14, f12
	fadd.s f15, f0, f13
	fsw f15, 0(t1)
	sh2add t1, a2, t0
	li t0, -2160
	flw f0, 0(t1)
	add t2, a4, t0
	add t1, a5, t0
	fmul.s f13, f0, f10
	addi t0, t0, -1080
	sh2add t3, a2, t1
	sh2add t1, a2, t2
	add t2, a5, t0
	fadd.s f3, f13, f2
	fadd.s f1, f3, f15
	fmul.s f3, f0, f11
	fmul.s f15, f15, f12
	fadd.s f13, f1, f14
	fsw f13, 0(t3)
	flw f1, 0(t1)
	sh2add t1, a2, t2
	fmul.s f14, f1, f10
	add t2, a4, t0
	addi t0, t0, -1080
	fadd.s f2, f14, f3
	fmul.s f3, f1, f11
	fadd.s f0, f2, f13
	fmul.s f13, f13, f12
	fadd.s f14, f0, f15
	fsw f14, 0(t1)
	sh2add t1, a2, t2
	flw f0, 0(t1)
	add t1, a5, t0
	fmul.s f15, f0, f10
	sh2add t2, a2, t1
	add t1, a4, t0
	addi t0, t0, -1080
	fadd.s f2, f15, f3
	fadd.s f1, f2, f14
	fmul.s f2, f0, f11
	fmul.s f14, f14, f12
	fadd.s f15, f1, f13
	fsw f15, 0(t2)
	sh2add t2, a2, t1
	add t1, a5, t0
	flw f1, 0(t2)
	sh2add t2, a2, t1
	fmul.s f13, f1, f10
	add t1, a4, t0
	addi t0, t0, -1080
	fadd.s f3, f13, f2
	fmul.s f2, f1, f11
	fadd.s f0, f3, f15
	fmul.s f15, f15, f12
	fadd.s f13, f0, f14
	fsw f13, 0(t2)
	sh2add t2, a2, t1
	flw f0, 0(t2)
	add t2, a5, t0
	fmul.s f14, f0, f10
	fmul.s f11, f0, f11
	sh2add t1, a2, t2
	add t2, a4, t0
	addi t0, t0, -1080
	fadd.s f3, f14, f2
	add a4, a4, t0
	add a5, a5, t0
	fadd.s f1, f3, f13
	fadd.s f14, f1, f15
	fsw f14, 0(t1)
	sh2add t1, a2, t2
	flw f15, 0(t1)
	sh2add t1, a2, a5
	fmul.s f10, f15, f10
	sh2add a5, a2, a4
	li a4, 7
	fadd.s f0, f10, f11
	fmul.s f11, f13, f12
	fadd.s f10, f0, f14
	fadd.s f13, f10, f11
	fsw f13, 0(t1)
	flw f10, 0(a5)
	ble a3, a4, label52
	fmv.s f12, f15
	fmv.s f15, f10
	j label46
.p2align 2
label607:
	addiw a2, a2, 1
	li a3, 270
	blt a2, a3, label377
	j label376
.p2align 2
label29:
	li t0, 1080
pcrel915:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	mulw a4, a3, t0
	addiw a3, a3, 1
	add a5, s0, a4
	sh2add t0, a2, a5
	addi a5, t1, %pcrel_lo(pcrel915)
	flw f10, 0(t0)
	flw f12, 12(a5)
	flw f1, 16(a5)
	fmul.s f11, f10, f12
	fmul.s f12, f0, f1
	fadd.s f15, f11, f12
	flw f12, 8(a5)
	add a5, a0, a4
	fmul.s f14, f14, f12
	sh2add a4, a2, a5
	fadd.s f11, f15, f13
	fadd.s f11, f11, f14
	fsw f11, 0(a4)
	li a4, 512
	bge a3, a4, label370
	fmv.s f0, f10
	fmv.s f14, f13
	fmv.s f13, f11
	j label29
.p2align 2
label52:
	auipc a5, %pcrel_hi(__cmmc_fp_constant_pool)
	li t0, 1080
	addi a4, a5, %pcrel_lo(label52)
	flw f12, 0(a4)
	flw f0, 4(a4)
	fmul.s f11, f10, f12
	fmul.s f15, f15, f0
	fadd.s f12, f11, f15
	flw f15, 8(a4)
	mulw a4, a3, t0
	addiw a3, a3, -1
	add a5, a1, a4
	add a4, s0, a4
	sh2add t0, a2, a5
	fadd.s f11, f12, f13
	sh2add a5, a2, a4
	fmul.s f12, f14, f15
	fadd.s f11, f11, f12
	fsw f11, 0(t0)
	flw f12, 0(a5)
	blt a3, zero, label607
	fmv.s f15, f10
	fmv.s f14, f13
	fmv.s f10, f12
	fmv.s f13, f11
	j label52
.p2align 2
label39:
	li a3, 1080
	mv t0, zero
	mulw a4, a5, a3
	add a3, a0, a4
	add a2, s0, a4
	add a4, a1, a4
.p2align 2
label40:
	sh2add t1, t0, a3
	sh2add t2, t0, a4
	flw f10, 0(t1)
	sh2add t3, t0, a2
	flw f11, 0(t2)
	addiw t0, t0, 8
	fadd.s f10, f10, f11
	fsw f10, 0(t3)
	flw f10, 4(t1)
	flw f11, 4(t2)
	fadd.s f12, f10, f11
	fsw f12, 4(t3)
	flw f10, 8(t1)
	flw f12, 8(t2)
	fadd.s f11, f10, f12
	fsw f11, 8(t3)
	flw f10, 12(t1)
	flw f12, 12(t2)
	fadd.s f11, f10, f12
	fsw f11, 12(t3)
	flw f10, 16(t1)
	flw f11, 16(t2)
	fadd.s f12, f10, f11
	fsw f12, 16(t3)
	flw f10, 20(t1)
	flw f11, 20(t2)
	fadd.s f12, f10, f11
	fsw f12, 20(t3)
	flw f10, 24(t1)
	flw f12, 24(t2)
	fadd.s f11, f10, f12
	fsw f11, 24(t3)
	flw f10, 28(t1)
	li t1, 262
	flw f12, 28(t2)
	fadd.s f11, f10, f12
	fsw f11, 28(t3)
	blt t0, t1, label40
.p2align 2
label42:
	sh2add t1, t0, a3
	sh2add t2, t0, a4
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t2)
	addiw t0, t0, 1
	fadd.s f10, f10, f11
	fsw f10, 0(t1)
	li t1, 270
	blt t0, t1, label42
	addiw a5, a5, 1
	li a2, 512
	blt a5, a2, label39
label45:
	li a0, 158
	jal _sysy_stoptime
	mv a1, s0
	li a0, 138240
	jal putfarray
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
.p2align 2
label71:
	sh2add t0, a5, a3
pcrel916:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	flw f10, 0(t0)
	addi t0, t1, %pcrel_lo(pcrel916)
	flw f0, 12(t0)
	flw f12, 16(t0)
	fmul.s f11, f10, f0
	fmul.s f0, f15, f12
	fadd.s f15, f11, f0
	flw f0, 8(t0)
	sh2add t0, a5, a2
	fmul.s f12, f14, f0
	addiw a5, a5, 1
	fadd.s f11, f15, f13
	fadd.s f11, f11, f12
	fsw f11, 0(t0)
	li t0, 270
	bge a5, t0, label805
	fmv.s f15, f10
	fmv.s f14, f13
	fmv.s f13, f11
	j label71
