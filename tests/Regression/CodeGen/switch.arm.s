.arch armv7ve
.data
.section .rodata
.align 8
__cmmc_jumptable10:
	.word	label7-__cmmc_jumptable10
	.word	label6-__cmmc_jumptable10
	.word	label5-__cmmc_jumptable10
	.word	label4-__cmmc_jumptable10
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test
test:
	cmp r1, #4
	bhs label2
	movw r2, #:lower16:__cmmc_jumptable10
	movt r2, #:upper16:__cmmc_jumptable10
	ldr r1, [r2, r1, lsl #2]
	add r1, r2, r1
	bx r1
label7:
	add r0, r0, #100
	b label2
label4:
	movw r1, #34079
	movt r1, #20971
	smmul r0, r0, r1
	asr r1, r0, #5
	add r0, r1, r0, lsr #31
label2:
	bx lr
label6:
	sub r0, r0, #100
	b label2
label5:
	mov r1, #100
	mul r0, r0, r1
	b label2
