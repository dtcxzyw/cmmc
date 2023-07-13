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
	sub sp, sp, #36
	bl getint
	str r0, [sp, #8]
	mov r8, r0
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
	ldr r8, [sp, #8]
	cmp r8, r0
	ble label52
	mov r1, #0
	mov r2, #0
	movwle r1, #1
	cmp r0, #0
	movwlt r2, #1
	cmp r8, #0
	ble label5
	b label203
label52:
	mov r5, #0
	str r5, [sp, #12]
label11:
	ldr r8, [sp, #8]
	mov r9, #0
	mov r11, #0
	ldr r5, [sp, #12]
	str r9, [sp, #24]
	mul r10, r8, r5
	cmp r8, r5
	movwle r9, #1
	cmp r5, #0
	str r9, [sp, #24]
	str r10, [sp, #16]
	str r11, [sp, #20]
	movwlt r11, #1
	cmp r8, r5
	str r11, [sp, #20]
	ble label34
	mov r0, #0
label13:
	ldr r8, [sp, #8]
	mov r1, #0
	mov r3, #0
	ldr r9, [sp, #24]
	ldr r11, [sp, #20]
	ldr r5, [sp, #12]
	cmp r8, r0
	mla r5, r8, r0, r5
	movwle r1, #1
	cmp r0, #0
	orr r2, r9, r1
	movwlt r3, #1
	cmp r8, r0
	orr r4, r11, r3
	orr r2, r2, r4
	mul r4, r8, r0
	ble label96
	mov r6, #0
	cmp r8, r6
	ble label100
	cmp r2, #0
	beq label31
	mvn r7, #0
	cmn r7, #1
	ble label30
	b label20
label100:
	add r0, r0, #1
	b label13
label34:
	ldr r8, [sp, #8]
	mul r4, r8, r8
	cmp r4, #0
	ble label35
	mov r0, #0
	add r1, r0, #4
	cmp r4, r1
	ble label38
label40:
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
	ble label38
	b label40
label20:
	ldr r8, [sp, #8]
	ldr r9, [sp, #24]
	ldr r11, [sp, #20]
	cmp r8, r6
	mov r8, #0
	movwle r8, #1
	cmp r6, #0
	orr r10, r9, r8
	mov r9, #0
	movwlt r9, #1
	orr r11, r11, r9
	orrs r10, r10, r11
	beq label29
	mvn r10, #0
	cmn r10, #1
	ble label30
	orr r9, r3, r9
	orr r8, r1, r8
	orrs r8, r9, r8
	beq label24
	mvn r8, #0
	cmp r8, #0
	bge label27
	add r8, r4, r6
	add r7, r7, r10
	ldr r11, [sp, #4]
	str r7, [r11, r8, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #8]
	cmp r8, r6
	ble label100
	cmp r2, #0
	beq label31
	mvn r7, #0
	cmn r7, #1
	ble label30
	b label20
label29:
	ldr r10, [sp, #16]
	ldr r11, [sp, #4]
	add r10, r10, r6
	ldr r10, [r11, r10, lsl #2]
	cmn r10, #1
	ble label30
	orr r9, r3, r9
	orr r8, r1, r8
	orrs r8, r9, r8
	beq label24
	mvn r8, #0
	cmp r8, #0
	bge label27
	add r8, r4, r6
	add r7, r7, r10
	str r7, [r11, r8, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #8]
	cmp r8, r6
	ble label100
	cmp r2, #0
	beq label31
	mvn r7, #0
	cmn r7, #1
	ble label30
	b label20
label30:
	add r6, r6, #1
	ldr r8, [sp, #8]
	cmp r8, r6
	ble label100
	cmp r2, #0
	beq label31
	mvn r7, #0
	cmn r7, #1
	ble label30
	b label20
label31:
	ldr r11, [sp, #4]
	ldr r7, [r11, r5, lsl #2]
	cmn r7, #1
	ble label30
	b label20
label27:
	add r8, r4, r6
	ldr r11, [sp, #4]
	add r9, r7, r10
	ldr r8, [r11, r8, lsl #2]
	cmp r8, r9
	ble label30
	add r8, r4, r6
	add r7, r7, r10
	str r7, [r11, r8, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #8]
	cmp r8, r6
	ble label100
	cmp r2, #0
	beq label31
	mvn r7, #0
	cmn r7, #1
	ble label30
	b label20
label24:
	add r8, r4, r6
	ldr r11, [sp, #4]
	ldr r8, [r11, r8, lsl #2]
	cmp r8, #0
	bge label27
	add r8, r4, r6
	add r7, r7, r10
	str r7, [r11, r8, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #8]
	cmp r8, r6
	ble label100
	cmp r2, #0
	beq label31
	mvn r7, #0
	cmn r7, #1
	ble label30
	b label20
label203:
	mov r3, #0
label6:
	ldr r8, [sp, #8]
	mov r5, #0
	mov r6, #0
	cmp r8, r3
	movwle r5, #1
	cmp r3, #0
	orr r5, r2, r5
	movwlt r6, #1
	orr r6, r1, r6
	orrs r6, r5, r6
	mla r5, r8, r3, r0
	beq label8
	mvn r6, #0
	add r3, r3, #1
	ldr r11, [sp, #4]
	str r6, [r11, r5, lsl #2]
	cmp r8, r3
	ble label5
	b label6
label8:
	ldr r6, [r4, r5, lsl #2]
	add r3, r3, #1
	ldr r11, [sp, #4]
	str r6, [r11, r5, lsl #2]
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label5
	b label6
label96:
	ldr r5, [sp, #12]
	add r5, r5, #1
	str r5, [sp, #12]
	b label11
label5:
	add r0, r0, #1
	ldr r8, [sp, #8]
	cmp r8, r0
	ble label52
	mov r1, #0
	mov r2, #0
	movwle r1, #1
	cmp r0, #0
	movwlt r2, #1
	cmp r8, #0
	ble label5
	b label203
label38:
	ldr r11, [sp, #4]
	ldr r1, [r11, r0, lsl #2]
	ldr r2, [sp, #0]
	str r1, [r2, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label35
	b label38
label35:
	mov r0, #64
	bl _sysy_stoptime
	ldr r2, [sp, #0]
	mov r0, r4
	mov r1, r2
	bl putarray
	add sp, sp, #36
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
