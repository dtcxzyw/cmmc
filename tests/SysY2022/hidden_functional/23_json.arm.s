.arch armv7ve
.data
.bss
.align 4
buffer:
	.zero	200000000
.text
.syntax unified
.arm
.fpu vfpv4
detect_item:
	push { r4, r5, r6, r7, lr }
	mov r5, r3
	mov r6, r2
	mov r4, r1
	sub sp, sp, #4
	ldr r1, [r3, #0]
	mov r2, r0
	cmp r6, r1
	bgt label7
label180:
	mov r0, #0
	b label172
label1277:
	mov r0, #1
label172:
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
label7:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label170
	cmp r2, #0
	bne label21
	ldr r1, [r5, #0]
	ldr r0, [r4, r1, lsl #2]
	cmp r0, #123
	bne label12
	mov r2, #4
	cmp r6, r1
	bgt label7
	b label180
label21:
	cmp r2, #1
	bne label55
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r2, r1, #43
	sub r1, r1, #45
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r2, r1
	beq label23
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label25
	b label180
label10:
	cmp r2, #0
	bne label21
	ldr r1, [r5, #0]
	ldr r0, [r4, r1, lsl #2]
	cmp r0, #123
	bne label12
	mov r2, #4
	cmp r6, r1
	bgt label7
	b label180
label170:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r7, r1, #9
	sub r3, r1, #32
	clz r7, r7
	clz r3, r3
	lsr r7, r7, #5
	lsr r3, r3, #5
	orr r3, r3, r7
	sub r7, r1, #10
	sub r1, r1, #13
	clz r7, r7
	clz r1, r1
	lsr r7, r7, #5
	lsr r1, r1, #5
	orr r3, r3, r7
	orrs r1, r3, r1
	beq label10
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label170
	cmp r2, #0
	bne label21
	ldr r1, [r5, #0]
	ldr r0, [r4, r1, lsl #2]
	cmp r0, #123
	bne label12
	mov r2, #4
	cmp r6, r1
	bgt label7
	b label180
label12:
	cmp r0, #91
	bne label13
	mov r0, #3
	ldr r1, [r5, #0]
	mov r2, r0
	cmp r6, r1
	bgt label7
	b label180
label13:
	cmp r0, #34
	bne label14
	mov r0, #2
	ldr r1, [r5, #0]
	mov r2, r0
	cmp r6, r1
	bgt label7
	b label180
label14:
	sub r1, r0, #48
	sub r2, r0, #43
	cmp r1, #10
	clz r2, r2
	mov r1, #0
	lsr r2, r2, #5
	movwlo r1, #1
	orr r1, r1, r2
	sub r2, r0, #45
	clz r2, r2
	lsr r2, r2, #5
	orrs r1, r1, r2
	beq label15
	mov r0, #1
	ldr r1, [r5, #0]
	mov r2, r0
	cmp r6, r1
	bgt label7
	b label180
label55:
	cmp r2, #2
	bne label58
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label164
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	bne label169
	cmp r6, r0
	bgt label167
	b label180
label58:
	cmp r2, #3
	bne label91
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label62
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label67
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	bne label67
	b label1225
label23:
	cmp r6, r0
	bgt label25
	b label180
label25:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label26
	b label180
label164:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label167
	b label180
label167:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	beq label1225
	b label180
label169:
	sub r1, r1, #92
	add r0, r0, #1
	clz r1, r1
	lsr r1, r1, #5
	add r0, r1, r0
	str r0, [r5, #0]
	cmp r6, r0
	ble label164
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	bne label169
	cmp r6, r0
	bgt label167
	b label180
label26:
	cmp r6, r0
	ble label53
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label29
	cmp r6, r0
	ble label52
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #46
	bne label36
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label36
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label33
	cmp r6, r0
	ble label1277
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1277
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label43
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label42
	b label1273
label36:
	cmp r6, r0
	ble label1277
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1277
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label43
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label42
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label48
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label45
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label1277
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label49
	b label1277
label1004:
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label1277
	b label1074
label53:
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label52
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #46
	bne label36
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label36
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label33
	cmp r6, r0
	ble label1277
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1277
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label43
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label42
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label48
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label45
	b label1004
label67:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	bne label68
	b label180
label68:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label87
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label78
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label76
	b label67
label71:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label78
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label76
	b label67
label87:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r3, r1, #9
	sub r2, r1, #32
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orr r2, r2, r3
	sub r3, r1, #10
	sub r1, r1, #13
	clz r3, r3
	clz r1, r1
	lsr r3, r3, #5
	lsr r1, r1, #5
	orr r2, r2, r3
	orrs r1, r2, r1
	beq label71
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label87
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label78
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label76
	b label67
label62:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r3, r1, #9
	sub r2, r1, #32
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orr r2, r2, r3
	sub r3, r1, #10
	sub r1, r1, #13
	clz r3, r3
	clz r1, r1
	lsr r3, r3, #5
	lsr r1, r1, #5
	orr r2, r2, r3
	orrs r1, r2, r1
	beq label65
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label62
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label67
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	bne label67
	b label1225
label91:
	cmp r2, #4
	bne label92
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label118
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label122
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	bne label122
	b label1225
label1273:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b label43
label29:
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label53
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label29
	cmp r6, r0
	ble label52
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #46
	bne label36
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label36
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label33
	cmp r6, r0
	ble label1277
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1277
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label43
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label42
	b label1273
label33:
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label36
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label33
	cmp r6, r0
	ble label1277
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1277
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label43
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label42
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label48
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label45
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label1277
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label49
	b label1277
label65:
	cmp r6, r0
	ble label67
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	bne label67
	b label1225
label42:
	ldr r0, [r5, #0]
	b label43
label326:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label45
	b label1004
label1225:
	add r0, r0, #1
	str r0, [r5, #0]
	mov r0, #1
	b label172
label78:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label82
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label86
	b label180
label82:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r3, r1, #9
	sub r2, r1, #32
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orr r2, r2, r3
	sub r3, r1, #10
	sub r1, r1, #13
	clz r3, r3
	clz r1, r1
	lsr r3, r3, #5
	lsr r1, r1, #5
	orr r2, r2, r3
	orrs r1, r2, r1
	beq label84
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label82
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label86
	b label180
label84:
	cmp r6, r0
	bgt label86
	b label180
label76:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r3, r1, #9
	sub r2, r1, #32
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orr r2, r2, r3
	sub r3, r1, #10
	sub r1, r1, #13
	clz r3, r3
	clz r1, r1
	lsr r3, r3, #5
	lsr r1, r1, #5
	orr r2, r2, r3
	orrs r1, r2, r1
	beq label67
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label76
	b label67
label52:
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label1277
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1277
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label43
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label42
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label48
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label45
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label1277
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label49
	b label1277
label92:
	cmp r2, #5
	bne label98
	ldr r0, [r5, #0]
	add r1, r0, #3
	cmp r6, r1
	bgt label94
	b label180
label98:
	cmp r2, #6
	bne label99
	ldr r0, [r5, #0]
	add r1, r0, #4
	cmp r6, r1
	bgt label106
	b label180
label99:
	cmp r2, #7
	bne label180
	ldr r0, [r5, #0]
	add r1, r0, #3
	cmp r6, r1
	bgt label101
	b label180
label43:
	cmp r6, r0
	ble label48
	b label326
label49:
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label1277
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label49
	b label1277
label1074:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label49
	b label1277
label118:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r3, r1, #9
	sub r2, r1, #32
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orr r2, r2, r3
	sub r3, r1, #10
	sub r1, r1, #13
	clz r3, r3
	clz r1, r1
	lsr r3, r3, #5
	lsr r1, r1, #5
	orr r2, r2, r3
	orrs r1, r2, r1
	beq label120
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label118
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label122
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	bne label122
	b label1225
label120:
	cmp r6, r0
	ble label122
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	bne label122
	b label1225
label45:
	cmp r6, r0
	ble label1277
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label49
	b label1277
label122:
	mov r0, #2
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	bne label123
	b label180
label123:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label126
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label130
	b label180
label137:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label156
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label142
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label154
	b label122
label140:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label142
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label154
	b label122
label142:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label148
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label147
	b label180
label145:
	cmp r6, r0
	bgt label147
	b label180
label147:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	beq label1225
	b label180
label148:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r3, r1, #9
	sub r2, r1, #32
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orr r2, r2, r3
	sub r3, r1, #10
	sub r1, r1, #13
	clz r3, r3
	clz r1, r1
	lsr r3, r3, #5
	lsr r1, r1, #5
	orr r2, r2, r3
	orrs r1, r2, r1
	beq label145
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label148
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label147
	b label180
label156:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r3, r1, #9
	sub r2, r1, #32
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orr r2, r2, r3
	sub r3, r1, #10
	sub r1, r1, #13
	clz r3, r3
	clz r1, r1
	lsr r3, r3, #5
	lsr r1, r1, #5
	orr r2, r2, r3
	orrs r1, r2, r1
	beq label140
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label156
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label142
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label154
	b label122
label48:
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label1277
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label49
	b label1277
label126:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r3, r1, #9
	sub r2, r1, #32
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orr r2, r2, r3
	sub r3, r1, #10
	sub r1, r1, #13
	clz r3, r3
	clz r1, r1
	lsr r3, r3, #5
	lsr r1, r1, #5
	orr r2, r2, r3
	orrs r1, r2, r1
	beq label128
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label126
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label130
	b label180
label128:
	cmp r6, r0
	bgt label130
	b label180
label15:
	cmp r0, #116
	bne label16
	b label20
label16:
	cmp r0, #102
	bne label18
	mov r0, #6
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	b label172
label18:
	cmp r0, #110
	bne label180
	mov r0, #7
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	b label172
label20:
	mov r0, #5
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	b label172
label94:
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #116
	beq label95
	b label180
label130:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #58
	beq label131
	b label180
label131:
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label134
	b label136
label134:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r3, r1, #9
	sub r2, r1, #32
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orr r2, r2, r3
	sub r3, r1, #10
	sub r1, r1, #13
	clz r3, r3
	clz r1, r1
	lsr r3, r3, #5
	lsr r1, r1, #5
	orr r2, r2, r3
	orrs r1, r2, r1
	beq label136
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label134
label136:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	bne label137
	b label180
label106:
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #102
	beq label107
	b label180
label95:
	add r2, r0, #1
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #114
	beq label96
	b label180
label96:
	add r2, r0, #2
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #117
	beq label97
	b label180
label101:
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #110
	beq label102
	b label180
label102:
	add r2, r0, #1
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #117
	beq label103
	b label180
label107:
	add r2, r0, #1
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #97
	beq label108
	b label180
label154:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r3, r1, #9
	sub r2, r1, #32
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orr r2, r2, r3
	sub r3, r1, #10
	sub r1, r1, #13
	clz r3, r3
	clz r1, r1
	lsr r3, r3, #5
	lsr r1, r1, #5
	orr r2, r2, r3
	orrs r1, r2, r1
	beq label122
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label154
	b label122
label97:
	ldr r1, [r4, r1, lsl #2]
	cmp r1, #101
	beq label524
	b label180
label108:
	add r2, r0, #2
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #108
	beq label109
	b label180
label109:
	add r2, r0, #3
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #115
	beq label110
	b label180
label110:
	ldr r1, [r4, r1, lsl #2]
	cmp r1, #101
	beq label111
	b label180
label86:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	beq label1225
	b label180
label524:
	add r0, r0, #4
	str r0, [r5, #0]
	mov r0, #1
	b label172
label103:
	add r2, r0, #2
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #108
	beq label104
	b label180
label104:
	ldr r1, [r4, r1, lsl #2]
	cmp r1, #108
	beq label524
	b label180
label111:
	add r0, r0, #5
	str r0, [r5, #0]
	mov r0, #1
	b label172
.globl main
main:
	push { r4, r5, r6, lr }
	mov r0, #0
	sub sp, sp, #8
	str r0, [sp, #0]
	mov r5, sp
	bl getch
	cmp r0, #35
	movw r4, #:lower16:buffer
	movt r4, #:upper16:buffer
	beq label1328
	mov r6, #0
	b label1300
label1328:
	mov r0, #0
	mov r6, r0
	cmp r0, r0
	bgt label1319
	b label1309
label1300:
	str r0, [r4, r6, lsl #2]
	bl getch
	cmp r0, #35
	add r6, r6, #1
	beq label1303
	b label1300
label1309:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	mov r1, r0
	ldr r0, [sp, #0]
	cmp r6, r0
	bgt label1312
	cmp r1, #0
	beq label1316
	b label1315
label1312:
	ldr r0, [sp, #0]
	ldr r2, [r4, r0, lsl #2]
	sub r5, r2, #9
	sub r3, r2, #32
	clz r5, r5
	clz r3, r3
	lsr r5, r5, #5
	lsr r3, r3, #5
	orr r3, r3, r5
	sub r5, r2, #10
	sub r2, r2, #13
	clz r5, r5
	clz r2, r2
	lsr r5, r5, #5
	lsr r2, r2, #5
	orr r3, r3, r5
	orrs r2, r3, r2
	beq label1314
	add r0, r0, #1
	str r0, [sp, #0]
	cmp r6, r0
	bgt label1312
	cmp r1, #0
	beq label1316
	b label1315
label1314:
	cmp r1, #0
	beq label1316
	b label1315
label1319:
	ldr r0, [sp, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r3, r1, #9
	sub r2, r1, #32
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orr r2, r2, r3
	sub r3, r1, #10
	sub r1, r1, #13
	clz r3, r3
	clz r1, r1
	lsr r3, r3, #5
	lsr r1, r1, #5
	orr r2, r2, r3
	orrs r1, r2, r1
	beq label1309
	add r0, r0, #1
	str r0, [sp, #0]
	cmp r6, r0
	bgt label1319
	b label1309
label1303:
	ldr r0, [sp, #0]
	cmp r6, r0
	bgt label1319
	b label1309
label1315:
	mov r0, #111
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	mov r0, #0
label1317:
	add sp, sp, #8
	pop { r4, r5, r6, pc }
label1316:
	mov r0, #110
	bl putch
	mov r0, #111
	bl putch
	mov r0, #116
	bl putch
	mov r0, #32
	bl putch
	mov r0, #111
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	mov r0, #1
	b label1317
