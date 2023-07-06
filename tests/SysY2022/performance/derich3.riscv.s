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
pcrel1786:
	auipc a0, %pcrel_hi(imgIn)
	sd s1, 16(sp)
	addi a0, a0, %pcrel_lo(pcrel1786)
	sd s0, 8(sp)
	mv s1, a0
	sd ra, 0(sp)
	jal getfarray
	li a0, 156
	jal _sysy_starttime
	mv a4, zero
pcrel1787:
	auipc a1, %pcrel_hi(my_y2)
pcrel1788:
	auipc a0, %pcrel_hi(imgOut)
	addi a1, a1, %pcrel_lo(pcrel1787)
	addi s0, a0, %pcrel_lo(pcrel1788)
pcrel1789:
	auipc a0, %pcrel_hi(my_y1)
	addi a0, a0, %pcrel_lo(pcrel1789)
	li a2, 512
	bge zero, a2, label158
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
	bge a5, t0, label1337
	j label128
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
	mv t3, zero
	mulw a3, zero, a4
	mulw a2, zero, a4
	add a3, a0, a3
	mulw a4, zero, a4
	add a2, a1, a2
	add a4, s0, a4
	addiw t0, zero, 4
	li t1, 270
	bge t0, t1, label40
	j label49
label439:
	mv a2, zero
	li a3, 270
	bge zero, a3, label560
	fmv.w.x f10, zero
	mv t0, zero
	fmv.w.x f13, zero
	fmv.w.x f11, zero
	addiw a3, zero, 4
	li a4, 512
	bge a3, a4, label103
	j label121
label560:
	mv a2, zero
	li a3, 270
	bge zero, a3, label567
	fmv.w.x f10, zero
	li t0, 511
	fmv.w.x f11, zero
	fmv.w.x f12, zero
	fmv.w.x f13, zero
	addiw a3, t0, -4
	blt a3, zero, label76
	j label97
label567:
	mv a5, zero
	li a2, 512
	bge zero, a2, label69
label574:
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
	bge t0, t1, label59
	j label68
label69:
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
label6:
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
	blt a5, zero, label14
label13:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	sh2add t1, t2, a3
	addi t0, t0, %pcrel_lo(label13)
	sh2add t2, t2, a2
	flw f14, 0(t0)
	flw f15, 4(t0)
	fmul.s f14, f11, f14
	fmul.s f13, f13, f15
	fadd.s f13, f14, f13
	flw f14, 8(t0)
	fmul.s f12, f12, f14
	fadd.s f13, f13, f10
	fadd.s f12, f13, f12
	fsw f12, 0(t1)
	flw f13, 0(t2)
	flw f14, 0(t0)
	flw f15, 4(t0)
	fmul.s f14, f13, f14
	fmul.s f11, f11, f15
	fadd.s f11, f14, f11
	flw f14, 8(t0)
	fmul.s f10, f10, f14
	fadd.s f11, f11, f12
	fadd.s f10, f11, f10
	fsw f10, -4(t1)
	flw f11, -4(t2)
	flw f14, 0(t0)
	flw f15, 4(t0)
	fmul.s f14, f11, f14
	fmul.s f13, f13, f15
	fadd.s f13, f14, f13
	flw f14, 8(t0)
	fmul.s f12, f12, f14
	fadd.s f13, f13, f10
	fadd.s f12, f13, f12
	fsw f12, -8(t1)
	flw f13, -8(t2)
	flw f14, 0(t0)
	flw f15, 4(t0)
	fmul.s f14, f13, f14
	fmul.s f11, f11, f15
	fadd.s f11, f14, f11
	flw f14, 8(t0)
	fmul.s f10, f10, f14
	fadd.s f11, f11, f12
	fadd.s f10, f11, f10
	fsw f10, -12(t1)
	flw f11, -12(t2)
	mv t2, a5
	addiw a5, a5, -4
	blt a5, zero, label14
	j label13
label14:
	addiw a5, t2, -4
	blt a5, zero, label21
label20:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	sh2add t1, t2, a3
	addi t0, t0, %pcrel_lo(label20)
	sh2add t2, t2, a2
	flw f14, 0(t0)
	flw f15, 4(t0)
	fmul.s f14, f11, f14
	fmul.s f13, f13, f15
	fadd.s f13, f14, f13
	flw f14, 8(t0)
	fmul.s f12, f12, f14
	fadd.s f13, f13, f10
	fadd.s f12, f13, f12
	fsw f12, 0(t1)
	flw f13, 0(t2)
	flw f14, 0(t0)
	flw f15, 4(t0)
	fmul.s f14, f13, f14
	fmul.s f11, f11, f15
	fadd.s f11, f14, f11
	flw f14, 8(t0)
	fmul.s f10, f10, f14
	fadd.s f11, f11, f12
	fadd.s f10, f11, f10
	fsw f10, -4(t1)
	flw f11, -4(t2)
	flw f14, 0(t0)
	flw f15, 4(t0)
	fmul.s f14, f11, f14
	fmul.s f13, f13, f15
	fadd.s f13, f14, f13
	flw f14, 8(t0)
	fmul.s f12, f12, f14
	fadd.s f13, f13, f10
	fadd.s f12, f13, f12
	fsw f12, -8(t1)
	flw f13, -8(t2)
	flw f14, 0(t0)
	flw f15, 4(t0)
	fmul.s f14, f13, f14
	fmul.s f11, f11, f15
	fadd.s f11, f14, f11
	flw f14, 8(t0)
	fmul.s f10, f10, f14
	fadd.s f11, f11, f12
	fadd.s f10, f11, f10
	fsw f10, -12(t1)
	flw f11, -12(t2)
	mv t2, a5
	addiw a5, a5, -4
	blt a5, zero, label21
	j label20
label28:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t0, %pcrel_lo(label28)
	flw f14, 0(t0)
	flw f15, 4(t0)
	fmul.s f14, f11, f14
	fmul.s f13, f13, f15
	fadd.s f13, f14, f13
	flw f14, 8(t0)
	sh2add t0, a5, a3
	fmul.s f12, f12, f14
	fadd.s f13, f13, f10
	fadd.s f14, f13, f12
	fsw f14, 0(t0)
	sh2add t0, a5, a2
	addiw a5, a5, -1
	flw f15, 0(t0)
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
label1337:
	fmv.s f13, f11
	addiw a5, t2, 4
	li t0, 270
	bge a5, t0, label135
	j label134
label128:
	sh2add t1, t2, a2
pcrel1790:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	sh2add t2, t2, a3
	flw f13, 0(t1)
	addi t0, t0, %pcrel_lo(pcrel1790)
	flw f14, 12(t0)
	flw f15, 16(t0)
	fmul.s f14, f13, f14
	fmul.s f11, f11, f15
	fadd.s f11, f14, f11
	flw f14, 8(t0)
	fmul.s f12, f12, f14
	fadd.s f11, f11, f10
	fadd.s f11, f11, f12
	fsw f11, 0(t2)
	flw f12, 4(t1)
	flw f14, 12(t0)
	flw f15, 16(t0)
	fmul.s f14, f12, f14
	fmul.s f13, f13, f15
	fadd.s f13, f14, f13
	flw f14, 8(t0)
	fmul.s f10, f10, f14
	fadd.s f13, f13, f11
	fadd.s f10, f13, f10
	fsw f10, 4(t2)
	flw f13, 8(t1)
	flw f14, 12(t0)
	flw f15, 16(t0)
	fmul.s f14, f13, f14
	fmul.s f12, f12, f15
	fadd.s f12, f14, f12
	flw f14, 8(t0)
	fmul.s f11, f11, f14
	fadd.s f12, f12, f10
	fadd.s f12, f12, f11
	fsw f12, 8(t2)
	flw f11, 12(t1)
	flw f14, 12(t0)
	flw f15, 16(t0)
	fmul.s f14, f11, f14
	fmul.s f13, f13, f15
	fadd.s f13, f14, f13
	flw f14, 8(t0)
	fmul.s f10, f10, f14
	fadd.s f13, f13, f12
	fadd.s f10, f13, f10
	fsw f10, 12(t2)
	mv t2, a5
	addiw a5, a5, 4
	li t0, 270
	bge a5, t0, label1337
	j label128
label135:
	addiw a5, t2, 4
	li t0, 270
	bge a5, t0, label1495
	j label146
label1495:
	mv a5, t2
label140:
	sh2add t0, a5, a2
	flw f11, 0(t0)
pcrel1791:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t0, %pcrel_lo(pcrel1791)
	flw f14, 12(t0)
	flw f15, 16(t0)
	fmul.s f14, f11, f14
	fmul.s f13, f13, f15
	fadd.s f13, f14, f13
	flw f14, 8(t0)
	sh2add t0, a5, a3
	fmul.s f12, f12, f14
	addiw a5, a5, 1
	fadd.s f13, f13, f10
	fadd.s f14, f13, f12
	fsw f14, 0(t0)
	li t0, 270
	bge a5, t0, label145
	fmv.s f13, f11
	fmv.s f12, f10
	fmv.s f10, f14
	j label140
label76:
	addiw a3, t0, -4
	blt a3, zero, label702
	j label96
label702:
	fmv.s f14, f13
	addiw a3, t0, -4
	blt a3, zero, label707
	j label95
label707:
	mv a3, t0
label88:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(label88)
	flw f13, 0(a4)
	flw f15, 4(a4)
	fmul.s f13, f11, f13
	fmul.s f14, f14, f15
	fadd.s f13, f13, f14
	flw f14, 8(a4)
	li a4, 1080
	fmul.s f12, f12, f14
	mulw a5, a3, a4
	fadd.s f13, f13, f10
	add a5, a1, a5
	mulw a4, a3, a4
	sh2add a5, a2, a5
	addiw a3, a3, -1
	add a4, s0, a4
	sh2add a4, a2, a4
	fadd.s f13, f13, f12
	fsw f13, 0(a5)
	flw f15, 0(a4)
	blt a3, zero, label94
	fmv.s f12, f10
	fmv.s f14, f11
	fmv.s f10, f13
	fmv.s f11, f15
	j label88
label40:
	addiw t0, t3, 4
	li t1, 270
	bge t0, t1, label43
label42:
	sh2add t1, t3, a3
	sh2add t2, t3, a2
	flw f10, 0(t1)
	sh2add t3, t3, a4
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
	bge t0, t1, label43
	j label42
label43:
	addiw t0, t3, 4
	li t1, 270
	bge t0, t1, label487
	j label45
label438:
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
	bge t0, t1, label40
	j label49
label487:
	mv t0, t3
	sh2add t1, t3, a3
	flw f10, 0(t1)
	sh2add t1, t3, a2
	flw f11, 0(t1)
	sh2add t1, t3, a4
	fadd.s f10, f10, f11
	addiw t0, t3, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label48
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label48
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label48
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label48
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label48
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label48
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label48
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label48
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label48
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label48
	j label1780
label45:
	sh2add t1, t3, a3
	sh2add t2, t3, a2
	flw f10, 0(t1)
	sh2add t3, t3, a4
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
	bge t0, t1, label487
	j label45
label48:
	addiw a5, a5, 1
	li a2, 512
	bge a5, a2, label439
	j label438
label1780:
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label48
	j label1780
label103:
	addiw a3, t0, 4
	li a4, 512
	bge a3, a4, label1019
	j label120
label1019:
	fmv.s f12, f11
	addiw a3, t0, 4
	li a4, 512
	bge a3, a4, label1024
	j label113
label1024:
	mv a3, t0
	j label114
label113:
	li t1, 1080
	mulw a4, t0, t1
	mulw t0, t0, t1
	add a5, s0, a4
	slli t1, t1, 1
	add t0, a0, t0
	sh2add a4, a2, a5
	sh2add t2, a2, t0
	flw f14, 0(a4)
pcrel1792:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(pcrel1792)
	flw f11, 12(a4)
	flw f15, 16(a4)
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
	flw f13, 12(a4)
	sh2add t2, a2, t2
	flw f15, 16(a4)
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
	flw f14, 12(a4)
	addi t1, t1, 1080
	sh2add t2, a2, t2
	flw f15, 16(a4)
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
	flw f14, 12(a4)
	flw f15, 16(a4)
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
	bge a3, a4, label1024
	j label113
label120:
	li t1, 1080
	mulw a4, t0, t1
	mulw t0, t0, t1
	add a5, s0, a4
	slli t1, t1, 1
	add t0, a0, t0
	sh2add a4, a2, a5
	sh2add t2, a2, t0
	flw f12, 0(a4)
pcrel1793:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(pcrel1793)
	flw f14, 12(a4)
	flw f15, 16(a4)
	fmul.s f14, f12, f14
	fmul.s f13, f13, f15
	fadd.s f13, f14, f13
	flw f14, 8(a4)
	fmul.s f11, f11, f14
	fadd.s f13, f13, f10
	fadd.s f11, f13, f11
	fsw f11, 0(t2)
	addi t2, a5, 1080
	sh2add t2, a2, t2
	flw f13, 0(t2)
	addi t2, t0, 1080
	flw f14, 12(a4)
	sh2add t2, a2, t2
	flw f15, 16(a4)
	fmul.s f14, f13, f14
	fmul.s f12, f12, f15
	fadd.s f12, f14, f12
	flw f14, 8(a4)
	fmul.s f10, f10, f14
	fadd.s f12, f12, f11
	fadd.s f10, f12, f10
	fsw f10, 0(t2)
	add t2, a5, t1
	sh2add t2, a2, t2
	flw f12, 0(t2)
	add t2, t0, t1
	flw f14, 12(a4)
	addi t1, t1, 1080
	sh2add t2, a2, t2
	flw f15, 16(a4)
	fmul.s f14, f12, f14
	add a5, a5, t1
	fmul.s f13, f13, f15
	sh2add a5, a2, a5
	fadd.s f13, f14, f13
	flw f14, 8(a4)
	fmul.s f11, f11, f14
	fadd.s f13, f13, f10
	fadd.s f11, f13, f11
	fsw f11, 0(t2)
	flw f13, 0(a5)
	flw f14, 12(a4)
	flw f15, 16(a4)
	fmul.s f14, f13, f14
	fmul.s f12, f12, f15
	fadd.s f12, f14, f12
	flw f14, 8(a4)
	add a4, t0, t1
	fmul.s f10, f10, f14
	mv t0, a3
	sh2add a4, a2, a4
	fadd.s f12, f12, f11
	fadd.s f10, f12, f10
	fsw f10, 0(a4)
	addiw a3, a3, 4
	li a4, 512
	bge a3, a4, label1019
	j label120
label114:
	li a4, 1080
	mulw a5, a3, a4
	mulw a4, a3, a4
	add a5, s0, a5
	addiw a3, a3, 1
	add a4, a0, a4
	sh2add a5, a2, a5
	sh2add a4, a2, a4
	flw f11, 0(a5)
pcrel1794:
	auipc a5, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a5, a5, %pcrel_lo(pcrel1794)
	flw f14, 12(a5)
	flw f15, 16(a5)
	fmul.s f14, f11, f14
	fmul.s f13, f13, f15
	fadd.s f13, f14, f13
	flw f14, 8(a5)
	fmul.s f12, f12, f14
	fadd.s f13, f13, f10
	fadd.s f14, f13, f12
	fsw f14, 0(a4)
	li a4, 512
	bge a3, a4, label119
	fmv.s f13, f11
	fmv.s f12, f10
	fmv.s f10, f14
	j label114
label59:
	addiw t0, t3, 4
	li t1, 270
	bge t0, t1, label61
label67:
	sh2add t1, t3, a3
	sh2add t2, t3, a2
	flw f10, 0(t1)
	sh2add t3, t3, a4
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
	bge t0, t1, label61
	j label67
label61:
	addiw t0, t3, 4
	li t1, 270
	bge t0, t1, label596
	j label66
label596:
	mv t0, t3
	sh2add t1, t3, a3
	flw f10, 0(t1)
	sh2add t1, t3, a2
	flw f11, 0(t1)
	sh2add t1, t3, a4
	fadd.s f10, f10, f11
	addiw t0, t3, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label65
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label65
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label65
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label65
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label65
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label65
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label65
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label65
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label65
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label65
	j label1781
label65:
	addiw a5, a5, 1
	li a2, 512
	bge a5, a2, label69
	j label574
label66:
	sh2add t1, t3, a3
	sh2add t2, t3, a2
	flw f10, 0(t1)
	sh2add t3, t3, a4
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
	bge t0, t1, label596
	j label66
label1781:
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	sh2add t1, t0, a4
	fadd.s f10, f10, f11
	addiw t0, t0, 1
	fsw f10, 0(t1)
	li t1, 270
	bge t0, t1, label65
	j label1781
label121:
	li t1, 1080
	mulw a4, t0, t1
	mulw t0, t0, t1
	add a5, s0, a4
	slli t1, t1, 1
	add t0, a0, t0
	sh2add a4, a2, a5
	sh2add t2, a2, t0
	flw f12, 0(a4)
pcrel1795:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(pcrel1795)
	flw f14, 12(a4)
	flw f15, 16(a4)
	fmul.s f14, f12, f14
	fmul.s f13, f13, f15
	fadd.s f13, f14, f13
	flw f14, 8(a4)
	fmul.s f11, f11, f14
	fadd.s f13, f13, f10
	fadd.s f11, f13, f11
	fsw f11, 0(t2)
	addi t2, a5, 1080
	sh2add t2, a2, t2
	flw f13, 0(t2)
	addi t2, t0, 1080
	flw f14, 12(a4)
	sh2add t2, a2, t2
	flw f15, 16(a4)
	fmul.s f14, f13, f14
	fmul.s f12, f12, f15
	fadd.s f12, f14, f12
	flw f14, 8(a4)
	fmul.s f10, f10, f14
	fadd.s f12, f12, f11
	fadd.s f10, f12, f10
	fsw f10, 0(t2)
	add t2, a5, t1
	sh2add t2, a2, t2
	flw f12, 0(t2)
	add t2, t0, t1
	flw f14, 12(a4)
	addi t1, t1, 1080
	sh2add t2, a2, t2
	flw f15, 16(a4)
	fmul.s f14, f12, f14
	add a5, a5, t1
	fmul.s f13, f13, f15
	sh2add a5, a2, a5
	fadd.s f13, f14, f13
	flw f14, 8(a4)
	fmul.s f11, f11, f14
	fadd.s f13, f13, f10
	fadd.s f11, f13, f11
	fsw f11, 0(t2)
	flw f13, 0(a5)
	flw f14, 12(a4)
	flw f15, 16(a4)
	fmul.s f14, f13, f14
	fmul.s f12, f12, f15
	fadd.s f12, f14, f12
	flw f14, 8(a4)
	add a4, t0, t1
	fmul.s f10, f10, f14
	mv t0, a3
	sh2add a4, a2, a4
	fadd.s f12, f12, f11
	fadd.s f10, f12, f10
	fsw f10, 0(a4)
	addiw a3, a3, 4
	li a4, 512
	bge a3, a4, label103
	j label121
label97:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	li t1, 1080
	addi a4, a4, %pcrel_lo(label97)
	mulw a5, t0, t1
	flw f14, 0(a4)
	mulw t0, t0, t1
	add a5, a1, a5
	add t0, s0, t0
	flw f15, 4(a4)
	fmul.s f14, f11, f14
	sh2add t2, a2, a5
	sh2add t1, a2, t0
	fmul.s f13, f13, f15
	fadd.s f13, f14, f13
	flw f14, 8(a4)
	fmul.s f12, f12, f14
	fadd.s f13, f13, f10
	fadd.s f12, f13, f12
	fsw f12, 0(t2)
	flw f13, 0(t1)
	addi t1, a5, -1080
	flw f14, 0(a4)
	sh2add t1, a2, t1
	flw f15, 4(a4)
	fmul.s f14, f13, f14
	fmul.s f11, f11, f15
	fadd.s f11, f14, f11
	flw f14, 8(a4)
	fmul.s f10, f10, f14
	fadd.s f11, f11, f12
	fadd.s f10, f11, f10
	fsw f10, 0(t1)
	addi t1, t0, -1080
	sh2add t1, a2, t1
	flw f11, 0(t1)
	li t1, -2160
	flw f14, 0(a4)
	add t2, a5, t1
	flw f15, 4(a4)
	fmul.s f14, f11, f14
	sh2add t2, a2, t2
	fmul.s f13, f13, f15
	fadd.s f13, f14, f13
	flw f14, 8(a4)
	fmul.s f12, f12, f14
	fadd.s f13, f13, f10
	fadd.s f12, f13, f12
	fsw f12, 0(t2)
	add t2, t0, t1
	sh2add t2, a2, t2
	flw f13, 0(t2)
	flw f14, 0(a4)
	flw f15, 4(a4)
	fmul.s f14, f13, f14
	fmul.s f11, f11, f15
	fadd.s f11, f14, f11
	flw f14, 8(a4)
	addi a4, t1, -1080
	fmul.s f10, f10, f14
	add a5, a5, a4
	add a4, t0, a4
	sh2add a5, a2, a5
	fadd.s f11, f11, f12
	mv t0, a3
	sh2add a4, a2, a4
	fadd.s f10, f11, f10
	fsw f10, 0(a5)
	flw f11, 0(a4)
	addiw a3, a3, -4
	blt a3, zero, label76
	j label97
label49:
	sh2add t1, t3, a3
	sh2add t2, t3, a2
	flw f10, 0(t1)
	sh2add t3, t3, a4
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
	bge t0, t1, label40
	j label49
label96:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	li t1, 1080
	addi a4, a4, %pcrel_lo(label96)
	mulw a5, t0, t1
	flw f14, 0(a4)
	mulw t0, t0, t1
	add a5, a1, a5
	add t0, s0, t0
	flw f15, 4(a4)
	fmul.s f14, f11, f14
	sh2add t2, a2, a5
	sh2add t1, a2, t0
	fmul.s f13, f13, f15
	fadd.s f13, f14, f13
	flw f14, 8(a4)
	fmul.s f12, f12, f14
	fadd.s f13, f13, f10
	fadd.s f12, f13, f12
	fsw f12, 0(t2)
	flw f13, 0(t1)
	addi t1, a5, -1080
	flw f14, 0(a4)
	sh2add t1, a2, t1
	flw f15, 4(a4)
	fmul.s f14, f13, f14
	fmul.s f11, f11, f15
	fadd.s f11, f14, f11
	flw f14, 8(a4)
	fmul.s f10, f10, f14
	fadd.s f11, f11, f12
	fadd.s f10, f11, f10
	fsw f10, 0(t1)
	addi t1, t0, -1080
	sh2add t1, a2, t1
	flw f11, 0(t1)
	li t1, -2160
	flw f14, 0(a4)
	add t2, a5, t1
	flw f15, 4(a4)
	fmul.s f14, f11, f14
	sh2add t2, a2, t2
	fmul.s f13, f13, f15
	fadd.s f13, f14, f13
	flw f14, 8(a4)
	fmul.s f12, f12, f14
	fadd.s f13, f13, f10
	fadd.s f12, f13, f12
	fsw f12, 0(t2)
	add t2, t0, t1
	sh2add t2, a2, t2
	flw f13, 0(t2)
	flw f14, 0(a4)
	flw f15, 4(a4)
	fmul.s f14, f13, f14
	fmul.s f11, f11, f15
	fadd.s f11, f14, f11
	flw f14, 8(a4)
	addi a4, t1, -1080
	fmul.s f10, f10, f14
	add a5, a5, a4
	add a4, t0, a4
	sh2add a5, a2, a5
	fadd.s f11, f11, f12
	mv t0, a3
	sh2add a4, a2, a4
	fadd.s f10, f11, f10
	fsw f10, 0(a5)
	flw f11, 0(a4)
	addiw a3, a3, -4
	blt a3, zero, label702
	j label96
label134:
	sh2add t1, t2, a2
pcrel1796:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	sh2add t2, t2, a3
	flw f14, 0(t1)
	addi t0, t0, %pcrel_lo(pcrel1796)
	flw f11, 12(t0)
	flw f15, 16(t0)
	fmul.s f11, f14, f11
	fmul.s f13, f13, f15
	fadd.s f11, f11, f13
	flw f13, 8(t0)
	fmul.s f12, f12, f13
	fadd.s f11, f11, f10
	fadd.s f11, f11, f12
	fsw f11, 0(t2)
	flw f12, 4(t1)
	flw f13, 12(t0)
	flw f15, 16(t0)
	fmul.s f13, f12, f13
	fmul.s f14, f14, f15
	fadd.s f13, f13, f14
	flw f14, 8(t0)
	fmul.s f10, f10, f14
	fadd.s f13, f13, f11
	fadd.s f10, f13, f10
	fsw f10, 4(t2)
	flw f13, 8(t1)
	flw f14, 12(t0)
	flw f15, 16(t0)
	fmul.s f14, f13, f14
	fmul.s f12, f12, f15
	fadd.s f12, f14, f12
	flw f14, 8(t0)
	fmul.s f11, f11, f14
	fadd.s f12, f12, f10
	fadd.s f12, f12, f11
	fsw f12, 8(t2)
	flw f11, 12(t1)
	flw f14, 12(t0)
	flw f15, 16(t0)
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
	bge a5, t0, label135
	j label134
label95:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	li t1, 1080
	addi a4, a4, %pcrel_lo(label95)
	mulw a5, t0, t1
	flw f13, 0(a4)
	mulw t0, t0, t1
	add a5, a1, a5
	add t0, s0, t0
	flw f15, 4(a4)
	fmul.s f13, f11, f13
	sh2add t2, a2, a5
	sh2add t1, a2, t0
	fmul.s f14, f14, f15
	fadd.s f13, f13, f14
	flw f14, 8(a4)
	fmul.s f12, f12, f14
	fadd.s f13, f13, f10
	fadd.s f12, f13, f12
	fsw f12, 0(t2)
	flw f13, 0(t1)
	addi t1, a5, -1080
	flw f14, 0(a4)
	sh2add t1, a2, t1
	flw f15, 4(a4)
	fmul.s f14, f13, f14
	fmul.s f11, f11, f15
	fadd.s f11, f14, f11
	flw f14, 8(a4)
	fmul.s f10, f10, f14
	fadd.s f11, f11, f12
	fadd.s f10, f11, f10
	fsw f10, 0(t1)
	addi t1, t0, -1080
	sh2add t1, a2, t1
	flw f11, 0(t1)
	li t1, -2160
	flw f14, 0(a4)
	add t2, a5, t1
	flw f15, 4(a4)
	fmul.s f14, f11, f14
	sh2add t2, a2, t2
	fmul.s f13, f13, f15
	fadd.s f13, f14, f13
	flw f14, 8(a4)
	fmul.s f12, f12, f14
	fadd.s f13, f13, f10
	fadd.s f12, f13, f12
	fsw f12, 0(t2)
	add t2, t0, t1
	sh2add t2, a2, t2
	flw f14, 0(t2)
	flw f13, 0(a4)
	flw f15, 4(a4)
	fmul.s f13, f14, f13
	fmul.s f11, f11, f15
	fadd.s f11, f13, f11
	flw f13, 8(a4)
	addi a4, t1, -1080
	fmul.s f10, f10, f13
	add a5, a5, a4
	add a4, t0, a4
	sh2add a5, a2, a5
	fadd.s f11, f11, f12
	mv t0, a3
	sh2add a4, a2, a4
	fadd.s f10, f11, f10
	fsw f10, 0(a5)
	flw f11, 0(a4)
	addiw a3, a3, -4
	blt a3, zero, label707
	j label95
label146:
	sh2add t1, t2, a2
pcrel1797:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	sh2add t2, t2, a3
	flw f14, 0(t1)
	addi t0, t0, %pcrel_lo(pcrel1797)
	flw f11, 12(t0)
	flw f15, 16(t0)
	fmul.s f11, f14, f11
	fmul.s f13, f13, f15
	fadd.s f11, f11, f13
	flw f13, 8(t0)
	fmul.s f12, f12, f13
	fadd.s f11, f11, f10
	fadd.s f11, f11, f12
	fsw f11, 0(t2)
	flw f12, 4(t1)
	flw f13, 12(t0)
	flw f15, 16(t0)
	fmul.s f13, f12, f13
	fmul.s f14, f14, f15
	fadd.s f13, f13, f14
	flw f14, 8(t0)
	fmul.s f10, f10, f14
	fadd.s f13, f13, f11
	fadd.s f10, f13, f10
	fsw f10, 4(t2)
	flw f13, 8(t1)
	flw f14, 12(t0)
	flw f15, 16(t0)
	fmul.s f14, f13, f14
	fmul.s f12, f12, f15
	fadd.s f12, f14, f12
	flw f14, 8(t0)
	fmul.s f11, f11, f14
	fadd.s f12, f12, f10
	fadd.s f12, f12, f11
	fsw f12, 8(t2)
	flw f11, 12(t1)
	flw f14, 12(t0)
	flw f15, 16(t0)
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
	bge a5, t0, label1495
	j label146
label119:
	addiw a2, a2, 1
	li a3, 270
	bge a2, a3, label560
	fmv.w.x f10, zero
	mv t0, zero
	fmv.w.x f13, zero
	fmv.w.x f11, zero
	addiw a3, zero, 4
	li a4, 512
	bge a3, a4, label103
	j label121
label68:
	sh2add t1, t3, a3
	sh2add t2, t3, a2
	flw f10, 0(t1)
	sh2add t3, t3, a4
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
	bge t0, t1, label59
	j label68
label94:
	addiw a2, a2, 1
	li a3, 270
	bge a2, a3, label567
	fmv.w.x f10, zero
	li t0, 511
	fmv.w.x f11, zero
	fmv.w.x f12, zero
	fmv.w.x f13, zero
	addiw a3, t0, -4
	blt a3, zero, label76
	j label97
label21:
	addiw a5, t2, -4
	blt a5, zero, label333
	j label27
label333:
	mv a5, t2
	j label28
label27:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	sh2add t1, t2, a3
	addi t0, t0, %pcrel_lo(label27)
	sh2add t2, t2, a2
	flw f14, 0(t0)
	flw f15, 4(t0)
	fmul.s f14, f11, f14
	fmul.s f13, f13, f15
	fadd.s f13, f14, f13
	flw f14, 8(t0)
	fmul.s f12, f12, f14
	fadd.s f13, f13, f10
	fadd.s f12, f13, f12
	fsw f12, 0(t1)
	flw f13, 0(t2)
	flw f14, 0(t0)
	flw f15, 4(t0)
	fmul.s f14, f13, f14
	fmul.s f11, f11, f15
	fadd.s f11, f14, f11
	flw f14, 8(t0)
	fmul.s f10, f10, f14
	fadd.s f11, f11, f12
	fadd.s f10, f11, f10
	fsw f10, -4(t1)
	flw f11, -4(t2)
	flw f14, 0(t0)
	flw f15, 4(t0)
	fmul.s f14, f11, f14
	fmul.s f13, f13, f15
	fadd.s f13, f14, f13
	flw f14, 8(t0)
	fmul.s f12, f12, f14
	fadd.s f13, f13, f10
	fadd.s f12, f13, f12
	fsw f12, -8(t1)
	flw f13, -8(t2)
	flw f14, 0(t0)
	flw f15, 4(t0)
	fmul.s f14, f13, f14
	fmul.s f11, f11, f15
	fadd.s f11, f14, f11
	flw f14, 8(t0)
	fmul.s f10, f10, f14
	fadd.s f11, f11, f12
	fadd.s f10, f11, f10
	fsw f10, -12(t1)
	flw f11, -12(t2)
	mv t2, a5
	addiw a5, a5, -4
	blt a5, zero, label333
	j label27
label145:
	addiw a4, a4, 1
	li a2, 512
	bge a4, a2, label158
	j label157
