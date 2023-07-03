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
pcrel1788:
	auipc a0, %pcrel_hi(imgIn)
	addi a0, a0, %pcrel_lo(pcrel1788)
	mv s1, a0
	jal getfarray
	li a0, 156
	jal _sysy_starttime
pcrel1789:
	auipc a0, %pcrel_hi(imgOut)
	addi s0, a0, %pcrel_lo(pcrel1789)
pcrel1790:
	auipc a0, %pcrel_hi(my_y1)
	addi a0, a0, %pcrel_lo(pcrel1790)
pcrel1791:
	auipc a1, %pcrel_hi(my_y2)
	addi a1, a1, %pcrel_lo(pcrel1791)
	mv a4, zero
	li a2, 512
	bge zero, a2, label158
label157:
	li a3, 1080
	mulw a2, a4, a3
	add a2, s1, a2
	mulw a3, a4, a3
	add a3, a0, a3
	fmv.w.x f10, zero
	fmv.w.x f11, zero
	fmv.w.x f12, zero
	mv t2, zero
	addiw a5, zero, 4
	li t0, 270
	bge a5, t0, label170
	j label28
label158:
	mv a4, zero
	li a2, 512
	bge zero, a2, label433
	j label31
label433:
	mv a5, zero
	li a2, 512
	bge zero, a2, label710
	li a4, 1080
	mulw a2, zero, a4
	add a2, a1, a2
	mulw a3, zero, a4
	add a3, a0, a3
	mulw a4, zero, a4
	add a4, s0, a4
	mv t3, zero
	addiw t0, zero, 4
	li t1, 270
	bge t0, t1, label66
	j label65
label31:
	li a3, 1080
	mulw a2, a4, a3
	add a2, s1, a2
	mulw a3, a4, a3
	add a3, a1, a3
	fmv.w.x f10, zero
	fmv.w.x f11, zero
	fmv.w.x f12, zero
	fmv.w.x f13, zero
	li t2, 269
	addiw a5, t2, -4
	blt a5, zero, label38
label59:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t0, %pcrel_lo(label59)
	flw f14, 12(t0)
	fmul.s f14, f14, f11
	flw f15, 16(t0)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t0)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	sh2add t1, t2, a3
	fsw f12, 0(t1)
	sh2add t2, t2, a2
	flw f13, 0(t2)
	flw f14, 12(t0)
	fmul.s f14, f14, f13
	flw f15, 16(t0)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -4(t1)
	flw f11, -4(t2)
	flw f14, 12(t0)
	fmul.s f14, f14, f11
	flw f15, 16(t0)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t0)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	fsw f12, -8(t1)
	flw f13, -8(t2)
	flw f14, 12(t0)
	fmul.s f14, f14, f13
	flw f15, 16(t0)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -12(t1)
	flw f11, -12(t2)
	mv t2, a5
	addiw a5, a5, -4
	blt a5, zero, label38
	j label59
label710:
	mv a2, zero
	li a3, 270
	bge zero, a3, label831
	fmv.w.x f10, zero
	fmv.w.x f11, zero
	fmv.w.x f12, zero
	mv t0, zero
	addiw a3, zero, 4
	li a4, 512
	bge a3, a4, label128
	j label146
label831:
	mv a2, zero
	li a3, 270
	bge zero, a3, label838
	fmv.w.x f10, zero
	fmv.w.x f11, zero
	fmv.w.x f12, zero
	fmv.w.x f13, zero
	li t0, 511
	addiw a3, t0, -4
	blt a3, zero, label101
	j label122
label838:
	mv a5, zero
	li a2, 512
	bge zero, a2, label94
label845:
	li a4, 1080
	mulw a2, a5, a4
	add a2, a1, a2
	mulw a3, a5, a4
	add a3, a0, a3
	mulw a4, a5, a4
	add a4, s0, a4
	mv t3, zero
	addiw t0, zero, 4
	li t1, 270
	bge t0, t1, label85
	j label84
label85:
	addiw t0, t3, 4
	li t1, 270
	bge t0, t1, label88
	j label87
label88:
	addiw t0, t3, 4
	li t1, 270
	bge t0, t1, label921
	j label93
label921:
	mv t0, t3
	sh2add t1, t3, a3
	flw f10, 0(t1)
	sh2add t1, t3, a2
	flw f11, 0(t1)
	fadd.s f10, f10, f11
	sh2add t1, t3, a4
	fsw f10, 0(t1)
	addiw t0, t3, 1
	li t1, 270
	bge t0, t1, label92
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	fadd.s f10, f10, f11
	sh2add t1, t0, a4
	fsw f10, 0(t1)
	addiw t0, t0, 1
	li t1, 270
	bge t0, t1, label92
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	fadd.s f10, f10, f11
	sh2add t1, t0, a4
	fsw f10, 0(t1)
	addiw t0, t0, 1
	li t1, 270
	bge t0, t1, label92
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	fadd.s f10, f10, f11
	sh2add t1, t0, a4
	fsw f10, 0(t1)
	addiw t0, t0, 1
	li t1, 270
	bge t0, t1, label92
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	fadd.s f10, f10, f11
	sh2add t1, t0, a4
	fsw f10, 0(t1)
	addiw t0, t0, 1
	li t1, 270
	bge t0, t1, label92
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	fadd.s f10, f10, f11
	sh2add t1, t0, a4
	fsw f10, 0(t1)
	addiw t0, t0, 1
	li t1, 270
	bge t0, t1, label92
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	fadd.s f10, f10, f11
	sh2add t1, t0, a4
	fsw f10, 0(t1)
	addiw t0, t0, 1
	li t1, 270
	bge t0, t1, label92
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	fadd.s f10, f10, f11
	sh2add t1, t0, a4
	fsw f10, 0(t1)
	addiw t0, t0, 1
	li t1, 270
	bge t0, t1, label92
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	fadd.s f10, f10, f11
	sh2add t1, t0, a4
	fsw f10, 0(t1)
	addiw t0, t0, 1
	li t1, 270
	bge t0, t1, label92
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	fadd.s f10, f10, f11
	sh2add t1, t0, a4
	fsw f10, 0(t1)
	addiw t0, t0, 1
	li t1, 270
	bge t0, t1, label92
	j label1782
label92:
	addiw a5, a5, 1
	li a2, 512
	bge a5, a2, label94
	j label845
label1782:
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	fadd.s f10, f10, f11
	sh2add t1, t0, a4
	fsw f10, 0(t1)
	addiw t0, t0, 1
	li t1, 270
	bge t0, t1, label92
	j label1782
label709:
	li a4, 1080
	mulw a2, a5, a4
	add a2, a1, a2
	mulw a3, a5, a4
	add a3, a0, a3
	mulw a4, a5, a4
	add a4, s0, a4
	mv t3, zero
	addiw t0, zero, 4
	li t1, 270
	bge t0, t1, label66
label65:
	sh2add t1, t3, a3
	flw f10, 0(t1)
	sh2add t2, t3, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t3, t3, a4
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
	bge t0, t1, label66
	j label65
label73:
	addiw a5, a5, 1
	li a2, 512
	bge a5, a2, label710
	j label709
label1781:
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	fadd.s f10, f10, f11
	sh2add t1, t0, a4
	fsw f10, 0(t1)
	addiw t0, t0, 1
	li t1, 270
	bge t0, t1, label73
	j label1781
label101:
	addiw a3, t0, -4
	blt a3, zero, label973
	j label107
label973:
	fmv.s f14, f13
	addiw a3, t0, -4
	blt a3, zero, label1068
label121:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(label121)
	flw f13, 12(a4)
	fmul.s f13, f13, f11
	flw f15, 16(a4)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f10
	flw f14, 8(a4)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	li t1, 1080
	mulw a5, t0, t1
	add a5, a1, a5
	sh2add t2, a2, a5
	fsw f12, 0(t2)
	mulw t0, t0, t1
	add t0, s0, t0
	sh2add t1, a2, t0
	flw f13, 0(t1)
	flw f14, 12(a4)
	fmul.s f14, f14, f13
	flw f15, 16(a4)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	addi t1, a5, -1080
	sh2add t1, a2, t1
	fsw f10, 0(t1)
	addi t1, t0, -1080
	sh2add t1, a2, t1
	flw f11, 0(t1)
	flw f14, 12(a4)
	fmul.s f14, f14, f11
	flw f15, 16(a4)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a4)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	li t1, -2160
	add t2, a5, t1
	sh2add t2, a2, t2
	fsw f12, 0(t2)
	add t2, t0, t1
	sh2add t2, a2, t2
	flw f14, 0(t2)
	flw f13, 12(a4)
	fmul.s f13, f13, f14
	flw f15, 16(a4)
	fmul.s f11, f15, f11
	fadd.s f11, f13, f11
	fadd.s f11, f11, f12
	flw f13, 8(a4)
	fmul.s f10, f13, f10
	fadd.s f10, f11, f10
	addi a4, t1, -1080
	add a5, a5, a4
	sh2add a5, a2, a5
	fsw f10, 0(a5)
	add a4, t0, a4
	sh2add a4, a2, a4
	flw f11, 0(a4)
	mv t0, a3
	addiw a3, a3, -4
	blt a3, zero, label1068
	j label121
label1068:
	mv a3, t0
label114:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(label114)
	flw f13, 12(a4)
	fmul.s f13, f13, f11
	flw f15, 16(a4)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f10
	flw f14, 8(a4)
	fmul.s f12, f14, f12
	fadd.s f13, f13, f12
	li a4, 1080
	mulw a5, a3, a4
	add a5, a1, a5
	sh2add a5, a2, a5
	fsw f13, 0(a5)
	mulw a4, a3, a4
	add a4, s0, a4
	sh2add a4, a2, a4
	flw f15, 0(a4)
	addiw a3, a3, -1
	blt a3, zero, label120
	fmv.s f12, f10
	fmv.s f14, f11
	fmv.s f10, f13
	fmv.s f11, f15
	j label114
label128:
	addiw a3, t0, 4
	li a4, 512
	bge a3, a4, label1290
	j label145
label1290:
	fmv.s f13, f11
	addiw a3, t0, 4
	li a4, 512
	bge a3, a4, label1295
	j label144
label1295:
	mv a3, t0
	j label138
label144:
	li t1, 1080
	mulw a4, t0, t1
	add a5, s0, a4
	sh2add a4, a2, a5
	flw f14, 0(a4)
pcrel1792:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(pcrel1792)
	flw f11, 0(a4)
	fmul.s f11, f11, f14
	flw f15, 4(a4)
	fmul.s f13, f15, f13
	fadd.s f11, f11, f13
	fadd.s f11, f11, f10
	flw f13, 8(a4)
	fmul.s f12, f13, f12
	fadd.s f11, f11, f12
	mulw t0, t0, t1
	add t0, a0, t0
	sh2add t2, a2, t0
	fsw f11, 0(t2)
	addi t2, a5, 1080
	sh2add t2, a2, t2
	flw f12, 0(t2)
	flw f13, 0(a4)
	fmul.s f13, f13, f12
	flw f15, 4(a4)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f11
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	addi t2, t0, 1080
	sh2add t2, a2, t2
	fsw f10, 0(t2)
	slli t1, t1, 1
	add t2, a5, t1
	sh2add t2, a2, t2
	flw f13, 0(t2)
	flw f14, 0(a4)
	fmul.s f14, f14, f13
	flw f15, 4(a4)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a4)
	fmul.s f11, f14, f11
	fadd.s f12, f12, f11
	add t2, t0, t1
	sh2add t2, a2, t2
	fsw f12, 0(t2)
	addi t1, t1, 1080
	add a5, a5, t1
	sh2add a5, a2, a5
	flw f11, 0(a5)
	flw f14, 0(a4)
	fmul.s f14, f14, f11
	flw f15, 4(a4)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f12
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	add a4, t0, t1
	sh2add a4, a2, a4
	fsw f10, 0(a4)
	mv t0, a3
	fmv.s f13, f11
	addiw a3, a3, 4
	li a4, 512
	bge a3, a4, label1295
	j label144
label145:
	li t1, 1080
	mulw a4, t0, t1
	add a5, s0, a4
	sh2add a4, a2, a5
	flw f13, 0(a4)
pcrel1793:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(pcrel1793)
	flw f14, 0(a4)
	fmul.s f14, f14, f13
	flw f15, 4(a4)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f10
	flw f14, 8(a4)
	fmul.s f12, f14, f12
	fadd.s f11, f11, f12
	mulw t0, t0, t1
	add t0, a0, t0
	sh2add t2, a2, t0
	fsw f11, 0(t2)
	addi t2, a5, 1080
	sh2add t2, a2, t2
	flw f12, 0(t2)
	flw f14, 0(a4)
	fmul.s f14, f14, f12
	flw f15, 4(a4)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	addi t2, t0, 1080
	sh2add t2, a2, t2
	fsw f10, 0(t2)
	slli t1, t1, 1
	add t2, a5, t1
	sh2add t2, a2, t2
	flw f13, 0(t2)
	flw f14, 0(a4)
	fmul.s f14, f14, f13
	flw f15, 4(a4)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a4)
	fmul.s f11, f14, f11
	fadd.s f12, f12, f11
	add t2, t0, t1
	sh2add t2, a2, t2
	fsw f12, 0(t2)
	addi t1, t1, 1080
	add a5, a5, t1
	sh2add a5, a2, a5
	flw f11, 0(a5)
	flw f14, 0(a4)
	fmul.s f14, f14, f11
	flw f15, 4(a4)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f12
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	add a4, t0, t1
	sh2add a4, a2, a4
	fsw f10, 0(a4)
	mv t0, a3
	addiw a3, a3, 4
	li a4, 512
	bge a3, a4, label1290
	j label145
label138:
	li a4, 1080
	mulw a5, a3, a4
	add a5, s0, a5
	sh2add a5, a2, a5
	flw f11, 0(a5)
pcrel1794:
	auipc a5, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a5, a5, %pcrel_lo(pcrel1794)
	flw f14, 0(a5)
	fmul.s f14, f14, f11
	flw f15, 4(a5)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a5)
	fmul.s f12, f14, f12
	fadd.s f14, f13, f12
	mulw a4, a3, a4
	add a4, a0, a4
	sh2add a4, a2, a4
	fsw f14, 0(a4)
	addiw a3, a3, 1
	li a4, 512
	bge a3, a4, label143
	fmv.s f13, f11
	fmv.s f12, f10
	fmv.s f10, f14
	j label138
label170:
	fmv.s f13, f11
	addiw a5, t2, 4
	li t0, 270
	bge a5, t0, label15
label27:
	sh2add t1, t2, a2
	flw f14, 0(t1)
pcrel1795:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t0, %pcrel_lo(pcrel1795)
	flw f11, 0(t0)
	fmul.s f11, f11, f14
	flw f15, 4(t0)
	fmul.s f13, f15, f13
	fadd.s f11, f11, f13
	fadd.s f11, f11, f10
	flw f13, 8(t0)
	fmul.s f12, f13, f12
	fadd.s f11, f11, f12
	sh2add t2, t2, a3
	fsw f11, 0(t2)
	flw f12, 4(t1)
	flw f13, 0(t0)
	fmul.s f13, f13, f12
	flw f15, 4(t0)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f11
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 4(t2)
	flw f13, 8(t1)
	flw f14, 0(t0)
	fmul.s f14, f14, f13
	flw f15, 4(t0)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(t0)
	fmul.s f11, f14, f11
	fadd.s f12, f12, f11
	fsw f12, 8(t2)
	flw f11, 12(t1)
	flw f14, 0(t0)
	fmul.s f14, f14, f11
	flw f15, 4(t0)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f12
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 12(t2)
	mv t2, a5
	fmv.s f13, f11
	addiw a5, a5, 4
	li t0, 270
	bge a5, t0, label15
	j label27
label28:
	sh2add t1, t2, a2
	flw f13, 0(t1)
pcrel1796:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t0, %pcrel_lo(pcrel1796)
	flw f14, 0(t0)
	fmul.s f14, f14, f13
	flw f15, 4(t0)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f10
	flw f14, 8(t0)
	fmul.s f12, f14, f12
	fadd.s f11, f11, f12
	sh2add t2, t2, a3
	fsw f11, 0(t2)
	flw f12, 4(t1)
	flw f14, 0(t0)
	fmul.s f14, f14, f12
	flw f15, 4(t0)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 4(t2)
	flw f13, 8(t1)
	flw f14, 0(t0)
	fmul.s f14, f14, f13
	flw f15, 4(t0)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(t0)
	fmul.s f11, f14, f11
	fadd.s f12, f12, f11
	fsw f12, 8(t2)
	flw f11, 12(t1)
	flw f14, 0(t0)
	fmul.s f14, f14, f11
	flw f15, 4(t0)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f12
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 12(t2)
	mv t2, a5
	addiw a5, a5, 4
	li t0, 270
	bge a5, t0, label170
	j label28
label15:
	addiw a5, t2, 4
	li t0, 270
	bge a5, t0, label180
	j label20
label180:
	mv a5, t2
	j label21
label20:
	sh2add t1, t2, a2
	flw f14, 0(t1)
pcrel1797:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t0, %pcrel_lo(pcrel1797)
	flw f11, 0(t0)
	fmul.s f11, f11, f14
	flw f15, 4(t0)
	fmul.s f13, f15, f13
	fadd.s f11, f11, f13
	fadd.s f11, f11, f10
	flw f13, 8(t0)
	fmul.s f12, f13, f12
	fadd.s f11, f11, f12
	sh2add t2, t2, a3
	fsw f11, 0(t2)
	flw f12, 4(t1)
	flw f13, 0(t0)
	fmul.s f13, f13, f12
	flw f15, 4(t0)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f11
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 4(t2)
	flw f13, 8(t1)
	flw f14, 0(t0)
	fmul.s f14, f14, f13
	flw f15, 4(t0)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(t0)
	fmul.s f11, f14, f11
	fadd.s f12, f12, f11
	fsw f12, 8(t2)
	flw f11, 12(t1)
	flw f14, 0(t0)
	fmul.s f14, f14, f11
	flw f15, 4(t0)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f12
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 12(t2)
	mv t2, a5
	fmv.s f13, f11
	addiw a5, a5, 4
	li t0, 270
	bge a5, t0, label180
	j label20
label21:
	sh2add t0, a5, a2
	flw f11, 0(t0)
pcrel1798:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t0, %pcrel_lo(pcrel1798)
	flw f14, 0(t0)
	fmul.s f14, f14, f11
	flw f15, 4(t0)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t0)
	fmul.s f12, f14, f12
	fadd.s f14, f13, f12
	sh2add t0, a5, a3
	fsw f14, 0(t0)
	addiw a5, a5, 1
	li t0, 270
	bge a5, t0, label26
	fmv.s f13, f11
	fmv.s f12, f10
	fmv.s f10, f14
	j label21
label26:
	addiw a4, a4, 1
	li a2, 512
	bge a4, a2, label158
	j label157
label38:
	addiw a5, t2, -4
	blt a5, zero, label45
	j label44
label45:
	addiw a5, t2, -4
	blt a5, zero, label530
	j label58
label530:
	mv a5, t2
label51:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t0, %pcrel_lo(label51)
	flw f14, 12(t0)
	fmul.s f14, f14, f11
	flw f15, 16(t0)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t0)
	fmul.s f12, f14, f12
	fadd.s f14, f13, f12
	sh2add t0, a5, a3
	fsw f14, 0(t0)
	sh2add t0, a5, a2
	flw f15, 0(t0)
	addiw a5, a5, -1
	blt a5, zero, label57
	fmv.s f12, f10
	fmv.s f13, f11
	fmv.s f10, f14
	fmv.s f11, f15
	j label51
label58:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t0, %pcrel_lo(label58)
	flw f14, 12(t0)
	fmul.s f14, f14, f11
	flw f15, 16(t0)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t0)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	sh2add t1, t2, a3
	fsw f12, 0(t1)
	sh2add t2, t2, a2
	flw f13, 0(t2)
	flw f14, 12(t0)
	fmul.s f14, f14, f13
	flw f15, 16(t0)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -4(t1)
	flw f11, -4(t2)
	flw f14, 12(t0)
	fmul.s f14, f14, f11
	flw f15, 16(t0)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t0)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	fsw f12, -8(t1)
	flw f13, -8(t2)
	flw f14, 12(t0)
	fmul.s f14, f14, f13
	flw f15, 16(t0)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -12(t1)
	flw f11, -12(t2)
	mv t2, a5
	addiw a5, a5, -4
	blt a5, zero, label530
	j label58
label146:
	li t1, 1080
	mulw a4, t0, t1
	add a5, s0, a4
	sh2add a4, a2, a5
	flw f13, 0(a4)
pcrel1799:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(pcrel1799)
	flw f14, 0(a4)
	fmul.s f14, f14, f13
	flw f15, 4(a4)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f10
	flw f14, 8(a4)
	fmul.s f12, f14, f12
	fadd.s f11, f11, f12
	mulw t0, t0, t1
	add t0, a0, t0
	sh2add t2, a2, t0
	fsw f11, 0(t2)
	addi t2, a5, 1080
	sh2add t2, a2, t2
	flw f12, 0(t2)
	flw f14, 0(a4)
	fmul.s f14, f14, f12
	flw f15, 4(a4)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	addi t2, t0, 1080
	sh2add t2, a2, t2
	fsw f10, 0(t2)
	slli t1, t1, 1
	add t2, a5, t1
	sh2add t2, a2, t2
	flw f13, 0(t2)
	flw f14, 0(a4)
	fmul.s f14, f14, f13
	flw f15, 4(a4)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a4)
	fmul.s f11, f14, f11
	fadd.s f12, f12, f11
	add t2, t0, t1
	sh2add t2, a2, t2
	fsw f12, 0(t2)
	addi t1, t1, 1080
	add a5, a5, t1
	sh2add a5, a2, a5
	flw f11, 0(a5)
	flw f14, 0(a4)
	fmul.s f14, f14, f11
	flw f15, 4(a4)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f12
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	add a4, t0, t1
	sh2add a4, a2, a4
	fsw f10, 0(a4)
	mv t0, a3
	addiw a3, a3, 4
	li a4, 512
	bge a3, a4, label128
	j label146
label107:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(label107)
	flw f14, 12(a4)
	fmul.s f14, f14, f11
	flw f15, 16(a4)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a4)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	li t1, 1080
	mulw a5, t0, t1
	add a5, a1, a5
	sh2add t2, a2, a5
	fsw f12, 0(t2)
	mulw t0, t0, t1
	add t0, s0, t0
	sh2add t1, a2, t0
	flw f13, 0(t1)
	flw f14, 12(a4)
	fmul.s f14, f14, f13
	flw f15, 16(a4)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	addi t1, a5, -1080
	sh2add t1, a2, t1
	fsw f10, 0(t1)
	addi t1, t0, -1080
	sh2add t1, a2, t1
	flw f11, 0(t1)
	flw f14, 12(a4)
	fmul.s f14, f14, f11
	flw f15, 16(a4)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a4)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	li t1, -2160
	add t2, a5, t1
	sh2add t2, a2, t2
	fsw f12, 0(t2)
	add t2, t0, t1
	sh2add t2, a2, t2
	flw f13, 0(t2)
	flw f14, 12(a4)
	fmul.s f14, f14, f13
	flw f15, 16(a4)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	addi a4, t1, -1080
	add a5, a5, a4
	sh2add a5, a2, a5
	fsw f10, 0(a5)
	add a4, t0, a4
	sh2add a4, a2, a4
	flw f11, 0(a4)
	mv t0, a3
	addiw a3, a3, -4
	blt a3, zero, label973
	j label107
label120:
	addiw a2, a2, 1
	li a3, 270
	bge a2, a3, label838
	fmv.w.x f10, zero
	fmv.w.x f11, zero
	fmv.w.x f12, zero
	fmv.w.x f13, zero
	li t0, 511
	addiw a3, t0, -4
	blt a3, zero, label101
label122:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(label122)
	flw f14, 12(a4)
	fmul.s f14, f14, f11
	flw f15, 16(a4)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a4)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	li t1, 1080
	mulw a5, t0, t1
	add a5, a1, a5
	sh2add t2, a2, a5
	fsw f12, 0(t2)
	mulw t0, t0, t1
	add t0, s0, t0
	sh2add t1, a2, t0
	flw f13, 0(t1)
	flw f14, 12(a4)
	fmul.s f14, f14, f13
	flw f15, 16(a4)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	addi t1, a5, -1080
	sh2add t1, a2, t1
	fsw f10, 0(t1)
	addi t1, t0, -1080
	sh2add t1, a2, t1
	flw f11, 0(t1)
	flw f14, 12(a4)
	fmul.s f14, f14, f11
	flw f15, 16(a4)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a4)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	li t1, -2160
	add t2, a5, t1
	sh2add t2, a2, t2
	fsw f12, 0(t2)
	add t2, t0, t1
	sh2add t2, a2, t2
	flw f13, 0(t2)
	flw f14, 12(a4)
	fmul.s f14, f14, f13
	flw f15, 16(a4)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	addi a4, t1, -1080
	add a5, a5, a4
	sh2add a5, a2, a5
	fsw f10, 0(a5)
	add a4, t0, a4
	sh2add a4, a2, a4
	flw f11, 0(a4)
	mv t0, a3
	addiw a3, a3, -4
	blt a3, zero, label101
	j label122
label143:
	addiw a2, a2, 1
	li a3, 270
	bge a2, a3, label831
	fmv.w.x f10, zero
	fmv.w.x f11, zero
	fmv.w.x f12, zero
	mv t0, zero
	addiw a3, zero, 4
	li a4, 512
	bge a3, a4, label128
	j label146
label93:
	sh2add t1, t3, a3
	flw f10, 0(t1)
	sh2add t2, t3, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t3, t3, a4
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
	bge t0, t1, label921
	j label93
label87:
	sh2add t1, t3, a3
	flw f10, 0(t1)
	sh2add t2, t3, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t3, t3, a4
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
	bge t0, t1, label88
	j label87
label84:
	sh2add t1, t3, a3
	flw f10, 0(t1)
	sh2add t2, t3, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t3, t3, a4
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
	bge t0, t1, label85
	j label84
label44:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t0, %pcrel_lo(label44)
	flw f14, 12(t0)
	fmul.s f14, f14, f11
	flw f15, 16(t0)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t0)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	sh2add t1, t2, a3
	fsw f12, 0(t1)
	sh2add t2, t2, a2
	flw f13, 0(t2)
	flw f14, 12(t0)
	fmul.s f14, f14, f13
	flw f15, 16(t0)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -4(t1)
	flw f11, -4(t2)
	flw f14, 12(t0)
	fmul.s f14, f14, f11
	flw f15, 16(t0)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t0)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	fsw f12, -8(t1)
	flw f13, -8(t2)
	flw f14, 12(t0)
	fmul.s f14, f14, f13
	flw f15, 16(t0)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -12(t1)
	flw f11, -12(t2)
	mv t2, a5
	addiw a5, a5, -4
	blt a5, zero, label45
	j label44
label66:
	addiw t0, t3, 4
	li t1, 270
	bge t0, t1, label68
	j label74
label68:
	addiw t0, t3, 4
	li t1, 270
	bge t0, t1, label758
	j label70
label758:
	mv t0, t3
	sh2add t1, t3, a3
	flw f10, 0(t1)
	sh2add t1, t3, a2
	flw f11, 0(t1)
	fadd.s f10, f10, f11
	sh2add t1, t3, a4
	fsw f10, 0(t1)
	addiw t0, t3, 1
	li t1, 270
	bge t0, t1, label73
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	fadd.s f10, f10, f11
	sh2add t1, t0, a4
	fsw f10, 0(t1)
	addiw t0, t0, 1
	li t1, 270
	bge t0, t1, label73
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	fadd.s f10, f10, f11
	sh2add t1, t0, a4
	fsw f10, 0(t1)
	addiw t0, t0, 1
	li t1, 270
	bge t0, t1, label73
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	fadd.s f10, f10, f11
	sh2add t1, t0, a4
	fsw f10, 0(t1)
	addiw t0, t0, 1
	li t1, 270
	bge t0, t1, label73
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	fadd.s f10, f10, f11
	sh2add t1, t0, a4
	fsw f10, 0(t1)
	addiw t0, t0, 1
	li t1, 270
	bge t0, t1, label73
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	fadd.s f10, f10, f11
	sh2add t1, t0, a4
	fsw f10, 0(t1)
	addiw t0, t0, 1
	li t1, 270
	bge t0, t1, label73
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	fadd.s f10, f10, f11
	sh2add t1, t0, a4
	fsw f10, 0(t1)
	addiw t0, t0, 1
	li t1, 270
	bge t0, t1, label73
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	fadd.s f10, f10, f11
	sh2add t1, t0, a4
	fsw f10, 0(t1)
	addiw t0, t0, 1
	li t1, 270
	bge t0, t1, label73
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	fadd.s f10, f10, f11
	sh2add t1, t0, a4
	fsw f10, 0(t1)
	addiw t0, t0, 1
	li t1, 270
	bge t0, t1, label73
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	fadd.s f10, f10, f11
	sh2add t1, t0, a4
	fsw f10, 0(t1)
	addiw t0, t0, 1
	li t1, 270
	bge t0, t1, label73
	j label1781
label70:
	sh2add t1, t3, a3
	flw f10, 0(t1)
	sh2add t2, t3, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t3, t3, a4
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
	bge t0, t1, label758
	j label70
label74:
	sh2add t1, t3, a3
	flw f10, 0(t1)
	sh2add t2, t3, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t3, t3, a4
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
	bge t0, t1, label68
	j label74
label57:
	addiw a4, a4, 1
	li a2, 512
	bge a4, a2, label433
	j label31
label94:
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
