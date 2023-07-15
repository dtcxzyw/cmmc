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
	bgt label7
label203:
	mov r0, #0
	b label195
label71:
	cmp r2, #5
	bne label79
	ldr r0, [r6, #0]
	add r1, r0, #3
	cmp r5, r1
	bgt label75
	b label203
label75:
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #116
	beq label76
	b label203
label79:
	cmp r2, #6
	bne label80
	ldr r0, [r6, #0]
	add r1, r0, #4
	cmp r5, r1
	bgt label87
	b label203
label80:
	cmp r2, #7
	bne label203
	ldr r0, [r6, #0]
	add r1, r0, #3
	cmp r5, r1
	bgt label82
	b label203
label1394:
	mov r0, #1
label195:
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
label7:
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label193
	cmp r2, #0
	bne label25
	ldr r1, [r6, #0]
	ldr r0, [r4, r1, lsl #2]
	cmp r0, #123
	bne label12
	mov r2, #4
	cmp r5, r1
	bgt label7
	b label203
label10:
	cmp r2, #0
	bne label25
	ldr r1, [r6, #0]
	ldr r0, [r4, r1, lsl #2]
	cmp r0, #123
	bne label12
	mov r2, #4
	cmp r5, r1
	bgt label7
	b label203
label12:
	cmp r0, #91
	bne label13
	mov r0, #3
	ldr r1, [r6, #0]
	mov r2, r0
	cmp r5, r1
	bgt label7
	b label203
label13:
	cmp r0, #34
	bne label14
	mov r0, #2
	ldr r1, [r6, #0]
	mov r2, r0
	cmp r5, r1
	bgt label7
	b label203
label25:
	cmp r2, #1
	bne label59
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r2, r1, #43
	sub r1, r1, #45
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r2, r1
	beq label28
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label30
	b label203
label59:
	cmp r2, #2
	bne label69
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	ble label68
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	bne label67
	cmp r5, r0
	bgt label65
	b label203
label65:
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	beq label1348
	b label203
label69:
	cmp r2, #3
	bne label70
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label161
	ldr r0, [r6, #0]
	cmp r5, r0
	ble label165
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	bne label165
	b label1348
label70:
	cmp r2, #4
	bne label71
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label96
	ldr r0, [r6, #0]
	cmp r5, r0
	ble label102
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	bne label102
	b label1348
label193:
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
	beq label10
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label193
	cmp r2, #0
	bne label25
	ldr r1, [r6, #0]
	ldr r0, [r4, r1, lsl #2]
	cmp r0, #123
	bne label12
	mov r2, #4
	cmp r5, r1
	bgt label7
	b label203
label14:
	sub r1, r0, #48
	cmp r1, #10
	bhs label15
	mov r0, #1
	ldr r1, [r6, #0]
	mov r2, r0
	cmp r5, r1
	bgt label7
	b label203
label67:
	sub r1, r1, #92
	add r0, r0, #1
	clz r1, r1
	lsr r1, r1, #5
	add r0, r1, r0
	str r0, [r6, #0]
	cmp r5, r0
	ble label68
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	bne label67
	cmp r5, r0
	bgt label65
	b label203
label68:
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label65
	b label203
label28:
	cmp r5, r0
	bgt label30
	b label203
label30:
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label31
	b label203
label31:
	cmp r5, r0
	ble label56
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label58
	cmp r5, r0
	ble label55
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #46
	bne label39
	add r0, r0, #1
	cmp r5, r0
	str r0, [r6, #0]
	ble label39
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label36
	cmp r5, r0
	ble label1394
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1394
	add r0, r0, #1
	cmp r5, r0
	str r0, [r6, #0]
	ble label43
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label54
label1392:
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	ble label46
	b label1402
label39:
	cmp r5, r0
	ble label1394
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1394
	add r0, r0, #1
	cmp r5, r0
	str r0, [r6, #0]
	ble label43
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label54
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	ble label46
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label49
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	ble label1394
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label47
	b label1394
label56:
	ldr r0, [r6, #0]
	cmp r5, r0
	ble label55
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #46
	bne label39
	add r0, r0, #1
	cmp r5, r0
	str r0, [r6, #0]
	ble label39
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label36
	cmp r5, r0
	ble label1394
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1394
	add r0, r0, #1
	cmp r5, r0
	str r0, [r6, #0]
	ble label43
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label54
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	ble label46
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label49
	b label1115
label1402:
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label49
	b label1115
label161:
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
	beq label163
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label161
	ldr r0, [r6, #0]
	cmp r5, r0
	ble label165
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	bne label165
	b label1348
label163:
	cmp r5, r0
	ble label165
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	bne label165
	b label1348
label55:
	ldr r0, [r6, #0]
	cmp r5, r0
	ble label1394
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1394
	add r0, r0, #1
	cmp r5, r0
	str r0, [r6, #0]
	ble label43
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label54
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	ble label46
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label49
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	ble label1394
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label47
	b label1394
label58:
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	ble label56
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label58
	cmp r5, r0
	ble label55
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #46
	bne label39
	add r0, r0, #1
	cmp r5, r0
	str r0, [r6, #0]
	ble label39
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label36
	cmp r5, r0
	ble label1394
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1394
	add r0, r0, #1
	cmp r5, r0
	str r0, [r6, #0]
	ble label43
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label54
	b label1392
label165:
	mov r0, #0
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	cmp r0, #0
	bne label166
	b label203
label166:
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label186
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label177
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label174
	b label176
label169:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label177
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label174
	b label176
label186:
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
	beq label169
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label186
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label177
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label174
label176:
	mov r0, #0
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	cmp r0, #0
	bne label166
	b label203
label177:
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label180
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label185
	b label203
label180:
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
	beq label183
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label180
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label185
	b label203
label174:
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
	beq label176
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label174
	b label176
label1348:
	add r0, r0, #1
	str r0, [r6, #0]
	mov r0, #1
	b label195
label15:
	cmp r0, #43
	bne label17
label16:
	mov r0, #1
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	b label195
label17:
	cmp r0, #45
	bne label18
	b label16
label18:
	cmp r0, #116
	bne label20
	mov r0, #5
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	b label195
label20:
	cmp r0, #102
	bne label21
	b label23
label96:
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
	beq label98
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label96
	ldr r0, [r6, #0]
	cmp r5, r0
	ble label102
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	bne label102
	b label1348
label98:
	cmp r5, r0
	ble label102
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	bne label102
	b label1348
label36:
	add r0, r0, #1
	cmp r5, r0
	str r0, [r6, #0]
	ble label39
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label36
	cmp r5, r0
	ble label1394
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label1394
	add r0, r0, #1
	cmp r5, r0
	str r0, [r6, #0]
	ble label43
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label54
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	ble label46
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label49
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	ble label1394
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label47
	b label1394
label1115:
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	ble label1394
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label47
	b label1394
label47:
	add r0, r0, #1
	str r0, [r6, #0]
label49:
	cmp r5, r0
	ble label1394
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label47
	b label1394
label102:
	mov r0, #2
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	cmp r0, #0
	bne label103
	b label203
label54:
	ldr r0, [r6, #0]
	cmp r5, r0
	ble label46
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label49
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	ble label1394
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label47
	b label1394
label43:
	cmp r5, r0
	ble label46
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label49
	b label1115
label46:
	ldr r0, [r6, #0]
	cmp r5, r0
	ble label1394
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label47
	b label1394
label103:
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label106
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label111
	b label203
label106:
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
	beq label109
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label106
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label111
	b label203
label109:
	cmp r5, r0
	bgt label111
	b label203
label87:
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #102
	beq label88
	b label203
label111:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #58
	beq label112
	b label203
label112:
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label115
	b label117
label76:
	add r2, r0, #1
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #114
	beq label77
	b label203
label77:
	add r2, r0, #2
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #117
	beq label78
	b label203
label78:
	ldr r1, [r4, r1, lsl #2]
	cmp r1, #101
	beq label72
	b label203
label117:
	mov r0, #0
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	cmp r0, #0
	bne label118
	b label203
label115:
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
	beq label117
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label115
	b label117
label88:
	add r2, r0, #1
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #97
	beq label89
	b label203
label89:
	add r2, r0, #2
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #108
	beq label90
	b label203
label82:
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #110
	beq label83
	b label203
label83:
	add r2, r0, #1
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #117
	beq label84
	b label203
label21:
	cmp r0, #110
	bne label203
	mov r0, #7
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	b label195
label23:
	mov r0, #6
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	b label195
label118:
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label153
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label123
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label135
	b label137
label121:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label123
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label135
	b label137
label153:
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
	beq label121
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label153
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label123
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label135
label137:
	mov r0, #2
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	cmp r0, #0
	bne label138
	b label203
label138:
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label150
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label143
	b label203
label141:
	cmp r5, r0
	bgt label143
	b label203
label143:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #58
	beq label144
	b label203
label150:
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
	bgt label150
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label143
	b label203
label135:
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
	beq label137
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label135
	b label137
label183:
	cmp r5, r0
	bgt label185
	b label203
label185:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	beq label1348
	b label203
label72:
	add r0, r0, #4
	str r0, [r6, #0]
	mov r0, #1
	b label195
label90:
	add r2, r0, #3
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #115
	beq label91
	b label203
label91:
	ldr r1, [r4, r1, lsl #2]
	cmp r1, #101
	beq label92
	b label203
label92:
	add r0, r0, #5
	str r0, [r6, #0]
	mov r0, #1
	b label195
label84:
	add r2, r0, #2
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #108
	beq label85
	b label203
label85:
	ldr r1, [r4, r1, lsl #2]
	cmp r1, #108
	beq label72
	b label203
label144:
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label148
label147:
	mov r0, #0
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	cmp r0, #0
	bne label118
	b label203
label148:
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
	beq label147
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label148
	b label147
label123:
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label127
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label131
	b label203
label127:
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
	beq label129
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label127
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label131
	b label203
label129:
	cmp r5, r0
	bgt label131
	b label203
label131:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	beq label1348
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
	beq label1444
	mov r6, #0
	b label1416
label1444:
	mov r0, #0
	mov r6, r0
	cmp r0, r0
	bgt label1425
	b label1427
label1416:
	str r0, [r4, r6, lsl #2]
	bl getch
	cmp r0, #35
	add r6, r6, #1
	beq label1419
	b label1416
label1427:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	mov r1, r0
	ldr r0, [sp, #0]
	cmp r6, r0
	bgt label1430
	cmp r1, #0
	beq label1433
	b label1436
label1425:
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
	beq label1427
	add r0, r0, #1
	str r0, [sp, #0]
	cmp r6, r0
	bgt label1425
	b label1427
label1419:
	ldr r0, [sp, #0]
	cmp r6, r0
	bgt label1425
	b label1427
label1430:
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
	beq label1432
	add r0, r0, #1
	str r0, [sp, #0]
	cmp r6, r0
	bgt label1430
	cmp r1, #0
	beq label1433
	b label1436
label1432:
	cmp r1, #0
	beq label1433
	b label1436
label1433:
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
label1434:
	add sp, sp, #8
	pop { r4, r5, r6, pc }
label1436:
	mov r0, #111
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	mov r0, #0
	b label1434
