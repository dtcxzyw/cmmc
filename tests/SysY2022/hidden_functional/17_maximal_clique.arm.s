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
	sub sp, sp, #20
	mov r7, #1
	mov r4, r1
	mov r3, r0
	str r2, [sp, #12]
	movw r6, #:lower16:graph
	add r5, r0, #2
	str r0, [sp, #0]
	add r2, r0, #1
	movt r6, #:upper16:graph
	add r0, r1, r0, lsl #2
	str r0, [sp, #4]
	mov r0, #0
	str r2, [sp, #8]
	ldr r2, [sp, #12]
	ldr r1, [r2, #0]
	cmp r7, r1
	ble label5
label35:
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label5:
	ldr r3, [sp, #0]
	mov r1, #1
	str r7, [r4, r3, lsl #2]
	ldr r2, [sp, #8]
	cmp r2, r1
	bgt label8
	cmp r1, #0
	bne label15
	add r7, r7, #1
	ldr r2, [sp, #12]
	ldr r1, [r2, #0]
	cmp r7, r1
	ble label5
	b label35
.p2align 4
label15:
	ldr r3, [sp, #0]
	mov r10, #0
	mov r9, #1
	mov r8, r3
	cmp r3, r0
	movle r8, r0
	ldr r2, [sp, #12]
	ldr r0, [r2, #0]
	cmp r9, r0
	ble label20
	cmp r8, r10
	mov r0, r8
	movle r0, r10
	add r7, r7, #1
	ldr r1, [r2, #0]
	cmp r7, r1
	ble label5
	b label35
.p2align 4
label20:
	ldr r0, [sp, #4]
	str r9, [r0, #4]
	mov r0, #1
	cmp r5, r0
	bgt label28
	cmp r0, #0
	bne label27
	add r9, r9, #1
	ldr r2, [sp, #12]
	ldr r0, [r2, #0]
	cmp r9, r0
	ble label20
	cmp r8, r10
	mov r0, r8
	movle r0, r10
	add r7, r7, #1
	ldr r1, [r2, #0]
	cmp r7, r1
	ble label5
	b label35
.p2align 4
label28:
	add r1, r0, #1
	mov r2, r1
	cmp r5, r1
	bgt label31
	mov r0, r1
	mov r0, #1
	cmp r0, #0
	bne label27
	add r9, r9, #1
	ldr r2, [sp, #12]
	ldr r0, [r2, #0]
	cmp r9, r0
	ble label20
	cmp r8, r10
	mov r0, r8
	movle r0, r10
	add r7, r7, #1
	ldr r1, [r2, #0]
	cmp r7, r1
	ble label5
	b label35
.p2align 4
label31:
	ldr r3, [r4, r0, lsl #2]
	ldr r11, [r4, r2, lsl #2]
	rsb r3, r3, r3, lsl #4
	add r3, r6, r3, lsl #3
	ldr r3, [r3, r11, lsl #2]
	cmp r3, #0
	beq label119
	add r2, r2, #1
	cmp r5, r2
	bgt label31
	mov r0, r1
	cmp r5, r1
	bgt label28
	mov r0, #1
	cmp r0, #0
	bne label27
	add r9, r9, #1
	ldr r2, [sp, #12]
	ldr r0, [r2, #0]
	cmp r9, r0
	ble label20
	cmp r8, r10
	mov r0, r8
	movle r0, r10
	add r7, r7, #1
	ldr r1, [r2, #0]
	cmp r7, r1
	ble label5
	b label35
.p2align 4
label119:
	mov r0, #0
	cmp r0, #0
	bne label27
	add r9, r9, #1
	ldr r2, [sp, #12]
	ldr r0, [r2, #0]
	cmp r9, r0
	ble label20
	cmp r8, r10
	mov r0, r8
	movle r0, r10
	add r7, r7, #1
	ldr r1, [r2, #0]
	cmp r7, r1
	ble label5
	b label35
.p2align 4
label27:
	ldr r2, [sp, #12]
	mov r0, r5
	mov r1, r4
	bl maxCliques
	ldr r2, [sp, #8]
	mov r1, r2
	cmp r2, r10
	movle r1, r10
	mov r10, r0
	cmp r0, r1
	movle r10, r1
	add r9, r9, #1
	ldr r2, [sp, #12]
	ldr r0, [r2, #0]
	cmp r9, r0
	ble label20
	cmp r8, r10
	mov r0, r8
	movle r0, r10
	add r7, r7, #1
	ldr r1, [r2, #0]
	cmp r7, r1
	ble label5
	b label35
.p2align 4
label8:
	add r3, r1, #1
	mov r8, r3
	ldr r2, [sp, #8]
	cmp r2, r3
	bgt label11
	mov r1, r3
	mov r1, #1
	cmp r1, #0
	bne label15
	add r7, r7, #1
	ldr r2, [sp, #12]
	ldr r1, [r2, #0]
	cmp r7, r1
	ble label5
	b label35
.p2align 4
label11:
	ldr r2, [r4, r1, lsl #2]
	ldr r9, [r4, r8, lsl #2]
	rsb r2, r2, r2, lsl #4
	add r2, r6, r2, lsl #3
	ldr r2, [r2, r9, lsl #2]
	cmp r2, #0
	beq label74
	add r8, r8, #1
	ldr r2, [sp, #8]
	cmp r2, r8
	bgt label11
	mov r1, r3
	cmp r2, r3
	bgt label8
	mov r1, #1
	cmp r1, #0
	bne label15
	add r7, r7, #1
	ldr r2, [sp, #12]
	ldr r1, [r2, #0]
	cmp r7, r1
	ble label5
	b label35
.p2align 4
label74:
	mov r1, #0
	cmp r1, #0
	bne label15
	add r7, r7, #1
	ldr r2, [sp, #12]
	ldr r1, [r2, #0]
	cmp r7, r1
	ble label5
	b label35
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #132
	mov r0, #0
	mov r4, sp
	add r5, sp, #8
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
	str r0, [sp, #120]
	str r0, [sp, #124]
	bl getint
	str r0, [sp, #0]
	bl getint
	cmp r0, #0
	movw r8, #:lower16:edges
	movw r6, #:lower16:graph
	mov r7, r0
	movt r8, #:upper16:edges
	movt r6, #:upper16:graph
	ble label206
	mov r9, #0
.p2align 4
label198:
	bl getint
	add r10, r8, r9, lsl #3
	str r0, [r10, #0]
	bl getint
	add r9, r9, #1
	str r0, [r10, #4]
	cmp r7, r9
	bgt label198
	cmp r7, #4
	bgt label201
	mov r0, #0
	b label204
label201:
	sub r1, r7, #4
	mov r0, #0
	b label202
label206:
	mov r0, #1
	mov r1, r5
	mov r2, r4
	bl maxCliques
	bl putint
	add sp, sp, #132
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label202:
	add r2, r8, r0, lsl #3
	add r0, r0, #4
	ldr r9, [r2, #0]
	cmp r1, r0
	ldr r10, [r2, #4]
	rsb r3, r9, r9, lsl #4
	add r11, r6, r3, lsl #3
	mov r3, #1
	str r3, [r11, r10, lsl #2]
	rsb r10, r10, r10, lsl #4
	add r10, r6, r10, lsl #3
	str r3, [r10, r9, lsl #2]
	ldr r9, [r2, #8]
	rsb r10, r9, r9, lsl #4
	add r11, r6, r10, lsl #3
	ldr r10, [r2, #12]
	str r3, [r11, r10, lsl #2]
	rsb r10, r10, r10, lsl #4
	add r10, r6, r10, lsl #3
	str r3, [r10, r9, lsl #2]
	ldr r9, [r2, #16]
	rsb r10, r9, r9, lsl #4
	add r11, r6, r10, lsl #3
	ldr r10, [r2, #20]
	str r3, [r11, r10, lsl #2]
	rsb r10, r10, r10, lsl #4
	add r10, r6, r10, lsl #3
	str r3, [r10, r9, lsl #2]
	ldr r9, [r2, #24]
	ldr r2, [r2, #28]
	rsb r10, r9, r9, lsl #4
	add r10, r6, r10, lsl #3
	str r3, [r10, r2, lsl #2]
	rsb r2, r2, r2, lsl #4
	add r2, r6, r2, lsl #3
	str r3, [r2, r9, lsl #2]
	bgt label202
label204:
	add r2, r8, r0, lsl #3
	add r0, r0, #1
	ldr r1, [r2, #0]
	cmp r7, r0
	rsb r3, r1, r1, lsl #4
	add r9, r6, r3, lsl #3
	ldr r3, [r2, #4]
	mov r2, #1
	str r2, [r9, r3, lsl #2]
	rsb r3, r3, r3, lsl #4
	add r3, r6, r3, lsl #3
	str r2, [r3, r1, lsl #2]
	bgt label204
	b label206
