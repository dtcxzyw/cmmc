.arch armv7ve
.data
.bss
.align 4
e:
	.zero	1024
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #132
	mov r0, #0
	add r7, sp, #64
	mov r5, sp
	str r0, [sp, #64]
	str r0, [r7, #4]
	str r0, [r7, #8]
	str r0, [r7, #12]
	str r0, [r7, #16]
	str r0, [r7, #20]
	str r0, [r7, #24]
	str r0, [r7, #28]
	str r0, [r7, #32]
	str r0, [r7, #36]
	str r0, [r7, #40]
	str r0, [r7, #44]
	str r0, [r7, #48]
	str r0, [r7, #52]
	str r0, [r7, #56]
	str r0, [r7, #60]
	str r0, [sp, #0]
	str r0, [r5, #4]
	str r0, [r5, #8]
	str r0, [r5, #12]
	str r0, [r5, #16]
	str r0, [r5, #20]
	str r0, [r5, #24]
	str r0, [r5, #28]
	str r0, [r5, #32]
	str r0, [r5, #36]
	str r0, [r5, #40]
	str r0, [r5, #44]
	str r0, [r5, #48]
	str r0, [r5, #52]
	str r0, [r5, #56]
	str r0, [r5, #60]
	bl getint
	mov r4, r0
	bl getint
	movw r6, #:lower16:e
	mov r8, r0
	movt r6, #:upper16:e
	mov r0, #1
	cmp r4, r0
	blt label4
	add r1, r6, r0, lsl #6
	cmp r4, #0
	ble label36
	mov r2, #1
	mov r3, #0
	movw r9, #65535
	cmp r0, r2
	moveq r9, r3
	str r9, [r1, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	blt label36
	movw r9, #65535
	cmp r0, r2
	moveq r9, r3
	str r9, [r1, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	blt label36
	movw r9, #65535
	cmp r0, r2
	moveq r9, r3
	str r9, [r1, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	blt label36
	movw r9, #65535
	cmp r0, r2
	moveq r9, r3
	str r9, [r1, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	blt label36
	movw r9, #65535
	cmp r0, r2
	moveq r9, r3
	str r9, [r1, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	blt label36
	movw r9, #65535
	cmp r0, r2
	moveq r9, r3
	str r9, [r1, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	blt label36
	movw r9, #65535
	cmp r0, r2
	moveq r9, r3
	str r9, [r1, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	blt label36
	movw r9, #65535
	cmp r0, r2
	moveq r9, r3
	str r9, [r1, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	blt label36
label385:
	mov r3, #0
	movw r9, #65535
	cmp r0, r2
	moveq r9, r3
	str r9, [r1, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	blt label36
	movw r9, #65535
	cmp r0, r2
	moveq r9, r3
	str r9, [r1, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	blt label36
label34:
	mov r3, #0
	movw r9, #65535
	cmp r0, r2
	moveq r9, r3
	str r9, [r1, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	blt label36
	b label34
label36:
	add r0, r0, #1
	cmp r4, r0
	blt label4
	add r1, r6, r0, lsl #6
	cmp r4, #0
	ble label36
	mov r2, #1
	mov r3, #0
	movw r9, #65535
	cmp r0, r2
	moveq r9, r3
	str r9, [r1, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	blt label36
	movw r9, #65535
	cmp r0, r2
	moveq r9, r3
	str r9, [r1, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	blt label36
	movw r9, #65535
	cmp r0, r2
	moveq r9, r3
	str r9, [r1, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	blt label36
	movw r9, #65535
	cmp r0, r2
	moveq r9, r3
	str r9, [r1, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	blt label36
	movw r9, #65535
	cmp r0, r2
	moveq r9, r3
	str r9, [r1, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	blt label36
	movw r9, #65535
	cmp r0, r2
	moveq r9, r3
	str r9, [r1, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	blt label36
	movw r9, #65535
	cmp r0, r2
	moveq r9, r3
	str r9, [r1, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	blt label36
	movw r9, #65535
	cmp r0, r2
	moveq r9, r3
	str r9, [r1, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	blt label36
	b label385
label4:
	cmp r8, #0
	ble label7
	mov r9, #1
label5:
	bl getint
	add r10, r6, r0, lsl #6
	bl getint
	mov r11, r0
	bl getint
	add r9, r9, #1
	str r0, [r10, r11, lsl #2]
	cmp r8, r9
	blt label7
	b label5
label7:
	add r1, r6, #64
	sub r0, r4, #1
	cmp r4, #0
	ble label10
	mov r2, #1
	ldr r3, [r1, r2, lsl #2]
	str r3, [r5, r2, lsl #2]
	mov r3, #0
	str r3, [r7, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	blt label10
	ldr r3, [r1, r2, lsl #2]
	str r3, [r5, r2, lsl #2]
	mov r3, #0
	str r3, [r7, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	blt label10
	ldr r3, [r1, r2, lsl #2]
	str r3, [r5, r2, lsl #2]
	mov r3, #0
	str r3, [r7, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	blt label10
	ldr r3, [r1, r2, lsl #2]
	str r3, [r5, r2, lsl #2]
	mov r3, #0
	str r3, [r7, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	blt label10
	ldr r3, [r1, r2, lsl #2]
	str r3, [r5, r2, lsl #2]
	mov r3, #0
	str r3, [r7, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	blt label10
	ldr r3, [r1, r2, lsl #2]
	str r3, [r5, r2, lsl #2]
	mov r3, #0
	str r3, [r7, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	blt label10
	ldr r3, [r1, r2, lsl #2]
	str r3, [r5, r2, lsl #2]
	mov r3, #0
	str r3, [r7, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	blt label10
	ldr r3, [r1, r2, lsl #2]
	str r3, [r5, r2, lsl #2]
	mov r3, #0
	str r3, [r7, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	blt label10
	ldr r3, [r1, r2, lsl #2]
	str r3, [r5, r2, lsl #2]
	mov r3, #0
	str r3, [r7, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	blt label10
	b label387
label10:
	mov r1, #1
	str r1, [r7, #4]
	cmp r0, r1
	blt label29
	movw r8, #65535
	mov r2, #0
	mov r3, #1
	cmp r4, r3
	blt label21
	ldr r9, [r5, r3, lsl #2]
	cmp r8, r9
	ble label127
	ldr r10, [r7, r3, lsl #2]
	clz r10, r10
	lsr r10, r10, #5
	cmp r10, #0
	movne r2, r3
	movne r8, r9
	add r3, r3, #1
	cmp r4, r3
	blt label21
	ldr r9, [r5, r3, lsl #2]
	cmp r8, r9
	ble label127
	ldr r10, [r7, r3, lsl #2]
	clz r10, r10
	lsr r10, r10, #5
	cmp r10, #0
	movne r2, r3
	movne r8, r9
	add r3, r3, #1
	cmp r4, r3
	blt label21
	ldr r9, [r5, r3, lsl #2]
	cmp r8, r9
	ble label127
	ldr r10, [r7, r3, lsl #2]
	clz r10, r10
	lsr r10, r10, #5
	cmp r10, #0
	movne r2, r3
	movne r8, r9
	add r3, r3, #1
	cmp r4, r3
	blt label21
	ldr r9, [r5, r3, lsl #2]
	cmp r8, r9
	ble label127
	ldr r10, [r7, r3, lsl #2]
	clz r10, r10
	lsr r10, r10, #5
	cmp r10, #0
	movne r2, r3
	movne r8, r9
	add r3, r3, #1
	cmp r4, r3
	blt label21
	b label353
label237:
	mov r6, #1
	b label30
label353:
	ldr r9, [r5, r3, lsl #2]
	cmp r8, r9
	ble label127
	b label373
label29:
	cmp r4, #0
	ble label32
	b label237
label30:
	ldr r0, [r5, r6, lsl #2]
	bl putint
	mov r0, #32
	bl putch
	add r6, r6, #1
	cmp r4, r6
	blt label32
	b label30
label21:
	mov r3, #1
	str r3, [r7, r2, lsl #2]
	cmp r4, r3
	blt label24
	add r8, r6, r2, lsl #6
	movw r9, #65535
	ldr r8, [r8, r3, lsl #2]
	cmp r8, r9
	bge label26
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r5, r2, lsl #2]
	add r8, r8, r10
	cmp r9, r8
	ble label26
	str r8, [r5, r3, lsl #2]
	add r3, r3, #1
	cmp r4, r3
	blt label24
	add r8, r6, r2, lsl #6
	movw r9, #65535
	ldr r8, [r8, r3, lsl #2]
	cmp r8, r9
	bge label26
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r5, r2, lsl #2]
	add r8, r8, r10
	cmp r9, r8
	ble label26
	str r8, [r5, r3, lsl #2]
	add r3, r3, #1
	cmp r4, r3
	blt label24
	add r8, r6, r2, lsl #6
	movw r9, #65535
	ldr r8, [r8, r3, lsl #2]
	cmp r8, r9
	bge label26
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r5, r2, lsl #2]
	add r8, r8, r10
	cmp r9, r8
	ble label26
	str r8, [r5, r3, lsl #2]
	add r3, r3, #1
	cmp r4, r3
	blt label24
	b label358
label24:
	add r1, r1, #1
	cmp r0, r1
	blt label29
	movw r8, #65535
	mov r2, #0
	mov r3, #1
	cmp r4, r3
	blt label21
	ldr r9, [r5, r3, lsl #2]
	cmp r8, r9
	ble label127
	ldr r10, [r7, r3, lsl #2]
	clz r10, r10
	lsr r10, r10, #5
	cmp r10, #0
	movne r2, r3
	movne r8, r9
	add r3, r3, #1
	cmp r4, r3
	blt label21
	ldr r9, [r5, r3, lsl #2]
	cmp r8, r9
	ble label127
	ldr r10, [r7, r3, lsl #2]
	clz r10, r10
	lsr r10, r10, #5
	cmp r10, #0
	movne r2, r3
	movne r8, r9
	add r3, r3, #1
	cmp r4, r3
	blt label21
	ldr r9, [r5, r3, lsl #2]
	cmp r8, r9
	ble label127
	ldr r10, [r7, r3, lsl #2]
	clz r10, r10
	lsr r10, r10, #5
	cmp r10, #0
	movne r2, r3
	movne r8, r9
	add r3, r3, #1
	cmp r4, r3
	blt label21
	ldr r9, [r5, r3, lsl #2]
	cmp r8, r9
	ble label127
	ldr r10, [r7, r3, lsl #2]
	clz r10, r10
	lsr r10, r10, #5
	cmp r10, #0
	movne r2, r3
	movne r8, r9
	add r3, r3, #1
	cmp r4, r3
	blt label21
	b label353
label26:
	add r3, r3, #1
	cmp r4, r3
	blt label24
	add r8, r6, r2, lsl #6
	movw r9, #65535
	ldr r8, [r8, r3, lsl #2]
	cmp r8, r9
	bge label26
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r5, r2, lsl #2]
	add r8, r8, r10
	cmp r9, r8
	ble label26
	str r8, [r5, r3, lsl #2]
	add r3, r3, #1
	cmp r4, r3
	blt label24
	add r8, r6, r2, lsl #6
	movw r9, #65535
	ldr r8, [r8, r3, lsl #2]
	cmp r8, r9
	bge label26
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r5, r2, lsl #2]
	add r8, r8, r10
	cmp r9, r8
	ble label26
	str r8, [r5, r3, lsl #2]
	add r3, r3, #1
	cmp r4, r3
	blt label24
label358:
	add r8, r6, r2, lsl #6
	movw r9, #65535
	ldr r8, [r8, r3, lsl #2]
	cmp r8, r9
	bge label26
	b label378
label373:
	ldr r10, [r7, r3, lsl #2]
	clz r10, r10
	lsr r10, r10, #5
	cmp r10, #0
	movne r2, r3
	movne r8, r9
	add r3, r3, #1
	cmp r4, r3
	blt label21
	ldr r9, [r5, r3, lsl #2]
	cmp r8, r9
	ble label127
	b label373
label127:
	mov r10, #0
	cmp r10, #0
	movne r2, r3
	movne r8, r9
	add r3, r3, #1
	cmp r4, r3
	blt label21
	ldr r9, [r5, r3, lsl #2]
	cmp r8, r9
	ble label127
	ldr r10, [r7, r3, lsl #2]
	clz r10, r10
	lsr r10, r10, #5
	cmp r10, #0
	movne r2, r3
	movne r8, r9
	add r3, r3, #1
	cmp r4, r3
	blt label21
	ldr r9, [r5, r3, lsl #2]
	cmp r8, r9
	ble label127
	ldr r10, [r7, r3, lsl #2]
	clz r10, r10
	lsr r10, r10, #5
	cmp r10, #0
	movne r2, r3
	movne r8, r9
	add r3, r3, #1
	cmp r4, r3
	blt label21
	ldr r9, [r5, r3, lsl #2]
	cmp r8, r9
	ble label127
	ldr r10, [r7, r3, lsl #2]
	clz r10, r10
	lsr r10, r10, #5
	cmp r10, #0
	movne r2, r3
	movne r8, r9
	add r3, r3, #1
	cmp r4, r3
	blt label21
	b label353
label378:
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r5, r2, lsl #2]
	add r8, r8, r10
	cmp r9, r8
	ble label26
	str r8, [r5, r3, lsl #2]
	add r3, r3, #1
	cmp r4, r3
	blt label24
	b label358
label387:
	ldr r3, [r1, r2, lsl #2]
	str r3, [r5, r2, lsl #2]
	mov r3, #0
	str r3, [r7, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	blt label10
label8:
	ldr r3, [r1, r2, lsl #2]
	str r3, [r5, r2, lsl #2]
	mov r3, #0
	str r3, [r7, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	blt label10
	b label8
label32:
	mov r0, #10
	bl putch
	add sp, sp, #132
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
