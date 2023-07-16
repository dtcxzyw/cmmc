.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, lr }
	sub sp, sp, #240
	add r5, sp, #124
	str r5, [sp, #32]
	bl getint
	str r0, [sp, #40]
	cmp r0, #0
	ble label11
	mov r4, #0
	cmp r4, #5
	bge label10
label1508:
	mov r0, #20
	ldr r5, [sp, #32]
	mov r6, #0
	mla r5, r4, r0, r5
	b label7
label10:
	ldr r7, [sp, #124]
	add r0, r7, r7, lsl #2
	str r7, [sp, #12]
	ldr r5, [sp, #32]
	add r0, r0, r0, lsl #4
	ldr r6, [r5, #4]
	add r1, r6, r6, lsl #1
	str r6, [sp, #120]
	rsb r1, r6, r1, lsl #3
	ldr r6, [r5, #8]
	add r0, r0, r1
	str r6, [sp, #104]
	add r1, r6, r6, lsl #2
	add r1, r6, r1, lsl #3
	ldr r6, [r5, #12]
	lsl r1, r1, #1
	rsb r1, r1, #0
	add r0, r0, r1
	str r6, [sp, #16]
	rsb r1, r6, r6, lsl #3
	rsb r1, r6, r1, lsl #1
	sub r1, r6, r1, lsl #3
	ldr r6, [r5, #16]
	add r0, r0, r1
	str r6, [sp, #8]
	rsb r1, r6, r6, lsl #5
	sub r1, r6, r1, lsl #2
	ldr r6, [r5, #20]
	add r0, r0, r1
	str r6, [sp, #96]
	add r0, r0, r6, lsl #6
	ldr r6, [r5, #24]
	rsb r1, r6, r6, lsl #4
	str r6, [sp, #100]
	ldr r6, [r5, #28]
	lsl r1, r1, #3
	rsb r1, r1, #0
	add r0, r0, r1
	str r6, [sp, #116]
	add r1, r6, r6, lsl #2
	ldr r6, [r5, #32]
	add r1, r1, r1, lsl #2
	add r0, r0, r1, lsl #1
	str r6, [sp, #112]
	rsb r1, r6, r6, lsl #4
	ldr r7, [r5, #36]
	sub r1, r6, r1, lsl #2
	add r0, r0, r1
	str r7, [sp, #20]
	add r1, r7, r7, lsl #1
	rsb r1, r7, r1, lsl #4
	ldr r7, [r5, #40]
	add r0, r0, r1
	str r7, [sp, #64]
	rsb r1, r7, r7, lsl #3
	ldr r6, [r5, #44]
	sub r1, r7, r1, lsl #4
	add r0, r0, r1
	str r6, [sp, #92]
	add r1, r6, r6, lsl #4
	sub r6, r6, r1, lsl #2
	add r0, r0, r6
	str r6, [sp, #44]
	ldr r7, [r5, #48]
	add r1, r7, r7, lsl #1
	str r7, [sp, #4]
	add r1, r1, r1, lsl #3
	rsb r1, r7, r1, lsl #1
	ldr r7, [r5, #52]
	lsl r1, r1, #1
	rsb r1, r1, #0
	add r0, r0, r1
	str r7, [sp, #232]
	add r1, r7, r7, lsl #2
	ldr r7, [r5, #56]
	sub r1, r1, r1, lsl #4
	add r0, r0, r1
	str r7, [sp, #76]
	add r1, r7, r7, lsl #1
	ldr r7, [r5, #60]
	add r1, r1, r1, lsl #4
	lsl r1, r1, #1
	str r7, [sp, #228]
	rsb r1, r1, #0
	add r0, r0, r1
	add r1, r7, r7, lsl #4
	ldr r7, [r5, #64]
	add r0, r0, r1, lsl #1
	str r7, [sp, #108]
	add r1, r7, r7, lsl #2
	sub r1, r7, r1, lsl #3
	ldr r7, [r5, #68]
	add r0, r0, r1
	str r7, [sp, #224]
	add r1, r7, r7, lsl #6
	ldr r7, [r5, #72]
	add r0, r0, r1
	str r7, [sp, #84]
	add r1, r7, r7, lsl #1
	rsb r1, r7, r1, lsl #4
	ldr r7, [r5, #76]
	add r0, r0, r1
	str r7, [sp, #72]
	rsb r1, r7, r7, lsl #3
	add r1, r7, r1, lsl #4
	add r1, r0, r1
	ldr r0, [r5, #80]
	rsb r2, r0, r0, lsl #3
	rsb r2, r0, r2, lsl #3
	add r2, r1, r2, lsl #1
	ldr r1, [r5, #84]
	add r3, r1, r1, lsl #1
	rsb r3, r1, r3, lsl #4
	add r3, r2, r3
	ldr r2, [r5, #88]
	lsl r4, r2, #2
	rsb r4, r4, #0
	add r4, r3, r4
	ldr r3, [r5, #92]
	add r6, r3, r3, lsl #2
	add r6, r4, r6, lsl #4
	ldr r4, [r5, #96]
	add r5, r4, r4, lsl #1
	rsb r5, r4, r5, lsl #3
	add r5, r6, r5, lsl #1
	usat r5, #7, r5
	add r6, r5, r5, lsl #2
	rsb r5, r5, r6, lsl #3
	str r5, [sp, #56]
	ldr r7, [sp, #12]
	ldr r6, [sp, #120]
	add r5, r7, r7, lsl #1
	rsb r6, r6, r6, lsl #6
	add r5, r5, r5, lsl #3
	rsb r5, r7, r5, lsl #1
	lsl r5, r5, #1
	rsb r5, r5, #0
	add r5, r5, r6, lsl #1
	ldr r6, [sp, #104]
	add r6, r6, r6, lsl #3
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #16]
	sub r6, r6, r6, lsl #5
	add r5, r5, r6
	ldr r6, [sp, #8]
	lsl r6, r6, #3
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #96]
	add r7, r6, r6, lsl #1
	rsb r6, r6, r7, lsl #4
	add r5, r5, r6
	ldr r6, [sp, #100]
	lsl r6, r6, #2
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #116]
	add r7, r6, r6, lsl #4
	rsb r6, r6, r7, lsl #2
	add r5, r5, r6
	ldr r6, [sp, #112]
	add r7, r6, r6, lsl #1
	rsb r6, r6, r7, lsl #4
	ldr r7, [sp, #20]
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	rsb r6, r7, r7, lsl #4
	add r6, r7, r6, lsl #3
	ldr r7, [sp, #64]
	rsb r6, r6, #0
	add r5, r5, r6
	rsb r6, r7, r7, lsl #3
	add r5, r5, r6
	ldr r6, [sp, #92]
	ldr r7, [sp, #4]
	add r6, r6, r6, lsl #1
	sub r6, r6, r6, lsl #3
	add r5, r5, r6
	rsb r6, r7, r7, lsl #4
	ldr r7, [sp, #232]
	lsl r6, r6, #2
	rsb r6, r6, #0
	add r5, r5, r6
	add r6, r7, r7, lsl #1
	rsb r6, r7, r6, lsl #2
	sub r6, r7, r6, lsl #2
	ldr r7, [sp, #76]
	add r5, r5, r6
	rsb r6, r7, r7, lsl #3
	ldr r7, [sp, #228]
	rsb r6, r6, r6, lsl #4
	add r5, r5, r6
	add r6, r7, r7, lsl #1
	ldr r7, [sp, #108]
	rsb r6, r6, r6, lsl #3
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	rsb r6, r7, r7, lsl #4
	rsb r6, r7, r6, lsl #1
	ldr r7, [sp, #224]
	rsb r6, r6, r6, lsl #2
	add r5, r5, r6
	rsb r6, r7, r7, lsl #4
	rsb r6, r7, r6, lsl #1
	ldr r7, [sp, #84]
	add r5, r5, r6
	add r6, r7, r7, lsl #1
	add r6, r6, r6, lsl #3
	rsb r6, r7, r6, lsl #1
	ldr r7, [sp, #72]
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	sub r6, r7, r7, lsl #5
	add r5, r5, r6
	rsb r6, r0, r0, lsl #3
	rsb r6, r0, r6, lsl #3
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	add r6, r1, r1, lsl #2
	add r6, r6, r6, lsl #2
	lsl r6, r6, #2
	rsb r6, r6, #0
	add r5, r5, r6
	add r6, r2, r2, lsl #1
	rsb r6, r2, r6, lsl #2
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	add r6, r3, r3, lsl #2
	sub r6, r6, r6, lsl #4
	add r5, r5, r6
	rsb r6, r4, r4, lsl #6
	sub r6, r4, r6, lsl #1
	add r5, r5, r6
	usat r5, #7, r5
	add r6, r5, r5, lsl #1
	rsb r5, r5, r6, lsl #2
	rsb r6, r5, r5, lsl #3
	ldr r5, [sp, #56]
	ldr r7, [sp, #12]
	add r5, r5, r6
	rsb r6, r7, r7, lsl #3
	rsb r6, r7, r6, lsl #1
	lsl r7, r6, #1
	ldr r6, [sp, #120]
	add r8, r6, r6, lsl #2
	rsb r6, r6, r8, lsl #2
	add r7, r7, r6, lsl #2
	ldr r6, [sp, #104]
	add r6, r6, r6, lsl #2
	rsb r6, r6, r6, lsl #3
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r7, r7, r6
	str r6, [sp, #0]
	ldr r6, [sp, #16]
	rsb r8, r6, r6, lsl #4
	rsb r6, r6, r8, lsl #1
	add r7, r7, r6
	ldr r6, [sp, #8]
	add r8, r6, r6, lsl #1
	sub r6, r6, r8, lsl #5
	add r7, r7, r6
	ldr r6, [sp, #96]
	add r6, r6, r6, lsl #1
	add r7, r7, r6, lsl #5
	ldr r6, [sp, #100]
	rsb r8, r6, r6, lsl #3
	rsb r6, r6, r8, lsl #1
	add r7, r7, r6, lsl #2
	ldr r6, [sp, #116]
	add r6, r6, r6, lsl #4
	lsl r6, r6, #2
	rsb r6, r6, #0
	add r7, r7, r6
	ldr r6, [sp, #112]
	add r6, r6, r6, lsl #2
	rsb r6, r6, #0
	add r6, r7, r6
	ldr r7, [sp, #20]
	add r7, r7, r7, lsl #4
	add r6, r6, r7, lsl #1
	ldr r7, [sp, #64]
	add r7, r7, r7, lsl #4
	lsl r7, r7, #1
	rsb r7, r7, #0
	add r7, r6, r7
	ldr r6, [sp, #92]
	add r6, r6, r6, lsl #1
	add r6, r6, r6, lsl #4
	add r6, r7, r6, lsl #1
	ldr r7, [sp, #4]
	add r7, r7, r7, lsl #1
	add r6, r6, r7, lsl #1
	ldr r7, [sp, #232]
	add r8, r7, r7, lsl #2
	rsb r7, r7, r8, lsl #2
	lsl r7, r7, #1
	rsb r7, r7, #0
	add r6, r6, r7
	ldr r7, [sp, #76]
	add r7, r7, r7, lsl #1
	add r7, r7, r7, lsl #3
	add r6, r6, r7
	ldr r7, [sp, #228]
	rsb r8, r7, r7, lsl #3
	rsb r7, r7, r8, lsl #3
	add r6, r6, r7, lsl #1
	ldr r7, [sp, #108]
	rsb r8, r7, r7, lsl #4
	rsb r7, r7, r8, lsl #1
	add r6, r6, r7, lsl #2
	ldr r7, [sp, #224]
	add r8, r7, r7, lsl #2
	rsb r7, r7, r8, lsl #3
	add r6, r6, r7
	ldr r7, [sp, #84]
	sub r7, r7, r7, lsl #6
	add r6, r6, r7
	ldr r7, [sp, #72]
	add r7, r7, r7, lsl #1
	add r7, r7, r7, lsl #5
	rsb r7, r7, #0
	add r7, r6, r7
	add r6, r0, r0, lsl #6
	str r6, [sp, #24]
	add r6, r7, r6
	rsb r7, r1, r1, lsl #4
	add r6, r6, r7, lsl #3
	add r7, r2, r2, lsl #2
	sub r7, r2, r7, lsl #3
	add r6, r6, r7
	add r7, r3, r3, lsl #1
	lsl r7, r7, #1
	rsb r7, r7, #0
	add r6, r6, r7
	add r7, r4, r4, lsl #1
	rsb r7, r4, r7, lsl #4
	add r6, r6, r7, lsl #1
	usat r6, #7, r6
	rsb r6, r6, r6, lsl #7
	add r5, r5, r6
	str r5, [sp, #88]
	ldr r7, [sp, #12]
	ldr r6, [sp, #44]
	add r5, r7, r7, lsl #1
	sub r5, r7, r5, lsl #3
	add r5, r6, r5
	ldr r6, [sp, #120]
	sub r6, r6, r6, lsl #6
	add r5, r5, r6
	ldr r6, [sp, #104]
	rsb r6, r6, r6, lsl #3
	rsb r6, r6, r6, lsl #3
	add r5, r5, r6
	ldr r6, [sp, #16]
	add r6, r6, r6, lsl #2
	add r6, r6, r6, lsl #2
	add r5, r5, r6, lsl #1
	ldr r6, [sp, #8]
	add r6, r6, r6, lsl #3
	add r5, r5, r6, lsl #3
	ldr r6, [sp, #96]
	add r6, r6, r6, lsl #2
	add r6, r6, r6, lsl #4
	add r5, r5, r6
	ldr r6, [sp, #100]
	rsb r6, r6, r6, lsl #4
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #116]
	add r6, r6, r6, lsl #1
	add r5, r5, r6, lsl #2
	ldr r6, [sp, #112]
	rsb r7, r6, r6, lsl #6
	rsb r6, r6, r7, lsl #1
	ldr r7, [sp, #20]
	add r5, r5, r6
	rsb r8, r7, r7, lsl #3
	rsb r7, r7, r8, lsl #1
	add r7, r7, r7, lsl #3
	rsb r7, r7, #0
	add r5, r5, r7
	ldr r7, [sp, #64]
	add r7, r7, r7, lsl #6
	rsb r7, r7, #0
	add r5, r5, r7
	ldr r7, [sp, #4]
	rsb r8, r7, r7, lsl #6
	rsb r7, r7, r8, lsl #1
	add r5, r5, r7
	ldr r7, [sp, #232]
	rsb r8, r7, r7, lsl #3
	rsb r7, r7, r8, lsl #3
	add r5, r5, r7, lsl #1
	ldr r7, [sp, #76]
	sub r7, r7, r7, lsl #5
	add r5, r5, r7
	ldr r7, [sp, #228]
	rsb r8, r7, r7, lsl #5
	sub r7, r7, r8, lsl #2
	add r5, r5, r7
	ldr r7, [sp, #108]
	add r7, r7, r7, lsl #1
	rsb r8, r7, r7, lsl #3
	ldr r7, [sp, #108]
	rsb r7, r7, r8, lsl #2
	add r5, r5, r7
	ldr r7, [sp, #224]
	rsb r8, r7, r7, lsl #5
	rsb r7, r7, r8, lsl #1
	add r5, r5, r7, lsl #1
	ldr r7, [sp, #84]
	add r8, r7, r7, lsl #1
	rsb r7, r7, r8, lsl #2
	add r5, r5, r7
	ldr r7, [sp, #72]
	add r8, r7, r7, lsl #1
	sub r7, r7, r8, lsl #3
	add r5, r5, r7
	add r7, r0, r0, lsl #1
	sub r7, r0, r7, lsl #4
	add r5, r5, r7
	lsl r7, r1, #5
	rsb r7, r7, #0
	add r5, r5, r7
	rsb r7, r2, r2, lsl #3
	rsb r7, r2, r7, lsl #1
	add r7, r7, r7, lsl #3
	rsb r7, r7, #0
	add r5, r5, r7
	add r7, r3, r3, lsl #1
	rsb r7, r3, r7, lsl #5
	add r5, r5, r7
	rsb r7, r4, r4, lsl #4
	rsb r7, r4, r7, lsl #2
	add r5, r5, r7, lsl #1
	usat r5, #7, r5
	add r7, r5, r5, lsl #1
	add r7, r7, r7, lsl #3
	rsb r5, r5, r7, lsl #1
	lsl r5, r5, #1
	rsb r7, r5, #0
	ldr r5, [sp, #88]
	add r5, r5, r7
	ldr r7, [sp, #12]
	add r7, r6, r7, lsl #3
	ldr r6, [sp, #120]
	add r8, r6, r6, lsl #2
	add r8, r6, r8, lsl #3
	add r7, r7, r8, lsl #1
	str r8, [sp, #28]
	ldr r6, [sp, #104]
	rsb r8, r6, r6, lsl #3
	rsb r6, r6, r8, lsl #1
	lsl r6, r6, #3
	rsb r6, r6, #0
	add r7, r7, r6
	ldr r6, [sp, #16]
	add r6, r6, r6, lsl #1
	add r8, r6, r6, lsl #4
	ldr r6, [sp, #16]
	rsb r6, r6, r8, lsl #1
	add r7, r7, r6
	ldr r6, [sp, #8]
	rsb r8, r6, r6, lsl #4
	rsb r6, r6, r8, lsl #1
	lsl r6, r6, #2
	rsb r6, r6, #0
	add r7, r7, r6
	ldr r6, [sp, #96]
	sub r6, r6, r6, lsl #6
	add r7, r7, r6
	ldr r6, [sp, #100]
	lsl r6, r6, #4
	rsb r6, r6, #0
	add r7, r7, r6
	ldr r6, [sp, #116]
	add r6, r6, r6, lsl #2
	rsb r6, r6, r6, lsl #3
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r6, r7, r6
	ldr r7, [sp, #20]
	add r7, r7, r7, lsl #2
	rsb r7, r7, r7, lsl #4
	add r6, r6, r7
	ldr r7, [sp, #64]
	add r7, r7, r7, lsl #5
	add r7, r6, r7, lsl #1
	ldr r6, [sp, #92]
	add r6, r6, r6, lsl #1
	lsl r6, r6, #5
	rsb r6, r6, #0
	add r6, r7, r6
	ldr r7, [sp, #4]
	add r7, r7, r7, lsl #1
	add r8, r7, r7, lsl #4
	ldr r7, [sp, #4]
	sub r7, r7, r8, lsl #1
	add r6, r6, r7
	ldr r7, [sp, #232]
	rsb r8, r7, r7, lsl #3
	add r7, r7, r8, lsl #3
	lsl r7, r7, #1
	rsb r7, r7, #0
	add r6, r6, r7
	ldr r7, [sp, #76]
	rsb r8, r7, r7, lsl #4
	rsb r7, r7, r8, lsl #2
	add r6, r6, r7
	ldr r7, [sp, #228]
	add r7, r7, r7, lsl #1
	add r6, r6, r7, lsl #2
	ldr r7, [sp, #108]
	add r7, r7, r7, lsl #2
	add r6, r6, r7
	ldr r7, [sp, #224]
	add r8, r7, r7, lsl #1
	sub r7, r7, r8, lsl #5
	add r6, r6, r7
	ldr r7, [sp, #84]
	rsb r8, r7, r7, lsl #4
	rsb r7, r7, r8, lsl #1
	add r6, r6, r7, lsl #2
	ldr r7, [sp, #72]
	add r7, r7, r7, lsl #1
	sub r7, r7, r7, lsl #5
	add r6, r6, r7
	rsb r7, r0, r0, lsl #4
	add r6, r6, r7
	add r7, r1, r1, lsl #2
	rsb r7, r1, r7, lsl #4
	add r6, r6, r7
	add r7, r2, r2, lsl #1
	add r6, r6, r7
	rsb r7, r3, r3, lsl #3
	rsb r7, r7, r7, lsl #3
	add r6, r6, r7
	rsb r7, r4, r4, lsl #5
	lsl r7, r7, #2
	rsb r7, r7, #0
	add r6, r6, r7
	usat r6, #7, r6
	add r6, r6, r6, lsl #1
	rsb r6, r6, #0
	add r5, r5, r6
	str r5, [sp, #60]
	ldr r7, [sp, #12]
	ldr r6, [sp, #120]
	add r5, r7, r7, lsl #3
	add r6, r6, r6, lsl #4
	add r5, r5, r5, lsl #3
	add r5, r5, r6, lsl #2
	ldr r6, [sp, #104]
	add r6, r6, r6, lsl #1
	add r6, r6, r6, lsl #4
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #16]
	add r7, r6, r6, lsl #3
	add r6, r6, r7, lsl #2
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #8]
	rsb r7, r6, r6, lsl #4
	add r6, r6, r7, lsl #3
	add r5, r5, r6
	ldr r6, [sp, #96]
	sub r7, r6, r6, lsl #4
	add r5, r5, r7
	str r7, [sp, #36]
	ldr r6, [sp, #100]
	rsb r7, r6, r6, lsl #3
	rsb r6, r6, r7, lsl #3
	add r5, r5, r6
	ldr r6, [sp, #116]
	add r6, r6, r6, lsl #1
	add r7, r6, r6, lsl #4
	ldr r6, [sp, #116]
	rsb r6, r6, r7, lsl #1
	add r5, r5, r6
	ldr r6, [sp, #112]
	rsb r7, r6, r6, lsl #3
	sub r6, r6, r7, lsl #1
	ldr r7, [sp, #20]
	add r5, r5, r6
	rsb r6, r7, r7, lsl #5
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	str r6, [sp, #48]
	ldr r7, [sp, #64]
	ldr r6, [sp, #92]
	add r5, r5, r7, lsl #6
	rsb r7, r6, r6, lsl #3
	add r6, r6, r7, lsl #3
	ldr r7, [sp, #4]
	add r5, r5, r6, lsl #1
	add r6, r7, r7, lsl #2
	rsb r6, r7, r6, lsl #2
	ldr r7, [sp, #232]
	add r5, r5, r6, lsl #1
	add r6, r7, r7, lsl #1
	ldr r7, [sp, #76]
	sub r6, r6, r6, lsl #3
	add r5, r5, r6
	rsb r6, r7, r7, lsl #3
	ldr r7, [sp, #228]
	add r5, r5, r6, lsl #4
	rsb r6, r7, r7, lsl #3
	add r6, r7, r6, lsl #3
	ldr r7, [sp, #108]
	add r5, r5, r6, lsl #1
	rsb r6, r7, r7, lsl #3
	ldr r7, [sp, #224]
	add r5, r5, r6, lsl #4
	add r6, r7, r7, lsl #2
	ldr r7, [sp, #84]
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	lsl r6, r7, #4
	ldr r7, [sp, #72]
	rsb r6, r6, #0
	add r5, r5, r6
	add r6, r7, r7, lsl #2
	add r6, r6, r6, lsl #2
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	rsb r6, r0, r0, lsl #3
	lsl r6, r6, #4
	rsb r6, r6, #0
	add r5, r5, r6
	rsb r6, r1, r1, lsl #4
	rsb r6, r1, r6, lsl #1
	lsl r6, r6, #2
	rsb r6, r6, #0
	add r5, r5, r6
	add r6, r2, r2, lsl #1
	add r6, r6, r6, lsl #3
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	add r6, r3, r3, lsl #2
	add r6, r3, r6, lsl #3
	add r5, r5, r6, lsl #1
	add r6, r4, r4, lsl #3
	lsl r6, r6, #3
	rsb r6, r6, #0
	add r5, r5, r6
	usat r6, #7, r5
	ldr r5, [sp, #60]
	ldr r7, [sp, #12]
	add r5, r5, r6, lsl #5
	rsb r7, r7, r7, lsl #4
	ldr r6, [sp, #120]
	add r8, r6, r6, lsl #1
	rsb r6, r6, r8, lsl #2
	sub r6, r6, r6, lsl #3
	add r7, r7, r6
	ldr r6, [sp, #104]
	add r6, r6, r6, lsl #5
	add r7, r7, r6, lsl #1
	ldr r6, [sp, #16]
	add r6, r6, r6, lsl #1
	rsb r6, r6, r6, lsl #4
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r7, r7, r6
	ldr r6, [sp, #8]
	add r6, r6, r6, lsl #1
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r7, r7, r6
	ldr r6, [sp, #96]
	rsb r6, r6, r6, lsl #4
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r7, r7, r6
	ldr r6, [sp, #100]
	lsl r6, r6, #3
	rsb r6, r6, #0
	add r7, r7, r6
	ldr r6, [sp, #116]
	add r6, r6, r6, lsl #3
	add r6, r6, r6, lsl #3
	add r7, r7, r6
	ldr r6, [sp, #112]
	add r6, r7, r6, lsl #1
	ldr r7, [sp, #20]
	rsb r8, r7, r7, lsl #3
	rsb r7, r7, r8, lsl #3
	lsl r7, r7, #1
	rsb r7, r7, #0
	add r6, r6, r7
	ldr r7, [sp, #64]
	add r8, r7, r7, lsl #1
	sub r7, r7, r8, lsl #5
	add r7, r6, r7
	ldr r6, [sp, #92]
	rsb r8, r6, r6, lsl #4
	rsb r6, r6, r8, lsl #2
	add r6, r7, r6
	ldr r7, [sp, #4]
	rsb r8, r7, r7, lsl #3
	rsb r7, r7, r8, lsl #1
	add r6, r6, r7, lsl #2
	ldr r7, [sp, #232]
	rsb r7, r7, r7, lsl #4
	add r6, r6, r7
	ldr r7, [sp, #76]
	rsb r8, r7, r7, lsl #3
	rsb r7, r7, r8, lsl #3
	add r6, r6, r7
	ldr r7, [sp, #228]
	add r7, r7, r7, lsl #5
	rsb r7, r7, #0
	add r6, r6, r7
	ldr r7, [sp, #108]
	rsb r7, r7, r7, lsl #3
	add r6, r6, r7, lsl #1
	ldr r7, [sp, #224]
	rsb r8, r7, r7, lsl #4
	rsb r7, r7, r8, lsl #1
	add r6, r6, r7, lsl #1
	ldr r7, [sp, #84]
	add r8, r7, r7, lsl #4
	rsb r7, r7, r8, lsl #2
	add r6, r6, r7
	ldr r7, [sp, #72]
	add r8, r7, r7, lsl #1
	rsb r8, r7, r8, lsl #2
	rsb r7, r7, r8, lsl #2
	add r6, r6, r7, lsl #1
	add r7, r0, r0, lsl #2
	sub r7, r0, r7, lsl #4
	add r6, r6, r7
	add r7, r1, r1, lsl #1
	add r6, r6, r7, lsl #4
	rsb r7, r2, r2, lsl #3
	sub r7, r2, r7, lsl #1
	add r6, r6, r7
	sub r7, r3, r3, lsl #4
	add r6, r6, r7
	add r7, r4, r4, lsl #5
	add r6, r6, r7, lsl #1
	usat r6, #7, r6
	add r7, r6, r6, lsl #1
	sub r6, r6, r7, lsl #5
	add r5, r5, r6
	ldr r6, [sp, #24]
	ldr r8, [sp, #28]
	ldr r7, [sp, #12]
	add r6, r6, r8, lsl #1
	add r7, r7, r7, lsl #5
	add r7, r6, r7
	ldr r6, [sp, #104]
	add r8, r6, r6, lsl #4
	rsb r6, r6, r8, lsl #2
	add r7, r7, r6
	ldr r6, [sp, #16]
	rsb r6, r6, r6, lsl #4
	add r7, r7, r6, lsl #1
	ldr r6, [sp, #8]
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r7, r7, r6
	ldr r6, [sp, #96]
	add r6, r6, r6, lsl #6
	add r7, r7, r6
	ldr r6, [sp, #100]
	rsb r6, r6, r6, lsl #4
	add r7, r7, r6, lsl #3
	ldr r6, [sp, #116]
	rsb r8, r6, r6, lsl #3
	sub r6, r6, r8, lsl #1
	add r7, r7, r6
	ldr r6, [sp, #112]
	add r6, r6, r6, lsl #3
	add r6, r7, r6, lsl #1
	ldr r7, [sp, #20]
	add r7, r7, r7, lsl #2
	add r6, r6, r7
	ldr r7, [sp, #64]
	rsb r8, r7, r7, lsl #3
	rsb r7, r7, r8, lsl #1
	add r7, r6, r7, lsl #3
	ldr r6, [sp, #92]
	rsb r6, r6, r6, lsl #3
	add r6, r6, r6, lsl #4
	rsb r6, r6, #0
	add r6, r7, r6
	ldr r7, [sp, #4]
	sub r7, r7, r7, lsl #3
	add r6, r6, r7
	str r7, [sp, #52]
	ldr r7, [sp, #232]
	add r8, r7, r7, lsl #3
	rsb r7, r7, r8, lsl #3
	add r6, r6, r7
	ldr r7, [sp, #76]
	add r7, r7, r7, lsl #1
	add r8, r7, r7, lsl #3
	ldr r7, [sp, #76]
	rsb r7, r7, r8, lsl #2
	add r6, r6, r7
	ldr r7, [sp, #228]
	add r7, r7, r7, lsl #1
	add r6, r6, r7, lsl #3
	ldr r7, [sp, #108]
	add r8, r7, r7, lsl #2
	add r7, r7, r8, lsl #3
	add r6, r6, r7, lsl #1
	ldr r7, [sp, #224]
	add r7, r7, r7, lsl #1
	lsl r7, r7, #5
	rsb r7, r7, #0
	add r6, r6, r7
	ldr r7, [sp, #84]
	rsb r8, r7, r7, lsl #3
	rsb r7, r7, r8, lsl #1
	lsl r7, r7, #3
	rsb r7, r7, #0
	add r6, r6, r7
	ldr r7, [sp, #72]
	rsb r8, r7, r7, lsl #4
	add r7, r7, r8, lsl #3
	rsb r7, r7, #0
	add r6, r6, r7
	add r7, r1, r1, lsl #1
	add r7, r1, r7, lsl #5
	add r6, r6, r7
	add r7, r2, r2, lsl #1
	rsb r7, r7, r7, lsl #3
	rsb r7, r2, r7, lsl #2
	add r6, r6, r7
	add r7, r3, r3, lsl #1
	rsb r7, r3, r7, lsl #3
	add r6, r6, r7, lsl #1
	add r7, r4, r4, lsl #1
	rsb r7, r7, r7, lsl #3
	lsl r7, r7, #2
	rsb r7, r7, #0
	add r6, r6, r7
	usat r6, #7, r6
	add r6, r6, r6, lsl #2
	add r6, r6, r6, lsl #2
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	str r5, [sp, #80]
	ldr r6, [sp, #0]
	ldr r7, [sp, #36]
	add r5, r6, r7
	ldr r6, [sp, #48]
	ldr r7, [sp, #12]
	add r5, r6, r5
	rsb r6, r7, r7, lsl #4
	sub r6, r7, r6, lsl #1
	add r5, r5, r6
	ldr r6, [sp, #120]
	rsb r6, r6, r6, lsl #3
	add r5, r5, r6
	ldr r6, [sp, #16]
	add r7, r6, r6, lsl #2
	rsb r6, r6, r7, lsl #2
	add r5, r5, r6, lsl #1
	ldr r6, [sp, #8]
	add r6, r6, r6, lsl #1
	rsb r6, r6, r6, lsl #4
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #100]
	lsl r6, r6, #5
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #116]
	add r7, r6, r6, lsl #3
	add r6, r6, r7, lsl #2
	add r5, r5, r6
	ldr r6, [sp, #112]
	ldr r7, [sp, #64]
	add r6, r6, r6, lsl #3
	add r5, r5, r6, lsl #2
	rsb r6, r7, r7, lsl #6
	sub r6, r7, r6, lsl #1
	add r5, r5, r6
	ldr r6, [sp, #92]
	add r7, r6, r6, lsl #1
	rsb r6, r6, r7, lsl #3
	ldr r7, [sp, #4]
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	add r6, r7, r7, lsl #2
	ldr r7, [sp, #232]
	rsb r6, r6, r6, lsl #3
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	add r6, r7, r7, lsl #3
	add r6, r7, r6, lsl #2
	ldr r7, [sp, #76]
	add r5, r5, r6
	add r6, r7, r7, lsl #3
	add r6, r7, r6, lsl #3
	ldr r7, [sp, #228]
	rsb r6, r6, #0
	add r5, r5, r6
	add r6, r7, r7, lsl #4
	ldr r7, [sp, #108]
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	rsb r6, r7, r7, lsl #4
	rsb r6, r7, r6, lsl #1
	ldr r7, [sp, #224]
	sub r6, r6, r6, lsl #2
	add r5, r5, r6
	add r6, r7, r7, lsl #2
	ldr r7, [sp, #84]
	sub r6, r6, r6, lsl #4
	add r5, r5, r6
	add r6, r7, r7, lsl #3
	rsb r6, r7, r6, lsl #3
	ldr r7, [sp, #72]
	add r5, r5, r6
	add r6, r7, r7, lsl #1
	rsb r6, r7, r6, lsl #2
	sub r6, r6, r6, lsl #3
	add r5, r5, r6
	add r6, r0, r0, lsl #1
	add r6, r6, r6, lsl #3
	rsb r6, r0, r6, lsl #1
	add r5, r5, r6
	add r6, r1, r1, lsl #3
	add r6, r1, r6, lsl #2
	add r5, r5, r6
	rsb r6, r2, r2, lsl #3
	rsb r6, r2, r6, lsl #1
	sub r6, r2, r6, lsl #3
	add r5, r5, r6
	rsb r6, r3, r3, lsl #3
	sub r6, r3, r6, lsl #1
	add r5, r5, r6
	rsb r6, r4, r4, lsl #3
	add r6, r4, r6, lsl #3
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	usat r5, #7, r5
	add r6, r5, r5, lsl #1
	sub r6, r5, r6, lsl #3
	ldr r5, [sp, #80]
	add r5, r5, r6
	str r5, [sp, #68]
	ldr r7, [sp, #12]
	add r5, r7, r7, lsl #4
	rsb r5, r7, r5, lsl #2
	ldr r7, [sp, #52]
	ldr r6, [sp, #120]
	add r5, r7, r5
	add r6, r6, r6, lsl #1
	rsb r6, r6, r6, lsl #3
	add r5, r5, r6, lsl #1
	ldr r6, [sp, #104]
	add r7, r6, r6, lsl #2
	add r6, r6, r7, lsl #3
	add r5, r5, r6
	ldr r6, [sp, #16]
	rsb r7, r6, r6, lsl #5
	sub r6, r6, r7, lsl #2
	add r5, r5, r6
	ldr r6, [sp, #8]
	add r7, r6, r6, lsl #1
	rsb r6, r6, r7, lsl #3
	lsl r6, r6, #2
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #96]
	add r6, r6, r6, lsl #2
	add r5, r5, r6, lsl #1
	ldr r6, [sp, #100]
	add r7, r6, r6, lsl #1
	rsb r6, r6, r7, lsl #2
	sub r6, r6, r6, lsl #3
	add r5, r5, r6
	ldr r6, [sp, #116]
	add r6, r6, r6, lsl #2
	rsb r6, r6, r6, lsl #4
	add r5, r5, r6
	ldr r6, [sp, #112]
	ldr r7, [sp, #20]
	add r6, r6, r6, lsl #1
	add r5, r5, r6, lsl #5
	add r6, r7, r7, lsl #1
	ldr r7, [sp, #64]
	add r6, r6, r6, lsl #4
	rsb r6, r6, #0
	add r5, r5, r6
	rsb r6, r7, r7, lsl #3
	rsb r6, r7, r6, lsl #3
	rsb r6, r7, r6, lsl #1
	add r5, r5, r6
	ldr r6, [sp, #92]
	add r7, r6, r6, lsl #3
	add r6, r6, r7, lsl #2
	ldr r7, [sp, #232]
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	rsb r6, r7, r7, lsl #5
	rsb r6, r7, r6, lsl #1
	ldr r7, [sp, #76]
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	add r6, r7, r7, lsl #4
	rsb r6, r7, r6, lsl #2
	ldr r7, [sp, #228]
	add r5, r5, r6
	add r6, r7, r7, lsl #1
	rsb r6, r7, r6, lsl #4
	ldr r7, [sp, #108]
	add r5, r5, r6
	add r6, r7, r7, lsl #1
	rsb r6, r7, r6, lsl #2
	ldr r7, [sp, #224]
	add r5, r5, r6, lsl #1
	add r6, r7, r7, lsl #4
	ldr r7, [sp, #84]
	lsl r6, r6, #2
	rsb r6, r6, #0
	add r5, r5, r6
	add r6, r7, r7, lsl #2
	rsb r6, r7, r6, lsl #2
	ldr r7, [sp, #72]
	add r5, r5, r6, lsl #1
	rsb r6, r7, r7, lsl #4
	rsb r6, r7, r6, lsl #1
	add r5, r5, r6
	add r6, r0, r0, lsl #1
	rsb r0, r0, r6, lsl #3
	add r0, r0, r0, lsl #2
	add r0, r5, r0
	rsb r5, r1, r1, lsl #4
	add r1, r1, r5, lsl #3
	ldr r5, [sp, #68]
	rsb r1, r1, #0
	add r0, r0, r1
	add r1, r2, r2, lsl #3
	add r0, r0, r1, lsl #2
	rsb r1, r3, r3, lsl #3
	sub r1, r1, r1, lsl #3
	add r0, r0, r1
	add r1, r4, r4, lsl #2
	add r1, r1, r1, lsl #4
	add r0, r0, r1
	usat r0, #7, r0
	add r1, r0, r0, lsl #1
	rsb r0, r0, r1, lsl #3
	add r4, r5, r0, lsl #1
	mov r0, #0
	cmp r4, #0
	movwgt r0, #1
	rsb r0, r0, #100
	bl putch
	cmp r4, #0
	mov r0, #111
	mov r1, #97
	movgt r0, r1
	bl putch
	mov r0, #103
	cmp r4, #0
	mov r1, #116
	movgt r0, r1
	bl putch
	mov r0, #10
	bl putch
	ldr r0, [sp, #40]
	subs r0, r0, #1
	str r0, [sp, #40]
	ble label11
	mov r4, #0
	cmp r4, #5
	bge label10
	b label1508
label7:
	bl getint
	str r0, [r5, r6, lsl #2]
	add r6, r6, #1
	cmp r6, #5
	bge label9
	b label7
label9:
	add r4, r4, #1
	cmp r4, #5
	bge label10
	b label1508
label11:
	mov r0, #0
	add sp, sp, #240
	pop { r4, r5, r6, r7, r8, pc }
