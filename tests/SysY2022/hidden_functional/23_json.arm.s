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
label141:
	cmp r6, r0
	ble label168
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label144
	cmp r6, r0
	ble label167
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #46
	bne label147
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label147
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label164
	cmp r6, r0
	ble label1253
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1253
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label151
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label161
label1262:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label155
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label157
label1266:
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label1253
	b label1267
label1253:
	mov r0, #1
	b label172
label1267:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label153
	b label1253
label167:
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label1253
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1253
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label151
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label161
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label155
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label157
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label1253
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label153
	b label1253
label168:
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label167
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #46
	bne label147
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label147
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label164
	cmp r6, r0
	ble label1253
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1253
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label151
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label161
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label155
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label157
	b label1266
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
	bne label25
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label136
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	bne label135
	cmp r6, r0
	bgt label133
	b label180
label25:
	cmp r2, #3
	bne label58
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label29
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label34
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	bne label34
	b label1197
label133:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	beq label1197
	b label180
label135:
	sub r1, r1, #92
	add r0, r0, #1
	clz r1, r1
	lsr r1, r1, #5
	add r0, r1, r0
	str r0, [r5, #0]
	cmp r6, r0
	ble label136
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	bne label135
	cmp r6, r0
	bgt label133
	b label180
label136:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label133
	b label180
label34:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	bne label35
	b label180
label35:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label55
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label46
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label44
	b label34
label58:
	cmp r2, #4
	bne label106
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label63
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label68
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	bne label68
	b label1197
label29:
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
	beq label32
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label29
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label34
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	bne label34
	b label1197
label144:
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label168
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label144
	cmp r6, r0
	ble label167
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #46
	bne label147
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label147
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label164
	cmp r6, r0
	ble label1253
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1253
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label151
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label161
	b label1262
label32:
	cmp r6, r0
	ble label34
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	bne label34
label1197:
	add r0, r0, #1
	str r0, [r5, #0]
	mov r0, #1
	b label172
label44:
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
	beq label34
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label44
	b label34
label39:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label46
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label44
	b label34
label46:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label53
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label52
	b label180
label55:
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
	beq label39
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label55
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label46
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label44
	b label34
label106:
	cmp r2, #5
	bne label107
	ldr r0, [r5, #0]
	add r1, r0, #3
	cmp r6, r1
	bgt label124
	b label180
label124:
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #116
	beq label125
	b label180
label125:
	add r2, r0, #1
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #114
	beq label126
	b label180
label126:
	add r2, r0, #2
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #117
	beq label127
	b label180
label127:
	ldr r1, [r4, r1, lsl #2]
	cmp r1, #101
	beq label588
	b label180
label147:
	cmp r6, r0
	ble label1253
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1253
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label151
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label161
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label155
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label157
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label1253
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label153
	b label1253
label153:
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label1253
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label153
	b label1253
label164:
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label147
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label164
	cmp r6, r0
	ble label1253
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1253
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label151
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label161
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label155
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label157
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label1253
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label153
	b label1253
label63:
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
	bgt label63
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label68
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	bne label68
	b label1197
label65:
	cmp r6, r0
	ble label68
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	bne label68
	b label1197
label157:
	cmp r6, r0
	ble label1253
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label153
	b label1253
label68:
	mov r0, #2
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	bne label69
	b label180
label161:
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label155
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label157
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label1253
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label153
	b label1253
label151:
	cmp r6, r0
	ble label155
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label157
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label1253
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label153
	b label1253
label155:
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label1253
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label153
	b label1253
label107:
	cmp r2, #6
	bne label108
	ldr r0, [r5, #0]
	add r1, r0, #4
	cmp r6, r1
	bgt label115
	b label180
label108:
	cmp r2, #7
	bne label180
	ldr r0, [r5, #0]
	add r1, r0, #3
	cmp r6, r1
	bgt label110
	b label180
label110:
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #110
	beq label111
	b label180
label69:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label104
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label74
	b label180
label72:
	cmp r6, r0
	bgt label74
	b label180
label74:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #58
	beq label75
	b label180
label104:
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
	beq label72
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label104
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label74
	b label180
label15:
	cmp r0, #116
	bne label16
	mov r0, #5
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	b label172
label16:
	cmp r0, #102
	bne label17
	b label19
label17:
	cmp r0, #110
	bne label180
	mov r0, #7
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	b label172
label19:
	mov r0, #6
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	b label172
label115:
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #102
	beq label116
	b label180
label75:
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label101
label78:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	bne label79
	b label180
label79:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label99
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label89
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label87
	b label68
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
	beq label78
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label101
	b label78
label116:
	add r2, r0, #1
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #97
	beq label117
	b label180
label82:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label89
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label87
	b label68
label89:
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label96
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label95
	b label180
label99:
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
	bgt label99
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label89
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label87
	b label68
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
	beq label68
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label87
	b label68
label53:
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
	beq label50
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label53
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label52
	b label180
label50:
	cmp r6, r0
	bgt label52
	b label180
label117:
	add r2, r0, #2
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #108
	beq label118
	b label180
label118:
	add r2, r0, #3
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #115
	beq label119
	b label180
label119:
	ldr r1, [r4, r1, lsl #2]
	cmp r1, #101
	beq label120
	b label180
label120:
	add r0, r0, #5
	str r0, [r5, #0]
	mov r0, #1
	b label172
label111:
	add r2, r0, #1
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #117
	beq label112
	b label180
label112:
	add r2, r0, #2
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #108
	beq label113
	b label180
label52:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	beq label1197
	b label180
label588:
	add r0, r0, #4
	str r0, [r5, #0]
	mov r0, #1
	b label172
label113:
	ldr r1, [r4, r1, lsl #2]
	cmp r1, #108
	beq label588
	b label180
label96:
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
	beq label93
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label96
	ldr r0, [r5, #0]
	cmp r6, r0
	bgt label95
	b label180
label93:
	cmp r6, r0
	bgt label95
	b label180
label95:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	beq label1197
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
	beq label1311
	mov r6, #0
	b label1283
label1311:
	mov r0, #0
	mov r6, r0
	cmp r0, r0
	bgt label1292
	b label1294
label1283:
	str r0, [r4, r6, lsl #2]
	bl getch
	cmp r0, #35
	add r6, r6, #1
	beq label1286
	b label1283
label1294:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	mov r1, r0
	ldr r0, [sp, #0]
	cmp r6, r0
	bgt label1297
	cmp r1, #0
	beq label1300
	b label1303
label1292:
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
	beq label1294
	add r0, r0, #1
	str r0, [sp, #0]
	cmp r6, r0
	bgt label1292
	b label1294
label1286:
	ldr r0, [sp, #0]
	cmp r6, r0
	bgt label1292
	b label1294
label1297:
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
	beq label1299
	add r0, r0, #1
	str r0, [sp, #0]
	cmp r6, r0
	bgt label1297
	cmp r1, #0
	beq label1300
	b label1303
label1299:
	cmp r1, #0
	beq label1300
	b label1303
label1300:
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
label1301:
	add sp, sp, #8
	pop { r4, r5, r6, pc }
label1303:
	mov r0, #111
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	mov r0, #0
	b label1301
