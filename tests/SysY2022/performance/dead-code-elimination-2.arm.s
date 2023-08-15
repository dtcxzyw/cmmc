.arch armv7ve
.data
.data
.align 4
global:
	.4byte	0
.bss
.align 8
cmmc_parallel_body_payload_0:
	.zero	4
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, lr }
	bl getint
	mov r4, r0
	movw r0, #34480
	movt r0, #1
	bl _sysy_starttime
	cmp r4, #0
	ble label13
	movw r0, #:lower16:cmmc_parallel_body_payload_0
	movt r0, #:upper16:cmmc_parallel_body_payload_0
	movw r2, #:lower16:cmmc_parallel_body_0
	movt r2, #:upper16:cmmc_parallel_body_0
	str r4, [r0, #0]
	mov r1, r4
	mov r0, #0
	bl cmmcParallelFor
	movw r1, #57345
	movt r1, #2047
	mov r0, r4
	bl cmmcAddRec3SRem
	mov r4, r0
label9:
	movw r0, #34496
	movt r0, #1
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	pop { r4, pc }
label13:
	mov r4, #0
	b label9
.p2align 4
cmmc_parallel_body_0:
	sub r0, r1, #1
	movw r1, #:lower16:global
	movt r1, #:upper16:global
	str r0, [r1, #0]
	bx lr
