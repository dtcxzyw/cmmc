.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[64] RegSpill[24] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	mov r0, #4
	mov r5, #2
	mov r4, #1
	sub sp, sp, #88
	str r4, [sp, #24]
	str r5, [sp, #28]
	str r0, [sp, #32]
	mov r0, #8
	str r0, [sp, #36]
	mov r0, #16
	str r0, [sp, #40]
	mov r0, #32
	str r0, [sp, #44]
	mov r0, #64
	str r0, [sp, #48]
	mov r0, #128
	str r0, [sp, #52]
	mov r0, #256
	str r0, [sp, #56]
	mov r0, #512
	str r0, [sp, #60]
	mov r0, #1024
	str r0, [sp, #64]
	mov r0, #2048
	str r0, [sp, #68]
	mov r0, #4096
	str r0, [sp, #72]
	mov r0, #8192
	str r0, [sp, #76]
	mov r0, #16384
	str r0, [sp, #80]
	mov r0, #32768
	str r0, [sp, #84]
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r2, r5
	str r4, [sp, #8]
	mov r1, r4
	mov r3, r4
	add r5, sp, #24
	mov r6, #0
	mov r4, #1
	mov r0, r6
	and r4, r1, r4
	ands r4, r4, #1
	bne label687
	add r6, r6, #1
	add r1, r1, r1, lsr #31
	cmp r6, #16
	asr r1, r1, #1
	blt label14
	cmp r0, #0
	beq label1962
label16:
	cmp r2, #0
	beq label723
	mov r0, r2
	mov r1, #0
label17:
	add r5, sp, #24
	mov r6, #0
	mov r7, r0
	mov r4, #1
	mov r8, r6
	and r4, r0, r4
	ands r4, r4, #1
	bne label116
	mov r4, r6
	add r6, r6, #1
	add r7, r0, r0, lsr #31
	cmp r6, #16
	asr r7, r7, #1
	blt label115
	cmp r4, #0
	bne label76
	cmp r3, #0
	beq label742
label743:
	mov r4, r3
	mov r6, r3
	add r5, sp, #24
	mov r8, #0
	mov r7, r3
	ands r10, r3, #1
	mov r9, r3
	mov r3, r8
	bne label74
	ands r10, r7, #1
	bne label47
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label50
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label58
label2289:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label73
	b label2450
label961:
	cmp r3, #0
	bne label973
	movw r4, #32767
	cmp r1, r4
	ble label2167
label217:
	ldr r4, [sp, #28]
	sdiv r1, r1, r4
	ldr r4, [sp, #84]
	add r1, r1, #65536
	subs r1, r1, r4
	bne label1044
	movw r3, #32767
	ldr r1, [sp, #8]
	cmp r1, r3
	bgt label221
	ldr r3, [sp, #28]
	sdiv r1, r1, r3
	cmp r1, #0
	ble label225
label1071:
	str r1, [sp, #8]
	mov r3, r0
	add r5, sp, #24
	mov r6, #0
	mov r4, #1
	mov r0, r6
	and r4, r1, r4
	ands r4, r4, #1
	bne label687
	add r6, r6, #1
	add r1, r1, r1, lsr #31
	cmp r6, #16
	asr r1, r1, #1
	blt label14
	cmp r0, #0
	bne label16
label1962:
	mov r0, r3
	cmp r2, #0
	bne label890
	b label2136
label2324:
	movw r4, #32767
	cmp r1, r4
	bgt label217
	ldr r4, [sp, #28]
	sdiv r1, r1, r4
	cmp r1, #0
	bne label1044
label1043:
	movw r3, #32767
	ldr r1, [sp, #8]
	cmp r1, r3
	ble label2017
label221:
	ldr r3, [sp, #28]
	ldr r1, [sp, #8]
	sdiv r1, r1, r3
	ldr r3, [sp, #84]
	add r1, r1, #65536
	subs r1, r1, r3
	bgt label1071
label225:
	bl putint
	mov r0, #10
	bl putch
	mov r5, #2
	str r5, [sp, #16]
	mov r1, r5
	mov r4, #1
	mov r3, r4
	mov r2, r5
	str r5, [sp, #0]
	add r5, sp, #24
	mov r0, #0
	mov r6, r0
	and r4, r1, r4
	ands r4, r4, #1
	beq label1075
label238:
	ldr r4, [r5, #0]
	add r4, r6, r4
	add r0, r0, #1
	add r1, r1, r1, lsr #31
	cmp r0, #16
	asr r1, r1, #1
	blt label241
	cmp r4, #0
	bne label586
	mov r0, r3
	cmp r2, #0
	bne label1093
	mov r2, #0
	movw r3, #32767
	ldr r1, [sp, #0]
	cmp r1, r3
	bgt label585
label2024:
	ldr r3, [sp, #28]
	ldr r1, [sp, #0]
	sdiv r1, r1, r3
	cmp r1, #0
	bgt label1267
	b label350
label2194:
	cmp r4, #0
	bne label1162
	cmp r3, #0
	bne label1175
	movw r4, #32767
	cmp r1, r4
	ble label2192
label302:
	ldr r4, [sp, #28]
	sdiv r1, r1, r4
	ldr r4, [sp, #84]
	add r1, r1, #65536
	subs r1, r1, r4
	bne label1193
	movw r3, #32767
	ldr r1, [sp, #0]
	cmp r1, r3
	bgt label585
	ldr r3, [sp, #28]
	sdiv r1, r1, r3
	cmp r1, #0
	bgt label1267
label350:
	bl putint
	mov r0, #10
	bl putch
	ldr r1, [sp, #16]
	add r1, r1, #1
	cmp r1, #16
	bge label1271
	str r1, [sp, #16]
	mov r4, #1
	mov r5, #2
	mov r0, #0
	str r1, [sp, #0]
	mov r3, r4
	mov r2, r5
	mov r6, r0
	and r4, r1, r4
	add r5, sp, #24
	ands r4, r4, #1
	bne label238
	mov r4, r0
	add r0, r0, #1
	add r1, r1, r1, lsr #31
	cmp r0, #16
	asr r1, r1, #1
	blt label241
label2021:
	cmp r4, #0
	bne label586
	mov r0, r3
	cmp r2, #0
	bne label1093
	b label1092
label2513:
	mov r2, r6
	cmp r3, #0
	beq label2025
label1175:
	mov r4, r3
	mov r6, r3
	add r5, sp, #24
	mov r8, #0
	mov r7, r3
	ands r10, r3, #1
	mov r9, r3
	mov r3, r8
	beq label2199
label314:
	ands r10, r7, #1
	beq label342
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	bge label2040
label341:
	add r5, r5, #4
	ands r10, r9, #1
	bne label314
	ands r10, r7, #1
	bne label342
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label341
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label340
label2650:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label339
label2652:
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	bne label334
	b label1232
label2358:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label341
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	beq label2650
label340:
	ldr r4, [r5, #0]
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	add r4, r9, r4
	bge label2046
label339:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label340
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label339
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r9, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	bne label334
label1232:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2041
label337:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	beq label2043
label334:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label337
	cmp r4, #0
	bne label1247
	movw r4, #32767
	cmp r1, r4
	bgt label302
	ldr r4, [sp, #28]
	sdiv r1, r1, r4
	cmp r1, #0
	bne label1193
	movw r3, #32767
	ldr r1, [sp, #0]
	cmp r1, r3
	bgt label585
	b label2516
label2043:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label337
	cmp r4, #0
	bne label1247
	movw r4, #32767
	cmp r1, r4
	bgt label302
	ldr r4, [sp, #28]
	sdiv r1, r1, r4
	cmp r1, #0
	bne label1193
label2515:
	movw r3, #32767
	ldr r1, [sp, #0]
	cmp r1, r3
	bgt label585
label2516:
	ldr r3, [sp, #28]
	ldr r1, [sp, #0]
	sdiv r1, r1, r3
	cmp r1, #0
	bgt label1267
	b label350
label2025:
	movw r4, #32767
	cmp r1, r4
	bgt label302
	b label2187
label2192:
	ldr r4, [sp, #28]
	sdiv r1, r1, r4
	cmp r1, #0
	bne label1193
	b label2350
label2031:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2194
label292:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	beq label2031
label293:
	ldr r9, [r5, #0]
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	add r4, r4, r9
	blt label292
	cmp r4, #0
	bne label1162
	cmp r3, #0
	bne label1175
	movw r4, #32767
	cmp r1, r4
	bgt label302
	ldr r4, [sp, #28]
	sdiv r1, r1, r4
	cmp r1, #0
	bne label1193
label2350:
	movw r3, #32767
	ldr r1, [sp, #0]
	cmp r1, r3
	bgt label585
label2500:
	ldr r3, [sp, #28]
	ldr r1, [sp, #0]
	sdiv r1, r1, r3
	cmp r1, #0
	bgt label1267
	b label350
label2502:
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	bne label293
label2190:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label292
	cmp r4, #0
	beq label2503
label1162:
	mov r6, r2
	add r5, sp, #24
	mov r9, #0
	mov r8, r2
	mov r7, r4
	ands r10, r2, #1
	mov r2, r9
	bne label269
	ands r10, r4, #1
	bne label268
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r4, r4, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label295
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label294
label2501:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label281
	b label1141
label2034:
	ands r10, r7, #1
	beq label2197
label268:
	ldr r10, [r5, #0]
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	add r2, r2, r10
	blt label295
	add r5, sp, #24
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label294
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2502
label281:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label294
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label281
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	bne label293
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label292
	cmp r4, #0
	bne label1162
label2503:
	cmp r3, #0
	bne label1175
	b label2030
label2510:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label281
label1141:
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	bne label293
	b label2190
label2197:
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label295
	add r5, sp, #24
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	beq label2510
label294:
	ldr r9, [r5, #0]
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	add r4, r4, r9
	blt label281
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	bne label293
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label292
	cmp r4, #0
	bne label1162
	cmp r3, #0
	bne label1175
label2030:
	movw r4, #32767
	cmp r1, r4
	bgt label302
	b label2192
label2201:
	add r8, r8, #1
	add r4, r7, r7, lsr #31
	cmp r8, #16
	asr r7, r4, #1
	blt label343
	cmp r2, #0
	beq label2513
label258:
	cmp r3, #0
	beq label1111
	mov r4, r3
	add r5, sp, #24
	mov r9, #0
	mov r8, r6
	mov r7, r3
	mov r2, r9
	ands r10, r6, #1
	bne label269
	ands r10, r3, #1
	bne label268
	add r9, r9, #1
	add r8, r6, r6, lsr #31
	add r7, r3, r3, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	bge label2189
label295:
	add r5, r5, #4
	ands r10, r8, #1
	beq label2034
label269:
	ands r10, r7, #1
	beq label268
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label295
	add r5, sp, #24
	mov r8, #0
	mov r7, r6
	mov r6, r4
	mov r4, r8
	and r9, r7, r6
	ands r9, r9, #1
	bne label294
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label281
	b label1141
label1111:
	mov r2, r6
	cmp r3, #0
	bne label1175
	movw r4, #32767
	cmp r1, r4
	bgt label302
	ldr r4, [sp, #28]
	sdiv r1, r1, r4
	cmp r1, #0
	bne label1193
	movw r3, #32767
	ldr r1, [sp, #0]
	cmp r1, r3
	bgt label585
	ldr r3, [sp, #28]
	sdiv r1, r1, r3
	cmp r1, #0
	ble label350
label1267:
	str r1, [sp, #0]
	mov r3, r0
	add r5, sp, #24
	mov r4, #1
	mov r0, #0
	and r4, r1, r4
	mov r6, r0
	ands r4, r4, #1
	bne label238
	mov r4, r0
	add r0, r0, #1
	add r1, r1, r1, lsr #31
	cmp r0, #16
	asr r1, r1, #1
	blt label241
	cmp r4, #0
	bne label586
	mov r0, r3
	cmp r2, #0
	beq label1092
label1093:
	mov r1, r2
	mov r6, #0
	mov r3, r2
	add r5, sp, #24
	mov r8, #0
	mov r7, r2
	mov r4, #1
	mov r2, r8
	and r4, r7, r4
	ands r4, r4, #1
	bne label344
	add r8, r8, #1
	add r4, r7, r7, lsr #31
	cmp r8, #16
	asr r7, r4, #1
	blt label343
	cmp r2, #0
	bne label258
	mov r2, r6
	cmp r3, #0
	bne label1175
	b label2025
label1271:
	add r5, sp, #24
	mov r1, #0
	str r5, [sp, #20]
	str r1, [sp, #12]
label352:
	ldr r1, [sp, #12]
	cmp r1, #16
	bge label1275
	cmp r1, #0
	ble label582
	mov r4, #1
	mov r5, #2
	mov r3, r4
	mov r2, r5
	str r1, [sp, #4]
	add r5, sp, #24
	mov r0, #0
	mov r6, r0
	and r4, r1, r4
	ands r4, r4, #1
	bne label366
	mov r4, r0
	add r0, r0, #1
	add r1, r1, r1, lsr #31
	cmp r0, #16
	asr r1, r1, #1
	blt label580
	cmp r4, #0
	bne label370
	b label2212
label2398:
	cmp r4, #0
	beq label2212
label370:
	cmp r2, #0
	beq label1300
	mov r0, r2
	mov r1, #0
label371:
	add r5, sp, #24
	mov r7, #0
	mov r6, r0
	mov r4, #1
	mov r8, r4
	mov r4, r7
	and r8, r0, r8
	ands r8, r8, #1
	bne label381
	add r7, r7, #1
	add r6, r0, r0, lsr #31
	cmp r7, #16
	asr r6, r6, #1
	blt label470
	cmp r4, #0
	beq label2213
label385:
	cmp r3, #0
	beq label1321
	mov r4, r3
	mov r6, r1
	add r5, sp, #24
	mov r8, #0
	mov r9, r1
	mov r7, r3
	mov r1, r8
	ands r10, r9, #1
	beq label1325
label423:
	ands r10, r7, #1
	bne label1381
label421:
	ldr r10, [r5, #0]
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	add r1, r1, r10
	bge label2064
label397:
	add r5, r5, #4
	ands r10, r9, #1
	bne label423
	ands r10, r7, #1
	bne label421
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label397
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label420
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label419
label2664:
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	beq label1353
label414:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label417
	cmp r4, #0
	beq label2059
label1368:
	mov r6, r1
	add r5, sp, #24
	mov r8, #0
	mov r7, r4
	ands r10, r1, #1
	mov r9, r1
	mov r1, r8
	bne label423
	ands r10, r4, #1
	bne label421
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r4, r4, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label397
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label420
label2377:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label419
	b label2664
label1321:
	cmp r3, #0
	bne label1385
	movw r4, #32767
	cmp r0, r4
	bgt label466
	ldr r4, [sp, #28]
	sdiv r0, r0, r4
	cmp r0, #0
	bne label371
	b label1459
label2080:
	add r7, r7, #1
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r6, r6, #1
	bge label2234
label470:
	add r5, r5, #4
	mov r8, #0
	and r8, r6, r8
	ands r8, r8, #1
	beq label2080
label381:
	ldr r8, [r5, #0]
	add r4, r4, r8
	add r7, r7, #1
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r6, r6, #1
	blt label470
	cmp r4, #0
	bne label385
	cmp r3, #0
	bne label1385
	movw r4, #32767
	cmp r0, r4
	bgt label466
	ldr r4, [sp, #28]
	sdiv r0, r0, r4
	cmp r0, #0
	bne label371
label1459:
	mov r0, r1
	cmp r2, #0
	bne label1467
	b label2375
label1300:
	mov r0, #0
	cmp r2, #0
	bne label1467
	b label2375
label2235:
	mov r4, r8
	add r2, r2, #1
	add r7, r7, r7, lsr #31
	cmp r2, #16
	asr r7, r7, #1
	bge label2397
label579:
	add r5, r5, #4
	mov r8, r4
	mov r4, #0
	and r4, r7, r4
	ands r4, r4, #1
	bne label490
	mov r4, r8
	add r2, r2, #1
	add r7, r7, r7, lsr #31
	cmp r2, #16
	asr r7, r7, #1
	blt label579
	cmp r8, #0
	bne label494
	mov r2, r6
	cmp r3, #0
	bne label1574
	movw r4, #32767
	cmp r1, r4
	bgt label578
label2547:
	ldr r4, [sp, #28]
	sdiv r1, r1, r4
	cmp r1, #0
	beq label1644
label1645:
	mov r6, r2
	add r5, sp, #24
	mov r7, r1
	mov r4, #1
	mov r2, #0
	and r4, r1, r4
	mov r8, r2
	ands r4, r4, #1
	bne label490
	mov r4, r2
	add r2, r2, #1
	add r7, r1, r1, lsr #31
	cmp r2, #16
	asr r7, r7, #1
	blt label579
	cmp r4, #0
	bne label494
	mov r2, r6
	cmp r3, #0
	bne label1574
label2399:
	movw r4, #32767
	cmp r1, r4
	ble label2547
label578:
	ldr r4, [sp, #28]
	sdiv r1, r1, r4
	ldr r4, [sp, #84]
	add r1, r1, #65536
	subs r1, r1, r4
	bne label1645
	movw r3, #32767
	ldr r1, [sp, #4]
	cmp r1, r3
	bgt label475
	ldr r3, [sp, #28]
	sdiv r1, r1, r3
	cmp r1, #0
	ble label478
label1482:
	str r1, [sp, #4]
	mov r3, r0
	add r5, sp, #24
	mov r4, #1
	mov r0, #0
	and r4, r1, r4
	mov r6, r0
	ands r4, r4, #1
	beq label2237
label366:
	ldr r4, [r5, #0]
	add r4, r6, r4
	add r0, r0, #1
	add r1, r1, r1, lsr #31
	cmp r0, #16
	asr r1, r1, #1
	blt label580
	cmp r4, #0
	bne label370
	mov r0, r3
	cmp r2, #0
	bne label1467
label2375:
	mov r2, #0
	movw r3, #32767
	ldr r1, [sp, #4]
	cmp r1, r3
	ble label1470
label475:
	ldr r3, [sp, #28]
	ldr r1, [sp, #4]
	sdiv r1, r1, r3
	ldr r3, [sp, #84]
	add r1, r1, #65536
	subs r1, r1, r3
	bgt label1482
	b label478
label582:
	ldr r5, [sp, #20]
	ldr r0, [r5, #0]
	cmp r0, #1
	bne label1487
label1486:
	ldr r1, [sp, #12]
	ldr r5, [sp, #20]
	add r1, r1, #1
	add r5, r5, #4
	str r5, [sp, #20]
	str r1, [sp, #12]
	b label352
label1275:
	mov r0, #0
label583:
	add sp, sp, #88
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label1092:
	mov r2, #0
	movw r3, #32767
	ldr r1, [sp, #0]
	cmp r1, r3
	bgt label585
	b label2024
label2209:
	cmp r2, #0
	bne label258
	mov r2, r6
	cmp r3, #0
	bne label1175
	movw r4, #32767
	cmp r1, r4
	bgt label302
label2187:
	ldr r4, [sp, #28]
	sdiv r1, r1, r4
	cmp r1, #0
	bne label1193
label2345:
	movw r3, #32767
	ldr r1, [sp, #0]
	cmp r1, r3
	bgt label585
	b label2500
label2046:
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	bne label334
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label337
	cmp r4, #0
	bne label1247
label2203:
	movw r4, #32767
	cmp r1, r4
	bgt label302
	ldr r4, [sp, #28]
	sdiv r1, r1, r4
	cmp r1, #0
	bne label1193
	b label2515
label900:
	cmp r4, #0
	beq label1992
label133:
	cmp r3, #0
	beq label909
	mov r4, r3
	add r5, sp, #24
	mov r8, #0
	mov r9, r6
	mov r7, r3
	mov r2, r8
	ands r10, r6, #1
	beq label913
label143:
	ands r10, r7, #1
	beq label144
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label147
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label155
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label170
	ldr r5, [sp, #28]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #24
	and r9, r8, r6
	ands r9, r9, #1
	beq label2321
label169:
	ldr r9, [r5, #0]
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	add r4, r4, r9
	bge label2002
label168:
	add r5, r5, #4
	and r9, r8, r6
	ands r9, r9, #1
	bne label169
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label168
	cmp r4, #0
	bne label962
	cmp r3, #0
	bne label973
	movw r4, #32767
	cmp r1, r4
	bgt label217
label2167:
	ldr r4, [sp, #28]
	sdiv r1, r1, r4
	cmp r1, #0
	bne label1044
	b label1043
label2320:
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label155
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label2475
label170:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label155
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label170
	ldr r5, [sp, #28]
	mov r7, #0
	movw r6, #65535
	mul r8, r9, r5
	mov r4, r7
	add r5, sp, #24
	and r9, r8, r6
	ands r9, r9, #1
	bne label169
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label168
	cmp r4, #0
	beq label961
label962:
	mov r6, r2
	add r5, sp, #24
	mov r8, #0
	mov r7, r4
	ands r10, r2, #1
	mov r9, r2
	mov r2, r8
	bne label143
	ands r10, r4, #1
	bne label144
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r4, r4, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label147
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label155
label2317:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label170
label2475:
	ldr r5, [sp, #28]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #24
	and r9, r8, r6
	ands r9, r9, #1
	bne label169
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label168
	b label2479
label913:
	ands r10, r7, #1
	bne label144
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label147
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	beq label2317
label155:
	ldr r4, [r5, #0]
	add r4, r9, r4
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label170
	ldr r5, [sp, #28]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #24
	and r9, r8, r6
	ands r9, r9, #1
	bne label169
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label168
	cmp r4, #0
	bne label962
	b label961
label2166:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	bge label2320
label147:
	add r5, r5, #4
	ands r10, r9, #1
	bne label143
	ands r10, r7, #1
	beq label2166
label144:
	ldr r10, [r5, #0]
	add r2, r2, r10
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label147
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label155
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label170
	ldr r5, [sp, #28]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #24
	and r9, r8, r6
	ands r9, r9, #1
	bne label169
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label168
label2479:
	cmp r4, #0
	bne label962
	b label961
label2321:
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label168
	b label2479
label909:
	mov r2, r6
	cmp r3, #0
	bne label973
	movw r4, #32767
	cmp r1, r4
	bgt label217
	ldr r4, [sp, #28]
	sdiv r1, r1, r4
	cmp r1, #0
	bne label1044
	b label1043
label1991:
	cmp r4, #0
	bne label76
	cmp r3, #0
	bne label743
	movw r4, #32767
	cmp r0, r4
	bgt label36
	ldr r4, [sp, #28]
	sdiv r0, r0, r4
	cmp r0, #0
	bne label17
label750:
	mov r0, r1
	cmp r2, #0
	beq label2136
label890:
	mov r1, r2
	mov r6, #0
	mov r3, r2
	add r5, sp, #24
	mov r2, #0
	mov r7, r1
	mov r4, #1
	mov r8, r2
	and r4, r1, r4
	ands r4, r4, #1
	beq label894
label218:
	ldr r4, [r5, #0]
	add r2, r2, #1
	add r7, r7, r7, lsr #31
	cmp r2, #16
	asr r7, r7, #1
	add r4, r8, r4
	blt label131
	cmp r4, #0
	bne label133
	mov r2, r6
	cmp r3, #0
	bne label973
	movw r4, #32767
	cmp r1, r4
	bgt label217
	ldr r4, [sp, #28]
	sdiv r1, r1, r4
	cmp r1, #0
	bne label1044
	b label1043
label894:
	mov r4, r8
	add r2, r2, #1
	add r7, r7, r7, lsr #31
	cmp r2, #16
	asr r7, r7, #1
	bge label900
label131:
	add r5, r5, #4
	mov r8, r4
	mov r4, #0
	and r4, r7, r4
	ands r4, r4, #1
	bne label218
	mov r4, r8
	add r2, r2, #1
	add r7, r7, r7, lsr #31
	cmp r2, #16
	asr r7, r7, #1
	blt label131
	cmp r8, #0
	bne label133
	mov r2, r6
	cmp r3, #0
	bne label973
label2162:
	movw r4, #32767
	cmp r1, r4
	bgt label217
	ldr r4, [sp, #28]
	sdiv r1, r1, r4
	cmp r1, #0
	bne label1044
	b label1043
label723:
	mov r0, #0
	cmp r2, #0
	bne label890
label2136:
	mov r2, #0
	movw r3, #32767
	ldr r1, [sp, #8]
	cmp r1, r3
	bgt label221
	ldr r3, [sp, #28]
	sdiv r1, r1, r3
	cmp r1, #0
	bgt label1071
	b label225
label2471:
	cmp r3, #0
	bne label743
label742:
	movw r4, #32767
	cmp r0, r4
	bgt label36
	ldr r4, [sp, #28]
	sdiv r0, r0, r4
	cmp r0, #0
	bne label17
	b label750
label2177:
	movw r4, #32767
	cmp r1, r4
	bgt label217
	ldr r4, [sp, #28]
	sdiv r1, r1, r4
	cmp r1, #0
	beq label2490
label1044:
	mov r6, r2
	add r5, sp, #24
	mov r7, r1
	mov r4, #1
	mov r2, #0
	and r4, r1, r4
	mov r8, r2
	ands r4, r4, #1
	bne label218
	mov r4, r2
	add r2, r2, #1
	add r7, r1, r1, lsr #31
	cmp r2, #16
	asr r7, r7, #1
	blt label131
	cmp r4, #0
	bne label133
label1992:
	mov r2, r6
	cmp r3, #0
	bne label973
	b label2162
label2490:
	movw r3, #32767
	ldr r1, [sp, #8]
	cmp r1, r3
	bgt label221
label2017:
	ldr r3, [sp, #28]
	ldr r1, [sp, #8]
	sdiv r1, r1, r3
	cmp r1, #0
	bgt label1071
	b label225
label2002:
	cmp r4, #0
	bne label962
	cmp r3, #0
	beq label2324
label973:
	mov r4, r3
	mov r6, r3
	add r5, sp, #24
	mov r8, #0
	mov r9, r3
	mov r7, r3
	mov r3, r8
	ands r10, r9, #1
	bne label211
	ands r10, r7, #1
	bne label209
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label208
	b label2173
label2007:
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	beq label2328
label206:
	ldr r9, [r5, #0]
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	add r4, r4, r9
	blt label204
	cmp r4, #0
	beq label2177
label1018:
	mov r6, r3
	add r5, sp, #24
	mov r8, #0
	mov r7, r4
	ands r10, r3, #1
	mov r9, r3
	mov r3, r8
	bne label211
	ands r10, r4, #1
	beq label2331
label209:
	ldr r10, [r5, #0]
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	add r3, r3, r10
	blt label208
	add r5, sp, #24
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label192
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label207
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	bne label206
label2328:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label204
	cmp r4, #0
	bne label1018
	b label2008
label2334:
	add r5, sp, #24
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label192
label988:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2007
label207:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label192
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label207
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	bne label206
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2491
label204:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label206
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label204
	cmp r4, #0
	bne label1018
	movw r4, #32767
	cmp r1, r4
	bgt label217
	ldr r4, [sp, #28]
	sdiv r1, r1, r4
	cmp r1, #0
	bne label1044
label2487:
	movw r3, #32767
	ldr r1, [sp, #8]
	cmp r1, r3
	bgt label221
	b label2017
label2491:
	cmp r4, #0
	bne label1018
label2008:
	movw r4, #32767
	cmp r1, r4
	bgt label217
	ldr r4, [sp, #28]
	sdiv r1, r1, r4
	cmp r1, #0
	bne label1044
	b label2487
label2331:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label208
label2173:
	add r5, sp, #24
	mov r8, #0
	mov r7, r6
	mov r6, r4
	mov r4, r8
	and r9, r7, r6
	ands r9, r9, #1
	bne label192
	b label988
label2013:
	ands r10, r7, #1
	bne label209
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	bge label2334
label208:
	add r5, r5, #4
	ands r10, r9, #1
	beq label2013
label211:
	ands r10, r7, #1
	beq label209
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label208
	add r5, sp, #24
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	beq label2337
label192:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label207
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	bne label206
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label204
	cmp r4, #0
	bne label1018
	b label2008
label1075:
	mov r4, r6
	add r0, r0, #1
	add r1, r1, r1, lsr #31
	cmp r0, #16
	asr r1, r1, #1
	bge label2021
label241:
	add r5, r5, #4
	mov r6, r4
	mov r4, #0
	and r4, r1, r4
	ands r4, r4, #1
	bne label238
	mov r4, r6
	add r0, r0, #1
	add r1, r1, r1, lsr #31
	cmp r0, #16
	asr r1, r1, #1
	blt label241
	cmp r6, #0
	beq label2343
label586:
	cmp r2, #0
	beq label1670
	mov r0, r2
	mov r1, #0
label587:
	add r5, sp, #24
	mov r7, #0
	mov r6, r0
	mov r4, #1
	mov r8, r4
	mov r4, r7
	and r8, r0, r8
	ands r8, r8, #1
	beq label597
label686:
	ldr r8, [r5, #0]
	add r7, r7, #1
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r6, r6, #1
	add r4, r4, r8
	bge label2134
label599:
	add r5, r5, #4
	mov r8, #0
	and r8, r6, r8
	ands r8, r8, #1
	bne label686
	add r7, r7, #1
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r6, r6, #1
	blt label599
	cmp r4, #0
	beq label2427
label647:
	cmp r3, #0
	beq label1771
	mov r4, r3
	mov r6, r1
	add r5, sp, #24
	mov r9, #0
	mov r8, r1
	mov r7, r3
	mov r1, r9
	ands r10, r8, #1
	bne label684
	ands r10, r3, #1
	bne label685
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r3, r3, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label660
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r3
	and r4, r8, r3
	ands r4, r4, #1
	bne label683
	b label2276
label2427:
	cmp r3, #0
	beq label2573
label1691:
	mov r4, r3
	mov r6, r3
	add r5, sp, #24
	mov r8, #0
	mov r9, r3
	mov r7, r3
	mov r3, r8
	ands r10, r9, #1
	bne label640
	ands r10, r7, #1
	bne label639
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label615
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label638
	b label2264
label2268:
	ands r10, r7, #1
	beq label2434
label639:
	ldr r10, [r5, #0]
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	add r3, r3, r10
	bge label2120
label615:
	add r5, r5, #4
	ands r10, r9, #1
	bne label640
	ands r10, r7, #1
	bne label639
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label615
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label638
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label625
label2574:
	ldr r5, [sp, #28]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #24
	and r9, r8, r6
	ands r9, r9, #1
	bne label633
label2266:
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label637
	b label2430
label1771:
	cmp r3, #0
	bne label1691
	movw r4, #32767
	cmp r0, r4
	bgt label646
	ldr r4, [sp, #28]
	sdiv r0, r0, r4
	cmp r0, #0
	bne label587
label1758:
	mov r0, r1
	cmp r2, #0
	bne label1093
	mov r2, #0
	movw r3, #32767
	ldr r1, [sp, #0]
	cmp r1, r3
	bgt label585
	b label2273
label2573:
	movw r4, #32767
	cmp r0, r4
	bgt label646
label2426:
	ldr r4, [sp, #28]
	sdiv r0, r0, r4
	cmp r0, #0
	bne label587
	b label1758
label597:
	add r7, r7, #1
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r6, r6, #1
	blt label599
	cmp r4, #0
	bne label647
	cmp r3, #0
	bne label1691
	movw r4, #32767
	cmp r0, r4
	bgt label646
	b label2426
label2577:
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label637
label2430:
	cmp r4, #0
	bne label1741
	movw r4, #32767
	cmp r0, r4
	bgt label646
label2432:
	ldr r4, [sp, #28]
	sdiv r0, r0, r4
	cmp r0, #0
	bne label587
	b label2578
label478:
	ldr r5, [sp, #20]
	ldr r1, [r5, #0]
	cmp r0, r1
	beq label1486
label1487:
	mov r4, #1
	mov r0, r4
	b label583
label2397:
	cmp r4, #0
	beq label2238
label494:
	cmp r3, #0
	beq label1510
	mov r4, r3
	add r5, sp, #24
	mov r8, #0
	mov r9, r6
	mov r7, r3
	mov r2, r8
	ands r10, r6, #1
	bne label505
	ands r10, r3, #1
	bne label506
	add r8, r8, #1
	add r9, r6, r6, lsr #31
	add r7, r3, r3, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label509
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r3
	and r4, r8, r3
	ands r4, r4, #1
	beq label2400
label517:
	ldr r4, [r5, #0]
	add r4, r9, r4
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label520
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	bne label528
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label531
	cmp r4, #0
	bne label1571
	cmp r3, #0
	beq label2407
label1574:
	mov r4, r3
	mov r6, r3
	add r5, sp, #24
	mov r8, #0
	mov r9, r3
	mov r7, r3
	mov r3, r8
	ands r10, r9, #1
	beq label1577
label544:
	ands r10, r7, #1
	beq label546
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label549
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label557
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label572
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	beq label2416
label571:
	ldr r9, [r5, #0]
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	add r4, r4, r9
	blt label569
	cmp r4, #0
	bne label1631
	movw r4, #32767
	cmp r1, r4
	bgt label578
	ldr r4, [sp, #28]
	sdiv r1, r1, r4
	cmp r1, #0
	bne label1645
	movw r3, #32767
	ldr r1, [sp, #4]
	cmp r1, r3
	bgt label475
label2105:
	ldr r3, [sp, #28]
	ldr r1, [sp, #4]
	sdiv r1, r1, r3
	cmp r1, #0
	bgt label1482
	b label478
label2415:
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label557
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label2099
label572:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label557
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label572
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r9, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	bne label571
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label569
	cmp r4, #0
	bne label1631
label2100:
	movw r4, #32767
	cmp r1, r4
	bgt label578
	ldr r4, [sp, #28]
	sdiv r1, r1, r4
	cmp r1, #0
	bne label1645
	b label2564
label1577:
	ands r10, r7, #1
	beq label2095
label546:
	ldr r10, [r5, #0]
	add r3, r3, r10
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label549
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label557
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label572
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	bne label571
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label569
label2563:
	cmp r4, #0
	beq label2100
label1631:
	mov r6, r3
	add r5, sp, #24
	mov r8, #0
	mov r7, r4
	ands r10, r3, #1
	mov r9, r3
	mov r3, r8
	bne label544
	ands r10, r4, #1
	bne label546
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r4, r4, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label549
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label557
label2559:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label572
label2099:
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	bne label571
label2416:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2563
label569:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label571
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label569
	cmp r4, #0
	bne label1631
	movw r4, #32767
	cmp r1, r4
	bgt label578
	ldr r4, [sp, #28]
	sdiv r1, r1, r4
	cmp r1, #0
	bne label1645
label2564:
	movw r3, #32767
	ldr r1, [sp, #4]
	cmp r1, r3
	bgt label475
	b label2105
label2095:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label549
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	beq label2559
label557:
	ldr r4, [r5, #0]
	add r4, r9, r4
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label572
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	bne label571
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label569
	cmp r4, #0
	bne label1631
	b label2100
label2131:
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	bne label681
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label680
	cmp r4, #0
	beq label1818
label1819:
	mov r6, r1
	add r5, sp, #24
	mov r9, #0
	mov r8, r1
	mov r7, r4
	ands r10, r1, #1
	mov r1, r9
	bne label684
	ands r10, r4, #1
	bne label685
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r4, r4, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	bge label2587
label660:
	add r5, r5, #4
	ands r10, r8, #1
	beq label2126
label684:
	ands r10, r7, #1
	bne label1829
label685:
	ldr r10, [r5, #0]
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	add r1, r1, r10
	blt label660
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label683
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label682
label2585:
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	bne label681
	b label677
label1818:
	cmp r3, #0
	bne label1691
	movw r4, #32767
	cmp r0, r4
	bgt label646
	b label2278
label677:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label680
	cmp r4, #0
	bne label1819
	b label1818
label2587:
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	beq label2276
label683:
	ldr r4, [r5, #0]
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	add r4, r9, r4
	bge label2131
label682:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label683
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label682
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r9, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	beq label677
label681:
	ldr r9, [r5, #0]
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	add r4, r4, r9
	bge label2129
label680:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label681
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label680
	cmp r4, #0
	bne label1819
	cmp r3, #0
	bne label1691
	movw r4, #32767
	cmp r0, r4
	bgt label646
label2278:
	ldr r4, [sp, #28]
	sdiv r0, r0, r4
	cmp r0, #0
	bne label587
	b label1758
label2276:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label682
	b label2585
label1740:
	movw r4, #32767
	cmp r0, r4
	ble label2117
label646:
	ldr r4, [sp, #28]
	sdiv r0, r0, r4
	ldr r4, [sp, #84]
	add r0, r0, #65536
	subs r0, r0, r4
	bne label587
	mov r0, r1
	cmp r2, #0
	bne label1093
	mov r2, #0
	movw r3, #32767
	ldr r1, [sp, #0]
	cmp r1, r3
	bgt label585
label2273:
	ldr r3, [sp, #28]
	ldr r1, [sp, #0]
	sdiv r1, r1, r3
	cmp r1, #0
	bgt label1267
	b label350
label2120:
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label638
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label2583
label625:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label638
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label625
	ldr r5, [sp, #28]
	mov r7, #0
	movw r6, #65535
	mul r8, r9, r5
	mov r4, r7
	add r5, sp, #24
	and r9, r8, r6
	ands r9, r9, #1
	beq label2577
label633:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label636
label637:
	add r5, r5, #4
	and r9, r8, r6
	ands r9, r9, #1
	bne label633
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label637
	cmp r4, #0
	bne label1741
	movw r4, #32767
	cmp r0, r4
	bgt label646
	ldr r4, [sp, #28]
	sdiv r0, r0, r4
	cmp r0, #0
	bne label587
label2578:
	mov r0, r1
	cmp r2, #0
	bne label1093
label2579:
	mov r2, #0
	movw r3, #32767
	ldr r1, [sp, #0]
	cmp r1, r3
	ble label2273
label585:
	ldr r3, [sp, #28]
	ldr r1, [sp, #0]
	sdiv r1, r1, r3
	ldr r3, [sp, #84]
	add r1, r1, #65536
	subs r1, r1, r3
	bgt label1267
	b label350
label2264:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label625
	b label2574
label636:
	cmp r4, #0
	beq label1740
label1741:
	mov r6, r3
	add r5, sp, #24
	mov r8, #0
	mov r7, r4
	ands r10, r3, #1
	mov r9, r3
	mov r3, r8
	beq label2268
label640:
	ands r10, r7, #1
	beq label639
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label615
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label638
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label625
	ldr r5, [sp, #28]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #24
	and r9, r8, r6
	ands r9, r9, #1
	bne label633
	b label2266
label2238:
	mov r2, r6
	cmp r3, #0
	bne label1574
	b label2399
label2234:
	cmp r4, #0
	bne label385
	cmp r3, #0
	bne label1385
	movw r4, #32767
	cmp r0, r4
	ble label2526
label466:
	ldr r4, [sp, #28]
	sdiv r0, r0, r4
	ldr r4, [sp, #84]
	add r0, r0, #65536
	sub r0, r0, r4
label467:
	cmp r0, #0
	bne label371
	b label1459
label2526:
	ldr r4, [sp, #28]
	sdiv r0, r0, r4
	cmp r0, #0
	bne label371
	b label1459
label2213:
	cmp r3, #0
	beq label2376
label1385:
	mov r4, r3
	mov r6, r3
	add r5, sp, #24
	mov r9, #0
	mov r8, r3
	mov r7, r3
	mov r3, r9
	ands r10, r8, #1
	beq label1388
label435:
	ands r10, r7, #1
	bne label1393
label436:
	ldr r10, [r5, #0]
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	add r3, r3, r10
	blt label440
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	beq label2388
label463:
	ldr r4, [r5, #0]
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	add r4, r9, r4
	blt label462
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	bne label461
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label459
	cmp r4, #0
	bne label1440
label2072:
	movw r4, #32767
	cmp r0, r4
	bgt label466
	ldr r4, [sp, #28]
	sdiv r0, r0, r4
	cmp r0, #0
	bne label371
	b label2539
label1388:
	ands r10, r7, #1
	bne label436
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	bge label2226
label440:
	add r5, r5, #4
	ands r10, r8, #1
	bne label435
	ands r10, r7, #1
	bne label436
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label440
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label463
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label2671
label462:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label463
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label462
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r9, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	bne label461
label457:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label459
	cmp r4, #0
	bne label1440
	b label2072
label2671:
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	beq label457
label461:
	ldr r9, [r5, #0]
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	add r4, r4, r9
	bge label2075
label459:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label461
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label459
	cmp r4, #0
	beq label2390
label1440:
	mov r6, r3
	add r5, sp, #24
	mov r9, #0
	mov r8, r3
	mov r7, r4
	ands r10, r3, #1
	mov r3, r9
	bne label435
	ands r10, r4, #1
	bne label436
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r4, r4, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label440
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label463
label2386:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label462
	b label2671
label2390:
	movw r4, #32767
	cmp r0, r4
	bgt label466
	ldr r4, [sp, #28]
	sdiv r0, r0, r4
	cmp r0, #0
	bne label371
label2539:
	mov r0, r1
	cmp r2, #0
	bne label1467
	b label2375
label2212:
	mov r0, r3
	cmp r2, #0
	bne label1467
	b label2375
label2062:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label419
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r9, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	bne label414
label1353:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label417
	cmp r4, #0
	bne label1368
	b label2218
label2533:
	cmp r4, #0
	bne label1368
label2218:
	cmp r3, #0
	bne label1385
	movw r4, #32767
	cmp r0, r4
	bgt label466
	b label2529
label2064:
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label420
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label2664
label419:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	beq label2062
label420:
	ldr r4, [r5, #0]
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	add r4, r9, r4
	blt label419
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	bne label414
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2533
label417:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label414
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label417
	cmp r4, #0
	bne label1368
	cmp r3, #0
	bne label1385
	movw r4, #32767
	cmp r0, r4
	bgt label466
label2529:
	ldr r4, [sp, #28]
	sdiv r0, r0, r4
	b label467
label2553:
	cmp r4, #0
	beq label2244
label1571:
	mov r6, r2
	add r5, sp, #24
	mov r8, #0
	mov r7, r4
	mov r9, r2
	ands r10, r2, #1
	mov r2, r8
	beq label2248
label505:
	ands r10, r7, #1
	beq label506
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	bge label2086
label509:
	add r5, r5, #4
	ands r10, r9, #1
	bne label505
	ands r10, r7, #1
	bne label506
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label509
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label517
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label520
label2549:
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	bne label528
	b label2404
label1510:
	mov r2, r6
	cmp r3, #0
	bne label1574
	movw r4, #32767
	cmp r1, r4
	bgt label578
	ldr r4, [sp, #28]
	sdiv r1, r1, r4
	cmp r1, #0
	bne label1645
label1644:
	movw r3, #32767
	ldr r1, [sp, #4]
	cmp r1, r3
	bgt label475
	b label2105
label2410:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label509
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label517
label2400:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label520
	b label2549
label2402:
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	bne label528
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2553
label531:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label528
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label531
	cmp r4, #0
	bne label1571
	cmp r3, #0
	bne label1574
	movw r4, #32767
	cmp r1, r4
	bgt label578
label2555:
	ldr r4, [sp, #28]
	sdiv r1, r1, r4
	cmp r1, #0
	bne label1645
	b label1644
label2086:
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label517
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label520
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	beq label2404
label528:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label531
	cmp r4, #0
	bne label1571
	cmp r3, #0
	bne label1574
	movw r4, #32767
	cmp r1, r4
	bgt label578
	ldr r4, [sp, #28]
	sdiv r1, r1, r4
	cmp r1, #0
	bne label1645
	b label1644
label2248:
	ands r10, r7, #1
	beq label2410
label506:
	ldr r10, [r5, #0]
	add r2, r2, r10
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label509
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label517
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label2402
label520:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label517
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label520
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r9, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	bne label528
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label531
	cmp r4, #0
	bne label1571
	b label2244
label2407:
	movw r4, #32767
	cmp r1, r4
	bgt label578
	b label2555
label2244:
	cmp r3, #0
	bne label1574
	b label2407
label2404:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label531
	b label2553
label2075:
	cmp r4, #0
	bne label1440
	movw r4, #32767
	cmp r0, r4
	bgt label466
	ldr r4, [sp, #28]
	sdiv r0, r0, r4
	cmp r0, #0
	bne label371
	mov r0, r1
	cmp r2, #0
	beq label2375
label1467:
	mov r1, r2
	mov r6, #0
	mov r3, r2
	add r5, sp, #24
	mov r4, #1
	mov r7, r2
	mov r2, #0
	and r4, r1, r4
	mov r8, r2
	ands r4, r4, #1
	beq label2235
label490:
	ldr r4, [r5, #0]
	add r4, r8, r4
	add r2, r2, #1
	add r7, r7, r7, lsr #31
	cmp r2, #16
	asr r7, r7, #1
	blt label579
	cmp r4, #0
	bne label494
	mov r2, r6
	cmp r3, #0
	bne label1574
	movw r4, #32767
	cmp r1, r4
	bgt label578
	ldr r4, [sp, #28]
	sdiv r1, r1, r4
	cmp r1, #0
	bne label1645
	b label1644
label816:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label50
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label58
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label2298
label73:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label58
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label73
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r9, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	bne label68
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label71
	cmp r4, #0
	beq label2143
label811:
	mov r6, r3
	add r5, sp, #24
	mov r8, #0
	mov r7, r4
	ands r10, r3, #1
	mov r9, r3
	mov r3, r8
	bne label74
	ands r10, r4, #1
	bne label47
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r4, r4, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label50
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	beq label2289
label58:
	ldr r4, [r5, #0]
	add r4, r9, r4
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label73
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	bne label68
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label1972
label71:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	beq label1974
label68:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label71
	cmp r4, #0
	bne label811
	movw r4, #32767
	cmp r0, r4
	bgt label36
	ldr r4, [sp, #28]
	sdiv r0, r0, r4
	cmp r0, #0
	bne label17
	mov r0, r1
	cmp r2, #0
	bne label890
	b label2136
label74:
	ands r10, r7, #1
	bne label816
label47:
	ldr r10, [r5, #0]
	add r3, r3, r10
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	bge label773
label50:
	add r5, r5, #4
	ands r10, r9, #1
	bne label74
	ands r10, r7, #1
	bne label47
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label50
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label58
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label73
label2450:
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	bne label68
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label71
	b label2453
label2298:
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	bne label68
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label71
label2453:
	cmp r4, #0
	bne label811
label2143:
	movw r4, #32767
	cmp r0, r4
	ble label2293
label36:
	ldr r4, [sp, #28]
	sdiv r0, r0, r4
	ldr r4, [sp, #84]
	add r0, r0, #65536
	subs r0, r0, r4
	bne label17
	mov r0, r1
	cmp r2, #0
	bne label890
	b label2136
label116:
	ldr r4, [r5, #0]
	add r6, r6, #1
	add r7, r7, r7, lsr #31
	cmp r6, #16
	asr r7, r7, #1
	add r4, r8, r4
	bge label1991
label115:
	add r5, r5, #4
	mov r8, r4
	mov r4, #0
	and r4, r7, r4
	ands r4, r4, #1
	bne label116
	mov r4, r8
	add r6, r6, #1
	add r7, r7, r7, lsr #31
	cmp r6, #16
	asr r7, r7, #1
	blt label115
	cmp r8, #0
	beq label2471
label76:
	cmp r3, #0
	beq label823
	mov r4, r3
	mov r6, r1
	add r5, sp, #24
	mov r8, #0
	mov r9, r1
	mov r7, r3
	mov r1, r8
	ands r10, r9, #1
	bne label86
	ands r10, r3, #1
	bne label87
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r3, r3, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label90
	mov r8, #0
	mov r7, r6
	mov r6, r3
	and r9, r7, r3
	mov r4, r8
	ands r9, r9, #1
	bne label98
	b label2300
label2152:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label90
	add r5, sp, #24
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label98
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label101
label2460:
	ldr r5, [sp, #28]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #24
	and r9, r8, r6
	ands r9, r9, #1
	bne label109
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label112
label2464:
	cmp r4, #0
	beq label2155
label880:
	mov r6, r1
	add r5, sp, #24
	mov r8, #0
	mov r7, r4
	ands r10, r1, #1
	mov r9, r1
	mov r1, r8
	beq label2159
label86:
	ands r10, r7, #1
	beq label87
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	bge label1981
label90:
	add r5, r5, #4
	ands r10, r9, #1
	bne label86
	ands r10, r7, #1
	beq label2152
label87:
	ldr r10, [r5, #0]
	add r1, r1, r10
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label90
	add r5, sp, #24
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	beq label2151
label98:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label101
	ldr r5, [sp, #28]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #24
	and r9, r8, r6
	ands r9, r9, #1
	bne label109
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label112
	cmp r4, #0
	bne label880
	cmp r3, #0
	bne label743
label2307:
	movw r4, #32767
	cmp r0, r4
	bgt label36
	b label2466
label2159:
	ands r10, r7, #1
	bne label87
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label90
	add r5, sp, #24
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label98
label2300:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2460
label101:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label98
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label101
	ldr r5, [sp, #28]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #24
	and r9, r8, r6
	ands r9, r9, #1
	beq label865
label109:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label112
	cmp r4, #0
	bne label880
	cmp r3, #0
	bne label743
	movw r4, #32767
	cmp r0, r4
	bgt label36
	ldr r4, [sp, #28]
	sdiv r0, r0, r4
	cmp r0, #0
	bne label17
	b label750
label865:
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label1985
label112:
	add r5, r5, #4
	and r9, r8, r6
	ands r9, r9, #1
	bne label109
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label112
	cmp r4, #0
	bne label880
	cmp r3, #0
	bne label743
	movw r4, #32767
	cmp r0, r4
	bgt label36
label2466:
	ldr r4, [sp, #28]
	sdiv r0, r0, r4
	cmp r0, #0
	bne label17
	b label750
label1981:
	add r5, sp, #24
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label98
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label101
	ldr r5, [sp, #28]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #24
	and r9, r8, r6
	ands r9, r9, #1
	bne label109
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label112
	b label2464
label2155:
	cmp r3, #0
	bne label743
	b label2307
label2372:
	movw r4, #32767
	cmp r1, r4
	bgt label302
	ldr r4, [sp, #28]
	sdiv r1, r1, r4
	cmp r1, #0
	beq label2345
label1193:
	mov r6, r2
	add r5, sp, #24
	mov r8, #0
	mov r7, r1
	mov r4, #1
	mov r2, r8
	and r4, r1, r4
	ands r4, r4, #1
	beq label2201
label344:
	ldr r4, [r5, #0]
	add r8, r8, #1
	cmp r8, #16
	add r2, r2, r4
	add r4, r7, r7, lsr #31
	asr r7, r4, #1
	blt label343
	cmp r2, #0
	bne label258
	mov r2, r6
	cmp r3, #0
	bne label1175
	b label2372
label2041:
	cmp r4, #0
	beq label2203
label1247:
	mov r6, r3
	add r5, sp, #24
	mov r8, #0
	mov r7, r4
	mov r9, r3
	ands r10, r3, #1
	mov r3, r8
	bne label314
	ands r10, r4, #1
	bne label342
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r4, r4, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label341
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label340
	b label2650
label687:
	ldr r4, [r5, #0]
	add r6, r6, #1
	add r1, r1, r1, lsr #31
	cmp r6, #16
	asr r1, r1, #1
	add r0, r0, r4
	bge label2135
label14:
	add r5, r5, #4
	mov r4, #0
	and r4, r1, r4
	ands r4, r4, #1
	bne label687
	add r6, r6, #1
	add r1, r1, r1, lsr #31
	cmp r6, #16
	asr r1, r1, #1
	blt label14
	cmp r0, #0
	bne label16
	mov r0, r3
	cmp r2, #0
	bne label890
	b label2136
label2251:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	bge label2415
label549:
	add r5, r5, #4
	ands r10, r9, #1
	bne label544
	ands r10, r7, #1
	bne label546
	b label2251
label2049:
	add r8, r8, #1
	add r4, r7, r7, lsr #31
	cmp r8, #16
	asr r7, r4, #1
	bge label2209
label343:
	add r5, r5, #4
	mov r4, #0
	and r4, r7, r4
	ands r4, r4, #1
	bne label344
	b label2049
label2237:
	mov r4, r6
	add r0, r0, #1
	add r1, r1, r1, lsr #31
	cmp r0, #16
	asr r1, r1, #1
	bge label2398
label580:
	add r5, r5, #4
	mov r6, r4
	mov r4, #0
	and r4, r1, r4
	ands r4, r4, #1
	bne label366
	mov r4, r6
	add r0, r0, #1
	add r1, r1, r1, lsr #31
	cmp r0, #16
	asr r1, r1, #1
	blt label580
	cmp r6, #0
	bne label370
	mov r0, r3
	cmp r2, #0
	bne label1467
	b label2375
label1393:
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label440
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label463
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label462
	b label2671
label2059:
	cmp r3, #0
	bne label1385
	movw r4, #32767
	cmp r0, r4
	bgt label466
	ldr r4, [sp, #28]
	sdiv r0, r0, r4
	cmp r0, #0
	bne label371
	b label1459
label1381:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label397
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label420
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label419
	b label2664
label2434:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label615
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	beq label2264
label638:
	ldr r4, [r5, #0]
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	add r4, r9, r4
	blt label625
	ldr r5, [sp, #28]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #24
	and r9, r8, r6
	ands r9, r9, #1
	bne label633
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label637
	cmp r4, #0
	bne label1741
	movw r4, #32767
	cmp r0, r4
	bgt label646
	b label2432
label2583:
	ldr r5, [sp, #28]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #24
	and r9, r8, r6
	ands r9, r9, #1
	bne label633
	b label2266
label2129:
	cmp r4, #0
	bne label1819
	cmp r3, #0
	bne label1691
	movw r4, #32767
	cmp r0, r4
	bgt label646
	ldr r4, [sp, #28]
	sdiv r0, r0, r4
	cmp r0, #0
	bne label587
	b label1758
label1829:
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label660
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label683
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label682
	b label2585
label2134:
	cmp r4, #0
	bne label647
	cmp r3, #0
	bne label1691
	movw r4, #32767
	cmp r0, r4
	bgt label646
	ldr r4, [sp, #28]
	sdiv r0, r0, r4
	cmp r0, #0
	bne label587
	b label1758
label2135:
	cmp r0, #0
	bne label16
	mov r0, r3
	cmp r2, #0
	bne label890
	b label2136
label2126:
	ands r10, r7, #1
	bne label685
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label660
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label683
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label682
	b label2585
label773:
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label58
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label73
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	bne label68
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label71
	b label2453
label2337:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label207
	ldr r5, [sp, #28]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #24
	and r9, r7, r6
	ands r9, r9, #1
	bne label206
	b label2328
label2199:
	ands r10, r7, #1
	beq label2358
label342:
	ldr r10, [r5, #0]
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	add r3, r3, r10
	blt label341
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label340
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label339
	b label2652
label2151:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label101
	ldr r5, [sp, #28]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #24
	and r9, r8, r6
	ands r9, r9, #1
	bne label109
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label112
	b label2464
label2040:
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label340
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label339
	b label2652
label1974:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label71
	cmp r4, #0
	bne label811
	movw r4, #32767
	cmp r0, r4
	bgt label36
	ldr r4, [sp, #28]
	sdiv r0, r0, r4
	cmp r0, #0
	bne label17
	b label750
label1325:
	ands r10, r7, #1
	bne label421
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label397
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label420
	b label2377
label2388:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label462
	b label2671
label1470:
	ldr r3, [sp, #28]
	ldr r1, [sp, #4]
	sdiv r1, r1, r3
	cmp r1, #0
	bgt label1482
	b label478
label2293:
	ldr r4, [sp, #28]
	sdiv r0, r0, r4
	cmp r0, #0
	bne label17
	b label750
label823:
	cmp r3, #0
	bne label743
	b label742
label1670:
	mov r0, #0
	cmp r2, #0
	bne label1093
	b label1092
label2117:
	ldr r4, [sp, #28]
	sdiv r0, r0, r4
	cmp r0, #0
	bne label587
	mov r0, r1
	cmp r2, #0
	bne label1093
	b label2579
label2343:
	mov r0, r3
	cmp r2, #0
	bne label1093
	b label1092
label2189:
	add r5, sp, #24
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label294
	b label2501
label2226:
	add r5, sp, #24
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label463
	b label2386
label1972:
	cmp r4, #0
	bne label811
	b label2143
label2376:
	movw r4, #32767
	cmp r0, r4
	bgt label466
	b label2526
label1985:
	cmp r4, #0
	bne label880
	b label2155
