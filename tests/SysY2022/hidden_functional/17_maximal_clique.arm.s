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
maxCliques:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r7, #1
	sub sp, sp, #20
	mov r3, r0
	movw r6, #:lower16:graph
	str r2, [sp, #0]
	mov r4, r1
	mov r8, #0
	str r0, [sp, #12]
	add r5, r0, #2
	movt r6, #:upper16:graph
	add r0, r1, r0, lsl #2
	add r1, r3, #1
	str r0, [sp, #8]
	str r1, [sp, #4]
	ldr r0, [r2, #0]
	cmp r7, r0
	bgt label34
.p2align 4
label5:
	ldr r3, [sp, #12]
	mov r0, #1
	str r7, [r4, r3, lsl #2]
.p2align 4
label6:
	ldr r1, [sp, #4]
	cmp r1, r0
	bgt label29
	b label52
.p2align 4
label13:
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
	ble label5
	b label34
.p2align 4
label29:
	add r2, r0, #1
	mov r3, r2
	ldr r1, [sp, #4]
	cmp r1, r2
	bgt label32
label103:
	mov r0, r2
	b label6
.p2align 4
label32:
	ldr r1, [r4, r0, lsl #2]
	ldr r9, [r4, r3, lsl #2]
	rsb r1, r1, r1, lsl #4
	add r1, r6, r1, lsl #3
	ldr r1, [r1, r9, lsl #2]
	cmp r1, #0
	beq label119
	add r3, r3, #1
	ldr r1, [sp, #4]
	cmp r1, r3
	bgt label32
	b label103
.p2align 4
label57:
	mov r10, #0
	mov r9, #1
	ldr r2, [sp, #0]
	ldr r0, [r2, #0]
	cmp r9, r0
	ble label14
	b label13
.p2align 4
label119:
	mov r0, #0
	cmp r0, #0
	bne label57
	add r7, r7, #1
	ldr r2, [sp, #0]
	ldr r0, [r2, #0]
	cmp r7, r0
	ble label5
	b label34
.p2align 4
label14:
	ldr r0, [sp, #8]
	str r9, [r0, #4]
	mov r0, #1
	cmp r5, r0
	bgt label22
	b label68
.p2align 4
label21:
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
	ble label14
	b label13
.p2align 4
label22:
	add r1, r0, #1
	mov r2, r1
	cmp r5, r1
	ble label81
.p2align 4
label25:
	ldr r3, [r4, r0, lsl #2]
	ldr r11, [r4, r2, lsl #2]
	rsb r3, r3, r3, lsl #4
	add r3, r6, r3, lsl #3
	ldr r3, [r3, r11, lsl #2]
	cmp r3, #0
	beq label97
	add r2, r2, #1
	cmp r5, r2
	bgt label25
	mov r0, r1
	cmp r5, r1
	bgt label22
	b label68
.p2align 4
label97:
	mov r0, #0
	cmp r0, #0
	bne label21
	add r9, r9, #1
	ldr r2, [sp, #0]
	ldr r0, [r2, #0]
	cmp r9, r0
	ble label14
	b label13
.p2align 4
label68:
	mov r0, #1
	cmp r0, #0
	bne label21
	add r9, r9, #1
	ldr r2, [sp, #0]
	ldr r0, [r2, #0]
	cmp r9, r0
	ble label14
	b label13
.p2align 4
label81:
	mov r0, r1
	cmp r5, r1
	bgt label22
	b label68
label52:
	mov r0, #1
	cmp r0, #0
	bne label57
	add r7, r7, #1
	ldr r2, [sp, #0]
	ldr r0, [r2, #0]
	cmp r7, r0
	ble label5
label34:
	mov r0, r8
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r0, #0
	sub sp, sp, #132
	add r5, sp, #120
	mov r6, sp
	str r0, [sp, #0]
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
	movw r4, #:lower16:graph
	movw r8, #:lower16:edges
	mov r7, r0
	movt r4, #:upper16:graph
	movt r8, #:upper16:edges
	ble label173
	mov r9, #0
.p2align 4
label165:
	bl getint
	add r10, r8, r9, lsl #3
	str r0, [r10, #0]
	bl getint
	add r9, r9, #1
	str r0, [r10, #4]
	cmp r7, r9
	bgt label165
	cmp r7, #8
	ble label228
	sub r0, r7, #8
	mov r1, #0
.p2align 4
label169:
	add r2, r8, r1, lsl #3
	add r1, r1, #8
	ldr r9, [r2, #0]
	cmp r0, r1
	ldr r10, [r2, #4]
	rsb r3, r9, r9, lsl #4
	add r11, r4, r3, lsl #3
	mov r3, #1
	str r3, [r11, r10, lsl #2]
	rsb r10, r10, r10, lsl #4
	add r10, r4, r10, lsl #3
	str r3, [r10, r9, lsl #2]
	ldr r9, [r2, #8]
	rsb r10, r9, r9, lsl #4
	add r11, r4, r10, lsl #3
	ldr r10, [r2, #12]
	str r3, [r11, r10, lsl #2]
	rsb r10, r10, r10, lsl #4
	add r10, r4, r10, lsl #3
	str r3, [r10, r9, lsl #2]
	ldr r9, [r2, #16]
	rsb r10, r9, r9, lsl #4
	add r11, r4, r10, lsl #3
	ldr r10, [r2, #20]
	str r3, [r11, r10, lsl #2]
	rsb r10, r10, r10, lsl #4
	add r10, r4, r10, lsl #3
	str r3, [r10, r9, lsl #2]
	ldr r9, [r2, #24]
	rsb r10, r9, r9, lsl #4
	add r11, r4, r10, lsl #3
	ldr r10, [r2, #28]
	str r3, [r11, r10, lsl #2]
	rsb r10, r10, r10, lsl #4
	add r10, r4, r10, lsl #3
	str r3, [r10, r9, lsl #2]
	ldr r9, [r2, #32]
	rsb r10, r9, r9, lsl #4
	add r11, r4, r10, lsl #3
	ldr r10, [r2, #36]
	str r3, [r11, r10, lsl #2]
	rsb r10, r10, r10, lsl #4
	add r10, r4, r10, lsl #3
	str r3, [r10, r9, lsl #2]
	ldr r9, [r2, #40]
	rsb r10, r9, r9, lsl #4
	add r11, r4, r10, lsl #3
	ldr r10, [r2, #44]
	str r3, [r11, r10, lsl #2]
	rsb r10, r10, r10, lsl #4
	add r10, r4, r10, lsl #3
	str r3, [r10, r9, lsl #2]
	ldr r9, [r2, #48]
	rsb r10, r9, r9, lsl #4
	add r11, r4, r10, lsl #3
	ldr r10, [r2, #52]
	str r3, [r11, r10, lsl #2]
	rsb r10, r10, r10, lsl #4
	add r10, r4, r10, lsl #3
	str r3, [r10, r9, lsl #2]
	ldr r9, [r2, #56]
	ldr r2, [r2, #60]
	rsb r10, r9, r9, lsl #4
	add r10, r4, r10, lsl #3
	str r3, [r10, r2, lsl #2]
	rsb r2, r2, r2, lsl #4
	add r2, r4, r2, lsl #3
	str r3, [r2, r9, lsl #2]
	bgt label169
	mov r0, r1
label171:
	add r2, r8, r0, lsl #3
	add r0, r0, #1
	ldr r1, [r2, #0]
	cmp r7, r0
	rsb r3, r1, r1, lsl #4
	add r9, r4, r3, lsl #3
	ldr r3, [r2, #4]
	mov r2, #1
	str r2, [r9, r3, lsl #2]
	rsb r3, r3, r3, lsl #4
	add r3, r4, r3, lsl #3
	str r2, [r3, r1, lsl #2]
	bgt label171
label173:
	mov r0, #1
	mov r1, r6
	mov r2, r5
	bl maxCliques
	bl putint
	add sp, sp, #132
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label228:
	mov r0, #0
	b label171
