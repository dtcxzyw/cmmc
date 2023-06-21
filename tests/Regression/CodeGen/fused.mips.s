.data
.text
.globl add_after_lsl
add_after_lsl:
	sllv $t0, $a1, $a2
	addu $v0, $a0, $t0
	jr $ra
	nop
.globl add_after_lsl_imm
add_after_lsl_imm:
	sll $t0, $a1, 3
	addu $v0, $a0, $t0
	jr $ra
	nop
.globl add_after_lsr
add_after_lsr:
	srlv $t0, $a1, $a2
	addu $v0, $a0, $t0
	jr $ra
	nop
.globl add_after_lsr_imm
add_after_lsr_imm:
	srl $t0, $a1, 3
	addu $v0, $a0, $t0
	jr $ra
	nop
.globl add_after_asr
add_after_asr:
	srav $t0, $a1, $a2
	addu $v0, $a0, $t0
	jr $ra
	nop
.globl add_after_asr_imm
add_after_asr_imm:
	sra $t0, $a1, 3
	addu $v0, $a0, $t0
	jr $ra
	nop
.globl sub_after_lsl
sub_after_lsl:
	sllv $t0, $a1, $a2
	subu $v0, $a0, $t0
	jr $ra
	nop
.globl sub_after_lsl_imm
sub_after_lsl_imm:
	sll $t0, $a1, 3
	subu $v0, $a0, $t0
	jr $ra
	nop
.globl rsb_after_lsl_imm
rsb_after_lsl_imm:
	sll $t0, $a0, 3
	subu $v0, $t0, $a1
	jr $ra
	nop
.globl sub_after_lsr
sub_after_lsr:
	srlv $t0, $a1, $a2
	subu $v0, $a0, $t0
	jr $ra
	nop
.globl sub_after_lsr_imm
sub_after_lsr_imm:
	srl $t0, $a1, 3
	subu $v0, $a0, $t0
	jr $ra
	nop
.globl sub_after_asr
sub_after_asr:
	srav $t0, $a1, $a2
	subu $v0, $a0, $t0
	jr $ra
	nop
.globl sub_after_asr_imm
sub_after_asr_imm:
	sra $t0, $a1, 3
	subu $v0, $a0, $t0
	jr $ra
	nop
.globl and_after_lsl
and_after_lsl:
	sllv $t0, $a1, $a2
	and $v0, $a0, $t0
	jr $ra
	nop
.globl and_after_lsl_imm
and_after_lsl_imm:
	sll $t0, $a1, 3
	and $v0, $a0, $t0
	jr $ra
	nop
.globl and_after_lsr
and_after_lsr:
	srlv $t0, $a1, $a2
	and $v0, $a0, $t0
	jr $ra
	nop
.globl and_after_lsr_imm
and_after_lsr_imm:
	srl $t0, $a1, 3
	and $v0, $a0, $t0
	jr $ra
	nop
.globl and_after_asr
and_after_asr:
	srav $t0, $a1, $a2
	and $v0, $a0, $t0
	jr $ra
	nop
.globl and_after_asr_imm
and_after_asr_imm:
	sra $t0, $a1, 3
	and $v0, $a0, $t0
	jr $ra
	nop
