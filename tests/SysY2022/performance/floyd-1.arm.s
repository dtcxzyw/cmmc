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
	cmp r10, r0
	ble label75
	ldr r10, [sp, #8]
	cmp r10, r0
	mov r1, #0
	movwle r1, #1
	cmp r0, #0
	mov r2, #0
	movwlt r2, #1
	orr r1, r1, r2
	cmp r10, #0
	ble label58
	b label320
label75:
	mov r6, #0
	str r6, [sp, #12]
label4:
	ldr r10, [sp, #8]
	ldr r6, [sp, #12]
	cmp r10, r6
	mov r0, #0
	movwle r0, #1
	cmp r6, #0
	mov r1, #0
	movwlt r1, #1
	orr r1, r0, r1
	mul r2, r10, r6
	cmp r10, r6
	ble label41
	mov r3, #0
label6:
	cmp r3, #0
	mov r0, #0
	movwlt r0, #1
	orr r4, r1, r0
	ldr r10, [sp, #8]
	cmp r10, r3
	mov r7, #0
	movwle r7, #1
	orr r4, r4, r7
	mul r5, r10, r3
	ldr r6, [sp, #12]
	mla r6, r10, r3, r6
	orr r7, r0, r7
	ble label94
	mov r0, #0
	ldr r10, [sp, #8]
	cmp r10, r0
	ble label10
	cmp r4, #0
	beq label39
	mvn r8, #0
	cmn r8, #1
	ble label106
	cmp r0, #0
	mov r8, #0
	movwlt r8, #1
	orr r8, r1, r8
	ldr r10, [sp, #8]
	cmp r10, r0
	mov r9, #0
	movwle r9, #1
	orrs r8, r8, r9
	beq label15
	mvn r8, #0
	cmp r8, #0
	mov r8, #0
	movwge r8, #1
	cmp r8, #0
	beq label20
	cmp r0, #0
	mov r8, #0
	movwlt r8, #1
	orr r8, r7, r8
	ldr r10, [sp, #8]
	cmp r10, r0
	mov r9, #0
	movwle r9, #1
	orrs r8, r8, r9
	beq label38
	mvn r8, #0
	cmp r8, #0
	bge label31
	add r8, r5, r0
	cmp r4, #0
	beq label25
	b label136
label41:
	ldr r10, [sp, #8]
	mul r4, r10, r10
	cmp r4, #0
	ble label42
	mov r0, #0
	add r2, r0, #4
	cmp r4, r2
	ble label46
	b label45
label10:
	add r3, r3, #1
	b label6
label106:
	mov r8, #0
	cmp r8, #0
	beq label20
	cmp r0, #0
	movwlt r8, #1
	orr r8, r7, r8
	ldr r10, [sp, #8]
	cmp r10, r0
	mov r9, #0
	movwle r9, #1
	orrs r8, r8, r9
	beq label38
	mvn r8, #0
	cmp r8, #0
	bge label31
	add r8, r5, r0
	cmp r4, #0
	beq label25
	b label136
label39:
	ldr r10, [sp, #4]
	ldr r8, [r10, r6, lsl #2]
	cmn r8, #1
	ble label106
	cmp r0, #0
	mov r8, #0
	movwlt r8, #1
	orr r8, r1, r8
	ldr r10, [sp, #8]
	cmp r10, r0
	mov r9, #0
	movwle r9, #1
	orrs r8, r8, r9
	beq label15
	mvn r8, #0
	cmp r8, #0
	mov r8, #0
	movwge r8, #1
	cmp r8, #0
	beq label20
	cmp r0, #0
	mov r8, #0
	movwlt r8, #1
	orr r8, r7, r8
	ldr r10, [sp, #8]
	cmp r10, r0
	mov r9, #0
	movwle r9, #1
	orrs r8, r8, r9
	beq label38
	mvn r8, #0
	cmp r8, #0
	bge label31
	add r8, r5, r0
	cmp r4, #0
	beq label25
	b label136
label20:
	add r0, r0, #1
	ldr r10, [sp, #8]
	cmp r10, r0
	ble label10
	cmp r4, #0
	beq label39
	mvn r8, #0
	cmn r8, #1
	ble label106
	cmp r0, #0
	mov r8, #0
	movwlt r8, #1
	orr r8, r1, r8
	ldr r10, [sp, #8]
	cmp r10, r0
	mov r9, #0
	movwle r9, #1
	orrs r8, r8, r9
	beq label15
	mvn r8, #0
	cmp r8, #0
	mov r8, #0
	movwge r8, #1
	cmp r8, #0
	beq label20
	cmp r0, #0
	mov r8, #0
	movwlt r8, #1
	orr r8, r7, r8
	ldr r10, [sp, #8]
	cmp r10, r0
	mov r9, #0
	movwle r9, #1
	orrs r8, r8, r9
	beq label38
	mvn r8, #0
	cmp r8, #0
	bge label31
	add r8, r5, r0
	cmp r4, #0
	beq label25
	b label136
label15:
	add r8, r2, r0
	ldr r10, [sp, #4]
	ldr r8, [r10, r8, lsl #2]
	cmp r8, #0
	mov r8, #0
	movwge r8, #1
	cmp r8, #0
	beq label20
	cmp r0, #0
	mov r8, #0
	movwlt r8, #1
	orr r8, r7, r8
	ldr r10, [sp, #8]
	cmp r10, r0
	mov r9, #0
	movwle r9, #1
	orrs r8, r8, r9
	beq label38
	mvn r8, #0
	cmp r8, #0
	bge label31
	add r8, r5, r0
	cmp r4, #0
	beq label25
	b label136
label25:
	ldr r10, [sp, #4]
	ldr r9, [r10, r6, lsl #2]
	cmp r0, #0
	mov r10, #0
	movwlt r10, #1
	orr r11, r1, r10
	ldr r10, [sp, #8]
	cmp r10, r0
	mov r10, #0
	movwle r10, #1
	orrs r10, r11, r10
	beq label28
	mvn r10, #0
	add r9, r9, r10
	ldr r10, [sp, #4]
	str r9, [r10, r8, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #8]
	cmp r10, r0
	ble label10
	cmp r4, #0
	beq label39
	mvn r8, #0
	cmn r8, #1
	ble label106
	cmp r0, #0
	mov r8, #0
	movwlt r8, #1
	orr r8, r1, r8
	ldr r10, [sp, #8]
	cmp r10, r0
	mov r9, #0
	movwle r9, #1
	orrs r8, r8, r9
	beq label15
	mvn r8, #0
	cmp r8, #0
	mov r8, #0
	movwge r8, #1
	cmp r8, #0
	beq label20
	cmp r0, #0
	mov r8, #0
	movwlt r8, #1
	orr r8, r7, r8
	ldr r10, [sp, #8]
	cmp r10, r0
	mov r9, #0
	movwle r9, #1
	orrs r8, r8, r9
	beq label38
	mvn r8, #0
	cmp r8, #0
	bge label31
	add r8, r5, r0
	cmp r4, #0
	beq label25
	b label136
label31:
	add r8, r5, r0
	ldr r10, [sp, #4]
	ldr r8, [r10, r8, lsl #2]
	cmp r4, #0
	beq label32
	b label160
label28:
	add r11, r2, r0
	ldr r10, [sp, #4]
	ldr r10, [r10, r11, lsl #2]
	add r9, r9, r10
	ldr r10, [sp, #4]
	str r9, [r10, r8, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #8]
	cmp r10, r0
	ble label10
	cmp r4, #0
	beq label39
	mvn r8, #0
	cmn r8, #1
	ble label106
	cmp r0, #0
	mov r8, #0
	movwlt r8, #1
	orr r8, r1, r8
	ldr r10, [sp, #8]
	cmp r10, r0
	mov r9, #0
	movwle r9, #1
	orrs r8, r8, r9
	beq label15
	mvn r8, #0
	cmp r8, #0
	mov r8, #0
	movwge r8, #1
	cmp r8, #0
	beq label20
	cmp r0, #0
	mov r8, #0
	movwlt r8, #1
	orr r8, r7, r8
	ldr r10, [sp, #8]
	cmp r10, r0
	mov r9, #0
	movwle r9, #1
	orrs r8, r8, r9
	beq label38
	mvn r8, #0
	cmp r8, #0
	bge label31
	add r8, r5, r0
	cmp r4, #0
	beq label25
	b label136
label38:
	add r8, r5, r0
	ldr r10, [sp, #4]
	ldr r8, [r10, r8, lsl #2]
	cmp r8, #0
	bge label31
	add r8, r5, r0
	cmp r4, #0
	beq label25
label136:
	mvn r9, #0
	cmp r0, #0
	mov r10, #0
	movwlt r10, #1
	orr r11, r1, r10
	ldr r10, [sp, #8]
	cmp r10, r0
	mov r10, #0
	movwle r10, #1
	orrs r10, r11, r10
	beq label28
	mvn r10, #0
	add r9, r9, r10
	ldr r10, [sp, #4]
	str r9, [r10, r8, lsl #2]
	add r0, r0, #1
	ldr r10, [sp, #8]
	cmp r10, r0
	ble label10
	cmp r4, #0
	beq label39
	mvn r8, #0
	cmn r8, #1
	ble label106
	cmp r0, #0
	mov r8, #0
	movwlt r8, #1
	orr r8, r1, r8
	ldr r10, [sp, #8]
	cmp r10, r0
	mov r9, #0
	movwle r9, #1
	orrs r8, r8, r9
	beq label15
	mvn r8, #0
	cmp r8, #0
	mov r8, #0
	movwge r8, #1
	cmp r8, #0
	beq label20
	cmp r0, #0
	mov r8, #0
	movwlt r8, #1
	orr r8, r7, r8
	ldr r10, [sp, #8]
	cmp r10, r0
	mov r9, #0
	movwle r9, #1
	orrs r8, r8, r9
	beq label38
	mvn r8, #0
	cmp r8, #0
	bge label31
	add r8, r5, r0
	cmp r4, #0
	beq label25
	b label136
label160:
	mvn r9, #0
	cmp r0, #0
	mov r10, #0
	movwlt r10, #1
	orr r11, r1, r10
	ldr r10, [sp, #8]
	cmp r10, r0
	mov r10, #0
	movwle r10, #1
	orrs r10, r11, r10
	beq label35
	mvn r10, #0
	add r9, r9, r10
	cmp r8, r9
	ble label20
	add r8, r5, r0
	cmp r4, #0
	beq label25
	b label136
label32:
	ldr r10, [sp, #4]
	ldr r9, [r10, r6, lsl #2]
	cmp r0, #0
	mov r10, #0
	movwlt r10, #1
	orr r11, r1, r10
	ldr r10, [sp, #8]
	cmp r10, r0
	mov r10, #0
	movwle r10, #1
	orrs r10, r11, r10
	beq label35
	mvn r10, #0
	add r9, r9, r10
	cmp r8, r9
	ble label20
	add r8, r5, r0
	cmp r4, #0
	beq label25
	b label136
label35:
	add r11, r2, r0
	ldr r10, [sp, #4]
	ldr r10, [r10, r11, lsl #2]
	add r9, r9, r10
	cmp r8, r9
	ble label20
	add r8, r5, r0
	cmp r4, #0
	beq label25
	b label136
label320:
	mov r2, #0
label59:
	cmp r2, #0
	mov r3, #0
	movwlt r3, #1
	orr r3, r1, r3
	ldr r10, [sp, #8]
	cmp r10, r2
	mov r5, #0
	movwle r5, #1
	orr r5, r3, r5
	mla r3, r10, r2, r0
	cmp r5, #0
	beq label61
	mvn r5, #0
	add r2, r2, #1
	ldr r10, [sp, #4]
	str r5, [r10, r3, lsl #2]
	ldr r10, [sp, #8]
	cmp r10, r2
	ble label58
	b label59
label61:
	ldr r5, [r4, r3, lsl #2]
	add r2, r2, #1
	ldr r10, [sp, #4]
	str r5, [r10, r3, lsl #2]
	ldr r10, [sp, #8]
	cmp r10, r2
	ble label58
	b label59
label94:
	ldr r6, [sp, #12]
	add r6, r6, #1
	str r6, [sp, #12]
	b label4
label58:
	add r0, r0, #1
	ldr r10, [sp, #8]
	cmp r10, r0
	ble label75
	ldr r10, [sp, #8]
	cmp r10, r0
	mov r1, #0
	movwle r1, #1
	cmp r0, #0
	mov r2, #0
	movwlt r2, #1
	orr r1, r1, r2
	cmp r10, #0
	ble label58
	b label320
label45:
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
	cmp r4, r2
	ble label46
	b label45
label46:
	add r2, r0, #4
	cmp r4, r2
	ble label49
label48:
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
	cmp r4, r2
	ble label49
	b label48
label49:
	add r2, r0, #4
	cmp r4, r2
	ble label51
	b label56
label51:
	add r2, r0, #4
	cmp r4, r2
	ble label54
	b label53
label54:
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label42
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label42
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label42
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label42
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label42
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label42
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label42
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label42
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label42
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label42
label447:
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	ble label42
	b label447
label56:
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
	cmp r4, r2
	ble label51
	b label56
label53:
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
	cmp r4, r2
	ble label54
	b label53
label42:
	mov r0, #64
	bl _sysy_stoptime
	ldr r1, [sp, #0]
	mov r0, r4
	bl putarray
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }