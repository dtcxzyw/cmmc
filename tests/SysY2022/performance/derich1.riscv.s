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
pcrel1784:
	auipc a0, %pcrel_hi(imgIn)
	addi a0, a0, %pcrel_lo(pcrel1784)
	mv s1, a0
	jal getfarray
	li a0, 156
	jal _sysy_starttime
pcrel1785:
	auipc a0, %pcrel_hi(imgOut)
	addi s0, a0, %pcrel_lo(pcrel1785)
pcrel1786:
	auipc a0, %pcrel_hi(my_y1)
	addi a0, a0, %pcrel_lo(pcrel1786)
pcrel1787:
	auipc a1, %pcrel_hi(my_y2)
	addi a1, a1, %pcrel_lo(pcrel1787)
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
	mv t3, zero
	addiw a5, zero, 4
	li t1, 270
	bge a5, t1, label170
	j label10
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
	mv t4, zero
	addiw t1, zero, 4
	li t2, 270
	bge t1, t2, label66
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
	li t3, 269
	addiw a5, t3, -4
	blt a5, zero, label38
label59:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t1, t1, %pcrel_lo(label59)
	flw f14, 12(t1)
	fmul.s f14, f14, f11
	flw f15, 16(t1)
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
	flw f14, 12(t1)
	fmul.s f14, f14, f13
	flw f15, 16(t1)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t1)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -4(t2)
	flw f11, -4(t3)
	flw f14, 12(t1)
	fmul.s f14, f14, f11
	flw f15, 16(t1)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t1)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	fsw f12, -8(t2)
	flw f13, -8(t3)
	flw f14, 12(t1)
	fmul.s f14, f14, f13
	flw f15, 16(t1)
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
	blt a5, zero, label38
	j label59
label710:
	mv a2, zero
	li a3, 270
	bge zero, a3, label831
	fmv.w.x f10, zero
	fmv.w.x f13, zero
	fmv.w.x f11, zero
	mv t1, zero
	addiw a3, zero, 4
	li a4, 512
	bge a3, a4, label83
	j label82
label831:
	mv a2, zero
	li a3, 270
	bge zero, a3, label1154
	fmv.w.x f10, zero
	fmv.w.x f11, zero
	fmv.w.x f12, zero
	fmv.w.x f14, zero
	li t1, 511
	addiw a3, t1, -4
	blt a3, zero, label126
	j label125
label83:
	addiw a3, t1, 4
	li a4, 512
	bge a3, a4, label934
	j label100
label1154:
	mv a5, zero
	li a2, 512
	bge zero, a2, label118
label1161:
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
	bge t1, t2, label109
label108:
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
	bge t1, t2, label109
	j label108
label118:
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
label109:
	addiw t1, t4, 4
	li t2, 270
	bge t1, t2, label112
	j label111
label112:
	addiw t1, t4, 4
	li t2, 270
	bge t1, t2, label1237
	j label117
label1237:
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
	bge t1, t2, label116
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label116
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label116
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label116
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label116
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label116
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label116
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label116
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label116
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label116
	j label1779
label66:
	addiw t1, t4, 4
	li t2, 270
	bge t1, t2, label69
	j label68
label69:
	addiw t1, t4, 4
	li t2, 270
	bge t1, t2, label785
	j label74
label785:
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
	bge t1, t2, label73
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label73
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label73
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label73
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label73
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label73
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label73
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label73
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label73
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label73
	j label1778
label1779:
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label116
	j label1779
label116:
	addiw a5, a5, 1
	li a2, 512
	bge a5, a2, label118
	j label1161
label1778:
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label73
	j label1778
label38:
	addiw a5, t3, -4
	blt a5, zero, label45
	j label44
label45:
	addiw a5, t3, -4
	blt a5, zero, label530
	j label51
label530:
	mv a5, t3
label52:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t1, t1, %pcrel_lo(label52)
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
	sh2add t1, a5, a2
	flw f15, 0(t1)
	addiw a5, a5, -1
	blt a5, zero, label58
	fmv.s f12, f10
	fmv.s f13, f11
	fmv.s f10, f14
	fmv.s f11, f15
	j label52
label934:
	fmv.s f12, f11
	addiw a3, t1, 4
	li a4, 512
	bge a3, a4, label939
	j label99
label939:
	mv a3, t1
	j label93
label99:
	li t2, 1080
	mulw a4, t1, t2
	add a5, s0, a4
	sh2add a4, a2, a5
	flw f14, 0(a4)
pcrel1788:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(pcrel1788)
	flw f11, 0(a4)
	fmul.s f11, f11, f14
	flw f15, 4(a4)
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
	flw f13, 0(a4)
	fmul.s f13, f13, f12
	flw f15, 4(a4)
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
	flw f14, 0(a4)
	fmul.s f14, f14, f13
	flw f15, 4(a4)
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
	flw f14, 0(a4)
	fmul.s f14, f14, f11
	flw f15, 4(a4)
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
	bge a3, a4, label939
	j label99
label93:
	li a4, 1080
	mulw a5, a3, a4
	add a5, s0, a5
	sh2add a5, a2, a5
	flw f11, 0(a5)
pcrel1789:
	auipc a5, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a5, a5, %pcrel_lo(pcrel1789)
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
	bge a3, a4, label98
	fmv.s f13, f11
	fmv.s f12, f10
	fmv.s f10, f14
	j label93
label98:
	addiw a2, a2, 1
	li a3, 270
	bge a2, a3, label831
	fmv.w.x f10, zero
	fmv.w.x f13, zero
	fmv.w.x f11, zero
	mv t1, zero
	addiw a3, zero, 4
	li a4, 512
	bge a3, a4, label83
label82:
	li t2, 1080
	mulw a4, t1, t2
	add a5, s0, a4
	sh2add a4, a2, a5
	flw f12, 0(a4)
pcrel1790:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(pcrel1790)
	flw f14, 0(a4)
	fmul.s f14, f14, f12
	flw f15, 4(a4)
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
	flw f14, 0(a4)
	fmul.s f14, f14, f13
	flw f15, 4(a4)
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
	flw f14, 0(a4)
	fmul.s f14, f14, f12
	flw f15, 4(a4)
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
	flw f14, 0(a4)
	fmul.s f14, f14, f13
	flw f15, 4(a4)
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
	bge a3, a4, label83
	j label82
label125:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(label125)
	flw f13, 12(a4)
	fmul.s f13, f13, f11
	flw f15, 16(a4)
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
	flw f14, 12(a4)
	fmul.s f14, f14, f13
	flw f15, 16(a4)
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
	flw f14, 12(a4)
	fmul.s f14, f14, f11
	flw f15, 16(a4)
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
	flw f14, 12(a4)
	fmul.s f14, f14, f13
	flw f15, 16(a4)
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
	blt a3, zero, label126
	j label125
label74:
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
	bge t1, t2, label785
	j label74
label68:
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
	bge t1, t2, label69
	j label68
label126:
	addiw a3, t1, -4
	blt a3, zero, label132
	j label146
label132:
	addiw a3, t1, -4
	blt a3, zero, label1384
	j label145
label1384:
	mv a3, t1
label138:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(label138)
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
	blt a3, zero, label144
	fmv.s f12, f10
	fmv.s f14, f11
	fmv.s f10, f13
	fmv.s f11, f15
	j label138
label144:
	addiw a2, a2, 1
	li a3, 270
	bge a2, a3, label1154
	fmv.w.x f10, zero
	fmv.w.x f11, zero
	fmv.w.x f12, zero
	fmv.w.x f14, zero
	li t1, 511
	addiw a3, t1, -4
	blt a3, zero, label126
	j label125
label145:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(label145)
	flw f13, 12(a4)
	fmul.s f13, f13, f11
	flw f15, 16(a4)
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
	flw f14, 12(a4)
	fmul.s f14, f14, f13
	flw f15, 16(a4)
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
	flw f14, 12(a4)
	fmul.s f14, f14, f11
	flw f15, 16(a4)
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
	flw f13, 12(a4)
	fmul.s f13, f13, f14
	flw f15, 16(a4)
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
	blt a3, zero, label1384
	j label145
label146:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(label146)
	flw f13, 12(a4)
	fmul.s f13, f13, f11
	flw f15, 16(a4)
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
	flw f14, 12(a4)
	fmul.s f14, f14, f13
	flw f15, 16(a4)
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
	flw f14, 12(a4)
	fmul.s f14, f14, f11
	flw f15, 16(a4)
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
	flw f14, 12(a4)
	fmul.s f14, f14, f13
	flw f15, 16(a4)
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
	blt a3, zero, label132
	j label146
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
	bge t1, t2, label66
	j label65
label111:
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
	bge t1, t2, label112
	j label111
label100:
	li t2, 1080
	mulw a4, t1, t2
	add a5, s0, a4
	sh2add a4, a2, a5
	flw f12, 0(a4)
pcrel1791:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(pcrel1791)
	flw f14, 0(a4)
	fmul.s f14, f14, f12
	flw f15, 4(a4)
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
	flw f14, 0(a4)
	fmul.s f14, f14, f13
	flw f15, 4(a4)
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
	flw f14, 0(a4)
	fmul.s f14, f14, f12
	flw f15, 4(a4)
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
	flw f14, 0(a4)
	fmul.s f14, f14, f13
	flw f15, 4(a4)
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
	bge a3, a4, label934
	j label100
label117:
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
	bge t1, t2, label1237
	j label117
label170:
	fmv.s f13, f11
	addiw a5, t3, 4
	li t1, 270
	bge a5, t1, label17
	j label16
label10:
	sh2add t2, t3, a2
	flw f13, 0(t2)
pcrel1792:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t1, t1, %pcrel_lo(pcrel1792)
	flw f14, 0(t1)
	fmul.s f14, f14, f13
	flw f15, 4(t1)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f10
	flw f14, 8(t1)
	fmul.s f12, f14, f12
	fadd.s f11, f11, f12
	sh2add t3, t3, a3
	fsw f11, 0(t3)
	flw f12, 4(t2)
	flw f14, 0(t1)
	fmul.s f14, f14, f12
	flw f15, 4(t1)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(t1)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 4(t3)
	flw f13, 8(t2)
	flw f14, 0(t1)
	fmul.s f14, f14, f13
	flw f15, 4(t1)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(t1)
	fmul.s f11, f14, f11
	fadd.s f12, f12, f11
	fsw f12, 8(t3)
	flw f11, 12(t2)
	flw f14, 0(t1)
	fmul.s f14, f14, f11
	flw f15, 4(t1)
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
	bge a5, t1, label170
	j label10
label16:
	sh2add t2, t3, a2
	flw f14, 0(t2)
pcrel1793:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t1, t1, %pcrel_lo(pcrel1793)
	flw f11, 0(t1)
	fmul.s f11, f11, f14
	flw f15, 4(t1)
	fmul.s f13, f15, f13
	fadd.s f11, f11, f13
	fadd.s f11, f11, f10
	flw f13, 8(t1)
	fmul.s f12, f13, f12
	fadd.s f11, f11, f12
	sh2add t3, t3, a3
	fsw f11, 0(t3)
	flw f12, 4(t2)
	flw f13, 0(t1)
	fmul.s f13, f13, f12
	flw f15, 4(t1)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f11
	flw f14, 8(t1)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 4(t3)
	flw f13, 8(t2)
	flw f14, 0(t1)
	fmul.s f14, f14, f13
	flw f15, 4(t1)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(t1)
	fmul.s f11, f14, f11
	fadd.s f12, f12, f11
	fsw f12, 8(t3)
	flw f11, 12(t2)
	flw f14, 0(t1)
	fmul.s f14, f14, f11
	flw f15, 4(t1)
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
	bge a5, t1, label17
	j label16
label51:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t1, t1, %pcrel_lo(label51)
	flw f14, 12(t1)
	fmul.s f14, f14, f11
	flw f15, 16(t1)
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
	flw f14, 12(t1)
	fmul.s f14, f14, f13
	flw f15, 16(t1)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t1)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -4(t2)
	flw f11, -4(t3)
	flw f14, 12(t1)
	fmul.s f14, f14, f11
	flw f15, 16(t1)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t1)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	fsw f12, -8(t2)
	flw f13, -8(t3)
	flw f14, 12(t1)
	fmul.s f14, f14, f13
	flw f15, 16(t1)
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
	blt a5, zero, label530
	j label51
label44:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t1, t1, %pcrel_lo(label44)
	flw f14, 12(t1)
	fmul.s f14, f14, f11
	flw f15, 16(t1)
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
	flw f14, 12(t1)
	fmul.s f14, f14, f13
	flw f15, 16(t1)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t1)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -4(t2)
	flw f11, -4(t3)
	flw f14, 12(t1)
	fmul.s f14, f14, f11
	flw f15, 16(t1)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t1)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	fsw f12, -8(t2)
	flw f13, -8(t3)
	flw f14, 12(t1)
	fmul.s f14, f14, f13
	flw f15, 16(t1)
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
	blt a5, zero, label45
	j label44
label17:
	addiw a5, t3, 4
	li t1, 270
	bge a5, t1, label328
	j label22
label328:
	mv a5, t3
	j label23
label22:
	sh2add t2, t3, a2
	flw f14, 0(t2)
pcrel1794:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t1, t1, %pcrel_lo(pcrel1794)
	flw f11, 0(t1)
	fmul.s f11, f11, f14
	flw f15, 4(t1)
	fmul.s f13, f15, f13
	fadd.s f11, f11, f13
	fadd.s f11, f11, f10
	flw f13, 8(t1)
	fmul.s f12, f13, f12
	fadd.s f11, f11, f12
	sh2add t3, t3, a3
	fsw f11, 0(t3)
	flw f12, 4(t2)
	flw f13, 0(t1)
	fmul.s f13, f13, f12
	flw f15, 4(t1)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f11
	flw f14, 8(t1)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 4(t3)
	flw f13, 8(t2)
	flw f14, 0(t1)
	fmul.s f14, f14, f13
	flw f15, 4(t1)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(t1)
	fmul.s f11, f14, f11
	fadd.s f12, f12, f11
	fsw f12, 8(t3)
	flw f11, 12(t2)
	flw f14, 0(t1)
	fmul.s f14, f14, f11
	flw f15, 4(t1)
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
	bge a5, t1, label328
	j label22
label23:
	sh2add t1, a5, a2
	flw f11, 0(t1)
pcrel1795:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t1, t1, %pcrel_lo(pcrel1795)
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
	addiw a5, a5, 1
	li t1, 270
	bge a5, t1, label28
	fmv.s f13, f11
	fmv.s f12, f10
	fmv.s f10, f14
	j label23
label28:
	addiw a4, a4, 1
	li a2, 512
	bge a4, a2, label158
	j label157
label58:
	addiw a4, a4, 1
	li a2, 512
	bge a4, a2, label433
	j label31
label709:
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
	bge t1, t2, label66
	j label65
label73:
	addiw a5, a5, 1
	li a2, 512
	bge a5, a2, label710
	j label709
