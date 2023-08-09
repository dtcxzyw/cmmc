.arch armv7ve
.data
.bss
.align 8
buffer:
	.zero	200000000
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
detect_item:
	push { r4, r5, r6, lr }
	mov r6, r3
	mov r5, r2
	mov r4, r1
	mov r1, r0
	ldr r0, [r3, #0]
label4:
	cmp r5, r0
	bgt label9
label242:
	mov r0, #0
label7:
	pop { r4, r5, r6, pc }
label9:
	cmp r5, r0
	bgt label228
label11:
	cmp r1, #0
	bne label20
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #123
	beq label258
	cmp r1, #91
	beq label262
	cmp r1, #34
	beq label266
	sub r0, r1, #43
	sub r2, r1, #45
	clz r0, r0
	clz r2, r2
	lsr r0, r0, #5
	lsr r2, r2, #5
	orr r0, r0, r2
	sub r2, r1, #48
	cmp r2, #10
	mov r2, #0
	movwlo r2, #1
	orrs r0, r0, r2
	beq label16
	mov r1, #1
	ldr r0, [r6, #0]
	b label4
label228:
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	beq label232
	ldr r0, [r6, #0]
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #9
	beq label233
	cmp r2, #10
	beq label233
	cmp r2, #13
	beq label233
	b label11
label20:
	cmp r1, #1
	beq label195
	cmp r1, #2
	beq label22
	cmp r1, #3
	bne label80
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
label35:
	cmp r5, r0
	ble label37
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	bne label77
	ldr r0, [r6, #0]
label75:
	add r0, r0, #1
	str r0, [r6, #0]
	b label35
label232:
	ldr r0, [r6, #0]
label233:
	add r0, r0, #1
	str r0, [r6, #0]
	b label9
label22:
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
label23:
	cmp r5, r0
	ble label301
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	bne label26
label28:
	cmp r5, r0
	ble label242
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	bne label242
label326:
	add r0, r0, #1
	str r0, [r6, #0]
	mov r0, #1
	b label7
label195:
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r2, r1, #43
	sub r1, r1, #45
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r2, r1
	beq label197
	add r0, r0, #1
	str r0, [r6, #0]
label197:
	cmp r5, r0
	ble label242
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label242
label200:
	cmp r5, r0
	ble label954
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label204
	add r0, r0, #1
	str r0, [r6, #0]
	b label200
label26:
	sub r1, r1, #92
	add r0, r0, #1
	clz r1, r1
	lsr r1, r1, #5
	add r0, r1, r0
	str r0, [r6, #0]
	b label23
label80:
	cmp r1, #4
	bne label81
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
label104:
	cmp r5, r0
	ble label106
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	bne label189
	ldr r0, [r6, #0]
label193:
	add r0, r0, #1
	str r0, [r6, #0]
	b label104
label954:
	ldr r0, [r6, #0]
label204:
	cmp r5, r0
	ble label206
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #46
	bne label211
label208:
	add r0, r0, #1
	cmp r5, r0
	str r0, [r6, #0]
	ble label211
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label208
	b label211
label206:
	ldr r0, [r6, #0]
label211:
	cmp r5, r0
	ble label994
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label994
	add r0, r0, #1
	cmp r5, r0
	str r0, [r6, #0]
	ble label215
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label1041
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b label215
label81:
	cmp r1, #5
	beq label82
	cmp r1, #6
	bne label88
	ldr r0, [r6, #0]
	add r1, r0, #4
	cmp r5, r1
	ble label242
	add r1, r4, r0, lsl #2
	ldr r2, [r1, #0]
	cmp r2, #102
	bne label242
	ldr r2, [r1, #4]
	cmp r2, #97
	bne label242
	ldr r2, [r1, #8]
	cmp r2, #108
	bne label242
	ldr r2, [r1, #12]
	cmp r2, #115
	bne label242
	ldr r1, [r1, #16]
	cmp r1, #101
	bne label242
	add r0, r0, #5
	str r0, [r6, #0]
	mov r0, #1
	b label7
label77:
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	beq label75
	cmp r1, #10
	beq label75
	cmp r1, #13
	beq label75
label37:
	ldr r0, [r6, #0]
	cmp r5, r0
	ble label39
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	beq label326
label39:
	mov r0, #0
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	cmp r0, #0
	beq label242
label354:
	ldr r0, [r6, #0]
label41:
	cmp r5, r0
	bgt label43
label50:
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label62
label51:
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	ble label54
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	beq label56
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	beq label51
	cmp r1, #10
	beq label51
	cmp r1, #13
	beq label51
label54:
	mov r0, #0
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	cmp r0, #0
	bne label354
	b label242
label43:
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	bne label47
	ldr r0, [r6, #0]
label45:
	add r0, r0, #1
	str r0, [r6, #0]
	b label41
label215:
	cmp r5, r0
	ble label1011
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label218
label1032:
	add r0, r0, #1
	str r0, [r6, #0]
label218:
	cmp r5, r0
	ble label994
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label994
	b label1032
label47:
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	beq label45
	cmp r1, #10
	beq label45
	cmp r1, #13
	beq label45
	b label50
label994:
	mov r0, #1
	b label7
label189:
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	beq label193
	cmp r1, #10
	beq label193
	cmp r1, #13
	beq label193
label106:
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label107
label108:
	mov r0, #2
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	cmp r0, #0
	beq label242
	ldr r0, [r6, #0]
label110:
	cmp r5, r0
	bgt label181
label112:
	ldr r0, [r6, #0]
	cmp r5, r0
	ble label242
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #58
	bne label242
label650:
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label117
label124:
	mov r0, #0
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	cmp r0, #0
	beq label242
label685:
	ldr r0, [r6, #0]
label126:
	cmp r5, r0
	bgt label128
label135:
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label136
label147:
	add r0, r0, #1
	str r0, [r6, #0]
label148:
	cmp r5, r0
	ble label157
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	beq label156
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	beq label147
	cmp r1, #10
	beq label147
	cmp r1, #13
	beq label147
label157:
	mov r0, #2
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	cmp r0, #0
	beq label242
	ldr r0, [r6, #0]
label159:
	cmp r5, r0
	bgt label174
label161:
	ldr r0, [r6, #0]
	cmp r5, r0
	ble label242
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #58
	bne label242
label816:
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label167
label166:
	mov r0, #0
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	cmp r0, #0
	bne label685
	b label242
label181:
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	beq label182
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	beq label186
	cmp r1, #10
	bne label185
label186:
	add r0, r0, #1
	str r0, [r6, #0]
	b label110
label82:
	ldr r0, [r6, #0]
	add r1, r0, #3
	cmp r5, r1
	ble label242
	add r1, r4, r0, lsl #2
	ldr r2, [r1, #0]
	cmp r2, #116
	bne label242
	ldr r2, [r1, #4]
	cmp r2, #114
	bne label242
	ldr r2, [r1, #8]
	cmp r2, #117
	bne label242
	ldr r1, [r1, #12]
	cmp r1, #101
	bne label242
label532:
	add r0, r0, #4
	str r0, [r6, #0]
	mov r0, #1
	b label7
label88:
	cmp r1, #7
	bne label242
	ldr r0, [r6, #0]
	add r1, r0, #3
	cmp r5, r1
	ble label242
	add r1, r4, r0, lsl #2
	ldr r2, [r1, #0]
	cmp r2, #110
	bne label242
	ldr r2, [r1, #4]
	cmp r2, #117
	bne label242
	ldr r2, [r1, #8]
	cmp r2, #108
	bne label242
	ldr r1, [r1, #12]
	cmp r1, #108
	bne label242
	b label532
label16:
	cmp r1, #116
	bne label17
	mov r1, #5
	ldr r0, [r6, #0]
	b label4
label107:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	beq label326
	b label108
label17:
	cmp r1, #102
	bne label18
	mov r1, #6
	ldr r0, [r6, #0]
	b label4
label117:
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	bne label121
	ldr r0, [r6, #0]
	b label650
label18:
	cmp r1, #110
	bne label242
	mov r0, #7
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	b label7
label128:
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	beq label129
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	beq label130
	cmp r1, #10
	beq label130
	cmp r1, #13
	beq label130
	b label135
label121:
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	beq label650
	cmp r1, #10
	beq label650
	cmp r1, #13
	beq label650
	b label124
label185:
	cmp r1, #13
	beq label186
	b label112
label129:
	ldr r0, [r6, #0]
label130:
	add r0, r0, #1
	str r0, [r6, #0]
	b label126
label174:
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	bne label175
	ldr r0, [r6, #0]
label179:
	add r0, r0, #1
	str r0, [r6, #0]
	b label159
label62:
	cmp r5, r0
	bgt label66
label64:
	ldr r0, [r6, #0]
	cmp r5, r0
	ble label242
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	bne label242
	b label326
label66:
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	beq label72
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	beq label67
	cmp r1, #10
	bne label71
label67:
	add r0, r0, #1
	str r0, [r6, #0]
	b label62
label175:
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	beq label179
	cmp r1, #10
	beq label179
	cmp r1, #13
	beq label179
	b label161
label167:
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	beq label171
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	beq label816
	cmp r1, #10
	beq label816
	cmp r1, #13
	beq label816
	b label166
label71:
	cmp r1, #13
	beq label67
	b label64
label56:
	ldr r0, [r6, #0]
	b label51
label171:
	ldr r0, [r6, #0]
	b label816
label140:
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	beq label141
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	bne label143
label145:
	add r0, r0, #1
	str r0, [r6, #0]
label136:
	cmp r5, r0
	bgt label140
label138:
	ldr r0, [r6, #0]
	cmp r5, r0
	ble label242
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	bne label242
	b label326
label143:
	cmp r1, #10
	beq label145
	cmp r1, #13
	beq label145
	b label138
label301:
	ldr r0, [r6, #0]
	b label28
label141:
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b label136
label266:
	mov r1, #2
	ldr r0, [r6, #0]
	b label4
label258:
	mov r1, #4
	b label4
label1041:
	ldr r0, [r6, #0]
	b label215
label182:
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b label110
label72:
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b label62
label1011:
	ldr r0, [r6, #0]
	b label218
label262:
	mov r1, #3
	ldr r0, [r6, #0]
	b label4
label156:
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b label148
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, lr }
	mov r4, #0
	sub sp, sp, #8
	str r4, [sp, #0]
	mov r6, sp
	bl getch
	cmp r0, #35
	movw r5, #:lower16:buffer
	movt r5, #:upper16:buffer
	beq label1371
	mov r7, r5
	mov r8, r4
.p2align 4
label1332:
	str r0, [r7, #0]
	bl getch
	cmp r0, #35
	add r1, r8, #1
	beq label1377
	add r7, r7, #4
	mov r8, r1
	b label1332
label1377:
	ldr r0, [sp, #0]
	mov r7, r1
label1341:
	cmp r7, r0
	bgt label1343
label1350:
	mov r0, r4
	mov r1, r5
	mov r2, r7
	mov r3, r6
	bl detect_item
	mov r1, r0
	ldr r0, [sp, #0]
label1351:
	cmp r7, r0
	bgt label1358
label1353:
	cmp r1, #0
	beq label1357
	mov r0, #111
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	mov r0, r4
label1355:
	add sp, sp, #8
	pop { r4, r5, r6, r7, r8, pc }
label1343:
	ldr r0, [r5, r0, lsl #2]
	cmp r0, #32
	beq label1347
	ldr r0, [sp, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #9
	beq label1348
	cmp r1, #10
	beq label1348
	cmp r1, #13
	beq label1348
	b label1350
label1358:
	ldr r0, [r5, r0, lsl #2]
	cmp r0, #32
	bne label1362
	ldr r0, [sp, #0]
	add r0, r0, #1
	str r0, [sp, #0]
	b label1351
label1357:
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
	b label1355
label1347:
	ldr r0, [sp, #0]
label1348:
	add r0, r0, #1
	str r0, [sp, #0]
	b label1341
label1362:
	ldr r0, [sp, #0]
	ldr r2, [r5, r0, lsl #2]
	cmp r2, #9
	bne label1363
label1359:
	add r0, r0, #1
	str r0, [sp, #0]
	b label1351
label1363:
	cmp r2, #10
	beq label1359
	cmp r2, #13
	beq label1359
	b label1353
label1371:
	mov r0, r4
	mov r7, r4
	b label1341
