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
pcrel1759:
	auipc a0, %pcrel_hi(imgIn)
	addi a0, a0, %pcrel_lo(pcrel1759)
	mv s1, a0
	jal getfarray
	li a0, 156
	jal _sysy_starttime
pcrel1760:
	auipc a0, %pcrel_hi(imgOut)
	addi s0, a0, %pcrel_lo(pcrel1760)
pcrel1761:
	auipc a0, %pcrel_hi(my_y1)
	addi a0, a0, %pcrel_lo(pcrel1761)
pcrel1762:
	auipc a1, %pcrel_hi(my_y2)
	addi a1, a1, %pcrel_lo(pcrel1762)
	mv a2, zero
	li a3, 512
	bge zero, a3, label158
	j label157
label158:
	mv a2, zero
	li a3, 512
	bge zero, a3, label433
	j label31
label433:
	mv a3, zero
	li a2, 512
	bge zero, a2, label710
	li a2, 1080
	mulw a4, zero, a2
	add a4, a1, a4
	mulw a5, zero, a2
	add a5, a0, a5
	mulw a2, zero, a2
	add t1, s0, a2
	mv a2, zero
	addiw t2, zero, 4
	li t3, 270
	bge t2, t3, label66
	j label65
label710:
	mv a2, zero
	li a3, 270
	bge zero, a3, label831
	fmv.w.x f10, zero
	fmv.w.x f12, zero
	fmv.w.x f11, zero
	mv a3, zero
	addiw a4, zero, 4
	li a5, 512
	bge a4, a5, label83
label82:
	li t2, 1080
	mulw a5, a3, t2
	add t1, s0, a5
	slli a5, a2, 2
	add a5, t1, a5
	flw f13, 0(a5)
pcrel1763:
	auipc a5, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a5, a5, %pcrel_lo(pcrel1763)
	flw f14, 0(a5)
	fmul.s f14, f14, f13
	flw f15, 4(a5)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a5)
	fmul.s f11, f14, f11
	fadd.s f11, f12, f11
	mulw a3, a3, t2
	add a3, a0, a3
	slli t3, a2, 2
	add t3, a3, t3
	fsw f11, 0(t3)
	addi t3, t1, 1080
	slli t4, a2, 2
	add t3, t3, t4
	flw f12, 0(t3)
	flw f14, 0(a5)
	fmul.s f14, f14, f12
	flw f15, 4(a5)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(a5)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	addi t3, a3, 1080
	add t3, t3, t4
	fsw f10, 0(t3)
	slli t2, t2, 1
	add t3, t1, t2
	add t3, t3, t4
	flw f13, 0(t3)
	flw f14, 0(a5)
	fmul.s f14, f14, f13
	flw f15, 4(a5)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a5)
	fmul.s f11, f14, f11
	fadd.s f11, f12, f11
	add t3, a3, t2
	add t3, t3, t4
	fsw f11, 0(t3)
	addi t2, t2, 1080
	add t1, t1, t2
	slli t3, a2, 2
	add t1, t1, t3
	flw f12, 0(t1)
	flw f14, 0(a5)
	fmul.s f14, f14, f12
	flw f15, 4(a5)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(a5)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	add a3, a3, t2
	slli a5, a2, 2
	add a3, a3, a5
	fsw f10, 0(a3)
	mv a3, a4
	addiw a4, a4, 4
	li a5, 512
	bge a4, a5, label83
	j label82
label66:
	addiw t2, a2, 4
	li t3, 270
	bge t2, t3, label68
label74:
	slli t3, a2, 2
	add t3, a5, t3
	flw f10, 0(t3)
	slli t4, a2, 2
	add t4, a4, t4
	flw f11, 0(t4)
	fadd.s f10, f10, f11
	slli a2, a2, 2
	add a2, t1, a2
	fsw f10, 0(a2)
	flw f10, 4(t3)
	flw f11, 4(t4)
	fadd.s f10, f10, f11
	fsw f10, 4(a2)
	flw f10, 8(t3)
	flw f11, 8(t4)
	fadd.s f10, f10, f11
	fsw f10, 8(a2)
	flw f10, 12(t3)
	flw f11, 12(t4)
	fadd.s f10, f10, f11
	fsw f10, 12(a2)
	mv a2, t2
	addiw t2, t2, 4
	li t3, 270
	bge t2, t3, label68
	j label74
label68:
	addiw t2, a2, 4
	li t3, 270
	bge t2, t3, label71
label70:
	slli t3, a2, 2
	add t3, a5, t3
	flw f10, 0(t3)
	slli t4, a2, 2
	add t4, a4, t4
	flw f11, 0(t4)
	fadd.s f10, f10, f11
	slli a2, a2, 2
	add a2, t1, a2
	fsw f10, 0(a2)
	flw f10, 4(t3)
	flw f11, 4(t4)
	fadd.s f10, f10, f11
	fsw f10, 4(a2)
	flw f10, 8(t3)
	flw f11, 8(t4)
	fadd.s f10, f10, f11
	fsw f10, 8(a2)
	flw f10, 12(t3)
	flw f11, 12(t4)
	fadd.s f10, f10, f11
	fsw f10, 12(a2)
	mv a2, t2
	addiw t2, t2, 4
	li t3, 270
	bge t2, t3, label71
	j label70
label709:
	li a2, 1080
	mulw a4, a3, a2
	add a4, a1, a4
	mulw a5, a3, a2
	add a5, a0, a5
	mulw a2, a3, a2
	add t1, s0, a2
	mv a2, zero
	addiw t2, zero, 4
	li t3, 270
	bge t2, t3, label66
	j label65
label71:
	slli t2, a2, 2
	add t2, a5, t2
	flw f10, 0(t2)
	slli t2, a2, 2
	add t2, a4, t2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	slli t2, a2, 2
	add t2, t1, t2
	fsw f10, 0(t2)
	addiw a2, a2, 1
	li t2, 270
	bge a2, t2, label73
	j label71
label73:
	addiw a3, a3, 1
	li a2, 512
	bge a3, a2, label710
	j label709
label65:
	slli t3, a2, 2
	add t3, a5, t3
	flw f10, 0(t3)
	slli t4, a2, 2
	add t4, a4, t4
	flw f11, 0(t4)
	fadd.s f10, f10, f11
	slli a2, a2, 2
	add a2, t1, a2
	fsw f10, 0(a2)
	flw f10, 4(t3)
	flw f11, 4(t4)
	fadd.s f10, f10, f11
	fsw f10, 4(a2)
	flw f10, 8(t3)
	flw f11, 8(t4)
	fadd.s f10, f10, f11
	fsw f10, 8(a2)
	flw f10, 12(t3)
	flw f11, 12(t4)
	fadd.s f10, f10, f11
	fsw f10, 12(a2)
	mv a2, t2
	addiw t2, t2, 4
	li t3, 270
	bge t2, t3, label66
	j label65
label83:
	addiw a4, a3, 4
	li a5, 512
	bge a4, a5, label88
	j label100
label99:
	addiw a2, a2, 1
	li a3, 270
	bge a2, a3, label831
	fmv.w.x f10, zero
	fmv.w.x f12, zero
	fmv.w.x f11, zero
	mv a3, zero
	addiw a4, zero, 4
	li a5, 512
	bge a4, a5, label83
	j label82
label100:
	li t2, 1080
	mulw a5, a3, t2
	add t1, s0, a5
	slli a5, a2, 2
	add a5, t1, a5
	flw f13, 0(a5)
pcrel1764:
	auipc a5, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a5, a5, %pcrel_lo(pcrel1764)
	flw f14, 0(a5)
	fmul.s f14, f14, f13
	flw f15, 4(a5)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a5)
	fmul.s f11, f14, f11
	fadd.s f11, f12, f11
	mulw a3, a3, t2
	add a3, a0, a3
	slli t3, a2, 2
	add t3, a3, t3
	fsw f11, 0(t3)
	addi t3, t1, 1080
	slli t4, a2, 2
	add t3, t3, t4
	flw f12, 0(t3)
	flw f14, 0(a5)
	fmul.s f14, f14, f12
	flw f15, 4(a5)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(a5)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	addi t3, a3, 1080
	add t3, t3, t4
	fsw f10, 0(t3)
	slli t2, t2, 1
	add t3, t1, t2
	add t3, t3, t4
	flw f13, 0(t3)
	flw f14, 0(a5)
	fmul.s f14, f14, f13
	flw f15, 4(a5)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a5)
	fmul.s f11, f14, f11
	fadd.s f11, f12, f11
	add t3, a3, t2
	add t3, t3, t4
	fsw f11, 0(t3)
	addi t2, t2, 1080
	add t1, t1, t2
	slli t3, a2, 2
	add t1, t1, t3
	flw f12, 0(t1)
	flw f14, 0(a5)
	fmul.s f14, f14, f12
	flw f15, 4(a5)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(a5)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	add a3, a3, t2
	slli a5, a2, 2
	add a3, a3, a5
	fsw f10, 0(a3)
	mv a3, a4
	addiw a4, a4, 4
	li a5, 512
	bge a4, a5, label88
	j label100
label88:
	addiw a4, a3, 4
	li a5, 512
	bge a4, a5, label94
	j label93
label94:
	li a4, 1080
	mulw a5, a3, a4
	add a5, s0, a5
	slli t1, a2, 2
	add a5, a5, t1
	flw f13, 0(a5)
pcrel1765:
	auipc a5, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a5, a5, %pcrel_lo(pcrel1765)
	flw f14, 0(a5)
	fmul.s f14, f14, f13
	flw f15, 4(a5)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a5)
	fmul.s f11, f14, f11
	fadd.s f14, f12, f11
	mulw a4, a3, a4
	add a4, a0, a4
	slli a5, a2, 2
	add a4, a4, a5
	fsw f14, 0(a4)
	addiw a3, a3, 1
	li a4, 512
	bge a3, a4, label99
	fmv.s f12, f13
	fmv.s f11, f10
	fmv.s f10, f14
	j label94
label93:
	li t2, 1080
	mulw a5, a3, t2
	add t1, s0, a5
	slli a5, a2, 2
	add a5, t1, a5
	flw f13, 0(a5)
pcrel1766:
	auipc a5, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a5, a5, %pcrel_lo(pcrel1766)
	flw f14, 0(a5)
	fmul.s f14, f14, f13
	flw f15, 4(a5)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a5)
	fmul.s f11, f14, f11
	fadd.s f11, f12, f11
	mulw a3, a3, t2
	add a3, a0, a3
	slli t3, a2, 2
	add t3, a3, t3
	fsw f11, 0(t3)
	addi t3, t1, 1080
	slli t4, a2, 2
	add t3, t3, t4
	flw f12, 0(t3)
	flw f14, 0(a5)
	fmul.s f14, f14, f12
	flw f15, 4(a5)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(a5)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	addi t3, a3, 1080
	add t3, t3, t4
	fsw f10, 0(t3)
	slli t2, t2, 1
	add t3, t1, t2
	add t3, t3, t4
	flw f13, 0(t3)
	flw f14, 0(a5)
	fmul.s f14, f14, f13
	flw f15, 4(a5)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a5)
	fmul.s f11, f14, f11
	fadd.s f11, f12, f11
	add t3, a3, t2
	add t3, t3, t4
	fsw f11, 0(t3)
	addi t2, t2, 1080
	add t1, t1, t2
	slli t3, a2, 2
	add t1, t1, t3
	flw f12, 0(t1)
	flw f14, 0(a5)
	fmul.s f14, f14, f12
	flw f15, 4(a5)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(a5)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	add a3, a3, t2
	slli a5, a2, 2
	add a3, a3, a5
	fsw f10, 0(a3)
	mv a3, a4
	addiw a4, a4, 4
	li a5, 512
	bge a4, a5, label94
	j label93
label831:
	mv a2, zero
	li a3, 270
	bge zero, a3, label1154
	fmv.w.x f10, zero
	fmv.w.x f11, zero
	fmv.w.x f12, zero
	fmv.w.x f13, zero
	li a3, 511
	addiw a4, a3, -4
	blt a4, zero, label125
	j label146
label1154:
	mv a3, zero
	li a2, 512
	bge zero, a2, label118
	j label1161
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
label125:
	addiw a4, a3, -4
	blt a4, zero, label131
	j label145
label131:
	addiw a4, a3, -4
	blt a4, zero, label137
	j label144
label137:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(label137)
	flw f14, 12(a4)
	fmul.s f14, f14, f11
	flw f15, 16(a4)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a4)
	fmul.s f12, f14, f12
	fadd.s f14, f13, f12
	li a4, 1080
	mulw a5, a3, a4
	add a5, a1, a5
	slli t1, a2, 2
	add a5, a5, t1
	fsw f14, 0(a5)
	mulw a4, a3, a4
	add a4, s0, a4
	slli a5, a2, 2
	add a4, a4, a5
	flw f15, 0(a4)
	addiw a3, a3, -1
	blt a3, zero, label143
	fmv.s f12, f10
	fmv.s f13, f11
	fmv.s f10, f14
	fmv.s f11, f15
	j label137
label144:
	auipc a5, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a5, a5, %pcrel_lo(label144)
	flw f14, 12(a5)
	fmul.s f14, f14, f11
	flw f15, 16(a5)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a5)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	li t2, 1080
	mulw t1, a3, t2
	add t1, a1, t1
	slli t3, a2, 2
	add t3, t1, t3
	fsw f12, 0(t3)
	mulw a3, a3, t2
	add a3, s0, a3
	slli t2, a2, 2
	add t2, a3, t2
	flw f13, 0(t2)
	flw f14, 12(a5)
	fmul.s f14, f14, f13
	flw f15, 16(a5)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(a5)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	addi t2, t1, -1080
	slli t3, a2, 2
	add t2, t2, t3
	fsw f10, 0(t2)
	addi t2, a3, -1080
	add t2, t2, t3
	flw f11, 0(t2)
	flw f14, 12(a5)
	fmul.s f14, f14, f11
	flw f15, 16(a5)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a5)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	li t2, -2160
	add t3, t1, t2
	slli t4, a2, 2
	add t3, t3, t4
	fsw f12, 0(t3)
	add t3, a3, t2
	add t3, t3, t4
	flw f13, 0(t3)
	flw f14, 12(a5)
	fmul.s f14, f14, f13
	flw f15, 16(a5)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(a5)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	addi a5, t2, -1080
	add t1, t1, a5
	slli t2, a2, 2
	add t1, t1, t2
	fsw f10, 0(t1)
	add a3, a3, a5
	slli a5, a2, 2
	add a3, a3, a5
	flw f11, 0(a3)
	mv a3, a4
	addiw a4, a4, -4
	blt a4, zero, label137
	j label144
label143:
	addiw a2, a2, 1
	li a3, 270
	bge a2, a3, label1154
	fmv.w.x f10, zero
	fmv.w.x f11, zero
	fmv.w.x f12, zero
	fmv.w.x f13, zero
	li a3, 511
	addiw a4, a3, -4
	blt a4, zero, label125
label146:
	auipc a5, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a5, a5, %pcrel_lo(label146)
	flw f14, 12(a5)
	fmul.s f14, f14, f11
	flw f15, 16(a5)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a5)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	li t2, 1080
	mulw t1, a3, t2
	add t1, a1, t1
	slli t3, a2, 2
	add t3, t1, t3
	fsw f12, 0(t3)
	mulw a3, a3, t2
	add a3, s0, a3
	slli t2, a2, 2
	add t2, a3, t2
	flw f13, 0(t2)
	flw f14, 12(a5)
	fmul.s f14, f14, f13
	flw f15, 16(a5)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(a5)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	addi t2, t1, -1080
	slli t3, a2, 2
	add t2, t2, t3
	fsw f10, 0(t2)
	addi t2, a3, -1080
	add t2, t2, t3
	flw f11, 0(t2)
	flw f14, 12(a5)
	fmul.s f14, f14, f11
	flw f15, 16(a5)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a5)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	li t2, -2160
	add t3, t1, t2
	slli t4, a2, 2
	add t3, t3, t4
	fsw f12, 0(t3)
	add t3, a3, t2
	add t3, t3, t4
	flw f13, 0(t3)
	flw f14, 12(a5)
	fmul.s f14, f14, f13
	flw f15, 16(a5)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(a5)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	addi a5, t2, -1080
	add t1, t1, a5
	slli t2, a2, 2
	add t1, t1, t2
	fsw f10, 0(t1)
	add a3, a3, a5
	slli a5, a2, 2
	add a3, a3, a5
	flw f11, 0(a3)
	mv a3, a4
	addiw a4, a4, -4
	blt a4, zero, label125
	j label146
label145:
	auipc a5, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a5, a5, %pcrel_lo(label145)
	flw f14, 12(a5)
	fmul.s f14, f14, f11
	flw f15, 16(a5)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a5)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	li t2, 1080
	mulw t1, a3, t2
	add t1, a1, t1
	slli t3, a2, 2
	add t3, t1, t3
	fsw f12, 0(t3)
	mulw a3, a3, t2
	add a3, s0, a3
	slli t2, a2, 2
	add t2, a3, t2
	flw f13, 0(t2)
	flw f14, 12(a5)
	fmul.s f14, f14, f13
	flw f15, 16(a5)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(a5)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	addi t2, t1, -1080
	slli t3, a2, 2
	add t2, t2, t3
	fsw f10, 0(t2)
	addi t2, a3, -1080
	add t2, t2, t3
	flw f11, 0(t2)
	flw f14, 12(a5)
	fmul.s f14, f14, f11
	flw f15, 16(a5)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a5)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	li t2, -2160
	add t3, t1, t2
	slli t4, a2, 2
	add t3, t3, t4
	fsw f12, 0(t3)
	add t3, a3, t2
	add t3, t3, t4
	flw f13, 0(t3)
	flw f14, 12(a5)
	fmul.s f14, f14, f13
	flw f15, 16(a5)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(a5)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	addi a5, t2, -1080
	add t1, t1, a5
	slli t2, a2, 2
	add t1, t1, t2
	fsw f10, 0(t1)
	add a3, a3, a5
	slli a5, a2, 2
	add a3, a3, a5
	flw f11, 0(a3)
	mv a3, a4
	addiw a4, a4, -4
	blt a4, zero, label131
	j label145
label31:
	li a3, 1080
	mulw a4, a2, a3
	add a4, s1, a4
	mulw a3, a2, a3
	add a5, a1, a3
	fmv.w.x f10, zero
	fmv.w.x f11, zero
	fmv.w.x f12, zero
	fmv.w.x f13, zero
	li a3, 269
	addiw t1, a3, -4
	blt t1, zero, label38
	j label59
label38:
	addiw t1, a3, -4
	blt t1, zero, label45
label44:
	auipc t2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t2, t2, %pcrel_lo(label44)
	flw f14, 12(t2)
	fmul.s f14, f14, f11
	flw f15, 16(t2)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t2)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	slli t3, a3, 2
	add t3, a5, t3
	fsw f12, 0(t3)
	slli a3, a3, 2
	add a3, a4, a3
	flw f13, 0(a3)
	flw f14, 12(t2)
	fmul.s f14, f14, f13
	flw f15, 16(t2)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t2)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -4(t3)
	flw f11, -4(a3)
	flw f14, 12(t2)
	fmul.s f14, f14, f11
	flw f15, 16(t2)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t2)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	fsw f12, -8(t3)
	flw f13, -8(a3)
	flw f14, 12(t2)
	fmul.s f14, f14, f13
	flw f15, 16(t2)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t2)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -12(t3)
	flw f11, -12(a3)
	mv a3, t1
	addiw t1, t1, -4
	blt t1, zero, label45
	j label44
label45:
	addiw t1, a3, -4
	blt t1, zero, label52
	j label51
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
	slli t1, a3, 2
	add t1, a5, t1
	fsw f14, 0(t1)
	slli t1, a3, 2
	add t1, a4, t1
	flw f15, 0(t1)
	addiw a3, a3, -1
	blt a3, zero, label58
	fmv.s f12, f10
	fmv.s f13, f11
	fmv.s f10, f14
	fmv.s f11, f15
	j label52
label59:
	auipc t2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t2, t2, %pcrel_lo(label59)
	flw f14, 12(t2)
	fmul.s f14, f14, f11
	flw f15, 16(t2)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t2)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	slli t3, a3, 2
	add t3, a5, t3
	fsw f12, 0(t3)
	slli a3, a3, 2
	add a3, a4, a3
	flw f13, 0(a3)
	flw f14, 12(t2)
	fmul.s f14, f14, f13
	flw f15, 16(t2)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t2)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -4(t3)
	flw f11, -4(a3)
	flw f14, 12(t2)
	fmul.s f14, f14, f11
	flw f15, 16(t2)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t2)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	fsw f12, -8(t3)
	flw f13, -8(a3)
	flw f14, 12(t2)
	fmul.s f14, f14, f13
	flw f15, 16(t2)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t2)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -12(t3)
	flw f11, -12(a3)
	mv a3, t1
	addiw t1, t1, -4
	blt t1, zero, label38
	j label59
label51:
	auipc t2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t2, t2, %pcrel_lo(label51)
	flw f14, 12(t2)
	fmul.s f14, f14, f11
	flw f15, 16(t2)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t2)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	slli t3, a3, 2
	add t3, a5, t3
	fsw f12, 0(t3)
	slli a3, a3, 2
	add a3, a4, a3
	flw f13, 0(a3)
	flw f14, 12(t2)
	fmul.s f14, f14, f13
	flw f15, 16(t2)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t2)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -4(t3)
	flw f11, -4(a3)
	flw f14, 12(t2)
	fmul.s f14, f14, f11
	flw f15, 16(t2)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t2)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	fsw f12, -8(t3)
	flw f13, -8(a3)
	flw f14, 12(t2)
	fmul.s f14, f14, f13
	flw f15, 16(t2)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t2)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -12(t3)
	flw f11, -12(a3)
	mv a3, t1
	addiw t1, t1, -4
	blt t1, zero, label52
	j label51
label1161:
	li a2, 1080
	mulw a4, a3, a2
	add a4, a1, a4
	mulw a5, a3, a2
	add a5, a0, a5
	mulw a2, a3, a2
	add t1, s0, a2
	mv a2, zero
	addiw t2, zero, 4
	li t3, 270
	bge t2, t3, label108
	j label117
label114:
	addiw a3, a3, 1
	li a2, 512
	bge a3, a2, label118
	j label1161
label108:
	addiw t2, a2, 4
	li t3, 270
	bge t2, t3, label110
label116:
	slli t3, a2, 2
	add t3, a5, t3
	flw f10, 0(t3)
	slli t4, a2, 2
	add t4, a4, t4
	flw f11, 0(t4)
	fadd.s f10, f10, f11
	slli a2, a2, 2
	add a2, t1, a2
	fsw f10, 0(a2)
	flw f10, 4(t3)
	flw f11, 4(t4)
	fadd.s f10, f10, f11
	fsw f10, 4(a2)
	flw f10, 8(t3)
	flw f11, 8(t4)
	fadd.s f10, f10, f11
	fsw f10, 8(a2)
	flw f10, 12(t3)
	flw f11, 12(t4)
	fadd.s f10, f10, f11
	fsw f10, 12(a2)
	mv a2, t2
	addiw t2, t2, 4
	li t3, 270
	bge t2, t3, label110
	j label116
label110:
	addiw t2, a2, 4
	li t3, 270
	bge t2, t3, label112
label115:
	slli t3, a2, 2
	add t3, a5, t3
	flw f10, 0(t3)
	slli t4, a2, 2
	add t4, a4, t4
	flw f11, 0(t4)
	fadd.s f10, f10, f11
	slli a2, a2, 2
	add a2, t1, a2
	fsw f10, 0(a2)
	flw f10, 4(t3)
	flw f11, 4(t4)
	fadd.s f10, f10, f11
	fsw f10, 4(a2)
	flw f10, 8(t3)
	flw f11, 8(t4)
	fadd.s f10, f10, f11
	fsw f10, 8(a2)
	flw f10, 12(t3)
	flw f11, 12(t4)
	fadd.s f10, f10, f11
	fsw f10, 12(a2)
	mv a2, t2
	addiw t2, t2, 4
	li t3, 270
	bge t2, t3, label112
	j label115
label112:
	slli t2, a2, 2
	add t2, a5, t2
	flw f10, 0(t2)
	slli t2, a2, 2
	add t2, a4, t2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	slli t2, a2, 2
	add t2, t1, t2
	fsw f10, 0(t2)
	addiw a2, a2, 1
	li t2, 270
	bge a2, t2, label114
	j label112
label117:
	slli t3, a2, 2
	add t3, a5, t3
	flw f10, 0(t3)
	slli t4, a2, 2
	add t4, a4, t4
	flw f11, 0(t4)
	fadd.s f10, f10, f11
	slli a2, a2, 2
	add a2, t1, a2
	fsw f10, 0(a2)
	flw f10, 4(t3)
	flw f11, 4(t4)
	fadd.s f10, f10, f11
	fsw f10, 4(a2)
	flw f10, 8(t3)
	flw f11, 8(t4)
	fadd.s f10, f10, f11
	fsw f10, 8(a2)
	flw f10, 12(t3)
	flw f11, 12(t4)
	fadd.s f10, f10, f11
	fsw f10, 12(a2)
	mv a2, t2
	addiw t2, t2, 4
	li t3, 270
	bge t2, t3, label108
	j label117
label157:
	li a3, 1080
	mulw a4, a2, a3
	add a4, s1, a4
	mulw a3, a2, a3
	add a5, a0, a3
	fmv.w.x f10, zero
	fmv.w.x f12, zero
	fmv.w.x f11, zero
	mv a3, zero
	addiw t1, zero, 4
	li t2, 270
	bge t1, t2, label11
	j label10
label26:
	addiw a2, a2, 1
	li a3, 512
	bge a2, a3, label158
	j label157
label10:
	slli t2, a3, 2
	add t3, a4, t2
	flw f13, 0(t3)
pcrel1767:
	auipc t2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t2, t2, %pcrel_lo(pcrel1767)
	flw f14, 0(t2)
	fmul.s f14, f14, f13
	flw f15, 4(t2)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(t2)
	fmul.s f11, f14, f11
	fadd.s f11, f12, f11
	slli a3, a3, 2
	add a3, a5, a3
	fsw f11, 0(a3)
	flw f12, 4(t3)
	flw f14, 0(t2)
	fmul.s f14, f14, f12
	flw f15, 4(t2)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(t2)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 4(a3)
	flw f13, 8(t3)
	flw f14, 0(t2)
	fmul.s f14, f14, f13
	flw f15, 4(t2)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(t2)
	fmul.s f11, f14, f11
	fadd.s f11, f12, f11
	fsw f11, 8(a3)
	flw f12, 12(t3)
	flw f14, 0(t2)
	fmul.s f14, f14, f12
	flw f15, 4(t2)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(t2)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 12(a3)
	mv a3, t1
	addiw t1, t1, 4
	li t2, 270
	bge t1, t2, label11
	j label10
label11:
	addiw t1, a3, 4
	li t2, 270
	bge t1, t2, label16
	j label28
label16:
	addiw t1, a3, 4
	li t2, 270
	bge t1, t2, label21
	j label27
label21:
	slli t1, a3, 2
	add t1, a4, t1
	flw f13, 0(t1)
pcrel1768:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t1, t1, %pcrel_lo(pcrel1768)
	flw f14, 0(t1)
	fmul.s f14, f14, f13
	flw f15, 4(t1)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(t1)
	fmul.s f11, f14, f11
	fadd.s f14, f12, f11
	slli t1, a3, 2
	add t1, a5, t1
	fsw f14, 0(t1)
	addiw a3, a3, 1
	li t1, 270
	bge a3, t1, label26
	fmv.s f12, f13
	fmv.s f11, f10
	fmv.s f10, f14
	j label21
label28:
	slli t2, a3, 2
	add t3, a4, t2
	flw f13, 0(t3)
pcrel1769:
	auipc t2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t2, t2, %pcrel_lo(pcrel1769)
	flw f14, 0(t2)
	fmul.s f14, f14, f13
	flw f15, 4(t2)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(t2)
	fmul.s f11, f14, f11
	fadd.s f11, f12, f11
	slli a3, a3, 2
	add a3, a5, a3
	fsw f11, 0(a3)
	flw f12, 4(t3)
	flw f14, 0(t2)
	fmul.s f14, f14, f12
	flw f15, 4(t2)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(t2)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 4(a3)
	flw f13, 8(t3)
	flw f14, 0(t2)
	fmul.s f14, f14, f13
	flw f15, 4(t2)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(t2)
	fmul.s f11, f14, f11
	fadd.s f11, f12, f11
	fsw f11, 8(a3)
	flw f12, 12(t3)
	flw f14, 0(t2)
	fmul.s f14, f14, f12
	flw f15, 4(t2)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(t2)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 12(a3)
	mv a3, t1
	addiw t1, t1, 4
	li t2, 270
	bge t1, t2, label16
	j label28
label27:
	slli t2, a3, 2
	add t3, a4, t2
	flw f13, 0(t3)
pcrel1770:
	auipc t2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t2, t2, %pcrel_lo(pcrel1770)
	flw f14, 0(t2)
	fmul.s f14, f14, f13
	flw f15, 4(t2)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(t2)
	fmul.s f11, f14, f11
	fadd.s f11, f12, f11
	slli a3, a3, 2
	add a3, a5, a3
	fsw f11, 0(a3)
	flw f12, 4(t3)
	flw f14, 0(t2)
	fmul.s f14, f14, f12
	flw f15, 4(t2)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(t2)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 4(a3)
	flw f13, 8(t3)
	flw f14, 0(t2)
	fmul.s f14, f14, f13
	flw f15, 4(t2)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(t2)
	fmul.s f11, f14, f11
	fadd.s f11, f12, f11
	fsw f11, 8(a3)
	flw f12, 12(t3)
	flw f14, 0(t2)
	fmul.s f14, f14, f12
	flw f15, 4(t2)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(t2)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 12(a3)
	mv a3, t1
	addiw t1, t1, 4
	li t2, 270
	bge t1, t2, label21
	j label27
label58:
	addiw a2, a2, 1
	li a3, 512
	bge a2, a3, label433
	j label31
