.data
.text
.globl add_after_lsl
add_after_lsl:
	sllw a3, a1, a2
	addw a4, a0, a3
	mv a0, a4
	ret
.globl add_after_lsl_imm
add_after_lsl_imm:
	slliw a2, a1, 3
	addw a3, a0, a2
	mv a0, a3
	ret
.globl add_after_lsr
add_after_lsr:
	li a3, 4294967295
	and a4, a2, a3
	srlw a5, a1, a4
	addw t1, a0, a5
	mv a0, t1
	ret
.globl add_after_lsr_imm
add_after_lsr_imm:
	srliw a2, a1, 3
	addw a3, a0, a2
	mv a0, a3
	ret
.globl add_after_asr
add_after_asr:
	sraw a3, a1, a2
	addw a4, a0, a3
	mv a0, a4
	ret
.globl add_after_asr_imm
add_after_asr_imm:
	sraiw a2, a1, 3
	addw a3, a0, a2
	mv a0, a3
	ret
.globl sub_after_lsl
sub_after_lsl:
	sllw a3, a1, a2
	subw a4, a0, a3
	mv a0, a4
	ret
.globl sub_after_lsl_imm
sub_after_lsl_imm:
	slliw a2, a1, 3
	subw a3, a0, a2
	mv a0, a3
	ret
.globl sub_after_lsr
sub_after_lsr:
	li a3, 4294967295
	and a4, a2, a3
	srlw a5, a1, a4
	subw t1, a0, a5
	mv a0, t1
	ret
.globl sub_after_lsr_imm
sub_after_lsr_imm:
	srliw a2, a1, 3
	subw a3, a0, a2
	mv a0, a3
	ret
.globl sub_after_asr
sub_after_asr:
	sraw a3, a1, a2
	subw a4, a0, a3
	mv a0, a4
	ret
.globl sub_after_asr_imm
sub_after_asr_imm:
	sraiw a2, a1, 3
	subw a3, a0, a2
	mv a0, a3
	ret
.globl and_after_lsl
and_after_lsl:
	sllw a3, a1, a2
	and a4, a0, a3
	mv a0, a4
	ret
.globl and_after_lsl_imm
and_after_lsl_imm:
	slliw a2, a1, 3
	and a3, a0, a2
	mv a0, a3
	ret
.globl and_after_lsr
and_after_lsr:
	li a3, 4294967295
	and a4, a2, a3
	srlw a5, a1, a4
	and t1, a0, a5
	mv a0, t1
	ret
.globl and_after_lsr_imm
and_after_lsr_imm:
	srliw a2, a1, 3
	and a3, a0, a2
	mv a0, a3
	ret
.globl and_after_asr
and_after_asr:
	sraw a3, a1, a2
	and a4, a0, a3
	mv a0, a4
	ret
.globl and_after_asr_imm
and_after_asr_imm:
	sraiw a2, a1, 3
	and a3, a0, a2
	mv a0, a3
	ret
