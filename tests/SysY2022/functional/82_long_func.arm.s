.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	mov r0, #4
	mov r4, #1
	sub sp, sp, #80
	mov r1, #2
	mov r5, sp
	str r5, [sp, #64]
	str r4, [sp, #0]
	str r1, [r5, #4]
	str r0, [r5, #8]
	mov r0, #8
	str r0, [r5, #12]
	mov r0, #16
	str r0, [r5, #16]
	mov r0, #32
	str r0, [r5, #20]
	mov r0, #64
	str r0, [r5, #24]
	mov r0, #128
	str r0, [r5, #28]
	mov r0, #256
	str r0, [r5, #32]
	mov r0, #512
	str r0, [r5, #36]
	mov r0, #1024
	str r0, [r5, #40]
	mov r0, #2048
	str r0, [r5, #44]
	mov r0, #4096
	str r0, [r5, #48]
	mov r0, #8192
	str r0, [r5, #52]
	mov r0, #16384
	str r0, [r5, #56]
	mov r0, #32768
	str r0, [r5, #60]
	mov r0, #0
label2:
	cmp r0, #0
	ble label6
	b label803
label6:
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r4, #1
	mov r1, #2
	mov r0, r4
	b label7
label612:
	movw r1, #32767
	cmp r0, r1
	ble label613
	ldr r5, [sp, #64]
	mov r4, r2
	ldr r1, [r5, #4]
	sdiv r0, r0, r1
	ldr r1, [r5, #60]
	add r0, r0, #65536
	sub r0, r0, r1
	mov r1, r6
	b label2
label613:
	ldr r5, [sp, #64]
	mov r4, r2
	ldr r1, [r5, #4]
	sdiv r0, r0, r1
	mov r1, r6
	cmp r0, #0
	ble label6
label803:
	mov r2, #0
	mov r5, #1
	mov r3, r0
	mov r6, r2
	cmp r2, #16
	bge label605
	b label1961
label605:
	cmp r2, #0
	beq label1977
	mov r6, #0
	movs r2, r1
	beq label2166
	b label2165
label1977:
	mov r2, r4
	mov r4, r1
	mov r6, #0
	b label608
label2165:
	mov r3, #0
	mov r5, #1
	mov r7, r2
	mov r8, r3
	cmp r3, #16
	bge label711
label2169:
	and r5, r5, r7
	ands r5, r5, #1
	beq label708
	b label2873
label698:
	cmp r2, #0
	beq label2166
	b label2165
label2166:
	mov r2, r6
	mov r4, r1
	mov r6, #0
	b label608
label2188:
	mov r4, #0
	mov r8, r7
	mov r10, r6
	mov r9, r4
	cmp r4, #16
	bge label2207
	b label2206
label717:
	movw r4, #32767
	cmp r2, r4
	ble label719
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r2, r2, r4
	ldr r4, [r5, #60]
	add r2, r2, #65536
	sub r2, r2, r4
	mov r4, r6
	mov r6, r3
	b label698
label719:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r2, r2, r4
	mov r4, r6
	mov r6, r3
	cmp r2, #0
	beq label2166
	b label2165
label742:
	cmp r7, #16
	bge label2254
label2253:
	and r5, r6, r8
	ands r5, r5, #1
	beq label749
	b label2890
label2254:
	mov r6, r4
	movs r7, r9
	beq label717
	b label2188
label749:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	bge label2254
	b label2253
label2206:
	ands r5, r10, #1
	beq label730
	b label2210
label2207:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	bge label2235
	b label2234
label2210:
	ands r5, r8, #1
	bne label728
	b label2883
label728:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	bge label2207
	b label2206
label730:
	ands r5, r8, #1
	beq label728
	b label2883
label2234:
	and r5, r7, r9
	ands r5, r5, #1
	beq label739
	b label2888
label2235:
	ldr r5, [sp, #64]
	mov r9, #0
	movw r6, #65535
	mov r7, r9
	ldr r5, [r5, #4]
	mul r8, r8, r5
	b label742
label739:
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	bge label2235
	b label2234
label2888:
	ldr r5, [sp, #64]
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	b label739
label2890:
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	b label749
label2883:
	ldr r5, [sp, #64]
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	b label728
label708:
	add r5, r7, r7, lsr #31
	add r8, r8, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r8, #16
	bge label711
	b label2169
label2873:
	ldr r5, [sp, #64]
	ldr r5, [r5, r8, lsl #2]
	add r3, r3, r5
	b label708
label608:
	cmp r1, #0
	beq label612
	b label1980
label664:
	movw r4, #32767
	cmp r1, r4
	ble label666
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r1, r1, r4
	ldr r4, [r5, #60]
	add r1, r1, #65536
	sub r1, r1, r4
	mov r4, r6
	mov r6, r3
	b label608
label666:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r1, r1, r4
	mov r4, r6
	mov r6, r3
	cmp r1, #0
	beq label612
label1980:
	mov r3, #0
	mov r5, #1
	mov r7, r1
	mov r8, r3
	cmp r3, #16
	bge label624
label1998:
	and r5, r5, r7
	ands r5, r5, #1
	beq label622
	b label2837
label624:
	cmp r3, #0
	beq label2014
	movs r7, r4
	beq label2014
label2017:
	mov r3, #0
	mov r8, r7
	mov r10, r6
	mov r9, r3
	cmp r3, #16
	bge label2022
	b label2021
label2022:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	bge label645
	b label2049
label645:
	ldr r5, [sp, #64]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	ldr r5, [r5, #4]
	mul r8, r8, r5
label646:
	cmp r7, #16
	bge label2057
	b label2056
label2057:
	mov r6, r3
	movs r7, r9
	beq label2014
	b label2017
label2062:
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	b label646
label2056:
	and r5, r6, r8
	ands r5, r5, #1
	beq label2062
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r5, r9, r5
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r5
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	cmp r7, #16
	bge label2057
	b label2056
label2021:
	ands r5, r10, #1
	beq label638
	ands r5, r8, #1
	bne label636
	b label2844
label638:
	ands r5, r8, #1
	beq label636
	b label2844
label2049:
	and r5, r7, r9
	ands r5, r5, #1
	beq label657
	ldr r5, [sp, #64]
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
label657:
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	bge label645
	b label2049
label2844:
	ldr r5, [sp, #64]
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
label636:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	bge label2022
	b label2021
label2837:
	ldr r5, [sp, #64]
	ldr r5, [r5, r8, lsl #2]
	add r3, r3, r5
label622:
	add r5, r7, r7, lsr #31
	add r8, r8, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r8, #16
	bge label624
	b label1998
label2014:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	beq label664
label2084:
	mov r4, #0
	mov r8, r7
	mov r10, r6
	mov r9, r4
	cmp r4, #16
	bge label2103
	b label2102
label2131:
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	bge label2150
label2149:
	and r5, r6, r8
	ands r5, r5, #1
	beq label2155
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r5, r9, r5
	b label695
label2150:
	mov r6, r4
	movs r7, r9
	beq label664
	b label2084
label2155:
	mov r5, r9
label695:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r5
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	cmp r7, #16
	bge label2150
	b label2149
label2102:
	ands r5, r10, #1
	beq label677
	ands r5, r8, #1
	bne label673
label2859:
	ldr r5, [sp, #64]
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
label673:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	bge label2103
	b label2102
label677:
	ands r5, r8, #1
	beq label673
	b label2859
label2103:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label2131
label2130:
	and r5, r7, r6
	ands r5, r5, #1
	beq label686
	ldr r5, [sp, #64]
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
label686:
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	bge label2131
	b label2130
label1961:
	and r5, r5, r3
	ands r5, r5, #1
	beq label603
	ldr r5, [sp, #64]
	ldr r5, [r5, r6, lsl #2]
	add r2, r2, r5
label603:
	add r3, r3, r3, lsr #31
	add r6, r6, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r6, #16
	bge label605
	b label1961
label711:
	cmp r3, #0
	beq label2185
	b label2184
label2185:
	mov r3, r6
	mov r6, r4
	mov r7, r4
	b label714
label2184:
	movs r7, r4
	beq label2270
	b label2269
label714:
	cmp r7, #0
	beq label717
	b label2188
label2269:
	mov r3, #0
	mov r8, r7
	mov r10, r6
	mov r9, r3
	cmp r3, #16
	bge label2274
	b label2273
label2270:
	mov r3, r6
	mov r6, r4
	mov r7, r4
	b label714
label2273:
	ands r5, r10, #1
	beq label760
	b label2277
label2274:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	bge label771
	b label2301
label2277:
	ands r5, r8, #1
	bne label762
	b label2896
label2301:
	and r5, r7, r9
	ands r5, r5, #1
	beq label782
	b label2900
label782:
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	bge label771
	b label2301
label762:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	bge label2274
	b label2273
label2900:
	ldr r5, [sp, #64]
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	b label782
label760:
	ands r5, r8, #1
	beq label762
label2896:
	ldr r5, [sp, #64]
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	b label762
label771:
	ldr r5, [sp, #64]
	mov r9, #0
	movw r6, #65535
	mov r7, r9
	ldr r5, [r5, #4]
	mul r8, r8, r5
	cmp r9, #16
	bge label2309
	b label2308
label2309:
	mov r6, r3
	movs r7, r9
	beq label2270
	b label2269
label2308:
	and r5, r6, r8
	ands r5, r5, #1
	beq label778
	b label2901
label778:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	bge label2309
	b label2308
label2901:
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	b label778
label7:
	cmp r0, #0
	ble label200
	b label807
label114:
	movw r1, #32767
	cmp r0, r1
	ble label115
	ldr r5, [sp, #64]
	mov r4, r2
	ldr r1, [r5, #4]
	sdiv r0, r0, r1
	ldr r1, [r5, #60]
	add r0, r0, #65536
	sub r0, r0, r1
	mov r1, r6
	b label7
label200:
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #2
	str r0, [sp, #68]
	cmp r0, #16
	bge label1187
	b label1186
label1187:
	mov r0, #0
	str r0, [sp, #72]
	cmp r0, #16
	bge label1191
	b label1190
label1191:
	mov r0, #0
label205:
	add sp, sp, #80
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label207:
	cmp r0, #0
	ble label400
	b label1194
label2671:
	mov r0, #1
	b label205
label223:
	cmp r1, #0
	beq label227
	b label1217
label227:
	movw r1, #32767
	cmp r0, r1
	ble label228
	ldr r5, [sp, #64]
	mov r4, r2
	ldr r1, [r5, #4]
	sdiv r0, r0, r1
	ldr r1, [r5, #60]
	add r0, r0, #65536
	sub r0, r0, r1
	mov r1, r6
	b label207
label235:
	cmp r8, #0
	beq label1240
	movs r7, r4
	beq label1325
	b label1324
label1240:
	mov r3, r6
	mov r6, r4
	mov r7, r4
label238:
	cmp r7, #0
	beq label241
	b label1243
label241:
	movw r4, #32767
	cmp r1, r4
	ble label242
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r1, r1, r4
	ldr r4, [r5, #60]
	add r1, r1, #65536
	sub r1, r1, r4
	mov r4, r6
	mov r6, r3
	b label223
label400:
	ldr r5, [sp, #64]
	ldr r0, [sp, #72]
	ldr r0, [r5, r0, lsl #2]
	cmp r4, r0
	beq label401
	b label2671
label1243:
	mov r4, #0
	mov r8, r7
	mov r10, r6
	mov r9, r4
	cmp r4, #16
	bge label1262
	b label1261
label1262:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	bge label1290
label1289:
	and r5, r7, r9
	ands r5, r5, #1
	beq label262
	ldr r5, [sp, #64]
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	b label262
label266:
	cmp r7, #16
	bge label1309
	b label1308
label1309:
	mov r6, r4
	movs r7, r9
	beq label241
	b label1243
label1314:
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	b label266
label1308:
	and r5, r6, r8
	ands r5, r5, #1
	beq label1314
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r5, r9, r5
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r5
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	cmp r7, #16
	bge label1309
	b label1308
label1261:
	ands r5, r10, #1
	beq label250
	ands r5, r8, #1
	bne label252
label2686:
	ldr r5, [sp, #64]
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
label252:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	bge label1262
	b label1261
label262:
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	bge label1290
	b label1289
label1324:
	mov r8, r7
	mov r9, r6
	mov r3, #0
	mov r10, r3
	cmp r3, #16
	bge label1329
	b label1328
label1325:
	mov r3, r6
	mov r6, r4
	mov r7, r4
	b label238
label296:
	cmp r7, #16
	bge label1364
label1363:
	and r5, r6, r8
	ands r5, r5, #1
	beq label303
	b label2707
label1364:
	mov r6, r3
	movs r7, r9
	beq label1325
	b label1324
label303:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	bge label1364
	b label1363
label250:
	ands r5, r8, #1
	beq label252
	b label2686
label1328:
	ands r5, r9, #1
	beq label286
	b label1332
label284:
	add r5, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r10, #16
	bge label1329
	b label1328
label286:
	ands r5, r8, #1
	beq label284
	b label2699
label1329:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label295
label1356:
	and r5, r7, r6
	ands r5, r5, #1
	beq label306
	ldr r5, [sp, #64]
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
label306:
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	bge label295
	b label1356
label2707:
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	b label303
label1332:
	ands r5, r8, #1
	bne label284
label2699:
	ldr r5, [sp, #64]
	ldr r5, [r5, r10, lsl #2]
	add r3, r3, r5
	b label284
label1217:
	mov r5, #1
	mov r3, r1
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	bge label235
	b label1235
label242:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r1, r1, r4
	mov r4, r6
	mov r6, r3
	cmp r1, #0
	beq label227
	b label1217
label1290:
	ldr r5, [sp, #64]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	ldr r5, [r5, #4]
	mul r8, r8, r5
	b label266
label1235:
	and r5, r5, r3
	ands r5, r5, #1
	beq label311
	b label2679
label311:
	add r3, r3, r3, lsr #31
	add r7, r7, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r7, #16
	bge label235
	b label1235
label295:
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	b label296
label2679:
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	b label311
label1190:
	mov r1, #2
	mov r4, #1
	ldr r0, [sp, #72]
	cmp r0, #0
	ble label400
label1194:
	mov r5, #1
	mov r2, r0
	mov r6, #0
	mov r3, r6
	cmp r6, #16
	bge label220
	b label1198
label401:
	ldr r0, [sp, #72]
	add r0, r0, #1
	str r0, [sp, #72]
	cmp r0, #16
	bge label1191
	b label1190
label1198:
	and r5, r5, r2
	ands r5, r5, #1
	beq label218
	ldr r5, [sp, #64]
	ldr r5, [r5, r3, lsl #2]
	add r6, r6, r5
label218:
	add r2, r2, r2, lsr #31
	add r3, r3, #1
	mov r5, #0
	asr r2, r2, #1
	cmp r3, #16
	bge label220
	b label1198
label220:
	cmp r6, #0
	beq label1214
	b label1213
label1214:
	mov r2, r4
	mov r4, r1
	mov r6, #0
	b label223
label1213:
	mov r6, #0
	movs r2, r1
	beq label1403
label1402:
	mov r5, #1
	mov r3, r2
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	bge label326
	b label1406
label1403:
	mov r2, r6
	mov r4, r1
	mov r6, #0
	b label223
label326:
	cmp r8, #0
	beq label1422
	movs r7, r4
	beq label1422
label1425:
	mov r8, r7
	mov r9, r6
	mov r3, #0
	mov r10, r3
	cmp r3, #16
	bge label1430
label1429:
	ands r5, r9, #1
	beq label338
	b label1433
label1430:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	bge label1458
	b label1457
label1433:
	ands r5, r8, #1
	bne label336
label2721:
	ldr r5, [sp, #64]
	ldr r5, [r5, r10, lsl #2]
	add r3, r3, r5
	b label336
label338:
	ands r5, r8, #1
	beq label336
	b label2721
label1457:
	and r5, r7, r9
	ands r5, r5, #1
	beq label349
	ldr r5, [sp, #64]
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	b label349
label1458:
	ldr r5, [sp, #64]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	ldr r5, [r5, #4]
	mul r8, r8, r5
label352:
	cmp r7, #16
	bge label1477
label1476:
	and r5, r6, r8
	ands r5, r5, #1
	beq label1482
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r5, r9, r5
	b label359
label1477:
	mov r6, r3
	movs r7, r9
	beq label1422
	b label1425
label1482:
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	b label352
label359:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r5
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	cmp r7, #16
	bge label1477
	b label1476
label336:
	add r5, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r10, #16
	bge label1430
	b label1429
label349:
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	bge label1458
	b label1457
label1406:
	and r5, r5, r3
	ands r5, r5, #1
	beq label324
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
label324:
	add r3, r3, r3, lsr #31
	add r7, r7, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r7, #16
	bge label326
	b label1406
label1186:
	mov r1, #2
	mov r4, #1
	ldr r0, [sp, #68]
	cmp r0, #0
	ble label595
	b label1581
label595:
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	ldr r0, [sp, #68]
	add r0, r0, #1
	str r0, [sp, #68]
	cmp r0, #16
	bge label1187
	b label1186
label1581:
	mov r5, #1
	mov r2, r0
	mov r6, #0
	mov r3, r6
	cmp r6, #16
	bge label415
	b label1585
label415:
	cmp r6, #0
	beq label1601
	b label1600
label1585:
	and r5, r5, r2
	ands r5, r5, #1
	beq label412
	b label2752
label412:
	add r2, r2, r2, lsr #31
	add r3, r3, #1
	mov r5, #0
	asr r2, r2, #1
	cmp r3, #16
	bge label415
	b label1585
label1600:
	mov r6, #0
	movs r2, r1
	beq label1605
	b label1604
label1601:
	mov r2, r4
	mov r4, r1
	mov r6, #0
	b label505
label1605:
	mov r2, r6
	mov r4, r1
	mov r6, #0
label505:
	cmp r1, #0
	beq label509
	b label1775
label520:
	cmp r7, #0
	beq label523
	b label1801
label523:
	movw r4, #32767
	cmp r1, r4
	ble label524
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r1, r1, r4
	ldr r4, [r5, #60]
	add r1, r1, #65536
	sub r1, r1, r4
	mov r4, r6
	mov r6, r3
	b label505
label1882:
	mov r8, r7
	mov r9, r6
	mov r3, #0
	mov r10, r3
	cmp r3, #16
	bge label1887
	b label1886
label1883:
	mov r3, r6
	mov r6, r4
	mov r7, r4
	b label520
label1886:
	ands r5, r9, #1
	beq label587
	b label1925
label1887:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label570
label1890:
	and r5, r7, r6
	ands r5, r5, #1
	beq label582
	ldr r5, [sp, #64]
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	b label582
label570:
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	bge label1898
label1897:
	and r5, r6, r8
	ands r5, r5, #1
	beq label577
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	b label577
label1898:
	mov r6, r3
	movs r7, r9
	beq label1883
	b label1882
label582:
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	bge label570
	b label1890
label1801:
	mov r8, r7
	mov r9, r6
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label1820
	b label1819
label1820:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label543
label1847:
	and r5, r7, r6
	ands r5, r5, #1
	beq label554
	b label2806
label543:
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	bge label1855
	b label1854
label1855:
	mov r6, r4
	movs r7, r9
	beq label523
	b label1801
label1819:
	ands r5, r9, #1
	beq label536
	ands r5, r8, #1
	bne label532
label2799:
	ldr r5, [sp, #64]
	ldr r5, [r5, r10, lsl #2]
	add r4, r4, r5
label532:
	add r5, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r10, #16
	bge label1820
	b label1819
label536:
	ands r5, r8, #1
	beq label532
	b label2799
label554:
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	bge label543
	b label1847
label1854:
	and r5, r6, r8
	ands r5, r5, #1
	beq label550
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
label550:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	bge label1855
	b label1854
label577:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	bge label1898
	b label1897
label2806:
	ldr r5, [sp, #64]
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	b label554
label1925:
	ands r5, r8, #1
	bne label585
label2821:
	ldr r5, [sp, #64]
	ldr r5, [r5, r10, lsl #2]
	add r3, r3, r5
label585:
	add r5, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r10, #16
	bge label1887
	b label1886
label587:
	ands r5, r8, #1
	beq label585
	b label2821
label1775:
	mov r5, #1
	mov r3, r1
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	bge label517
label1793:
	and r5, r5, r3
	ands r5, r5, #1
	beq label593
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
label593:
	add r3, r3, r3, lsr #31
	add r7, r7, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r7, #16
	bge label517
	b label1793
label1604:
	mov r5, #1
	mov r3, r2
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	bge label425
	b label1608
label425:
	cmp r8, #0
	beq label1613
	movs r7, r4
	beq label1613
label1616:
	mov r8, r7
	mov r9, r6
	mov r3, #0
	mov r10, r3
	cmp r3, #16
	bge label1621
	b label1620
label444:
	cmp r7, #16
	bge label1644
	b label1643
label1644:
	mov r6, r3
	movs r7, r9
	beq label1613
	b label1616
label1621:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label1625
	b label1624
label1620:
	ands r5, r9, #1
	beq label454
	ands r5, r8, #1
	bne label458
label2767:
	ldr r5, [sp, #64]
	ldr r5, [r5, r10, lsl #2]
	add r3, r3, r5
label458:
	add r5, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r10, #16
	bge label1621
	b label1620
label1624:
	and r5, r7, r6
	ands r5, r5, #1
	beq label441
	b label2762
label441:
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	bge label1625
	b label1624
label1643:
	and r5, r6, r8
	ands r5, r5, #1
	beq label451
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
label451:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	bge label1644
	b label1643
label454:
	ands r5, r8, #1
	beq label458
	b label2767
label2762:
	ldr r5, [sp, #64]
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	b label441
label517:
	cmp r8, #0
	beq label1798
	movs r7, r4
	beq label1883
	b label1882
label1798:
	mov r3, r6
	mov r6, r4
	mov r7, r4
	b label520
label1608:
	and r5, r5, r3
	ands r5, r5, #1
	beq label500
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
label500:
	add r3, r3, r3, lsr #31
	add r7, r7, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r7, #16
	bge label425
	b label1608
label1625:
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	b label444
label524:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r1, r1, r4
	mov r4, r6
	mov r6, r3
	cmp r1, #0
	beq label509
	b label1775
label2752:
	ldr r5, [sp, #64]
	ldr r5, [r5, r3, lsl #2]
	add r6, r6, r5
	b label412
label1613:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	beq label465
label1683:
	mov r8, r7
	mov r9, r6
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label1702
	b label1701
label1702:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	bge label485
label1729:
	and r5, r7, r9
	ands r5, r5, #1
	beq label497
	ldr r5, [sp, #64]
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	b label497
label485:
	ldr r5, [sp, #64]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	ldr r5, [r5, #4]
	mul r8, r8, r5
	cmp r9, #16
	bge label1737
label1736:
	and r5, r6, r8
	ands r5, r5, #1
	beq label1742
	b label2782
label1737:
	mov r6, r4
	movs r7, r9
	beq label465
	b label1683
label1701:
	ands r5, r9, #1
	beq label476
	b label1705
label474:
	add r5, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r10, #16
	bge label1702
	b label1701
label2782:
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r5, r9, r5
	b label492
label1742:
	mov r5, r9
label492:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r5
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	cmp r7, #16
	bge label1737
	b label1736
label497:
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	bge label485
	b label1729
label1705:
	ands r5, r8, #1
	bne label474
label2774:
	ldr r5, [sp, #64]
	ldr r5, [r5, r10, lsl #2]
	add r4, r4, r5
	b label474
label476:
	ands r5, r8, #1
	beq label474
	b label2774
label416:
	cmp r2, #0
	beq label1605
	b label1604
label465:
	movw r4, #32767
	cmp r2, r4
	ble label466
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r2, r2, r4
	ldr r4, [r5, #60]
	add r2, r2, #65536
	sub r2, r2, r4
	mov r4, r6
	mov r6, r3
	b label416
label466:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r2, r2, r4
	mov r4, r6
	mov r6, r3
	cmp r2, #0
	beq label1605
	b label1604
label807:
	mov r5, #1
	mov r2, r0
	mov r6, #0
	mov r3, r6
	cmp r6, #16
	bge label20
label811:
	and r5, r5, r2
	ands r5, r5, #1
	beq label17
	b label2590
label20:
	cmp r6, #0
	beq label827
	b label826
label827:
	mov r2, r4
	mov r4, r1
	mov r6, #0
label110:
	cmp r1, #0
	beq label114
label1001:
	mov r3, #0
	mov r5, #1
	mov r7, r1
	mov r8, r3
	cmp r3, #16
	bge label122
	b label1019
label125:
	cmp r7, #0
	beq label128
	b label1027
label128:
	movw r4, #32767
	cmp r1, r4
	ble label129
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r1, r1, r4
	ldr r4, [r5, #60]
	add r1, r1, #65536
	sub r1, r1, r4
	mov r4, r6
	mov r6, r3
	b label110
label129:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r1, r1, r4
	mov r4, r6
	mov r6, r3
	cmp r1, #0
	beq label114
	b label1001
label1109:
	mov r3, r6
	mov r6, r4
	mov r7, r4
	b label125
label1027:
	mov r8, r7
	mov r9, r6
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label1046
	b label1045
label1046:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	bge label1050
	b label1049
label1050:
	ldr r5, [sp, #64]
	mov r9, #0
	movw r6, #65535
	mov r7, r9
	ldr r5, [r5, #4]
	mul r8, r8, r5
	cmp r9, #16
	bge label1069
label1068:
	and r5, r6, r8
	ands r5, r5, #1
	beq label152
	b label2645
label1069:
	mov r6, r4
	movs r7, r9
	beq label128
	b label1027
label1045:
	ands r5, r9, #1
	beq label160
	ands r5, r8, #1
	bne label156
	b label2649
label1049:
	and r5, r7, r9
	ands r5, r5, #1
	beq label142
	b label2642
label142:
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	bge label1050
	b label1049
label152:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	bge label1069
	b label1068
label156:
	add r5, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r10, #16
	bge label1046
	b label1045
label1019:
	and r5, r5, r7
	ands r5, r5, #1
	beq label198
	b label2636
label122:
	cmp r3, #0
	beq label1024
	movs r7, r4
	beq label1109
	b label1108
label1024:
	mov r3, r6
	mov r6, r4
	mov r7, r4
	b label125
label1108:
	mov r8, r7
	mov r9, r6
	mov r3, #0
	mov r10, r3
	cmp r3, #16
	bge label1113
	b label1112
label1113:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	bge label1117
label1116:
	and r5, r7, r9
	ands r5, r5, #1
	beq label176
	ldr r5, [sp, #64]
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	b label176
label1117:
	ldr r5, [sp, #64]
	mov r9, #0
	movw r6, #65535
	mov r7, r9
	ldr r5, [r5, #4]
	mul r8, r8, r5
	cmp r9, #16
	bge label1136
label1135:
	and r5, r6, r8
	ands r5, r5, #1
	beq label186
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	b label186
label1136:
	mov r6, r3
	movs r7, r9
	beq label1109
	b label1108
label186:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	bge label1136
	b label1135
label1112:
	ands r5, r9, #1
	beq label190
	ands r5, r8, #1
	bne label194
	b label2665
label176:
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	bge label1117
	b label1116
label2642:
	ldr r5, [sp, #64]
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	b label142
label2649:
	ldr r5, [sp, #64]
	ldr r5, [r5, r10, lsl #2]
	add r4, r4, r5
	b label156
label160:
	ands r5, r8, #1
	beq label156
	b label2649
label2645:
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	b label152
label190:
	ands r5, r8, #1
	beq label194
	b label2665
label194:
	add r5, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r10, #16
	bge label1113
	b label1112
label2665:
	ldr r5, [sp, #64]
	ldr r5, [r5, r10, lsl #2]
	add r3, r3, r5
	b label194
label2636:
	ldr r5, [sp, #64]
	ldr r5, [r5, r8, lsl #2]
	add r3, r3, r5
label198:
	add r5, r7, r7, lsr #31
	add r8, r8, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r8, #16
	bge label122
	b label1019
label402:
	cmp r0, #0
	ble label595
	b label1581
label509:
	movw r1, #32767
	cmp r0, r1
	ble label511
	ldr r5, [sp, #64]
	mov r4, r2
	ldr r1, [r5, #4]
	sdiv r0, r0, r1
	ldr r1, [r5, #60]
	add r0, r0, #65536
	sub r0, r0, r1
	mov r1, r6
	b label402
label511:
	ldr r5, [sp, #64]
	mov r4, r2
	ldr r1, [r5, #4]
	sdiv r0, r0, r1
	mov r1, r6
	cmp r0, #0
	ble label595
	b label1581
label17:
	add r2, r2, r2, lsr #31
	add r3, r3, #1
	mov r5, #0
	asr r2, r2, #1
	cmp r3, #16
	bge label20
	b label811
label1422:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	beq label366
	b label1492
label366:
	movw r4, #32767
	cmp r2, r4
	ble label368
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r2, r2, r4
	ldr r4, [r5, #60]
	add r2, r2, #65536
	sub r2, r2, r4
	mov r4, r6
	mov r6, r3
	b label313
label368:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r2, r2, r4
	mov r4, r6
	mov r6, r3
	cmp r2, #0
	beq label1403
	b label1402
label1492:
	mov r8, r7
	mov r9, r6
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label1511
	b label1510
label391:
	cmp r7, #16
	bge label1558
label1557:
	and r5, r6, r8
	ands r5, r5, #1
	beq label398
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	b label398
label1558:
	mov r6, r4
	movs r7, r9
	beq label366
	b label1492
label398:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	bge label1558
	b label1557
label1510:
	ands r5, r9, #1
	beq label379
	b label1514
label1511:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label1539
	b label1538
label1514:
	ands r5, r8, #1
	bne label375
label2738:
	ldr r5, [sp, #64]
	ldr r5, [r5, r10, lsl #2]
	add r4, r4, r5
	b label375
label1538:
	and r5, r7, r6
	ands r5, r5, #1
	beq label388
	ldr r5, [sp, #64]
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	b label388
label375:
	add r5, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r10, #16
	bge label1511
	b label1510
label388:
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	bge label1539
	b label1538
label379:
	ands r5, r8, #1
	beq label375
	b label2738
label1539:
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	b label391
label826:
	mov r6, #0
	movs r2, r1
	beq label831
label830:
	mov r5, #1
	mov r3, r2
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	bge label34
label834:
	and r5, r5, r3
	ands r5, r5, #1
	beq label32
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
label32:
	add r3, r3, r3, lsr #31
	add r7, r7, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r7, #16
	bge label34
	b label834
label34:
	cmp r8, #0
	beq label850
	movs r7, r4
	beq label850
label853:
	mov r8, r7
	mov r9, r6
	mov r3, #0
	mov r10, r3
	cmp r3, #16
	bge label858
	b label857
label858:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label886
	b label885
label886:
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	bge label905
	b label904
label905:
	mov r6, r3
	movs r7, r9
	beq label850
	b label853
label904:
	and r5, r6, r8
	ands r5, r5, #1
	beq label67
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
label67:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	bge label905
	b label904
label857:
	ands r5, r9, #1
	beq label46
	ands r5, r8, #1
	bne label44
label2603:
	ldr r5, [sp, #64]
	ldr r5, [r5, r10, lsl #2]
	add r3, r3, r5
label44:
	add r5, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r10, #16
	bge label858
	b label857
label885:
	and r5, r7, r6
	ands r5, r5, #1
	beq label57
	ldr r5, [sp, #64]
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
label57:
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	bge label886
	b label885
label46:
	ands r5, r8, #1
	beq label44
	b label2603
label850:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	beq label74
label920:
	mov r8, r7
	mov r9, r6
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label939
label938:
	ands r5, r9, #1
	beq label104
	b label977
label939:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	bge label943
label942:
	and r5, r7, r9
	ands r5, r5, #1
	beq label88
	ldr r5, [sp, #64]
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	b label88
label943:
	ldr r5, [sp, #64]
	mov r9, #0
	movw r6, #65535
	mov r7, r9
	ldr r5, [r5, #4]
	mul r8, r8, r5
	cmp r9, #16
	bge label962
	b label961
label962:
	mov r6, r4
	movs r7, r9
	beq label74
	b label920
label98:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	bge label962
	b label961
label977:
	ands r5, r8, #1
	bne label102
label2626:
	ldr r5, [sp, #64]
	ldr r5, [r5, r10, lsl #2]
	add r4, r4, r5
	b label102
label88:
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	bge label943
	b label942
label961:
	and r5, r6, r8
	ands r5, r5, #1
	beq label98
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	b label98
label102:
	add r5, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r10, #16
	bge label939
	b label938
label104:
	ands r5, r8, #1
	beq label102
	b label2626
label21:
	cmp r2, #0
	beq label831
	b label830
label831:
	mov r2, r6
	mov r4, r1
	mov r6, #0
	b label110
label74:
	movw r4, #32767
	cmp r2, r4
	ble label75
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r2, r2, r4
	ldr r4, [r5, #60]
	add r2, r2, #65536
	sub r2, r2, r4
	mov r4, r6
	mov r6, r3
	b label21
label2590:
	ldr r5, [sp, #64]
	ldr r5, [r5, r3, lsl #2]
	add r6, r6, r5
	b label17
label313:
	cmp r2, #0
	beq label1403
	b label1402
label75:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r2, r2, r4
	mov r4, r6
	mov r6, r3
	cmp r2, #0
	beq label831
	b label830
label228:
	ldr r5, [sp, #64]
	mov r4, r2
	ldr r1, [r5, #4]
	sdiv r0, r0, r1
	mov r1, r6
	cmp r0, #0
	ble label400
	b label1194
label115:
	ldr r5, [sp, #64]
	mov r4, r2
	ldr r1, [r5, #4]
	sdiv r0, r0, r1
	mov r1, r6
	cmp r0, #0
	ble label200
	b label807
