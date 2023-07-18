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
label1258:
	mov r0, #1
	b label7
label9:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label12
	cmp r2, #0
	bne label25
	ldr r1, [r5, #0]
	ldr r0, [r4, r1, lsl #2]
	cmp r0, #123
	bne label16
	mov r2, #4
	cmp r6, r1
	bgt label9
	b label180
label12:
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
	beq label14
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label12
	cmp r2, #0
	bne label25
	ldr r1, [r5, #0]
	ldr r0, [r4, r1, lsl #2]
	cmp r0, #123
	bne label16
	mov r2, #4
	cmp r6, r1
	bgt label9
	b label180
label14:
	cmp r2, #0
	bne label25
	ldr r1, [r5, #0]
	ldr r0, [r4, r1, lsl #2]
	cmp r0, #123
	bne label16
	mov r2, #4
	cmp r6, r1
	bgt label9
	b label180
label16:
	cmp r0, #91
	bne label17
	mov r0, #3
	ldr r1, [r5, #0]
	mov r2, r0
	cmp r6, r1
	bgt label9
	b label180
label17:
	cmp r0, #34
	bne label18
	mov r0, #2
	ldr r1, [r5, #0]
	mov r2, r0
	cmp r6, r1
	bgt label9
	b label180
label25:
	cmp r2, #1
	bne label59
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r2, r1, #43
	sub r1, r1, #45
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r2, r1
	beq label27
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label29
	b label180
label18:
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
	beq label19
	mov r0, #1
	ldr r1, [r5, #0]
	mov r2, r0
	cmp r6, r1
	bgt label9
	b label180
label59:
	cmp r2, #2
	bne label69
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label68
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	bne label64
	cmp r6, r0
	bgt label67
	b label180
label67:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	beq label1214
	b label180
label27:
	cmp r6, r0
	bgt label29
	b label180
label68:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label67
	b label180
label69:
	cmp r2, #3
	bne label70
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label143
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label148
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	bne label148
	b label1214
label29:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label30
	b label180
label30:
	cmp r6, r0
	ble label34
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label33
	cmp r6, r0
	ble label41
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #46
	bne label42
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label42
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label38
	cmp r6, r0
	ble label1258
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1258
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label49
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label47
	b label1254
label34:
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label41
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #46
	bne label42
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label42
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label38
	cmp r6, r0
	ble label1258
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1258
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label49
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label47
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label53
	b label1257
label38:
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label42
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label38
	cmp r6, r0
	ble label1258
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1258
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label49
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label47
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label53
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label54
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label1258
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label51
	b label1258
label47:
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label53
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label54
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label1258
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label51
	b label1258
label64:
	sub r1, r1, #92
	add r0, r0, #1
	clz r1, r1
	lsr r1, r1, #5
	add r0, r1, r0
	str r0, [r5, #0]
	cmp r6, r0
	ble label68
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	bne label64
	cmp r6, r0
	bgt label67
	b label180
label148:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	bne label149
	b label180
label160:
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
	beq label148
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label160
	b label148
label70:
	cmp r2, #4
	bne label71
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label97
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label102
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	bne label102
	b label1214
label71:
	cmp r2, #5
	bne label72
	ldr r0, [r5, #0]
	add r1, r0, #3
	cmp r6, r1
	bgt label89
	b label180
label33:
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label34
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label33
	cmp r6, r0
	ble label41
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #46
	bne label42
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label42
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label38
	cmp r6, r0
	ble label1258
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1258
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label49
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label47
	b label1254
label41:
	ldr r0, [r5, #0]
label42:
	cmp r6, r0
	ble label1258
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1258
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label49
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label47
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label53
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label54
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label1258
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label51
	b label1258
label49:
	cmp r6, r0
	ble label53
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label54
	b label1007
label143:
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
	bgt label143
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label148
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	bne label148
	b label1214
label145:
	cmp r6, r0
	ble label148
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	bne label148
label1214:
	add r0, r0, #1
	str r0, [r5, #0]
	mov r0, #1
	b label7
label149:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label152
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label162
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label160
	b label148
label162:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label166
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label170
	b label180
label166:
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
	beq label168
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label166
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label170
	b label180
label168:
	cmp r6, r0
	bgt label170
	b label180
label152:
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
	beq label155
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label152
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label162
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label160
	b label148
label155:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label162
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label160
	b label148
label1257:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label54
label1007:
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label1258
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label51
	b label1258
label97:
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
	beq label99
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label97
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label102
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	bne label102
	b label1214
label99:
	cmp r6, r0
	ble label102
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	bne label102
	b label1214
label53:
	ldr r0, [r5, #0]
label54:
	cmp r6, r0
	ble label1258
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label51
	b label1258
label102:
	mov r0, #2
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	bne label103
	b label180
label51:
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label1258
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label51
	b label1258
label72:
	cmp r2, #6
	bne label73
	ldr r0, [r5, #0]
	add r1, r0, #4
	cmp r6, r1
	bgt label80
	b label180
label103:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label138
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label108
	b label180
label106:
	cmp r6, r0
	bgt label108
	b label180
label108:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #58
	beq label109
	b label180
label138:
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
	beq label106
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label138
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label108
	b label180
label19:
	cmp r0, #116
	bne label21
	mov r0, #5
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	b label7
label21:
	cmp r0, #102
	bne label23
	mov r0, #6
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	b label7
label23:
	cmp r0, #110
	bne label180
	mov r0, #7
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	b label7
label89:
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #116
	beq label90
	b label180
label90:
	add r2, r0, #1
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #114
	beq label91
	b label180
label91:
	add r2, r0, #2
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #117
	beq label92
	b label180
label92:
	ldr r1, [r4, r1, lsl #2]
	cmp r1, #101
	beq label459
	b label180
label73:
	cmp r2, #7
	bne label180
	ldr r0, [r5, #0]
	add r1, r0, #3
	cmp r6, r1
	bgt label75
	b label180
label1254:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b label49
label80:
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #102
	beq label81
	b label180
label81:
	add r2, r0, #1
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #97
	beq label82
	b label180
label82:
	add r2, r0, #2
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #108
	beq label83
	b label180
label109:
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label135
label112:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	bne label113
	b label180
label135:
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
	beq label112
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label135
	b label112
label75:
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #110
	beq label76
	b label180
label76:
	add r2, r0, #1
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #117
	beq label77
	b label180
label113:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label132
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label118
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label130
	b label102
label116:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label118
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label130
	b label102
label118:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label124
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label123
	b label180
label121:
	cmp r6, r0
	bgt label123
	b label180
label123:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	beq label1214
	b label180
label124:
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
	beq label121
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label124
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label123
	b label180
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
	beq label116
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label132
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label118
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label130
	b label102
label130:
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
	beq label102
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label130
	b label102
label170:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	beq label1214
	b label180
label459:
	add r0, r0, #4
	str r0, [r5, #0]
	mov r0, #1
	b label7
label77:
	add r2, r0, #2
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #108
	beq label78
	b label180
label78:
	ldr r1, [r4, r1, lsl #2]
	cmp r1, #108
	beq label459
	b label180
label83:
	add r2, r0, #3
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #115
	beq label84
	b label180
label84:
	ldr r1, [r4, r1, lsl #2]
	cmp r1, #101
	beq label85
	b label180
label85:
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
	beq label1306
	mov r6, #0
	b label1278
label1306:
	mov r0, #0
	mov r6, r0
	cmp r0, r0
	bgt label1287
	b label1289
label1278:
	str r0, [r4, r6, lsl #2]
	bl getch
	cmp r0, #35
	add r6, r6, #1
	beq label1281
	b label1278
label1289:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	mov r1, r0
	ldr r0, [sp, #0]
	cmp r6, r0
	bgt label1292
	cmp r1, #0
	beq label1295
	b label1298
label1287:
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
	beq label1289
	add r0, r0, #1
	str r0, [sp, #0]
	cmp r6, r0
	bgt label1287
	b label1289
label1281:
	ldr r0, [sp, #0]
	cmp r6, r0
	bgt label1287
	b label1289
label1292:
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
	beq label1294
	add r0, r0, #1
	str r0, [sp, #0]
	cmp r6, r0
	bgt label1292
	cmp r1, #0
	beq label1295
	b label1298
label1294:
	cmp r1, #0
	beq label1295
	b label1298
label1295:
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
label1296:
	add sp, sp, #8
	pop { r4, r5, r6, pc }
label1298:
	mov r0, #111
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	mov r0, #0
	b label1296
