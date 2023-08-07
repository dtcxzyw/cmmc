.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1065361605
.bss
.align 8
lut_func:
	.zero	16336
.text
.p2align 2
func:
	addi sp, sp, -48
	fmv.x.w a1, f10
pcrel50:
	auipc a2, %pcrel_hi(lut_func)
	sd ra, 0(sp)
	fsw f8, 8(sp)
	fmv.s f8, f10
	sd s0, 16(sp)
	mv s0, a0
	sd s1, 24(sp)
	addi a0, a2, %pcrel_lo(pcrel50)
	sd s2, 32(sp)
	fsw f9, 40(sp)
	mv a2, s0
	jal cmmcCacheLookup
	lw a1, 12(a0)
	mv s1, a0
	beq a1, zero, label5
	flw f10, 8(a0)
label3:
	ld ra, 0(sp)
	flw f8, 8(sp)
	ld s0, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	flw f9, 40(sp)
	addi sp, sp, 48
	ret
label5:
	bge s0, zero, label7
	li a0, 1
	fmv.w.x f10, zero
	sw a0, 12(s1)
	fsw f10, 8(s1)
	j label3
label7:
	addiw s2, s0, -1
	fmv.s f10, f8
	mv a0, s2
	jal func
	fadd.s f9, f8, f10
	fmv.s f10, f9
	mv a0, s2
	jal func
	li a0, 1
	fsub.s f10, f9, f10
	sw a0, 12(s1)
	fsw f10, 8(s1)
	j label3
.p2align 2
.globl main
main:
	addi sp, sp, -16
	li a0, 21
	sd ra, 0(sp)
	fsw f8, 8(sp)
	jal _sysy_starttime
	jal getint
pcrel69:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a2, %pcrel_lo(pcrel69)
	flw f8, 0(a1)
	fmv.s f10, f8
	jal func
	fmv.w.x f12, zero
	fsub.s f11, f10, f8
	feq.s a0, f11, f12
	beq a0, zero, label53
	li a0, 112
	jal putch
label53:
	li a0, 32
	jal _sysy_stoptime
	ld ra, 0(sp)
	mv a0, zero
	flw f8, 8(sp)
	addi sp, sp, 16
	ret
