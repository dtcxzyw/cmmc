.data
.text
.globl add_after_lsl
add_after_lsl:
	sllw t1, a1, a2
	addw t2, a0, t1
	mv a0, t2
	ret
.globl add_after_lsl_imm
add_after_lsl_imm:
	slliw t1, a1, 3
	addw t2, a0, t1
	mv a0, t2
	ret
.globl add_after_lsr
add_after_lsr:
	li t1, 4294967295
	and t2, a2, t1
	srlw t3, a1, t2
	addw t4, a0, t3
	mv a0, t4
	ret
.globl add_after_lsr_imm
add_after_lsr_imm:
	srliw t1, a1, 3
	addw t2, a0, t1
	mv a0, t2
	ret
.globl add_after_asr
add_after_asr:
	sraw t1, a1, a2
	addw t2, a0, t1
	mv a0, t2
	ret
.globl add_after_asr_imm
add_after_asr_imm:
	sraiw t1, a1, 3
	addw t2, a0, t1
	mv a0, t2
	ret
.globl sub_after_lsl
sub_after_lsl:
	sllw t1, a1, a2
	subw t2, a0, t1
	mv a0, t2
	ret
.globl sub_after_lsl_imm
sub_after_lsl_imm:
	slliw t1, a1, 3
	subw t2, a0, t1
	mv a0, t2
	ret
.globl sub_after_lsr
sub_after_lsr:
	li t1, 4294967295
	and t2, a2, t1
	srlw t3, a1, t2
	subw t4, a0, t3
	mv a0, t4
	ret
.globl sub_after_lsr_imm
sub_after_lsr_imm:
	srliw t1, a1, 3
	subw t2, a0, t1
	mv a0, t2
	ret
.globl sub_after_asr
sub_after_asr:
	sraw t1, a1, a2
	subw t2, a0, t1
	mv a0, t2
	ret
.globl sub_after_asr_imm
sub_after_asr_imm:
	sraiw t1, a1, 3
	subw t2, a0, t1
	mv a0, t2
	ret
.globl and_after_lsl
and_after_lsl:
	sllw t1, a1, a2
	and t2, a0, t1
	mv a0, t2
	ret
.globl and_after_lsl_imm
and_after_lsl_imm:
	slliw t1, a1, 3
	and t2, a0, t1
	mv a0, t2
	ret
.globl and_after_lsr
and_after_lsr:
	li t1, 4294967295
	and t2, a2, t1
	srlw t3, a1, t2
	and t4, a0, t3
	mv a0, t4
	ret
.globl and_after_lsr_imm
and_after_lsr_imm:
	srliw t1, a1, 3
	and t2, a0, t1
	mv a0, t2
	ret
.globl and_after_asr
and_after_asr:
	sraw t1, a1, a2
	and t2, a0, t1
	mv a0, t2
	ret
.globl and_after_asr_imm
and_after_asr_imm:
	sraiw t1, a1, 3
	and t2, a0, t1
	mv a0, t2
	ret
