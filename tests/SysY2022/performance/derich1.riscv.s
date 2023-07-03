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
pcrel1717:
	auipc a0, %pcrel_hi(imgIn)
	addi a0, a0, %pcrel_lo(pcrel1717)
	mv s1, a0
	jal getfarray
	li a0, 156
	jal _sysy_starttime
pcrel1718:
	auipc a0, %pcrel_hi(imgOut)
	addi s0, a0, %pcrel_lo(pcrel1718)
pcrel1719:
	auipc a0, %pcrel_hi(my_y1)
	addi a0, a0, %pcrel_lo(pcrel1719)
pcrel1720:
	auipc a1, %pcrel_hi(my_y2)
	addi a1, a1, %pcrel_lo(pcrel1720)
	mv a4, zero
label2:
	li a2, 512
	bge a4, a2, label158
	li a3, 1080
	mulw a2, a4, a3
	add a2, s1, a2
	mulw a3, a4, a3
	add a3, a0, a3
	fmv.w.x f10, zero
	fmv.w.x f11, zero
	fmv.w.x f12, zero
	mv t2, zero
	j label123
label158:
	mv a4, zero
label4:
	li a2, 512
	bge a4, a2, label162
	j label93
label162:
	mv a5, zero
label6:
	li a2, 512
	bge a5, a2, label166
	j label165
label166:
	mv a2, zero
label21:
	li a3, 270
	bge a2, a3, label287
	fmv.w.x f10, zero
	fmv.w.x f13, zero
	fmv.w.x f11, zero
	mv t0, zero
	j label69
label287:
	mv a2, zero
label23:
	li a3, 270
	bge a2, a3, label294
	fmv.w.x f10, zero
	fmv.w.x f11, zero
	fmv.w.x f12, zero
	fmv.w.x f13, zero
	li t0, 511
	j label41
label294:
	mv a5, zero
label25:
	li a2, 512
	bge a5, a2, label40
	j label301
label41:
	addiw a3, t0, -4
	blt a3, zero, label48
pcrel1721:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(pcrel1721)
	flw f14, 0(a4)
	fmul.s f14, f14, f11
	flw f15, 4(a4)
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
	flw f14, 0(a4)
	fmul.s f14, f14, f13
	flw f15, 4(a4)
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
	flw f14, 0(a4)
	fmul.s f14, f14, f11
	flw f15, 4(a4)
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
	flw f14, 0(a4)
	fmul.s f14, f14, f13
	flw f15, 4(a4)
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
	j label41
label69:
	addiw a3, t0, 4
	li a4, 512
	bge a3, a4, label74
	li t1, 1080
	mulw a4, t0, t1
	add a5, s0, a4
	sh2add a4, a2, a5
	flw f12, 0(a4)
pcrel1722:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(pcrel1722)
	flw f14, 12(a4)
	fmul.s f14, f14, f12
	flw f15, 16(a4)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a4)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	mulw t0, t0, t1
	add t0, a0, t0
	sh2add t2, a2, t0
	fsw f11, 0(t2)
	addi t2, a5, 1080
	sh2add t2, a2, t2
	flw f13, 0(t2)
	flw f14, 12(a4)
	fmul.s f14, f14, f13
	flw f15, 16(a4)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f11
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f12, f10
	addi t2, t0, 1080
	sh2add t2, a2, t2
	fsw f10, 0(t2)
	slli t1, t1, 1
	add t2, a5, t1
	sh2add t2, a2, t2
	flw f12, 0(t2)
	flw f14, 12(a4)
	fmul.s f14, f14, f12
	flw f15, 16(a4)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a4)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	add t2, t0, t1
	sh2add t2, a2, t2
	fsw f11, 0(t2)
	addi t1, t1, 1080
	add a5, a5, t1
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
	add a4, t0, t1
	sh2add a4, a2, a4
	fsw f10, 0(a4)
	mv t0, a3
	j label69
label93:
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
	j label94
label144:
	addiw a4, a4, 1
	j label2
label48:
	addiw a3, t0, -4
	blt a3, zero, label519
	j label68
label519:
	fmv.s f14, f13
label54:
	addiw a3, t0, -4
	blt a3, zero, label524
	j label67
label524:
	mv a3, t0
	j label60
label67:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(label67)
	flw f13, 0(a4)
	fmul.s f13, f13, f11
	flw f15, 4(a4)
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
	flw f14, 0(a4)
	fmul.s f14, f14, f13
	flw f15, 4(a4)
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
	flw f14, 0(a4)
	fmul.s f14, f14, f11
	flw f15, 4(a4)
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
	flw f13, 0(a4)
	fmul.s f13, f13, f14
	flw f15, 4(a4)
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
	j label54
label68:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(label68)
	flw f14, 0(a4)
	fmul.s f14, f14, f11
	flw f15, 4(a4)
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
	flw f14, 0(a4)
	fmul.s f14, f14, f13
	flw f15, 4(a4)
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
	flw f14, 0(a4)
	fmul.s f14, f14, f11
	flw f15, 4(a4)
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
	flw f14, 0(a4)
	fmul.s f14, f14, f13
	flw f15, 4(a4)
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
	j label48
label60:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(label60)
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
	blt a3, zero, label66
	fmv.s f12, f10
	fmv.s f14, f11
	fmv.s f10, f13
	fmv.s f11, f15
	j label60
label66:
	addiw a2, a2, 1
	j label23
label123:
	addiw a5, t2, 4
	li t0, 270
	bge a5, t0, label1337
	j label146
label1337:
	fmv.s f13, f11
label128:
	addiw a5, t2, 4
	li t0, 270
	bge a5, t0, label133
	sh2add t1, t2, a2
	flw f14, 0(t1)
pcrel1723:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t0, %pcrel_lo(pcrel1723)
	flw f11, 12(t0)
	fmul.s f11, f11, f14
	flw f15, 16(t0)
	fmul.s f13, f15, f13
	fadd.s f11, f11, f13
	fadd.s f11, f11, f10
	flw f13, 8(t0)
	fmul.s f12, f13, f12
	fadd.s f11, f11, f12
	sh2add t2, t2, a3
	fsw f11, 0(t2)
	flw f12, 4(t1)
	flw f13, 12(t0)
	fmul.s f13, f13, f12
	flw f15, 16(t0)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f11
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 4(t2)
	flw f13, 8(t1)
	flw f14, 12(t0)
	fmul.s f14, f14, f13
	flw f15, 16(t0)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(t0)
	fmul.s f11, f14, f11
	fadd.s f12, f12, f11
	fsw f12, 8(t2)
	flw f11, 12(t1)
	flw f14, 12(t0)
	fmul.s f14, f14, f11
	flw f15, 16(t0)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f12
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 12(t2)
	mv t2, a5
	fmv.s f13, f11
	j label128
label146:
	sh2add t1, t2, a2
	flw f13, 0(t1)
pcrel1724:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t0, %pcrel_lo(pcrel1724)
	flw f14, 12(t0)
	fmul.s f14, f14, f13
	flw f15, 16(t0)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f10
	flw f14, 8(t0)
	fmul.s f12, f14, f12
	fadd.s f11, f11, f12
	sh2add t2, t2, a3
	fsw f11, 0(t2)
	flw f12, 4(t1)
	flw f14, 12(t0)
	fmul.s f14, f14, f12
	flw f15, 16(t0)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 4(t2)
	flw f13, 8(t1)
	flw f14, 12(t0)
	fmul.s f14, f14, f13
	flw f15, 16(t0)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(t0)
	fmul.s f11, f14, f11
	fadd.s f12, f12, f11
	fsw f12, 8(t2)
	flw f11, 12(t1)
	flw f14, 12(t0)
	fmul.s f14, f14, f11
	flw f15, 16(t0)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f12
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 12(t2)
	mv t2, a5
	j label123
label74:
	addiw a3, t0, 4
	li a4, 512
	bge a3, a4, label746
	j label79
label746:
	fmv.s f12, f11
	j label80
label79:
	li t1, 1080
	mulw a4, t0, t1
	add a5, s0, a4
	sh2add a4, a2, a5
	flw f12, 0(a4)
pcrel1725:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(pcrel1725)
	flw f14, 12(a4)
	fmul.s f14, f14, f12
	flw f15, 16(a4)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a4)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	mulw t0, t0, t1
	add t0, a0, t0
	sh2add t2, a2, t0
	fsw f11, 0(t2)
	addi t2, a5, 1080
	sh2add t2, a2, t2
	flw f13, 0(t2)
	flw f14, 12(a4)
	fmul.s f14, f14, f13
	flw f15, 16(a4)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f11
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f12, f10
	addi t2, t0, 1080
	sh2add t2, a2, t2
	fsw f10, 0(t2)
	slli t1, t1, 1
	add t2, a5, t1
	sh2add t2, a2, t2
	flw f12, 0(t2)
	flw f14, 12(a4)
	fmul.s f14, f14, f12
	flw f15, 16(a4)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a4)
	fmul.s f11, f14, f11
	fadd.s f11, f13, f11
	add t2, t0, t1
	sh2add t2, a2, t2
	fsw f11, 0(t2)
	addi t1, t1, 1080
	add a5, a5, t1
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
	add a4, t0, t1
	sh2add a4, a2, a4
	fsw f10, 0(a4)
	mv t0, a3
	j label74
label80:
	addiw a3, t0, 4
	li a4, 512
	bge a3, a4, label841
	j label91
label841:
	mv a3, t0
	j label85
label91:
	li t1, 1080
	mulw a4, t0, t1
	add a5, s0, a4
	sh2add a4, a2, a5
	flw f14, 0(a4)
pcrel1726:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(pcrel1726)
	flw f11, 12(a4)
	fmul.s f11, f11, f14
	flw f15, 16(a4)
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
	flw f13, 12(a4)
	fmul.s f13, f13, f12
	flw f15, 16(a4)
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
	flw f14, 12(a4)
	fmul.s f14, f14, f13
	flw f15, 16(a4)
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
	flw f14, 12(a4)
	fmul.s f14, f14, f11
	flw f15, 16(a4)
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
	j label80
label85:
	li a4, 1080
	mulw a5, a3, a4
	add a5, s0, a5
	sh2add a5, a2, a5
	flw f11, 0(a5)
pcrel1727:
	auipc a5, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a5, a5, %pcrel_lo(pcrel1727)
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
	bge a3, a4, label90
	fmv.s f13, f11
	fmv.s f12, f10
	fmv.s f10, f14
	j label85
label90:
	addiw a2, a2, 1
	j label21
label133:
	addiw a5, t2, 4
	li t0, 270
	bge a5, t0, label1347
	j label138
label1347:
	mv a5, t2
	j label139
label138:
	sh2add t1, t2, a2
	flw f14, 0(t1)
pcrel1728:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t0, %pcrel_lo(pcrel1728)
	flw f11, 12(t0)
	fmul.s f11, f11, f14
	flw f15, 16(t0)
	fmul.s f13, f15, f13
	fadd.s f11, f11, f13
	fadd.s f11, f11, f10
	flw f13, 8(t0)
	fmul.s f12, f13, f12
	fadd.s f11, f11, f12
	sh2add t2, t2, a3
	fsw f11, 0(t2)
	flw f12, 4(t1)
	flw f13, 12(t0)
	fmul.s f13, f13, f12
	flw f15, 16(t0)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f11
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 4(t2)
	flw f13, 8(t1)
	flw f14, 12(t0)
	fmul.s f14, f14, f13
	flw f15, 16(t0)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(t0)
	fmul.s f11, f14, f11
	fadd.s f12, f12, f11
	fsw f12, 8(t2)
	flw f11, 12(t1)
	flw f14, 12(t0)
	fmul.s f14, f14, f11
	flw f15, 16(t0)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f12
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 12(t2)
	mv t2, a5
	fmv.s f13, f11
	j label133
label139:
	sh2add t0, a5, a2
	flw f11, 0(t0)
pcrel1729:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t0, %pcrel_lo(pcrel1729)
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
	addiw a5, a5, 1
	li t0, 270
	bge a5, t0, label144
	fmv.s f13, f11
	fmv.s f12, f10
	fmv.s f10, f14
	j label139
label94:
	addiw a5, t2, -4
	blt a5, zero, label100
pcrel1730:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t0, %pcrel_lo(pcrel1730)
	flw f14, 0(t0)
	fmul.s f14, f14, f11
	flw f15, 4(t0)
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
	flw f14, 0(t0)
	fmul.s f14, f14, f13
	flw f15, 4(t0)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -4(t1)
	flw f11, -4(t2)
	flw f14, 0(t0)
	fmul.s f14, f14, f11
	flw f15, 4(t0)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t0)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	fsw f12, -8(t1)
	flw f13, -8(t2)
	flw f14, 0(t0)
	fmul.s f14, f14, f13
	flw f15, 4(t0)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -12(t1)
	flw f11, -12(t2)
	mv t2, a5
	j label94
label100:
	addiw a5, t2, -4
	blt a5, zero, label106
pcrel1731:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t0, %pcrel_lo(pcrel1731)
	flw f14, 0(t0)
	fmul.s f14, f14, f11
	flw f15, 4(t0)
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
	flw f14, 0(t0)
	fmul.s f14, f14, f13
	flw f15, 4(t0)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -4(t1)
	flw f11, -4(t2)
	flw f14, 0(t0)
	fmul.s f14, f14, f11
	flw f15, 4(t0)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t0)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	fsw f12, -8(t1)
	flw f13, -8(t2)
	flw f14, 0(t0)
	fmul.s f14, f14, f13
	flw f15, 4(t0)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -12(t1)
	flw f11, -12(t2)
	mv t2, a5
	j label100
label106:
	addiw a5, t2, -4
	blt a5, zero, label1075
	j label112
label1075:
	mv a5, t2
	j label113
label112:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t0, %pcrel_lo(label112)
	flw f14, 0(t0)
	fmul.s f14, f14, f11
	flw f15, 4(t0)
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
	flw f14, 0(t0)
	fmul.s f14, f14, f13
	flw f15, 4(t0)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -4(t1)
	flw f11, -4(t2)
	flw f14, 0(t0)
	fmul.s f14, f14, f11
	flw f15, 4(t0)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t0)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	fsw f12, -8(t1)
	flw f13, -8(t2)
	flw f14, 0(t0)
	fmul.s f14, f14, f13
	flw f15, 4(t0)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t0)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -12(t1)
	flw f11, -12(t2)
	mv t2, a5
	j label106
label113:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t0, t0, %pcrel_lo(label113)
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
	sh2add t0, a5, a2
	flw f15, 0(t0)
	addiw a5, a5, -1
	blt a5, zero, label119
	fmv.s f12, f10
	fmv.s f13, f11
	fmv.s f10, f14
	fmv.s f11, f15
	j label113
label119:
	addiw a4, a4, 1
	j label4
label301:
	li a4, 1080
	mulw a2, a5, a4
	add a2, a1, a2
	mulw a3, a5, a4
	add a3, a0, a3
	mulw a4, a5, a4
	add a4, s0, a4
	mv t3, zero
label28:
	addiw t0, t3, 4
	li t1, 270
	bge t0, t1, label31
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
	j label28
label31:
	addiw t0, t3, 4
	li t1, 270
	bge t0, t1, label33
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
	j label31
label33:
	addiw t0, t3, 4
	li t1, 270
	bge t0, t1, label350
	j label35
label350:
	mv t0, t3
	j label36
label35:
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
	j label33
label36:
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	fadd.s f10, f10, f11
	sh2add t1, t0, a4
	fsw f10, 0(t1)
	addiw t0, t0, 1
	li t1, 270
	bge t0, t1, label38
	j label36
label165:
	li a4, 1080
	mulw a2, a5, a4
	add a2, a1, a2
	mulw a3, a5, a4
	add a3, a0, a3
	mulw a4, a5, a4
	add a4, s0, a4
	mv t3, zero
label9:
	addiw t0, t3, 4
	li t1, 270
	bge t0, t1, label12
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
	j label9
label12:
	addiw t0, t3, 4
	li t1, 270
	bge t0, t1, label14
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
	j label12
label14:
	addiw t0, t3, 4
	li t1, 270
	bge t0, t1, label214
	j label19
label214:
	mv t0, t3
	j label16
label19:
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
	j label14
label16:
	sh2add t1, t0, a3
	flw f10, 0(t1)
	sh2add t1, t0, a2
	flw f11, 0(t1)
	fadd.s f10, f10, f11
	sh2add t1, t0, a4
	fsw f10, 0(t1)
	addiw t0, t0, 1
	li t1, 270
	bge t0, t1, label18
	j label16
label18:
	addiw a5, a5, 1
	j label6
label38:
	addiw a5, a5, 1
	j label25
label40:
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
