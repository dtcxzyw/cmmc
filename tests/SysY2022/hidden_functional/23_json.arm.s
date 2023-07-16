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
	b label7
label71:
	add r2, r0, #1
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #97
	beq label72
	b label180
label72:
	add r2, r0, #2
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #108
	beq label73
	b label180
label7:
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
label1255:
	mov r0, #1
	b label7
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
	ble label169
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	bne label168
	cmp r6, r0
	bgt label166
	b label180
label58:
	cmp r2, #3
	bne label59
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label158
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label134
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	bne label134
	b label1188
label59:
	cmp r2, #4
	bne label60
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label127
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label88
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	bne label88
	b label1188
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
label169:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label166
	b label180
label166:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	beq label1188
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
	ble label1255
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1255
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label47
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label45
	b label1251
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
	ble label1255
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1255
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
	ble label54
	b label1254
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
	ble label1255
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1255
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
	ble label54
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label49
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label1255
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label52
	b label1255
label45:
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label54
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label49
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label1255
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label52
	b label1255
label168:
	sub r1, r1, #92
	add r0, r0, #1
	clz r1, r1
	lsr r1, r1, #5
	add r0, r1, r0
	str r0, [r5, #0]
	cmp r6, r0
	ble label169
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	bne label168
	cmp r6, r0
	bgt label166
	b label180
label134:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	bne label135
	b label180
label135:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label139
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label148
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label146
	b label134
label139:
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
	beq label141
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label139
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label148
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label146
	b label134
label141:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label148
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label146
	b label134
label148:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label152
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label156
	b label180
label132:
	cmp r6, r0
	ble label134
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	bne label134
	b label1188
label158:
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
	beq label132
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label158
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label134
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	bne label134
	b label1188
label1251:
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
	ble label1255
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1255
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label47
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label45
	b label1251
label39:
	ldr r0, [r5, #0]
label40:
	cmp r6, r0
	ble label1255
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1255
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
	ble label54
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label49
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label1255
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label52
	b label1255
label1188:
	add r0, r0, #1
	str r0, [r5, #0]
	mov r0, #1
	b label7
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
	beq label86
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label127
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label88
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	bne label88
	b label1188
label146:
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
	bgt label146
	b label134
label60:
	cmp r2, #5
	bne label68
	ldr r0, [r5, #0]
	add r1, r0, #3
	cmp r6, r1
	bgt label62
	b label180
label68:
	cmp r2, #6
	bne label76
	ldr r0, [r5, #0]
	add r1, r0, #4
	cmp r6, r1
	bgt label70
	b label180
label76:
	cmp r2, #7
	bne label180
	ldr r0, [r5, #0]
	add r1, r0, #3
	cmp r6, r1
	bgt label78
	b label180
label1254:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label49
label1004:
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label1255
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label52
	b label1255
label49:
	cmp r6, r0
	ble label1255
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label52
	b label1255
label86:
	cmp r6, r0
	ble label88
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	bne label88
	b label1188
label88:
	mov r0, #2
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	bne label89
	b label180
label89:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label93
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label97
	b label180
label93:
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
	beq label95
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label93
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label97
	b label180
label95:
	cmp r6, r0
	bgt label97
	b label180
label97:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #58
	beq label98
	b label180
label102:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label106
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label115
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label113
	b label88
label106:
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
	beq label108
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label106
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label115
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label113
	b label88
label108:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label115
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label113
	b label88
label52:
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label1255
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label52
	b label1255
label47:
	cmp r6, r0
	ble label54
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label49
	b label1004
label54:
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label1255
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label52
	b label1255
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
	bne label20
	mov r0, #6
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	b label7
label62:
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #116
	beq label63
	b label180
label78:
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #110
	beq label79
	b label180
label70:
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #102
	beq label71
	b label180
label63:
	add r2, r0, #1
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #114
	beq label64
	b label180
label98:
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label124
	b label101
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
	beq label101
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label124
label101:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	bne label102
	b label180
label20:
	cmp r0, #110
	bne label180
	mov r0, #7
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	b label7
label64:
	add r2, r0, #2
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #117
	beq label65
	b label180
label115:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label122
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label121
	b label180
label122:
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
	beq label119
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label122
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label121
	b label180
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
	beq label88
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label113
	b label88
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
	beq label154
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label152
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label156
	b label180
label154:
	cmp r6, r0
	bgt label156
	b label180
label65:
	ldr r1, [r4, r1, lsl #2]
	cmp r1, #101
	beq label66
	b label180
label79:
	add r2, r0, #1
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #117
	beq label80
	b label180
label80:
	add r2, r0, #2
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #108
	beq label81
	b label180
label156:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	beq label1188
	b label180
label66:
	add r0, r0, #4
	str r0, [r5, #0]
	mov r0, #1
	b label7
label73:
	add r2, r0, #3
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #115
	beq label74
	b label180
label74:
	ldr r1, [r4, r1, lsl #2]
	cmp r1, #101
	beq label75
	b label180
label75:
	add r0, r0, #5
	str r0, [r5, #0]
	mov r0, #1
	b label7
label81:
	ldr r1, [r4, r1, lsl #2]
	cmp r1, #108
	beq label66
	b label180
label119:
	cmp r6, r0
	bgt label121
	b label180
label121:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	beq label1188
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
	beq label1303
	mov r6, #0
	b label1275
label1303:
	mov r0, #0
	mov r6, r0
	cmp r0, r0
	bgt label1284
	b label1286
label1275:
	str r0, [r4, r6, lsl #2]
	bl getch
	cmp r0, #35
	add r6, r6, #1
	beq label1278
	b label1275
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
	beq label1293
	b label1292
label1284:
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
	bgt label1284
	b label1286
label1278:
	ldr r0, [sp, #0]
	cmp r6, r0
	bgt label1284
	b label1286
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
	beq label1293
	b label1292
label1291:
	cmp r1, #0
	beq label1293
	b label1292
label1293:
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
label1292:
	mov r0, #111
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	mov r0, #0
	b label1294
