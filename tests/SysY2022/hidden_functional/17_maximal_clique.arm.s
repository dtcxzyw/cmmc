.arch armv7ve
.data
.bss
.p2align 3
graph:
	.zero	3600
.p2align 3
edges:
	.zero	4800
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
maxCliques:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[40] CalleeSaved[0]
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
	str r1, [sp, #4]
	str r0, [sp, #0]
	ldr r4, [sp, #36]
	mov r2, #1
	ldr r3, [sp, #12]
	str r1, [r3, r4, lsl #2]
	add r1, r3, #4
	b label5
label77:
	add r1, r1, #4
label5:
	ldr r0, [sp, #32]
	cmp r0, r2
	bgt label73
	b label102
.p2align 4
label11:
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
	bgt label80
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
label73:
	add r2, r2, #1
	ldr r3, [sp, #12]
	mov r4, r2
	add r3, r3, r2, lsl #2
	ldr r0, [sp, #32]
	cmp r0, r2
	ble label77
.p2align 4
label78:
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
	bne label10
	ldr r0, [sp, #0]
	ldr r1, [sp, #4]
	ldr r2, [sp, #16]
	add r1, r1, #1
	ldr r2, [r2, #0]
	cmp r1, r2
	ble label248
	b label80
label102:
	mov r0, #1
	cmp r0, #0
	beq label106
.p2align 4
label10:
	ldr r2, [sp, #16]
	ldr r0, [r2, #0]
	cmp r0, #0
	ble label111
	mov r4, #1
	mov r5, #0
	ldr r0, [sp, #24]
	mov r2, #1
	str r4, [r0, #4]
	ldr r3, [sp, #12]
	ldr r0, [sp, #28]
	add r1, r3, #4
	cmp r0, r2
	bgt label64
	b label324
.p2align 4
label24:
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
	bgt label11
.p2align 4
label13:
	ldr r0, [sp, #24]
	mov r2, #1
	str r4, [r0, #4]
	ldr r3, [sp, #12]
	add r1, r3, #4
	ldr r0, [sp, #28]
	cmp r0, r2
	ble label324
.p2align 4
label64:
	add r2, r2, #1
	ldr r3, [sp, #12]
	mov r6, r2
	add r3, r3, r2, lsl #2
	ldr r0, [sp, #28]
	cmp r0, r2
	ble label227
.p2align 4
label68:
	ldr r0, [r1, #0]
	movw r11, #:lower16:graph
	movt r11, #:upper16:graph
	ldr r7, [r3, #0]
	rsb r0, r0, r0, lsl #4
	add r0, r11, r0, lsl #3
	ldr r0, [r0, r7, lsl #2]
	cmp r0, #0
	bne label238
	mov r0, #0
	cmp r0, #0
	beq label319
.p2align 4
label23:
	ldr r2, [sp, #16]
	ldr r0, [r2, #0]
	cmp r0, #0
	ble label134
	mov r6, #1
	mov r7, #0
	ldr r0, [sp, #24]
	mov r2, #1
	str r6, [r0, #8]
	ldr r3, [sp, #12]
	ldr r1, [sp, #20]
	add r0, r3, #4
	cmp r1, r2
	bgt label57
	mov r0, #1
	cmp r0, #0
	bne label36
	add r6, r6, #1
	ldr r2, [sp, #16]
	ldr r0, [r2, #0]
	cmp r6, r0
	ble label26
	b label24
.p2align 4
label37:
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
	bgt label24
.p2align 4
label26:
	ldr r0, [sp, #24]
	mov r2, #1
	str r6, [r0, #8]
	ldr r3, [sp, #12]
	add r0, r3, #4
	ldr r1, [sp, #20]
	cmp r1, r2
	ble label142
.p2align 4
label57:
	add r2, r2, #1
	ldr r3, [sp, #12]
	mov r8, r2
	add r3, r3, r2, lsl #2
	ldr r1, [sp, #20]
	cmp r1, r2
	ble label61
.p2align 4
label62:
	ldr r1, [r0, #0]
	movw r11, #:lower16:graph
	movt r11, #:upper16:graph
	ldr r9, [r3, #0]
	rsb r1, r1, r1, lsl #4
	add r1, r11, r1, lsl #3
	ldr r1, [r1, r9, lsl #2]
	cmp r1, #0
	beq label219
	add r8, r8, #1
	add r3, r3, #4
	ldr r1, [sp, #20]
	cmp r1, r8
	bgt label62
	add r0, r0, #4
	cmp r1, r2
	bgt label57
	mov r0, #1
	cmp r0, #0
	bne label36
	add r6, r6, #1
	ldr r2, [sp, #16]
	ldr r0, [r2, #0]
	cmp r6, r0
	ble label26
	b label24
.p2align 4
label219:
	mov r0, #0
	cmp r0, #0
	beq label317
.p2align 4
label36:
	ldr r2, [sp, #16]
	ldr r0, [r2, #0]
	cmp r0, #0
	ble label157
	mov r8, #1
	mov r9, #0
	ldr r0, [sp, #24]
	mov r1, #1
	str r8, [r0, #12]
	ldr r3, [sp, #12]
	ldr r10, [sp, #8]
	add r0, r3, #4
	cmp r10, r1
	bgt label45
	mov r0, #1
	cmp r0, #0
	bne label54
	add r8, r8, #1
	ldr r0, [r2, #0]
	cmp r8, r0
	ble label39
	b label37
.p2align 4
label185:
	mov r0, #0
	cmp r0, #0
	beq label190
.p2align 4
label54:
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
	bgt label37
.p2align 4
label39:
	ldr r0, [sp, #24]
	mov r1, #1
	str r8, [r0, #12]
	ldr r3, [sp, #12]
	add r0, r3, #4
	ldr r10, [sp, #8]
	cmp r10, r1
	ble label165
.p2align 4
label45:
	add r1, r1, #1
	ldr r3, [sp, #12]
	add r2, r3, r1, lsl #2
	mov r3, r1
	ldr r10, [sp, #8]
	cmp r10, r1
	ble label49
.p2align 4
label50:
	ldr r10, [r0, #0]
	movw r11, #:lower16:graph
	movt r11, #:upper16:graph
	rsb r10, r10, r10, lsl #4
	add r10, r11, r10, lsl #3
	ldr r11, [r2, #0]
	ldr r10, [r10, r11, lsl #2]
	cmp r10, #0
	beq label185
	add r3, r3, #1
	add r2, r2, #4
	ldr r10, [sp, #8]
	cmp r10, r3
	bgt label50
	add r0, r0, #4
	cmp r10, r1
	bgt label45
	mov r0, #1
	cmp r0, #0
	bne label54
	add r8, r8, #1
	ldr r2, [sp, #16]
	ldr r0, [r2, #0]
	cmp r8, r0
	ble label39
	b label37
.p2align 4
label190:
	add r8, r8, #1
	ldr r2, [sp, #16]
	ldr r0, [r2, #0]
	cmp r8, r0
	ble label39
	b label37
.p2align 4
label49:
	add r0, r0, #4
	ldr r10, [sp, #8]
	cmp r10, r1
	bgt label45
	mov r0, #1
	cmp r0, #0
	bne label54
	add r8, r8, #1
	ldr r2, [sp, #16]
	ldr r0, [r2, #0]
	cmp r8, r0
	ble label39
	b label37
.p2align 4
label165:
	mov r0, #1
	cmp r0, #0
	bne label54
	add r8, r8, #1
	ldr r2, [sp, #16]
	ldr r0, [r2, #0]
	cmp r8, r0
	ble label39
	b label37
.p2align 4
label61:
	add r0, r0, #4
	ldr r1, [sp, #20]
	cmp r1, r2
	bgt label57
	mov r0, #1
	cmp r0, #0
	bne label36
	add r6, r6, #1
	ldr r2, [sp, #16]
	ldr r0, [r2, #0]
	cmp r6, r0
	ble label26
	b label24
.p2align 4
label142:
	mov r0, #1
	cmp r0, #0
	bne label36
	add r6, r6, #1
	ldr r2, [sp, #16]
	ldr r0, [r2, #0]
	cmp r6, r0
	ble label26
	b label24
.p2align 4
label317:
	add r6, r6, #1
	ldr r2, [sp, #16]
	ldr r0, [r2, #0]
	cmp r6, r0
	ble label26
	b label24
.p2align 4
label324:
	mov r0, #1
	cmp r0, #0
	bne label23
	add r4, r4, #1
	ldr r2, [sp, #16]
	ldr r0, [r2, #0]
	cmp r4, r0
	ble label13
	b label11
.p2align 4
label238:
	add r6, r6, #1
	add r3, r3, #4
	ldr r0, [sp, #28]
	cmp r0, r6
	bgt label68
	add r1, r1, #4
	cmp r0, r2
	bgt label64
	b label324
.p2align 4
label319:
	add r4, r4, #1
	ldr r2, [sp, #16]
	ldr r0, [r2, #0]
	cmp r4, r0
	ble label13
	b label11
.p2align 4
label157:
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
	ble label26
	b label24
.p2align 4
label266:
	add r4, r4, #1
	add r3, r3, #4
	ldr r0, [sp, #32]
	cmp r0, r4
	bgt label78
	b label77
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
	b label80
.p2align 4
label227:
	add r1, r1, #4
	ldr r0, [sp, #28]
	cmp r0, r2
	bgt label64
	b label324
label80:
	add sp, sp, #44
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label134:
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
	b label11
label106:
	ldr r0, [sp, #0]
	ldr r1, [sp, #4]
	ldr r2, [sp, #16]
	add r1, r1, #1
	ldr r2, [r2, #0]
	cmp r1, r2
	ble label248
	b label80
label95:
	mov r0, #0
	b label80
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[124] RegSpill[0] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r11, #0
	sub sp, sp, #132
	mov r5, sp
	add r4, sp, #120
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
	movw r8, #:lower16:edges
	movt r8, #:upper16:edges
	movw r7, #:lower16:graph
	movt r7, #:upper16:graph
	cmp r0, #0
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
	ble label454
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
label454:
	mov r11, #0
	mov r1, r11
	b label390
