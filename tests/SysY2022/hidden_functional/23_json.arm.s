.arch armv7ve
.data
.section .rodata
.align 8
__cmmc_jumptable241:
	.word	label158-__cmmc_jumptable241
	.word	label26-__cmmc_jumptable241
	.word	label166-__cmmc_jumptable241
	.word	label175-__cmmc_jumptable241
	.word	label61-__cmmc_jumptable241
	.word	label21-__cmmc_jumptable241
	.word	label12-__cmmc_jumptable241
	.word	label153-__cmmc_jumptable241
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
	mov r5, r3
	mov r6, r2
	mov r4, r1
	mov r1, r0
	ldr r0, [r3, #0]
label4:
	cmp r6, r0
	bgt label9
label235:
	mov r0, #0
label7:
	pop { r4, r5, r6, pc }
label9:
	cmp r6, r0
	bgt label221
label11:
	movw r0, #:lower16:__cmmc_jumptable241
	movt r0, #:upper16:__cmmc_jumptable241
	ldr r1, [r0, r1, lsl #2]
	add r0, r0, r1
	bx r0
label166:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
label167:
	cmp r6, r0
	ble label169
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	beq label172
	sub r1, r1, #92
	add r0, r0, #1
	clz r1, r1
	lsr r1, r1, #5
	add r0, r1, r0
	str r0, [r5, #0]
	b label167
label221:
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	bne label225
	ldr r0, [r5, #0]
label223:
	add r0, r0, #1
	str r0, [r5, #0]
	b label9
label225:
	ldr r0, [r5, #0]
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #9
	beq label223
	cmp r2, #10
	beq label223
	cmp r2, #13
	beq label223
	b label11
label178:
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	bne label182
label175:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
label176:
	cmp r6, r0
	bgt label178
label185:
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label187
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	beq label19
	b label187
label61:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
label62:
	cmp r6, r0
	bgt label64
label71:
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label73
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	beq label19
	b label73
label187:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	beq label235
label899:
	ldr r0, [r5, #0]
label189:
	cmp r6, r0
	bgt label191
label198:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label199
label210:
	add r0, r0, #1
	str r0, [r5, #0]
label211:
	cmp r6, r0
	ble label213
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	beq label220
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	beq label210
	cmp r1, #10
	beq label210
	cmp r1, #13
	beq label210
label213:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	bne label899
	b label235
label64:
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	beq label61
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	beq label68
	cmp r1, #10
	bne label67
label68:
	add r0, r0, #1
	str r0, [r5, #0]
	b label62
label26:
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
label27:
	cmp r6, r0
	ble label235
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label235
label30:
	cmp r6, r0
	ble label343
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label33
label35:
	cmp r6, r0
	ble label358
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #46
	beq label38
	b label42
label191:
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	beq label192
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	beq label196
	cmp r1, #10
	bne label195
label196:
	add r0, r0, #1
	str r0, [r5, #0]
	b label189
label169:
	ldr r0, [r5, #0]
label172:
	cmp r6, r0
	ble label235
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	bne label235
label19:
	add r0, r0, #1
	str r0, [r5, #0]
	mov r0, #1
	b label7
label21:
	ldr r0, [r5, #0]
	add r1, r0, #3
	cmp r6, r1
	ble label235
	add r1, r4, r0, lsl #2
	ldr r2, [r1, #0]
	cmp r2, #116
	bne label235
	ldr r2, [r1, #4]
	cmp r2, #114
	bne label235
	ldr r2, [r1, #8]
	cmp r2, #117
	bne label235
	ldr r1, [r1, #12]
	cmp r1, #101
	bne label235
	b label316
label12:
	ldr r0, [r5, #0]
	add r1, r0, #4
	cmp r6, r1
	ble label235
	add r1, r4, r0, lsl #2
	ldr r2, [r1, #0]
	cmp r2, #102
	bne label235
	ldr r2, [r1, #4]
	cmp r2, #97
	bne label235
	ldr r2, [r1, #8]
	cmp r2, #108
	bne label235
	ldr r2, [r1, #12]
	cmp r2, #115
	bne label235
	ldr r1, [r1, #16]
	cmp r1, #101
	bne label235
	add r0, r0, #5
	str r0, [r5, #0]
	mov r0, #1
	b label7
label73:
	mov r0, #2
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	beq label235
	ldr r0, [r5, #0]
label75:
	cmp r6, r0
	ble label77
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	bne label147
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b label75
label153:
	ldr r0, [r5, #0]
	add r1, r0, #3
	cmp r6, r1
	ble label235
	add r1, r4, r0, lsl #2
	ldr r2, [r1, #0]
	cmp r2, #110
	bne label235
	ldr r2, [r1, #4]
	cmp r2, #117
	bne label235
	ldr r2, [r1, #8]
	cmp r2, #108
	bne label235
	ldr r1, [r1, #12]
	cmp r1, #108
	bne label235
label316:
	add r0, r0, #4
	str r0, [r5, #0]
	mov r0, #1
	b label7
label158:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #123
	bne label159
	mov r1, #4
	b label4
label159:
	cmp r1, #91
	beq label795
	cmp r1, #34
	beq label799
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
	beq label162
	mov r1, #1
	ldr r0, [r5, #0]
	b label4
label182:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	beq label179
	cmp r1, #10
	beq label179
	cmp r1, #13
	bne label185
label179:
	add r0, r0, #1
	str r0, [r5, #0]
	b label176
label33:
	add r0, r0, #1
	str r0, [r5, #0]
	b label30
label149:
	cmp r1, #13
	beq label150
label77:
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label235
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #58
	bne label235
label500:
	add r0, r0, #1
	str r0, [r5, #0]
label80:
	cmp r6, r0
	bgt label139
label82:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	beq label235
label510:
	ldr r0, [r5, #0]
label84:
	cmp r6, r0
	ble label86
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	bne label134
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b label84
label147:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	beq label150
	cmp r1, #10
	bne label149
label150:
	add r0, r0, #1
	str r0, [r5, #0]
	b label75
label358:
	ldr r0, [r5, #0]
label42:
	cmp r6, r0
	bgt label44
label384:
	mov r0, #1
	b label7
label38:
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label42
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label38
	b label42
label67:
	cmp r1, #13
	beq label68
	b label71
label139:
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	bne label140
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b label80
label195:
	cmp r1, #13
	beq label196
	b label198
label136:
	cmp r1, #13
	beq label137
label86:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label121
label87:
	add r0, r0, #1
	str r0, [r5, #0]
label88:
	cmp r6, r0
	ble label90
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	bne label115
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b label88
label44:
	ldr r0, [r5, #0]
	add r1, r4, r0, lsl #2
	ldr r2, [r1, #0]
	cmp r2, #101
	bne label384
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	bgt label46
label49:
	cmp r6, r0
	bgt label54
	ldr r0, [r5, #0]
	b label51
label423:
	add r0, r0, #1
	str r0, [r5, #0]
label51:
	cmp r6, r0
	ble label384
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label384
	b label423
label140:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	beq label500
	cmp r1, #10
	beq label500
	cmp r1, #13
	beq label500
	b label82
label115:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	beq label87
	cmp r1, #10
	beq label87
	cmp r1, #13
	beq label87
label90:
	mov r0, #2
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	beq label235
	ldr r0, [r5, #0]
label92:
	cmp r6, r0
	bgt label94
label101:
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label235
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #58
	bne label235
label575:
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label106
label113:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	bne label510
	b label235
label134:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	beq label137
	cmp r1, #10
	bne label136
label137:
	add r0, r0, #1
	str r0, [r5, #0]
	b label84
label94:
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	beq label95
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	bne label97
label99:
	add r0, r0, #1
	str r0, [r5, #0]
	b label92
label54:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	beq label423
	b label51
label46:
	ldr r0, [r1, #4]
	cmp r0, #43
	bne label403
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b label49
label162:
	cmp r1, #116
	beq label812
	cmp r1, #102
	bne label164
	mov r1, #6
	ldr r0, [r5, #0]
	b label4
label199:
	cmp r6, r0
	ble label201
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	beq label204
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	beq label205
	cmp r1, #10
	beq label205
	cmp r1, #13
	beq label205
label201:
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label235
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	bne label235
	b label19
label106:
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	beq label107
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	beq label575
	cmp r1, #10
	beq label575
	cmp r1, #13
	beq label575
	b label113
label97:
	cmp r1, #10
	beq label99
	cmp r1, #13
	beq label99
	b label101
label204:
	ldr r0, [r5, #0]
label205:
	add r0, r0, #1
	str r0, [r5, #0]
	b label199
label164:
	cmp r1, #110
	beq label165
	b label235
label799:
	mov r1, #2
	ldr r0, [r5, #0]
	b label4
label795:
	mov r1, #3
	ldr r0, [r5, #0]
	b label4
label126:
	add r0, r0, #1
	str r0, [r5, #0]
label121:
	cmp r6, r0
	ble label123
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #32
	beq label128
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #9
	beq label126
	cmp r1, #10
	beq label126
	cmp r1, #13
	beq label126
label123:
	ldr r0, [r5, #0]
	cmp r6, r0
	ble label235
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	bne label235
	b label19
label165:
	mov r0, #7
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	b label7
label343:
	ldr r0, [r5, #0]
	b label35
label128:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b label121
label812:
	mov r1, #5
	ldr r0, [r5, #0]
	b label4
label220:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b label211
label107:
	ldr r0, [r5, #0]
	b label575
label95:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b label92
label192:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b label189
label403:
	ldr r0, [r5, #0]
	b label49
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
	beq label1316
	mov r7, r5
	mov r8, r4
	b label1304
.p2align 4
label1309:
	add r7, r7, #4
	mov r8, r1
.p2align 4
label1304:
	str r0, [r7, #0]
	bl getch
	cmp r0, #35
	add r1, r8, #1
	bne label1309
	ldr r0, [sp, #0]
	mov r7, r1
label1279:
	cmp r7, r0
	bgt label1281
label1288:
	mov r0, r4
	mov r1, r5
	mov r2, r7
	mov r3, r6
	bl detect_item
	mov r1, r0
	ldr r0, [sp, #0]
label1289:
	cmp r7, r0
	ble label1291
	ldr r0, [r5, r0, lsl #2]
	cmp r0, #32
	bne label1300
	ldr r0, [sp, #0]
	add r0, r0, #1
	str r0, [sp, #0]
	b label1289
label1281:
	ldr r0, [r5, r0, lsl #2]
	cmp r0, #32
	bne label1282
	ldr r0, [sp, #0]
	add r0, r0, #1
	str r0, [sp, #0]
	b label1279
label1301:
	cmp r2, #10
	beq label1297
	cmp r2, #13
	beq label1297
label1291:
	cmp r1, #0
	bne label1294
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
label1292:
	add sp, sp, #8
	pop { r4, r5, r6, r7, r8, pc }
label1282:
	ldr r0, [sp, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #9
	bne label1283
label1285:
	add r0, r0, #1
	str r0, [sp, #0]
	b label1279
label1300:
	ldr r0, [sp, #0]
	ldr r2, [r5, r0, lsl #2]
	cmp r2, #9
	bne label1301
label1297:
	add r0, r0, #1
	str r0, [sp, #0]
	b label1289
label1283:
	cmp r1, #10
	beq label1285
	cmp r1, #13
	beq label1285
	b label1288
label1294:
	mov r0, #111
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	mov r0, r4
	b label1292
label1316:
	mov r0, r4
	mov r7, r4
	b label1279
