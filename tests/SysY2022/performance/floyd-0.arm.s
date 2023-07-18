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
	ble label40
	b label194
label52:
	mov r5, #0
	str r5, [sp, #12]
label4:
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
	ble label6
	mov r2, #0
	b label13
label6:
	ldr r8, [sp, #8]
	mul r4, r8, r8
	cmp r4, #0
	ble label7
	mov r0, #0
	add r1, r0, #4
	cmp r4, r1
	ble label11
	b label10
label13:
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
	ble label105
	mov r7, #0
	cmp r8, r7
	ble label109
	cmp r3, #0
	beq label31
	mvn r8, #0
	cmn r8, #1
	ble label30
	cmp r7, #0
	mov r10, #0
	movwlt r10, #1
	orrs r9, r0, r10
	beq label29
	mvn r9, #0
	cmn r9, #1
	ble label30
	orrs r10, r6, r10
	beq label24
	mvn r10, #0
	cmp r10, #0
	bge label28
	add r10, r4, r7
	add r8, r8, r9
	ldr r11, [sp, #4]
	str r8, [r11, r10, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label109
	cmp r3, #0
	beq label31
	b label225
label109:
	add r2, r2, #1
	b label13
label225:
	mvn r8, #0
	cmn r8, #1
	ble label30
	b label244
label24:
	add r10, r4, r7
	ldr r11, [sp, #4]
	ldr r10, [r11, r10, lsl #2]
	cmp r10, #0
	bge label28
	add r10, r4, r7
	add r8, r8, r9
	str r8, [r11, r10, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label109
	cmp r3, #0
	beq label31
	mvn r8, #0
	cmn r8, #1
	ble label30
	cmp r7, #0
	mov r10, #0
	movwlt r10, #1
	orrs r9, r0, r10
	beq label29
	mvn r9, #0
	cmn r9, #1
	ble label30
	orrs r10, r6, r10
	beq label24
	mvn r10, #0
	cmp r10, #0
	bge label28
	add r10, r4, r7
	add r8, r8, r9
	str r8, [r11, r10, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label109
	cmp r3, #0
	beq label31
label348:
	mvn r8, #0
	cmn r8, #1
	ble label30
	b label244
label334:
	mvn r8, #0
	cmn r8, #1
	ble label30
label244:
	cmp r7, #0
	mov r10, #0
	movwlt r10, #1
	orrs r9, r0, r10
	beq label29
	b label262
label28:
	add r10, r4, r7
	ldr r11, [sp, #4]
	ldr r10, [r11, r10, lsl #2]
	add r11, r8, r9
	cmp r10, r11
	ble label30
	add r10, r4, r7
	add r8, r8, r9
	ldr r11, [sp, #4]
	str r8, [r11, r10, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label109
	cmp r3, #0
	beq label31
	mvn r8, #0
	cmn r8, #1
	ble label30
	cmp r7, #0
	mov r10, #0
	movwlt r10, #1
	orrs r9, r0, r10
	beq label29
	mvn r9, #0
	cmn r9, #1
	ble label30
	orrs r10, r6, r10
	beq label24
	mvn r10, #0
	cmp r10, #0
	bge label28
	add r10, r4, r7
	add r8, r8, r9
	str r8, [r11, r10, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label109
	cmp r3, #0
	beq label31
	b label334
label30:
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label109
	cmp r3, #0
	beq label31
	b label225
label279:
	orrs r10, r6, r10
	beq label24
	b label296
label31:
	ldr r11, [sp, #4]
	ldr r8, [r11, r5, lsl #2]
	cmn r8, #1
	ble label30
	cmp r7, #0
	mov r10, #0
	movwlt r10, #1
	orrs r9, r0, r10
	beq label29
	mvn r9, #0
	cmn r9, #1
	ble label30
	orrs r10, r6, r10
	beq label24
	mvn r10, #0
	cmp r10, #0
	bge label28
	add r10, r4, r7
	add r8, r8, r9
	str r8, [r11, r10, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label109
	cmp r3, #0
	beq label31
	mvn r8, #0
	cmn r8, #1
	ble label30
	cmp r7, #0
	mov r10, #0
	movwlt r10, #1
	orrs r9, r0, r10
	beq label29
	mvn r9, #0
	cmn r9, #1
	ble label30
	b label279
label29:
	add r9, r1, r7
	ldr r11, [sp, #4]
	ldr r9, [r11, r9, lsl #2]
	cmn r9, #1
	ble label30
	orrs r10, r6, r10
	beq label24
	mvn r10, #0
	cmp r10, #0
	bge label28
	add r10, r4, r7
	add r8, r8, r9
	str r8, [r11, r10, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label109
	cmp r3, #0
	beq label31
	mvn r8, #0
	cmn r8, #1
	ble label30
	cmp r7, #0
	mov r10, #0
	movwlt r10, #1
	orrs r9, r0, r10
	beq label29
	mvn r9, #0
	cmn r9, #1
	ble label30
	orrs r10, r6, r10
	beq label24
	mvn r10, #0
	cmp r10, #0
	bge label28
label313:
	add r10, r4, r7
	add r8, r8, r9
	ldr r11, [sp, #4]
	str r8, [r11, r10, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label109
	cmp r3, #0
	beq label31
	b label348
label262:
	mvn r9, #0
	cmn r9, #1
	ble label30
	b label279
label296:
	mvn r10, #0
	cmp r10, #0
	bge label28
	b label313
label194:
	mov r2, #0
label35:
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
	beq label37
	mvn r5, #0
	add r2, r2, #1
	ldr r11, [sp, #4]
	str r5, [r11, r3, lsl #2]
	cmp r8, r2
	ble label40
	b label35
label37:
	ldr r5, [r4, r3, lsl #2]
	add r2, r2, #1
	ldr r11, [sp, #4]
	str r5, [r11, r3, lsl #2]
	ldr r8, [sp, #8]
	cmp r8, r2
	ble label40
	b label35
label105:
	ldr r5, [sp, #12]
	add r5, r5, #1
	str r5, [sp, #12]
	b label4
label40:
	add r0, r0, #1
	ldr r8, [sp, #8]
	cmp r8, r0
	ble label52
	cmp r0, #0
	mov r1, #0
	movwlt r1, #1
	cmp r8, #0
	ble label40
	b label194
label10:
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
	ble label11
	b label10
label11:
	ldr r11, [sp, #4]
	ldr r1, [r11, r0, lsl #2]
	ldr r2, [sp, #0]
	str r1, [r2, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label7
	b label11
label7:
	mov r0, #64
	bl _sysy_stoptime
	ldr r2, [sp, #0]
	mov r0, r4
	mov r1, r2
	bl putarray
	add sp, sp, #20
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
