.arch armv7ve
.data
.bss
.align 4
graph:
	.zero	3600
.align 4
edges:
	.zero	4800
.text
.syntax unified
.arm
.fpu vfpv4
maxCliques:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r9, #1
	movw r8, #:lower16:graph
	add r5, r0, #1
	mov r7, r2
	mov r4, r1
	mov r10, #0
	mov r6, r0
	sub sp, sp, #4
	movt r8, #:upper16:graph
	ldr r0, [r2, #0]
	cmp r9, r0
	bgt label18
.p2align 4
label5:
	str r9, [r4, r6, lsl #2]
	mov r0, #1
	cmp r5, r0
	bgt label13
	cmp r0, #0
	bne label10
	add r9, r9, #1
	ldr r0, [r7, #0]
	cmp r9, r0
	ble label5
	b label18
.p2align 4
label13:
	add r1, r0, #1
	mov r2, r1
	cmp r5, r1
	bgt label16
	mov r0, r1
	mov r0, #1
	cmp r0, #0
	bne label10
	add r9, r9, #1
	ldr r0, [r7, #0]
	cmp r9, r0
	ble label5
	b label18
.p2align 4
label16:
	ldr r3, [r4, r0, lsl #2]
	mov r11, #120
	mla r3, r3, r11, r8
	ldr r11, [r4, r2, lsl #2]
	ldr r3, [r3, r11, lsl #2]
	cmp r3, #0
	beq label62
	add r2, r2, #1
	cmp r5, r2
	bgt label16
	mov r0, r1
	cmp r5, r1
	bgt label13
	mov r0, #1
	cmp r0, #0
	bne label10
	add r9, r9, #1
	ldr r0, [r7, #0]
	cmp r9, r0
	ble label5
	b label18
.p2align 4
label62:
	mov r0, #0
	cmp r0, #0
	bne label10
	add r9, r9, #1
	ldr r0, [r7, #0]
	cmp r9, r0
	ble label5
label18:
	mov r0, r10
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label10:
	mov r0, r5
	mov r1, r4
	mov r2, r7
	bl maxCliques
	mov r1, r6
	cmp r6, r10
	movle r1, r10
	mov r10, r0
	cmp r0, r1
	movle r10, r1
	add r9, r9, #1
	ldr r0, [r7, #0]
	cmp r9, r0
	ble label5
	b label18
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r0, #0
	sub sp, sp, #132
	str r0, [sp, #4]
	add r4, sp, #4
	mov r5, sp
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #12]
	str r0, [r4, #16]
	str r0, [r4, #20]
	str r0, [r4, #24]
	str r0, [r4, #28]
	str r0, [r4, #32]
	str r0, [r4, #36]
	str r0, [r4, #40]
	str r0, [r4, #44]
	str r0, [r4, #48]
	str r0, [r4, #52]
	str r0, [r4, #56]
	str r0, [r4, #60]
	str r0, [r4, #64]
	str r0, [r4, #68]
	str r0, [r4, #72]
	str r0, [r4, #76]
	str r0, [r4, #80]
	str r0, [r4, #84]
	str r0, [r4, #88]
	str r0, [r4, #92]
	str r0, [r4, #96]
	str r0, [r4, #100]
	str r0, [r4, #104]
	str r0, [r4, #108]
	str r0, [r4, #112]
	str r0, [r4, #116]
	bl getint
	str r0, [sp, #0]
	bl getint
	cmp r0, #0
	movw r6, #:lower16:edges
	movw r7, #:lower16:graph
	mov r8, r0
	movt r6, #:upper16:edges
	movt r7, #:upper16:graph
	ble label98
	mov r9, #0
.p2align 4
label90:
	bl getint
	str r0, [r6, r9, lsl #3]
	add r10, r6, r9, lsl #3
	bl getint
	add r9, r9, #1
	str r0, [r10, #4]
	cmp r8, r9
	bgt label90
	cmp r8, #4
	ble label290
	mov r0, #4
	mov r1, #0
label93:
	add r2, r6, r1, lsl #3
	ldr r9, [r6, r1, lsl #3]
	mov r3, #1
	mov r1, #120
	ldr r10, [r2, #4]
	mla r11, r9, r1, r7
	str r3, [r11, r10, lsl #2]
	mla r10, r10, r1, r7
	str r3, [r10, r9, lsl #2]
	ldr r9, [r2, #8]
	ldr r10, [r2, #12]
	mla r11, r9, r1, r7
	str r3, [r11, r10, lsl #2]
	mla r10, r10, r1, r7
	str r3, [r10, r9, lsl #2]
	ldr r9, [r2, #16]
	ldr r10, [r2, #20]
	mla r11, r9, r1, r7
	str r3, [r11, r10, lsl #2]
	mla r10, r10, r1, r7
	str r3, [r10, r9, lsl #2]
	ldr r9, [r2, #24]
	ldr r2, [r2, #28]
	mla r10, r9, r1, r7
	mla r1, r2, r1, r7
	str r3, [r10, r2, lsl #2]
	add r2, r0, #4
	str r3, [r1, r9, lsl #2]
	cmp r8, r2
	ble label96
	mov r1, r0
	mov r0, r2
	b label93
label98:
	mov r0, #1
	mov r1, r4
	mov r2, r5
	bl maxCliques
	bl putint
	add sp, sp, #132
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label290:
	mov r0, #0
label96:
	add r3, r6, r0, lsl #3
	ldr r1, [r6, r0, lsl #3]
	mov r2, #120
	add r0, r0, #1
	ldr r9, [r3, #4]
	cmp r8, r0
	mov r3, #1
	mla r10, r1, r2, r7
	mla r2, r9, r2, r7
	str r3, [r10, r9, lsl #2]
	str r3, [r2, r1, lsl #2]
	bgt label96
	b label98
