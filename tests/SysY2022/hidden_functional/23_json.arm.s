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
	mov r4, r3
	mov r6, r2
	mov r5, r1
	sub sp, sp, #4
	ldr r1, [r3, #0]
	mov r2, r0
	cmp r6, r1
	ble label198
	ldr r0, [r3, #0]
	cmp r6, r0
	ble label12
	b label189
label198:
	mov r0, #0
	b label7
label14:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r2, r1, #43
	sub r1, r1, #45
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r2, r1
	bne label46
	cmp r6, r0
	ble label198
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label198
	cmp r6, r0
	bgt label43
	ldr r0, [r4, #0]
	cmp r6, r0
	bgt label22
	ldr r0, [r4, #0]
	cmp r6, r0
	bgt label28
	b label1313
label20:
	cmp r6, r0
	bgt label22
	ldr r0, [r4, #0]
	cmp r6, r0
	bgt label28
	b label1313
label43:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label20
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	bgt label43
	ldr r0, [r4, #0]
	cmp r6, r0
	bgt label22
	ldr r0, [r4, #0]
	cmp r6, r0
	bgt label28
	b label1313
label46:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label198
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label198
	cmp r6, r0
	bgt label43
	ldr r0, [r4, #0]
	cmp r6, r0
	bgt label22
	ldr r0, [r4, #0]
	cmp r6, r0
	bgt label28
	b label1313
label65:
	ldr r0, [r4, #0]
	add r1, r0, #4
	cmp r6, r1
	ble label198
	ldr r2, [r5, r0, lsl #2]
	cmp r2, #102
	bne label198
	add r2, r0, #1
	ldr r2, [r5, r2, lsl #2]
	cmp r2, #97
	bne label198
	add r2, r0, #2
	ldr r2, [r5, r2, lsl #2]
	cmp r2, #108
	bne label198
	add r2, r0, #3
	ldr r2, [r5, r2, lsl #2]
	cmp r2, #115
	bne label198
	ldr r1, [r5, r1, lsl #2]
	cmp r1, #101
	bne label198
	b label1314
label182:
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
	bne label889
	cmp r0, #116
	beq label184
	cmp r0, #102
	beq label186
	cmp r0, #110
	beq label188
	b label198
label889:
	mov r0, #1
	ldr r1, [r4, #0]
	mov r2, r0
	cmp r6, r1
	ble label198
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label12
	b label189
label184:
	mov r0, #5
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	b label7
label186:
	mov r0, #6
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	b label7
label189:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
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
	bne label190
	cmp r2, #0
	beq label179
	cmp r2, #1
	beq label14
	cmp r2, #2
	beq label170
	cmp r2, #3
	beq label135
	cmp r2, #4
	beq label72
	cmp r2, #5
	beq label51
	cmp r2, #6
	beq label65
	cmp r2, #7
	beq label60
	b label198
label7:
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
label1314:
	add r0, r0, #5
	str r0, [r4, #0]
	mov r0, #1
	b label7
label60:
	ldr r0, [r4, #0]
	add r1, r0, #3
	cmp r6, r1
	ble label198
	ldr r2, [r5, r0, lsl #2]
	cmp r2, #110
	bne label198
	add r2, r0, #1
	ldr r2, [r5, r2, lsl #2]
	cmp r2, #117
	bne label198
	add r2, r0, #2
	ldr r2, [r5, r2, lsl #2]
	cmp r2, #108
	bne label198
	ldr r1, [r5, r1, lsl #2]
	cmp r1, #108
	bne label198
label1292:
	add r0, r0, #4
	str r0, [r4, #0]
	mov r0, #1
	b label7
label28:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #101
	bne label1313
	add r0, r0, #1
	cmp r6, r0
	str r0, [r4, #0]
	bgt label30
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label1313
label37:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label1313
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	bgt label37
	b label1313
label188:
	mov r0, #7
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	b label7
label190:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	bgt label189
label12:
	cmp r2, #0
	beq label179
	cmp r2, #1
	beq label14
	cmp r2, #2
	beq label170
	cmp r2, #3
	beq label135
	cmp r2, #4
	beq label72
	cmp r2, #5
	beq label51
	cmp r2, #6
	beq label65
	cmp r2, #7
	beq label60
	b label198
label179:
	ldr r1, [r4, #0]
	ldr r0, [r5, r1, lsl #2]
	cmp r0, #123
	beq label872
	cmp r0, #91
	beq label876
	cmp r0, #34
	beq label880
	b label182
label872:
	mov r2, #4
	cmp r6, r1
	ble label198
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label12
	b label189
label876:
	mov r0, #3
	ldr r1, [r4, #0]
	mov r2, r0
	cmp r6, r1
	ble label198
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label12
	b label189
label880:
	mov r0, #2
	ldr r1, [r4, #0]
	mov r2, r0
	cmp r6, r1
	ble label198
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label12
	b label189
label51:
	ldr r0, [r4, #0]
	add r1, r0, #3
	cmp r6, r1
	ble label198
	ldr r2, [r5, r0, lsl #2]
	cmp r2, #116
	bne label198
	add r2, r0, #1
	ldr r2, [r5, r2, lsl #2]
	cmp r2, #114
	bne label198
	add r2, r0, #2
	ldr r2, [r5, r2, lsl #2]
	cmp r2, #117
	bne label198
	ldr r1, [r5, r1, lsl #2]
	cmp r1, #101
	bne label198
	b label1292
label135:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	bgt label165
label167:
	ldr r0, [r4, #0]
	cmp r6, r0
	bgt label164
	b label140
label72:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	bgt label133
label132:
	ldr r0, [r4, #0]
	cmp r6, r0
	bgt label131
	b label77
label133:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
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
	bne label134
	cmp r6, r0
	bgt label131
	b label77
label170:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	bgt label173
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label198
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #34
	bne label198
	b label1290
label173:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #34
	beq label176
	sub r1, r1, #92
	add r0, r0, #1
	clz r1, r1
	lsr r1, r1, #5
	add r0, r1, r0
	str r0, [r4, #0]
	cmp r6, r0
	bgt label173
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label198
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #34
	bne label198
	b label1290
label176:
	cmp r6, r0
	ble label198
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #34
	bne label198
label1290:
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #1
	b label7
label77:
	mov r0, #2
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	beq label198
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label130
label81:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
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
	bne label82
	cmp r6, r0
	ble label198
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #58
	bne label198
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label89
	b label128
label130:
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label198
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #58
	bne label198
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	bgt label128
label89:
	mov r0, #0
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	beq label198
	ldr r0, [r4, #0]
	cmp r6, r0
	bgt label126
label125:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #44
	beq label104
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label98
	b label99
label126:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
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
	bne label127
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #44
	beq label104
	ldr r0, [r4, #0]
	cmp r6, r0
	bgt label99
label98:
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label198
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #125
	bne label198
	b label1290
label104:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	bgt label123
label107:
	mov r0, #2
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	beq label198
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label122
label120:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
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
	bne label121
	cmp r6, r0
	ble label198
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #58
	bne label198
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label117
	b label118
label122:
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label198
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #58
	bne label198
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label117
	b label118
label90:
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label125
	b label126
label117:
	mov r0, #0
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	bne label90
	b label198
label118:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
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
	bne label119
	b label117
label140:
	mov r0, #0
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	beq label198
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label144
	b label145
label164:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #93
	beq label1290
	b label140
label144:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #44
	beq label149
	ldr r0, [r4, #0]
	cmp r6, r0
	bgt label162
label161:
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label198
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #93
	bne label198
	b label1290
label162:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
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
	bne label163
	cmp r6, r0
	ble label198
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #93
	bne label198
	b label1290
label163:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label161
	b label162
label99:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
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
	bne label100
	cmp r6, r0
	ble label198
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #125
	bne label198
	b label1290
label100:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label98
	b label99
label1313:
	mov r0, #1
	b label7
label22:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #46
	beq label23
	cmp r6, r0
	bgt label28
	b label1313
label23:
	add r0, r0, #1
	cmp r6, r0
	str r0, [r4, #0]
	ble label1313
	ldr r1, [r5, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label23
	cmp r6, r0
	bgt label28
	b label1313
label165:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
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
	bne label166
	cmp r6, r0
	bgt label164
	b label140
label166:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label167
	b label165
label141:
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label144
label145:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
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
	bne label146
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #44
	beq label149
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label161
	b label162
label152:
	mov r0, #0
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	bne label141
	b label198
label146:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label144
	b label145
label149:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label152
label153:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
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
	beq label152
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label152
	b label153
label134:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label132
	b label133
label131:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #125
	beq label1290
	b label77
label30:
	ldr r0, [r5, r0, lsl #2]
	cmp r0, #43
	beq label31
	ldr r0, [r4, #0]
	cmp r6, r0
	bgt label41
	ldr r0, [r4, #0]
	cmp r6, r0
	bgt label37
	b label1313
label31:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	bgt label41
	ldr r0, [r4, #0]
	cmp r6, r0
	bgt label37
	b label1313
label82:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label130
	b label81
label41:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #45
	beq label38
	cmp r6, r0
	bgt label37
	b label1313
label38:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	bgt label37
	b label1313
label128:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
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
	beq label89
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label89
	b label128
label127:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label125
	b label126
label123:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
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
	str r0, [r4, #0]
	cmp r6, r0
	ble label107
	b label123
label121:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label122
	b label120
label119:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label117
	b label118
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
	bne label1350
	mov r0, #0
	mov r6, r0
	cmp r0, r0
	ble label1333
	b label1331
label1350:
	mov r6, #0
label1322:
	str r0, [r4, r6, lsl #2]
	bl getch
	cmp r0, #35
	add r6, r6, #1
	bne label1322
	ldr r0, [sp, #0]
	cmp r6, r0
	bgt label1331
label1333:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	mov r1, r0
	ldr r0, [sp, #0]
	cmp r6, r0
	bgt label1336
label1338:
	cmp r1, #0
	bne label1342
	b label1339
label1336:
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
	bne label1337
	cmp r1, #0
	bne label1342
	b label1339
label1337:
	add r0, r0, #1
	str r0, [sp, #0]
	cmp r6, r0
	ble label1338
	b label1336
label1331:
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
	beq label1333
	add r0, r0, #1
	str r0, [sp, #0]
	cmp r6, r0
	ble label1333
	b label1331
label1342:
	mov r0, #111
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	mov r0, #0
	b label1340
label1339:
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
label1340:
	add sp, sp, #8
	pop { r4, r5, r6, pc }
