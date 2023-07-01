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
pcrel1792:
	auipc a0, %pcrel_hi(imgOut)
	addi s0, a0, %pcrel_lo(pcrel1792)
pcrel1793:
	auipc a0, %pcrel_hi(my_y1)
	addi a0, a0, %pcrel_lo(pcrel1793)
pcrel1794:
	auipc a1, %pcrel_hi(my_y2)
	addi a1, a1, %pcrel_lo(pcrel1794)
	mv a4, zero
	li a2, 512
	bge zero, a2, label158
	j label157
label158:
	mv a4, zero
	li a2, 512
	bge zero, a2, label162
	j label6
label162:
	mv a5, zero
	li a2, 512
	bge zero, a2, label439
	li a4, 1080
	mulw a2, zero, a4
	add a2, a1, a2
	mulw a3, zero, a4
	add a3, a0, a3
	mulw a4, zero, a4
	add a4, s0, a4
	mv t4, zero
	addiw t1, zero, 4
	li t2, 270
	bge t1, t2, label41
	j label40
label6:
	li a3, 1080
	mulw a2, a4, a3
	add a2, s1, a2
	mulw a3, a4, a3
	add a3, a1, a3
	fmv.w.x f10, zero
	fmv.w.x f11, zero
	fmv.w.x f12, zero
	fmv.w.x f13, zero
	li t3, 269
	addiw a5, t3, -4
	blt a5, zero, label14
label13:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t1, t1, %pcrel_lo(label13)
	flw f14, 0(t1)
	fmul.s f14, f14, f11
	flw f15, 4(t1)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t1)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	sh2add t2, t3, a3
	fsw f12, 0(t2)
	sh2add t3, t3, a2
	flw f13, 0(t3)
	flw f14, 0(t1)
	fmul.s f14, f14, f13
	flw f15, 4(t1)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t1)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -4(t2)
	flw f11, -4(t3)
	flw f14, 0(t1)
	fmul.s f14, f14, f11
	flw f15, 4(t1)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t1)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	fsw f12, -8(t2)
	flw f13, -8(t3)
	flw f14, 0(t1)
	fmul.s f14, f14, f13
	flw f15, 4(t1)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t1)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -12(t2)
	flw f11, -12(t3)
	mv t3, a5
	addiw a5, a5, -4
	blt a5, zero, label14
	j label13
label14:
	addiw a5, t3, -4
	blt a5, zero, label21
	j label20
label439:
	mv a2, zero
	li a3, 270
	bge zero, a3, label560
	fmv.w.x f10, zero
	fmv.w.x f13, zero
	fmv.w.x f11, zero
	mv t1, zero
	addiw a3, zero, 4
	li a4, 512
	bge a3, a4, label103
	j label121
label40:
	sh2add t2, t4, a3
	flw f10, 0(t2)
	sh2add t3, t4, a2
	flw f11, 0(t3)
	fadd.s f10, f10, f11
	sh2add t4, t4, a4
	fsw f10, 0(t4)
	flw f10, 4(t2)
	flw f11, 4(t3)
	fadd.s f10, f10, f11
	fsw f10, 4(t4)
	flw f10, 8(t2)
	flw f11, 8(t3)
	fadd.s f10, f10, f11
	fsw f10, 8(t4)
	flw f10, 12(t2)
	flw f11, 12(t3)
	fadd.s f10, f10, f11
	fsw f10, 12(t4)
	mv t4, t1
	addiw t1, t1, 4
	li t2, 270
	bge t1, t2, label41
	j label40
label560:
	mv a2, zero
	li a3, 270
	bge zero, a3, label567
	fmv.w.x f10, zero
	fmv.w.x f11, zero
	fmv.w.x f12, zero
	fmv.w.x f14, zero
	li t1, 511
	addiw a3, t1, -4
	blt a3, zero, label76
	j label97
label567:
	mv a5, zero
	li a2, 512
	bge zero, a2, label56
	j label574
label97:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(label97)
	flw f13, 0(a4)
	fmul.s f13, f13, f11
	flw f15, 4(a4)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f10
	flw f14, 8(a4)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	li t2, 1080
	mulw a5, t1, t2
	add a5, a1, a5
	sh2add t3, a2, a5
	fsw f12, 0(t3)
	mulw t1, t1, t2
	add t1, s0, t1
	sh2add t2, a2, t1
	flw f13, 0(t2)
	flw f14, 0(a4)
	fmul.s f14, f14, f13
	flw f15, 4(a4)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	addi t2, a5, -1080
	sh2add t2, a2, t2
	fsw f10, 0(t2)
	addi t2, t1, -1080
	sh2add t2, a2, t2
	flw f11, 0(t2)
	flw f14, 0(a4)
	fmul.s f14, f14, f11
	flw f15, 4(a4)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a4)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	li t2, -2160
	add t3, a5, t2
	sh2add t3, a2, t3
	fsw f12, 0(t3)
	add t3, t1, t2
	sh2add t3, a2, t3
	flw f13, 0(t3)
	flw f14, 0(a4)
	fmul.s f14, f14, f13
	flw f15, 4(a4)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	addi a4, t2, -1080
	add a5, a5, a4
	sh2add a5, a2, a5
	fsw f10, 0(a5)
	add a4, t1, a4
	sh2add a4, a2, a4
	flw f11, 0(a4)
	mv t1, a3
	fmv.s f14, f13
	addiw a3, a3, -4
	blt a3, zero, label76
	j label97
label76:
	addiw a3, t1, -4
	blt a3, zero, label83
	j label82
label83:
	addiw a3, t1, -4
	blt a3, zero, label797
	j label96
label797:
	mv a3, t1
label89:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(label89)
	flw f13, 0(a4)
	fmul.s f13, f13, f11
	flw f15, 4(a4)
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
	blt a3, zero, label95
	fmv.s f12, f10
	fmv.s f14, f11
	fmv.s f10, f13
	fmv.s f11, f15
	j label89
label95:
	addiw a2, a2, 1
	li a3, 270
	bge a2, a3, label567
	fmv.w.x f10, zero
	fmv.w.x f11, zero
	fmv.w.x f12, zero
	fmv.w.x f14, zero
	li t1, 511
	addiw a3, t1, -4
	blt a3, zero, label76
	j label97
label574:
	li a4, 1080
	mulw a2, a5, a4
	add a2, a1, a2
	mulw a3, a5, a4
	add a3, a0, a3
	mulw a4, a5, a4
	add a4, s0, a4
	mv t4, zero
	addiw t1, zero, 4
	li t2, 270
	bge t1, t2, label61
	j label60
label68:
	addiw a5, a5, 1
	li a2, 512
	bge a5, a2, label56
	j label574
label1783:
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label68
	j label1783
label103:
	addiw a3, t1, 4
	li a4, 512
	bge a3, a4, label1019
	j label120
label1019:
	fmv.s f12, f11
	addiw a3, t1, 4
	li a4, 512
	bge a3, a4, label1024
	j label119
label1024:
	mv a3, t1
label113:
	li a4, 1080
	mulw a5, a3, a4
	add a5, s0, a5
	sh2add a5, a2, a5
	flw f11, 0(a5)
pcrel1795:
	auipc a5, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a5, a5, %pcrel_lo(pcrel1795)
	flw f14, 12(a5)
	fmul.s f14, f14, f11
	flw f15, 16(a5)
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
	bge a3, a4, label118
	fmv.s f13, f11
	fmv.s f12, f10
	fmv.s f10, f14
	j label113
label118:
	addiw a2, a2, 1
	li a3, 270
	bge a2, a3, label560
	fmv.w.x f10, zero
	fmv.w.x f13, zero
	fmv.w.x f11, zero
	mv t1, zero
	addiw a3, zero, 4
	li a4, 512
	bge a3, a4, label103
	j label121
label61:
	addiw t1, t4, 4
	li t2, 270
	bge t1, t2, label63
label69:
	sh2add t2, t4, a3
	flw f10, 0(t2)
	sh2add t3, t4, a2
	flw f11, 0(t3)
	fadd.s f10, f10, f11
	sh2add t4, t4, a4
	fsw f10, 0(t4)
	flw f10, 4(t2)
	flw f11, 4(t3)
	fadd.s f10, f10, f11
	fsw f10, 4(t4)
	flw f10, 8(t2)
	flw f11, 8(t3)
	fadd.s f10, f10, f11
	fsw f10, 8(t4)
	flw f10, 12(t2)
	flw f11, 12(t3)
	fadd.s f10, f10, f11
	fsw f10, 12(t4)
	mv t4, t1
	addiw t1, t1, 4
	li t2, 270
	bge t1, t2, label63
	j label69
label63:
	addiw t1, t4, 4
	li t2, 270
	bge t1, t2, label623
	j label65
label623:
	mv t1, t4
	sh2add t2, t4, a3
	flw f10, 0(t2)
	sh2add t2, t4, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t4, a4
	fsw f10, 0(t2)
	addiw t1, t4, 1
	li t2, 270
	bge t1, t2, label68
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label68
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label68
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label68
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label68
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label68
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label68
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label68
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label68
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label68
	j label1783
label96:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(label96)
	flw f13, 0(a4)
	fmul.s f13, f13, f11
	flw f15, 4(a4)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f10
	flw f14, 8(a4)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	li t2, 1080
	mulw a5, t1, t2
	add a5, a1, a5
	sh2add t3, a2, a5
	fsw f12, 0(t3)
	mulw t1, t1, t2
	add t1, s0, t1
	sh2add t2, a2, t1
	flw f13, 0(t2)
	flw f14, 0(a4)
	fmul.s f14, f14, f13
	flw f15, 4(a4)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	addi t2, a5, -1080
	sh2add t2, a2, t2
	fsw f10, 0(t2)
	addi t2, t1, -1080
	sh2add t2, a2, t2
	flw f11, 0(t2)
	flw f14, 0(a4)
	fmul.s f14, f14, f11
	flw f15, 4(a4)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a4)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	li t2, -2160
	add t3, a5, t2
	sh2add t3, a2, t3
	fsw f12, 0(t3)
	add t3, t1, t2
	sh2add t3, a2, t3
	flw f14, 0(t3)
	flw f13, 0(a4)
	fmul.s f13, f13, f14
	flw f15, 4(a4)
	fmul.s f11, f15, f11
	fadd.s f11, f13, f11
	fadd.s f11, f11, f12
	flw f13, 8(a4)
	fmul.s f10, f13, f10
	fadd.s f10, f11, f10
	addi a4, t2, -1080
	add a5, a5, a4
	sh2add a5, a2, a5
	fsw f10, 0(a5)
	add a4, t1, a4
	sh2add a4, a2, a4
	flw f11, 0(a4)
	mv t1, a3
	addiw a3, a3, -4
	blt a3, zero, label797
	j label96
label60:
	sh2add t2, t4, a3
	flw f10, 0(t2)
	sh2add t3, t4, a2
	flw f11, 0(t3)
	fadd.s f10, f10, f11
	sh2add t4, t4, a4
	fsw f10, 0(t4)
	flw f10, 4(t2)
	flw f11, 4(t3)
	fadd.s f10, f10, f11
	fsw f10, 4(t4)
	flw f10, 8(t2)
	flw f11, 8(t3)
	fadd.s f10, f10, f11
	fsw f10, 8(t4)
	flw f10, 12(t2)
	flw f11, 12(t3)
	fadd.s f10, f10, f11
	fsw f10, 12(t4)
	mv t4, t1
	addiw t1, t1, 4
	li t2, 270
	bge t1, t2, label61
	j label60
label82:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(label82)
	flw f13, 0(a4)
	fmul.s f13, f13, f11
	flw f15, 4(a4)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f10
	flw f14, 8(a4)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	li t2, 1080
	mulw a5, t1, t2
	add a5, a1, a5
	sh2add t3, a2, a5
	fsw f12, 0(t3)
	mulw t1, t1, t2
	add t1, s0, t1
	sh2add t2, a2, t1
	flw f13, 0(t2)
	flw f14, 0(a4)
	fmul.s f14, f14, f13
	flw f15, 4(a4)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	addi t2, a5, -1080
	sh2add t2, a2, t2
	fsw f10, 0(t2)
	addi t2, t1, -1080
	sh2add t2, a2, t2
	flw f11, 0(t2)
	flw f14, 0(a4)
	fmul.s f14, f14, f11
	flw f15, 4(a4)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a4)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	li t2, -2160
	add t3, a5, t2
	sh2add t3, a2, t3
	fsw f12, 0(t3)
	add t3, t1, t2
	sh2add t3, a2, t3
	flw f13, 0(t3)
	flw f14, 0(a4)
	fmul.s f14, f14, f13
	flw f15, 4(a4)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	addi a4, t2, -1080
	add a5, a5, a4
	sh2add a5, a2, a5
	fsw f10, 0(a5)
	add a4, t1, a4
	sh2add a4, a2, a4
	flw f11, 0(a4)
	mv t1, a3
	fmv.s f14, f13
	addiw a3, a3, -4
	blt a3, zero, label83
	j label82
label121:
	li t2, 1080
	mulw a4, t1, t2
	add a5, s0, a4
	sh2add a4, a2, a5
	flw f12, 0(a4)
pcrel1796:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(pcrel1796)
	flw f14, 12(a4)
	fmul.s f14, f14, f12
	flw f15, 16(a4)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a4)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	mulw t1, t1, t2
	add t1, a0, t1
	sh2add t3, a2, t1
	fsw f11, 0(t3)
	addi t3, a5, 1080
	sh2add t3, a2, t3
	flw f13, 0(t3)
	flw f14, 12(a4)
	fmul.s f14, f14, f13
	flw f15, 16(a4)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f11
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f12, f10
	addi t3, t1, 1080
	sh2add t3, a2, t3
	fsw f10, 0(t3)
	slli t2, t2, 1
	add t3, a5, t2
	sh2add t3, a2, t3
	flw f12, 0(t3)
	flw f14, 12(a4)
	fmul.s f14, f14, f12
	flw f15, 16(a4)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a4)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	add t3, t1, t2
	sh2add t3, a2, t3
	fsw f11, 0(t3)
	addi t2, t2, 1080
	add a5, a5, t2
	sh2add a5, a2, a5
	flw f13, 0(a5)
	flw f14, 12(a4)
	fmul.s f14, f14, f13
	flw f15, 16(a4)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f11
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f12, f10
	add a4, t1, t2
	sh2add a4, a2, a4
	fsw f10, 0(a4)
	mv t1, a3
	addiw a3, a3, 4
	li a4, 512
	bge a3, a4, label103
	j label121
label20:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t1, t1, %pcrel_lo(label20)
	flw f14, 0(t1)
	fmul.s f14, f14, f11
	flw f15, 4(t1)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t1)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	sh2add t2, t3, a3
	fsw f12, 0(t2)
	sh2add t3, t3, a2
	flw f13, 0(t3)
	flw f14, 0(t1)
	fmul.s f14, f14, f13
	flw f15, 4(t1)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t1)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -4(t2)
	flw f11, -4(t3)
	flw f14, 0(t1)
	fmul.s f14, f14, f11
	flw f15, 4(t1)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t1)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	fsw f12, -8(t2)
	flw f13, -8(t3)
	flw f14, 0(t1)
	fmul.s f14, f14, f13
	flw f15, 4(t1)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t1)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -12(t2)
	flw f11, -12(t3)
	mv t3, a5
	addiw a5, a5, -4
	blt a5, zero, label21
	j label20
label21:
	addiw a5, t3, -4
	blt a5, zero, label333
	j label27
label333:
	mv a5, t3
	j label28
label27:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t1, t1, %pcrel_lo(label27)
	flw f14, 0(t1)
	fmul.s f14, f14, f11
	flw f15, 4(t1)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t1)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	sh2add t2, t3, a3
	fsw f12, 0(t2)
	sh2add t3, t3, a2
	flw f13, 0(t3)
	flw f14, 0(t1)
	fmul.s f14, f14, f13
	flw f15, 4(t1)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t1)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -4(t2)
	flw f11, -4(t3)
	flw f14, 0(t1)
	fmul.s f14, f14, f11
	flw f15, 4(t1)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t1)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	fsw f12, -8(t2)
	flw f13, -8(t3)
	flw f14, 0(t1)
	fmul.s f14, f14, f13
	flw f15, 4(t1)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t1)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -12(t2)
	flw f11, -12(t3)
	mv t3, a5
	addiw a5, a5, -4
	blt a5, zero, label333
	j label27
label28:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t1, t1, %pcrel_lo(label28)
	flw f14, 0(t1)
	fmul.s f14, f14, f11
	flw f15, 4(t1)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t1)
	fmul.s f12, f14, f12
	fadd.s f14, f13, f12
	sh2add t1, a5, a3
	fsw f14, 0(t1)
	sh2add t1, a5, a2
	flw f15, 0(t1)
	addiw a5, a5, -1
	blt a5, zero, label34
	fmv.s f12, f10
	fmv.s f13, f11
	fmv.s f10, f14
	fmv.s f11, f15
	j label28
label34:
	addiw a4, a4, 1
	li a2, 512
	bge a4, a2, label162
	j label6
label65:
	sh2add t2, t4, a3
	flw f10, 0(t2)
	sh2add t3, t4, a2
	flw f11, 0(t3)
	fadd.s f10, f10, f11
	sh2add t4, t4, a4
	fsw f10, 0(t4)
	flw f10, 4(t2)
	flw f11, 4(t3)
	fadd.s f10, f10, f11
	fsw f10, 4(t4)
	flw f10, 8(t2)
	flw f11, 8(t3)
	fadd.s f10, f10, f11
	fsw f10, 8(t4)
	flw f10, 12(t2)
	flw f11, 12(t3)
	fadd.s f10, f10, f11
	fsw f10, 12(t4)
	mv t4, t1
	addiw t1, t1, 4
	li t2, 270
	bge t1, t2, label623
	j label65
label119:
	li t2, 1080
	mulw a4, t1, t2
	add a5, s0, a4
	sh2add a4, a2, a5
	flw f14, 0(a4)
pcrel1797:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(pcrel1797)
	flw f11, 12(a4)
	fmul.s f11, f11, f14
	flw f15, 16(a4)
	fmul.s f13, f15, f13
	fadd.s f11, f11, f13
	fadd.s f11, f11, f10
	flw f13, 8(a4)
	fmul.s f12, f13, f12
	fadd.s f11, f11, f12
	mulw t1, t1, t2
	add t1, a0, t1
	sh2add t3, a2, t1
	fsw f11, 0(t3)
	addi t3, a5, 1080
	sh2add t3, a2, t3
	flw f12, 0(t3)
	flw f13, 12(a4)
	fmul.s f13, f13, f12
	flw f15, 16(a4)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f11
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	addi t3, t1, 1080
	sh2add t3, a2, t3
	fsw f10, 0(t3)
	slli t2, t2, 1
	add t3, a5, t2
	sh2add t3, a2, t3
	flw f13, 0(t3)
	flw f14, 12(a4)
	fmul.s f14, f14, f13
	flw f15, 16(a4)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a4)
	fmul.s f11, f14, f11
	fadd.s f12, f12, f11
	add t3, t1, t2
	sh2add t3, a2, t3
	fsw f12, 0(t3)
	addi t2, t2, 1080
	add a5, a5, t2
	sh2add a5, a2, a5
	flw f11, 0(a5)
	flw f14, 12(a4)
	fmul.s f14, f14, f11
	flw f15, 16(a4)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f12
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	add a4, t1, t2
	sh2add a4, a2, a4
	fsw f10, 0(a4)
	mv t1, a3
	fmv.s f13, f11
	addiw a3, a3, 4
	li a4, 512
	bge a3, a4, label1024
	j label119
label120:
	li t2, 1080
	mulw a4, t1, t2
	add a5, s0, a4
	sh2add a4, a2, a5
	flw f12, 0(a4)
pcrel1798:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(pcrel1798)
	flw f14, 12(a4)
	fmul.s f14, f14, f12
	flw f15, 16(a4)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a4)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	mulw t1, t1, t2
	add t1, a0, t1
	sh2add t3, a2, t1
	fsw f11, 0(t3)
	addi t3, a5, 1080
	sh2add t3, a2, t3
	flw f13, 0(t3)
	flw f14, 12(a4)
	fmul.s f14, f14, f13
	flw f15, 16(a4)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f11
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f12, f10
	addi t3, t1, 1080
	sh2add t3, a2, t3
	fsw f10, 0(t3)
	slli t2, t2, 1
	add t3, a5, t2
	sh2add t3, a2, t3
	flw f12, 0(t3)
	flw f14, 12(a4)
	fmul.s f14, f14, f12
	flw f15, 16(a4)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a4)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	add t3, t1, t2
	sh2add t3, a2, t3
	fsw f11, 0(t3)
	addi t2, t2, 1080
	add a5, a5, t2
	sh2add a5, a2, a5
	flw f13, 0(a5)
	flw f14, 12(a4)
	fmul.s f14, f14, f13
	flw f15, 16(a4)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f11
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f12, f10
	add a4, t1, t2
	sh2add a4, a2, a4
	fsw f10, 0(a4)
	mv t1, a3
	addiw a3, a3, 4
	li a4, 512
	bge a3, a4, label1019
	j label120
label41:
	addiw t1, t4, 4
	li t2, 270
	bge t1, t2, label44
	j label43
label438:
	li a4, 1080
	mulw a2, a5, a4
	add a2, a1, a2
	mulw a3, a5, a4
	add a3, a0, a3
	mulw a4, a5, a4
	add a4, s0, a4
	mv t4, zero
	addiw t1, zero, 4
	li t2, 270
	bge t1, t2, label41
	j label40
label44:
	addiw t1, t4, 4
	li t2, 270
	bge t1, t2, label514
	j label49
label514:
	mv t1, t4
	sh2add t2, t4, a3
	flw f10, 0(t2)
	sh2add t2, t4, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t4, a4
	fsw f10, 0(t2)
	addiw t1, t4, 1
	li t2, 270
	bge t1, t2, label48
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label48
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label48
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label48
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label48
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label48
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label48
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label48
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label48
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label48
	j label1781
label48:
	addiw a5, a5, 1
	li a2, 512
	bge a5, a2, label439
	j label438
label1781:
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label48
	j label1781
label49:
	sh2add t2, t4, a3
	flw f10, 0(t2)
	sh2add t3, t4, a2
	flw f11, 0(t3)
	fadd.s f10, f10, f11
	sh2add t4, t4, a4
	fsw f10, 0(t4)
	flw f10, 4(t2)
	flw f11, 4(t3)
	fadd.s f10, f10, f11
	fsw f10, 4(t4)
	flw f10, 8(t2)
	flw f11, 8(t3)
	fadd.s f10, f10, f11
	fsw f10, 8(t4)
	flw f10, 12(t2)
	flw f11, 12(t3)
	fadd.s f10, f10, f11
	fsw f10, 12(t4)
	mv t4, t1
	addiw t1, t1, 4
	li t2, 270
	bge t1, t2, label514
	j label49
label43:
	sh2add t2, t4, a3
	flw f10, 0(t2)
	sh2add t3, t4, a2
	flw f11, 0(t3)
	fadd.s f10, f10, f11
	sh2add t4, t4, a4
	fsw f10, 0(t4)
	flw f10, 4(t2)
	flw f11, 4(t3)
	fadd.s f10, f10, f11
	fsw f10, 4(t4)
	flw f10, 8(t2)
	flw f11, 8(t3)
	fadd.s f10, f10, f11
	fsw f10, 8(t4)
	flw f10, 12(t2)
	flw f11, 12(t3)
	fadd.s f10, f10, f11
	fsw f10, 12(t4)
	mv t4, t1
	addiw t1, t1, 4
	li t2, 270
	bge t1, t2, label44
	j label43
label157:
	li a3, 1080
	mulw a2, a4, a3
	add a2, s1, a2
	mulw a3, a4, a3
	add a3, a0, a3
	fmv.w.x f10, zero
	fmv.w.x f11, zero
	fmv.w.x f12, zero
	mv t3, zero
	addiw a5, zero, 4
	li t1, 270
	bge a5, t1, label1337
	j label146
label145:
	addiw a4, a4, 1
	li a2, 512
	bge a4, a2, label158
	j label157
label1337:
	fmv.s f13, f11
	addiw a5, t3, 4
	li t1, 270
	bge a5, t1, label134
	j label133
label134:
	addiw a5, t3, 4
	li t1, 270
	bge a5, t1, label1421
	j label139
label1421:
	mv a5, t3
label140:
	sh2add t1, a5, a2
	flw f11, 0(t1)
pcrel1799:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t1, t1, %pcrel_lo(pcrel1799)
	flw f14, 12(t1)
	fmul.s f14, f14, f11
	flw f15, 16(t1)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t1)
	fmul.s f12, f14, f12
	fadd.s f14, f13, f12
	sh2add t1, a5, a3
	fsw f14, 0(t1)
	addiw a5, a5, 1
	li t1, 270
	bge a5, t1, label145
	fmv.s f13, f11
	fmv.s f12, f10
	fmv.s f10, f14
	j label140
label146:
	sh2add t2, t3, a2
	flw f13, 0(t2)
pcrel1800:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t1, t1, %pcrel_lo(pcrel1800)
	flw f14, 12(t1)
	fmul.s f14, f14, f13
	flw f15, 16(t1)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f10
	flw f14, 8(t1)
	fmul.s f12, f14, f12
	fadd.s f11, f11, f12
	sh2add t3, t3, a3
	fsw f11, 0(t3)
	flw f12, 4(t2)
	flw f14, 12(t1)
	fmul.s f14, f14, f12
	flw f15, 16(t1)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(t1)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 4(t3)
	flw f13, 8(t2)
	flw f14, 12(t1)
	fmul.s f14, f14, f13
	flw f15, 16(t1)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(t1)
	fmul.s f11, f14, f11
	fadd.s f12, f12, f11
	fsw f12, 8(t3)
	flw f11, 12(t2)
	flw f14, 12(t1)
	fmul.s f14, f14, f11
	flw f15, 16(t1)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f12
	flw f14, 8(t1)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 12(t3)
	mv t3, a5
	addiw a5, a5, 4
	li t1, 270
	bge a5, t1, label1337
	j label146
label139:
	sh2add t2, t3, a2
	flw f14, 0(t2)
pcrel1801:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t1, t1, %pcrel_lo(pcrel1801)
	flw f11, 12(t1)
	fmul.s f11, f11, f14
	flw f15, 16(t1)
	fmul.s f13, f15, f13
	fadd.s f11, f11, f13
	fadd.s f11, f11, f10
	flw f13, 8(t1)
	fmul.s f12, f13, f12
	fadd.s f11, f11, f12
	sh2add t3, t3, a3
	fsw f11, 0(t3)
	flw f12, 4(t2)
	flw f13, 12(t1)
	fmul.s f13, f13, f12
	flw f15, 16(t1)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f11
	flw f14, 8(t1)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 4(t3)
	flw f13, 8(t2)
	flw f14, 12(t1)
	fmul.s f14, f14, f13
	flw f15, 16(t1)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(t1)
	fmul.s f11, f14, f11
	fadd.s f12, f12, f11
	fsw f12, 8(t3)
	flw f11, 12(t2)
	flw f14, 12(t1)
	fmul.s f14, f14, f11
	flw f15, 16(t1)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f12
	flw f14, 8(t1)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 12(t3)
	mv t3, a5
	fmv.s f13, f11
	addiw a5, a5, 4
	li t1, 270
	bge a5, t1, label1421
	j label139
label133:
	sh2add t2, t3, a2
	flw f14, 0(t2)
pcrel1802:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t1, t1, %pcrel_lo(pcrel1802)
	flw f11, 12(t1)
	fmul.s f11, f11, f14
	flw f15, 16(t1)
	fmul.s f13, f15, f13
	fadd.s f11, f11, f13
	fadd.s f11, f11, f10
	flw f13, 8(t1)
	fmul.s f12, f13, f12
	fadd.s f11, f11, f12
	sh2add t3, t3, a3
	fsw f11, 0(t3)
	flw f12, 4(t2)
	flw f13, 12(t1)
	fmul.s f13, f13, f12
	flw f15, 16(t1)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f11
	flw f14, 8(t1)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 4(t3)
	flw f13, 8(t2)
	flw f14, 12(t1)
	fmul.s f14, f14, f13
	flw f15, 16(t1)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(t1)
	fmul.s f11, f14, f11
	fadd.s f12, f12, f11
	fsw f12, 8(t3)
	flw f11, 12(t2)
	flw f14, 12(t1)
	fmul.s f14, f14, f11
	flw f15, 16(t1)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f12
	flw f14, 8(t1)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 12(t3)
	mv t3, a5
	fmv.s f13, f11
	addiw a5, a5, 4
	li t1, 270
	bge a5, t1, label134
	j label133
label56:
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
