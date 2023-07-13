.arch armv7ve
.data
.bss
.align 4
temp:
	.zero	8388608
.align 4
w:
	.zero	8388608
.align 4
dst:
	.zero	8388608
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #28
	bl getint
	str r0, [sp, #8]
	mov r9, r0
	movw r0, #:lower16:w
	movt r0, #:upper16:w
	mov r4, r0
	bl getarray
	mov r0, #62
	bl _sysy_starttime
	movw r11, #:lower16:temp
	mov r0, #0
	movw r2, #:lower16:dst
	movt r11, #:upper16:temp
	movt r2, #:upper16:dst
	str r2, [sp, #0]
	str r11, [sp, #4]
	ldr r9, [sp, #8]
	cmp r9, r0
	ble label52
	mov r1, #0
	mov r2, #0
	movwle r1, #1
	cmp r0, #0
	movwlt r2, #1
	cmp r9, #0
	orr r1, r1, r2
	ble label40
	b label200
label52:
	mov r4, #0
	str r4, [sp, #12]
label4:
	ldr r9, [sp, #8]
	mov r0, #0
	mov r1, #0
	ldr r4, [sp, #12]
	mul r11, r9, r4
	cmp r9, r4
	movwle r0, #1
	cmp r4, #0
	str r11, [sp, #16]
	movwlt r1, #1
	cmp r9, r4
	orr r0, r0, r1
	ble label27
	mov r1, #0
label6:
	cmp r1, #0
	mov r5, #0
	ldr r9, [sp, #8]
	mov r6, #0
	movwlt r5, #1
	ldr r4, [sp, #12]
	orr r2, r0, r5
	mla r4, r9, r1, r4
	mul r3, r9, r1
	cmp r9, r1
	movwle r6, #1
	orr r2, r2, r6
	orr r6, r5, r6
	ble label71
	mov r5, #0
	cmp r9, r5
	ble label75
	cmp r2, #0
	beq label24
	mvn r7, #0
	cmn r7, #1
	ble label23
	cmp r5, #0
	mov r8, #0
	mov r10, #0
	movwlt r8, #1
	orr r11, r0, r8
	cmp r9, r5
	movwle r10, #1
	orrs r9, r11, r10
	beq label22
	mvn r9, #0
	cmn r9, #1
	ble label23
	orr r8, r8, r10
	orrs r8, r6, r8
	beq label17
	mvn r8, #0
	cmp r8, #0
	bge label20
	add r8, r3, r5
	add r7, r7, r9
	ldr r11, [sp, #4]
	str r7, [r11, r8, lsl #2]
	add r5, r5, #1
	ldr r9, [sp, #8]
	cmp r9, r5
	ble label75
	cmp r2, #0
	beq label24
	b label230
label71:
	ldr r4, [sp, #12]
	add r4, r4, #1
	str r4, [sp, #12]
	b label4
label230:
	mvn r7, #0
	cmn r7, #1
	ble label23
	b label247
label27:
	ldr r9, [sp, #8]
	mul r4, r9, r9
	cmp r4, #0
	ble label28
	mov r0, #0
	add r1, r0, #4
	cmp r4, r1
	ble label31
	b label33
label247:
	cmp r5, #0
	mov r8, #0
	ldr r9, [sp, #8]
	mov r10, #0
	movwlt r8, #1
	orr r11, r0, r8
	cmp r9, r5
	movwle r10, #1
	orrs r9, r11, r10
	beq label22
	b label263
label75:
	add r1, r1, #1
	b label6
label20:
	add r8, r3, r5
	ldr r11, [sp, #4]
	add r10, r7, r9
	ldr r8, [r11, r8, lsl #2]
	cmp r8, r10
	ble label23
	add r8, r3, r5
	add r7, r7, r9
	str r7, [r11, r8, lsl #2]
	add r5, r5, #1
	ldr r9, [sp, #8]
	cmp r9, r5
	ble label75
	cmp r2, #0
	beq label24
	mvn r7, #0
	cmn r7, #1
	ble label23
	cmp r5, #0
	mov r8, #0
	mov r10, #0
	movwlt r8, #1
	orr r11, r0, r8
	cmp r9, r5
	movwle r10, #1
	orrs r9, r11, r10
	beq label22
	mvn r9, #0
	cmn r9, #1
	ble label23
	orr r8, r8, r10
	orrs r8, r6, r8
	beq label17
	mvn r8, #0
	cmp r8, #0
	bge label20
	add r8, r3, r5
	add r7, r7, r9
	ldr r11, [sp, #4]
	str r7, [r11, r8, lsl #2]
	add r5, r5, #1
	ldr r9, [sp, #8]
	cmp r9, r5
	ble label75
	cmp r2, #0
	beq label24
	b label339
label17:
	add r8, r3, r5
	ldr r11, [sp, #4]
	ldr r8, [r11, r8, lsl #2]
	cmp r8, #0
	bge label20
	add r8, r3, r5
	add r7, r7, r9
	str r7, [r11, r8, lsl #2]
	add r5, r5, #1
	ldr r9, [sp, #8]
	cmp r9, r5
	ble label75
	cmp r2, #0
	beq label24
	mvn r7, #0
	cmn r7, #1
	ble label23
	cmp r5, #0
	mov r8, #0
	mov r10, #0
	movwlt r8, #1
	orr r11, r0, r8
	cmp r9, r5
	movwle r10, #1
	orrs r9, r11, r10
	beq label22
	mvn r9, #0
	cmn r9, #1
	ble label23
	orr r8, r8, r10
	orrs r8, r6, r8
	beq label17
	mvn r8, #0
	cmp r8, #0
	bge label20
	add r8, r3, r5
	add r7, r7, r9
	ldr r11, [sp, #4]
	str r7, [r11, r8, lsl #2]
	add r5, r5, #1
	ldr r9, [sp, #8]
	cmp r9, r5
	ble label75
	cmp r2, #0
	beq label24
	b label339
label22:
	ldr r11, [sp, #16]
	add r9, r11, r5
	ldr r11, [sp, #4]
	ldr r9, [r11, r9, lsl #2]
	cmn r9, #1
	ble label23
	orr r8, r8, r10
	orrs r8, r6, r8
	beq label17
	mvn r8, #0
	cmp r8, #0
	bge label20
	add r8, r3, r5
	add r7, r7, r9
	str r7, [r11, r8, lsl #2]
	add r5, r5, #1
	ldr r9, [sp, #8]
	cmp r9, r5
	ble label75
	cmp r2, #0
	beq label24
	mvn r7, #0
	cmn r7, #1
	ble label23
	cmp r5, #0
	mov r8, #0
	mov r10, #0
	movwlt r8, #1
	orr r11, r0, r8
	cmp r9, r5
	movwle r10, #1
	orrs r9, r11, r10
	beq label22
	mvn r9, #0
	cmn r9, #1
	ble label23
	orr r8, r8, r10
	orrs r8, r6, r8
	beq label17
	mvn r8, #0
	cmp r8, #0
	bge label20
	b label308
label23:
	add r5, r5, #1
	ldr r9, [sp, #8]
	cmp r9, r5
	ble label75
	cmp r2, #0
	beq label24
	b label230
label308:
	add r8, r3, r5
	add r7, r7, r9
	ldr r11, [sp, #4]
	str r7, [r11, r8, lsl #2]
	add r5, r5, #1
	ldr r9, [sp, #8]
	cmp r9, r5
	ble label75
	b label323
label339:
	mvn r7, #0
	cmn r7, #1
	ble label23
	b label247
label323:
	cmp r2, #0
	beq label24
	b label339
label263:
	mvn r9, #0
	cmn r9, #1
	ble label23
label278:
	orr r8, r8, r10
	orrs r8, r6, r8
	beq label17
	b label293
label24:
	ldr r11, [sp, #4]
	ldr r7, [r11, r4, lsl #2]
	cmn r7, #1
	ble label23
	cmp r5, #0
	mov r8, #0
	ldr r9, [sp, #8]
	mov r10, #0
	movwlt r8, #1
	orr r11, r0, r8
	cmp r9, r5
	movwle r10, #1
	orrs r9, r11, r10
	beq label22
	mvn r9, #0
	cmn r9, #1
	ble label23
	orr r8, r8, r10
	orrs r8, r6, r8
	beq label17
	mvn r8, #0
	cmp r8, #0
	bge label20
	add r8, r3, r5
	add r7, r7, r9
	ldr r11, [sp, #4]
	str r7, [r11, r8, lsl #2]
	add r5, r5, #1
	ldr r9, [sp, #8]
	cmp r9, r5
	ble label75
	cmp r2, #0
	beq label24
	mvn r7, #0
	cmn r7, #1
	ble label23
	cmp r5, #0
	mov r8, #0
	mov r10, #0
	movwlt r8, #1
	orr r11, r0, r8
	cmp r9, r5
	movwle r10, #1
	orrs r9, r11, r10
	beq label22
	mvn r9, #0
	cmn r9, #1
	ble label23
	b label278
label293:
	mvn r8, #0
	cmp r8, #0
	bge label20
	b label308
label200:
	mov r2, #0
	b label35
label40:
	add r0, r0, #1
	ldr r9, [sp, #8]
	cmp r9, r0
	ble label52
	mov r1, #0
	mov r2, #0
	movwle r1, #1
	cmp r0, #0
	movwlt r2, #1
	cmp r9, #0
	orr r1, r1, r2
	ble label40
	b label200
label35:
	cmp r2, #0
	mov r3, #0
	ldr r9, [sp, #8]
	mov r5, #0
	movwlt r3, #1
	orr r3, r1, r3
	cmp r9, r2
	movwle r5, #1
	orrs r5, r3, r5
	mla r3, r9, r2, r0
	beq label37
	mvn r5, #0
	add r2, r2, #1
	ldr r11, [sp, #4]
	str r5, [r11, r3, lsl #2]
	cmp r9, r2
	ble label40
	b label35
label37:
	ldr r5, [r4, r3, lsl #2]
	add r2, r2, #1
	ldr r11, [sp, #4]
	str r5, [r11, r3, lsl #2]
	ldr r9, [sp, #8]
	cmp r9, r2
	ble label40
	b label35
label33:
	ldr r11, [sp, #4]
	ldr r6, [r11, r0, lsl #2]
	add r3, r11, r0, lsl #2
	ldr r2, [sp, #0]
	str r6, [r2, r0, lsl #2]
	add r5, r2, r0, lsl #2
	ldr r0, [r3, #4]
	str r0, [r5, #4]
	ldr r0, [r3, #8]
	str r0, [r5, #8]
	ldr r0, [r3, #12]
	str r0, [r5, #12]
	mov r0, r1
	add r1, r1, #4
	cmp r4, r1
	ble label31
	b label33
label31:
	ldr r11, [sp, #4]
	ldr r1, [r11, r0, lsl #2]
	ldr r2, [sp, #0]
	str r1, [r2, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label28
	b label31
label28:
	mov r0, #64
	bl _sysy_stoptime
	ldr r2, [sp, #0]
	mov r0, r4
	mov r1, r2
	bl putarray
	add sp, sp, #28
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
