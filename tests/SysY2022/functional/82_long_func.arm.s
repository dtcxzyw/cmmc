.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	mov r2, #4
	mov r1, #2
	mov r0, #1
	sub sp, sp, #96
	mov r3, r0
	str r0, [sp, #32]
	mov r0, #0
	str r1, [sp, #36]
	str r2, [sp, #40]
	mov r2, #8
	str r2, [sp, #44]
	mov r2, #16
	str r2, [sp, #48]
	mov r2, #32
	str r2, [sp, #52]
	mov r2, #64
	str r2, [sp, #56]
	mov r2, #128
	str r2, [sp, #60]
	mov r2, #256
	str r2, [sp, #64]
	mov r2, #512
	str r2, [sp, #68]
	mov r2, #1024
	str r2, [sp, #72]
	mov r2, #2048
	str r2, [sp, #76]
	mov r2, #4096
	str r2, [sp, #80]
	mov r2, #8192
	str r2, [sp, #84]
	mov r2, #16384
	str r2, [sp, #88]
	mov r2, #32768
	str r2, [sp, #92]
	str r0, [sp, #12]
label2:
	ldr r0, [sp, #12]
	cmp r0, #0
	bgt label6
	b label217
label210:
	movw r1, #32767
	ldr r0, [sp, #12]
	cmp r0, r1
	bgt label211
	ldr r1, [sp, #36]
	mov r3, r5
	sdiv r0, r0, r1
	mov r1, r4
	str r0, [sp, #12]
	b label2
label6:
	add r0, sp, #32
	mov r2, #0
	mov r5, r0
	mov r0, #1
	mov r6, r0
	ldr r0, [sp, #12]
	mov r4, r0
	mov r0, r2
label7:
	cmp r0, #16
	bge label13
	and r6, r6, r4
	ands r6, r6, #1
	bne label214
label1232:
	add r4, r4, r4, lsr #31
	add r0, r0, #1
	add r5, r5, #4
	mov r6, #0
	asr r4, r4, #1
	b label7
label214:
	ldr r6, [r5, #0]
	add r2, r2, r6
	b label1232
label13:
	cmp r2, #0
	beq label901
	mov r2, #0
	mov r5, r1
	b label14
label901:
	mov r5, r3
	mov r2, r1
	mov r4, #0
	mov r3, r1
label113:
	cmp r3, #0
	beq label210
	add r0, sp, #32
	mov r7, #0
	mov r6, r3
	mov r1, r0
	mov r8, r7
	mov r0, #1
label118:
	cmp r8, #16
	bge label128
	and r0, r0, r6
	ands r0, r0, #1
	beq label1070
	ldr r0, [r1, #0]
	add r0, r7, r0
	add r6, r6, r6, lsr #31
	add r8, r8, #1
	add r1, r1, #4
	mov r7, r0
	asr r6, r6, #1
	mov r0, #0
	b label118
label128:
	cmp r7, #0
	beq label1079
	mov r1, r4
	mov r4, r2
	b label172
label1079:
	mov r6, r4
	mov r1, r2
label131:
	cmp r2, #0
	beq label169
	add r0, sp, #32
	mov r7, r2
	mov r8, r1
	mov r4, #0
	mov r9, r4
label135:
	cmp r9, #16
	bge label1087
	ands r10, r8, #1
	beq label145
	ands r10, r7, #1
	beq label146
label143:
	add r8, r8, r8, lsr #31
	add r9, r9, #1
	add r0, r0, #4
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	b label135
label1087:
	add r0, sp, #32
	mov r8, r1
	mov r7, r0
	mov r0, #0
	mov r1, r0
label148:
	cmp r1, #16
	bge label1110
	and r9, r2, r8
	ands r9, r9, #1
	bne label155
label1115:
	add r8, r8, r8, lsr #31
	add r1, r1, #1
	add r7, r7, #4
	add r2, r2, r2, lsr #31
	asr r8, r8, #1
	asr r2, r2, #1
	b label148
label155:
	ldr r9, [r7, #0]
	add r0, r0, r9
	b label1115
label1110:
	ldr r1, [sp, #36]
	movw r8, #65535
	mov r2, #0
	mul r1, r0, r1
	add r0, sp, #32
	mov r7, r0
	mov r0, r2
label159:
	cmp r0, #16
	bge label1128
	and r9, r8, r1
	ands r9, r9, #1
	beq label166
	ldr r9, [r7, #0]
	add r1, r1, r1, lsr #31
	add r0, r0, #1
	add r8, r8, r8, lsr #31
	add r7, r7, #4
	asr r1, r1, #1
	asr r8, r8, #1
	add r2, r2, r9
	b label159
label217:
	mov r0, r3
	bl putint
	mov r0, #10
	bl putch
	mov r0, #1
	mov r1, #2
	str r0, [sp, #8]
	mov r2, r0
label218:
	ldr r0, [sp, #8]
	cmp r0, #0
	bgt label222
	b label433
label330:
	ldr r1, [sp, #36]
	ldr r0, [sp, #8]
	sdiv r0, r0, r1
	mov r1, r2
	mov r2, r6
	str r0, [sp, #8]
	b label218
label14:
	cmp r5, #0
	bne label18
	b label905
label105:
	ldr r0, [sp, #36]
	ldr r3, [sp, #92]
	sdiv r0, r5, r0
	add r0, r0, #65536
	sub r5, r0, r3
	mov r3, r2
	mov r2, r6
	b label14
label166:
	add r1, r1, r1, lsr #31
	add r0, r0, #1
	add r7, r7, #4
	add r8, r8, r8, lsr #31
	asr r1, r1, #1
	asr r8, r8, #1
	b label159
label433:
	mov r0, r2
	bl putint
	mov r0, #10
	bl putch
	mov r1, #2
	mov invalid, r1
	vstr invalid, [sp, #24]
label434:
	vldr invalid, [sp, #24]
	cmp invalid, #16
	blt label1590
	b label1589
label440:
	mov r0, r2
	bl putint
	mov r0, #10
	bl putch
	vldr invalid, [sp, #24]
	add invalid, invalid, #1
	vstr invalid, [sp, #24]
	b label434
label169:
	movw r0, #32767
	cmp r3, r0
	ble label1143
	ldr r0, [sp, #36]
	mov r4, r6
	ldr r2, [sp, #92]
	sdiv r0, r3, r0
	add r0, r0, #65536
	sub r3, r0, r2
	mov r2, r1
	b label113
label145:
	ands r10, r7, #1
	beq label143
label146:
	ldr r10, [r0, #0]
	add r8, r8, r8, lsr #31
	add r9, r9, #1
	add r7, r7, r7, lsr #31
	add r0, r0, #4
	asr r8, r8, #1
	asr r7, r7, #1
	add r4, r4, r10
	b label135
label172:
	cmp r4, #0
	bne label175
	b label1157
label1202:
	mov r1, r6
	b label172
label175:
	add r0, sp, #32
	mov r6, #0
	mov r8, r4
	mov r7, r1
	mov r9, r0
	mov r0, r6
label176:
	cmp r0, #16
	bge label1161
	ands r10, r7, #1
	beq label186
	ands r10, r8, #1
	beq label187
	b label184
label1161:
	add r0, sp, #32
	mov r7, r0
	mov r0, #0
	mov r8, r0
label189:
	cmp r8, #16
	bge label1184
	and r9, r4, r1
	ands r9, r9, #1
	bne label196
label1189:
	add r1, r1, r1, lsr #31
	add r8, r8, #1
	add r7, r7, #4
	add r4, r4, r4, lsr #31
	asr r1, r1, #1
	asr r4, r4, #1
	b label189
label196:
	ldr r9, [r7, #0]
	add r0, r0, r9
	b label1189
label184:
	add r7, r7, r7, lsr #31
	add r0, r0, #1
	add r9, r9, #4
	add r8, r8, r8, lsr #31
	asr r7, r7, #1
	asr r8, r8, #1
	b label176
label186:
	ands r10, r8, #1
	bne label187
	b label184
label1157:
	mov r6, r1
	mov r1, r2
	b label131
label187:
	ldr r10, [r9, #0]
	add r7, r7, r7, lsr #31
	add r0, r0, #1
	add r8, r8, r8, lsr #31
	add r9, r9, #4
	asr r7, r7, #1
	asr r8, r8, #1
	add r6, r6, r10
	b label176
label1184:
	ldr r1, [sp, #36]
	mov r4, #0
	movw r9, #65535
	mul r1, r0, r1
	add r0, sp, #32
	mov r7, r0
	mov r0, r4
label200:
	cmp r0, #16
	blt label206
	b label1202
label207:
	add r1, r1, r1, lsr #31
	add r0, r0, #1
	add r7, r7, #4
	asr r8, r1, #1
	add r1, r9, r9, lsr #31
	asr r1, r1, #1
	mov r9, r1
	mov r1, r8
	b label200
label206:
	and r8, r9, r1
	ands r8, r8, #1
	beq label207
	ldr r8, [r7, #0]
	add r1, r1, r1, lsr #31
	add r0, r0, #1
	add r7, r7, #4
	add r4, r4, r8
	asr r8, r1, #1
	add r1, r9, r9, lsr #31
	asr r1, r1, #1
	mov r9, r1
	mov r1, r8
	b label200
label1590:
	mov r1, #2
	mov r0, #1
	vldr invalid, [sp, #24]
	mov r2, r0
	mov r0, invalid
	str r0, [sp, #4]
label436:
	ldr r0, [sp, #4]
	cmp r0, #0
	bgt label441
	b label440
label552:
	movw r1, #32767
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label553
	ldr r1, [sp, #36]
	mov r2, r5
	sdiv r0, r0, r1
	add r1, r0, #65536
	ldr r0, [sp, #92]
	sub invalid, r1, r0
	mov r0, invalid
	mov r1, r3
	str r0, [sp, #4]
	b label436
label553:
	ldr r1, [sp, #36]
	mov r2, r5
	ldr r0, [sp, #4]
	sdiv invalid, r0, r1
	mov r1, r3
	mov r0, invalid
	str r0, [sp, #4]
	b label436
label905:
	mov r5, r2
	mov r4, #0
	mov r3, r1
	mov r2, r1
	b label113
label222:
	add r0, sp, #32
	mov r3, #0
	mov r5, r0
	mov r0, #1
	mov r6, r0
	ldr r0, [sp, #8]
	mov r4, r0
	mov r0, r3
label223:
	cmp r0, #16
	bge label229
	and r6, r6, r4
	ands r6, r6, #1
	beq label1580
	ldr r6, [r5, #0]
	add invalid, r3, r6
	mov r6, #0
	add r3, r4, r4, lsr #31
	asr invalid, r3, #1
	add invalid, r0, #1
	add invalid, r5, #4
	mov r0, invalid
	mov r4, invalid
	mov r3, invalid
	mov r5, invalid
	b label223
label1580:
	mov invalid, r3
	add r3, r4, r4, lsr #31
	mov r6, #0
	asr invalid, r3, #1
	add invalid, r0, #1
	add invalid, r5, #4
	mov r0, invalid
	mov r4, invalid
	mov r3, invalid
	mov r5, invalid
	b label223
label229:
	cmp r3, #0
	beq label1249
	mov r5, r2
	mov r3, r1
	mov r2, #0
label332:
	cmp r3, #0
	bne label336
	b label1249
label426:
	movw r0, #32767
	cmp r3, r0
	ble label1565
	ldr r0, [sp, #36]
	mov r5, r2
	mov r2, r7
	sdiv r0, r3, r0
	add r3, r0, #65536
	ldr r0, [sp, #92]
	sub invalid, r3, r0
	mov r3, invalid
	b label332
label1249:
	mov r6, r2
	mov r3, r1
	mov r4, r1
	mov r2, #0
label232:
	cmp r4, #0
	bne label236
	b label329
label327:
	ldr r0, [sp, #36]
	mov r3, r2
	mov r2, r5
	sdiv r4, r4, r0
	b label232
label329:
	movw r1, #32767
	ldr r0, [sp, #8]
	cmp r0, r1
	ble label330
	ldr r1, [sp, #36]
	sdiv r0, r0, r1
	ldr r1, [sp, #92]
	add r0, r0, #65536
	sub r0, r0, r1
	str r0, [sp, #8]
	mov r1, r2
	mov r2, r6
	b label218
label236:
	add r0, sp, #32
	mov r7, #0
	mov r5, r0
	mov r1, r7
	mov r0, #1
	mov r8, r0
	mov r0, r4
label237:
	cmp r1, #16
	bge label247
	and r8, r8, r0
	ands r8, r8, #1
	bne label244
label1262:
	add r0, r0, r0, lsr #31
	add r1, r1, #1
	add r5, r5, #4
	mov r8, #0
	asr r0, r0, #1
	b label237
label244:
	ldr r8, [r5, #0]
	add r7, r7, r8
	b label1262
label247:
	cmp r7, #0
	beq label1271
	mov r1, r2
	mov r2, r3
label248:
	cmp r2, #0
	beq label1275
	add r0, sp, #32
	mov r9, r2
	mov r5, #0
	mov r8, r0
	mov r7, r5
	mov r0, r1
label252:
	cmp r7, #16
	bge label1279
	ands r10, r0, #1
	bne label261
	b label260
label259:
	ldr r10, [r8, #0]
	add r0, r0, r0, lsr #31
	add r7, r7, #1
	add r9, r9, r9, lsr #31
	add r8, r8, #4
	asr r0, r0, #1
	asr r9, r9, #1
	add r5, r5, r10
	b label252
label1289:
	add r0, r0, r0, lsr #31
	add r7, r7, #1
	add r8, r8, #4
	add r9, r9, r9, lsr #31
	asr r0, r0, #1
	asr r9, r9, #1
	b label252
label261:
	ands r10, r9, #1
	beq label259
	b label1289
label260:
	ands r10, r9, #1
	bne label259
	b label1289
label1070:
	mov r0, r7
	add r6, r6, r6, lsr #31
	add r8, r8, #1
	add r1, r1, #4
	mov r0, #0
	asr r6, r6, #1
	b label118
label1589:
	add r0, sp, #32
	mov invalid, r0
	vstr invalid, [sp, #20]
	mov invalid, #0
	vstr invalid, [sp, #16]
label653:
	vldr invalid, [sp, #16]
	cmp invalid, #16
	blt label1943
	b label1942
label871:
	vldr invalid, [sp, #20]
	ldr r0, [invalid, #0]
	cmp invalid, r0
	bne label2296
	vldr invalid, [sp, #16]
	add r0, invalid, #1
	vldr invalid, [sp, #20]
	add invalid, invalid, #4
	vstr invalid, [sp, #20]
	mov invalid, r0
	vstr invalid, [sp, #16]
	b label653
label2296:
	mov r0, #1
	mov invalid, r0
label873:
	mov r0, invalid
	add sp, sp, #96
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label1279:
	add r0, sp, #32
	mov r7, #0
	mov r8, r7
label265:
	cmp r8, #16
	bge label271
	and r9, r2, r1
	ands r9, r9, #1
	bne label285
	add r1, r1, r1, lsr #31
	add r8, r8, #1
	add r0, r0, #4
	add r2, r2, r2, lsr #31
	asr r1, r1, #1
	asr r2, r2, #1
	b label265
label271:
	ldr r0, [sp, #36]
	movw r8, #65535
	mov r2, #0
	mul r1, r7, r0
	add r0, sp, #32
	mov r7, r0
	mov r0, r2
label272:
	cmp r0, #16
	bge label1309
	and r9, r8, r1
	ands r9, r9, #1
	bne label279
label1314:
	add r1, r1, r1, lsr #31
	add r0, r0, #1
	add r7, r7, #4
	asr r9, r1, #1
	add r1, r8, r8, lsr #31
	asr r1, r1, #1
	mov r8, r1
	mov r1, r9
	b label272
label279:
	ldr r9, [r7, #0]
	add r2, r2, r9
	b label1314
label1143:
	ldr r0, [sp, #36]
	mov r2, r1
	mov r4, r6
	sdiv r3, r3, r0
	b label113
label285:
	ldr r9, [r0, #0]
	add r1, r1, r1, lsr #31
	add r8, r8, #1
	add r2, r2, r2, lsr #31
	add r0, r0, #4
	asr r1, r1, #1
	asr r2, r2, #1
	add r7, r7, r9
	b label265
label1942:
	mov invalid, #0
	b label873
label1309:
	mov r1, r5
	b label248
label18:
	add r0, sp, #32
	mov r4, #0
	mov r7, r0
	mov r6, r4
	mov r0, #1
	mov r8, r0
	mov r0, r5
label19:
	cmp r6, #16
	blt label107
	b label25
label110:
	ldr r8, [r7, #0]
	add r0, r0, r0, lsr #31
	add r6, r6, #1
	add r7, r7, #4
	asr r0, r0, #1
	add r4, r4, r8
	mov r8, #0
	b label19
label25:
	cmp r4, #0
	beq label913
	mov r4, r3
label26:
	cmp r4, #0
	beq label913
	add r0, sp, #32
	mov r6, #0
	mov r7, r4
	mov r9, r2
	mov r8, r0
	mov r0, r6
label30:
	cmp r0, #16
	bge label36
	ands r10, r9, #1
	beq label60
	ands r10, r7, #1
	bne label963
label61:
	ldr r10, [r8, #0]
	add r6, r6, r10
label963:
	add r9, r9, r9, lsr #31
	add r0, r0, #1
	add r8, r8, #4
	add r7, r7, r7, lsr #31
	asr r9, r9, #1
	asr r7, r7, #1
	b label30
label60:
	ands r10, r7, #1
	bne label61
	b label963
label107:
	and r8, r8, r0
	ands r8, r8, #1
	bne label110
	add r0, r0, r0, lsr #31
	add r6, r6, #1
	add r7, r7, #4
	mov r8, #0
	asr r0, r0, #1
	b label19
label913:
	mov r6, r2
	mov r2, r3
label66:
	cmp r3, #0
	beq label104
	add r0, sp, #32
	mov r4, #0
	mov r8, r2
	mov r9, r0
	mov r7, r4
	mov r0, r3
label70:
	cmp r7, #16
	blt label76
	b label981
label77:
	ldr r10, [r9, #0]
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r0, r0, r0, lsr #31
	add r9, r9, #4
	asr r8, r8, #1
	asr r0, r0, #1
	add r4, r4, r10
	b label70
label79:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r9, r9, #4
	add r0, r0, r0, lsr #31
	asr r8, r8, #1
	asr r0, r0, #1
	b label70
label81:
	ands r10, r0, #1
	bne label77
	b label79
label36:
	add r0, sp, #32
	mov r9, #0
	mov r8, r4
	mov r7, r2
	mov r2, r9
label37:
	cmp r2, #16
	bge label43
	and r4, r8, r7
	ands r4, r4, #1
	beq label948
	ldr r4, [r0, #0]
	add r7, r7, r7, lsr #31
	add r2, r2, #1
	add r8, r8, r8, lsr #31
	add r0, r0, #4
	asr r7, r7, #1
	asr r8, r8, #1
	add r4, r9, r4
	mov r9, r4
	b label37
label104:
	movw r0, #32767
	cmp r5, r0
	bgt label105
	ldr r0, [sp, #36]
	mov r3, r2
	mov r2, r6
	sdiv r5, r5, r0
	b label14
label948:
	mov r4, r9
	add r7, r7, r7, lsr #31
	add r2, r2, #1
	add r0, r0, #4
	add r8, r8, r8, lsr #31
	asr r7, r7, #1
	asr r8, r8, #1
	b label37
label43:
	ldr r0, [sp, #36]
	mov r4, #0
	mov r2, r4
	mul r7, r9, r0
	movw r9, #65535
	add r0, sp, #32
label44:
	cmp r2, #16
	bge label932
	and r8, r9, r7
	ands r8, r8, #1
	bne label51
label937:
	add r7, r7, r7, lsr #31
	add r2, r2, #1
	add r0, r0, #4
	asr r8, r7, #1
	add r7, r9, r9, lsr #31
	asr r7, r7, #1
	mov r9, r7
	mov r7, r8
	b label44
label51:
	ldr r8, [r0, #0]
	add r4, r4, r8
	b label937
label76:
	ands r10, r8, #1
	beq label81
	ands r10, r0, #1
	beq label77
	b label79
label336:
	add r0, sp, #32
	mov r6, r3
	mov r4, r0
	mov r0, #1
	mov r8, r0
	mov r0, #0
	mov r7, r0
label337:
	cmp r7, #16
	bge label347
	and r8, r8, r6
	ands r8, r8, #1
	bne label344
label1432:
	add r6, r6, r6, lsr #31
	add r7, r7, #1
	add r4, r4, #4
	mov r8, #0
	asr r6, r6, #1
	b label337
label344:
	ldr r8, [r4, #0]
	add r0, r0, r8
	b label1432
label347:
	cmp r0, #0
	beq label1441
	mov r4, r5
label348:
	cmp r4, #0
	beq label1441
	add r0, sp, #32
	mov r7, r4
	mov r9, r2
	mov r6, #0
	mov r8, r6
label352:
	cmp r8, #16
	bge label1449
	ands r10, r9, #1
	beq label359
	ands r10, r7, #1
	bne label1457
label361:
	ldr r10, [r0, #0]
	add r6, r6, r10
label1457:
	add r9, r9, r9, lsr #31
	add r8, r8, #1
	add r0, r0, #4
	add r7, r7, r7, lsr #31
	asr r9, r9, #1
	asr r7, r7, #1
	b label352
label359:
	ands r10, r7, #1
	bne label361
	b label1457
label1441:
	mov r7, r2
	mov r2, r5
label388:
	cmp r5, #0
	bne label391
	b label426
label1539:
	mov r2, r4
	b label388
label391:
	add r0, sp, #32
	mov r6, r5
	mov r8, r2
	mov r4, #0
	mov r9, r0
	mov r0, r4
label392:
	cmp r0, #16
	bge label1509
	ands r10, r8, #1
	bne label399
	ands r10, r6, #1
	bne label400
	b label1518
label1509:
	add r0, sp, #32
	mov r6, #0
	mov r8, r0
	mov r0, r6
label405:
	cmp r0, #16
	bge label411
	and r9, r5, r2
	ands r9, r9, #1
	bne label425
	b label1555
label423:
	add r2, r2, r2, lsr #31
	asr invalid, r2, #1
	add r2, r5, r5, lsr #31
	asr invalid, r2, #1
	add invalid, r0, #1
	add invalid, r8, #4
	mov r0, invalid
	mov r6, invalid
	mov r2, invalid
	mov r5, invalid
	mov r8, invalid
	b label405
label425:
	ldr r9, [r8, #0]
	add invalid, r6, r9
	b label423
label399:
	ands r10, r6, #1
	beq label400
label1518:
	add r8, r8, r8, lsr #31
	add r0, r0, #1
	add r9, r9, #4
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	b label392
label400:
	ldr r10, [r9, #0]
	add r4, r4, r10
	b label1518
label411:
	ldr r0, [sp, #36]
	mov r5, #0
	movw r8, #65535
	mul r6, r6, r0
	add r0, sp, #32
	mov r2, r0
	mov r0, r6
	mov r6, r5
label412:
	cmp r6, #16
	blt label418
	b label1539
label1544:
	mov invalid, r5
label420:
	add r0, r0, r0, lsr #31
	asr invalid, r0, #1
	add r0, r8, r8, lsr #31
	asr invalid, r0, #1
	add invalid, r6, #1
	add invalid, r2, #4
	mov r6, invalid
	mov r0, invalid
	mov r8, invalid
	mov r5, invalid
	mov r2, invalid
	b label412
label418:
	and r9, r8, r0
	ands r9, r9, #1
	beq label1544
	ldr r9, [r2, #0]
	add invalid, r5, r9
	b label420
label1128:
	mov r1, r4
	b label131
label1565:
	ldr r0, [sp, #36]
	mov r5, r2
	mov r2, r7
	sdiv invalid, r3, r0
	mov r3, invalid
	b label332
label1555:
	mov invalid, r6
	b label423
label1271:
	mov r5, r2
	mov r1, r3
	mov r2, r3
label288:
	cmp r1, #0
	bne label291
	b label326
label1380:
	mov r2, r3
	b label288
label291:
	add r0, sp, #32
	mov r7, r1
	mov r8, r2
	mov r3, #0
	mov r9, r3
label292:
	cmp r9, #16
	bge label1339
	ands r10, r8, #1
	bne label300
	b label301
label1350:
	add r8, r8, r8, lsr #31
	add r9, r9, #1
	add r0, r0, #4
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	b label292
label301:
	ands r10, r7, #1
	bne label299
	b label1350
label326:
	movw r0, #32767
	cmp r4, r0
	ble label327
	ldr r0, [sp, #36]
	mov r3, r2
	ldr r1, [sp, #92]
	mov r2, r5
	sdiv r0, r4, r0
	add r0, r0, #65536
	sub r4, r0, r1
	b label232
label299:
	ldr r10, [r0, #0]
	add r8, r8, r8, lsr #31
	add r9, r9, #1
	add r7, r7, r7, lsr #31
	add r0, r0, #4
	asr r8, r8, #1
	asr r7, r7, #1
	add r3, r3, r10
	b label292
label300:
	ands r10, r7, #1
	beq label299
	b label1350
label441:
	add r0, sp, #32
	mov invalid, #0
	mov r5, r0
	mov r0, #1
	mov r6, r0
	ldr r0, [sp, #4]
	mov r4, r0
	mov r0, invalid
label442:
	cmp r0, #16
	bge label452
	and r3, r6, r4
	ands r3, r3, #1
	bne label449
	mov r3, invalid
	add r4, r4, r4, lsr #31
	mov r6, #0
	asr invalid, r4, #1
	add invalid, r0, #1
	add invalid, r5, #4
	mov r4, invalid
	mov r5, invalid
	mov invalid, r3
	mov r0, invalid
	b label442
label449:
	ldr r3, [r5, #0]
	add invalid, invalid, r3
	mov r3, invalid
	add r4, r4, r4, lsr #31
	mov r6, #0
	asr invalid, r4, #1
	add invalid, r0, #1
	add invalid, r5, #4
	mov r4, invalid
	mov r5, invalid
	mov invalid, r3
	mov r0, invalid
	b label442
label452:
	cmp invalid, #0
	beq label1612
	mov r3, r2
	mov invalid, #0
	mov r5, r1
	b label555
label1612:
	mov r5, r2
	mov r3, #0
	mov r4, r1
	mov r2, r1
label455:
	cmp r4, #0
	beq label552
	add r0, sp, #32
	mov r1, #0
	mov r7, r4
	mov r6, r0
	mov r0, #1
	mov r8, r0
	mov r0, r1
label460:
	cmp r0, #16
	blt label548
	b label466
label1763:
	mov invalid, r1
	add r1, r7, r7, lsr #31
	mov r8, #0
	asr invalid, r1, #1
	add invalid, r0, #1
	add invalid, r6, #4
	mov r0, invalid
	mov r7, invalid
	mov r1, invalid
	mov r6, invalid
	b label460
label466:
	cmp r1, #0
	beq label1624
	mov r1, r3
	mov r3, r2
label510:
	cmp r3, #0
	beq label1702
	add r0, sp, #32
	mov r6, #0
	mov r7, r1
	mov invalid, r0
	mov r8, r6
	mov r0, r3
label514:
	cmp r8, #16
	bge label520
	ands r9, r7, #1
	bne label547
	b label544
label543:
	ldr r9, [invalid, #0]
	add r6, r6, r9
	mov invalid, r6
	b label545
label544:
	ands r9, r0, #1
	bne label543
label1749:
	mov invalid, r6
label545:
	add r6, r7, r7, lsr #31
	add r0, r0, r0, lsr #31
	asr invalid, r6, #1
	asr invalid, r0, #1
	add invalid, r8, #1
	add r0, invalid, #4
	mov invalid, r0
	mov r8, invalid
	mov r7, invalid
	mov r0, invalid
	mov r6, invalid
	b label514
label555:
	cmp r5, #0
	bne label559
	b label1786
label611:
	movw r0, #32767
	cmp r5, r0
	bgt label613
	ldr r0, [sp, #36]
	mov r3, r2
	sdiv invalid, r5, r0
	mov invalid, r4
	mov r5, invalid
	b label555
label520:
	add r0, sp, #32
	mov invalid, #0
	mov r7, r0
	mov invalid, r3
	mov invalid, r1
	mov r1, invalid
label521:
	cmp r1, #16
	bge label1710
	and r0, invalid, invalid
	ands r0, r0, #1
	bne label530
	mov r0, invalid
label528:
	add r3, invalid, invalid, lsr #31
	add r8, invalid, invalid, lsr #31
	asr r3, r3, #1
	add invalid, r1, #1
	asr r8, r8, #1
	add invalid, r7, #4
	mov r7, invalid
	mov invalid, r0
	mov invalid, r8
	mov invalid, r3
	mov r1, invalid
	b label521
label548:
	and r8, r8, r7
	ands r8, r8, #1
	beq label1763
	ldr r8, [r6, #0]
	add invalid, r1, r8
	mov r8, #0
	add r1, r7, r7, lsr #31
	asr invalid, r1, #1
	add invalid, r0, #1
	add invalid, r6, #4
	mov r0, invalid
	mov r7, invalid
	mov r1, invalid
	mov r6, invalid
	b label460
label547:
	ands r9, r0, #1
	beq label543
	b label1749
label932:
	mov r2, r6
	b label26
label1710:
	ldr r0, [sp, #36]
	movw r7, #65535
	mul invalid, invalid, r0
	mov invalid, #0
	add r0, sp, #32
	mov r1, invalid
	mov r3, r0
	mov r0, invalid
label532:
	cmp r0, #16
	blt label538
	b label1728
label539:
	add r1, r1, r1, lsr #31
	add invalid, r0, #1
	add invalid, r3, #4
	asr r8, r1, #1
	mov r0, invalid
	mov r3, invalid
	add r1, r7, r7, lsr #31
	asr r1, r1, #1
	mov r7, r1
	mov r1, r8
	b label532
label538:
	and r8, r7, r1
	ands r8, r8, #1
	beq label539
	ldr r8, [r3, #0]
	add invalid, invalid, r8
	b label539
label1786:
	mov r5, invalid
	mov r2, r1
	mov r3, #0
	mov r4, r1
	b label455
label211:
	ldr r1, [sp, #36]
	mov r3, r5
	ldr r0, [sp, #12]
	sdiv r0, r0, r1
	ldr r1, [sp, #92]
	add r0, r0, #65536
	sub r0, r0, r1
	str r0, [sp, #12]
	mov r1, r4
	b label2
label1728:
	mov r1, r6
	mov r3, invalid
	b label510
label530:
	ldr r0, [r7, #0]
	add invalid, invalid, r0
	mov r0, invalid
	b label528
label981:
	add r0, sp, #32
	mov r8, r3
	mov r7, r0
	mov r0, #0
	mov r3, r0
label83:
	cmp r3, #16
	bge label89
	and r9, r8, r2
	ands r9, r9, #1
	beq label101
	ldr r9, [r7, #0]
	add r2, r2, r2, lsr #31
	add r3, r3, #1
	add r8, r8, r8, lsr #31
	add r7, r7, #4
	asr r2, r2, #1
	asr r8, r8, #1
	add r0, r0, r9
	b label83
label89:
	ldr r2, [sp, #36]
	mov r3, #0
	movw r8, #65535
	mul r2, r0, r2
	add r0, sp, #32
	mov r7, r0
	mov r0, r3
label90:
	cmp r0, #16
	bge label1011
	and r9, r8, r2
	ands r9, r9, #1
	bne label97
label1016:
	add r2, r2, r2, lsr #31
	add r0, r0, #1
	add r7, r7, #4
	add r8, r8, r8, lsr #31
	asr r2, r2, #1
	asr r8, r8, #1
	b label90
label97:
	ldr r9, [r7, #0]
	add r3, r3, r9
	b label1016
label101:
	add r2, r2, r2, lsr #31
	add r3, r3, #1
	add r7, r7, #4
	add r8, r8, r8, lsr #31
	asr r2, r2, #1
	asr r8, r8, #1
	b label83
label1943:
	mov r1, #2
	mov r0, #1
	mov invalid, r0
	vldr invalid, [sp, #16]
	mov r0, invalid
	str r0, [sp, #0]
label656:
	ldr r0, [sp, #0]
	cmp r0, #0
	bgt label660
	b label871
label768:
	ldr r1, [sp, #36]
	ldr r0, [sp, #0]
	sdiv invalid, r0, r1
	mov invalid, r5
	mov r1, r3
	mov r0, invalid
	str r0, [sp, #0]
	b label656
label1011:
	mov r2, r4
	b label66
label1449:
	add r0, sp, #32
	mov r7, #0
	mov r8, r0
	mov r0, r7
label365:
	cmp r0, #16
	bge label371
	and r9, r4, r2
	ands r9, r9, #1
	beq label383
	ldr r9, [r8, #0]
	add r2, r2, r2, lsr #31
	add r0, r0, #1
	add r4, r4, r4, lsr #31
	add r8, r8, #4
	asr r2, r2, #1
	asr r4, r4, #1
	add r7, r7, r9
	b label365
label383:
	add r2, r2, r2, lsr #31
	add r0, r0, #1
	add r8, r8, #4
	add r4, r4, r4, lsr #31
	asr r2, r2, #1
	asr r4, r4, #1
	b label365
label371:
	ldr r0, [sp, #36]
	movw r8, #65535
	mov r4, #0
	mul r2, r7, r0
	add r0, sp, #32
	mov r7, r0
	mov r0, r4
label372:
	cmp r0, #16
	bge label1479
	and r9, r8, r2
	ands r9, r9, #1
	bne label379
label1484:
	add r2, r2, r2, lsr #31
	add r0, r0, #1
	add r7, r7, #4
	add r8, r8, r8, lsr #31
	asr r2, r2, #1
	asr r8, r8, #1
	b label372
label379:
	ldr r9, [r7, #0]
	add r4, r4, r9
	b label1484
label1339:
	add r0, sp, #32
	mov r7, r2
	mov r8, r0
	mov r0, #0
	mov r2, r0
label305:
	cmp r2, #16
	blt label311
	b label1362
label312:
	add r7, r7, r7, lsr #31
	add r2, r2, #1
	add r8, r8, #4
	add r1, r1, r1, lsr #31
	asr r7, r7, #1
	asr r1, r1, #1
	b label305
label1362:
	ldr r1, [sp, #36]
	movw r8, #65535
	mul r2, r0, r1
	mov r1, #0
	add r0, sp, #32
	mov r7, r1
label316:
	cmp r7, #16
	bge label1380
	and r9, r8, r2
	ands r9, r9, #1
	beq label323
	ldr r9, [r0, #0]
	add r2, r2, r2, lsr #31
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r0, r0, #4
	asr r2, r2, #1
	asr r8, r8, #1
	add r1, r1, r9
	b label316
label323:
	add r2, r2, r2, lsr #31
	add r7, r7, #1
	add r0, r0, #4
	add r8, r8, r8, lsr #31
	asr r2, r2, #1
	asr r8, r8, #1
	b label316
label311:
	and r9, r1, r7
	ands r9, r9, #1
	beq label312
	ldr r9, [r8, #0]
	add r7, r7, r7, lsr #31
	add r2, r2, #1
	add r1, r1, r1, lsr #31
	add r8, r8, #4
	asr r7, r7, #1
	asr r1, r1, #1
	add r0, r0, r9
	b label305
label1479:
	mov r2, r6
	b label348
label660:
	add r0, sp, #32
	mov r3, r0
	mov r0, #1
	mov r5, r0
	ldr r0, [sp, #0]
	mov r2, r0
	mov r0, #0
	mov r4, r0
label661:
	cmp r4, #16
	blt label867
	b label667
label2285:
	mov invalid, r0
	add r0, r2, r2, lsr #31
	mov r5, #0
	asr invalid, r0, #1
	add invalid, r4, #1
	add invalid, r3, #4
	mov r4, invalid
	mov r0, invalid
	mov r2, invalid
	mov r3, invalid
	b label661
label667:
	cmp r0, #0
	beq label1954
	mov r4, invalid
	mov r5, r1
	mov invalid, #0
label770:
	cmp r5, #0
	beq label1954
	add r0, sp, #32
	mov r3, #0
	mov r2, r5
	mov r6, r0
	mov r0, #1
	mov r7, r0
	mov r0, r3
label775:
	cmp r0, #16
	bge label781
	and r7, r7, r2
	ands r7, r7, #1
	beq label2275
	ldr r7, [r6, #0]
	add r3, r3, r7
	mov invalid, r3
	add r2, r2, r2, lsr #31
	mov r7, #0
	asr invalid, r2, #1
	add invalid, r0, #1
	add invalid, r6, #4
	mov r0, invalid
	mov r2, invalid
	mov r3, invalid
	mov r6, invalid
	b label775
label781:
	cmp r3, #0
	bne label2137
	mov r6, invalid
	mov r2, r4
	mov invalid, r4
label822:
	cmp invalid, #0
	bne label825
	b label860
label2245:
	mov r2, r3
	b label822
label2137:
	mov r2, invalid
	mov r3, r4
label782:
	cmp r3, #0
	beq label2140
	add r0, sp, #32
	mov r8, r2
	mov r6, #0
	mov r7, r0
	mov r9, r6
	mov r0, r3
label786:
	cmp r9, #16
	bge label792
	ands r10, r8, #1
	beq label818
	ands r10, r0, #1
	bne label2186
label819:
	ldr r10, [r7, #0]
	add invalid, r6, r10
	b label816
label792:
	add r0, sp, #32
	mov invalid, r3
	mov r7, r0
	mov invalid, r2
	mov r0, #0
	mov r2, r0
label793:
	cmp r2, #16
	bge label799
	and r3, invalid, invalid
	ands r3, r3, #1
	beq label2171
	ldr r3, [r7, #0]
	add r0, r0, r3
	mov invalid, r0
label812:
	add r0, invalid, invalid, lsr #31
	add invalid, r2, #1
	asr r3, r0, #1
	add invalid, r7, #4
	asr r0, r0, #1
	mov r7, invalid
	mov invalid, r0
	mov invalid, r3
	mov r2, invalid
	mov r0, invalid
	b label793
label799:
	ldr r2, [sp, #36]
	movw r7, #65535
	mul invalid, r0, r2
	mov invalid, #0
	add r0, sp, #32
	mov r3, invalid
	mov r2, r0
	mov r0, invalid
label800:
	cmp r0, #16
	bge label2155
	and r8, r7, r3
	ands r8, r8, #1
	bne label807
label808:
	add r3, r3, r3, lsr #31
	asr invalid, r3, #1
	add r3, r7, r7, lsr #31
	asr invalid, r3, #1
	add invalid, r0, #1
	add invalid, r2, #4
	mov r0, invalid
	mov r3, invalid
	mov r7, invalid
	mov r2, invalid
	b label800
label1954:
	mov r5, invalid
	mov r2, r1
	mov r3, #0
	mov r4, r1
label670:
	cmp r4, #0
	bne label674
	b label767
label687:
	movw r0, #32767
	cmp r4, r0
	bgt label689
	ldr r0, [sp, #36]
	mov r2, r1
	sdiv invalid, r4, r0
	mov r4, invalid
	mov r3, invalid
	b label670
label767:
	movw r1, #32767
	ldr r0, [sp, #0]
	cmp r0, r1
	ble label768
	ldr r1, [sp, #36]
	sdiv r0, r0, r1
	add r1, r0, #65536
	ldr r0, [sp, #92]
	sub invalid, r1, r0
	mov invalid, r5
	mov r1, r3
	mov r0, invalid
	str r0, [sp, #0]
	b label656
label2186:
	mov invalid, r6
label816:
	add r6, r8, r8, lsr #31
	add r0, r0, r0, lsr #31
	asr invalid, r6, #1
	asr invalid, r0, #1
	add invalid, r9, #1
	add invalid, r7, #4
	mov r9, invalid
	mov r6, invalid
	mov r8, invalid
	mov r0, invalid
	mov r7, invalid
	b label786
label818:
	ands r10, r0, #1
	bne label819
	b label2186
label860:
	movw r0, #32767
	cmp r5, r0
	ble label861
	ldr r0, [sp, #36]
	mov r4, r2
	sdiv r0, r5, r0
	add r3, r0, #65536
	ldr r0, [sp, #92]
	sub invalid, r3, r0
	mov invalid, r6
	mov r5, invalid
	b label770
label861:
	ldr r0, [sp, #36]
	mov r4, r2
	sdiv invalid, r5, r0
	mov invalid, r6
	mov r5, invalid
	b label770
label867:
	and r5, r5, r2
	ands r5, r5, #1
	beq label2285
	ldr r5, [r3, #0]
	add r0, r0, r5
	mov r5, #0
	mov invalid, r0
	add r0, r2, r2, lsr #31
	asr invalid, r0, #1
	add invalid, r4, #1
	add invalid, r3, #4
	mov r4, invalid
	mov r0, invalid
	mov r2, invalid
	mov r3, invalid
	b label661
label2155:
	mov r2, r6
	mov r3, invalid
	b label782
label674:
	add r0, sp, #32
	mov r7, r4
	mov r1, #0
	mov r6, r0
	mov r0, #1
	mov r8, r0
	mov r0, r1
label675:
	cmp r0, #16
	bge label681
	and r8, r8, r7
	ands r8, r8, #1
	bne label766
	mov invalid, r1
	add r1, r7, r7, lsr #31
	mov r8, #0
	asr invalid, r1, #1
	add invalid, r0, #1
	add invalid, r6, #4
	mov r0, invalid
	mov r1, invalid
	mov r7, invalid
	mov r6, invalid
	b label675
label681:
	cmp r1, #0
	beq label1966
	mov r1, r3
	mov r3, r2
label725:
	cmp r3, #0
	bne label728
	b label2044
label2059:
	mov r1, r6
	mov r3, invalid
	b label725
label728:
	add r0, sp, #32
	mov r9, r1
	mov r6, #0
	mov r7, r0
	mov r8, r6
	mov r0, r3
label729:
	cmp r8, #16
	bge label735
	ands r10, r9, #1
	bne label762
	ands r10, r0, #1
	beq label2089
label761:
	ldr r10, [r7, #0]
	add invalid, r6, r10
	b label759
label684:
	cmp invalid, #0
	bne label690
	b label687
label2044:
	mov invalid, r1
	mov invalid, r2
	mov r1, r2
	b label684
label735:
	add r0, sp, #32
	mov invalid, r3
	mov r7, r0
	mov r3, r1
	mov r1, #0
	mov r0, r1
label736:
	cmp r0, #16
	bge label742
	and r8, invalid, r3
	ands r8, r8, #1
	bne label754
	mov invalid, r1
	b label755
label754:
	ldr r8, [r7, #0]
	add r1, r1, r8
	mov invalid, r1
label755:
	add r1, r3, r3, lsr #31
	asr invalid, r1, #1
	add r1, invalid, invalid, lsr #31
	add invalid, r0, #1
	asr r1, r1, #1
	add invalid, r7, #4
	mov r7, invalid
	mov invalid, r1
	mov r0, invalid
	mov r1, invalid
	mov r3, invalid
	b label736
label742:
	ldr r0, [sp, #36]
	movw r7, #65535
	mul r1, r1, r0
	add r0, sp, #32
	mov invalid, r0
	mov r0, r1
	mov invalid, #0
	mov r1, invalid
label743:
	cmp r1, #16
	blt label749
	b label2059
label2064:
	mov r3, invalid
label750:
	add r0, r0, r0, lsr #31
	asr invalid, r0, #1
	add r0, r7, r7, lsr #31
	asr invalid, r0, #1
	add invalid, r1, #1
	add r0, invalid, #4
	mov invalid, r0
	mov invalid, r3
	mov r1, invalid
	mov r0, invalid
	mov r7, invalid
	b label743
label2089:
	mov invalid, r6
label759:
	add r6, r9, r9, lsr #31
	add r0, r0, r0, lsr #31
	asr invalid, r6, #1
	asr invalid, r0, #1
	add invalid, r8, #1
	add invalid, r7, #4
	mov r8, invalid
	mov r6, invalid
	mov r9, invalid
	mov r0, invalid
	mov r7, invalid
	b label729
label762:
	ands r10, r0, #1
	beq label761
	b label2089
label749:
	and r3, r7, r0
	ands r3, r3, #1
	beq label2064
	ldr r3, [invalid, #0]
	add invalid, invalid, r3
	mov r3, invalid
	b label750
label1702:
	mov invalid, r1
	mov invalid, r2
	mov r1, r2
label469:
	cmp invalid, #0
	bne label475
	b label472
label1668:
	mov r1, r2
	b label469
label472:
	movw r0, #32767
	cmp r4, r0
	bgt label473
	ldr r0, [sp, #36]
	mov r2, r1
	sdiv invalid, r4, r0
	mov r4, invalid
	mov r3, invalid
	b label455
label766:
	ldr r8, [r6, #0]
	add invalid, r1, r8
	mov r8, #0
	add r1, r7, r7, lsr #31
	asr invalid, r1, #1
	add invalid, r0, #1
	add invalid, r6, #4
	mov r0, invalid
	mov r1, invalid
	mov r7, invalid
	mov r6, invalid
	b label675
label2171:
	mov invalid, r0
	b label812
label475:
	add r0, sp, #32
	mov r3, invalid
	mov r2, #0
	mov r7, r0
	mov r6, r2
	mov r0, r1
label476:
	cmp r6, #16
	blt label504
	b label482
label507:
	add r0, r0, r0, lsr #31
	asr invalid, r0, #1
	add r0, r3, r3, lsr #31
	asr invalid, r0, #1
	add invalid, r6, #1
	add invalid, r7, #4
	mov r6, invalid
	mov r2, invalid
	mov r0, invalid
	mov r3, invalid
	mov r7, invalid
	b label476
label482:
	add r0, sp, #32
	mov r6, invalid
	mov r3, r0
	mov invalid, r1
	mov r0, #0
	mov r1, r0
label483:
	cmp r1, #16
	bge label1650
	and r7, r6, invalid
	ands r7, r7, #1
	beq label1655
	ldr r7, [r3, #0]
	add r0, r0, r7
	mov invalid, r0
label491:
	add r0, invalid, invalid, lsr #31
	add r6, r6, r6, lsr #31
	asr r0, r0, #1
	asr invalid, r6, #1
	add invalid, r1, #1
	add invalid, r3, #4
	mov r6, invalid
	mov r3, invalid
	mov invalid, r0
	mov r1, invalid
	mov r0, invalid
	b label483
label1650:
	ldr r1, [sp, #36]
	mov invalid, #0
	movw r7, #65535
	mov r6, invalid
	mul r1, r0, r1
	add r0, sp, #32
	mov r3, r0
	mov r0, r1
label494:
	cmp r6, #16
	bge label1668
	and r1, r7, r0
	ands r1, r1, #1
	bne label503
	b label1673
label501:
	add r0, r0, r0, lsr #31
	asr invalid, r0, #1
	add r0, r7, r7, lsr #31
	asr invalid, r0, #1
	add invalid, r6, #1
	add invalid, r3, #4
	mov r3, invalid
	mov invalid, r1
	mov r6, invalid
	mov r0, invalid
	mov r7, invalid
	b label494
label503:
	ldr r1, [r3, #0]
	add invalid, invalid, r1
	mov r1, invalid
	b label501
label504:
	ands r8, r0, #1
	bne label509
	ands r8, r3, #1
	bne label506
label1687:
	mov invalid, r2
	b label507
label506:
	ldr r8, [r7, #0]
	add r2, r2, r8
	mov invalid, r2
	b label507
label509:
	ands r8, r3, #1
	beq label506
	b label1687
label613:
	ldr r0, [sp, #36]
	ldr r3, [sp, #92]
	sdiv r0, r5, r0
	add r0, r0, #65536
	sub invalid, r0, r3
	mov invalid, r4
	mov r3, r2
	mov r5, invalid
	b label555
label559:
	add r0, sp, #32
	mov r2, #0
	mov r4, r0
	mov r6, r2
	mov r0, #1
	mov r7, r0
	mov r0, r5
label560:
	cmp r6, #16
	blt label566
	b label570
label1795:
	mov invalid, r2
	add r0, r0, r0, lsr #31
	mov r7, #0
	asr invalid, r0, #1
	add invalid, r6, #1
	add invalid, r4, #4
	mov r6, invalid
	mov r0, invalid
	mov r2, invalid
	mov r4, invalid
	b label560
label570:
	cmp r2, #0
	beq label1804
	mov r2, invalid
	mov r4, r3
label614:
	cmp r4, #0
	beq label1882
	add r0, sp, #32
	mov r6, #0
	mov r8, r2
	mov r7, r0
	mov r9, r6
	mov r0, r4
label618:
	cmp r9, #16
	bge label1886
	ands r10, r8, #1
	bne label628
	b label629
label625:
	add r6, r8, r8, lsr #31
	add r0, r0, r0, lsr #31
	asr invalid, r6, #1
	asr invalid, r0, #1
	add invalid, r9, #1
	add invalid, r7, #4
	mov r9, invalid
	mov r8, invalid
	mov r0, invalid
	mov r6, invalid
	mov r7, invalid
	b label618
label627:
	ldr r10, [r7, #0]
	add invalid, r6, r10
	b label625
label1901:
	mov invalid, r6
	b label625
label629:
	ands r10, r0, #1
	bne label627
	b label1901
label1886:
	add r0, sp, #32
	mov invalid, r4
	mov r7, r0
	mov invalid, r2
	mov r0, #0
	mov r2, r0
label631:
	cmp r2, #16
	bge label637
	and r4, invalid, invalid
	ands r4, r4, #1
	beq label1932
	ldr r4, [r7, #0]
	add r0, r0, r4
	mov invalid, r0
	b label649
label566:
	and r7, r7, r0
	ands r7, r7, #1
	beq label1795
	ldr r7, [r4, #0]
	add r2, r2, r7
	mov invalid, r2
	add r0, r0, r0, lsr #31
	mov r7, #0
	asr invalid, r0, #1
	add invalid, r6, #1
	add invalid, r4, #4
	mov r6, invalid
	mov r0, invalid
	mov r2, invalid
	mov r4, invalid
	b label560
label1932:
	mov invalid, r0
label649:
	add r0, invalid, invalid, lsr #31
	add r4, invalid, invalid, lsr #31
	asr r0, r0, #1
	add invalid, r2, #1
	asr r4, r4, #1
	add invalid, r7, #4
	mov r7, invalid
	mov invalid, r4
	mov invalid, r0
	mov r2, invalid
	mov r0, invalid
	b label631
label637:
	ldr r2, [sp, #36]
	movw r7, #65535
	mul invalid, r0, r2
	mov invalid, #0
	add r0, sp, #32
	mov r2, invalid
	mov r4, r0
	mov r0, invalid
label638:
	cmp r0, #16
	blt label644
	b label1916
label645:
	ldr r8, [r4, #0]
	add invalid, invalid, r8
label646:
	add r2, r2, r2, lsr #31
	add invalid, r0, #1
	add invalid, r4, #4
	asr r8, r2, #1
	mov r0, invalid
	mov r4, invalid
	add r2, r7, r7, lsr #31
	asr r2, r2, #1
	mov r7, r2
	mov r2, r8
	b label638
label644:
	and r8, r7, r2
	ands r8, r8, #1
	bne label645
	b label646
label1882:
	mov r4, r2
	mov invalid, r3
	mov r2, r3
label573:
	cmp invalid, #0
	bne label576
	b label611
label1834:
	mov r2, r3
	b label573
label825:
	add r0, sp, #32
	mov r3, #0
	mov r7, invalid
	mov r4, r0
	mov r8, r3
	mov r0, r2
label826:
	cmp r8, #16
	blt label832
	b label2204
label833:
	ands r9, r7, #1
	bne label2213
label834:
	ldr r9, [r4, #0]
	add r3, r3, r9
	mov invalid, r3
label835:
	add r0, r0, r0, lsr #31
	asr invalid, r0, #1
	add r0, r7, r7, lsr #31
	asr invalid, r0, #1
	add invalid, r8, #1
	add invalid, r4, #4
	mov r8, invalid
	mov r0, invalid
	mov r7, invalid
	mov r3, invalid
	mov r4, invalid
	b label826
label832:
	ands r9, r0, #1
	bne label833
	b label837
label2213:
	mov invalid, r3
	b label835
label837:
	ands r9, r7, #1
	bne label834
	b label2213
label2204:
	add r0, sp, #32
	mov r4, invalid
	mov r7, r0
	mov invalid, r2
	mov r0, #0
	mov r2, r0
label839:
	cmp r2, #16
	bge label2227
	and r8, r4, invalid
	ands r8, r8, #1
	bne label846
	mov invalid, r0
	b label847
label2227:
	ldr r2, [sp, #36]
	mov invalid, #0
	movw r7, #65535
	mul r4, r0, r2
	add r0, sp, #32
	mov r2, r0
	mov r0, r4
	mov r4, invalid
label850:
	cmp r4, #16
	bge label2245
	and r8, r7, r0
	ands r8, r8, #1
	bne label859
label857:
	add r0, r0, r0, lsr #31
	asr invalid, r0, #1
	add r0, r7, r7, lsr #31
	asr invalid, r0, #1
	add invalid, r4, #1
	add invalid, r2, #4
	mov r4, invalid
	mov r0, invalid
	mov r7, invalid
	mov r2, invalid
	b label850
label846:
	ldr r8, [r7, #0]
	add r0, r0, r8
	mov invalid, r0
label847:
	add r0, invalid, invalid, lsr #31
	add r4, r4, r4, lsr #31
	asr r0, r0, #1
	asr invalid, r4, #1
	add invalid, r2, #1
	add invalid, r7, #4
	mov r4, invalid
	mov r7, invalid
	mov invalid, r0
	mov r2, invalid
	mov r0, invalid
	b label839
label576:
	add r0, sp, #32
	mov r6, invalid
	mov r7, r2
	mov r3, #0
	mov r8, r0
	mov r0, r3
label577:
	cmp r0, #16
	blt label605
	b label583
label606:
	add r3, r7, r7, lsr #31
	asr invalid, r3, #1
	add r3, r6, r6, lsr #31
	asr invalid, r3, #1
	add invalid, r0, #1
	add invalid, r8, #4
	mov r0, invalid
	mov r3, invalid
	mov r7, invalid
	mov r6, invalid
	mov r8, invalid
	b label577
label1857:
	mov invalid, r3
	b label606
label609:
	ldr r9, [r8, #0]
	add r3, r3, r9
	mov invalid, r3
	b label606
label610:
	ands r9, r6, #1
	beq label609
	b label1857
label583:
	add r0, sp, #32
	mov r7, invalid
	mov r6, r0
	mov invalid, r2
	mov r0, #0
	mov r2, r0
label584:
	cmp r2, #16
	bge label1816
	and r8, r7, invalid
	ands r8, r8, #1
	bne label593
	mov invalid, r0
label591:
	add r0, invalid, invalid, lsr #31
	add r7, r7, r7, lsr #31
	asr r0, r0, #1
	asr invalid, r7, #1
	add invalid, r2, #1
	add invalid, r6, #4
	mov r7, invalid
	mov r6, invalid
	mov invalid, r0
	mov r2, invalid
	mov r0, invalid
	b label584
label605:
	ands r9, r7, #1
	bne label610
	ands r9, r6, #1
	bne label609
	b label1857
label859:
	ldr r8, [r2, #0]
	add invalid, invalid, r8
	b label857
label1916:
	mov r2, r6
	mov r4, invalid
	b label614
label628:
	ands r10, r0, #1
	beq label627
	b label1901
label593:
	ldr r8, [r6, #0]
	add r0, r0, r8
	mov invalid, r0
	b label591
label1816:
	ldr r2, [sp, #36]
	movw r7, #65535
	mov invalid, #0
	mul r2, r0, r2
	add r0, sp, #32
	mov r6, r0
	mov r0, r2
	mov r2, invalid
label595:
	cmp r2, #16
	blt label601
	b label1834
label602:
	add r0, r0, r0, lsr #31
	asr invalid, r0, #1
	add r0, r7, r7, lsr #31
	asr invalid, r0, #1
	add invalid, r2, #1
	add invalid, r6, #4
	mov r2, invalid
	mov r0, invalid
	mov r7, invalid
	mov r6, invalid
	b label595
label601:
	and r8, r7, r0
	ands r8, r8, #1
	beq label602
	ldr r8, [r6, #0]
	add invalid, invalid, r8
	b label602
label1804:
	mov r4, invalid
	mov r2, r3
	mov invalid, r3
	b label573
label473:
	ldr r0, [sp, #36]
	sdiv r0, r4, r0
	add r2, r0, #65536
	ldr r0, [sp, #92]
	sub invalid, r2, r0
	mov r4, invalid
	mov r3, invalid
	mov r2, r1
	b label455
label1624:
	mov invalid, r3
	mov r1, r2
	mov invalid, r2
	b label469
label807:
	ldr r8, [r2, #0]
	add invalid, invalid, r8
	b label808
label1275:
	mov r5, r1
	mov r2, r3
	mov r1, r3
	b label288
label2275:
	mov invalid, r3
	add r2, r2, r2, lsr #31
	mov r7, #0
	asr invalid, r2, #1
	add invalid, r0, #1
	add invalid, r6, #4
	mov r0, invalid
	mov r3, invalid
	mov r2, invalid
	mov r6, invalid
	b label775
label689:
	ldr r0, [sp, #36]
	sdiv r0, r4, r0
	add r2, r0, #65536
	ldr r0, [sp, #92]
	sub invalid, r2, r0
	mov r4, invalid
	mov r3, invalid
	mov r2, r1
	b label670
label1655:
	mov invalid, r0
	b label491
label1673:
	mov r1, invalid
	b label501
label2140:
	mov r6, r2
	mov invalid, r4
	mov r2, r4
	b label822
label690:
	add r0, sp, #32
	mov r7, r1
	mov r2, #0
	mov r3, r0
	mov r6, r2
	mov r0, invalid
label691:
	cmp r6, #16
	blt label697
	b label1988
label698:
	ands r8, r0, #1
	beq label1996
label699:
	ldr r8, [r3, #0]
	add r2, r2, r8
	mov invalid, r2
label700:
	add r2, r7, r7, lsr #31
	add r0, r0, r0, lsr #31
	asr invalid, r2, #1
	asr invalid, r0, #1
	add invalid, r6, #1
	add invalid, r3, #4
	mov r6, invalid
	mov r2, invalid
	mov r7, invalid
	mov r0, invalid
	mov r3, invalid
	b label691
label1988:
	add r0, sp, #32
	mov invalid, r0
	mov r0, #0
	mov r3, invalid
	mov invalid, r1
	mov r1, r0
label704:
	cmp r1, #16
	bge label2011
	and r6, r3, invalid
	ands r6, r6, #1
	beq label2016
	ldr r6, [invalid, #0]
	add r0, r0, r6
	mov invalid, r0
label712:
	add r0, invalid, invalid, lsr #31
	add r3, r3, r3, lsr #31
	asr r0, r0, #1
	asr invalid, r3, #1
	add invalid, r1, #1
	add r1, invalid, #4
	mov invalid, r1
	mov r3, invalid
	mov invalid, r0
	mov r1, invalid
	mov r0, invalid
	b label704
label2011:
	ldr r1, [sp, #36]
	mov invalid, #0
	movw r7, #65535
	mul r1, r0, r1
	add r0, sp, #32
	mov r6, r0
	mov r0, r1
	mov r1, invalid
label715:
	cmp r1, #16
	bge label2029
	and r3, r7, r0
	ands r3, r3, #1
	beq label2034
	ldr r3, [r6, #0]
	add invalid, invalid, r3
	mov r3, invalid
	b label723
label697:
	ands r8, r7, #1
	bne label702
	b label698
label1996:
	mov invalid, r2
	b label700
label702:
	ands r8, r0, #1
	beq label699
	b label1996
label2034:
	mov r3, invalid
label723:
	add r0, r0, r0, lsr #31
	asr invalid, r0, #1
	add r0, r7, r7, lsr #31
	asr invalid, r0, #1
	add invalid, r1, #1
	add invalid, r6, #4
	mov r6, invalid
	mov invalid, r3
	mov r1, invalid
	mov r0, invalid
	mov r7, invalid
	b label715
label2016:
	mov invalid, r0
	b label712
label2029:
	mov r1, r2
	b label684
label1966:
	mov invalid, r3
	mov r1, r2
	mov invalid, r2
	b label684
