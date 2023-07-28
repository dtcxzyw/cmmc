.arch armv7ve
.data
.bss
.align 4
a:
	.zero	16384
.align 4
c:
	.zero	16384
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, lr }
	movw r4, #:lower16:c
	mov r0, #1
	mov r1, #0
	movt r4, #:upper16:c
	str r0, [r4, #0]
	mov r0, #2
	str r0, [r4, #4]
	mov r0, #3
	str r1, [r4, #8]
	str r1, [r4, #12]
	str r0, [r4, #16]
	mov r0, #4
	str r0, [r4, #20]
	add r0, r4, #24
.p2align 4
label2:
	add r2, r0, r1, lsl #2
	mov r3, #0
	str r3, [r0, r1, lsl #2]
	str r3, [r2, #4]
	str r3, [r2, #8]
	str r3, [r2, #12]
	movw r3, #4090
	add r2, r1, #8
	cmp r2, r3
	add r1, r1, #4
	blt label2
	mov r2, #0
	str r2, [r0, r1, lsl #2]
	movw r2, #4090
	add r1, r1, #1
	cmp r1, r2
	bge label6
label4:
	mov r2, #0
	str r2, [r0, r1, lsl #2]
	movw r2, #4090
	add r1, r1, #1
	cmp r1, r2
	blt label4
label6:
	movw r1, #:lower16:a
	mov r0, #4000
	movt r1, #:upper16:a
	add r2, r1, #16000
	str r0, [r1, #20]
	mov r0, #3
	str r0, [r2, #0]
	movw r2, #16380
	add r1, r1, r2
	mov r2, #7
	str r2, [r1, #0]
	bl putint
	mov r0, #10
	bl putch
	ldr r0, [r4, #32]
	pop { r4, pc }
