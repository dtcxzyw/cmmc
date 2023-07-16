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
	sub sp, sp, #20
	bl getint
	str r0, [sp, #8]
	mov r8, r0
	movw r0, #:lower16:w
	movt r0, #:upper16:w
	mov r4, r0
	bl getarray
	mov r0, #62
	bl _sysy_starttime
	mov r0, #0
	movw r11, #:lower16:temp
	movw r2, #:lower16:dst
	movt r11, #:upper16:temp
	movt r2, #:upper16:dst
	str r2, [sp, #0]
	str r11, [sp, #4]
	ldr r8, [sp, #8]
	cmp r8, r0
	ble label52
	cmp r0, #0
	mov r1, #0
	movwlt r1, #1
	cmp r8, #0
	ble label10
	b label194
label52:
	mov r5, #0
	str r5, [sp, #12]
label11:
	ldr r8, [sp, #8]
	mov r0, #0
	mov r1, #0
	ldr r5, [sp, #12]
	cmp r8, r5
	movwle r0, #1
	cmp r5, #0
	movwlt r1, #1
	cmp r8, r5
	orr r0, r0, r1
	mul r1, r8, r5
	ble label13
	mov r2, #0
	b label20
label13:
	ldr r8, [sp, #8]
	mul r4, r8, r8
	cmp r4, #0
	ble label14
	mov r0, #0
	add r1, r0, #4
	cmp r4, r1
	ble label18
label17:
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
	ble label18
	b label17
label20:
	cmp r2, #0
	mov r6, #0
	ldr r8, [sp, #8]
	mov r7, #0
	movwlt r6, #1
	ldr r5, [sp, #12]
	orr r3, r0, r6
	mla r5, r8, r2, r5
	mul r4, r8, r2
	cmp r8, r2
	movwle r7, #1
	orr r6, r6, r7
	orr r3, r3, r7
	ble label129
	mov r7, #0
	cmp r8, r7
	ble label133
	cmp r3, #0
	beq label38
	mvn r8, #0
	cmn r8, #1
	ble label37
	cmp r7, #0
	mov r10, #0
	movwlt r10, #1
	orrs r9, r0, r10
	beq label36
	mvn r9, #0
	cmn r9, #1
	ble label37
	orrs r10, r6, r10
	beq label31
	mvn r10, #0
	cmp r10, #0
	bge label34
	add r10, r4, r7
	add r8, r8, r9
	ldr r11, [sp, #4]
	str r8, [r11, r10, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label133
	cmp r3, #0
	beq label38
	b label226
label36:
	add r9, r1, r7
	ldr r11, [sp, #4]
	ldr r9, [r11, r9, lsl #2]
	cmn r9, #1
	ble label37
	orrs r10, r6, r10
	beq label31
	mvn r10, #0
	cmp r10, #0
	bge label34
	add r10, r4, r7
	add r8, r8, r9
	str r8, [r11, r10, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label133
	cmp r3, #0
	beq label38
	mvn r8, #0
	cmn r8, #1
	ble label37
	cmp r7, #0
	mov r10, #0
	movwlt r10, #1
	orrs r9, r0, r10
	beq label36
	mvn r9, #0
	cmn r9, #1
	ble label37
	orrs r10, r6, r10
	beq label31
	mvn r10, #0
	cmp r10, #0
	bge label34
	b label307
label226:
	mvn r8, #0
	cmn r8, #1
	ble label37
label243:
	cmp r7, #0
	mov r10, #0
	movwlt r10, #1
	orrs r9, r0, r10
	beq label36
	b label259
label34:
	add r10, r4, r7
	ldr r11, [sp, #4]
	ldr r10, [r11, r10, lsl #2]
	add r11, r8, r9
	cmp r10, r11
	ble label37
	add r10, r4, r7
	add r8, r8, r9
	ldr r11, [sp, #4]
	str r8, [r11, r10, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label133
	cmp r3, #0
	beq label38
	mvn r8, #0
	cmn r8, #1
	ble label37
	cmp r7, #0
	mov r10, #0
	movwlt r10, #1
	orrs r9, r0, r10
	beq label36
	mvn r9, #0
	cmn r9, #1
	ble label37
	orrs r10, r6, r10
	beq label31
	mvn r10, #0
	cmp r10, #0
	bge label34
	add r10, r4, r7
	add r8, r8, r9
	str r8, [r11, r10, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label133
	cmp r3, #0
	beq label38
	b label340
label323:
	cmp r3, #0
	beq label38
	b label340
label133:
	add r2, r2, #1
	b label20
label31:
	add r10, r4, r7
	ldr r11, [sp, #4]
	ldr r10, [r11, r10, lsl #2]
	cmp r10, #0
	bge label34
	add r10, r4, r7
	add r8, r8, r9
	str r8, [r11, r10, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label133
	cmp r3, #0
	beq label38
	mvn r8, #0
	cmn r8, #1
	ble label37
	cmp r7, #0
	mov r10, #0
	movwlt r10, #1
	orrs r9, r0, r10
	beq label36
	mvn r9, #0
	cmn r9, #1
	ble label37
	orrs r10, r6, r10
	beq label31
	mvn r10, #0
	cmp r10, #0
	bge label34
	add r10, r4, r7
	add r8, r8, r9
	str r8, [r11, r10, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label133
	cmp r3, #0
	beq label38
	b label340
label37:
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label133
	cmp r3, #0
	beq label38
	b label226
label340:
	mvn r8, #0
	cmn r8, #1
	ble label37
	b label243
label259:
	mvn r9, #0
	cmn r9, #1
	ble label37
	b label275
label38:
	ldr r11, [sp, #4]
	ldr r8, [r11, r5, lsl #2]
	cmn r8, #1
	ble label37
	cmp r7, #0
	mov r10, #0
	movwlt r10, #1
	orrs r9, r0, r10
	beq label36
	mvn r9, #0
	cmn r9, #1
	ble label37
	orrs r10, r6, r10
	beq label31
	mvn r10, #0
	cmp r10, #0
	bge label34
	add r10, r4, r7
	add r8, r8, r9
	str r8, [r11, r10, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label133
	cmp r3, #0
	beq label38
	mvn r8, #0
	cmn r8, #1
	ble label37
	cmp r7, #0
	mov r10, #0
	movwlt r10, #1
	orrs r9, r0, r10
	beq label36
	mvn r9, #0
	cmn r9, #1
	ble label37
label275:
	orrs r10, r6, r10
	beq label31
	mvn r10, #0
	cmp r10, #0
	bge label34
label307:
	add r10, r4, r7
	add r8, r8, r9
	ldr r11, [sp, #4]
	str r8, [r11, r10, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label133
	b label323
label194:
	mov r2, #0
label5:
	cmp r2, #0
	mov r3, #0
	ldr r8, [sp, #8]
	mov r5, #0
	movwlt r3, #1
	orr r3, r1, r3
	cmp r8, r2
	movwle r5, #1
	orrs r3, r3, r5
	mla r3, r8, r2, r0
	beq label7
	mvn r5, #0
	add r2, r2, #1
	ldr r11, [sp, #4]
	str r5, [r11, r3, lsl #2]
	cmp r8, r2
	ble label10
	b label5
label7:
	ldr r5, [r4, r3, lsl #2]
	add r2, r2, #1
	ldr r11, [sp, #4]
	str r5, [r11, r3, lsl #2]
	ldr r8, [sp, #8]
	cmp r8, r2
	ble label10
	b label5
label129:
	ldr r5, [sp, #12]
	add r5, r5, #1
	str r5, [sp, #12]
	b label11
label10:
	add r0, r0, #1
	ldr r8, [sp, #8]
	cmp r8, r0
	ble label52
	cmp r0, #0
	mov r1, #0
	movwlt r1, #1
	cmp r8, #0
	ble label10
	b label194
label18:
	ldr r11, [sp, #4]
	ldr r1, [r11, r0, lsl #2]
	ldr r2, [sp, #0]
	str r1, [r2, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label14
	b label18
label14:
	mov r0, #64
	bl _sysy_stoptime
	ldr r2, [sp, #0]
	mov r0, r4
	mov r1, r2
	bl putarray
	add sp, sp, #20
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
