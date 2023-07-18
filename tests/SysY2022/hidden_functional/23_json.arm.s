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
	bgt label9
label180:
	mov r0, #0
label7:
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
label1259:
	mov r0, #1
	b label7
label50:
	add r0, r0, #1
	str r0, [r5, #0]
label52:
	cmp r6, r0
	ble label1259
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label50
	b label1259
label9:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label172
	cmp r2, #0
	bne label23
	ldr r1, [r5, #0]
	ldr r0, [r4, r1, lsl #2]
	cmp r0, #123
	bne label14
	mov r2, #4
	cmp r6, r1
	bgt label9
	b label180
label12:
	cmp r2, #0
	bne label23
	ldr r1, [r5, #0]
	ldr r0, [r4, r1, lsl #2]
	cmp r0, #123
	bne label14
	mov r2, #4
	cmp r6, r1
	bgt label9
	b label180
label172:
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
	beq label12
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label172
	cmp r2, #0
	bne label23
	ldr r1, [r5, #0]
	ldr r0, [r4, r1, lsl #2]
	cmp r0, #123
	bne label14
	mov r2, #4
	cmp r6, r1
	bgt label9
	b label180
label14:
	cmp r0, #91
	bne label15
	mov r0, #3
	ldr r1, [r5, #0]
	mov r2, r0
	cmp r6, r1
	bgt label9
	b label180
label23:
	cmp r2, #1
	bne label57
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r2, r1, #43
	sub r1, r1, #45
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r2, r1
	beq label25
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label27
	b label180
label57:
	cmp r2, #2
	bne label58
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label171
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	bne label167
	cmp r6, r0
	bgt label170
	b label180
label15:
	cmp r0, #34
	bne label16
	mov r0, #2
	ldr r1, [r5, #0]
	mov r2, r0
	cmp r6, r1
	bgt label9
	b label180
label16:
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
	beq label17
	mov r0, #1
	ldr r1, [r5, #0]
	mov r2, r0
	cmp r6, r1
	bgt label9
	b label180
label25:
	cmp r6, r0
	bgt label27
	b label180
label171:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label170
	b label180
label58:
	cmp r2, #3
	bne label59
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label132
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label136
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	bne label136
label1190:
	add r0, r0, #1
	str r0, [r5, #0]
	mov r0, #1
	b label7
label59:
	cmp r2, #4
	bne label107
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label105
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label66
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	bne label66
	b label1190
label107:
	cmp r2, #5
	bne label115
	ldr r0, [r5, #0]
	add r1, r0, #3
	cmp r6, r1
	bgt label109
	b label180
label109:
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #116
	beq label110
	b label180
label27:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label28
	b label180
label28:
	cmp r6, r0
	ble label32
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label31
	cmp r6, r0
	ble label39
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #46
	bne label40
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label40
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label36
	cmp r6, r0
	ble label1259
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1259
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label47
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label45
	b label1255
label32:
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label39
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #46
	bne label40
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label40
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label36
	cmp r6, r0
	ble label1259
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1259
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label47
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label45
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label49
	b label1258
label167:
	sub r1, r1, #92
	add r0, r0, #1
	clz r1, r1
	lsr r1, r1, #5
	add r0, r1, r0
	str r0, [r5, #0]
	cmp r6, r0
	ble label171
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	bne label167
	cmp r6, r0
	bgt label170
	b label180
label170:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	beq label1190
	b label180
label136:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	bne label137
	b label180
label137:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label141
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label150
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label148
	b label136
label132:
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
	beq label134
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label132
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label136
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	bne label136
	b label1190
label134:
	cmp r6, r0
	ble label136
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	bne label136
	b label1190
label1255:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b label47
label31:
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label32
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label31
	cmp r6, r0
	ble label39
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #46
	bne label40
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label40
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label36
	cmp r6, r0
	ble label1259
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1259
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label47
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label45
	b label1255
label45:
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label49
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label52
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label1259
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label50
	b label1259
label36:
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label40
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label36
	cmp r6, r0
	ble label1259
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1259
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label47
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label45
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label49
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label52
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label1259
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label50
	b label1259
label39:
	ldr r0, [r5, #0]
label40:
	cmp r6, r0
	ble label1259
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1259
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label47
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label45
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label49
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label52
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label1259
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label50
	b label1259
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
	beq label136
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label148
	b label136
label141:
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
	beq label143
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label141
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label150
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label148
	b label136
label143:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label150
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label148
	b label136
label150:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label157
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label155
	b label180
label153:
	cmp r6, r0
	bgt label155
	b label180
label157:
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
	beq label153
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label157
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label155
	b label180
label1258:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label52
	b label1005
label47:
	cmp r6, r0
	ble label49
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label52
label1005:
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label1259
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label50
	b label1259
label63:
	cmp r6, r0
	ble label66
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	bne label66
	b label1190
label105:
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
	beq label63
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label105
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label66
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	bne label66
	b label1190
label66:
	mov r0, #2
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	bne label67
	b label180
label49:
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label1259
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label50
	b label1259
label115:
	cmp r2, #6
	bne label123
	ldr r0, [r5, #0]
	add r1, r0, #4
	cmp r6, r1
	bgt label117
	b label180
label67:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label102
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label73
	b label180
label71:
	cmp r6, r0
	bgt label73
	b label180
label73:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #58
	beq label74
	b label180
label74:
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label100
label77:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	bne label78
	b label180
label100:
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
	beq label77
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label100
	b label77
label102:
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
	bgt label102
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label73
	b label180
label17:
	cmp r0, #116
	bne label19
	mov r0, #5
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	b label7
label19:
	cmp r0, #102
	bne label21
	b label20
label123:
	cmp r2, #7
	bne label180
	ldr r0, [r5, #0]
	add r1, r0, #3
	cmp r6, r1
	bgt label125
	b label180
label125:
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #110
	beq label126
	b label180
label117:
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #102
	beq label118
	b label180
label118:
	add r2, r0, #1
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #97
	beq label119
	b label180
label110:
	add r2, r0, #1
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #114
	beq label111
	b label180
label111:
	add r2, r0, #2
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #117
	beq label112
	b label180
label20:
	mov r0, #6
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	b label7
label21:
	cmp r0, #110
	bne label180
	mov r0, #7
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	b label7
label78:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label98
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label83
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label95
	b label66
label95:
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
	beq label66
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label95
	b label66
label81:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label83
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label95
	b label66
label83:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label90
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label88
	b label180
label86:
	cmp r6, r0
	bgt label88
	b label180
label88:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	beq label1190
	b label180
label90:
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
	beq label86
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label90
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label88
	b label180
label98:
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
	beq label81
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label98
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label83
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label95
	b label66
label112:
	ldr r1, [r4, r1, lsl #2]
	cmp r1, #101
	beq label113
	b label180
label119:
	add r2, r0, #2
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #108
	beq label120
	b label180
label126:
	add r2, r0, #1
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #117
	beq label127
	b label180
label127:
	add r2, r0, #2
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #108
	beq label128
	b label180
label128:
	ldr r1, [r4, r1, lsl #2]
	cmp r1, #108
	beq label113
	b label180
label155:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	beq label1190
	b label180
label113:
	add r0, r0, #4
	str r0, [r5, #0]
	mov r0, #1
	b label7
label120:
	add r2, r0, #3
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #115
	beq label121
	b label180
label121:
	ldr r1, [r4, r1, lsl #2]
	cmp r1, #101
	beq label122
	b label180
label122:
	add r0, r0, #5
	str r0, [r5, #0]
	mov r0, #1
	b label7
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
	beq label1305
	mov r6, #0
	b label1277
label1305:
	mov r0, #0
	mov r6, r0
	cmp r0, r0
	bgt label1296
	b label1286
label1277:
	str r0, [r4, r6, lsl #2]
	bl getch
	cmp r0, #35
	add r6, r6, #1
	beq label1280
	b label1277
label1286:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	mov r1, r0
	ldr r0, [sp, #0]
	cmp r6, r0
	bgt label1289
	cmp r1, #0
	beq label1292
	b label1293
label1289:
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
	beq label1291
	add r0, r0, #1
	str r0, [sp, #0]
	cmp r6, r0
	bgt label1289
	cmp r1, #0
	beq label1292
	b label1293
label1291:
	cmp r1, #0
	beq label1292
	b label1293
label1296:
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
	beq label1286
	add r0, r0, #1
	str r0, [sp, #0]
	cmp r6, r0
	bgt label1296
	b label1286
label1280:
	ldr r0, [sp, #0]
	cmp r6, r0
	bgt label1296
	b label1286
label1293:
	mov r0, #111
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	mov r0, #0
	b label1294
label1292:
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
label1294:
	add sp, sp, #8
	pop { r4, r5, r6, pc }
