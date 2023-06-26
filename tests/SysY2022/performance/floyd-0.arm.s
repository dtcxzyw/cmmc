.arch armv7ve
.data
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
	sub sp, sp, #4
	bl getint
	mov r5, r0
	movw r0, #:lower16:w
	movt r0, #:upper16:w
	mov r6, r0
	bl getarray
	mov r0, #62
	bl _sysy_starttime
	movw r4, #:lower16:dst
	movt r4, #:upper16:dst
	movw r0, #:lower16:temp
	movt r0, #:upper16:temp
	mov r1, #0
	cmp r1, r5
	bge label99
	cmp r5, #0
	ble label13
	mov r2, #0
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	b label967
label99:
	mov r1, #0
	mul r3, r1, r5
	cmp r1, r5
	bge label72
	mov r2, #0
	mul r6, r2, r5
	mla r7, r2, r5, r1
	add r7, r0, r7, lsl #2
	cmp r2, r5
	bge label18
	mov r8, #0
	cmp r8, r5
	bge label21
	cmp r2, #0
	bge label23
	mvn r9, #0
	cmn r9, #1
	ble label171
	cmp r1, #0
	bge label30
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	cmp r2, #0
	bge label40
	mvn r9, #0
	cmp r9, #0
	bge label59
	b label621
label9:
	cmp r2, r5
	blt label10
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	b label1040
label621:
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	b label681
label72:
	mul r5, r5, r5
	cmp r5, #0
	ble label73
	mov r1, #0
	add r2, r1, #16
	cmp r2, r5
	bge label76
	b label87
label24:
	cmp r1, #0
	bge label25
	mvn r9, #0
	cmn r9, #1
	ble label171
	cmp r1, #0
	bge label30
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	cmp r2, #0
	bge label40
	mvn r9, #0
	cmp r9, #0
	bge label59
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	mvn r10, #0
	cmp r1, #0
	bge label51
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	cmp r2, #0
	bge label23
	b label930
label25:
	cmp r1, r5
	blt label26
	mvn r9, #0
	cmn r9, #1
	ble label171
	cmp r1, #0
	bge label30
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	cmp r2, #0
	bge label40
	mvn r9, #0
	cmp r9, #0
	bge label59
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	mvn r10, #0
	cmp r1, #0
	bge label51
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	cmp r2, #0
	bge label23
label930:
	mvn r9, #0
	cmn r9, #1
	ble label171
label995:
	cmp r1, #0
	bge label30
	b label1060
label55:
	cmp r2, r5
	blt label56
	mvn r10, #0
	cmp r1, #0
	bge label51
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	cmp r2, #0
	bge label23
	mvn r9, #0
	cmn r9, #1
	ble label171
	cmp r1, #0
	bge label30
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	cmp r2, #0
	bge label40
	mvn r9, #0
	cmp r9, #0
	bge label59
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	b label1077
label38:
	add r8, r8, #1
	cmp r8, r5
	bge label21
	cmp r2, #0
	bge label23
	mvn r9, #0
	cmn r9, #1
	ble label171
	cmp r1, #0
	bge label30
	b label745
label21:
	add r2, r2, #1
	mul r6, r2, r5
	mla r7, r2, r5, r1
	add r7, r0, r7, lsl #2
	cmp r2, r5
	bge label18
	mov r8, #0
	cmp r8, r5
	bge label21
	cmp r2, #0
	bge label23
	mvn r9, #0
	cmn r9, #1
	ble label171
	cmp r1, #0
	bge label30
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	cmp r2, #0
	bge label40
	mvn r9, #0
	cmp r9, #0
	bge label59
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	mvn r10, #0
	cmp r1, #0
	bge label51
label744:
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
label866:
	cmp r2, #0
	bge label23
	b label930
label18:
	add r1, r1, #1
	mul r3, r1, r5
	cmp r1, r5
	bge label72
	mov r2, #0
	mul r6, r2, r5
	mla r7, r2, r5, r1
	add r7, r0, r7, lsl #2
	cmp r2, r5
	bge label18
	mov r8, #0
	cmp r8, r5
	bge label21
	cmp r2, #0
	bge label23
	mvn r9, #0
	cmn r9, #1
	ble label171
	cmp r1, #0
	bge label30
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	cmp r2, #0
	bge label40
	mvn r9, #0
	cmp r9, #0
	bge label59
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
label681:
	mvn r10, #0
	cmp r1, #0
	bge label51
	b label744
label23:
	cmp r2, r5
	blt label24
	mvn r9, #0
	cmn r9, #1
	ble label171
	cmp r1, #0
	bge label30
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	cmp r2, #0
	bge label40
	mvn r9, #0
	cmp r9, #0
	bge label59
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	mvn r10, #0
	cmp r1, #0
	bge label51
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	cmp r2, #0
	bge label23
	b label930
label171:
	mov r9, #0
	cmp r9, #0
	beq label38
	cmp r2, #0
	bge label40
	mvn r9, #0
	cmp r9, #0
	bge label59
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	mvn r10, #0
	cmp r1, #0
	bge label51
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	cmp r2, #0
	bge label23
	mvn r9, #0
	cmn r9, #1
	ble label171
	cmp r1, #0
	bge label30
label745:
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	b label804
label1061:
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	b label866
label56:
	cmp r1, #0
	bge label57
	mvn r10, #0
	bge label51
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	cmp r2, #0
	bge label23
	mvn r9, #0
	cmn r9, #1
	ble label171
	cmp r1, #0
	bge label30
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	cmp r2, #0
	bge label40
	mvn r9, #0
	cmp r9, #0
	bge label59
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	mvn r10, #0
	cmp r1, #0
	bge label51
	b label1061
label57:
	cmp r1, r5
	blt label58
	mvn r10, #0
	cmp r1, #0
	bge label51
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	cmp r2, #0
	bge label23
	mvn r9, #0
	cmn r9, #1
	ble label171
	cmp r1, #0
	bge label30
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	cmp r2, #0
	bge label40
	mvn r9, #0
	cmp r9, #0
	bge label59
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	mvn r10, #0
	cmp r1, #0
	bge label51
	b label1061
label30:
	cmp r1, r5
	blt label31
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	cmp r2, #0
	bge label40
	mvn r9, #0
	cmp r9, #0
	bge label59
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	mvn r10, #0
	cmp r1, #0
	bge label51
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	cmp r2, #0
	bge label23
	mvn r9, #0
	cmn r9, #1
	ble label171
	cmp r1, #0
	bge label30
	b label1060
label31:
	cmp r8, #0
	bge label32
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	cmp r2, #0
	bge label40
	mvn r9, #0
	cmp r9, #0
	bge label59
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	mvn r10, #0
	cmp r1, #0
	bge label51
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	cmp r2, #0
	bge label23
	mvn r9, #0
	cmn r9, #1
	ble label171
	cmp r1, #0
	bge label30
	b label1060
label32:
	cmp r8, r5
	blt label33
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	cmp r2, #0
	bge label40
	mvn r9, #0
	cmp r9, #0
	bge label59
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	mvn r10, #0
	cmp r1, #0
	bge label51
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	cmp r2, #0
	bge label23
	mvn r9, #0
	cmn r9, #1
	ble label171
	cmp r1, #0
	bge label30
label1060:
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
label804:
	cmp r2, #0
	bge label40
	b label867
label33:
	add r9, r8, r3
	ldr r9, [r0, r9, lsl #2]
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	cmp r2, #0
	bge label40
	mvn r9, #0
	cmp r9, #0
	bge label59
	b label621
label58:
	ldr r10, [r7, #0]
	cmp r1, #0
	bge label51
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	cmp r2, #0
	bge label23
	mvn r9, #0
	cmn r9, #1
	ble label171
	cmp r1, #0
	bge label30
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	cmp r2, #0
	bge label40
	mvn r9, #0
	cmp r9, #0
	bge label59
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	mvn r10, #0
	cmp r1, #0
	bge label51
	b label1061
label40:
	cmp r2, r5
	blt label41
	mvn r9, #0
	cmp r9, #0
	bge label59
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	mvn r10, #0
	cmp r1, #0
	bge label51
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	cmp r2, #0
	bge label23
	mvn r9, #0
	cmn r9, #1
	ble label171
	cmp r1, #0
	bge label30
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	cmp r2, #0
	bge label40
	b label867
label51:
	cmp r1, r5
	blt label52
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	cmp r2, #0
	bge label23
	mvn r9, #0
	cmn r9, #1
	ble label171
	cmp r1, #0
	bge label30
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	cmp r2, #0
	bge label40
	mvn r9, #0
	cmp r9, #0
	bge label59
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	mvn r10, #0
	cmp r1, #0
	bge label51
	b label1073
label1077:
	mvn r10, #0
	cmp r1, #0
	bge label51
	b label1061
label1073:
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	b label866
label867:
	mvn r9, #0
	cmp r9, #0
	bge label59
	b label931
label52:
	cmp r8, #0
	bge label53
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	cmp r2, #0
	bge label23
	mvn r9, #0
	cmn r9, #1
	ble label171
	cmp r1, #0
	bge label30
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	cmp r2, #0
	bge label40
	mvn r9, #0
	cmp r9, #0
	bge label59
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	mvn r10, #0
	cmp r1, #0
	bge label51
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	b label866
label53:
	cmp r8, r5
	blt label54
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	cmp r2, #0
	bge label23
	mvn r9, #0
	cmn r9, #1
	ble label171
	cmp r1, #0
	bge label30
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	cmp r2, #0
	bge label40
	mvn r9, #0
	cmp r9, #0
	bge label59
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	mvn r10, #0
	cmp r1, #0
	bge label51
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	b label866
label54:
	add r11, r8, r3
	ldr r11, [r0, r11, lsl #2]
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	cmp r2, #0
	bge label23
	mvn r9, #0
	cmn r9, #1
	ble label171
	cmp r1, #0
	bge label30
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	cmp r2, #0
	bge label40
	mvn r9, #0
	cmp r9, #0
	bge label59
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	mvn r10, #0
	cmp r1, #0
	bge label51
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	b label866
label26:
	ldr r9, [r7, #0]
	cmn r9, #1
	ble label171
	cmp r1, #0
	bge label30
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	cmp r2, #0
	bge label40
	mvn r9, #0
	cmp r9, #0
	bge label59
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	mvn r10, #0
	cmp r1, #0
	bge label51
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	cmp r2, #0
	bge label23
	mvn r9, #0
	cmn r9, #1
	ble label171
	b label995
label59:
	add r9, r8, r6
	ldr r9, [r0, r9, lsl #2]
	cmp r2, #0
	bge label68
	mvn r10, #0
	cmp r1, #0
	bge label64
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label38
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	mvn r10, #0
	cmp r1, #0
	bge label51
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	cmp r2, #0
	bge label23
	mvn r9, #0
	cmn r9, #1
	ble label171
	cmp r1, #0
	bge label30
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	cmp r2, #0
	bge label40
	b label1083
label68:
	cmp r2, r5
	blt label69
	mvn r10, #0
	cmp r1, #0
	bge label64
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label38
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	mvn r10, #0
	cmp r1, #0
	bge label51
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	cmp r2, #0
	bge label23
	mvn r9, #0
	cmn r9, #1
	ble label171
	cmp r1, #0
	bge label30
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	b label1091
label1083:
	mvn r9, #0
	cmp r9, #0
	bge label59
	b label1085
label69:
	cmp r1, #0
	bge label70
	mvn r10, #0
	bge label64
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label38
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	mvn r10, #0
	cmp r1, #0
	bge label51
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	cmp r2, #0
	bge label23
	mvn r9, #0
	cmn r9, #1
	ble label171
	cmp r1, #0
	bge label30
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	cmp r2, #0
	bge label40
	b label1083
label70:
	cmp r1, r5
	blt label71
	mvn r10, #0
	cmp r1, #0
	bge label64
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label38
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	mvn r10, #0
	cmp r1, #0
	bge label51
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	cmp r2, #0
	bge label23
	mvn r9, #0
	cmn r9, #1
	ble label171
	cmp r1, #0
	bge label30
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	cmp r2, #0
	bge label40
	b label1083
label71:
	ldr r10, [r7, #0]
	cmp r1, #0
	bge label64
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label38
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	mvn r10, #0
	cmp r1, #0
	bge label51
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	cmp r2, #0
	bge label23
	mvn r9, #0
	cmn r9, #1
	ble label171
	cmp r1, #0
	bge label30
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	cmp r2, #0
	bge label40
	b label1083
label64:
	cmp r1, r5
	blt label65
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label38
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	mvn r10, #0
	cmp r1, #0
	bge label51
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	cmp r2, #0
	bge label23
	mvn r9, #0
	cmn r9, #1
	ble label171
	cmp r1, #0
	bge label30
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	cmp r2, #0
	bge label40
	b label1087
label1091:
	cmp r2, #0
	bge label40
	b label1083
label996:
	mvn r10, #0
	cmp r1, #0
	bge label51
	b label1061
label1085:
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	b label996
label67:
	add r11, r8, r3
	ldr r11, [r0, r11, lsl #2]
	add r10, r10, r11
	cmp r9, r10
	ble label38
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	mvn r10, #0
	cmp r1, #0
	bge label51
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	cmp r2, #0
	bge label23
	mvn r9, #0
	cmn r9, #1
	ble label171
	cmp r1, #0
	bge label30
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	cmp r2, #0
	bge label40
	mvn r9, #0
	cmp r9, #0
	bge label59
	b label1085
label1087:
	mvn r9, #0
	cmp r9, #0
	bge label59
	b label1085
label65:
	cmp r8, #0
	bge label66
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label38
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	mvn r10, #0
	cmp r1, #0
	bge label51
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	cmp r2, #0
	bge label23
	mvn r9, #0
	cmn r9, #1
	ble label171
	cmp r1, #0
	bge label30
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	cmp r2, #0
	bge label40
	mvn r9, #0
	cmp r9, #0
	bge label59
	b label1085
label66:
	cmp r8, r5
	blt label67
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label38
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	mvn r10, #0
	cmp r1, #0
	bge label51
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	cmp r2, #0
	bge label23
	mvn r9, #0
	cmn r9, #1
	ble label171
	cmp r1, #0
	bge label30
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	cmp r2, #0
	bge label40
	mvn r9, #0
	cmp r9, #0
	bge label59
	b label1085
label41:
	cmp r8, #0
	bge label42
	mvn r9, #0
	cmp r9, #0
	bge label59
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	mvn r10, #0
	cmp r1, #0
	bge label51
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	cmp r2, #0
	bge label23
	mvn r9, #0
	cmn r9, #1
	ble label171
	cmp r1, #0
	bge label30
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	cmp r2, #0
	bge label40
	b label867
label42:
	cmp r8, r5
	blt label43
	mvn r9, #0
	cmp r9, #0
	bge label59
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	mvn r10, #0
	cmp r1, #0
	bge label51
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	cmp r2, #0
	bge label23
	mvn r9, #0
	cmn r9, #1
	ble label171
	cmp r1, #0
	bge label30
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	cmp r2, #0
	bge label40
	b label867
label931:
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	b label996
label43:
	add r9, r8, r6
	ldr r9, [r0, r9, lsl #2]
	cmp r9, #0
	bge label59
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	mvn r10, #0
	cmp r1, #0
	bge label51
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	cmp r2, #0
	bge label23
	mvn r9, #0
	cmn r9, #1
	ble label171
	cmp r1, #0
	bge label30
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	cmp r2, #0
	bge label40
	mvn r9, #0
	cmp r9, #0
	bge label59
	b label931
label967:
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
label1032:
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	b label1036
label13:
	add r1, r1, #1
	cmp r1, r5
	bge label99
	cmp r5, #0
	ble label13
	mov r2, #0
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	b label1032
label1036:
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
label1038:
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	b label1036
label1040:
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	b label1038
label10:
	cmp r1, #0
	bge label11
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	b label1038
label11:
	cmp r1, r5
	blt label12
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	b label1038
label12:
	ldr r3, [r6, r3, lsl #2]
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	b label1038
label76:
	add r2, r1, #16
	cmp r2, r5
	bge label79
	b label78
label79:
	add r2, r1, #16
	cmp r2, r5
	bge label81
	b label86
label81:
	add r2, r1, #16
	cmp r2, r5
	bge label84
	b label83
label84:
	ldr r2, [r0, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label73
	ldr r2, [r0, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label73
	ldr r2, [r0, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label73
	ldr r2, [r0, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label73
	ldr r2, [r0, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label73
	ldr r2, [r0, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label73
	ldr r2, [r0, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label73
	ldr r2, [r0, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label73
	ldr r2, [r0, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label73
	ldr r2, [r0, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label73
label1096:
	ldr r2, [r0, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label73
	b label1096
label83:
	add r3, r4, r1, lsl #2
	add r6, r0, r1, lsl #2
	ldr r7, [r0, r1, lsl #2]
	str r7, [r4, r1, lsl #2]
	ldr r1, [r6, #4]
	str r1, [r3, #4]
	ldr r1, [r6, #8]
	str r1, [r3, #8]
	ldr r1, [r6, #12]
	str r1, [r3, #12]
	ldr r1, [r6, #16]
	str r1, [r3, #16]
	ldr r1, [r6, #20]
	str r1, [r3, #20]
	ldr r1, [r6, #24]
	str r1, [r3, #24]
	ldr r1, [r6, #28]
	str r1, [r3, #28]
	ldr r1, [r6, #32]
	str r1, [r3, #32]
	ldr r1, [r6, #36]
	str r1, [r3, #36]
	ldr r1, [r6, #40]
	str r1, [r3, #40]
	ldr r1, [r6, #44]
	str r1, [r3, #44]
	ldr r1, [r6, #48]
	str r1, [r3, #48]
	ldr r1, [r6, #52]
	str r1, [r3, #52]
	ldr r1, [r6, #56]
	str r1, [r3, #56]
	ldr r1, [r6, #60]
	str r1, [r3, #60]
	mov r1, r2
	add r2, r2, #16
	cmp r2, r5
	bge label84
	b label83
label86:
	add r3, r4, r1, lsl #2
	add r6, r0, r1, lsl #2
	ldr r7, [r0, r1, lsl #2]
	str r7, [r4, r1, lsl #2]
	ldr r1, [r6, #4]
	str r1, [r3, #4]
	ldr r1, [r6, #8]
	str r1, [r3, #8]
	ldr r1, [r6, #12]
	str r1, [r3, #12]
	ldr r1, [r6, #16]
	str r1, [r3, #16]
	ldr r1, [r6, #20]
	str r1, [r3, #20]
	ldr r1, [r6, #24]
	str r1, [r3, #24]
	ldr r1, [r6, #28]
	str r1, [r3, #28]
	ldr r1, [r6, #32]
	str r1, [r3, #32]
	ldr r1, [r6, #36]
	str r1, [r3, #36]
	ldr r1, [r6, #40]
	str r1, [r3, #40]
	ldr r1, [r6, #44]
	str r1, [r3, #44]
	ldr r1, [r6, #48]
	str r1, [r3, #48]
	ldr r1, [r6, #52]
	str r1, [r3, #52]
	ldr r1, [r6, #56]
	str r1, [r3, #56]
	ldr r1, [r6, #60]
	str r1, [r3, #60]
	mov r1, r2
	add r2, r2, #16
	cmp r2, r5
	bge label81
	b label86
label78:
	add r3, r4, r1, lsl #2
	add r6, r0, r1, lsl #2
	ldr r7, [r0, r1, lsl #2]
	str r7, [r4, r1, lsl #2]
	ldr r1, [r6, #4]
	str r1, [r3, #4]
	ldr r1, [r6, #8]
	str r1, [r3, #8]
	ldr r1, [r6, #12]
	str r1, [r3, #12]
	ldr r1, [r6, #16]
	str r1, [r3, #16]
	ldr r1, [r6, #20]
	str r1, [r3, #20]
	ldr r1, [r6, #24]
	str r1, [r3, #24]
	ldr r1, [r6, #28]
	str r1, [r3, #28]
	ldr r1, [r6, #32]
	str r1, [r3, #32]
	ldr r1, [r6, #36]
	str r1, [r3, #36]
	ldr r1, [r6, #40]
	str r1, [r3, #40]
	ldr r1, [r6, #44]
	str r1, [r3, #44]
	ldr r1, [r6, #48]
	str r1, [r3, #48]
	ldr r1, [r6, #52]
	str r1, [r3, #52]
	ldr r1, [r6, #56]
	str r1, [r3, #56]
	ldr r1, [r6, #60]
	str r1, [r3, #60]
	mov r1, r2
	add r2, r2, #16
	cmp r2, r5
	bge label79
	b label78
label87:
	add r3, r4, r1, lsl #2
	add r6, r0, r1, lsl #2
	ldr r7, [r0, r1, lsl #2]
	str r7, [r4, r1, lsl #2]
	ldr r1, [r6, #4]
	str r1, [r3, #4]
	ldr r1, [r6, #8]
	str r1, [r3, #8]
	ldr r1, [r6, #12]
	str r1, [r3, #12]
	ldr r1, [r6, #16]
	str r1, [r3, #16]
	ldr r1, [r6, #20]
	str r1, [r3, #20]
	ldr r1, [r6, #24]
	str r1, [r3, #24]
	ldr r1, [r6, #28]
	str r1, [r3, #28]
	ldr r1, [r6, #32]
	str r1, [r3, #32]
	ldr r1, [r6, #36]
	str r1, [r3, #36]
	ldr r1, [r6, #40]
	str r1, [r3, #40]
	ldr r1, [r6, #44]
	str r1, [r3, #44]
	ldr r1, [r6, #48]
	str r1, [r3, #48]
	ldr r1, [r6, #52]
	str r1, [r3, #52]
	ldr r1, [r6, #56]
	str r1, [r3, #56]
	ldr r1, [r6, #60]
	str r1, [r3, #60]
	mov r1, r2
	add r2, r2, #16
	cmp r2, r5
	bge label76
	b label87
label73:
	mov r0, #64
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
