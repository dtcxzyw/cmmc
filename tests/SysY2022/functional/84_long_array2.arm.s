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
	push { r4, r5, lr }
	sub sp, sp, #4
	mov r2, #0
	movw r0, #:lower16:c
	mov r1, #1
	movt r0, #:upper16:c
	str r1, [r0, #0]
	mov r4, r0
	mov r1, #2
	str r1, [r0, #4]
	mov r1, #3
	str r2, [r0, #8]
	str r2, [r0, #12]
	str r1, [r0, #16]
	mov r1, #4
	str r1, [r0, #20]
	add r1, r0, #24
	mov r0, r2
label2:
	add r2, r0, #4
	movw r3, #4090
	cmp r2, r3
	bge label5
	add r3, r1, r0, lsl #2
	mov r5, #0
	str r5, [r1, r0, lsl #2]
	mov r0, r2
	str r5, [r3, #4]
	str r5, [r3, #8]
	str r5, [r3, #12]
	b label2
label5:
	mov r2, #0
	str r2, [r1, r0, lsl #2]
	movw r2, #4090
	add r0, r0, #1
	cmp r0, r2
	bge label7
	b label5
label7:
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
	add sp, sp, #4
	ldr r0, [r4, #32]
	pop { r4, r5, pc }
