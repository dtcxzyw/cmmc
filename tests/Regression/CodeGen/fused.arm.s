.arch armv7-a
.data
.text
.syntax unified
.arm
.fpu neon
.globl add_after_lsl
add_after_lsl:
	push { r4 }
	add r4, r0, r1, lsl r2
	mov r0, r4
	pop { r4 }
	bx lr
.globl add_after_lsl_imm
add_after_lsl_imm:
	push { r4 }
	add r4, r0, r1, lsl #3
	mov r0, r4
	pop { r4 }
	bx lr
.globl add_after_lsr
add_after_lsr:
	push { r4 }
	add r4, r0, r1, lsr r2
	mov r0, r4
	pop { r4 }
	bx lr
.globl add_after_lsr_imm
add_after_lsr_imm:
	push { r4 }
	add r4, r0, r1, lsr #3
	mov r0, r4
	pop { r4 }
	bx lr
.globl add_after_asr
add_after_asr:
	push { r4 }
	add r4, r0, r1, asr r2
	mov r0, r4
	pop { r4 }
	bx lr
.globl add_after_asr_imm
add_after_asr_imm:
	push { r4 }
	add r4, r0, r1, asr #3
	mov r0, r4
	pop { r4 }
	bx lr
.globl sub_after_lsl
sub_after_lsl:
	push { r4 }
	sub r4, r0, r1, lsl r2
	mov r0, r4
	pop { r4 }
	bx lr
.globl sub_after_lsl_imm
sub_after_lsl_imm:
	push { r4 }
	sub r4, r0, r1, lsl #3
	mov r0, r4
	pop { r4 }
	bx lr
.globl sub_after_lsr
sub_after_lsr:
	push { r4 }
	sub r4, r0, r1, lsr r2
	mov r0, r4
	pop { r4 }
	bx lr
.globl sub_after_lsr_imm
sub_after_lsr_imm:
	push { r4 }
	sub r4, r0, r1, lsr #3
	mov r0, r4
	pop { r4 }
	bx lr
.globl sub_after_asr
sub_after_asr:
	push { r4 }
	sub r4, r0, r1, asr r2
	mov r0, r4
	pop { r4 }
	bx lr
.globl sub_after_asr_imm
sub_after_asr_imm:
	push { r4 }
	sub r4, r0, r1, asr #3
	mov r0, r4
	pop { r4 }
	bx lr
.globl and_after_lsl
and_after_lsl:
	push { r4 }
	and r4, r0, r1, lsl r2
	mov r0, r4
	pop { r4 }
	bx lr
.globl and_after_lsl_imm
and_after_lsl_imm:
	push { r4 }
	and r4, r0, r1, lsl #3
	mov r0, r4
	pop { r4 }
	bx lr
.globl and_after_lsr
and_after_lsr:
	push { r4 }
	and r4, r0, r1, lsr r2
	mov r0, r4
	pop { r4 }
	bx lr
.globl and_after_lsr_imm
and_after_lsr_imm:
	push { r4 }
	and r4, r0, r1, lsr #3
	mov r0, r4
	pop { r4 }
	bx lr
.globl and_after_asr
and_after_asr:
	push { r4 }
	and r4, r0, r1, asr r2
	mov r0, r4
	pop { r4 }
	bx lr
.globl and_after_asr_imm
and_after_asr_imm:
	push { r4 }
	and r4, r0, r1, asr #3
	mov r0, r4
	pop { r4 }
	bx lr
