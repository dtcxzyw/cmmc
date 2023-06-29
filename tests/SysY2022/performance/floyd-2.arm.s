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
	mov r10, r0
	str r0, [sp, #8]
	movw r0, #:lower16:w
	movt r0, #:upper16:w
	mov r4, r0
	bl getarray
	mov r0, #62
	bl _sysy_starttime
	movw r1, #:lower16:dst
	movt r1, #:upper16:dst
	str r1, [sp, #0]
	movw r10, #:lower16:temp
	movt r10, #:upper16:temp
	str r10, [sp, #4]
	mov r0, #0
	ldr r10, [sp, #8]
	cmp r0, r10
	bge label75
	ldr r10, [sp, #8]
	cmp r0, r10
	mov r1, #0
	movwge r1, #1
	cmp r0, #0
	mov r2, #0
	movwlt r2, #1
	orr r1, r1, r2
	cmp r10, #0
	ble label5
	b label320
label75:
	mov r0, #0
	str r0, [sp, #12]
label11:
	ldr r0, [sp, #12]
	cmp r0, #0
	mov r1, #0
	movwlt r1, #1
	ldr r10, [sp, #8]
	cmp r0, r10
	mov r2, #0
	movwge r2, #1
	orr r1, r1, r2
	mul r2, r10, r0
	bge label48
	mov r3, #0
label13:
	cmp r3, #0
	mov r0, #0
	movwlt r0, #1
	orr r4, r1, r0
	ldr r10, [sp, #8]
	cmp r3, r10
	mov r5, #0
	movwge r5, #1
	orr r4, r4, r5
	orr r6, r0, r5
	mul r5, r10, r3
	ldr r0, [sp, #12]
	mla r7, r10, r3, r0
	bge label120
	mov r0, #0
	ldr r10, [sp, #8]
	cmp r0, r10
	bge label17
	cmp r4, #0
	beq label46
	mvn r8, #0
	cmn r8, #1
	ble label132
	b label21
label132:
	mov r8, #0
	cmp r8, #0
	beq label27
label28:
	cmp r0, #0
	mov r8, #0
	movwlt r8, #1
	orr r8, r6, r8
	ldr r10, [sp, #8]
	cmp r0, r10
	mov r9, #0
	movwge r9, #1
	orr r8, r8, r9
	cmp r8, #0
	beq label29
	mvn r8, #0
	cmp r8, #0
	bge label32
	add r8, r0, r5
	cmp r4, #0
	beq label40
	b label353
label29:
	add r8, r0, r5
	ldr r10, [sp, #4]
	ldr r8, [r10, r8, lsl #2]
	cmp r8, #0
	bge label32
	add r8, r0, r5
	cmp r4, #0
	beq label40
	b label353
label32:
	add r8, r0, r5
	ldr r10, [sp, #4]
	ldr r8, [r10, r8, lsl #2]
	cmp r4, #0
	beq label33
	mvn r9, #0
	b label34
label33:
	ldr r10, [sp, #4]
	ldr r9, [r10, r7, lsl #2]
label34:
	cmp r0, #0
	mov r10, #0
	movwlt r10, #1
	orr r11, r1, r10
	ldr r10, [sp, #8]
	cmp r0, r10
	mov r10, #0
	movwge r10, #1
	orr r10, r11, r10
	cmp r10, #0
	beq label36
	mvn r10, #0
	add r9, r9, r10
	cmp r8, r9
	ble label27
	add r8, r0, r5
	cmp r4, #0
	beq label40
	b label353
label40:
	ldr r10, [sp, #4]
	ldr r9, [r10, r7, lsl #2]
	b label41
label46:
	ldr r10, [sp, #4]
	ldr r8, [r10, r7, lsl #2]
	cmn r8, #1
	ble label132
	b label21
label48:
	ldr r10, [sp, #8]
	mul r4, r10, r10
	cmp r4, #0
	ble label49
	mov r0, #0
	add r2, r0, #4
	cmp r2, r4
	bge label53
	b label52
label53:
	add r2, r0, #4
	cmp r2, r4
	bge label56
	b label55
label56:
	add r2, r0, #4
	cmp r2, r4
	bge label59
	b label58
label27:
	add r0, r0, #1
	ldr r10, [sp, #8]
	cmp r0, r10
	bge label17
	cmp r4, #0
	beq label46
	mvn r8, #0
	cmn r8, #1
	ble label132
label21:
	cmp r0, #0
	mov r8, #0
	movwlt r8, #1
	orr r8, r1, r8
	ldr r10, [sp, #8]
	cmp r0, r10
	mov r9, #0
	movwge r9, #1
	orr r8, r8, r9
	cmp r8, #0
	beq label22
	mvn r8, #0
	cmp r8, #0
	mov r8, #0
	movwge r8, #1
	cmp r8, #0
	beq label27
	b label28
label22:
	add r8, r0, r2
	ldr r10, [sp, #4]
	ldr r8, [r10, r8, lsl #2]
	cmp r8, #0
	mov r8, #0
	movwge r8, #1
	cmp r8, #0
	beq label27
	b label28
label353:
	mvn r9, #0
label41:
	cmp r0, #0
	mov r10, #0
	movwlt r10, #1
	orr r11, r1, r10
	ldr r10, [sp, #8]
	cmp r0, r10
	mov r10, #0
	movwge r10, #1
	orr r10, r11, r10
	cmp r10, #0
	beq label43
	mvn r10, #0
	add r9, r9, r10
	ldr r10, [sp, #4]
	str r9, [r10, r8, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #8]
	cmp r0, r10
	bge label17
	cmp r4, #0
	beq label46
	mvn r8, #0
	cmn r8, #1
	ble label132
	b label21
label43:
	add r11, r0, r2
	ldr r10, [sp, #4]
	ldr r10, [r10, r11, lsl #2]
	add r9, r9, r10
	ldr r10, [sp, #4]
	str r9, [r10, r8, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #8]
	cmp r0, r10
	bge label17
	cmp r4, #0
	beq label46
	mvn r8, #0
	cmn r8, #1
	ble label132
	b label21
label36:
	add r11, r0, r2
	ldr r10, [sp, #4]
	ldr r10, [r10, r11, lsl #2]
	add r9, r9, r10
	cmp r8, r9
	ble label27
	add r8, r0, r5
	cmp r4, #0
	beq label40
	b label353
label17:
	add r3, r3, #1
	b label13
label320:
	mov r2, #0
label6:
	cmp r2, #0
	mov r3, #0
	movwlt r3, #1
	orr r3, r1, r3
	ldr r10, [sp, #8]
	cmp r2, r10
	mov r5, #0
	movwge r5, #1
	orr r5, r3, r5
	mla r3, r10, r2, r0
	cmp r5, #0
	beq label8
	mvn r5, #0
	ldr r10, [sp, #4]
	str r5, [r10, r3, lsl #2]
	add r2, r2, #1
	ldr r10, [sp, #8]
	cmp r2, r10
	bge label5
	b label6
label8:
	ldr r5, [r4, r3, lsl #2]
	ldr r10, [sp, #4]
	str r5, [r10, r3, lsl #2]
	add r2, r2, #1
	ldr r10, [sp, #8]
	cmp r2, r10
	bge label5
	b label6
label120:
	ldr r0, [sp, #12]
	add r0, r0, #1
	str r0, [sp, #12]
	b label11
label5:
	add r0, r0, #1
	ldr r10, [sp, #8]
	cmp r0, r10
	bge label75
	ldr r10, [sp, #8]
	cmp r0, r10
	mov r1, #0
	movwge r1, #1
	cmp r0, #0
	mov r2, #0
	movwlt r2, #1
	orr r1, r1, r2
	cmp r10, #0
	ble label5
	b label320
label55:
	ldr r10, [sp, #4]
	add r3, r10, r0, lsl #2
	ldr r6, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	add r5, r1, r0, lsl #2
	str r6, [r1, r0, lsl #2]
	ldr r0, [r3, #4]
	str r0, [r5, #4]
	ldr r0, [r3, #8]
	str r0, [r5, #8]
	ldr r0, [r3, #12]
	str r0, [r5, #12]
	mov r0, r2
	add r2, r2, #4
	cmp r2, r4
	bge label56
	b label55
label52:
	ldr r10, [sp, #4]
	add r3, r10, r0, lsl #2
	ldr r6, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	add r5, r1, r0, lsl #2
	str r6, [r1, r0, lsl #2]
	ldr r0, [r3, #4]
	str r0, [r5, #4]
	ldr r0, [r3, #8]
	str r0, [r5, #8]
	ldr r0, [r3, #12]
	str r0, [r5, #12]
	mov r0, r2
	add r2, r2, #4
	cmp r2, r4
	bge label53
	b label52
label58:
	ldr r10, [sp, #4]
	add r3, r10, r0, lsl #2
	ldr r6, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	add r5, r1, r0, lsl #2
	str r6, [r1, r0, lsl #2]
	ldr r0, [r3, #4]
	str r0, [r5, #4]
	ldr r0, [r3, #8]
	str r0, [r5, #8]
	ldr r0, [r3, #12]
	str r0, [r5, #12]
	mov r0, r2
	add r2, r2, #4
	cmp r2, r4
	bge label59
	b label58
label59:
	add r2, r0, #4
	cmp r2, r4
	bge label61
	b label63
label61:
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label49
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label49
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label49
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label49
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label49
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label49
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label49
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label49
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label49
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label49
label371:
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label49
	b label371
label63:
	ldr r10, [sp, #4]
	add r3, r10, r0, lsl #2
	ldr r6, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	add r5, r1, r0, lsl #2
	str r6, [r1, r0, lsl #2]
	ldr r0, [r3, #4]
	str r0, [r5, #4]
	ldr r0, [r3, #8]
	str r0, [r5, #8]
	ldr r0, [r3, #12]
	str r0, [r5, #12]
	mov r0, r2
	add r2, r2, #4
	cmp r2, r4
	bge label61
	b label63
label49:
	mov r0, #64
	bl _sysy_stoptime
	ldr r1, [sp, #0]
	mov r0, r4
	bl putarray
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
