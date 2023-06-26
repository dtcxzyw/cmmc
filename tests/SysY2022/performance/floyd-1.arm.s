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
	b label968
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
	b label622
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
	b label1041
label622:
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	b label682
label72:
	mul r5, r5, r5
	cmp r5, #0
	ble label73
	mov r1, #0
	add r2, r1, #16
	cmp r2, r5
	bge label76
	b label87
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
	b label931
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
	b label931
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
	b label931
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
	b label746
label931:
	mvn r9, #0
	cmn r9, #1
	ble label171
	b label996
label746:
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
	b label805
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
	b label1061
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
	b label746
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
label682:
	mvn r10, #0
	cmp r1, #0
	bge label51
	b label745
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
	b label1078
label745:
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
label867:
	cmp r2, #0
	bge label23
	b label931
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
	b label867
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
	b label745
label868:
	mvn r9, #0
	cmp r9, #0
	bge label59
	b label932
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
	b label868
label932:
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	b label997
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
	b label932
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
	b label868
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
	b label868
label1078:
	mvn r10, #0
	cmp r1, #0
	bge label51
	b label1062
label997:
	mvn r10, #0
	cmp r1, #0
	bge label51
	b label1062
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
label1061:
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label38
label805:
	cmp r2, #0
	bge label40
	b label868
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
label996:
	cmp r1, #0
	bge label30
	b label1061
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
	b label1061
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
	b label622
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
	b label1074
label1088:
	mvn r9, #0
	cmp r9, #0
	bge label59
	b label1086
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
	b label1086
label1084:
	mvn r9, #0
	cmp r9, #0
	bge label59
label1086:
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label55
	b label997
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
	b label1088
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
	b label1084
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
	b label1084
label1074:
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	b label867
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
	b label1084
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
	b label1086
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
	b label1086
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
	b label867
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
	b label867
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
	b label1062
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
	b label1084
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
	cmp r2, #0
	bge label40
	b label1084
label1062:
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label21
	b label867
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
	b label1062
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
	b label1062
label1037:
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
label1039:
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	b label1037
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
	b label1039
label968:
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
label1033:
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	b label1037
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
	b label1033
label1041:
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	b label1039
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
	b label1039
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
	b label1039
label76:
	add r2, r1, #16
	cmp r2, r5
	bge label79
	b label78
label79:
	add r2, r1, #16
	cmp r2, r5
	bge label82
label81:
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
	bge label82
	b label81
label82:
	add r2, r1, #16
	cmp r2, r5
	bge label85
	b label84
label85:
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
label1097:
	ldr r2, [r0, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label73
	b label1097
label84:
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
	bge label85
	b label84
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
