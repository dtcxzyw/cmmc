.arch armv7ve
.data
.bss
.align 8
graph:
	.zero	3600
.align 8
edges:
	.zero	4800
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
maxCliques:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	mov r3, r0
	mov r4, r1
	mov r7, #1
	str r2, [sp, #0]
	add r5, r0, #2
	mov r8, #0
	str r0, [sp, #12]
	movw r6, #:lower16:graph
	movt r6, #:upper16:graph
	add r0, r1, r0, lsl #2
	add r1, r3, #1
	str r0, [sp, #8]
	str r1, [sp, #4]
	ldr r0, [r2, #0]
	cmp r7, r0
	bgt label5
.p2align 4
label6:
	ldr r3, [sp, #12]
	mov r0, #1
	str r7, [r4, r3, lsl #2]
.p2align 4
label7:
	ldr r1, [sp, #4]
	cmp r1, r0
	ble label52
	add r2, r0, #1
	mov r3, r2
	cmp r1, r2
	ble label57
.p2align 4
label12:
	ldr r1, [r4, r0, lsl #2]
	ldr r9, [r4, r3, lsl #2]
	rsb r1, r1, r1, lsl #4
	add r1, r6, r1, lsl #3
	ldr r1, [r1, r9, lsl #2]
	cmp r1, #0
	beq label73
	add r3, r3, #1
	ldr r1, [sp, #4]
	cmp r1, r3
	bgt label12
	b label57
.p2align 4
label19:
	ldr r3, [sp, #12]
	mov r0, r3
	cmp r3, r8
	movle r0, r8
	mov r8, r10
	cmp r10, r0
	movle r8, r0
	add r7, r7, #1
	ldr r2, [sp, #0]
	ldr r0, [r2, #0]
	cmp r7, r0
	ble label6
	b label5
.p2align 4
label73:
	mov r0, #0
	cmp r0, #0
	bne label78
	add r7, r7, #1
	ldr r2, [sp, #0]
	ldr r0, [r2, #0]
	cmp r7, r0
	ble label6
	b label5
.p2align 4
label78:
	mov r10, #0
	mov r9, #1
	ldr r2, [sp, #0]
	ldr r0, [r2, #0]
	cmp r9, r0
	bgt label19
.p2align 4
label20:
	ldr r0, [sp, #8]
	str r9, [r0, #4]
	mov r0, #1
	cmp r5, r0
	bgt label28
.p2align 4
label89:
	mov r0, #1
	cmp r0, #0
	beq label93
.p2align 4
label25:
	ldr r2, [sp, #0]
	mov r0, r5
	mov r1, r4
	bl maxCliques
	ldr r1, [sp, #4]
	cmp r1, r10
	movle r1, r10
	mov r10, r0
	cmp r0, r1
	movle r10, r1
	add r9, r9, #1
	ldr r2, [sp, #0]
	ldr r0, [r2, #0]
	cmp r9, r0
	ble label20
	b label19
.p2align 4
label28:
	add r1, r0, #1
	mov r2, r1
	cmp r5, r1
	bgt label31
	mov r0, r1
	b label89
.p2align 4
label31:
	ldr r3, [r4, r0, lsl #2]
	ldr r11, [r4, r2, lsl #2]
	rsb r3, r3, r3, lsl #4
	add r3, r6, r3, lsl #3
	ldr r3, [r3, r11, lsl #2]
	cmp r3, #0
	bne label117
	mov r0, #0
	cmp r0, #0
	bne label25
	add r9, r9, #1
	ldr r2, [sp, #0]
	ldr r0, [r2, #0]
	cmp r9, r0
	ble label20
	b label19
.p2align 4
label117:
	add r2, r2, #1
	cmp r5, r2
	bgt label31
	mov r0, r1
	cmp r5, r1
	bgt label28
	b label89
label52:
	mov r0, #1
	cmp r0, #0
	bne label78
	add r7, r7, #1
	ldr r2, [sp, #0]
	ldr r0, [r2, #0]
	cmp r7, r0
	ble label6
	b label5
label57:
	mov r0, r2
	b label7
label5:
	mov r0, r8
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label93:
	add r9, r9, #1
	ldr r2, [sp, #0]
	ldr r0, [r2, #0]
	cmp r9, r0
	ble label20
	b label19
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r0, #0
	sub sp, sp, #132
	str r0, [sp, #0]
	mov r5, sp
	add r4, sp, #120
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #12]
	str r0, [sp, #16]
	str r0, [sp, #20]
	str r0, [sp, #24]
	str r0, [sp, #28]
	str r0, [sp, #32]
	str r0, [sp, #36]
	str r0, [sp, #40]
	str r0, [sp, #44]
	str r0, [sp, #48]
	str r0, [sp, #52]
	str r0, [sp, #56]
	str r0, [sp, #60]
	str r0, [sp, #64]
	str r0, [sp, #68]
	str r0, [sp, #72]
	str r0, [sp, #76]
	str r0, [sp, #80]
	str r0, [sp, #84]
	str r0, [sp, #88]
	str r0, [sp, #92]
	str r0, [sp, #96]
	str r0, [sp, #100]
	str r0, [sp, #104]
	str r0, [sp, #108]
	str r0, [sp, #112]
	str r0, [sp, #116]
	bl getint
	str r0, [sp, #120]
	bl getint
	cmp r0, #0
	movw r8, #:lower16:edges
	movt r8, #:upper16:edges
	movw r7, #:lower16:graph
	movt r7, #:upper16:graph
	mov r6, r0
	ble label173
	mov r0, #0
	mov r9, r0
.p2align 4
label165:
	bl getint
	add r10, r8, r9, lsl #3
	str r0, [r10, #0]
	bl getint
	add r9, r9, #1
	str r0, [r10, #4]
	cmp r6, r9
	bgt label165
	cmp r6, #4
	ble label228
	sub r1, r6, #4
	mov r0, #0
.p2align 4
label169:
	add r2, r8, r0, lsl #3
	add r0, r0, #4
	ldr r9, [r2, #0]
	cmp r1, r0
	ldr r10, [r2, #4]
	rsb r3, r9, r9, lsl #4
	add r11, r7, r3, lsl #3
	mov r3, #1
	str r3, [r11, r10, lsl #2]
	rsb r10, r10, r10, lsl #4
	add r10, r7, r10, lsl #3
	str r3, [r10, r9, lsl #2]
	ldr r9, [r2, #8]
	rsb r10, r9, r9, lsl #4
	add r11, r7, r10, lsl #3
	ldr r10, [r2, #12]
	str r3, [r11, r10, lsl #2]
	rsb r10, r10, r10, lsl #4
	add r10, r7, r10, lsl #3
	str r3, [r10, r9, lsl #2]
	ldr r9, [r2, #16]
	rsb r10, r9, r9, lsl #4
	add r11, r7, r10, lsl #3
	ldr r10, [r2, #20]
	str r3, [r11, r10, lsl #2]
	rsb r10, r10, r10, lsl #4
	add r10, r7, r10, lsl #3
	str r3, [r10, r9, lsl #2]
	ldr r9, [r2, #24]
	ldr r2, [r2, #28]
	rsb r10, r9, r9, lsl #4
	add r10, r7, r10, lsl #3
	str r3, [r10, r2, lsl #2]
	rsb r2, r2, r2, lsl #4
	add r2, r7, r2, lsl #3
	str r3, [r2, r9, lsl #2]
	bgt label169
label171:
	add r2, r8, r0, lsl #3
	add r0, r0, #1
	ldr r1, [r2, #0]
	cmp r6, r0
	rsb r3, r1, r1, lsl #4
	add r9, r7, r3, lsl #3
	ldr r3, [r2, #4]
	mov r2, #1
	str r2, [r9, r3, lsl #2]
	rsb r3, r3, r3, lsl #4
	add r3, r7, r3, lsl #3
	str r2, [r3, r1, lsl #2]
	bgt label171
label173:
	mov r0, #1
	mov r1, r5
	mov r2, r4
	bl maxCliques
	bl putint
	add sp, sp, #132
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label228:
	mov r0, #0
	b label171
