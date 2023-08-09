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
	bne label13
	mov r1, #4
	b label4
label228:
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	beq label234
	ldr r0, [r6, #0]
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #9
	bne label230
label232:
	add r0, r0, #1
	str r0, [r6, #0]
	b label9
label20:
	cmp r1, #1
	bne label54
	ldr r0, [r6, #0]
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
	str r0, [r6, #0]
label23:
	cmp r5, r0
	ble label242
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label242
label26:
	cmp r5, r0
	ble label319
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label30
	add r0, r0, #1
	str r0, [r6, #0]
	b label26
label54:
	cmp r1, #2
	beq label55
	cmp r1, #3
	beq label65
	cmp r1, #4
	bne label204
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
label113:
	cmp r5, r0
	ble label115
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	beq label201
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	beq label202
	cmp r1, #10
	beq label202
	cmp r1, #13
	beq label202
label115:
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label196
label116:
	mov r0, #2
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	cmp r0, #0
	beq label242
	ldr r0, [r6, #0]
label118:
	cmp r5, r0
	ble label120
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	bne label191
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b label118
label13:
	cmp r1, #91
	beq label262
	cmp r1, #34
	bne label15
	mov r1, #2
	ldr r0, [r6, #0]
	b label4
label55:
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
label56:
	cmp r5, r0
	ble label419
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	bne label59
label61:
	cmp r5, r0
	ble label242
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	bne label242
label444:
	add r0, r0, #1
	str r0, [r6, #0]
	mov r0, #1
	b label7
label230:
	cmp r2, #10
	beq label232
	cmp r2, #13
	beq label232
	b label11
label59:
	sub r1, r1, #92
	add r0, r0, #1
	clz r1, r1
	lsr r1, r1, #5
	add r0, r1, r0
	str r0, [r6, #0]
	b label56
label65:
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
label66:
	cmp r5, r0
	bgt label104
label68:
	ldr r0, [r6, #0]
	cmp r5, r0
	bgt label69
label70:
	mov r0, #0
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	cmp r0, #0
	beq label242
label471:
	ldr r0, [r6, #0]
label72:
	cmp r5, r0
	bgt label97
label74:
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label86
label75:
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label78
label85:
	mov r0, #0
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	cmp r0, #0
	bne label471
	b label242
label15:
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
label104:
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	beq label65
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	beq label108
	cmp r1, #10
	beq label108
	cmp r1, #13
	bne label68
label108:
	add r0, r0, #1
	str r0, [r6, #0]
	b label66
label97:
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	bne label99
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b label72
label78:
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	beq label79
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	beq label75
	cmp r1, #10
	beq label75
	cmp r1, #13
	beq label75
	b label85
label319:
	ldr r0, [r6, #0]
label30:
	cmp r5, r0
	ble label333
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #46
	bne label37
label33:
	add r0, r0, #1
	cmp r5, r0
	str r0, [r6, #0]
	ble label37
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label33
	b label37
label333:
	ldr r0, [r6, #0]
label37:
	cmp r5, r0
	bgt label39
label359:
	mov r0, #1
	b label7
label204:
	cmp r1, #5
	bne label205
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
label973:
	add r0, r0, #4
	str r0, [r6, #0]
	mov r0, #1
	b label7
label99:
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	bne label100
label102:
	add r0, r0, #1
	str r0, [r6, #0]
	b label72
label205:
	cmp r1, #6
	bne label206
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
label39:
	ldr r0, [r6, #0]
	add r1, r4, r0, lsl #2
	ldr r2, [r1, #0]
	cmp r2, #101
	beq label40
	b label359
label69:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	beq label444
	b label70
label201:
	ldr r0, [r6, #0]
label202:
	add r0, r0, #1
	str r0, [r6, #0]
	b label113
label100:
	cmp r1, #10
	beq label102
	cmp r1, #13
	beq label102
	b label74
label40:
	add r0, r0, #1
	cmp r5, r0
	str r0, [r6, #0]
	ble label44
	ldr r0, [r1, #4]
	cmp r0, #43
	bne label378
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
label44:
	cmp r5, r0
	ble label385
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label46
label398:
	add r0, r0, #1
	str r0, [r6, #0]
label46:
	cmp r5, r0
	ble label359
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label359
	b label398
label206:
	cmp r1, #7
	beq label207
	b label242
label16:
	cmp r1, #116
	beq label279
	cmp r1, #102
	bne label18
	mov r1, #6
	ldr r0, [r6, #0]
	b label4
label196:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	beq label444
	b label116
label193:
	cmp r1, #13
	beq label194
label120:
	ldr r0, [r6, #0]
	cmp r5, r0
	ble label242
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #58
	bne label242
label647:
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	bgt label125
label132:
	mov r0, #0
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	cmp r0, #0
	beq label242
label682:
	ldr r0, [r6, #0]
label134:
	cmp r5, r0
	ble label143
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	bne label138
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b label134
label191:
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	beq label194
	cmp r1, #10
	bne label193
label194:
	add r0, r0, #1
	str r0, [r6, #0]
	b label118
label138:
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	beq label141
	cmp r1, #10
	beq label141
	cmp r1, #13
	beq label141
label143:
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label144
label155:
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, r0
	ble label165
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	bne label159
	ldr r0, [r6, #0]
	b label155
label125:
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	beq label129
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	beq label647
	cmp r1, #10
	beq label647
	cmp r1, #13
	beq label647
	b label132
label207:
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
	b label973
label18:
	cmp r1, #110
	bne label242
	mov r0, #7
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	b label7
label159:
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	beq label155
	cmp r1, #10
	beq label155
	cmp r1, #13
	beq label155
label165:
	mov r0, #2
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	cmp r0, #0
	beq label242
	ldr r0, [r6, #0]
label167:
	cmp r5, r0
	ble label169
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	beq label188
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	bne label184
label186:
	add r0, r0, #1
	str r0, [r6, #0]
	b label167
label86:
	cmp r5, r0
	ble label95
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	bne label89
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b label86
label184:
	cmp r1, #10
	beq label186
	cmp r1, #13
	beq label186
label169:
	ldr r0, [r6, #0]
	cmp r5, r0
	ble label242
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #58
	bne label242
label813:
	add r0, r0, #1
	str r0, [r6, #0]
label172:
	cmp r5, r0
	bgt label175
label174:
	mov r0, #0
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl detect_item
	cmp r0, #0
	bne label682
	b label242
label95:
	ldr r0, [r6, #0]
	cmp r5, r0
	ble label242
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	bne label242
	b label444
label89:
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	beq label92
	cmp r1, #10
	beq label92
	cmp r1, #13
	bne label95
label92:
	add r0, r0, #1
	str r0, [r6, #0]
	b label86
label175:
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	beq label178
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	beq label813
	cmp r1, #10
	beq label813
	cmp r1, #13
	beq label813
	b label174
label144:
	cmp r5, r0
	bgt label146
label153:
	ldr r0, [r6, #0]
	cmp r5, r0
	ble label242
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	bne label242
	b label444
label146:
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	beq label152
	ldr r0, [r6, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	bne label148
label150:
	add r0, r0, #1
	str r0, [r6, #0]
	b label144
label148:
	cmp r1, #10
	beq label150
	cmp r1, #13
	beq label150
	b label153
label178:
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b label172
label141:
	add r0, r0, #1
	str r0, [r6, #0]
	b label134
label152:
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b label144
label419:
	ldr r0, [r6, #0]
	b label61
label385:
	ldr r0, [r6, #0]
	b label46
label262:
	mov r1, #3
	ldr r0, [r6, #0]
	b label4
label188:
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b label167
label234:
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b label9
label279:
	mov r1, #5
	ldr r0, [r6, #0]
	b label4
label79:
	ldr r0, [r6, #0]
	b label75
label378:
	ldr r0, [r6, #0]
	b label44
label129:
	ldr r0, [r6, #0]
	b label647
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[4] RegSpill[0] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, lr }
	mov r4, #0
	sub sp, sp, #8
	str r4, [sp, #0]
	mov r6, sp
	bl getch
	cmp r0, #35
	movw r5, #:lower16:buffer
	movt r5, #:upper16:buffer
	beq label1370
	mov r7, r5
	mov r8, r4
.p2align 4
label1331:
	str r0, [r7, #0]
	bl getch
	cmp r0, #35
	add r1, r8, #1
	beq label1376
	add r7, r7, #4
	mov r8, r1
	b label1331
label1376:
	ldr r0, [sp, #0]
	mov r7, r1
label1340:
	cmp r7, r0
	bgt label1342
label1349:
	mov r0, r4
	mov r1, r5
	mov r2, r7
	mov r3, r6
	bl detect_item
	mov r1, r0
	ldr r0, [sp, #0]
label1350:
	cmp r7, r0
	ble label1352
	ldr r0, [r5, r0, lsl #2]
	cmp r0, #32
	beq label1360
	ldr r0, [sp, #0]
	ldr r2, [r5, r0, lsl #2]
	cmp r2, #9
	bne label1362
label1358:
	add r0, r0, #1
	str r0, [sp, #0]
	b label1350
label1342:
	ldr r0, [r5, r0, lsl #2]
	cmp r0, #32
	beq label1348
	ldr r0, [sp, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #9
	beq label1346
	cmp r1, #10
	beq label1346
	cmp r1, #13
	beq label1346
	b label1349
label1362:
	cmp r2, #10
	beq label1358
	cmp r2, #13
	beq label1358
label1352:
	cmp r1, #0
	bne label1353
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
label1354:
	add sp, sp, #8
	pop { r4, r5, r6, r7, r8, pc }
label1360:
	ldr r0, [sp, #0]
	add r0, r0, #1
	str r0, [sp, #0]
	b label1350
label1346:
	add r0, r0, #1
	str r0, [sp, #0]
	b label1340
label1353:
	mov r0, #111
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	mov r0, r4
	b label1354
label1370:
	mov r0, r4
	mov r7, r4
	b label1340
label1348:
	ldr r0, [sp, #0]
	add r0, r0, #1
	str r0, [sp, #0]
	b label1340
