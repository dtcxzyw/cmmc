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
	sub sp, sp, #44
	mov r4, r0
	mov r3, r1
	str r1, [sp, #12]
	add r10, r0, #4
	str r2, [sp, #16]
	str r0, [sp, #36]
	add r0, r1, r0, lsl #2
	add r1, r4, #3
	str r0, [sp, #24]
	add r0, r4, #1
	ldr r2, [r2, #0]
	str r0, [sp, #32]
	add r0, r4, #2
	str r0, [sp, #28]
	cmp r2, #0
	str r1, [sp, #20]
	str r10, [sp, #8]
	ble label95
	mov r1, #1
	mov r0, #0
	mov r2, #1
	str r1, [sp, #4]
	str r0, [sp, #0]
	ldr r4, [sp, #36]
	ldr r3, [sp, #12]
	str r1, [r3, r4, lsl #2]
	add r1, r3, #4
	b label7
label79:
	add r1, r1, #4
label7:
	ldr r0, [sp, #32]
	cmp r0, r2
	bgt label75
	b label102
.p2align 4
label148:
	ldr r4, [sp, #36]
	ldr r0, [sp, #0]
	mov r1, r4
	cmp r4, r0
	movle r1, r0
	mov r0, r5
	cmp r5, r1
	movle r0, r1
	ldr r1, [sp, #4]
	ldr r2, [sp, #16]
	add r1, r1, #1
	ldr r2, [r2, #0]
	cmp r1, r2
	bgt label2
.p2align 4
label248:
	str r1, [sp, #4]
	mov r2, #1
	str r0, [sp, #0]
	ldr r4, [sp, #36]
	ldr r3, [sp, #12]
	str r1, [r3, r4, lsl #2]
	ldr r0, [sp, #32]
	add r1, r3, #4
	cmp r0, r2
	ble label102
.p2align 4
label75:
	add r2, r2, #1
	ldr r3, [sp, #12]
	mov r4, r2
	add r3, r3, r2, lsl #2
	ldr r0, [sp, #32]
	cmp r0, r2
	ble label79
.p2align 4
label80:
	ldr r0, [r1, #0]
	movw r11, #:lower16:graph
	movt r11, #:upper16:graph
	ldr r5, [r3, #0]
	rsb r0, r0, r0, lsl #4
	add r0, r11, r0, lsl #3
	ldr r0, [r0, r5, lsl #2]
	cmp r0, #0
	bne label266
	mov r0, #0
	cmp r0, #0
	beq label322
.p2align 4
label12:
	ldr r2, [sp, #16]
	ldr r0, [r2, #0]
	cmp r0, #0
	ble label111
	mov r4, #1
	mov r5, #0
	b label13
.p2align 4
label169:
	ldr r0, [sp, #32]
	add r4, r4, #1
	ldr r2, [sp, #16]
	cmp r0, r5
	movle r0, r5
	mov r5, r7
	cmp r7, r0
	movle r5, r0
	ldr r0, [r2, #0]
	cmp r4, r0
	bgt label148
.p2align 4
label13:
	ldr r0, [sp, #24]
	mov r2, #1
	str r4, [r0, #4]
	ldr r3, [sp, #12]
	add r1, r3, #4
	ldr r0, [sp, #28]
	cmp r0, r2
	ble label117
.p2align 4
label19:
	add r2, r2, #1
	ldr r3, [sp, #12]
	mov r6, r2
	add r3, r3, r2, lsl #2
	ldr r0, [sp, #28]
	cmp r0, r2
	ble label124
.p2align 4
label23:
	ldr r0, [r1, #0]
	movw r11, #:lower16:graph
	movt r11, #:upper16:graph
	ldr r7, [r3, #0]
	rsb r0, r0, r0, lsl #4
	add r0, r11, r0, lsl #3
	ldr r0, [r0, r7, lsl #2]
	cmp r0, #0
	beq label136
	add r6, r6, #1
	add r3, r3, #4
	ldr r0, [sp, #28]
	cmp r0, r6
	bgt label23
	add r1, r1, #4
	cmp r0, r2
	bgt label19
	b label117
.p2align 4
label136:
	mov r0, #0
	cmp r0, #0
	beq label28
.p2align 4
label30:
	ldr r2, [sp, #16]
	ldr r0, [r2, #0]
	cmp r0, #0
	ble label153
	mov r6, #1
	mov r7, #0
	b label31
.p2align 4
label42:
	ldr r0, [sp, #28]
	add r6, r6, #1
	ldr r2, [sp, #16]
	cmp r0, r7
	movle r0, r7
	mov r7, r9
	cmp r9, r0
	movle r7, r0
	ldr r0, [r2, #0]
	cmp r6, r0
	bgt label169
.p2align 4
label31:
	ldr r0, [sp, #24]
	mov r2, #1
	str r6, [r0, #8]
	ldr r3, [sp, #12]
	add r0, r3, #4
	ldr r1, [sp, #20]
	cmp r1, r2
	ble label159
.p2align 4
label62:
	add r2, r2, #1
	ldr r3, [sp, #12]
	mov r8, r2
	add r3, r3, r2, lsl #2
	ldr r1, [sp, #20]
	cmp r1, r2
	ble label223
.p2align 4
label66:
	ldr r1, [r0, #0]
	movw r11, #:lower16:graph
	movt r11, #:upper16:graph
	ldr r9, [r3, #0]
	rsb r1, r1, r1, lsl #4
	add r1, r11, r1, lsl #3
	ldr r1, [r1, r9, lsl #2]
	cmp r1, #0
	bne label234
	mov r0, #0
	cmp r0, #0
	beq label318
.p2align 4
label41:
	ldr r2, [sp, #16]
	ldr r0, [r2, #0]
	cmp r0, #0
	ble label174
	mov r8, #1
	mov r9, #0
	ldr r0, [sp, #24]
	mov r1, #1
	str r8, [r0, #12]
	ldr r3, [sp, #12]
	ldr r10, [sp, #8]
	add r0, r3, #4
	cmp r10, r1
	bgt label50
	mov r0, #1
	cmp r0, #0
	bne label59
	add r8, r8, #1
	ldr r0, [r2, #0]
	cmp r8, r0
	ble label44
	b label42
.p2align 4
label182:
	mov r0, #1
	cmp r0, #0
	beq label313
.p2align 4
label59:
	ldr r2, [sp, #16]
	ldr r3, [sp, #12]
	ldr r10, [sp, #8]
	mov r0, r10
	mov r1, r3
	bl maxCliques
	ldr r1, [sp, #20]
	cmp r1, r9
	movle r1, r9
	mov r9, r0
	cmp r0, r1
	movle r9, r1
	add r8, r8, #1
	ldr r2, [sp, #16]
	ldr r0, [r2, #0]
	cmp r8, r0
	bgt label42
.p2align 4
label44:
	ldr r0, [sp, #24]
	mov r1, #1
	str r8, [r0, #12]
	ldr r3, [sp, #12]
	add r0, r3, #4
	ldr r10, [sp, #8]
	cmp r10, r1
	ble label182
.p2align 4
label50:
	add r1, r1, #1
	ldr r3, [sp, #12]
	add r2, r3, r1, lsl #2
	mov r3, r1
	ldr r10, [sp, #8]
	cmp r10, r1
	ble label54
.p2align 4
label55:
	ldr r10, [r0, #0]
	movw r11, #:lower16:graph
	movt r11, #:upper16:graph
	rsb r10, r10, r10, lsl #4
	add r10, r11, r10, lsl #3
	ldr r11, [r2, #0]
	ldr r10, [r10, r11, lsl #2]
	cmp r10, #0
	beq label202
	add r3, r3, #1
	add r2, r2, #4
	ldr r10, [sp, #8]
	cmp r10, r3
	bgt label55
	add r0, r0, #4
	cmp r10, r1
	bgt label50
	mov r0, #1
	cmp r0, #0
	bne label59
	add r8, r8, #1
	ldr r2, [sp, #16]
	ldr r0, [r2, #0]
	cmp r8, r0
	ble label44
	b label42
.p2align 4
label202:
	mov r0, #0
	cmp r0, #0
	bne label59
	add r8, r8, #1
	ldr r2, [sp, #16]
	ldr r0, [r2, #0]
	cmp r8, r0
	ble label44
	b label42
.p2align 4
label54:
	add r0, r0, #4
	ldr r10, [sp, #8]
	cmp r10, r1
	bgt label50
	mov r0, #1
	cmp r0, #0
	bne label59
	add r8, r8, #1
	ldr r2, [sp, #16]
	ldr r0, [r2, #0]
	cmp r8, r0
	ble label44
	b label42
.p2align 4
label159:
	mov r0, #1
	cmp r0, #0
	bne label41
	add r6, r6, #1
	ldr r2, [sp, #16]
	ldr r0, [r2, #0]
	cmp r6, r0
	ble label31
	b label169
.p2align 4
label28:
	add r4, r4, #1
	ldr r2, [sp, #16]
	ldr r0, [r2, #0]
	cmp r4, r0
	ble label13
	b label148
.p2align 4
label234:
	add r8, r8, #1
	add r3, r3, #4
	ldr r1, [sp, #20]
	cmp r1, r8
	bgt label66
	add r0, r0, #4
	cmp r1, r2
	bgt label62
	mov r0, #1
	cmp r0, #0
	bne label41
	add r6, r6, #1
	ldr r2, [sp, #16]
	ldr r0, [r2, #0]
	cmp r6, r0
	ble label31
	b label169
.p2align 4
label318:
	add r6, r6, #1
	ldr r2, [sp, #16]
	ldr r0, [r2, #0]
	cmp r6, r0
	ble label31
	b label169
.p2align 4
label313:
	add r8, r8, #1
	ldr r2, [sp, #16]
	ldr r0, [r2, #0]
	cmp r8, r0
	ble label44
	b label42
.p2align 4
label124:
	add r1, r1, #4
	ldr r0, [sp, #28]
	cmp r0, r2
	bgt label19
.p2align 4
label117:
	mov r0, #1
	cmp r0, #0
	bne label30
	add r4, r4, #1
	ldr r2, [sp, #16]
	ldr r0, [r2, #0]
	cmp r4, r0
	ble label13
	b label148
.p2align 4
label223:
	add r0, r0, #4
	ldr r1, [sp, #20]
	cmp r1, r2
	bgt label62
	mov r0, #1
	cmp r0, #0
	bne label41
	add r6, r6, #1
	ldr r2, [sp, #16]
	ldr r0, [r2, #0]
	cmp r6, r0
	ble label31
	b label169
.p2align 4
label174:
	mov r9, #0
	ldr r0, [sp, #28]
	add r6, r6, #1
	ldr r2, [sp, #16]
	cmp r0, r7
	movle r0, r7
	mov r7, r9
	cmp r9, r0
	movle r7, r0
	ldr r0, [r2, #0]
	cmp r6, r0
	ble label31
	b label169
label102:
	mov r0, #1
	cmp r0, #0
	bne label12
	ldr r0, [sp, #0]
	ldr r1, [sp, #4]
	ldr r2, [sp, #16]
	add r1, r1, #1
	ldr r2, [r2, #0]
	cmp r1, r2
	ble label248
	b label2
.p2align 4
label266:
	add r4, r4, #1
	add r3, r3, #4
	ldr r0, [sp, #32]
	cmp r0, r4
	bgt label80
	b label79
label111:
	mov r5, #0
	ldr r4, [sp, #36]
	ldr r0, [sp, #0]
	mov r1, r4
	cmp r4, r0
	movle r1, r0
	mov r0, r5
	cmp r5, r1
	movle r0, r1
	ldr r1, [sp, #4]
	ldr r2, [sp, #16]
	add r1, r1, #1
	ldr r2, [r2, #0]
	cmp r1, r2
	ble label248
label2:
	add sp, sp, #44
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label322:
	ldr r0, [sp, #0]
	ldr r1, [sp, #4]
	ldr r2, [sp, #16]
	add r1, r1, #1
	ldr r2, [r2, #0]
	cmp r1, r2
	ble label248
	b label2
.p2align 4
label153:
	mov r7, #0
	ldr r0, [sp, #32]
	add r4, r4, #1
	ldr r2, [sp, #16]
	cmp r0, r5
	movle r0, r5
	mov r5, r7
	cmp r7, r0
	movle r5, r0
	ldr r0, [r2, #0]
	cmp r4, r0
	ble label13
	b label148
label95:
	mov r0, #0
	b label2
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #132
	mov r11, #0
	add r4, sp, #120
	mov r5, sp
	str r11, [sp, #0]
	str r11, [sp, #4]
	str r11, [sp, #8]
	str r11, [sp, #12]
	str r11, [sp, #16]
	str r11, [sp, #20]
	str r11, [sp, #24]
	str r11, [sp, #28]
	str r11, [sp, #32]
	str r11, [sp, #36]
	str r11, [sp, #40]
	str r11, [sp, #44]
	str r11, [sp, #48]
	str r11, [sp, #52]
	str r11, [sp, #56]
	str r11, [sp, #60]
	str r11, [sp, #64]
	str r11, [sp, #68]
	str r11, [sp, #72]
	str r11, [sp, #76]
	str r11, [sp, #80]
	str r11, [sp, #84]
	str r11, [sp, #88]
	str r11, [sp, #92]
	str r11, [sp, #96]
	str r11, [sp, #100]
	str r11, [sp, #104]
	str r11, [sp, #108]
	str r11, [sp, #112]
	str r11, [sp, #116]
	bl getint
	str r0, [sp, #120]
	bl getint
	cmp r0, #0
	movw r8, #:lower16:edges
	movt r8, #:upper16:edges
	movw r7, #:lower16:graph
	movt r7, #:upper16:graph
	sub r9, r0, #3
	mov r6, r0
	ble label397
	mov r10, r8
	mov r11, #0
.p2align 4
label380:
	bl getint
	str r0, [r10, #0]
	bl getint
	add r11, r11, #1
	str r0, [r10, #4]
	cmp r6, r11
	ble label384
	add r10, r10, #8
	b label380
label384:
	cmp r6, #3
	ble label452
	mov r0, r8
	mov r11, #0
	mov r1, r11
	b label386
.p2align 4
label389:
	add r0, r0, #32
.p2align 4
label386:
	ldr r3, [r0, #0]
	add r1, r1, #4
	ldr r10, [r0, #4]
	cmp r9, r1
	rsb r2, r3, r3, lsl #4
	add r11, r7, r2, lsl #3
	mov r2, #1
	str r2, [r11, r10, lsl #2]
	rsb r10, r10, r10, lsl #4
	add r10, r7, r10, lsl #3
	str r2, [r10, r3, lsl #2]
	ldr r3, [r0, #8]
	rsb r10, r3, r3, lsl #4
	add r11, r7, r10, lsl #3
	ldr r10, [r0, #12]
	str r2, [r11, r10, lsl #2]
	rsb r10, r10, r10, lsl #4
	add r10, r7, r10, lsl #3
	str r2, [r10, r3, lsl #2]
	ldr r3, [r0, #16]
	rsb r10, r3, r3, lsl #4
	add r11, r7, r10, lsl #3
	ldr r10, [r0, #20]
	str r2, [r11, r10, lsl #2]
	rsb r10, r10, r10, lsl #4
	add r10, r7, r10, lsl #3
	str r2, [r10, r3, lsl #2]
	ldr r3, [r0, #24]
	rsb r10, r3, r3, lsl #4
	add r11, r7, r10, lsl #3
	ldr r10, [r0, #28]
	str r2, [r11, r10, lsl #2]
	rsb r10, r10, r10, lsl #4
	add r10, r7, r10, lsl #3
	str r2, [r10, r3, lsl #2]
	bgt label389
label390:
	cmp r6, r1
	ble label397
	add r0, r8, r1, lsl #3
	b label393
label396:
	add r0, r0, #8
label393:
	ldr r2, [r0, #0]
	add r1, r1, #1
	ldr r8, [r0, #4]
	cmp r6, r1
	rsb r3, r2, r2, lsl #4
	add r9, r7, r3, lsl #3
	mov r3, #1
	str r3, [r9, r8, lsl #2]
	rsb r8, r8, r8, lsl #4
	add r8, r7, r8, lsl #3
	str r3, [r8, r2, lsl #2]
	bgt label396
label397:
	mov r0, #1
	mov r1, r5
	mov r2, r4
	bl maxCliques
	bl putint
	add sp, sp, #132
	mov r11, #0
	mov r0, r11
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label452:
	mov r11, #0
	mov r1, r11
	b label390
