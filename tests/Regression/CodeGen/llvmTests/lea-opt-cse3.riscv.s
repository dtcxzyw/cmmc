.data
.section .rodata
.bss
.text
.globl foo
foo:
	slliw a3, a1, 1
	addiw a2, a0, 4
	addw a0, a2, a3
	slliw a1, a1, 2
	addw a1, a2, a1
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl foo1
foo1:
	slliw a3, a1, 2
	addiw a2, a0, 4
	addw a0, a2, a3
	slliw a1, a1, 3
	addw a1, a2, a1
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl foo1_mult_basic_blocks
foo1_mult_basic_blocks:
	addiw a0, a0, 4
	slliw a2, a1, 2
	addw a2, a0, a2
	xori a3, a2, 10
	sltiu a3, a3, 1
	bne a3, zero, label38
	slliw a1, a1, 3
	addw a0, a0, a1
	mulw a0, a2, a0
	li a1, 4294967295
	and a0, a0, a1
	j label29
label38:
	mv a0, zero
label29:
	ret
.globl foo1_mult_basic_blocks_illegal_scale
foo1_mult_basic_blocks_illegal_scale:
	addiw a0, a0, 4
	slliw a2, a1, 1
	addw a2, a0, a2
	xori a3, a2, 10
	sltiu a3, a3, 1
	bne a3, zero, label59
	slliw a1, a1, 3
	addw a0, a0, a1
	mulw a0, a2, a0
	li a1, 4294967295
	and a0, a0, a1
	j label50
label59:
	mv a0, zero
label50:
	ret
