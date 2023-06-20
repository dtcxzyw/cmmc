.data
.align 4
.globl x
x:
	.zero	40
.text
.globl cse_imm
cse_imm:
	li t1, 10
	mulw t2, a0, t1
	mulw t3, a1, t1
	xor t4, a2, t3
	addw t5, t2, t4
	mv a0, t5
	ret
.globl cse_global
cse_global:
pcrel31:
	auipc t1, %pcrel_hi(x)
	addi t2, t1, %pcrel_lo(pcrel31)
pcrel32:
	auipc t3, %pcrel_hi(x)
	lw t4, %pcrel_lo(pcrel32)(t3)
	lw t5, 4(t2)
	addw t6, t4, t5
	mv a0, t6
	ret
.globl cse_fp
cse_fp:
	lui t1, 264192
	fmv.w.x f0, t1
	fmul.s f1, f10, f0
	lui t2, 264192
	fmv.w.x f2, t2
	fmul.s f3, f11, f2
	fadd.s f4, f1, f3
	fmv.s f10, f4
	ret
