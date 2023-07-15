.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	981668463
	.4byte	1076754516
	.4byte	841731191
.text
my_sqrt:
	addi sp, sp, -8
	lui a1, 273536
	sd ra, 0(sp)
	fmv.w.x f11, a1
	flt.s a0, f11, f10
	beq a0, zero, label5
	lui a0, 273536
	fmv.w.x f11, a0
	fdiv.s f10, f10, f11
	jal my_sqrt
	lui a0, 266752
	fmv.w.x f11, a0
	fmul.s f10, f10, f11
label3:
	ld ra, 0(sp)
	addi sp, sp, 8
	ret
label5:
	fadd.s f11, f10, f10
	lui a0, 264192
	fmv.w.x f14, a0
	lui a0, 253952
	fadd.s f13, f10, f14
	fdiv.s f12, f11, f13
	fmv.w.x f11, a0
	lui a0, 258048
	fmul.s f13, f10, f11
	fmv.w.x f11, a0
	fadd.s f13, f13, f11
	fadd.s f12, f13, f12
	fdiv.s f14, f10, f12
	fadd.s f15, f12, f14
	fmul.s f12, f15, f11
	fdiv.s f13, f10, f12
	fadd.s f14, f12, f13
	fmul.s f12, f14, f11
	fdiv.s f13, f10, f12
	fadd.s f14, f12, f13
	fmul.s f12, f14, f11
	fdiv.s f13, f10, f12
	fadd.s f15, f12, f13
	fmul.s f12, f15, f11
	fdiv.s f14, f10, f12
	fadd.s f13, f12, f14
	fmul.s f12, f13, f11
	fdiv.s f14, f10, f12
	fadd.s f15, f12, f14
	fmul.s f12, f15, f11
	fdiv.s f13, f10, f12
	fadd.s f14, f12, f13
	fmul.s f12, f14, f11
	fdiv.s f13, f10, f12
	fadd.s f14, f12, f13
	fmul.s f12, f14, f11
	fdiv.s f15, f10, f12
	fadd.s f13, f12, f15
	fmul.s f12, f13, f11
	fdiv.s f14, f10, f12
	fadd.s f13, f12, f14
	fmul.s f10, f13, f11
	j label3
asr5:
	addi sp, sp, -32
	fsub.s f14, f11, f10
	lui a0, 258048
	fsw f9, 24(sp)
	fmv.s f9, f11
	fsw f8, 20(sp)
	fmv.w.x f11, a0
	fsw f18, 16(sp)
	lui a0, 260096
	fmul.s f14, f14, f11
	fsw f19, 12(sp)
	fsw f20, 8(sp)
	sd ra, 0(sp)
	fadd.s f8, f10, f14
	fsub.s f1, f9, f8
	fmul.s f14, f1, f11
	fadd.s f15, f8, f14
	fmv.w.x f14, a0
	lui a0, 264192
	fmv.w.x f0, a0
	lui a0, 265216
	fdiv.s f15, f14, f15
	fmul.s f3, f15, f0
	fdiv.s f15, f14, f8
	fadd.s f2, f15, f3
	fdiv.s f3, f14, f9
	fadd.s f4, f2, f3
	fmul.s f2, f4, f1
	fmv.w.x f1, a0
	lui a0, 268032
	fdiv.s f18, f2, f1
	fsub.s f2, f8, f10
	fmul.s f11, f2, f11
	fadd.s f4, f10, f11
	fdiv.s f3, f14, f4
	fmul.s f11, f3, f0
	fdiv.s f0, f14, f10
	fadd.s f14, f0, f11
	fmv.w.x f0, a0
	fadd.s f11, f14, f15
	fmul.s f15, f11, f2
	fdiv.s f14, f15, f1
	fmul.s f1, f12, f0
	fadd.s f11, f14, f18
	fsub.s f13, f11, f13
	fabs.s f15, f13
	fle.s a0, f15, f1
	beq a0, zero, label69
	lui a0, 268032
	fmv.w.x f12, a0
	fdiv.s f13, f13, f12
	fadd.s f10, f11, f13
label67:
	ld ra, 0(sp)
	flw f20, 8(sp)
	flw f19, 12(sp)
	flw f18, 16(sp)
	flw f8, 20(sp)
	flw f9, 24(sp)
	addi sp, sp, 32
	ret
label69:
	lui a0, 258048
	fmv.w.x f11, a0
	li a0, 1
	fmul.s f19, f12, f11
	fmv.s f11, f8
	fmv.s f12, f19
	fmv.s f13, f14
	jal asr5
	li a0, 1
	fmv.s f20, f10
	fmv.s f10, f8
	fmv.s f11, f9
	fmv.s f12, f19
	fmv.s f13, f18
	jal asr5
	fadd.s f10, f20, f10
	j label67
eee:
	addi sp, sp, -8
pcrel263:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	sd ra, 0(sp)
	addi a0, a1, %pcrel_lo(pcrel263)
	flw f11, 0(a0)
	flt.s a1, f11, f10
	beq a1, zero, label139
	lui a0, 258048
	fmv.w.x f11, a0
	fmul.s f10, f10, f11
	jal eee
	fmul.s f10, f10, f10
	j label137
label139:
	fmul.s f11, f10, f10
	lui a0, 258048
	fmv.w.x f12, a0
	lui a0, 260096
	fmv.w.x f14, a0
	li a0, 3
	fadd.s f13, f10, f14
	fmul.s f11, f11, f12
	fadd.s f12, f13, f11
	fmv.s f11, f10
	fmul.s f15, f14, f10
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label229
	fmv.s f13, f14
	j label229
label137:
	ld ra, 0(sp)
	addi sp, sp, 8
	ret
label233:
	srliw a2, a0, 31
	fmul.s f10, f10, f10
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label154
	fmv.s f13, f12
	fmul.s f14, f12, f10
	andi a1, a0, 1
	fmv.s f12, f14
	bne a1, zero, label233
	fmv.s f12, f13
	srliw a2, a0, 31
	fmul.s f10, f10, f10
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label154
	fmul.s f14, f13, f10
	andi a1, a0, 1
	fmv.s f12, f14
	bne a1, zero, label233
	fmv.s f12, f13
	srliw a2, a0, 31
	fmul.s f10, f10, f10
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label154
	fmul.s f14, f13, f10
	andi a1, a0, 1
	fmv.s f12, f14
	bne a1, zero, label233
	fmv.s f12, f13
	srliw a2, a0, 31
	fmul.s f10, f10, f10
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label154
	fmul.s f14, f13, f10
	andi a1, a0, 1
	fmv.s f12, f14
	bne a1, zero, label233
label255:
	fmv.s f12, f13
	srliw a2, a0, 31
	fmul.s f10, f10, f10
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label154
	fmul.s f14, f13, f10
	andi a1, a0, 1
	fmv.s f12, f14
	bne a1, zero, label233
	j label255
label154:
	lui a0, 274176
	fmv.w.x f13, a0
	fdiv.s f12, f12, f13
	fadd.s f10, f11, f12
	j label137
label229:
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label144
	fmv.s f14, f13
	fmul.s f15, f13, f11
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label229
	fmv.s f13, f14
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label144
	fmul.s f15, f14, f11
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label229
	fmv.s f13, f14
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label144
	fmul.s f15, f14, f11
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label229
	fmv.s f13, f14
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label144
	fmul.s f15, f14, f11
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label229
	j label253
label144:
	lui a0, 265216
	lui a1, 260096
	fmv.w.x f14, a0
	li a0, 4
	fdiv.s f11, f13, f14
	fmv.w.x f14, a1
	fadd.s f12, f12, f11
	fmv.s f11, f10
	fmul.s f15, f14, f10
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label231
	fmv.s f13, f14
label231:
	srliw a1, a0, 31
	fmul.s f11, f11, f11
	add a2, a0, a1
	sraiw a0, a2, 1
	beq a0, zero, label149
	fmv.s f14, f13
	fmul.s f15, f13, f11
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label231
	fmv.s f13, f14
	srliw a1, a0, 31
	fmul.s f11, f11, f11
	add a2, a0, a1
	sraiw a0, a2, 1
	beq a0, zero, label149
	fmul.s f15, f14, f11
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label231
	fmv.s f13, f14
	srliw a1, a0, 31
	fmul.s f11, f11, f11
	add a2, a0, a1
	sraiw a0, a2, 1
	beq a0, zero, label149
	fmul.s f15, f14, f11
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label231
	fmv.s f13, f14
	srliw a1, a0, 31
	fmul.s f11, f11, f11
	add a2, a0, a1
	sraiw a0, a2, 1
	beq a0, zero, label149
	fmul.s f15, f14, f11
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label231
label254:
	fmv.s f13, f14
	srliw a1, a0, 31
	fmul.s f11, f11, f11
	add a2, a0, a1
	sraiw a0, a2, 1
	beq a0, zero, label149
	fmul.s f15, f14, f11
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label231
	j label254
label253:
	fmv.s f13, f14
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label144
	fmul.s f15, f14, f11
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label229
	j label253
label149:
	lui a0, 269312
	lui a1, 260096
	fmv.w.x f14, a0
	li a0, 5
	fdiv.s f13, f13, f14
	fadd.s f11, f12, f13
	fmv.w.x f13, a1
	fmul.s f14, f13, f10
	andi a1, a0, 1
	fmv.s f12, f14
	bne a1, zero, label233
	fmv.s f12, f13
	j label233
my_exp:
	addi sp, sp, -8
	fmv.w.x f11, zero
	sd ra, 0(sp)
	flt.s a0, f10, f11
	beq a0, zero, label268
	fneg.s f10, f10
	jal my_exp
	lui a0, 260096
	fmv.w.x f11, a0
	fdiv.s f10, f11, f10
	j label266
label268:
	fcvt.w.s a0, f10, rtz
	fcvt.s.w f11, a0
	fsub.s f10, f10, f11
	bge a0, zero, label277
	subw a0, zero, a0
	lui a2, 260096
pcrel407:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f12, a2
	addi a2, a1, %pcrel_lo(pcrel407)
	flw f11, 4(a2)
	fmul.s f14, f12, f11
	andi a1, a0, 1
	fmv.s f13, f14
	bne a1, zero, label350
	fmv.s f13, f12
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label274
	fmul.s f14, f12, f11
	andi a1, a0, 1
	fmv.s f13, f14
	bne a1, zero, label350
	fmv.s f13, f12
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label274
	fmul.s f14, f12, f11
	andi a1, a0, 1
	fmv.s f13, f14
	bne a1, zero, label350
	fmv.s f13, f12
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label274
	fmul.s f14, f12, f11
	andi a1, a0, 1
	fmv.s f13, f14
	bne a1, zero, label350
	fmv.s f13, f12
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label274
	j label385
label350:
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label274
	fmv.s f12, f13
	fmul.s f14, f13, f11
	andi a1, a0, 1
	fmv.s f13, f14
	bne a1, zero, label350
	fmv.s f13, f12
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label274
	fmul.s f14, f12, f11
	andi a1, a0, 1
	fmv.s f13, f14
	bne a1, zero, label350
	fmv.s f13, f12
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label274
	fmul.s f14, f12, f11
	andi a1, a0, 1
	fmv.s f13, f14
	bne a1, zero, label350
	fmv.s f13, f12
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label274
label385:
	fmv.s f12, f13
	fmul.s f14, f13, f11
	andi a1, a0, 1
	fmv.s f13, f14
	bne a1, zero, label350
	j label391
label266:
	ld ra, 0(sp)
	addi sp, sp, 8
	ret
label275:
	jal eee
	fmul.s f10, f0, f10
	j label266
label322:
	lui a0, 260096
	fmv.w.x f0, a0
	j label275
label352:
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label338
	fmv.s f12, f13
	fmul.s f14, f13, f11
	andi a1, a0, 1
	fmv.s f13, f14
	bne a1, zero, label352
	fmv.s f13, f12
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label338
	fmul.s f14, f12, f11
	andi a1, a0, 1
	fmv.s f13, f14
	bne a1, zero, label352
	fmv.s f13, f12
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label338
	fmul.s f14, f12, f11
	andi a1, a0, 1
	fmv.s f13, f14
	bne a1, zero, label352
	fmv.s f13, f12
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label338
	fmul.s f14, f12, f11
	andi a1, a0, 1
	fmv.s f13, f14
	bne a1, zero, label352
label393:
	fmv.s f13, f12
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label338
	fmul.s f14, f12, f11
	andi a1, a0, 1
	fmv.s f13, f14
	bne a1, zero, label352
	j label393
label338:
	fmv.s f0, f13
	j label275
label391:
	fmv.s f13, f12
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label274
	fmul.s f14, f12, f11
	andi a1, a0, 1
	fmv.s f13, f14
	bne a1, zero, label350
	j label391
label277:
	beq a0, zero, label322
	lui a1, 260096
pcrel408:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f12, a1
	addi a1, a2, %pcrel_lo(pcrel408)
	flw f11, 4(a1)
	fmul.s f14, f12, f11
	andi a1, a0, 1
	fmv.s f13, f14
	bne a1, zero, label352
	fmv.s f13, f12
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label338
	fmul.s f14, f12, f11
	andi a1, a0, 1
	fmv.s f13, f14
	bne a1, zero, label352
	fmv.s f13, f12
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label338
	fmul.s f14, f12, f11
	andi a1, a0, 1
	fmv.s f13, f14
	bne a1, zero, label352
	fmv.s f13, f12
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label338
	fmul.s f14, f12, f11
	andi a1, a0, 1
	fmv.s f13, f14
	bne a1, zero, label352
	fmv.s f13, f12
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label338
	fmul.s f14, f12, f11
	andi a1, a0, 1
	fmv.s f13, f14
	bne a1, zero, label352
	j label393
label274:
	lui a0, 260096
	fmv.w.x f11, a0
	fdiv.s f0, f11, f13
	j label275
.globl main
main:
	addi sp, sp, -40
	sd s0, 32(sp)
	fsw f8, 24(sp)
	fsw f18, 20(sp)
	fsw f9, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
	beq a0, zero, label412
label413:
	jal getfloat
	fabs.s f18, f10
	fmv.s f8, f10
	jal getfloat
	fmv.s f9, f10
	fmv.s f10, f18
	jal putfloat
	li a0, 32
	jal putch
	fmv.s f10, f8
	li a0, 2
	lui a1, 260096
	fmv.w.x f12, a1
	fmul.s f13, f12, f8
	andi a1, a0, 1
	fmv.s f11, f13
	bne a1, zero, label555
	fmv.s f11, f12
	j label555
label421:
	li a0, 45
	jal putch
label422:
	li a0, 32
	jal putch
	fmv.w.x f10, zero
	flt.s a0, f10, f8
	beq a0, zero, label423
	j label425
label423:
	li a0, 45
	jal putch
label424:
	li a0, 10
	jal putch
	addiw s0, s0, -1
	beq s0, zero, label412
	j label413
label425:
	lui a0, 260096
	fmv.w.x f10, a0
	lui a0, 258048
	fsub.s f11, f8, f10
	fmv.w.x f12, a0
	lui a0, 264192
	fmul.s f14, f11, f12
	fadd.s f13, f14, f10
	fdiv.s f12, f10, f13
	fmv.w.x f13, a0
	lui a0, 265216
	fmul.s f14, f12, f13
	fdiv.s f13, f10, f8
	fadd.s f12, f14, f10
	fadd.s f14, f12, f13
	fmv.w.x f12, a0
pcrel572:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a0, %pcrel_lo(pcrel572)
	li a0, 1
	fmul.s f11, f14, f11
	fdiv.s f13, f11, f12
	flw f12, 8(a1)
	fmv.s f11, f8
	jal asr5
	fmul.s f10, f9, f10
	jal my_exp
	jal putfloat
	j label424
label555:
	srliw a2, a0, 31
	fmul.s f10, f10, f10
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label418
	fmv.s f12, f11
	fmul.s f13, f11, f10
	andi a1, a0, 1
	fmv.s f11, f13
	bne a1, zero, label555
	fmv.s f11, f12
	srliw a2, a0, 31
	fmul.s f10, f10, f10
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label418
	fmul.s f13, f12, f10
	andi a1, a0, 1
	fmv.s f11, f13
	bne a1, zero, label555
	fmv.s f11, f12
	srliw a2, a0, 31
	fmul.s f10, f10, f10
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label418
	fmul.s f13, f12, f10
	andi a1, a0, 1
	fmv.s f11, f13
	bne a1, zero, label555
	fmv.s f11, f12
	srliw a2, a0, 31
	fmul.s f10, f10, f10
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label418
	fmul.s f13, f12, f10
	andi a1, a0, 1
	fmv.s f11, f13
	bne a1, zero, label555
label569:
	fmv.s f11, f12
	srliw a2, a0, 31
	fmul.s f10, f10, f10
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label418
	fmul.s f13, f12, f10
	andi a1, a0, 1
	fmv.s f11, f13
	bne a1, zero, label555
	j label569
label418:
	fmv.s f10, f11
	jal putfloat
	fmv.s f10, f8
	jal my_sqrt
	li a0, 32
	fmv.s f18, f10
	jal putch
	fmv.s f10, f18
	jal putfloat
	fmv.s f10, f8
	jal my_exp
	li a0, 32
	fmv.s f18, f10
	jal putch
	fmv.s f10, f18
	jal putfloat
	li a0, 32
	jal putch
	fmv.w.x f10, zero
	flt.s a0, f10, f8
	flt.s s1, f10, f8
	beq a0, zero, label419
	j label427
label420:
	li a0, 32
	jal putch
	fmv.w.x f10, zero
	flt.s a1, f10, f9
	and a0, s1, a1
	beq a0, zero, label421
	lui a0, 260096
	fmv.w.x f5, a0
	lui a0, 258048
	fsub.s f10, f9, f5
	fmv.w.x f6, a0
	lui a0, 264192
	fmv.w.x f7, a0
	lui a0, 265216
	fmul.s f12, f10, f6
	fmv.w.x f29, a0
pcrel573:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a0, %pcrel_lo(pcrel573)
	li a0, 1
	flw f28, 8(a1)
	fadd.s f13, f12, f5
	fdiv.s f11, f5, f13
	fdiv.s f13, f5, f9
	fmul.s f12, f11, f7
	fadd.s f11, f12, f5
	fadd.s f12, f11, f13
	fmul.s f10, f12, f10
	fdiv.s f13, f10, f29
	fmv.s f10, f5
	fmv.s f11, f9
	fmv.s f12, f28
	jal asr5
	li a0, 1
	fmv.s f30, f10
	fsub.s f10, f8, f5
	fmul.s f12, f10, f6
	fadd.s f11, f12, f5
	fdiv.s f12, f5, f8
	fdiv.s f14, f5, f11
	fmul.s f13, f14, f7
	fadd.s f11, f13, f5
	fadd.s f14, f11, f12
	fmul.s f11, f14, f10
	fmv.s f10, f5
	fdiv.s f13, f11, f29
	fmv.s f11, f8
	fmv.s f12, f28
	jal asr5
	fdiv.s f10, f30, f10
	jal putfloat
	j label422
label427:
	lui a0, 260096
	fmv.w.x f10, a0
	lui a0, 258048
	fsub.s f11, f8, f10
	fmv.w.x f12, a0
	lui a0, 264192
	fmul.s f14, f11, f12
	fadd.s f13, f14, f10
	fdiv.s f12, f10, f13
	fmv.w.x f13, a0
	lui a0, 265216
	fmul.s f14, f12, f13
	fdiv.s f13, f10, f8
	fadd.s f12, f14, f10
	fadd.s f14, f12, f13
	fmv.w.x f12, a0
pcrel574:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a0, %pcrel_lo(pcrel574)
	li a0, 1
	fmul.s f11, f14, f11
	fdiv.s f13, f11, f12
	flw f12, 8(a1)
	fmv.s f11, f8
	jal asr5
	jal putfloat
	j label420
label419:
	li a0, 45
	jal putch
	j label420
label412:
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	flw f9, 16(sp)
	flw f18, 20(sp)
	flw f8, 24(sp)
	ld s0, 32(sp)
	addi sp, sp, 40
	ret
