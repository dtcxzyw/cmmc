.data
.align 4
.globl x
x:
	.zero	40
.text
.globl cse_imm
cse_imm:
	li a3, 10
	mulw a0, a0, a3
	mulw a1, a1, a3
	xor a1, a2, a1
	addw a0, a0, a1
	ret
.globl cse_global
cse_global:
pcrel33:
	auipc a0, %pcrel_hi(x)
	addi a1, a0, %pcrel_lo(pcrel33)
	lw a0, %pcrel_lo(pcrel33)(a0)
	lw a1, 4(a1)
	addw a0, a0, a1
	ret
.globl cse_fp
cse_fp:
	lui a0, 264192
	fmv.w.x f12, a0
	fmul.s f10, f10, f12
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ret
