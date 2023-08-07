.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, lr }
	mov r0, #1
	sub sp, sp, #80
	mov r4, #0
	mov r1, sp
	mov r2, r4
	str r4, [sp, #0]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #12]
	str r4, [sp, #16]
	str r4, [sp, #20]
	str r4, [sp, #24]
	str r4, [sp, #28]
	str r4, [sp, #32]
	str r4, [sp, #36]
	str r4, [sp, #40]
	str r4, [sp, #44]
	str r4, [sp, #48]
	str r4, [sp, #52]
	str r4, [sp, #56]
	str r4, [sp, #60]
	str r4, [sp, #64]
	str r4, [sp, #68]
	str r4, [sp, #72]
	str r4, [sp, #76]
	mov r3, r4
.p2align 4
label2:
	add r5, r2, #1
	cmp r3, #1
	blt label206
	str r0, [sp, #0]
	movs r6, r0
	bne label7
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	blt label2
label932:
	mov r3, r4
	b label69
.p2align 4
label206:
	movs r6, r4
	bne label7
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	blt label2
	b label932
.p2align 4
label69:
	add r5, r2, #2
	cmp r3, #1
	blt label441
	str r4, [sp, #0]
	movs r6, r4
	bne label445
	b label928
.p2align 4
label441:
	movs r6, r0
	beq label444
.p2align 4
label445:
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	blt label69
label918:
	mov r3, r0
label136:
	cmp r3, #20
	bge label139
	sub r5, r3, #1
	add r2, r2, #1
	cmp r3, r5
	ble label139
	str r0, [r1, r5, lsl #2]
	cmp r5, #0
	beq label179
	sub r5, r3, #2
	ldr r5, [r1, r5, lsl #2]
	b label176
.p2align 4
label7:
	add r5, r2, #2
	cmp r3, #2
	blt label215
	str r0, [sp, #4]
	ldr r6, [sp, #0]
	cmp r6, #0
	bne label10
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	blt label2
	b label932
.p2align 4
label215:
	movs r6, r4
	beq label218
.p2align 4
label10:
	add r5, r2, #3
	cmp r3, #3
	bge label223
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	blt label2
	b label932
.p2align 4
label928:
	add r5, r2, #4
	cmp r3, #2
	blt label450
	str r4, [sp, #4]
	ldr r6, [sp, #0]
	cmp r6, #0
	beq label935
.p2align 4
label456:
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	blt label69
	b label918
.p2align 4
label450:
	movs r6, r0
	bne label456
	add r5, r2, #6
	cmp r3, #3
	bge label920
label461:
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	blt label69
	b label918
.p2align 4
label444:
	add r5, r2, #4
	cmp r3, #2
	blt label450
	str r4, [sp, #4]
	ldr r6, [sp, #0]
	cmp r6, #0
	bne label456
label935:
	add r5, r2, #6
	cmp r3, #3
	blt label461
	b label920
label223:
	str r0, [sp, #8]
	ldr r6, [sp, #4]
	cmp r6, #0
	bne label12
label914:
	mov r2, r5
	b label67
label12:
	add r5, r2, #4
	cmp r3, #4
	blt label914
	str r0, [sp, #12]
	ldr r6, [sp, #8]
	cmp r6, #0
	bne label14
	b label914
label67:
	add r3, r3, #1
	cmp r3, #20
	blt label2
	b label932
label920:
	str r4, [sp, #8]
	ldr r6, [sp, #4]
	cmp r6, #0
	beq label80
label468:
	mov r2, r5
	b label134
label80:
	add r5, r2, #8
	cmp r3, #4
	blt label468
	b label81
label134:
	add r3, r3, #1
	cmp r3, #20
	blt label69
	b label918
label139:
	ldr r3, [sp, #0]
	add r1, r2, #3
	cmp r3, #0
	bne label141
label680:
	ldr r5, [sp, #8]
	add r2, r1, #3
	add r1, r1, #6
	cmp r5, #0
	moveq r1, r2
	b label142
label141:
	ldr r5, [sp, #4]
	add r1, r2, #6
	cmp r5, #0
	beq label680
label142:
	ldr r2, [sp, #16]
	add r5, r1, #3
	cmp r2, #0
	bne label166
	mov r1, r5
label144:
	ldr r6, [sp, #36]
	add r5, r1, #3
	cmp r6, #0
	beq label701
	ldr r5, [sp, #40]
	add r1, r1, #6
	cmp r5, #0
	beq label152
	b label146
label701:
	mov r1, r5
label146:
	ldr r6, [sp, #44]
	add r5, r1, #3
	cmp r6, #0
	bne label148
label709:
	mov r1, r5
label152:
	add r5, r1, #3
	cmp r3, #0
	bne label154
	mov r1, r5
	b label160
label157:
	add r0, r1, r0
	bl putint
	add sp, sp, #80
	mov r0, r4
	pop { r4, r5, r6, pc }
label160:
	ldr r3, [sp, #20]
	add r2, r1, #3
	cmp r3, #0
	beq label162
	mov r1, r2
	b label157
label81:
	str r4, [sp, #12]
	ldr r6, [sp, #8]
	cmp r6, #0
	bne label468
	add r5, r2, #10
	cmp r3, #5
	blt label468
	str r4, [sp, #16]
	ldr r6, [sp, #12]
	cmp r6, #0
	bne label468
	add r5, r2, #12
	cmp r3, #6
	blt label468
	str r4, [sp, #20]
	ldr r6, [sp, #16]
	cmp r6, #0
	bne label468
	add r5, r2, #14
	cmp r3, #7
	blt label468
	str r4, [sp, #24]
	ldr r6, [sp, #20]
	cmp r6, #0
	bne label468
	add r5, r2, #16
	cmp r3, #8
	blt label468
	str r4, [sp, #28]
	ldr r6, [sp, #24]
	cmp r6, #0
	bne label468
	add r5, r2, #18
	cmp r3, #9
	blt label468
	str r4, [sp, #32]
	ldr r6, [sp, #28]
	cmp r6, #0
	bne label468
	add r6, r2, #20
	cmp r3, #10
	blt label545
	str r4, [sp, #36]
	ldr r5, [sp, #32]
label94:
	cmp r5, #0
	bne label552
	add r6, r2, #22
	cmp r3, #11
	blt label557
	str r4, [sp, #40]
	ldr r5, [sp, #36]
label98:
	cmp r5, #0
	bne label552
	add r6, r2, #24
	cmp r3, #12
	bge label568
	mov r5, r0
	b label102
label166:
	ldr r6, [sp, #20]
	add r5, r1, #6
	cmp r6, #0
	bne label167
label791:
	add r1, r5, #3
	b label144
label162:
	ldr r3, [sp, #24]
	add r2, r1, #6
	cmp r3, #0
	beq label773
	ldr r2, [sp, #28]
	add r1, r1, #9
	cmp r2, #0
	beq label157
	mov r0, r1
	mov r2, #0
	ldr r1, [sp, #32]
	cmp r1, #0
	add r1, r0, #3
	movwne r2, #1
	mov r0, r2
	b label157
label148:
	ldr r6, [sp, #48]
	add r5, r1, #6
	cmp r6, #0
	beq label709
	ldr r6, [sp, #52]
	add r5, r1, #9
	cmp r6, #0
	beq label709
	ldr r5, [sp, #56]
	add r6, r1, #12
	cmp r5, #0
	add r5, r1, #15
	mov r1, r6
	movne r1, r5
	b label152
label176:
	cmp r5, #0
	beq label139
	add r3, r3, #1
	b label136
label179:
	ldr r5, [sp, #0]
	b label176
label154:
	ldr r5, [sp, #8]
	add r3, r1, #6
	cmp r5, #0
	beq label746
	ldr r5, [sp, #12]
	add r3, r1, #9
	cmp r5, #0
	bne label746
	add r1, r1, #12
	cmp r2, #0
	beq label157
	b label160
label773:
	mov r0, r2
	ldr r1, [sp, #32]
	mov r2, #0
	cmp r1, #0
	add r1, r0, #3
	movwne r2, #1
	mov r0, r2
	b label157
label14:
	add r5, r2, #5
	cmp r3, #5
	blt label914
	str r0, [sp, #16]
	ldr r6, [sp, #12]
	cmp r6, #0
	bne label16
	b label914
label218:
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	blt label2
	b label932
label167:
	ldr r6, [sp, #24]
	add r5, r1, #9
	cmp r6, #0
	beq label168
	b label791
label746:
	mov r1, r3
	b label160
label168:
	ldr r5, [sp, #28]
	add r1, r1, #12
	cmp r5, #0
	bne label144
	add r1, r1, #3
	b label144
label16:
	add r5, r2, #6
	cmp r3, #6
	blt label914
	str r0, [sp, #20]
	ldr r6, [sp, #16]
	cmp r6, #0
	beq label914
	add r5, r2, #7
	cmp r3, #7
	blt label914
	str r0, [sp, #24]
	ldr r6, [sp, #20]
	cmp r6, #0
	beq label914
	add r5, r2, #8
	cmp r3, #8
	blt label914
	str r0, [sp, #28]
	ldr r6, [sp, #24]
	cmp r6, #0
	beq label914
	add r5, r2, #9
	cmp r3, #9
	blt label914
	str r0, [sp, #32]
	ldr r6, [sp, #28]
	cmp r6, #0
	beq label914
	add r6, r2, #10
	cmp r3, #10
	bge label307
	mov r5, r4
	b label26
label307:
	str r0, [sp, #36]
	ldr r5, [sp, #32]
label26:
	cmp r5, #0
	beq label314
	add r6, r2, #11
	cmp r3, #11
	blt label320
	str r0, [sp, #40]
	ldr r5, [sp, #36]
label30:
	cmp r5, #0
	beq label314
	add r6, r2, #12
	cmp r3, #12
	blt label332
	str r0, [sp, #44]
	ldr r5, [sp, #40]
label34:
	cmp r5, #0
	bne label36
label314:
	mov r2, r6
	b label67
label382:
	str r0, [sp, #64]
	ldr r5, [sp, #60]
label50:
	cmp r5, #0
	bne label52
	b label314
label568:
	str r4, [sp, #44]
	ldr r5, [sp, #40]
label102:
	cmp r5, #0
	bne label552
	add r6, r2, #26
	cmp r3, #13
	blt label581
	str r4, [sp, #48]
	ldr r5, [sp, #44]
	b label106
label552:
	mov r2, r6
	b label134
label593:
	mov r5, r0
label110:
	cmp r5, #0
	bne label552
	add r6, r2, #30
	cmp r3, #15
	blt label605
	str r4, [sp, #56]
	ldr r5, [sp, #52]
label114:
	cmp r5, #0
	bne label552
	add r6, r2, #32
	cmp r3, #16
	bge label616
	mov r5, r0
	b label118
label581:
	mov r5, r0
label106:
	cmp r5, #0
	bne label552
	add r6, r2, #28
	cmp r3, #14
	blt label593
	str r4, [sp, #52]
	ldr r5, [sp, #48]
	b label110
label616:
	str r4, [sp, #60]
	ldr r5, [sp, #56]
label118:
	cmp r5, #0
	bne label552
	add r6, r2, #34
	cmp r3, #17
	bge label628
	mov r5, r0
	b label122
label628:
	str r4, [sp, #64]
	ldr r5, [sp, #60]
label122:
	cmp r5, #0
	bne label552
	add r6, r2, #36
	cmp r3, #18
	bge label640
	mov r5, r0
	b label125
label640:
	str r4, [sp, #68]
	ldr r5, [sp, #64]
label125:
	cmp r5, #0
	bne label552
	add r6, r2, #38
	cmp r3, #19
	blt label650
	str r4, [sp, #72]
	ldr r5, [sp, #68]
	b label129
label650:
	mov r5, r0
label129:
	cmp r5, #0
	bne label552
	add r2, r2, #40
	cmp r3, #20
	blt label134
	str r4, [sp, #76]
	b label134
label36:
	add r6, r2, #13
	cmp r3, #13
	blt label344
	str r0, [sp, #48]
	ldr r5, [sp, #44]
	b label37
label344:
	mov r5, r4
label37:
	cmp r5, #0
	beq label314
	add r6, r2, #14
	cmp r3, #14
	blt label353
	str r0, [sp, #52]
	ldr r5, [sp, #48]
label40:
	cmp r5, #0
	beq label314
	add r6, r2, #15
	cmp r3, #15
	blt label362
	str r0, [sp, #56]
	ldr r5, [sp, #52]
label44:
	cmp r5, #0
	beq label314
	add r6, r2, #16
	cmp r3, #16
	bge label373
	mov r5, r4
	b label47
label373:
	str r0, [sp, #60]
	ldr r5, [sp, #56]
label47:
	cmp r5, #0
	beq label314
	add r6, r2, #17
	cmp r3, #17
	bge label382
	mov r5, r4
	b label50
label52:
	add r6, r2, #18
	cmp r3, #18
	bge label391
	mov r5, r4
	b label54
label391:
	str r0, [sp, #68]
	ldr r5, [sp, #64]
label54:
	cmp r5, #0
	beq label314
	add r6, r2, #19
	cmp r3, #19
	bge label403
	mov r5, r4
	b label58
label403:
	str r0, [sp, #72]
	ldr r5, [sp, #68]
label58:
	cmp r5, #0
	beq label314
	add r2, r2, #20
	cmp r3, #20
	blt label67
	str r0, [sp, #76]
	b label67
label545:
	mov r5, r0
	b label94
label362:
	mov r5, r4
	b label44
label353:
	mov r5, r4
	b label40
label332:
	mov r5, r4
	b label34
label320:
	mov r5, r4
	b label30
label605:
	mov r5, r0
	b label114
label557:
	mov r5, r0
	b label98
