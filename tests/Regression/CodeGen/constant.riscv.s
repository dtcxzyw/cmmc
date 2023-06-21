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
pcrel34:
	auipc a0, %pcrel_hi(x)
	addi a0, a0, %pcrel_lo(pcrel34)
pcrel35:
	auipc a1, %pcrel_hi(x)
	lw a1, %pcrel_lo(pcrel35)(a1)
	lw a0, 4(a0)
	addw a0, a1, a0
	ret
.globl cse_fp
cse_fp:
	lui a0, 264192
	fmv.w.x f12, a0
	fmul.s f10, f10, f12
	lui a0, 264192
	fmv.w.x f12, a0
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ret
