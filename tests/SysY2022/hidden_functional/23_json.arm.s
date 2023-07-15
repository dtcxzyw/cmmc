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
	mov r6, r3
	mov r5, r2
	mov r4, r1
	sub sp, sp, #4
	ldr r1, [r3, #0]
	mov r2, r0
	cmp r5, r1
	bgt label9
label203:
	mov r0, #0
	b label7
label30:
	cmp r2, #2
	bne label40
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	ble label37
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	bne label39
	cmp r5, r0
	bgt label36
	b label203
label36:
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	beq label1336
	b label203
label39:
	sub r1, r1, #92
	add r0, r0, #1
	clz r1, r1
	lsr r1, r1, #5
	add r0, r1, r0
	str r0, [r6, #0]
	cmp r5, r0
	ble label37
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	bne label39
	cmp r5, r0
	bgt label36
	b label203
label40:
	cmp r2, #3
	bne label41
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label131
	ldr r0, [r6, #0]
	cmp r5, r0
	ble label135
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	bne label135
	b label1336
label41:
	cmp r2, #4
	bne label42
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label67
	ldr r0, [r6, #0]
	cmp r5, r0
	ble label71
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	bne label71
	b label1336
label42:
	cmp r2, #5
	bne label43
	ldr r0, [r6, #0]
	add r1, r0, #3
	cmp r5, r1
	bgt label58
	b label203
label43:
	cmp r2, #6
	bne label51
	ldr r0, [r6, #0]
	add r1, r0, #4
	cmp r5, r1
	bgt label45
	b label203
label51:
	cmp r2, #7
	bne label203
	ldr r0, [r6, #0]
	add r1, r0, #3
	cmp r5, r1
	bgt label53
	b label203
label53:
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #110
	beq label54
	b label203
label54:
	add r2, r0, #1
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #117
	beq label55
	b label203
label55:
	add r2, r0, #2
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #108
	beq label56
	b label203
label58:
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #116
	beq label59
	b label203
label59:
	add r2, r0, #1
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #114
	beq label60
	b label203
label7:
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
label1391:
	mov r0, #1
	b label7
label179:
	cmp r5, r0
	ble label187
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label181
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	ble label1391
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label184
	b label1391
label187:
	ldr r0, [r6, #0]
	cmp r5, r0
	ble label1391
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label184
	b label1391
label9:
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label12
	cmp r2, #0
	bne label29
	ldr r1, [r6, #0]
	ldr r0, [r4, r1, lsl #2]
	cmp r0, #123
	bne label16
	mov r2, #4
	cmp r5, r1
	bgt label9
	b label203
label12:
	ldr r0, [r6, #0]
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
	str r0, [r6, #0]
	cmp r5, r0
	bgt label12
	cmp r2, #0
	bne label29
	ldr r1, [r6, #0]
	ldr r0, [r4, r1, lsl #2]
	cmp r0, #123
	bne label16
	mov r2, #4
	cmp r5, r1
	bgt label9
	b label203
label14:
	cmp r2, #0
	bne label29
	ldr r1, [r6, #0]
	ldr r0, [r4, r1, lsl #2]
	cmp r0, #123
	bne label16
	mov r2, #4
	cmp r5, r1
	bgt label9
	b label203
label29:
	cmp r2, #1
	bne label30
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r2, r1, #43
	sub r1, r1, #45
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r2, r1
	beq label166
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label168
	b label203
label16:
	cmp r0, #91
	bne label17
	mov r0, #3
	ldr r1, [r6, #0]
	mov r2, r0
	cmp r5, r1
	bgt label9
	b label203
label17:
	cmp r0, #34
	bne label18
	mov r0, #2
	ldr r1, [r6, #0]
	mov r2, r0
	cmp r5, r1
	bgt label9
	b label203
label18:
	sub r1, r0, #48
	cmp r1, #10
	bhs label19
	mov r0, #1
	ldr r1, [r6, #0]
	mov r2, r0
	cmp r5, r1
	bgt label9
	b label203
label19:
	cmp r0, #43
	bne label21
label20:
	mov r0, #1
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	b label7
label21:
	cmp r0, #45
	bne label23
	b label20
label23:
	cmp r0, #116
	bne label25
	b label24
label37:
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label36
	b label203
label166:
	cmp r5, r0
	bgt label168
	b label203
label168:
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label169
	b label203
label169:
	cmp r5, r0
	ble label196
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label172
	cmp r5, r0
	ble label191
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #46
	bne label175
	add r0, r0, #1
	cmp r5, r0
	str r0, [r6, #0]
	ble label175
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label193
	cmp r5, r0
	ble label1391
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1391
	add r0, r0, #1
	cmp r5, r0
	str r0, [r6, #0]
	ble label179
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label190
label1400:
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	ble label187
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label181
	b label1404
label172:
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	ble label196
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label172
	cmp r5, r0
	ble label191
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #46
	bne label175
	add r0, r0, #1
	cmp r5, r0
	str r0, [r6, #0]
	ble label175
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label193
	cmp r5, r0
	ble label1391
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1391
	add r0, r0, #1
	cmp r5, r0
	str r0, [r6, #0]
	ble label179
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label190
	b label1400
label1404:
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	ble label1391
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label184
	b label1391
label196:
	ldr r0, [r6, #0]
	cmp r5, r0
	ble label191
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #46
	bne label175
	add r0, r0, #1
	cmp r5, r0
	str r0, [r6, #0]
	ble label175
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label193
	cmp r5, r0
	ble label1391
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1391
	add r0, r0, #1
	cmp r5, r0
	str r0, [r6, #0]
	ble label179
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label190
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	ble label187
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label181
	b label1404
label131:
	ldr r0, [r6, #0]
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
	beq label133
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label131
	ldr r0, [r6, #0]
	cmp r5, r0
	ble label135
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	bne label135
	b label1336
label133:
	cmp r5, r0
	ble label135
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	bne label135
	b label1336
label135:
	mov r0, #0
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	cmp r0, #0
	bne label136
	b label203
label136:
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label139
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label149
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label146
	b label148
label139:
	ldr r0, [r6, #0]
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
	str r0, [r6, #0]
	cmp r5, r0
	bgt label139
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label149
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label146
	b label148
label141:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label149
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label146
	b label148
label149:
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label152
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label156
	b label203
label146:
	ldr r0, [r6, #0]
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
	str r0, [r6, #0]
	cmp r5, r0
	bgt label146
label148:
	mov r0, #0
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	cmp r0, #0
	bne label136
	b label203
label1336:
	add r0, r0, #1
	str r0, [r6, #0]
	mov r0, #1
	b label7
label67:
	ldr r0, [r6, #0]
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
	str r0, [r6, #0]
	cmp r5, r0
	bgt label67
	ldr r0, [r6, #0]
	cmp r5, r0
	ble label71
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	bne label71
	b label1336
label69:
	cmp r5, r0
	ble label71
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	bne label71
	b label1336
label191:
	ldr r0, [r6, #0]
	cmp r5, r0
	ble label1391
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1391
	add r0, r0, #1
	cmp r5, r0
	str r0, [r6, #0]
	ble label179
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label190
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	ble label187
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label181
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	ble label1391
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label184
	b label1391
label190:
	ldr r0, [r6, #0]
	cmp r5, r0
	ble label187
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label181
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	ble label1391
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label184
	b label1391
label193:
	add r0, r0, #1
	cmp r5, r0
	str r0, [r6, #0]
	ble label175
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label193
	cmp r5, r0
	ble label1391
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1391
	add r0, r0, #1
	cmp r5, r0
	str r0, [r6, #0]
	ble label179
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label190
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	ble label187
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label181
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	ble label1391
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label184
	b label1391
label175:
	cmp r5, r0
	ble label1391
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1391
	add r0, r0, #1
	cmp r5, r0
	str r0, [r6, #0]
	ble label179
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label190
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	ble label187
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label181
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	ble label1391
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label184
	b label1391
label181:
	cmp r5, r0
	ble label1391
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label184
	b label1391
label71:
	mov r0, #2
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	cmp r0, #0
	bne label72
	b label203
label72:
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label76
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label80
	b label203
label184:
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	ble label1391
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label184
	b label1391
label76:
	ldr r0, [r6, #0]
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
	str r0, [r6, #0]
	cmp r5, r0
	bgt label76
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label80
	b label203
label78:
	cmp r5, r0
	bgt label80
	b label203
label80:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #58
	beq label81
	b label203
label45:
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #102
	beq label46
	b label203
label24:
	mov r0, #5
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	b label7
label25:
	cmp r0, #102
	bne label27
	b label26
label81:
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label84
	b label86
label84:
	ldr r0, [r6, #0]
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
	str r0, [r6, #0]
	cmp r5, r0
	bgt label84
label86:
	mov r0, #0
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	cmp r0, #0
	bne label87
	b label203
label26:
	mov r0, #6
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	b label7
label27:
	cmp r0, #110
	bne label203
	b label28
label60:
	add r2, r0, #2
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #117
	beq label61
	b label203
label61:
	ldr r1, [r4, r1, lsl #2]
	cmp r1, #101
	beq label414
	b label203
label46:
	add r2, r0, #1
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #97
	beq label47
	b label203
label87:
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label122
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label92
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label104
label106:
	mov r0, #2
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	cmp r0, #0
	bne label107
	b label203
label90:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label92
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label104
	b label106
label122:
	ldr r0, [r6, #0]
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
	beq label90
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label122
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label92
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label104
	b label106
label104:
	ldr r0, [r6, #0]
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
	str r0, [r6, #0]
	cmp r5, r0
	bgt label104
	b label106
label152:
	ldr r0, [r6, #0]
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
	str r0, [r6, #0]
	cmp r5, r0
	bgt label152
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label156
	b label203
label154:
	cmp r5, r0
	bgt label156
	b label203
label156:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	beq label1336
	b label203
label28:
	mov r0, #7
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	b label7
label47:
	add r2, r0, #2
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #108
	beq label48
	b label203
label107:
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label120
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label112
	b label203
label110:
	cmp r5, r0
	bgt label112
	b label203
label120:
	ldr r0, [r6, #0]
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
	beq label110
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label120
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label112
	b label203
label414:
	add r0, r0, #4
	str r0, [r6, #0]
	mov r0, #1
	b label7
label48:
	add r2, r0, #3
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #115
	beq label49
	b label203
label49:
	ldr r1, [r4, r1, lsl #2]
	cmp r1, #101
	beq label50
	b label203
label112:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #58
	beq label113
	b label203
label56:
	ldr r1, [r4, r1, lsl #2]
	cmp r1, #108
	beq label414
	b label203
label113:
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label117
label116:
	mov r0, #0
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	cmp r0, #0
	bne label87
	b label203
label117:
	ldr r0, [r6, #0]
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
	str r0, [r6, #0]
	cmp r5, r0
	bgt label117
	b label116
label50:
	add r0, r0, #5
	str r0, [r6, #0]
	mov r0, #1
	b label7
label92:
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label95
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label99
	b label203
label95:
	ldr r0, [r6, #0]
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
	beq label97
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label95
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label99
	b label203
label97:
	cmp r5, r0
	bgt label99
	b label203
label99:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	beq label1336
	b label203
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
	beq label1449
	mov r6, #0
	b label1421
label1449:
	mov r0, #0
	mov r6, r0
	cmp r0, r0
	bgt label1430
	b label1432
label1421:
	str r0, [r4, r6, lsl #2]
	bl getch
	cmp r0, #35
	add r6, r6, #1
	beq label1424
	b label1421
label1432:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	mov r1, r0
	ldr r0, [sp, #0]
	cmp r6, r0
	bgt label1435
	cmp r1, #0
	beq label1438
	b label1441
label1430:
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
	beq label1432
	add r0, r0, #1
	str r0, [sp, #0]
	cmp r6, r0
	bgt label1430
	b label1432
label1424:
	ldr r0, [sp, #0]
	cmp r6, r0
	bgt label1430
	b label1432
label1435:
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
	beq label1437
	add r0, r0, #1
	str r0, [sp, #0]
	cmp r6, r0
	bgt label1435
	cmp r1, #0
	beq label1438
	b label1441
label1437:
	cmp r1, #0
	beq label1438
	b label1441
label1438:
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
label1439:
	add sp, sp, #8
	pop { r4, r5, r6, pc }
label1441:
	mov r0, #111
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	mov r0, #0
	b label1439
