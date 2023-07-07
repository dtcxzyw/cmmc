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
	mov r9, r0
	movw r0, #:lower16:w
	movt r0, #:upper16:w
	mov r4, r0
	bl getarray
	mov r0, #62
	bl _sysy_starttime
	movw r10, #:lower16:temp
	mov r0, #0
	movw r2, #:lower16:dst
	movt r10, #:upper16:temp
	movt r2, #:upper16:dst
	str r2, [sp, #0]
	str r10, [sp, #4]
	ldr r9, [sp, #8]
	cmp r9, r0
	ble label60
	mov r1, #0
	mov r2, #0
	movwle r1, #1
	cmp r0, #0
	movwlt r2, #1
	cmp r9, #0
	orr r1, r1, r2
	ble label10
	b label234
label60:
	mov r6, #0
	str r6, [sp, #12]
label11:
	ldr r9, [sp, #8]
	mov r0, #0
	mov r1, #0
	ldr r6, [sp, #12]
	mul r2, r9, r6
	cmp r9, r6
	movwle r0, #1
	cmp r6, #0
	movwlt r1, #1
	cmp r9, r6
	orr r1, r0, r1
	ble label13
	mov r3, #0
	b label20
label13:
	ldr r9, [sp, #8]
	mul r4, r9, r9
	cmp r4, #0
	ble label14
	mov r0, #0
	add r1, r0, #4
	cmp r4, r1
	ble label17
label19:
	ldr r10, [sp, #4]
	ldr r6, [r10, r0, lsl #2]
	add r3, r10, r0, lsl #2
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
	ble label17
	b label19
label20:
	cmp r3, #0
	mov r0, #0
	ldr r9, [sp, #8]
	mov r7, #0
	movwlt r0, #1
	ldr r6, [sp, #12]
	orr r4, r1, r0
	mla r6, r9, r3, r6
	mul r5, r9, r3
	cmp r9, r3
	movwle r7, #1
	orr r4, r4, r7
	orr r7, r0, r7
	ble label22
	mov r0, #0
	cmp r9, r0
	ble label144
	cmp r4, #0
	beq label26
	mvn r8, #0
	cmn r8, #1
	ble label154
	cmp r0, #0
	mov r9, #0
	movwlt r9, #1
	orr r10, r1, r9
	ldr r9, [sp, #8]
	cmp r9, r0
	mov r9, #0
	movwle r9, #1
	orrs r9, r10, r9
	beq label45
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label31
	cmp r0, #0
	mov r9, #0
	movwlt r9, #1
	orr r10, r7, r9
	ldr r9, [sp, #8]
	cmp r9, r0
	mov r9, #0
	movwle r9, #1
	orrs r9, r10, r9
	beq label33
	mvn r9, #0
	cmp r9, #0
	bge label36
	b label40
label26:
	ldr r10, [sp, #4]
	ldr r8, [r10, r6, lsl #2]
	cmn r8, #1
	ble label154
	cmp r0, #0
	mov r9, #0
	movwlt r9, #1
	orr r10, r1, r9
	ldr r9, [sp, #8]
	cmp r9, r0
	mov r9, #0
	movwle r9, #1
	orrs r9, r10, r9
	beq label45
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label31
	cmp r0, #0
	mov r9, #0
	movwlt r9, #1
	orr r10, r7, r9
	ldr r9, [sp, #8]
	cmp r9, r0
	mov r9, #0
	movwle r9, #1
	orrs r9, r10, r9
	beq label33
	mvn r9, #0
	cmp r9, #0
	bge label36
	b label40
label154:
	mov r9, #0
	cmp r9, #0
	beq label31
	cmp r0, #0
	movwlt r9, #1
	orr r10, r7, r9
	ldr r9, [sp, #8]
	cmp r9, r0
	mov r9, #0
	movwle r9, #1
	orrs r9, r10, r9
	beq label33
	mvn r9, #0
	cmp r9, #0
	bge label36
	b label40
label33:
	add r9, r5, r0
	ldr r10, [sp, #4]
	ldr r9, [r10, r9, lsl #2]
	cmp r9, #0
	bge label36
	b label40
label36:
	cmp r0, #0
	mov r9, #0
	movwlt r9, #1
	orr r10, r1, r9
	ldr r9, [sp, #8]
	cmp r9, r0
	mov r9, #0
	movwle r9, #1
	orr r11, r10, r9
	ldr r10, [sp, #4]
	cmp r11, #0
	add r9, r5, r0
	ldr r9, [r10, r9, lsl #2]
	beq label39
	mvn r10, #0
	add r10, r8, r10
	cmp r9, r10
	ble label31
	b label40
label39:
	add r11, r2, r0
	ldr r10, [sp, #4]
	ldr r10, [r10, r11, lsl #2]
	add r10, r8, r10
	cmp r9, r10
	ble label31
label40:
	cmp r0, #0
	mov r9, #0
	movwlt r9, #1
	orr r10, r1, r9
	ldr r9, [sp, #8]
	cmp r9, r0
	mov r9, #0
	movwle r9, #1
	orrs r10, r10, r9
	add r9, r5, r0
	beq label43
	mvn r10, #0
	add r8, r8, r10
	ldr r10, [sp, #4]
	str r8, [r10, r9, lsl #2]
	add r0, r0, #1
	ldr r9, [sp, #8]
	cmp r9, r0
	ble label144
	cmp r4, #0
	beq label26
	mvn r8, #0
	cmn r8, #1
	ble label154
	cmp r0, #0
	mov r9, #0
	movwlt r9, #1
	orr r10, r1, r9
	ldr r9, [sp, #8]
	cmp r9, r0
	mov r9, #0
	movwle r9, #1
	orrs r9, r10, r9
	beq label45
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label31
	cmp r0, #0
	mov r9, #0
	movwlt r9, #1
	orr r10, r7, r9
	ldr r9, [sp, #8]
	cmp r9, r0
	mov r9, #0
	movwle r9, #1
	orrs r9, r10, r9
	beq label33
	mvn r9, #0
	cmp r9, #0
	bge label36
	b label40
label43:
	add r11, r2, r0
	ldr r10, [sp, #4]
	ldr r10, [r10, r11, lsl #2]
	add r8, r8, r10
	ldr r10, [sp, #4]
	str r8, [r10, r9, lsl #2]
	add r0, r0, #1
	ldr r9, [sp, #8]
	cmp r9, r0
	ble label144
	cmp r4, #0
	beq label26
	mvn r8, #0
	cmn r8, #1
	ble label154
	cmp r0, #0
	mov r9, #0
	movwlt r9, #1
	orr r10, r1, r9
	ldr r9, [sp, #8]
	cmp r9, r0
	mov r9, #0
	movwle r9, #1
	orrs r9, r10, r9
	beq label45
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label31
	cmp r0, #0
	mov r9, #0
	movwlt r9, #1
	orr r10, r7, r9
	ldr r9, [sp, #8]
	cmp r9, r0
	mov r9, #0
	movwle r9, #1
	orrs r9, r10, r9
	beq label33
	mvn r9, #0
	cmp r9, #0
	bge label36
	b label40
label31:
	add r0, r0, #1
	ldr r9, [sp, #8]
	cmp r9, r0
	ble label144
	cmp r4, #0
	beq label26
	mvn r8, #0
	cmn r8, #1
	ble label154
	cmp r0, #0
	mov r9, #0
	movwlt r9, #1
	orr r10, r1, r9
	ldr r9, [sp, #8]
	cmp r9, r0
	mov r9, #0
	movwle r9, #1
	orrs r9, r10, r9
	beq label45
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label31
	cmp r0, #0
	mov r9, #0
	movwlt r9, #1
	orr r10, r7, r9
	ldr r9, [sp, #8]
	cmp r9, r0
	mov r9, #0
	movwle r9, #1
	orrs r9, r10, r9
	beq label33
	mvn r9, #0
	cmp r9, #0
	bge label36
	b label40
label45:
	add r9, r2, r0
	ldr r10, [sp, #4]
	ldr r9, [r10, r9, lsl #2]
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label31
	cmp r0, #0
	mov r9, #0
	movwlt r9, #1
	orr r10, r7, r9
	ldr r9, [sp, #8]
	cmp r9, r0
	mov r9, #0
	movwle r9, #1
	orrs r9, r10, r9
	beq label33
	mvn r9, #0
	cmp r9, #0
	bge label36
	b label40
label144:
	add r3, r3, #1
	b label20
label234:
	mov r2, #0
label5:
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
	beq label7
	mvn r5, #0
	add r2, r2, #1
	ldr r10, [sp, #4]
	str r5, [r10, r3, lsl #2]
	cmp r9, r2
	ble label10
	b label5
label7:
	ldr r5, [r4, r3, lsl #2]
	add r2, r2, #1
	ldr r10, [sp, #4]
	str r5, [r10, r3, lsl #2]
	ldr r9, [sp, #8]
	cmp r9, r2
	ble label10
	b label5
label22:
	ldr r6, [sp, #12]
	add r6, r6, #1
	str r6, [sp, #12]
	b label11
label17:
	ldr r10, [sp, #4]
	ldr r1, [r10, r0, lsl #2]
	ldr r2, [sp, #0]
	str r1, [r2, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label14
	ldr r1, [r10, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label14
	ldr r1, [r10, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label14
	ldr r1, [r10, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label14
	ldr r1, [r10, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label14
	ldr r1, [r10, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label14
	ldr r1, [r10, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label14
	ldr r1, [r10, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label14
	ldr r1, [r10, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label14
	ldr r1, [r10, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label14
label318:
	ldr r10, [sp, #4]
	ldr r1, [r10, r0, lsl #2]
	ldr r2, [sp, #0]
	str r1, [r2, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label14
	b label318
label10:
	add r0, r0, #1
	ldr r9, [sp, #8]
	cmp r9, r0
	ble label60
	mov r1, #0
	mov r2, #0
	movwle r1, #1
	cmp r0, #0
	movwlt r2, #1
	cmp r9, #0
	orr r1, r1, r2
	ble label10
	b label234
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
