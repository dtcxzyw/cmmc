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
label34:
	cmp r2, #5
	bne label42
	ldr r0, [r5, #0]
	add r1, r0, #3
	cmp r6, r1
	bgt label38
	b label180
label38:
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #116
	beq label39
	b label180
label42:
	cmp r2, #6
	bne label50
	ldr r0, [r5, #0]
	add r1, r0, #4
	cmp r6, r1
	bgt label44
	b label180
label44:
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #102
	beq label45
	b label180
label45:
	add r2, r0, #1
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #97
	beq label46
	b label180
label46:
	add r2, r0, #2
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #108
	beq label47
	b label180
label47:
	add r2, r0, #3
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #115
	beq label48
	b label180
label50:
	cmp r2, #7
	bne label180
	ldr r0, [r5, #0]
	add r1, r0, #3
	cmp r6, r1
	bgt label52
	b label180
label1249:
	mov r0, #1
	b label172
label162:
	cmp r6, r0
	ble label1249
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label165
	b label1249
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
label21:
	cmp r2, #1
	bne label22
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r2, r1, #43
	sub r1, r1, #45
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r2, r1
	beq label138
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label140
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
label138:
	cmp r6, r0
	bgt label140
	b label180
label140:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label141
	b label180
label22:
	cmp r2, #2
	bne label32
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label31
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	bne label27
	cmp r6, r0
	bgt label30
	b label180
label27:
	sub r1, r1, #92
	add r0, r0, #1
	clz r1, r1
	lsr r1, r1, #5
	add r0, r1, r0
	str r0, [r5, #0]
	cmp r6, r0
	ble label31
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	bne label27
	cmp r6, r0
	bgt label30
	b label180
label30:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	beq label1191
	b label180
label32:
	cmp r2, #3
	bne label33
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label133
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label109
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	bne label109
	b label1191
label33:
	cmp r2, #4
	bne label34
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label60
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label65
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	bne label65
	b label1191
label31:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label30
	b label180
label141:
	cmp r6, r0
	ble label145
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label144
	cmp r6, r0
	ble label152
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #46
	bne label153
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label153
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label149
	cmp r6, r0
	ble label1249
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1249
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label160
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label158
	b label1245
label145:
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label152
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #46
	bne label153
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label153
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label149
	cmp r6, r0
	ble label1249
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1249
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label160
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label158
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label167
	b label1248
label109:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	bne label110
	b label180
label1191:
	add r0, r0, #1
	str r0, [r5, #0]
	mov r0, #1
	b label172
label160:
	cmp r6, r0
	ble label167
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label162
	b label1036
label167:
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label1249
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label165
	b label1249
label144:
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label145
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label144
	cmp r6, r0
	ble label152
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #46
	bne label153
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label153
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label149
	cmp r6, r0
	ble label1249
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1249
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label160
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label158
	b label1245
label152:
	ldr r0, [r5, #0]
label153:
	cmp r6, r0
	ble label1249
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1249
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label160
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label158
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label167
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label162
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label1249
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label165
	b label1249
label133:
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
	beq label107
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label133
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label109
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	bne label109
	b label1191
label107:
	cmp r6, r0
	ble label109
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	bne label109
	b label1191
label110:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label113
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label123
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label121
	b label109
label113:
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
	bgt label113
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label123
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label121
	b label109
label123:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label127
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label131
	b label180
label116:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label123
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label121
	b label109
label121:
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
	beq label109
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label121
	b label109
label1248:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label162
	b label1036
label149:
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label153
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label149
	cmp r6, r0
	ble label1249
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1249
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label160
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label158
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label167
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label162
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label1249
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label165
	b label1249
label1036:
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label1249
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label165
	b label1249
label60:
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
	beq label62
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label60
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label65
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	bne label65
	b label1191
label62:
	cmp r6, r0
	ble label65
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	bne label65
	b label1191
label65:
	mov r0, #2
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	bne label66
	b label180
label165:
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label1249
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label165
	b label1249
label158:
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label167
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label162
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label1249
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label165
	b label1249
label66:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label101
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label71
	b label180
label69:
	cmp r6, r0
	bgt label71
	b label180
label101:
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
	beq label69
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label101
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label71
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
	b label19
label20:
	mov r0, #5
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	b label172
label71:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #58
	beq label72
	b label180
label39:
	add r2, r0, #1
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #114
	beq label40
	b label180
label1245:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b label160
label52:
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #110
	beq label53
	b label180
label72:
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label98
label75:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	bne label76
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
	beq label75
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label98
	b label75
label40:
	add r2, r0, #2
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #117
	beq label41
	b label180
label76:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label79
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label89
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label87
	b label65
label79:
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
	beq label82
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label79
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label89
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label87
	b label65
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
	beq label65
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label87
	b label65
label82:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label89
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label87
	b label65
label89:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label95
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label94
	b label180
label127:
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
	beq label129
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label127
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label131
	b label180
label129:
	cmp r6, r0
	bgt label131
	b label180
label19:
	mov r0, #7
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	b label172
label53:
	add r2, r0, #1
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #117
	beq label54
	b label180
label54:
	add r2, r0, #2
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #108
	beq label55
	b label180
label41:
	ldr r1, [r4, r1, lsl #2]
	cmp r1, #101
	beq label35
	b label180
label131:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	beq label1191
	b label180
label35:
	add r0, r0, #4
	str r0, [r5, #0]
	mov r0, #1
	b label172
label55:
	ldr r1, [r4, r1, lsl #2]
	cmp r1, #108
	beq label35
	b label180
label48:
	ldr r1, [r4, r1, lsl #2]
	cmp r1, #101
	beq label49
	b label180
label49:
	add r0, r0, #5
	str r0, [r5, #0]
	mov r0, #1
	b label172
label92:
	cmp r6, r0
	bgt label94
	b label180
label94:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	beq label1191
	b label180
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
	beq label92
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label95
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label94
	b label180
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
	beq label1297
	mov r6, #0
	b label1269
label1297:
	mov r0, #0
	mov r6, r0
	cmp r0, r0
	bgt label1278
	b label1280
label1269:
	str r0, [r4, r6, lsl #2]
	bl getch
	cmp r0, #35
	add r6, r6, #1
	beq label1272
	b label1269
label1280:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	mov r1, r0
	ldr r0, [sp, #0]
	cmp r6, r0
	bgt label1283
	cmp r1, #0
	beq label1286
	b label1289
label1278:
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
	beq label1280
	add r0, r0, #1
	str r0, [sp, #0]
	cmp r6, r0
	bgt label1278
	b label1280
label1272:
	ldr r0, [sp, #0]
	cmp r6, r0
	bgt label1278
	b label1280
label1283:
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
	beq label1285
	add r0, r0, #1
	str r0, [sp, #0]
	cmp r6, r0
	bgt label1283
	cmp r1, #0
	beq label1286
	b label1289
label1285:
	cmp r1, #0
	beq label1286
	b label1289
label1286:
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
label1287:
	add sp, sp, #8
	pop { r4, r5, r6, pc }
label1289:
	mov r0, #111
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	mov r0, #0
	b label1287
