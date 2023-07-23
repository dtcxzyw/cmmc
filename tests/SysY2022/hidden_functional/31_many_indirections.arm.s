.arch armv7ve
.data
.bss
.align 4
array:
	.zero	8000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, lr }
	mov r2, #0
	movw r1, #:lower16:array
	sub sp, sp, #4
	movt r1, #:upper16:array
	cmp r2, #20
	blt label4
label8:
	movw r0, #7692
	movw r2, #7200
	add r0, r1, r0
	add r2, r1, r2
	ldr r0, [r0, #0]
	ldr r0, [r2, r0, lsl #2]
	movw r2, #6800
	add r2, r1, r2
	ldr r0, [r2, r0, lsl #2]
	add r2, r1, #6400
	ldr r0, [r2, r0, lsl #2]
	movw r2, #6000
	add r2, r1, r2
	ldr r0, [r2, r0, lsl #2]
	movw r2, #5600
	add r2, r1, r2
	ldr r0, [r2, r0, lsl #2]
	movw r2, #5200
	add r2, r1, r2
	ldr r0, [r2, r0, lsl #2]
	add r2, r1, #4800
	ldr r0, [r2, r0, lsl #2]
	movw r2, #4400
	add r2, r1, r2
	ldr r0, [r2, r0, lsl #2]
	add r2, r1, #4000
	ldr r0, [r2, r0, lsl #2]
	add r2, r1, #3600
	ldr r0, [r2, r0, lsl #2]
	add r2, r1, #3200
	ldr r0, [r2, r0, lsl #2]
	add r2, r1, #2800
	ldr r0, [r2, r0, lsl #2]
	add r2, r1, #2400
	ldr r0, [r2, r0, lsl #2]
	add r2, r1, #2000
	ldr r0, [r2, r0, lsl #2]
	add r2, r1, #1600
	ldr r0, [r2, r0, lsl #2]
	add r2, r1, #1200
	ldr r0, [r2, r0, lsl #2]
	add r2, r1, #800
	ldr r0, [r2, r0, lsl #2]
	add r2, r1, #400
	ldr r0, [r2, r0, lsl #2]
	movw r2, #7672
	add r2, r1, r2
	ldr r0, [r1, r0, lsl #2]
	ldr r3, [r2, #0]
	mov r2, #400
	mla r3, r3, r2, r1
	ldr r3, [r3, #68]
	mla r3, r3, r2, r1
	ldr r3, [r3, #64]
	mla r3, r3, r2, r1
	ldr r3, [r3, #60]
	mla r3, r3, r2, r1
	ldr r3, [r3, #56]
	mla r3, r3, r2, r1
	ldr r3, [r3, #52]
	mla r3, r3, r2, r1
	ldr r3, [r3, #48]
	mla r3, r3, r2, r1
	ldr r3, [r3, #44]
	mla r3, r3, r2, r1
	ldr r3, [r3, #40]
	mla r3, r3, r2, r1
	ldr r3, [r3, #36]
	mla r3, r3, r2, r1
	ldr r3, [r3, #32]
	mla r3, r3, r2, r1
	ldr r3, [r3, #28]
	mla r3, r3, r2, r1
	ldr r3, [r3, #24]
	mla r3, r3, r2, r1
	ldr r3, [r3, #20]
	mla r3, r3, r2, r1
	ldr r3, [r3, #16]
	mla r3, r3, r2, r1
	ldr r3, [r3, #12]
	mla r3, r3, r2, r1
	ldr r3, [r3, #8]
	mla r3, r3, r2, r1
	ldr r3, [r3, #4]
	mul r3, r3, r2
	ldr r3, [r1, r3]
	mla r1, r3, r2, r1
	ldr r1, [r1, #224]
	add r0, r0, r1
	bl putint
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, pc }
label4:
	mov r0, #400
	mla r3, r2, r0, r1
	mov r0, #0
label5:
	add r4, r3, r0, lsl #2
	str r0, [r3, r0, lsl #2]
	add r5, r0, #1
	str r5, [r4, #4]
	add r5, r0, #2
	str r5, [r4, #8]
	add r5, r0, #3
	str r5, [r4, #12]
	add r5, r0, #4
	str r5, [r4, #16]
	add r5, r0, #5
	str r5, [r4, #20]
	add r5, r0, #6
	str r5, [r4, #24]
	add r5, r0, #7
	str r5, [r4, #28]
	add r5, r0, #8
	str r5, [r4, #32]
	add r5, r0, #9
	str r5, [r4, #36]
	add r5, r0, #10
	str r5, [r4, #40]
	add r5, r0, #11
	str r5, [r4, #44]
	add r5, r0, #12
	str r5, [r4, #48]
	add r5, r0, #13
	str r5, [r4, #52]
	add r5, r0, #14
	str r5, [r4, #56]
	add r5, r0, #15
	str r5, [r4, #60]
	add r4, r0, #16
	cmp r4, #96
	blt label52
	add r5, r3, r4, lsl #2
	str r4, [r3, r4, lsl #2]
	add r2, r2, #1
	add r3, r0, #17
	str r3, [r5, #4]
	add r3, r0, #18
	add r0, r0, #19
	str r3, [r5, #8]
	str r0, [r5, #12]
	cmp r2, #20
	blt label4
	b label8
label52:
	mov r0, r4
	b label5
