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
pcrel724:
	auipc a1, %pcrel_hi(imgIn)
	sd s1, 16(sp)
	addi a0, a1, %pcrel_lo(pcrel724)
	sd s0, 8(sp)
	mv s1, a0
	sd ra, 0(sp)
	jal getfarray
	li a0, 156
	jal _sysy_starttime
pcrel725:
	auipc a2, %pcrel_hi(my_y2)
pcrel726:
	auipc a1, %pcrel_hi(imgOut)
	addi s0, a1, %pcrel_lo(pcrel726)
pcrel727:
	auipc a1, %pcrel_hi(my_y1)
	addi a0, a1, %pcrel_lo(pcrel727)
	addi a1, a2, %pcrel_lo(pcrel725)
	mv a2, zero
	li a3, 512
	blt zero, a3, label4
	li a3, 270
	blt zero, a3, label325
	li a4, 270
	blt zero, a4, label330
	li a4, 512
	blt zero, a4, label335
	j label46
.p2align 2
label18:
	li a4, 1080
	fmv.w.x f14, zero
	mulw a5, a2, a4
	fmv.s f15, f14
	fmv.s f13, f14
	fmv.s f0, f14
	add a4, s1, a5
	add a3, a1, a5
	li a5, 269
.p2align 2
label19:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t1, %pcrel_lo(label19)
	sh2add t1, a5, a4
	flw f10, 12(t0)
	flw f11, 16(t0)
	fmul.s f12, f14, f10
	fmul.s f1, f15, f11
	fmul.s f14, f14, f11
	fadd.s f2, f12, f1
	flw f12, 8(t0)
	sh2add t0, a5, a3
	fmul.s f0, f0, f12
	fadd.s f15, f2, f13
	fmul.s f13, f13, f12
	fadd.s f15, f15, f0
	fsw f15, 0(t0)
	flw f0, 0(t1)
	fmul.s f1, f0, f10
	fadd.s f2, f1, f14
	fadd.s f1, f2, f15
	fmul.s f15, f15, f12
	fmul.s f2, f0, f11
	fadd.s f14, f1, f13
	fmul.s f12, f14, f12
	fsw f14, -4(t0)
	flw f1, -4(t1)
	fmul.s f11, f1, f11
	fmul.s f13, f1, f10
	fadd.s f3, f13, f2
	fadd.s f0, f3, f14
	fadd.s f13, f0, f15
	fsw f13, -8(t0)
	flw f15, -8(t1)
	fmul.s f10, f15, f10
	fadd.s f0, f10, f11
	fadd.s f10, f0, f13
	fadd.s f11, f10, f12
	fsw f11, -12(t0)
	addiw t0, a5, -8
	flw f10, -12(t1)
	addiw a5, a5, -4
	blt t0, zero, label25
	fmv.s f0, f13
	fmv.s f14, f10
	fmv.s f13, f11
	j label19
.p2align 2
label25:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t1, %pcrel_lo(label25)
	sh2add t1, a5, a4
	flw f14, 12(t0)
	flw f0, 16(t0)
	fmul.s f12, f10, f14
	fmul.s f15, f15, f0
	fadd.s f14, f12, f15
	flw f15, 8(t0)
	sh2add t0, a5, a3
	fmul.s f13, f13, f15
	addiw a5, a5, -1
	fadd.s f12, f14, f11
	fadd.s f12, f12, f13
	fsw f12, 0(t0)
	flw f14, 0(t1)
	bge a5, zero, label260
	addiw a2, a2, 1
	li a3, 512
	blt a2, a3, label18
	mv a2, zero
	blt zero, a3, label34
	li a3, 270
	blt zero, a3, label325
	li a4, 270
	blt zero, a4, label330
	li a4, 512
	blt zero, a4, label335
	j label46
.p2align 2
label260:
	fmv.s f15, f10
	fmv.s f13, f11
	fmv.s f10, f14
	fmv.s f11, f12
	j label25
.p2align 2
label4:
	li a4, 1080
	fmv.w.x f14, zero
	mulw a5, a2, a4
	fmv.s f13, f14
	fmv.s f0, f14
	add a4, s1, a5
	add a3, a0, a5
	mv a5, zero
.p2align 2
label5:
	sh2add t0, a5, a4
pcrel728:
	auipc t2, %pcrel_hi(__cmmc_fp_constant_pool)
	flw f15, 0(t0)
	addi t1, t2, %pcrel_lo(pcrel728)
	flw f10, 0(t1)
	flw f11, 4(t1)
	fmul.s f12, f15, f10
	fmul.s f2, f14, f11
	fmul.s f15, f15, f11
	fadd.s f1, f12, f2
	flw f12, 8(t1)
	sh2add t1, a5, a3
	fmul.s f0, f0, f12
	fadd.s f14, f1, f13
	fmul.s f13, f13, f12
	fadd.s f14, f14, f0
	fsw f14, 0(t1)
	flw f0, 4(t0)
	fmul.s f3, f0, f11
	fmul.s f1, f0, f10
	fadd.s f2, f1, f15
	fadd.s f1, f2, f14
	fmul.s f14, f14, f12
	fadd.s f15, f1, f13
	fmul.s f12, f15, f12
	fsw f15, 4(t1)
	flw f1, 8(t0)
	fmul.s f13, f1, f10
	fmul.s f1, f1, f11
	fadd.s f2, f13, f3
	fadd.s f0, f2, f15
	fadd.s f13, f0, f14
	fsw f13, 8(t1)
	flw f14, 12(t0)
	addiw t0, a5, 8
	fmul.s f10, f14, f10
	addiw a5, a5, 4
	fadd.s f0, f10, f1
	fadd.s f11, f0, f13
	fadd.s f10, f11, f12
	fsw f10, 12(t1)
	li t1, 270
	bge t0, t1, label10
	fmv.s f0, f13
	fmv.s f13, f10
	j label5
.p2align 2
label10:
	sh2add t0, a5, a4
pcrel729:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	flw f11, 0(t0)
	addi t0, t1, %pcrel_lo(pcrel729)
	flw f15, 0(t0)
	flw f0, 4(t0)
	fmul.s f12, f11, f15
	fmul.s f14, f14, f0
	fadd.s f15, f12, f14
	flw f14, 8(t0)
	sh2add t0, a5, a3
	fmul.s f13, f13, f14
	addiw a5, a5, 1
	fadd.s f12, f15, f10
	fadd.s f12, f12, f13
	fsw f12, 0(t0)
	li t0, 270
	blt a5, t0, label171
	addiw a2, a2, 1
	li a3, 512
	blt a2, a3, label4
	mv a2, zero
	blt zero, a3, label18
	li a3, 270
	blt zero, a3, label325
	li a4, 270
	blt zero, a4, label330
	li a4, 512
	blt zero, a4, label335
	j label46
.p2align 2
label171:
	fmv.s f14, f11
	fmv.s f13, f10
	fmv.s f10, f12
	j label10
.p2align 2
label330:
	fmv.w.x f15, zero
	li a3, 511
	fmv.s f14, f15
	fmv.s f13, f15
	fmv.s f0, f15
	j label53
label335:
	li a4, 1080
	mv t0, zero
	mulw a5, a2, a4
	add a4, a0, a5
	add a3, s0, a5
	add a5, a1, a5
	j label48
.p2align 2
label53:
	auipc a5, %pcrel_hi(__cmmc_fp_constant_pool)
	li t0, 1080
	addi a4, a5, %pcrel_lo(label53)
	mulw a5, a3, t0
	flw f10, 12(a4)
	flw f11, 16(a4)
	fmul.s f12, f15, f10
	fmul.s f1, f14, f11
	fadd.s f2, f12, f1
	flw f12, 8(a4)
	add a4, a1, a5
	fmul.s f0, f0, f12
	addi t1, a4, -1080
	add a5, s0, a5
	sh2add t0, a2, a4
	fadd.s f14, f2, f13
	fmul.s f13, f13, f12
	fmul.s f2, f15, f11
	fadd.s f14, f14, f0
	fsw f14, 0(t0)
	sh2add t0, a2, a5
	flw f1, 0(t0)
	sh2add t0, a2, t1
	fmul.s f3, f1, f11
	addi t1, a5, -1080
	fmul.s f0, f1, f10
	fadd.s f15, f0, f2
	fadd.s f0, f15, f14
	fmul.s f14, f14, f12
	fadd.s f15, f0, f13
	fmul.s f12, f15, f12
	fsw f15, 0(t0)
	sh2add t0, a2, t1
	flw f0, 0(t0)
	li t0, -2160
	fmul.s f13, f0, f10
	add t1, a4, t0
	fmul.s f0, f0, f11
	sh2add t2, a2, t1
	add t1, a5, t0
	addi t0, t0, -1080
	fadd.s f2, f13, f3
	add a4, a4, t0
	fadd.s f1, f2, f15
	fadd.s f13, f1, f14
	fsw f13, 0(t2)
	sh2add t2, a2, t1
	sh2add t1, a2, a4
	flw f14, 0(t2)
	add a4, a5, t0
	fmul.s f10, f14, f10
	sh2add a5, a2, a4
	addiw a4, a3, -8
	addiw a3, a3, -4
	fadd.s f1, f10, f0
	fadd.s f11, f1, f13
	fadd.s f10, f11, f12
	fsw f10, 0(t1)
	flw f11, 0(a5)
	blt a4, zero, label59
	fmv.s f0, f13
	fmv.s f15, f11
	fmv.s f13, f10
	j label53
.p2align 2
label59:
	auipc a5, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a5, %pcrel_lo(label59)
	li a5, 1080
	flw f15, 12(a4)
	flw f0, 16(a4)
	fmul.s f12, f11, f15
	fmul.s f14, f14, f0
	fadd.s f15, f12, f14
	flw f14, 8(a4)
	mulw a4, a3, a5
	fmul.s f13, f13, f14
	addiw a3, a3, -1
	add t0, a1, a4
	fadd.s f12, f15, f10
	sh2add a5, a2, t0
	add t0, s0, a4
	sh2add a4, a2, t0
	fadd.s f12, f12, f13
	fsw f12, 0(a5)
	flw f15, 0(a4)
	bge a3, zero, label487
	addiw a2, a2, 1
	li a4, 270
	blt a2, a4, label330
	mv a2, zero
	li a4, 512
	blt zero, a4, label335
	j label46
.p2align 2
label487:
	fmv.s f14, f11
	fmv.s f13, f10
	fmv.s f11, f15
	fmv.s f10, f12
	j label59
.p2align 2
label325:
	fmv.w.x f12, zero
	mv a3, zero
	fmv.s f13, f12
	fmv.s f14, f12
	j label66
label46:
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
label66:
	li t0, 1080
pcrel730:
	auipc t2, %pcrel_hi(__cmmc_fp_constant_pool)
	mulw a5, a3, t0
	slli t0, t0, 1
	add a4, s0, a5
	add a5, a0, a5
	sh2add t1, a2, a4
	flw f15, 0(t1)
	addi t1, t2, %pcrel_lo(pcrel730)
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
	flw f1, 0(t1)
	addi t1, a5, 1080
	fmul.s f0, f1, f10
	sh2add t2, a2, t1
	add t1, a4, t0
	fadd.s f2, f0, f3
	fmul.s f0, f13, f12
	fadd.s f15, f2, f14
	fmul.s f2, f1, f11
	fadd.s f13, f15, f0
	fsw f13, 0(t2)
	sh2add t2, a2, t1
	flw f0, 0(t2)
	add t2, a5, t0
	fmul.s f15, f0, f10
	addi t0, t0, 1080
	sh2add t1, a2, t2
	fmul.s f0, f0, f11
	fadd.s f1, f15, f2
	fmul.s f2, f14, f12
	fmul.s f12, f13, f12
	fadd.s f15, f1, f13
	fadd.s f14, f15, f2
	fsw f14, 0(t1)
	add t1, a4, t0
	sh2add a4, a2, t1
	flw f15, 0(a4)
	add a4, a5, t0
	fmul.s f10, f15, f10
	sh2add a5, a2, a4
	addiw a4, a3, 8
	addiw a3, a3, 4
	fadd.s f1, f10, f0
	fadd.s f11, f1, f14
	fadd.s f10, f11, f12
	fsw f10, 0(a5)
	li a5, 512
	bge a4, a5, label71
	fmv.s f13, f10
	fmv.s f12, f15
	j label66
.p2align 2
label71:
	li a5, 1080
	mulw a4, a3, a5
	addiw a3, a3, 1
	add t0, s0, a4
	sh2add a5, a2, t0
pcrel731:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	flw f11, 0(a5)
	addi a5, t0, %pcrel_lo(pcrel731)
	flw f0, 0(a5)
	flw f13, 4(a5)
	fmul.s f12, f11, f0
	fmul.s f15, f15, f13
	fadd.s f0, f12, f15
	flw f15, 8(a5)
	add a5, a0, a4
	fmul.s f13, f14, f15
	sh2add a4, a2, a5
	fadd.s f12, f0, f10
	fadd.s f12, f12, f13
	fsw f12, 0(a4)
	li a4, 512
	blt a3, a4, label588
	addiw a2, a2, 1
	li a3, 270
	blt a2, a3, label325
	mv a2, zero
	li a4, 270
	blt zero, a4, label330
	li a4, 512
	blt zero, a4, label335
	j label46
.p2align 2
label588:
	fmv.s f15, f11
	fmv.s f14, f10
	fmv.s f10, f12
	j label71
.p2align 2
label48:
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
	addiw t1, t0, 8
	flw f11, 12(t2)
	addiw t0, t0, 4
	li t2, 270
	fadd.s f12, f10, f11
	fsw f12, 12(t3)
	blt t1, t2, label48
	mv t1, t0
	sh2add t2, t0, a4
	sh2add t0, t0, a5
	flw f10, 0(t2)
	flw f11, 0(t0)
	sh2add t0, t1, a3
	fadd.s f10, f10, f11
	addiw t1, t1, 1
	fsw f10, 0(t0)
	li t0, 270
	blt t1, t0, label50
	addiw a2, a2, 1
	li a4, 512
	blt a2, a4, label335
	j label46
.p2align 2
label50:
	sh2add t2, t1, a4
	sh2add t0, t1, a5
	flw f10, 0(t2)
	flw f11, 0(t0)
	sh2add t0, t1, a3
	fadd.s f10, f10, f11
	addiw t1, t1, 1
	fsw f10, 0(t0)
	li t0, 270
	blt t1, t0, label50
	addiw a2, a2, 1
	li a4, 512
	blt a2, a4, label335
	j label46
.p2align 2
label34:
	li a4, 1080
	mv t0, zero
	mulw a5, a2, a4
	add a4, a0, a5
	add a3, s0, a5
	add a5, a1, a5
.p2align 2
label35:
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
	flw f12, 8(t2)
	fadd.s f11, f10, f12
	fsw f11, 8(t3)
	flw f10, 12(t1)
	addiw t1, t0, 8
	flw f12, 12(t2)
	addiw t0, t0, 4
	li t2, 270
	fadd.s f11, f10, f12
	fsw f11, 12(t3)
	blt t1, t2, label35
	mv t1, t0
	sh2add t2, t0, a4
	sh2add t0, t0, a5
	flw f10, 0(t2)
	flw f11, 0(t0)
	sh2add t0, t1, a3
	fadd.s f10, f10, f11
	addiw t1, t1, 1
	fsw f10, 0(t0)
	li t0, 270
	blt t1, t0, label37
	addiw a2, a2, 1
	li a3, 512
	blt a2, a3, label34
	mv a2, zero
	li a3, 270
	blt zero, a3, label325
	li a4, 270
	blt zero, a4, label330
	li a4, 512
	blt zero, a4, label335
	j label46
.p2align 2
label37:
	sh2add t2, t1, a4
	sh2add t0, t1, a5
	flw f10, 0(t2)
	flw f11, 0(t0)
	sh2add t0, t1, a3
	fadd.s f10, f10, f11
	addiw t1, t1, 1
	fsw f10, 0(t0)
	li t0, 270
	blt t1, t0, label37
	addiw a2, a2, 1
	li a3, 512
	blt a2, a3, label34
	mv a2, zero
	li a3, 270
	blt zero, a3, label325
	li a4, 270
	blt zero, a4, label330
	li a4, 512
	blt zero, a4, label335
	j label46
