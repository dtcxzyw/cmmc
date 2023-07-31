.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, lr }
	sub sp, sp, #80
	mov r1, #0
	mov r0, sp
	mov r2, r1
	str r1, [sp, #0]
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #12]
	str r1, [sp, #16]
	str r1, [sp, #20]
	str r1, [sp, #24]
	str r1, [sp, #28]
	str r1, [sp, #32]
	str r1, [sp, #36]
	str r1, [sp, #40]
	str r1, [sp, #44]
	str r1, [sp, #48]
	str r1, [sp, #52]
	str r1, [sp, #56]
	str r1, [sp, #60]
	str r1, [sp, #64]
	str r1, [sp, #68]
	str r1, [sp, #72]
	str r1, [sp, #76]
	cmp r1, #20
	bge label202
.p2align 4
label5:
	add r3, r1, #1
	cmp r2, #1
	bge label207
	mov r4, #0
	cmp r4, #0
	bne label10
.p2align 4
label211:
	mov r1, r3
.p2align 4
label8:
	add r2, r2, #1
	cmp r2, #20
	blt label5
	b label202
.p2align 4
label207:
	mov r4, #1
	str r4, [sp, #0]
	cmp r4, #0
	bne label10
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label5
	b label202
.p2align 4
label10:
	add r3, r1, #2
	cmp r2, #2
	bge label217
	mov r4, #0
	cmp r4, #0
	beq label221
.p2align 4
label13:
	add r3, r1, #3
	cmp r2, #3
	bge label226
	mov r4, #0
	cmp r4, #0
	bne label17
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label5
	b label202
.p2align 4
label217:
	mov r4, #1
	str r4, [sp, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	bne label13
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label5
	b label202
label17:
	add r3, r1, #4
	cmp r2, #4
	bge label238
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label5
	b label202
label226:
	mov r4, #1
	str r4, [sp, #8]
	ldr r4, [sp, #4]
	cmp r4, #0
	bne label17
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label5
	b label202
label238:
	mov r4, #1
	str r4, [sp, #12]
	ldr r4, [sp, #8]
	cmp r4, #0
	beq label211
	add r3, r1, #5
	cmp r2, #5
	blt label211
	mov r4, #1
	str r4, [sp, #16]
	ldr r4, [sp, #12]
	cmp r4, #0
	beq label211
	add r3, r1, #6
	cmp r2, #6
	blt label211
	mov r4, #1
	str r4, [sp, #20]
	ldr r4, [sp, #16]
	cmp r4, #0
	beq label211
	add r3, r1, #7
	cmp r2, #7
	blt label211
	mov r4, #1
	str r4, [sp, #24]
	ldr r4, [sp, #20]
	cmp r4, #0
	bne label25
	b label211
label202:
	mov r2, #0
	cmp r2, #20
	blt label72
label430:
	mov r3, #1
	b label136
.p2align 4
label72:
	add r3, r1, #2
	cmp r2, #1
	bge label435
	mov r4, #1
	cmp r4, #0
	beq label899
.p2align 4
label440:
	mov r1, r3
.p2align 4
label76:
	add r2, r2, #1
	cmp r2, #20
	blt label72
	b label430
label136:
	cmp r3, #20
	bge label139
	sub r2, r3, #1
	add r1, r1, #1
	cmp r3, r2
	ble label139
	mov r4, #1
	cmp r2, #0
	str r4, [r0, r2, lsl #2]
	beq label179
	sub r2, r3, #2
	ldr r2, [r0, r2, lsl #2]
	b label175
.p2align 4
label435:
	mov r4, #0
	str r4, [sp, #0]
	cmp r4, #0
	bne label440
	add r3, r1, #4
	cmp r2, #2
	bge label925
label446:
	mov r4, #1
	cmp r4, #0
	bne label452
	add r3, r1, #6
	cmp r2, #3
	blt label457
	mov r4, #0
	str r4, [sp, #8]
	ldr r4, [sp, #4]
	cmp r4, #0
	bne label464
	b label463
label899:
	add r3, r1, #4
	cmp r2, #2
	blt label446
	mov r4, #0
	str r4, [sp, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	bne label452
	add r3, r1, #6
	cmp r2, #3
	bge label903
label457:
	mov r4, #1
	cmp r4, #0
	beq label905
label464:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label72
	b label430
label925:
	mov r4, #0
	str r4, [sp, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	beq label929
label452:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label72
	b label430
label903:
	mov r4, #0
	str r4, [sp, #8]
	ldr r4, [sp, #4]
	cmp r4, #0
	bne label464
label463:
	add r3, r1, #8
	cmp r2, #4
	blt label469
label906:
	mov r4, #0
	str r4, [sp, #12]
	ldr r4, [sp, #8]
	cmp r4, #0
	bne label440
	add r3, r1, #10
	cmp r2, #5
	blt label440
	mov r4, #0
	str r4, [sp, #16]
	ldr r4, [sp, #12]
	cmp r4, #0
	bne label440
	add r3, r1, #12
	cmp r2, #6
	blt label440
	mov r4, #0
	str r4, [sp, #20]
	ldr r4, [sp, #16]
	cmp r4, #0
	bne label440
	add r3, r1, #14
	cmp r2, #7
	blt label440
	mov r4, #0
	str r4, [sp, #24]
	ldr r4, [sp, #20]
	cmp r4, #0
	bne label440
	add r3, r1, #16
	cmp r2, #8
	blt label440
	mov r4, #0
	str r4, [sp, #28]
	ldr r4, [sp, #24]
	cmp r4, #0
	bne label440
	add r3, r1, #18
	cmp r2, #9
	blt label440
	mov r4, #0
	str r4, [sp, #32]
	ldr r4, [sp, #28]
	cmp r4, #0
	bne label440
	add r3, r1, #20
	cmp r2, #10
	blt label440
	mov r4, #0
	str r4, [sp, #36]
	ldr r4, [sp, #32]
	cmp r4, #0
	bne label440
	add r3, r1, #22
	cmp r2, #11
	bge label552
	mov r4, #1
label101:
	cmp r4, #0
	bne label440
	add r3, r1, #24
	cmp r2, #12
	bge label561
	mov r4, #1
label105:
	cmp r4, #0
	bne label440
	add r3, r1, #26
	cmp r2, #13
	bge label573
	mov r4, #1
	b label109
label905:
	add r3, r1, #8
	cmp r2, #4
	blt label469
	b label906
label929:
	add r3, r1, #6
	cmp r2, #3
	blt label457
	b label903
label139:
	ldr r2, [sp, #0]
	add r0, r1, #3
	cmp r2, #0
	beq label141
	ldr r3, [sp, #4]
	add r0, r1, #6
	cmp r3, #0
	bne label143
label141:
	ldr r3, [sp, #8]
	add r1, r0, #3
	add r0, r0, #6
	cmp r3, #0
	moveq r0, r1
label143:
	ldr r1, [sp, #16]
	add r3, r0, #3
	cmp r1, #0
	bne label145
	mov r0, r3
label150:
	ldr r4, [sp, #36]
	add r3, r0, #3
	cmp r4, #0
	bne label171
	mov r0, r3
label152:
	ldr r4, [sp, #44]
	add r3, r0, #3
	cmp r4, #0
	bne label154
label714:
	mov r0, r3
	b label157
label154:
	ldr r4, [sp, #48]
	add r3, r0, #6
	cmp r4, #0
	beq label714
	b label155
label157:
	add r3, r0, #3
	cmp r2, #0
	bne label165
	mov r0, r3
label159:
	ldr r2, [sp, #20]
	add r1, r0, #3
	cmp r2, #0
	beq label161
	mov r0, r1
	mov r1, #1
label168:
	add r0, r0, r1
	bl putint
	add sp, sp, #80
	mov r0, #0
	pop { r4, pc }
label145:
	ldr r4, [sp, #20]
	add r3, r0, #6
	cmp r4, #0
	bne label146
label684:
	mov r0, r3
	add r0, r3, #3
	b label150
label161:
	ldr r2, [sp, #24]
	add r1, r0, #6
	cmp r2, #0
	bne label164
	mov r0, r1
label162:
	ldr r1, [sp, #32]
	add r0, r0, #3
	cmp r1, #0
	mov r1, #0
	movwne r1, #1
	b label168
label175:
	cmp r2, #0
	beq label139
	add r3, r3, #1
	b label136
label179:
	ldr r2, [sp, #0]
	b label175
label171:
	ldr r3, [sp, #40]
	add r0, r0, #6
	cmp r3, #0
	beq label157
	b label152
label165:
	ldr r3, [sp, #8]
	add r2, r0, #6
	cmp r3, #0
	bne label166
label769:
	mov r0, r2
	b label159
label155:
	ldr r4, [sp, #52]
	add r3, r0, #9
	cmp r4, #0
	beq label714
	ldr r3, [sp, #56]
	add r4, r0, #12
	cmp r3, #0
	add r3, r0, #15
	mov r0, r4
	movne r0, r3
	b label157
label146:
	ldr r4, [sp, #24]
	add r3, r0, #9
	cmp r4, #0
	bne label684
	ldr r3, [sp, #28]
	add r0, r0, #12
	cmp r3, #0
	bne label150
	add r0, r0, #3
	b label150
label166:
	ldr r3, [sp, #12]
	add r2, r0, #9
	cmp r3, #0
	bne label769
	add r0, r0, #12
	cmp r1, #0
	beq label763
	b label159
label221:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label5
	b label202
label164:
	ldr r1, [sp, #28]
	add r0, r0, #9
	cmp r1, #0
	beq label763
	b label162
label469:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label72
	b label430
label25:
	add r3, r1, #8
	cmp r2, #8
	blt label211
	mov r4, #1
	str r4, [sp, #28]
	ldr r4, [sp, #24]
	cmp r4, #0
	beq label211
	add r3, r1, #9
	cmp r2, #9
	blt label211
	mov r4, #1
	str r4, [sp, #32]
	ldr r4, [sp, #28]
	cmp r4, #0
	beq label211
	add r3, r1, #10
	cmp r2, #10
	blt label211
	mov r4, #1
	str r4, [sp, #36]
	ldr r4, [sp, #32]
	cmp r4, #0
	beq label211
	add r3, r1, #11
	cmp r2, #11
	bge label322
	mov r4, #0
	b label33
label322:
	mov r4, #1
	str r4, [sp, #40]
	ldr r4, [sp, #36]
label33:
	cmp r4, #0
	beq label211
	add r3, r1, #12
	cmp r2, #12
	blt label335
	mov r4, #1
	str r4, [sp, #44]
	ldr r4, [sp, #40]
	b label37
label335:
	mov r4, #0
label37:
	cmp r4, #0
	bne label39
	b label211
label573:
	mov r4, #0
	str r4, [sp, #48]
	ldr r4, [sp, #44]
label109:
	cmp r4, #0
	bne label440
	add r3, r1, #28
	cmp r2, #14
	blt label586
	mov r4, #0
	str r4, [sp, #52]
	ldr r4, [sp, #48]
	b label113
label39:
	add r3, r1, #13
	cmp r2, #13
	blt label347
	mov r4, #1
	str r4, [sp, #48]
	ldr r4, [sp, #44]
label41:
	cmp r4, #0
	beq label211
	add r3, r1, #14
	cmp r2, #14
	blt label359
	mov r4, #1
	str r4, [sp, #52]
	ldr r4, [sp, #48]
	b label44
label586:
	mov r4, #1
label113:
	cmp r4, #0
	bne label440
	add r3, r1, #30
	cmp r2, #15
	blt label598
	mov r4, #0
	str r4, [sp, #56]
	ldr r4, [sp, #52]
	b label117
label359:
	mov r4, #0
label44:
	cmp r4, #0
	bne label46
	b label211
label598:
	mov r4, #1
label117:
	cmp r4, #0
	bne label440
	add r3, r1, #32
	cmp r2, #16
	blt label610
	mov r4, #0
	str r4, [sp, #60]
	ldr r4, [sp, #56]
label121:
	cmp r4, #0
	bne label440
	add r3, r1, #34
	cmp r2, #17
	blt label622
	mov r4, #0
	str r4, [sp, #64]
	ldr r4, [sp, #60]
	b label125
label46:
	add r3, r1, #15
	cmp r2, #15
	blt label368
	mov r4, #1
	str r4, [sp, #56]
	ldr r4, [sp, #52]
label48:
	cmp r4, #0
	beq label211
	add r3, r1, #16
	cmp r2, #16
	bge label379
	mov r4, #0
label51:
	cmp r4, #0
	beq label211
	add r3, r1, #17
	cmp r2, #17
	bge label388
	mov r4, #0
	b label54
label622:
	mov r4, #1
label125:
	cmp r4, #0
	bne label440
	add r3, r1, #36
	cmp r2, #18
	bge label633
	mov r4, #1
	b label128
label388:
	mov r4, #1
	str r4, [sp, #64]
	ldr r4, [sp, #60]
label54:
	cmp r4, #0
	bne label56
	b label211
label633:
	mov r4, #0
	str r4, [sp, #68]
	ldr r4, [sp, #64]
label128:
	cmp r4, #0
	bne label440
	add r4, r1, #38
	cmp r2, #19
	blt label643
	mov r3, #0
	str r3, [sp, #72]
	ldr r3, [sp, #68]
	cmp r3, #0
	add r1, r1, #40
	movne r1, r4
	b label76
label56:
	add r3, r1, #18
	cmp r2, #18
	bge label397
	mov r4, #0
	b label57
label397:
	mov r4, #1
	str r4, [sp, #68]
	ldr r4, [sp, #64]
label57:
	cmp r4, #0
	beq label211
	add r4, r1, #19
	cmp r2, #19
	blt label407
	mov r3, #1
	str r3, [sp, #72]
	ldr r3, [sp, #68]
	cmp r3, #0
	add r3, r1, #20
	mov r1, r4
	movne r1, r3
	b label8
label643:
	mov r3, #1
	cmp r3, #0
	add r1, r1, #40
	movne r1, r4
	b label76
label610:
	mov r4, #1
	b label121
label368:
	mov r4, #0
	b label48
label407:
	mov r3, #0
	cmp r3, #0
	add r3, r1, #20
	mov r1, r4
	movne r1, r3
	b label8
label379:
	mov r4, #1
	str r4, [sp, #60]
	ldr r4, [sp, #56]
	b label51
label347:
	mov r4, #0
	b label41
label763:
	mov r1, #1
	b label168
label561:
	mov r4, #0
	str r4, [sp, #44]
	ldr r4, [sp, #40]
	b label105
label552:
	mov r4, #0
	str r4, [sp, #40]
	ldr r4, [sp, #36]
	b label101
