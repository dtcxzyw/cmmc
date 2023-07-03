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
	sd s1, 16(sp)
	sd s0, 8(sp)
	sd ra, 0(sp)
pcrel1791:
	auipc a0, %pcrel_hi(imgIn)
	addi a0, a0, %pcrel_lo(pcrel1791)
	mv s1, a0
	jal getfarray
	li a0, 156
	jal _sysy_starttime
	mv a4, zero
pcrel1792:
	auipc a1, %pcrel_hi(my_y2)
pcrel1793:
	auipc a0, %pcrel_hi(imgOut)
	addi a1, a1, %pcrel_lo(pcrel1792)
	addi s0, a0, %pcrel_lo(pcrel1793)
pcrel1794:
	auipc a0, %pcrel_hi(my_y1)
	addi a0, a0, %pcrel_lo(pcrel1794)
	li a2, 512
	bge zero, a2, label158
	j label157
label158:
	mv a4, zero
	li a2, 512
	bge zero, a2, label433
	j label118
label433:
	mv a5, zero
	li a2, 512
	bge zero, a2, label437
	j label436
label437:
	mv a2, zero
	li a3, 270
	bge zero, a3, label558
	fmv.w.x f10, zero
	mv t0, zero
	fmv.w.x f13, zero
	fmv.w.x f11, zero
	addiw a3, zero, 4
	li a4, 512
	bge a3, a4, label99
	j label117
label558:
	mv a2, zero
	li a3, 270
	bge zero, a3, label565
	fmv.w.x f10, zero
	li t0, 511
	fmv.w.x f11, zero
	fmv.w.x f12, zero
	fmv.w.x f14, zero
	addiw a3, t0, -4
	blt a3, zero, label57
	j label56
label565:
	mv a5, zero
	li a2, 512
	bge zero, a2, label93
	li a4, 1080
	mv t3, zero
	mulw a3, zero, a4
	mulw a2, zero, a4
	add a3, a0, a3
	mulw a4, zero, a4
	add a2, a1, a2
	add a4, s0, a4
	addiw t0, zero, 4
	li t1, 270
	bge t0, t1, label84
label83:
	sh2add t1, t3, a3
	flw f10, 0(t1)
	sh2add t2, t3, a2
	flw f11, 0(t2)
	sh2add t3, t3, a4
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
	bge t0, t1, label84
	j label83
label93:
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
label436:
	li a4, 1080
	mv t3, zero
	mulw a3, a5, a4
	mulw a2, a5, a4
	add a3, a0, a3
	mulw a4, a5, a4
	add a2, a1, a2
	add a4, s0, a4
	addiw t0, zero, 4
	li t1, 270
	bge t0, t1, label37
	j label36
label39:
	addiw t0, t3, 4
	li t1, 270
	bge t0, t1, label485
	j label41
label485:
	mv t0, t3
	sh2add t1, t3, a3
	flw f10, 0(t1)
	sh2add t1, t3, a2
	flw f11, 0(t1)
	sh2add t1, t3, a4
	fadd.s f10, f10, f11
	fsw f10, 0(t1)
	li t1, 270
	addiw t0, t3, 1
	bge t0, t1, label44
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	fsw f10, 0(t1)
	li t1, 270
	addiw t0, t0, 1
	bge t0, t1, label44
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	fsw f10, 0(t1)
	li t1, 270
	addiw t0, t0, 1
	bge t0, t1, label44
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	fsw f10, 0(t1)
	li t1, 270
	addiw t0, t0, 1
	bge t0, t1, label44
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	fsw f10, 0(t1)
	li t1, 270
	addiw t0, t0, 1
	bge t0, t1, label44
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	fsw f10, 0(t1)
	li t1, 270
	addiw t0, t0, 1
	bge t0, t1, label44
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	fsw f10, 0(t1)
	li t1, 270
	addiw t0, t0, 1
	bge t0, t1, label44
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	fsw f10, 0(t1)
	li t1, 270
	addiw t0, t0, 1
	bge t0, t1, label44
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	fsw f10, 0(t1)
	li t1, 270
	addiw t0, t0, 1
	bge t0, t1, label44
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	fsw f10, 0(t1)
	li t1, 270
	addiw t0, t0, 1
	bge t0, t1, label44
	j label1783
label41:
	sh2add t1, t3, a3
	flw f10, 0(t1)
	sh2add t2, t3, a2
	flw f11, 0(t2)
	sh2add t3, t3, a4
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
	bge t0, t1, label485
	j label41
label1783:
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	fsw f10, 0(t1)
	li t1, 270
	addiw t0, t0, 1
	bge t0, t1, label44
	j label1783
label44:
	addiw a5, a5, 1
	li a2, 512
	bge a5, a2, label437
	j label436
label99:
	addiw a3, t0, 4
	li a4, 512
	bge a3, a4, label1017
	j label104
label1017:
	fmv.s f12, f11
	addiw a3, t0, 4
	li a4, 512
	bge a3, a4, label1112
	j label116
label104:
	li t1, 1080
	mulw a4, t0, t1
	add a5, s0, a4
	sh2add a4, a2, a5
	flw f12, 0(a4)
pcrel1795:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(pcrel1795)
	flw f14, 0(a4)
	flw f15, 4(a4)
	fmul.s f14, f14, f12
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	flw f14, 8(a4)
	mulw t0, t0, t1
	fmul.s f11, f14, f11
	add t0, a0, t0
	sh2add t2, a2, t0
	fadd.s f13, f13, f10
	fadd.s f11, f13, f11
	fsw f11, 0(t2)
	addi t2, a5, 1080
	sh2add t2, a2, t2
	flw f13, 0(t2)
	flw f14, 0(a4)
	flw f15, 4(a4)
	fmul.s f14, f14, f13
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	flw f14, 8(a4)
	addi t2, t0, 1080
	fmul.s f10, f14, f10
	sh2add t2, a2, t2
	fadd.s f12, f12, f11
	fadd.s f10, f12, f10
	fsw f10, 0(t2)
	slli t1, t1, 1
	add t2, a5, t1
	sh2add t2, a2, t2
	flw f12, 0(t2)
	flw f14, 0(a4)
	flw f15, 4(a4)
	fmul.s f14, f14, f12
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	flw f14, 8(a4)
	add t2, t0, t1
	fmul.s f11, f14, f11
	sh2add t2, a2, t2
	fadd.s f13, f13, f10
	fadd.s f11, f13, f11
	fsw f11, 0(t2)
	addi t1, t1, 1080
	add a5, a5, t1
	sh2add a5, a2, a5
	flw f13, 0(a5)
	flw f14, 0(a4)
	flw f15, 4(a4)
	fmul.s f14, f14, f13
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	flw f14, 8(a4)
	add a4, t0, t1
	fmul.s f10, f14, f10
	sh2add a4, a2, a4
	fadd.s f12, f12, f11
	fadd.s f10, f12, f10
	fsw f10, 0(a4)
	mv t0, a3
	addiw a3, a3, 4
	li a4, 512
	bge a3, a4, label1017
	j label104
label1112:
	mv a3, t0
label110:
	li a4, 1080
	mulw a5, a3, a4
	add a5, s0, a5
	sh2add a5, a2, a5
	flw f11, 0(a5)
pcrel1796:
	auipc a5, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a5, a5, %pcrel_lo(pcrel1796)
	flw f14, 0(a5)
	flw f15, 4(a5)
	fmul.s f14, f14, f11
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	flw f14, 8(a5)
	mulw a4, a3, a4
	fmul.s f12, f14, f12
	add a4, a0, a4
	sh2add a4, a2, a4
	fadd.s f13, f13, f10
	fadd.s f14, f13, f12
	fsw f14, 0(a4)
	li a4, 512
	addiw a3, a3, 1
	bge a3, a4, label115
	fmv.s f13, f11
	fmv.s f12, f10
	fmv.s f10, f14
	j label110
label56:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(label56)
	flw f13, 12(a4)
	flw f15, 16(a4)
	fmul.s f13, f13, f11
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	flw f14, 8(a4)
	li t1, 1080
	fmul.s f12, f14, f12
	mulw a5, t0, t1
	fadd.s f13, f13, f10
	add a5, a1, a5
	sh2add t2, a2, a5
	fadd.s f12, f13, f12
	fsw f12, 0(t2)
	mulw t0, t0, t1
	add t0, s0, t0
	sh2add t1, a2, t0
	flw f13, 0(t1)
	flw f14, 12(a4)
	flw f15, 16(a4)
	fmul.s f14, f14, f13
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	flw f14, 8(a4)
	addi t1, a5, -1080
	fmul.s f10, f14, f10
	sh2add t1, a2, t1
	fadd.s f11, f11, f12
	fadd.s f10, f11, f10
	fsw f10, 0(t1)
	addi t1, t0, -1080
	sh2add t1, a2, t1
	flw f11, 0(t1)
	flw f14, 12(a4)
	flw f15, 16(a4)
	fmul.s f14, f14, f11
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	flw f14, 8(a4)
	li t1, -2160
	fmul.s f12, f14, f12
	add t2, a5, t1
	sh2add t2, a2, t2
	fadd.s f13, f13, f10
	fadd.s f12, f13, f12
	fsw f12, 0(t2)
	add t2, t0, t1
	sh2add t2, a2, t2
	flw f13, 0(t2)
	flw f14, 12(a4)
	flw f15, 16(a4)
	fmul.s f14, f14, f13
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	flw f14, 8(a4)
	addi a4, t1, -1080
	fmul.s f10, f14, f10
	add a5, a5, a4
	sh2add a5, a2, a5
	fadd.s f11, f11, f12
	fadd.s f10, f11, f10
	fsw f10, 0(a5)
	add a4, t0, a4
	sh2add a4, a2, a4
	flw f11, 0(a4)
	fmv.s f14, f13
	mv t0, a3
	addiw a3, a3, -4
	blt a3, zero, label57
	j label56
label57:
	addiw a3, t0, -4
	blt a3, zero, label64
	j label63
label64:
	addiw a3, t0, -4
	blt a3, zero, label764
	j label77
label764:
	mv a3, t0
label70:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(label70)
	flw f13, 12(a4)
	flw f15, 16(a4)
	fmul.s f13, f13, f11
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	flw f14, 8(a4)
	li a4, 1080
	fmul.s f12, f14, f12
	mulw a5, a3, a4
	fadd.s f13, f13, f10
	add a5, a1, a5
	sh2add a5, a2, a5
	fadd.s f13, f13, f12
	fsw f13, 0(a5)
	mulw a4, a3, a4
	add a4, s0, a4
	sh2add a4, a2, a4
	flw f15, 0(a4)
	addiw a3, a3, -1
	blt a3, zero, label76
	fmv.s f12, f10
	fmv.s f14, f11
	fmv.s f10, f13
	fmv.s f11, f15
	j label70
label76:
	addiw a2, a2, 1
	li a3, 270
	bge a2, a3, label565
	fmv.w.x f10, zero
	li t0, 511
	fmv.w.x f11, zero
	fmv.w.x f12, zero
	fmv.w.x f14, zero
	addiw a3, t0, -4
	blt a3, zero, label57
	j label56
label63:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(label63)
	flw f13, 12(a4)
	flw f15, 16(a4)
	fmul.s f13, f13, f11
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	flw f14, 8(a4)
	li t1, 1080
	fmul.s f12, f14, f12
	mulw a5, t0, t1
	fadd.s f13, f13, f10
	add a5, a1, a5
	sh2add t2, a2, a5
	fadd.s f12, f13, f12
	fsw f12, 0(t2)
	mulw t0, t0, t1
	add t0, s0, t0
	sh2add t1, a2, t0
	flw f13, 0(t1)
	flw f14, 12(a4)
	flw f15, 16(a4)
	fmul.s f14, f14, f13
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	flw f14, 8(a4)
	addi t1, a5, -1080
	fmul.s f10, f14, f10
	sh2add t1, a2, t1
	fadd.s f11, f11, f12
	fadd.s f10, f11, f10
	fsw f10, 0(t1)
	addi t1, t0, -1080
	sh2add t1, a2, t1
	flw f11, 0(t1)
	flw f14, 12(a4)
	flw f15, 16(a4)
	fmul.s f14, f14, f11
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	flw f14, 8(a4)
	li t1, -2160
	fmul.s f12, f14, f12
	add t2, a5, t1
	sh2add t2, a2, t2
	fadd.s f13, f13, f10
	fadd.s f12, f13, f12
	fsw f12, 0(t2)
	add t2, t0, t1
	sh2add t2, a2, t2
	flw f13, 0(t2)
	flw f14, 12(a4)
	flw f15, 16(a4)
	fmul.s f14, f14, f13
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	flw f14, 8(a4)
	addi a4, t1, -1080
	fmul.s f10, f14, f10
	add a5, a5, a4
	sh2add a5, a2, a5
	fadd.s f11, f11, f12
	fadd.s f10, f11, f10
	fsw f10, 0(a5)
	add a4, t0, a4
	sh2add a4, a2, a4
	flw f11, 0(a4)
	fmv.s f14, f13
	mv t0, a3
	addiw a3, a3, -4
	blt a3, zero, label64
	j label63
label77:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(label77)
	flw f13, 12(a4)
	flw f15, 16(a4)
	fmul.s f13, f13, f11
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	flw f14, 8(a4)
	li t1, 1080
	fmul.s f12, f14, f12
	mulw a5, t0, t1
	fadd.s f13, f13, f10
	add a5, a1, a5
	sh2add t2, a2, a5
	fadd.s f12, f13, f12
	fsw f12, 0(t2)
	mulw t0, t0, t1
	add t0, s0, t0
	sh2add t1, a2, t0
	flw f13, 0(t1)
	flw f14, 12(a4)
	flw f15, 16(a4)
	fmul.s f14, f14, f13
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	flw f14, 8(a4)
	addi t1, a5, -1080
	fmul.s f10, f14, f10
	sh2add t1, a2, t1
	fadd.s f11, f11, f12
	fadd.s f10, f11, f10
	fsw f10, 0(t1)
	addi t1, t0, -1080
	sh2add t1, a2, t1
	flw f11, 0(t1)
	flw f14, 12(a4)
	flw f15, 16(a4)
	fmul.s f14, f14, f11
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	flw f14, 8(a4)
	li t1, -2160
	fmul.s f12, f14, f12
	add t2, a5, t1
	sh2add t2, a2, t2
	fadd.s f13, f13, f10
	fadd.s f12, f13, f12
	fsw f12, 0(t2)
	add t2, t0, t1
	sh2add t2, a2, t2
	flw f14, 0(t2)
	flw f13, 12(a4)
	flw f15, 16(a4)
	fmul.s f13, f13, f14
	fmul.s f11, f15, f11
	fadd.s f11, f13, f11
	flw f13, 8(a4)
	addi a4, t1, -1080
	fmul.s f10, f13, f10
	add a5, a5, a4
	sh2add a5, a2, a5
	fadd.s f11, f11, f12
	fadd.s f10, f11, f10
	fsw f10, 0(a5)
	add a4, t0, a4
	sh2add a4, a2, a4
	flw f11, 0(a4)
	mv t0, a3
	addiw a3, a3, -4
	blt a3, zero, label764
	j label77
label84:
	addiw t0, t3, 4
	li t1, 270
	bge t0, t1, label86
label92:
	sh2add t1, t3, a3
	flw f10, 0(t1)
	sh2add t2, t3, a2
	flw f11, 0(t2)
	sh2add t3, t3, a4
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
	bge t0, t1, label86
	j label92
label889:
	li a4, 1080
	mv t3, zero
	mulw a3, a5, a4
	mulw a2, a5, a4
	add a3, a0, a3
	mulw a4, a5, a4
	add a2, a1, a2
	add a4, s0, a4
	addiw t0, zero, 4
	li t1, 270
	bge t0, t1, label84
	j label83
label86:
	addiw t0, t3, 4
	li t1, 270
	bge t0, t1, label938
	j label91
label938:
	mv t0, t3
	sh2add t1, t3, a3
	flw f10, 0(t1)
	sh2add t1, t3, a2
	flw f11, 0(t1)
	sh2add t1, t3, a4
	fadd.s f10, f10, f11
	fsw f10, 0(t1)
	li t1, 270
	addiw t0, t3, 1
	bge t0, t1, label90
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	fsw f10, 0(t1)
	li t1, 270
	addiw t0, t0, 1
	bge t0, t1, label90
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	fsw f10, 0(t1)
	li t1, 270
	addiw t0, t0, 1
	bge t0, t1, label90
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	fsw f10, 0(t1)
	li t1, 270
	addiw t0, t0, 1
	bge t0, t1, label90
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	fsw f10, 0(t1)
	li t1, 270
	addiw t0, t0, 1
	bge t0, t1, label90
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	fsw f10, 0(t1)
	li t1, 270
	addiw t0, t0, 1
	bge t0, t1, label90
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	fsw f10, 0(t1)
	li t1, 270
	addiw t0, t0, 1
	bge t0, t1, label90
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	fsw f10, 0(t1)
	li t1, 270
	addiw t0, t0, 1
	bge t0, t1, label90
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	fsw f10, 0(t1)
	li t1, 270
	addiw t0, t0, 1
	bge t0, t1, label90
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	fsw f10, 0(t1)
	li t1, 270
	addiw t0, t0, 1
	bge t0, t1, label90
	j label1784
label90:
	addiw a5, a5, 1
	li a2, 512
	bge a5, a2, label93
	j label889
label91:
	sh2add t1, t3, a3
	flw f10, 0(t1)
	sh2add t2, t3, a2
	flw f11, 0(t2)
	sh2add t3, t3, a4
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
	bge t0, t1, label938
	j label91
label1784:
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	fsw f10, 0(t1)
	li t1, 270
	addiw t0, t0, 1
	bge t0, t1, label90
	j label1784
label116:
	li t1, 1080
	mulw a4, t0, t1
	add a5, s0, a4
	sh2add a4, a2, a5
	flw f14, 0(a4)
pcrel1797:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(pcrel1797)
	flw f11, 0(a4)
	flw f15, 4(a4)
	fmul.s f11, f11, f14
	fmul.s f13, f15, f13
	fadd.s f11, f11, f13
	flw f13, 8(a4)
	mulw t0, t0, t1
	fmul.s f12, f13, f12
	add t0, a0, t0
	sh2add t2, a2, t0
	fadd.s f11, f11, f10
	fadd.s f11, f11, f12
	fsw f11, 0(t2)
	addi t2, a5, 1080
	sh2add t2, a2, t2
	flw f12, 0(t2)
	flw f13, 0(a4)
	flw f15, 4(a4)
	fmul.s f13, f13, f12
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	flw f14, 8(a4)
	addi t2, t0, 1080
	fmul.s f10, f14, f10
	sh2add t2, a2, t2
	fadd.s f13, f13, f11
	fadd.s f10, f13, f10
	fsw f10, 0(t2)
	slli t1, t1, 1
	add t2, a5, t1
	sh2add t2, a2, t2
	flw f13, 0(t2)
	flw f14, 0(a4)
	flw f15, 4(a4)
	fmul.s f14, f14, f13
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	flw f14, 8(a4)
	add t2, t0, t1
	fmul.s f11, f14, f11
	sh2add t2, a2, t2
	fadd.s f12, f12, f10
	fadd.s f12, f12, f11
	fsw f12, 0(t2)
	addi t1, t1, 1080
	add a5, a5, t1
	sh2add a5, a2, a5
	flw f11, 0(a5)
	flw f14, 0(a4)
	flw f15, 4(a4)
	fmul.s f14, f14, f11
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	flw f14, 8(a4)
	add a4, t0, t1
	fmul.s f10, f14, f10
	sh2add a4, a2, a4
	fadd.s f13, f13, f12
	fadd.s f10, f13, f10
	fsw f10, 0(a4)
	fmv.s f13, f11
	mv t0, a3
	addiw a3, a3, 4
	li a4, 512
	bge a3, a4, label1112
	j label116
label117:
	li t1, 1080
	mulw a4, t0, t1
	add a5, s0, a4
	sh2add a4, a2, a5
	flw f12, 0(a4)
pcrel1798:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(pcrel1798)
	flw f14, 0(a4)
	flw f15, 4(a4)
	fmul.s f14, f14, f12
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	flw f14, 8(a4)
	mulw t0, t0, t1
	fmul.s f11, f14, f11
	add t0, a0, t0
	sh2add t2, a2, t0
	fadd.s f13, f13, f10
	fadd.s f11, f13, f11
	fsw f11, 0(t2)
	addi t2, a5, 1080
	sh2add t2, a2, t2
	flw f13, 0(t2)
	flw f14, 0(a4)
	flw f15, 4(a4)
	fmul.s f14, f14, f13
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	flw f14, 8(a4)
	addi t2, t0, 1080
	fmul.s f10, f14, f10
	sh2add t2, a2, t2
	fadd.s f12, f12, f11
	fadd.s f10, f12, f10
	fsw f10, 0(t2)
	slli t1, t1, 1
	add t2, a5, t1
	sh2add t2, a2, t2
	flw f12, 0(t2)
	flw f14, 0(a4)
	flw f15, 4(a4)
	fmul.s f14, f14, f12
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	flw f14, 8(a4)
	add t2, t0, t1
	fmul.s f11, f14, f11
	sh2add t2, a2, t2
	fadd.s f13, f13, f10
	fadd.s f11, f13, f11
	fsw f11, 0(t2)
	addi t1, t1, 1080
	add a5, a5, t1
	sh2add a5, a2, a5
	flw f13, 0(a5)
	flw f14, 0(a4)
	flw f15, 4(a4)
	fmul.s f14, f14, f13
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	flw f14, 8(a4)
	add a4, t0, t1
	fmul.s f10, f14, f10
	sh2add a4, a2, a4
	fadd.s f12, f12, f11
	fadd.s f10, f12, f10
	fsw f10, 0(a4)
	mv t0, a3
	addiw a3, a3, 4
	li a4, 512
	bge a3, a4, label99
	j label117
label115:
	addiw a2, a2, 1
	li a3, 270
	bge a2, a3, label558
	fmv.w.x f10, zero
	mv t0, zero
	fmv.w.x f13, zero
	fmv.w.x f11, zero
	addiw a3, zero, 4
	li a4, 512
	bge a3, a4, label99
	j label117
label118:
	li a3, 1080
	fmv.w.x f10, zero
	fmv.w.x f11, zero
	li t2, 269
	mulw a2, a4, a3
	fmv.w.x f12, zero
	add a2, s1, a2
	fmv.w.x f13, zero
	mulw a3, a4, a3
	add a3, a1, a3
	addiw a5, t2, -4
	blt a5, zero, label125
	j label146
label144:
	addiw a4, a4, 1
	li a2, 512
	bge a4, a2, label433
	j label118
label146:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t0, %pcrel_lo(label146)
	flw f14, 12(t0)
	flw f15, 16(t0)
	fmul.s f14, f14, f11
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	flw f14, 8(t0)
	sh2add t1, t2, a3
	fmul.s f12, f14, f12
	fadd.s f13, f13, f10
	fadd.s f12, f13, f12
	fsw f12, 0(t1)
	sh2add t2, t2, a2
	flw f13, 0(t2)
	flw f14, 12(t0)
	flw f15, 16(t0)
	fmul.s f14, f14, f13
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f11, f11, f12
	fadd.s f10, f11, f10
	fsw f10, -4(t1)
	flw f11, -4(t2)
	flw f14, 12(t0)
	flw f15, 16(t0)
	fmul.s f14, f14, f11
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	flw f14, 8(t0)
	fmul.s f12, f14, f12
	fadd.s f13, f13, f10
	fadd.s f12, f13, f12
	fsw f12, -8(t1)
	flw f13, -8(t2)
	flw f14, 12(t0)
	flw f15, 16(t0)
	fmul.s f14, f14, f13
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f11, f11, f12
	fadd.s f10, f11, f10
	fsw f10, -12(t1)
	flw f11, -12(t2)
	mv t2, a5
	addiw a5, a5, -4
	blt a5, zero, label125
	j label146
label125:
	addiw a5, t2, -4
	blt a5, zero, label132
label131:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t0, %pcrel_lo(label131)
	flw f14, 12(t0)
	flw f15, 16(t0)
	fmul.s f14, f14, f11
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	flw f14, 8(t0)
	sh2add t1, t2, a3
	fmul.s f12, f14, f12
	fadd.s f13, f13, f10
	fadd.s f12, f13, f12
	fsw f12, 0(t1)
	sh2add t2, t2, a2
	flw f13, 0(t2)
	flw f14, 12(t0)
	flw f15, 16(t0)
	fmul.s f14, f14, f13
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f11, f11, f12
	fadd.s f10, f11, f10
	fsw f10, -4(t1)
	flw f11, -4(t2)
	flw f14, 12(t0)
	flw f15, 16(t0)
	fmul.s f14, f14, f11
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	flw f14, 8(t0)
	fmul.s f12, f14, f12
	fadd.s f13, f13, f10
	fadd.s f12, f13, f12
	fsw f12, -8(t1)
	flw f13, -8(t2)
	flw f14, 12(t0)
	flw f15, 16(t0)
	fmul.s f14, f14, f13
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f11, f11, f12
	fadd.s f10, f11, f10
	fsw f10, -12(t1)
	flw f11, -12(t2)
	mv t2, a5
	addiw a5, a5, -4
	blt a5, zero, label132
	j label131
label132:
	addiw a5, t2, -4
	blt a5, zero, label1420
	j label145
label1420:
	mv a5, t2
	j label138
label145:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t0, %pcrel_lo(label145)
	flw f14, 12(t0)
	flw f15, 16(t0)
	fmul.s f14, f14, f11
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	flw f14, 8(t0)
	sh2add t1, t2, a3
	fmul.s f12, f14, f12
	fadd.s f13, f13, f10
	fadd.s f12, f13, f12
	fsw f12, 0(t1)
	sh2add t2, t2, a2
	flw f13, 0(t2)
	flw f14, 12(t0)
	flw f15, 16(t0)
	fmul.s f14, f14, f13
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f11, f11, f12
	fadd.s f10, f11, f10
	fsw f10, -4(t1)
	flw f11, -4(t2)
	flw f14, 12(t0)
	flw f15, 16(t0)
	fmul.s f14, f14, f11
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	flw f14, 8(t0)
	fmul.s f12, f14, f12
	fadd.s f13, f13, f10
	fadd.s f12, f13, f12
	fsw f12, -8(t1)
	flw f13, -8(t2)
	flw f14, 12(t0)
	flw f15, 16(t0)
	fmul.s f14, f14, f13
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f11, f11, f12
	fadd.s f10, f11, f10
	fsw f10, -12(t1)
	flw f11, -12(t2)
	mv t2, a5
	addiw a5, a5, -4
	blt a5, zero, label1420
	j label145
label138:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t0, %pcrel_lo(label138)
	flw f14, 12(t0)
	flw f15, 16(t0)
	fmul.s f14, f14, f11
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	flw f14, 8(t0)
	sh2add t0, a5, a3
	fmul.s f12, f14, f12
	fadd.s f13, f13, f10
	fadd.s f14, f13, f12
	fsw f14, 0(t0)
	sh2add t0, a5, a2
	flw f15, 0(t0)
	addiw a5, a5, -1
	blt a5, zero, label144
	fmv.s f12, f10
	fmv.s f13, f11
	fmv.s f10, f14
	fmv.s f11, f15
	j label138
label37:
	addiw t0, t3, 4
	li t1, 270
	bge t0, t1, label39
label45:
	sh2add t1, t3, a3
	flw f10, 0(t1)
	sh2add t2, t3, a2
	flw f11, 0(t2)
	sh2add t3, t3, a4
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
	bge t0, t1, label39
	j label45
label36:
	sh2add t1, t3, a3
	flw f10, 0(t1)
	sh2add t2, t3, a2
	flw f11, 0(t2)
	sh2add t3, t3, a4
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
	bge t0, t1, label37
	j label36
label157:
	li a3, 1080
	fmv.w.x f10, zero
	fmv.w.x f11, zero
	mv t2, zero
	mulw a2, a4, a3
	fmv.w.x f12, zero
	add a2, s1, a2
	mulw a3, a4, a3
	add a3, a0, a3
	addiw a5, zero, 4
	li t0, 270
	bge a5, t0, label170
	j label28
label26:
	addiw a4, a4, 1
	li a2, 512
	bge a4, a2, label158
	j label157
label170:
	fmv.s f13, f11
	addiw a5, t2, 4
	li t0, 270
	bge a5, t0, label16
label15:
	sh2add t1, t2, a2
	flw f14, 0(t1)
pcrel1799:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t0, %pcrel_lo(pcrel1799)
	flw f11, 0(t0)
	flw f15, 4(t0)
	fmul.s f11, f11, f14
	fmul.s f13, f15, f13
	fadd.s f11, f11, f13
	flw f13, 8(t0)
	sh2add t2, t2, a3
	fmul.s f12, f13, f12
	fadd.s f11, f11, f10
	fadd.s f11, f11, f12
	fsw f11, 0(t2)
	flw f12, 4(t1)
	flw f13, 0(t0)
	flw f15, 4(t0)
	fmul.s f13, f13, f12
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f13, f13, f11
	fadd.s f10, f13, f10
	fsw f10, 4(t2)
	flw f13, 8(t1)
	flw f14, 0(t0)
	flw f15, 4(t0)
	fmul.s f14, f14, f13
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	flw f14, 8(t0)
	fmul.s f11, f14, f11
	fadd.s f12, f12, f10
	fadd.s f12, f12, f11
	fsw f12, 8(t2)
	flw f11, 12(t1)
	flw f14, 0(t0)
	flw f15, 4(t0)
	fmul.s f14, f14, f11
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f13, f13, f12
	fadd.s f10, f13, f10
	fsw f10, 12(t2)
	fmv.s f13, f11
	mv t2, a5
	addiw a5, a5, 4
	li t0, 270
	bge a5, t0, label16
	j label15
label16:
	addiw a5, t2, 4
	li t0, 270
	bge a5, t0, label254
	j label27
label254:
	mv a5, t2
label21:
	sh2add t0, a5, a2
	flw f11, 0(t0)
pcrel1800:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t0, %pcrel_lo(pcrel1800)
	flw f14, 0(t0)
	flw f15, 4(t0)
	fmul.s f14, f14, f11
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	flw f14, 8(t0)
	sh2add t0, a5, a3
	fmul.s f12, f14, f12
	fadd.s f13, f13, f10
	fadd.s f14, f13, f12
	fsw f14, 0(t0)
	li t0, 270
	addiw a5, a5, 1
	bge a5, t0, label26
	fmv.s f13, f11
	fmv.s f12, f10
	fmv.s f10, f14
	j label21
label27:
	sh2add t1, t2, a2
	flw f14, 0(t1)
pcrel1801:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t0, %pcrel_lo(pcrel1801)
	flw f11, 0(t0)
	flw f15, 4(t0)
	fmul.s f11, f11, f14
	fmul.s f13, f15, f13
	fadd.s f11, f11, f13
	flw f13, 8(t0)
	sh2add t2, t2, a3
	fmul.s f12, f13, f12
	fadd.s f11, f11, f10
	fadd.s f11, f11, f12
	fsw f11, 0(t2)
	flw f12, 4(t1)
	flw f13, 0(t0)
	flw f15, 4(t0)
	fmul.s f13, f13, f12
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f13, f13, f11
	fadd.s f10, f13, f10
	fsw f10, 4(t2)
	flw f13, 8(t1)
	flw f14, 0(t0)
	flw f15, 4(t0)
	fmul.s f14, f14, f13
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	flw f14, 8(t0)
	fmul.s f11, f14, f11
	fadd.s f12, f12, f10
	fadd.s f12, f12, f11
	fsw f12, 8(t2)
	flw f11, 12(t1)
	flw f14, 0(t0)
	flw f15, 4(t0)
	fmul.s f14, f14, f11
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f13, f13, f12
	fadd.s f10, f13, f10
	fsw f10, 12(t2)
	fmv.s f13, f11
	mv t2, a5
	addiw a5, a5, 4
	li t0, 270
	bge a5, t0, label254
	j label27
label28:
	sh2add t1, t2, a2
	flw f13, 0(t1)
pcrel1802:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t0, %pcrel_lo(pcrel1802)
	flw f14, 0(t0)
	flw f15, 4(t0)
	fmul.s f14, f14, f13
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	flw f14, 8(t0)
	sh2add t2, t2, a3
	fmul.s f12, f14, f12
	fadd.s f11, f11, f10
	fadd.s f11, f11, f12
	fsw f11, 0(t2)
	flw f12, 4(t1)
	flw f14, 0(t0)
	flw f15, 4(t0)
	fmul.s f14, f14, f12
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f13, f13, f11
	fadd.s f10, f13, f10
	fsw f10, 4(t2)
	flw f13, 8(t1)
	flw f14, 0(t0)
	flw f15, 4(t0)
	fmul.s f14, f14, f13
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	flw f14, 8(t0)
	fmul.s f11, f14, f11
	fadd.s f12, f12, f10
	fadd.s f12, f12, f11
	fsw f12, 8(t2)
	flw f11, 12(t1)
	flw f14, 0(t0)
	flw f15, 4(t0)
	fmul.s f14, f14, f11
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f13, f13, f12
	fadd.s f10, f13, f10
	fsw f10, 12(t2)
	mv t2, a5
	addiw a5, a5, 4
	li t0, 270
	bge a5, t0, label170
	j label28
