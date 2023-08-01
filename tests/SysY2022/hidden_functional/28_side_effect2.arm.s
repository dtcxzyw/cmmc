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
	sub sp, sp, #80
	mov r4, #0
	mov r0, #1
	mov r1, sp
	str r4, [sp, #0]
	mov r3, r4
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
	mov r2, r4
label2:
	cmp r2, #20
	blt label5
	b label202
.p2align 4
label225:
	str r0, [sp, #8]
	ldr r6, [sp, #4]
	cmp r6, #0
	beq label914
.p2align 4
label14:
	add r5, r3, #4
	cmp r2, #4
	blt label235
	str r0, [sp, #12]
	ldr r6, [sp, #8]
	cmp r6, #0
	beq label916
.p2align 4
label18:
	add r5, r3, #5
	cmp r2, #5
	blt label247
	str r0, [sp, #16]
	ldr r6, [sp, #12]
	cmp r6, #0
	bne label20
label895:
	mov r3, r5
	add r2, r2, #1
	b label2
label20:
	add r5, r3, #6
	cmp r2, #6
	blt label895
	str r0, [sp, #20]
	ldr r6, [sp, #16]
	cmp r6, #0
	bne label22
	b label895
label202:
	mov r2, r4
	b label69
.p2align 4
label5:
	add r5, r3, #1
	cmp r2, #1
	blt label208
	b label207
.p2align 4
label910:
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label5
	b label202
.p2align 4
label208:
	movs r6, r4
	bne label8
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label5
	b label202
.p2align 4
label207:
	str r0, [sp, #0]
	movs r6, r0
	beq label910
.p2align 4
label8:
	add r5, r3, #2
	cmp r2, #2
	bge label216
	movs r6, r4
	beq label220
.p2align 4
label11:
	add r5, r3, #3
	cmp r2, #3
	bge label225
	movs r6, r4
	bne label14
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label5
	b label202
.p2align 4
label216:
	str r0, [sp, #4]
	ldr r6, [sp, #0]
	cmp r6, #0
	bne label11
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label5
	b label202
.p2align 4
label235:
	movs r6, r4
	bne label18
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label5
	b label202
label69:
	cmp r2, #20
	blt label72
	b label430
.p2align 4
label922:
	str r4, [sp, #8]
	ldr r6, [sp, #4]
	cmp r6, #0
	bne label463
	add r5, r3, #8
	cmp r2, #4
	blt label468
label904:
	str r4, [sp, #12]
	ldr r6, [sp, #8]
	cmp r6, #0
	bne label475
label474:
	add r5, r3, #10
	cmp r2, #5
	blt label480
label906:
	str r4, [sp, #16]
	ldr r6, [sp, #12]
	cmp r6, #0
	beq label89
label487:
	mov r3, r5
	add r2, r2, #1
	b label69
label89:
	add r5, r3, #12
	cmp r2, #6
	blt label487
	str r4, [sp, #20]
	ldr r6, [sp, #16]
	cmp r6, #0
	bne label487
	add r5, r3, #14
	cmp r2, #7
	blt label487
	str r4, [sp, #24]
	ldr r6, [sp, #20]
	cmp r6, #0
	bne label487
	add r5, r3, #16
	cmp r2, #8
	blt label487
	str r4, [sp, #28]
	ldr r6, [sp, #24]
	cmp r6, #0
	bne label487
	add r5, r3, #18
	cmp r2, #9
	blt label487
	str r4, [sp, #32]
	ldr r6, [sp, #28]
	cmp r6, #0
	bne label487
	add r5, r3, #20
	cmp r2, #10
	blt label487
	str r4, [sp, #36]
	ldr r6, [sp, #32]
	cmp r6, #0
	bne label487
	add r5, r3, #22
	cmp r2, #11
	blt label487
	str r4, [sp, #40]
	ldr r6, [sp, #36]
	cmp r6, #0
	bne label487
	add r6, r3, #24
	cmp r2, #12
	blt label564
	str r4, [sp, #44]
	ldr r5, [sp, #40]
label103:
	cmp r5, #0
	beq label105
label571:
	mov r3, r6
	add r2, r2, #1
	b label69
label430:
	mov r2, r0
	b label136
.p2align 4
label72:
	add r5, r3, #2
	cmp r2, #1
	blt label436
	str r4, [sp, #0]
	movs r6, r4
	bne label440
	b label919
.p2align 4
label436:
	movs r6, r0
	beq label439
.p2align 4
label440:
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label72
	b label430
label136:
	cmp r2, #20
	blt label139
label146:
	ldr r2, [sp, #0]
	add r1, r3, #3
	cmp r2, #0
	bne label179
label686:
	ldr r5, [sp, #8]
	add r3, r1, #3
	add r1, r1, #6
	cmp r5, #0
	moveq r1, r3
label148:
	ldr r3, [sp, #16]
	add r5, r1, #3
	cmp r3, #0
	beq label694
	ldr r6, [sp, #20]
	add r5, r1, #6
	cmp r6, #0
	bne label153
	mov r1, r5
label151:
	add r1, r1, #3
	b label155
.p2align 4
label439:
	add r5, r3, #4
	cmp r2, #2
	bge label900
.p2align 4
label445:
	movs r6, r0
	bne label451
	add r5, r3, #6
	cmp r2, #3
	bge label922
.p2align 4
label456:
	movs r6, r0
	beq label903
.p2align 4
label463:
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label72
	b label430
.p2align 4
label919:
	add r5, r3, #4
	cmp r2, #2
	blt label445
	str r4, [sp, #4]
	ldr r6, [sp, #0]
	cmp r6, #0
	bne label451
	add r5, r3, #6
	cmp r2, #3
	blt label456
	str r4, [sp, #8]
	ldr r6, [sp, #4]
	cmp r6, #0
	bne label463
	b label947
.p2align 4
label900:
	str r4, [sp, #4]
	ldr r6, [sp, #0]
	cmp r6, #0
	bne label451
	add r5, r3, #6
	cmp r2, #3
	blt label456
	str r4, [sp, #8]
	ldr r6, [sp, #4]
	cmp r6, #0
	bne label463
label947:
	add r5, r3, #8
	cmp r2, #4
	blt label468
	b label904
.p2align 4
label903:
	add r5, r3, #8
	cmp r2, #4
	bge label925
.p2align 4
label468:
	movs r6, r0
	beq label905
.p2align 4
label475:
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label72
	b label430
label905:
	add r5, r3, #10
	cmp r2, #5
	bge label906
label480:
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label72
	b label430
label925:
	str r4, [sp, #12]
	ldr r6, [sp, #8]
	cmp r6, #0
	bne label475
	b label474
label694:
	mov r1, r5
label155:
	ldr r6, [sp, #36]
	add r5, r1, #3
	cmp r6, #0
	bne label176
	mov r1, r5
	b label171
label157:
	add r5, r1, #3
	cmp r2, #0
	bne label168
	b label726
label171:
	ldr r6, [sp, #44]
	add r5, r1, #3
	cmp r6, #0
	bne label173
label779:
	mov r1, r5
	b label157
label726:
	mov r1, r5
	b label162
label159:
	add r0, r1, r0
	bl putint
	add sp, sp, #80
	mov r0, r4
	pop { r4, r5, r6, pc }
label162:
	ldr r3, [sp, #20]
	add r2, r1, #3
	cmp r3, #0
	beq label164
	mov r1, r2
	b label159
label164:
	ldr r3, [sp, #24]
	add r2, r1, #6
	cmp r3, #0
	bne label167
	mov r0, r2
	ldr r1, [sp, #32]
	mov r2, #0
	cmp r1, #0
	add r1, r0, #3
	movwne r2, #1
	mov r0, r2
	b label159
label173:
	ldr r6, [sp, #48]
	add r5, r1, #6
	cmp r6, #0
	beq label779
	ldr r6, [sp, #52]
	add r5, r1, #9
	cmp r6, #0
	beq label779
	ldr r5, [sp, #56]
	add r6, r1, #15
	cmp r5, #0
	add r5, r1, #12
	mov r1, r5
	movne r1, r6
	b label157
label139:
	sub r5, r2, #1
	add r3, r3, #1
	cmp r2, r5
	ble label146
	str r0, [r1, r5, lsl #2]
	cmp r5, #0
	beq label144
	sub r5, r2, #2
	ldr r5, [r1, r5, lsl #2]
label141:
	cmp r5, #0
	beq label146
	add r2, r2, #1
	b label136
label144:
	ldr r5, [sp, #0]
	b label141
label168:
	ldr r5, [sp, #8]
	add r2, r1, #6
	cmp r5, #0
	bne label169
label760:
	mov r1, r2
	b label162
label176:
	ldr r5, [sp, #40]
	add r1, r1, #6
	cmp r5, #0
	beq label157
	b label171
label179:
	ldr r5, [sp, #4]
	add r1, r3, #6
	cmp r5, #0
	bne label148
	b label686
.p2align 4
label451:
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label72
	b label430
label22:
	add r5, r3, #7
	cmp r2, #7
	blt label895
	str r0, [sp, #24]
	ldr r6, [sp, #20]
	cmp r6, #0
	bne label24
	b label895
label169:
	ldr r5, [sp, #12]
	add r2, r1, #9
	cmp r5, #0
	beq label170
	b label760
label153:
	ldr r6, [sp, #24]
	add r5, r1, #9
	cmp r6, #0
	beq label154
	mov r1, r5
	add r1, r5, #3
	b label155
.p2align 4
label220:
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label5
	b label202
label167:
	ldr r2, [sp, #28]
	add r1, r1, #9
	cmp r2, #0
	beq label159
	mov r0, r1
	ldr r1, [sp, #32]
	mov r2, #0
	cmp r1, #0
	add r1, r0, #3
	movwne r2, #1
	mov r0, r2
	b label159
label170:
	add r1, r1, #12
	cmp r3, #0
	beq label159
	b label162
label154:
	ldr r5, [sp, #28]
	add r1, r1, #12
	cmp r5, #0
	bne label155
	b label151
.p2align 4
label914:
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label5
	b label202
label24:
	add r5, r3, #8
	cmp r2, #8
	blt label895
	str r0, [sp, #28]
	ldr r6, [sp, #24]
	cmp r6, #0
	bne label26
	b label895
label916:
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label5
	b label202
label247:
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label5
	b label202
label26:
	add r5, r3, #9
	cmp r2, #9
	blt label895
	str r0, [sp, #32]
	ldr r6, [sp, #28]
	cmp r6, #0
	beq label895
	add r5, r3, #10
	cmp r2, #10
	blt label895
	str r0, [sp, #36]
	ldr r6, [sp, #32]
	cmp r6, #0
	beq label895
	add r5, r3, #11
	cmp r2, #11
	blt label895
	str r0, [sp, #40]
	ldr r6, [sp, #36]
	cmp r6, #0
	beq label895
	add r6, r3, #12
	cmp r2, #12
	bge label330
	mov r5, r4
	b label34
label330:
	str r0, [sp, #44]
	ldr r5, [sp, #40]
label34:
	cmp r5, #0
	bne label36
label337:
	mov r3, r6
	add r2, r2, #1
	b label2
label105:
	add r6, r3, #26
	cmp r2, #13
	bge label575
	mov r5, r0
label107:
	cmp r5, #0
	bne label571
	add r6, r3, #28
	cmp r2, #14
	bge label587
	mov r5, r0
label111:
	cmp r5, #0
	bne label571
	add r6, r3, #30
	cmp r2, #15
	bge label599
	mov r5, r0
	b label114
label599:
	str r4, [sp, #56]
	ldr r5, [sp, #52]
label114:
	cmp r5, #0
	bne label571
	add r6, r3, #32
	cmp r2, #16
	blt label609
	str r4, [sp, #60]
	ldr r5, [sp, #56]
	b label117
label609:
	mov r5, r0
label117:
	cmp r5, #0
	bne label571
	add r6, r3, #34
	cmp r2, #17
	blt label618
	str r4, [sp, #64]
	ldr r5, [sp, #60]
label120:
	cmp r5, #0
	bne label571
	add r6, r3, #36
	cmp r2, #18
	blt label627
	str r4, [sp, #68]
	ldr r5, [sp, #64]
label123:
	cmp r5, #0
	bne label571
	add r6, r3, #38
	cmp r2, #19
	blt label636
	str r4, [sp, #72]
	ldr r5, [sp, #68]
	cmp r5, #0
	add r3, r3, #40
	movne r3, r6
	add r2, r2, #1
	b label69
label636:
	movs r5, r0
	add r3, r3, #40
	movne r3, r6
	add r2, r2, #1
	b label69
label36:
	add r6, r3, #13
	cmp r2, #13
	bge label342
	mov r5, r4
	b label38
label342:
	str r0, [sp, #48]
	ldr r5, [sp, #44]
label38:
	cmp r5, #0
	beq label337
	add r6, r3, #14
	cmp r2, #14
	bge label354
	mov r5, r4
	b label42
label354:
	str r0, [sp, #52]
	ldr r5, [sp, #48]
label42:
	cmp r5, #0
	beq label337
	add r6, r3, #15
	cmp r2, #15
	bge label366
	mov r5, r4
	b label46
label366:
	str r0, [sp, #56]
	ldr r5, [sp, #52]
label46:
	cmp r5, #0
	beq label337
	add r6, r3, #16
	cmp r2, #16
	bge label378
	mov r5, r4
	b label50
label378:
	str r0, [sp, #60]
	ldr r5, [sp, #56]
label50:
	cmp r5, #0
	beq label337
	add r6, r3, #17
	cmp r2, #17
	bge label390
	mov r5, r4
	b label54
label390:
	str r0, [sp, #64]
	ldr r5, [sp, #60]
label54:
	cmp r5, #0
	beq label337
	add r6, r3, #18
	cmp r2, #18
	blt label403
	str r0, [sp, #68]
	ldr r5, [sp, #64]
label57:
	cmp r5, #0
	beq label337
	add r6, r3, #19
	cmp r2, #19
	blt label412
	str r0, [sp, #72]
	ldr r5, [sp, #68]
	cmp r5, #0
	add r5, r3, #20
	mov r3, r6
	movne r3, r5
	add r2, r2, #1
	b label2
label412:
	movs r5, r4
	add r5, r3, #20
	mov r3, r6
	movne r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label5
	b label202
label564:
	mov r5, r0
	b label103
label403:
	mov r5, r4
	b label57
label575:
	str r4, [sp, #48]
	ldr r5, [sp, #44]
	b label107
label618:
	mov r5, r0
	b label120
label587:
	str r4, [sp, #52]
	ldr r5, [sp, #48]
	b label111
label627:
	mov r5, r0
	b label123
