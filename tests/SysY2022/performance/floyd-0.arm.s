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
	ble label63
	b label320
label75:
	mov r6, #0
	str r6, [sp, #12]
label4:
	ldr r10, [sp, #8]
	ldr r6, [sp, #12]
	cmp r6, r10
	mov r0, #0
	movwge r0, #1
	cmp r6, #0
	mov r1, #0
	movwlt r1, #1
	orr r1, r0, r1
	mul r2, r10, r6
	cmp r6, r10
	bge label6
	mov r3, #0
	b label22
label6:
	ldr r10, [sp, #8]
	mul r4, r10, r10
	cmp r4, #0
	ble label7
	mov r0, #0
	add r2, r0, #4
	cmp r2, r4
	bge label11
label10:
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
	bge label11
	b label10
label11:
	add r2, r0, #4
	cmp r2, r4
	bge label14
	b label13
label14:
	add r2, r0, #4
	cmp r2, r4
	bge label16
	b label21
label22:
	cmp r3, #0
	mov r0, #0
	movwlt r0, #1
	orr r4, r1, r0
	ldr r10, [sp, #8]
	cmp r3, r10
	mov r7, #0
	movwge r7, #1
	orr r4, r4, r7
	mul r5, r10, r3
	ldr r6, [sp, #12]
	mla r6, r10, r3, r6
	orr r7, r0, r7
	bge label185
	mov r0, #0
	ldr r10, [sp, #8]
	cmp r0, r10
	bge label26
	cmp r4, #0
	beq label55
	mvn r8, #0
	cmn r8, #1
	ble label197
	b label30
label197:
	mov r8, #0
	cmp r8, #0
	beq label36
	b label37
label30:
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
	beq label31
	mvn r8, #0
	cmp r8, #0
	mov r8, #0
	movwge r8, #1
	cmp r8, #0
	beq label36
	b label37
label31:
	add r8, r2, r0
	ldr r10, [sp, #4]
	ldr r8, [r10, r8, lsl #2]
	cmp r8, #0
	mov r8, #0
	movwge r8, #1
	cmp r8, #0
	beq label36
label37:
	cmp r0, #0
	mov r8, #0
	movwlt r8, #1
	orr r8, r7, r8
	ldr r10, [sp, #8]
	cmp r0, r10
	mov r9, #0
	movwge r9, #1
	orr r8, r8, r9
	cmp r8, #0
	beq label54
	mvn r8, #0
	cmp r8, #0
	bge label47
	add r8, r5, r0
	cmp r4, #0
	beq label41
label350:
	mvn r9, #0
	b label42
label336:
	mvn r9, #0
	b label49
label41:
	ldr r10, [sp, #4]
	ldr r9, [r10, r6, lsl #2]
label42:
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
	beq label44
	mvn r10, #0
	add r9, r9, r10
	ldr r10, [sp, #4]
	str r9, [r10, r8, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #8]
	cmp r0, r10
	bge label26
	cmp r4, #0
	beq label55
	mvn r8, #0
	cmn r8, #1
	ble label197
	b label30
label47:
	add r8, r5, r0
	ldr r10, [sp, #4]
	ldr r8, [r10, r8, lsl #2]
	cmp r4, #0
	beq label48
	b label336
label49:
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
	beq label51
	mvn r10, #0
	add r9, r9, r10
	cmp r8, r9
	ble label36
	add r8, r5, r0
	cmp r4, #0
	beq label41
	b label350
label54:
	add r8, r5, r0
	ldr r10, [sp, #4]
	ldr r8, [r10, r8, lsl #2]
	cmp r8, #0
	bge label47
	add r8, r5, r0
	cmp r4, #0
	beq label41
	b label350
label55:
	ldr r10, [sp, #4]
	ldr r8, [r10, r6, lsl #2]
	cmn r8, #1
	ble label197
	b label30
label36:
	add r0, r0, #1
	ldr r10, [sp, #8]
	cmp r0, r10
	bge label26
	cmp r4, #0
	beq label55
	mvn r8, #0
	cmn r8, #1
	ble label197
	b label30
label44:
	add r11, r2, r0
	ldr r10, [sp, #4]
	ldr r10, [r10, r11, lsl #2]
	add r9, r9, r10
	ldr r10, [sp, #4]
	str r9, [r10, r8, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #8]
	cmp r0, r10
	bge label26
	cmp r4, #0
	beq label55
	mvn r8, #0
	cmn r8, #1
	ble label197
	b label30
label51:
	add r11, r2, r0
	ldr r10, [sp, #4]
	ldr r10, [r10, r11, lsl #2]
	add r9, r9, r10
	cmp r8, r9
	ble label36
	add r8, r5, r0
	cmp r4, #0
	beq label41
	b label350
label48:
	ldr r10, [sp, #4]
	ldr r9, [r10, r6, lsl #2]
	b label49
label26:
	add r3, r3, #1
	b label22
label320:
	mov r2, #0
	b label58
label63:
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
	ble label63
	b label320
label58:
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
	beq label60
	mvn r5, #0
	add r2, r2, #1
	ldr r10, [sp, #4]
	str r5, [r10, r3, lsl #2]
	ldr r10, [sp, #8]
	cmp r2, r10
	bge label63
	b label58
label60:
	ldr r5, [r4, r3, lsl #2]
	add r2, r2, #1
	ldr r10, [sp, #4]
	str r5, [r10, r3, lsl #2]
	ldr r10, [sp, #8]
	cmp r2, r10
	bge label63
	b label58
label185:
	ldr r6, [sp, #12]
	add r6, r6, #1
	str r6, [sp, #12]
	b label4
label16:
	add r2, r0, #4
	cmp r2, r4
	bge label18
label20:
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
	bge label18
	b label20
label18:
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label7
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label7
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label7
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label7
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label7
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label7
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label7
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label7
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label7
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label7
label371:
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label7
	b label371
label13:
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
	bge label14
	b label13
label21:
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
	bge label16
	b label21
label7:
	mov r0, #64
	bl _sysy_stoptime
	ldr r1, [sp, #0]
	mov r0, r4
	bl putarray
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
