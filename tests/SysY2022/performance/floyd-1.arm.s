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
	mov r0, #0
	movw r10, #:lower16:temp
	movw r1, #:lower16:dst
	movt r10, #:upper16:temp
	movt r1, #:upper16:dst
	str r1, [sp, #0]
	str r10, [sp, #4]
	ldr r9, [sp, #8]
	cmp r9, r0
	ble label69
	mov r1, #0
	mov r2, #0
	movwle r1, #1
	cmp r0, #0
	movwlt r2, #1
	cmp r9, #0
	orr r1, r1, r2
	ble label10
	b label300
label69:
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
	ble label42
	mov r3, #0
label13:
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
	ble label114
	mov r0, #0
	cmp r9, r0
	ble label17
	cmp r4, #0
	beq label40
	mvn r8, #0
	cmn r8, #1
	ble label126
	cmp r0, #0
	mov r9, #0
	movwlt r9, #1
	orr r10, r1, r9
	ldr r9, [sp, #8]
	cmp r9, r0
	mov r9, #0
	movwle r9, #1
	orrs r9, r10, r9
	beq label22
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label27
	cmp r0, #0
	mov r9, #0
	movwlt r9, #1
	orr r10, r7, r9
	ldr r9, [sp, #8]
	cmp r9, r0
	mov r9, #0
	movwle r9, #1
	orrs r9, r10, r9
	beq label39
	mvn r9, #0
	cmp r9, #0
	bge label31
	b label35
label17:
	add r3, r3, #1
	b label13
label40:
	ldr r10, [sp, #4]
	ldr r8, [r10, r6, lsl #2]
	cmn r8, #1
	ble label126
	cmp r0, #0
	mov r9, #0
	movwlt r9, #1
	orr r10, r1, r9
	ldr r9, [sp, #8]
	cmp r9, r0
	mov r9, #0
	movwle r9, #1
	orrs r9, r10, r9
	beq label22
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label27
	cmp r0, #0
	mov r9, #0
	movwlt r9, #1
	orr r10, r7, r9
	ldr r9, [sp, #8]
	cmp r9, r0
	mov r9, #0
	movwle r9, #1
	orrs r9, r10, r9
	beq label39
	mvn r9, #0
	cmp r9, #0
	bge label31
	b label35
label42:
	ldr r9, [sp, #8]
	mul r4, r9, r9
	cmp r4, #0
	ble label57
	mov r0, #0
	add r2, r0, #4
	cmp r4, r2
	ble label46
	b label45
label46:
	add r2, r0, #4
	cmp r4, r2
	ble label49
	b label48
label27:
	add r0, r0, #1
	ldr r9, [sp, #8]
	cmp r9, r0
	ble label17
	cmp r4, #0
	beq label40
	mvn r8, #0
	cmn r8, #1
	ble label126
	cmp r0, #0
	mov r9, #0
	movwlt r9, #1
	orr r10, r1, r9
	ldr r9, [sp, #8]
	cmp r9, r0
	mov r9, #0
	movwle r9, #1
	orrs r9, r10, r9
	beq label22
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label27
	cmp r0, #0
	mov r9, #0
	movwlt r9, #1
	orr r10, r7, r9
	ldr r9, [sp, #8]
	cmp r9, r0
	mov r9, #0
	movwle r9, #1
	orrs r9, r10, r9
	beq label39
	mvn r9, #0
	cmp r9, #0
	bge label31
	b label35
label126:
	mov r9, #0
	cmp r9, #0
	beq label27
	cmp r0, #0
	movwlt r9, #1
	orr r10, r7, r9
	ldr r9, [sp, #8]
	cmp r9, r0
	mov r9, #0
	movwle r9, #1
	orrs r9, r10, r9
	beq label39
	mvn r9, #0
	cmp r9, #0
	bge label31
	b label35
label22:
	add r9, r2, r0
	ldr r10, [sp, #4]
	ldr r9, [r10, r9, lsl #2]
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label27
	cmp r0, #0
	mov r9, #0
	movwlt r9, #1
	orr r10, r7, r9
	ldr r9, [sp, #8]
	cmp r9, r0
	mov r9, #0
	movwle r9, #1
	orrs r9, r10, r9
	beq label39
	mvn r9, #0
	cmp r9, #0
	bge label31
	b label35
label39:
	add r9, r5, r0
	ldr r10, [sp, #4]
	ldr r9, [r10, r9, lsl #2]
	cmp r9, #0
	bge label31
label35:
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
	beq label36
	mvn r10, #0
	add r8, r8, r10
	ldr r10, [sp, #4]
	str r8, [r10, r9, lsl #2]
	add r0, r0, #1
	ldr r9, [sp, #8]
	cmp r9, r0
	ble label17
	cmp r4, #0
	beq label40
	mvn r8, #0
	cmn r8, #1
	ble label126
	cmp r0, #0
	mov r9, #0
	movwlt r9, #1
	orr r10, r1, r9
	ldr r9, [sp, #8]
	cmp r9, r0
	mov r9, #0
	movwle r9, #1
	orrs r9, r10, r9
	beq label22
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label27
	cmp r0, #0
	mov r9, #0
	movwlt r9, #1
	orr r10, r7, r9
	ldr r9, [sp, #8]
	cmp r9, r0
	mov r9, #0
	movwle r9, #1
	orrs r9, r10, r9
	beq label39
	mvn r9, #0
	cmp r9, #0
	bge label31
	b label35
label36:
	add r11, r2, r0
	ldr r10, [sp, #4]
	ldr r10, [r10, r11, lsl #2]
	add r8, r8, r10
	ldr r10, [sp, #4]
	str r8, [r10, r9, lsl #2]
	add r0, r0, #1
	ldr r9, [sp, #8]
	cmp r9, r0
	ble label17
	cmp r4, #0
	beq label40
	mvn r8, #0
	cmn r8, #1
	ble label126
	cmp r0, #0
	mov r9, #0
	movwlt r9, #1
	orr r10, r1, r9
	ldr r9, [sp, #8]
	cmp r9, r0
	mov r9, #0
	movwle r9, #1
	orrs r9, r10, r9
	beq label22
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label27
	cmp r0, #0
	mov r9, #0
	movwlt r9, #1
	orr r10, r7, r9
	ldr r9, [sp, #8]
	cmp r9, r0
	mov r9, #0
	movwle r9, #1
	orrs r9, r10, r9
	beq label39
	mvn r9, #0
	cmp r9, #0
	bge label31
	b label35
label31:
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
	beq label32
	mvn r10, #0
	add r10, r8, r10
	cmp r9, r10
	ble label27
	b label35
label32:
	add r11, r2, r0
	ldr r10, [sp, #4]
	ldr r10, [r10, r11, lsl #2]
	add r10, r8, r10
	cmp r9, r10
	ble label27
	b label35
label300:
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
label114:
	ldr r6, [sp, #12]
	add r6, r6, #1
	str r6, [sp, #12]
	b label11
label10:
	add r0, r0, #1
	ldr r9, [sp, #8]
	cmp r9, r0
	ble label69
	mov r1, #0
	mov r2, #0
	movwle r1, #1
	cmp r0, #0
	movwlt r2, #1
	cmp r9, #0
	orr r1, r1, r2
	ble label10
	b label300
label45:
	ldr r10, [sp, #4]
	ldr r6, [r10, r0, lsl #2]
	add r3, r10, r0, lsl #2
	ldr r1, [sp, #0]
	str r6, [r1, r0, lsl #2]
	add r5, r1, r0, lsl #2
	ldr r0, [r3, #4]
	str r0, [r5, #4]
	ldr r0, [r3, #8]
	str r0, [r5, #8]
	ldr r0, [r3, #12]
	str r0, [r5, #12]
	mov r0, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	b label45
label48:
	ldr r10, [sp, #4]
	ldr r6, [r10, r0, lsl #2]
	add r3, r10, r0, lsl #2
	ldr r1, [sp, #0]
	str r6, [r1, r0, lsl #2]
	add r5, r1, r0, lsl #2
	ldr r0, [r3, #4]
	str r0, [r5, #4]
	ldr r0, [r3, #8]
	str r0, [r5, #8]
	ldr r0, [r3, #12]
	str r0, [r5, #12]
	mov r0, r2
	add r2, r2, #4
	cmp r4, r2
	ble label49
	b label48
label49:
	add r2, r0, #4
	cmp r4, r2
	ble label52
label51:
	ldr r10, [sp, #4]
	ldr r6, [r10, r0, lsl #2]
	add r3, r10, r0, lsl #2
	ldr r1, [sp, #0]
	str r6, [r1, r0, lsl #2]
	add r5, r1, r0, lsl #2
	ldr r0, [r3, #4]
	str r0, [r5, #4]
	ldr r0, [r3, #8]
	str r0, [r5, #8]
	ldr r0, [r3, #12]
	str r0, [r5, #12]
	mov r0, r2
	add r2, r2, #4
	cmp r4, r2
	ble label52
	b label51
label52:
	add r2, r0, #4
	cmp r4, r2
	ble label55
label54:
	ldr r10, [sp, #4]
	ldr r6, [r10, r0, lsl #2]
	add r3, r10, r0, lsl #2
	ldr r1, [sp, #0]
	str r6, [r1, r0, lsl #2]
	add r5, r1, r0, lsl #2
	ldr r0, [r3, #4]
	str r0, [r5, #4]
	ldr r0, [r3, #8]
	str r0, [r5, #8]
	ldr r0, [r3, #12]
	str r0, [r5, #12]
	mov r0, r2
	add r2, r2, #4
	cmp r4, r2
	ble label55
	b label54
label55:
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label57
	ldr r2, [r10, r0, lsl #2]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label57
	ldr r2, [r10, r0, lsl #2]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label57
	ldr r2, [r10, r0, lsl #2]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label57
	ldr r2, [r10, r0, lsl #2]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label57
	ldr r2, [r10, r0, lsl #2]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label57
	ldr r2, [r10, r0, lsl #2]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label57
	ldr r2, [r10, r0, lsl #2]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label57
	ldr r2, [r10, r0, lsl #2]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label57
	ldr r2, [r10, r0, lsl #2]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label57
label399:
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label57
	b label399
label57:
	mov r0, #64
	bl _sysy_stoptime
	ldr r1, [sp, #0]
	mov r0, r4
	bl putarray
	add sp, sp, #20
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
