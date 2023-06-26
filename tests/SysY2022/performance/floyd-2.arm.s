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
	b label974
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
	bge label71
	cmp r2, #0
	bge label22
	mvn r9, #0
	cmn r9, #1
	ble label170
	cmp r1, #0
	bge label29
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmp r9, #0
	bge label58
label622:
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	b label683
label72:
	mul r5, r5, r5
	cmp r5, #0
	ble label73
	mov r1, #0
	add r2, r1, #16
	cmp r2, r5
	bge label76
	b label87
label22:
	cmp r2, r5
	blt label23
	mvn r9, #0
	cmn r9, #1
	ble label170
	cmp r1, #0
	bge label29
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmp r9, #0
	bge label58
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	mvn r10, #0
	cmp r1, #0
	bge label50
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	cmp r2, #0
	bge label22
	b label936
label23:
	cmp r1, #0
	bge label24
	mvn r9, #0
	cmn r9, #1
	ble label170
	cmp r1, #0
	bge label29
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmp r9, #0
	bge label58
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	mvn r10, #0
	cmp r1, #0
	bge label50
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	cmp r2, #0
	bge label22
	b label936
label24:
	cmp r1, r5
	blt label25
	mvn r9, #0
	cmn r9, #1
	ble label170
	cmp r1, #0
	bge label29
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmp r9, #0
	bge label58
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	mvn r10, #0
	cmp r1, #0
	bge label50
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	cmp r2, #0
	bge label22
	b label936
label871:
	cmp r2, #0
	bge label22
label936:
	mvn r9, #0
	cmn r9, #1
	ble label170
label1002:
	cmp r1, #0
	bge label29
	b label1068
label54:
	cmp r2, r5
	blt label55
	mvn r10, #0
	cmp r1, #0
	bge label50
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	cmp r2, #0
	bge label22
	mvn r9, #0
	cmn r9, #1
	ble label170
	cmp r1, #0
	bge label29
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmp r9, #0
	bge label58
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	b label1085
label170:
	mov r9, #0
	cmp r9, #0
	beq label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmp r9, #0
	bge label58
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	mvn r10, #0
	cmp r1, #0
	bge label50
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	cmp r2, #0
	bge label22
	mvn r9, #0
	cmn r9, #1
	ble label170
	cmp r1, #0
	bge label29
	b label748
label29:
	cmp r1, r5
	blt label30
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmp r9, #0
	bge label58
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	mvn r10, #0
	cmp r1, #0
	bge label50
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	cmp r2, #0
	bge label22
	mvn r9, #0
	cmn r9, #1
	ble label170
	cmp r1, #0
	bge label29
	b label1068
label30:
	cmp r8, #0
	bge label31
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmp r9, #0
	bge label58
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	mvn r10, #0
	cmp r1, #0
	bge label50
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	cmp r2, #0
	bge label22
	mvn r9, #0
	cmn r9, #1
	ble label170
	cmp r1, #0
	bge label29
	b label1068
label31:
	cmp r8, r5
	blt label32
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmp r9, #0
	bge label58
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	mvn r10, #0
	cmp r1, #0
	bge label50
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	cmp r2, #0
	bge label22
	mvn r9, #0
	cmn r9, #1
	ble label170
	cmp r1, #0
	bge label29
label1068:
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
	b label808
label37:
	add r8, r8, #1
	cmp r8, r5
	bge label71
	cmp r2, #0
	bge label22
	mvn r9, #0
	cmn r9, #1
	ble label170
	cmp r1, #0
	bge label29
label748:
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
label808:
	cmp r2, #0
	bge label39
	b label872
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
	bge label71
	cmp r2, #0
	bge label22
	mvn r9, #0
	cmn r9, #1
	ble label170
	cmp r1, #0
	bge label29
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmp r9, #0
	bge label58
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	b label683
label747:
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	b label871
label683:
	mvn r10, #0
	cmp r1, #0
	bge label50
	b label747
label71:
	add r2, r2, #1
	mul r6, r2, r5
	mla r7, r2, r5, r1
	add r7, r0, r7, lsl #2
	cmp r2, r5
	bge label18
	mov r8, #0
	cmp r8, r5
	bge label71
	cmp r2, #0
	bge label22
	mvn r9, #0
	cmn r9, #1
	ble label170
	cmp r1, #0
	bge label29
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmp r9, #0
	bge label58
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	mvn r10, #0
	cmp r1, #0
	bge label50
	b label747
label32:
	add r9, r8, r3
	ldr r9, [r0, r9, lsl #2]
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmp r9, #0
	bge label58
	b label622
label872:
	mvn r9, #0
	cmp r9, #0
	bge label58
	b label937
label39:
	cmp r2, r5
	blt label40
	mvn r9, #0
	cmp r9, #0
	bge label58
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	mvn r10, #0
	cmp r1, #0
	bge label50
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	cmp r2, #0
	bge label22
	mvn r9, #0
	cmn r9, #1
	ble label170
	cmp r1, #0
	bge label29
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
	cmp r2, #0
	bge label39
	b label872
label40:
	cmp r8, #0
	bge label41
	mvn r9, #0
	cmp r9, #0
	bge label58
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	mvn r10, #0
	cmp r1, #0
	bge label50
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	cmp r2, #0
	bge label22
	mvn r9, #0
	cmn r9, #1
	ble label170
	cmp r1, #0
	bge label29
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
	cmp r2, #0
	bge label39
	b label872
label41:
	cmp r8, r5
	blt label42
	mvn r9, #0
	cmp r9, #0
	bge label58
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	mvn r10, #0
	cmp r1, #0
	bge label50
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	cmp r2, #0
	bge label22
	mvn r9, #0
	cmn r9, #1
	ble label170
	cmp r1, #0
	bge label29
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
	cmp r2, #0
	bge label39
	b label872
label50:
	cmp r1, r5
	blt label51
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	cmp r2, #0
	bge label22
	mvn r9, #0
	cmn r9, #1
	ble label170
	cmp r1, #0
	bge label29
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmp r9, #0
	bge label58
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	mvn r10, #0
	cmp r1, #0
	bge label50
	b label1081
label58:
	add r9, r8, r6
	ldr r9, [r0, r9, lsl #2]
	cmp r2, #0
	bge label67
	mvn r10, #0
	cmp r1, #0
	bge label63
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label37
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	mvn r10, #0
	cmp r1, #0
	bge label50
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	cmp r2, #0
	bge label22
	mvn r9, #0
	cmn r9, #1
	ble label170
	cmp r1, #0
	bge label29
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
	b label1089
label1091:
	mvn r9, #0
	cmp r9, #0
	bge label58
	b label1093
label63:
	cmp r1, r5
	blt label64
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label37
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	mvn r10, #0
	cmp r1, #0
	bge label50
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	cmp r2, #0
	bge label22
	mvn r9, #0
	cmn r9, #1
	ble label170
	cmp r1, #0
	bge label29
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
	cmp r2, #0
	bge label39
	b label1095
label68:
	cmp r1, #0
	bge label69
	mvn r10, #0
	bge label63
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label37
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	mvn r10, #0
	cmp r1, #0
	bge label50
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	cmp r2, #0
	bge label22
	mvn r9, #0
	cmn r9, #1
	ble label170
	cmp r1, #0
	bge label29
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
	cmp r2, #0
	bge label39
	b label1091
label69:
	cmp r1, r5
	blt label70
	mvn r10, #0
	cmp r1, #0
	bge label63
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label37
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	mvn r10, #0
	cmp r1, #0
	bge label50
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	cmp r2, #0
	bge label22
	mvn r9, #0
	cmn r9, #1
	ble label170
	cmp r1, #0
	bge label29
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
	cmp r2, #0
	bge label39
	b label1091
label937:
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	b label1003
label42:
	add r9, r8, r6
	ldr r9, [r0, r9, lsl #2]
	cmp r9, #0
	bge label58
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	mvn r10, #0
	cmp r1, #0
	bge label50
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	cmp r2, #0
	bge label22
	mvn r9, #0
	cmn r9, #1
	ble label170
	cmp r1, #0
	bge label29
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmp r9, #0
	bge label58
	b label937
label25:
	ldr r9, [r7, #0]
	cmn r9, #1
	ble label170
	cmp r1, #0
	bge label29
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmp r9, #0
	bge label58
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	mvn r10, #0
	cmp r1, #0
	bge label50
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	cmp r2, #0
	bge label22
	mvn r9, #0
	cmn r9, #1
	ble label170
	b label1002
label1095:
	mvn r9, #0
	cmp r9, #0
	bge label58
	b label1093
label1069:
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	b label871
label55:
	cmp r1, #0
	bge label56
	mvn r10, #0
	bge label50
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	cmp r2, #0
	bge label22
	mvn r9, #0
	cmn r9, #1
	ble label170
	cmp r1, #0
	bge label29
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmp r9, #0
	bge label58
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	mvn r10, #0
	cmp r1, #0
	bge label50
	b label1069
label56:
	cmp r1, r5
	blt label57
	mvn r10, #0
	cmp r1, #0
	bge label50
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	cmp r2, #0
	bge label22
	mvn r9, #0
	cmn r9, #1
	ble label170
	cmp r1, #0
	bge label29
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmp r9, #0
	bge label58
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	mvn r10, #0
	cmp r1, #0
	bge label50
	b label1069
label57:
	ldr r10, [r7, #0]
	cmp r1, #0
	bge label50
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	cmp r2, #0
	bge label22
	mvn r9, #0
	cmn r9, #1
	ble label170
	cmp r1, #0
	bge label29
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmp r9, #0
	bge label58
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	mvn r10, #0
	cmp r1, #0
	bge label50
	b label1069
label1089:
	cmp r2, #0
	bge label39
	b label1091
label67:
	cmp r2, r5
	blt label68
	mvn r10, #0
	cmp r1, #0
	bge label63
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label37
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	mvn r10, #0
	cmp r1, #0
	bge label50
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	cmp r2, #0
	bge label22
	mvn r9, #0
	cmn r9, #1
	ble label170
	cmp r1, #0
	bge label29
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
	cmp r2, #0
	bge label39
	b label1091
label1093:
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	b label1003
label66:
	add r11, r8, r3
	ldr r11, [r0, r11, lsl #2]
	add r10, r10, r11
	cmp r9, r10
	ble label37
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	mvn r10, #0
	cmp r1, #0
	bge label50
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	cmp r2, #0
	bge label22
	mvn r9, #0
	cmn r9, #1
	ble label170
	cmp r1, #0
	bge label29
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmp r9, #0
	bge label58
	b label1093
label64:
	cmp r8, #0
	bge label65
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label37
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	mvn r10, #0
	cmp r1, #0
	bge label50
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	cmp r2, #0
	bge label22
	mvn r9, #0
	cmn r9, #1
	ble label170
	cmp r1, #0
	bge label29
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmp r9, #0
	bge label58
	b label1093
label65:
	cmp r8, r5
	blt label66
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label37
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	mvn r10, #0
	cmp r1, #0
	bge label50
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	cmp r2, #0
	bge label22
	mvn r9, #0
	cmn r9, #1
	ble label170
	cmp r1, #0
	bge label29
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmp r9, #0
	bge label58
	b label1093
label70:
	ldr r10, [r7, #0]
	cmp r1, #0
	bge label63
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label37
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	mvn r10, #0
	cmp r1, #0
	bge label50
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	cmp r2, #0
	bge label22
	mvn r9, #0
	cmn r9, #1
	ble label170
	cmp r1, #0
	bge label29
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
	cmp r2, #0
	bge label39
	b label1091
label1081:
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	b label871
label51:
	cmp r8, #0
	bge label52
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	cmp r2, #0
	bge label22
	mvn r9, #0
	cmn r9, #1
	ble label170
	cmp r1, #0
	bge label29
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmp r9, #0
	bge label58
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	mvn r10, #0
	cmp r1, #0
	bge label50
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	b label871
label1085:
	mvn r10, #0
	cmp r1, #0
	bge label50
	b label1069
label1003:
	mvn r10, #0
	cmp r1, #0
	bge label50
	b label1069
label52:
	cmp r8, r5
	blt label53
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	cmp r2, #0
	bge label22
	mvn r9, #0
	cmn r9, #1
	ble label170
	cmp r1, #0
	bge label29
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmp r9, #0
	bge label58
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	mvn r10, #0
	cmp r1, #0
	bge label50
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	b label871
label53:
	add r11, r8, r3
	ldr r11, [r0, r11, lsl #2]
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	cmp r2, #0
	bge label22
	mvn r9, #0
	cmn r9, #1
	ble label170
	cmp r1, #0
	bge label29
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmp r9, #0
	bge label58
	add r9, r8, r6
	add r9, r0, r9, lsl #2
	cmp r2, #0
	bge label54
	mvn r10, #0
	cmp r1, #0
	bge label50
	mvn r11, #0
	add r10, r10, r11
	str r10, [r9, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label71
	b label871
label974:
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
label1040:
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
label1044:
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	b label1046
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
	b label1048
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
	b label1040
label1046:
	mvn r3, #0
	str r3, [r7, #0]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	b label1044
label1048:
	mla r3, r2, r5, r1
	add r7, r0, r3, lsl #2
	cmp r2, #0
	bge label9
	b label1046
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
	b label1046
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
	b label1046
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
	b label1046
label76:
	add r2, r1, #16
	cmp r2, r5
	bge label79
	b label78
label79:
	add r2, r1, #16
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
label1105:
	ldr r2, [r0, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label73
	b label1105
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
label73:
	mov r0, #64
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
