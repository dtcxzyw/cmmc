.data
.align 4
.globl x
x:
	.zero	40
.text
.globl cse_imm
cse_imm:
	li a3, 10
	mulw a4, a0, a3
	mulw a5, a1, a3
	xor t1, a2, a5
	addw t2, a4, t1
	mv a0, t2
	ret
.globl cse_global
cse_global:
pcrel34:
	auipc a0, %pcrel_hi(x)
	addi a1, a0, %pcrel_lo(pcrel34)
pcrel35:
	auipc a2, %pcrel_hi(x)
	lw a3, %pcrel_lo(pcrel35)(a2)
	lw a4, 4(a1)
	addw a5, a3, a4
	mv a0, a5
	ret
.globl cse_fp
cse_fp:
	lui a0, 264192
	fmv.w.x f12, a0
	fmul.s f13, f10, f12
	lui a1, 264192
	fmv.w.x f14, a1
	fmul.s f15, f11, f14
	fadd.s f0, f13, f15
	fmv.s f10, f0
	ret
