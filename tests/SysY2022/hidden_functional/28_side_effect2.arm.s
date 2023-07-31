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
	mov r2, #0
	cmp r2, #20
	blt label72
	mov r2, #1
	cmp r2, #20
	blt label173
	b label139
.p2align 4
label72:
	add r3, r1, #2
	cmp r2, #1
	blt label436
	b label435
.p2align 4
label942:
	mov r4, #0
	str r4, [sp, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	bne label452
	add r3, r1, #6
	cmp r2, #3
	blt label457
	b label1003
.p2align 4
label440:
	mov r1, r3
.p2align 4
label76:
	add r2, r2, #1
	cmp r2, #20
	blt label72
	b label908
label457:
	mov r4, #1
	cmp r4, #0
	bne label440
	add r3, r1, #8
	cmp r2, #4
	blt label440
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
	b label1024
.p2align 4
label435:
	mov r4, #0
	str r4, [sp, #0]
	cmp r4, #0
	bne label440
	add r3, r1, #4
	cmp r2, #2
	blt label446
	str r4, [sp, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	bne label452
	add r3, r1, #6
	cmp r2, #3
	blt label457
	mov r4, #0
	str r4, [sp, #8]
	ldr r4, [sp, #4]
	cmp r4, #0
	bne label440
	add r3, r1, #8
	cmp r2, #4
	blt label440
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
.p2align 4
label1052:
	mov r4, #0
	str r4, [sp, #20]
	ldr r4, [sp, #16]
	cmp r4, #0
	bne label440
	add r3, r1, #14
	cmp r2, #7
	blt label440
.p2align 4
label1039:
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
	blt label553
	mov r4, #0
	str r4, [sp, #40]
	ldr r4, [sp, #36]
label101:
	cmp r4, #0
	bne label440
	add r3, r1, #24
	cmp r2, #12
	blt label562
	mov r4, #0
	str r4, [sp, #44]
	ldr r4, [sp, #40]
label105:
	cmp r4, #0
	bne label440
	add r3, r1, #26
	cmp r2, #13
	blt label574
	mov r4, #0
	str r4, [sp, #48]
	ldr r4, [sp, #44]
label109:
	cmp r4, #0
	bne label440
	add r3, r1, #28
	cmp r2, #14
	bge label929
	mov r4, #1
	b label113
.p2align 4
label1003:
	mov r4, #0
	str r4, [sp, #8]
	ldr r4, [sp, #4]
	cmp r4, #0
	bne label440
	add r3, r1, #8
	cmp r2, #4
	blt label440
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
	b label1052
.p2align 4
label909:
	add r3, r1, #6
	cmp r2, #3
	blt label457
	mov r4, #0
	str r4, [sp, #8]
	ldr r4, [sp, #4]
	cmp r4, #0
	bne label440
	add r3, r1, #8
	cmp r2, #4
	blt label440
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
.p2align 4
label1024:
	add r3, r1, #14
	cmp r2, #7
	blt label440
	b label1039
.p2align 4
label436:
	mov r4, #1
	cmp r4, #0
	bne label440
	add r3, r1, #4
	cmp r2, #2
	bge label942
.p2align 4
label446:
	mov r4, #1
	cmp r4, #0
	beq label909
.p2align 4
label452:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label72
	mov r2, #1
	cmp r2, #20
	blt label173
	b label139
label929:
	mov r4, #0
	str r4, [sp, #52]
	ldr r4, [sp, #48]
label113:
	cmp r4, #0
	bne label440
	add r3, r1, #30
	cmp r2, #15
	blt label598
	mov r4, #0
	str r4, [sp, #56]
	ldr r4, [sp, #52]
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
label125:
	cmp r4, #0
	bne label440
	add r3, r1, #36
	cmp r2, #18
	bge label933
	mov r4, #1
	b label128
label933:
	mov r4, #0
	str r4, [sp, #68]
	ldr r4, [sp, #64]
label128:
	cmp r4, #0
	bne label440
	add r4, r1, #38
	cmp r2, #19
	bge label934
	mov r3, #1
	cmp r3, #0
	add r1, r1, #40
	movne r1, r4
	b label76
.p2align 4
label202:
	mov r2, #0
	cmp r2, #20
	blt label72
	mov r2, #1
	cmp r2, #20
	blt label173
	b label139
.p2align 4
label938:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label5
	mov r2, #0
	cmp r2, #20
	blt label72
	mov r2, #1
	cmp r2, #20
	bge label139
label173:
	sub r3, r2, #1
	add r1, r1, #1
	cmp r2, r3
	ble label139
	mov r4, #1
	cmp r3, #0
	str r4, [r0, r3, lsl #2]
	beq label179
	sub r3, r2, #2
	ldr r3, [r0, r3, lsl #2]
	b label175
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
	mov r2, #0
	cmp r2, #20
	blt label72
	mov r2, #1
	cmp r2, #20
	blt label173
	b label139
.p2align 4
label908:
	mov r2, #1
	cmp r2, #20
	blt label173
label139:
	ldr r2, [sp, #0]
	add r0, r1, #3
	cmp r2, #0
	bne label172
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
	b label152
label172:
	ldr r3, [sp, #4]
	add r0, r1, #6
	cmp r3, #0
	bne label143
	b label141
.p2align 4
label10:
	add r3, r1, #2
	cmp r2, #2
	blt label218
	mov r4, #1
	str r4, [sp, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	beq label938
.p2align 4
label13:
	add r3, r1, #3
	cmp r2, #3
	blt label227
	mov r4, #1
	str r4, [sp, #8]
	ldr r4, [sp, #4]
	cmp r4, #0
	bne label17
	b label211
.p2align 4
label218:
	mov r4, #0
	cmp r4, #0
	bne label13
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label5
	mov r2, #0
	cmp r2, #20
	blt label72
	mov r2, #1
	cmp r2, #20
	blt label173
	b label139
label227:
	mov r4, #0
	cmp r4, #0
	beq label211
label17:
	add r3, r1, #4
	cmp r2, #4
	blt label211
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
	beq label211
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
	bne label31
	b label211
label145:
	ldr r4, [sp, #20]
	add r3, r0, #6
	cmp r4, #0
	beq label684
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
label152:
	ldr r4, [sp, #44]
	add r3, r0, #3
	cmp r4, #0
	beq label714
	b label154
label171:
	ldr r3, [sp, #40]
	add r0, r0, #6
	cmp r3, #0
	beq label157
	b label152
label714:
	mov r0, r3
	b label157
label154:
	ldr r4, [sp, #48]
	add r3, r0, #6
	cmp r4, #0
	beq label714
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
label157:
	add r3, r0, #3
	cmp r2, #0
	bne label165
	mov r0, r3
label159:
	ldr r2, [sp, #20]
	add r1, r0, #3
	cmp r2, #0
	bne label745
	b label161
label167:
	add r0, r0, #12
	cmp r1, #0
	beq label763
	b label159
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
label136:
	cmp r2, #20
	blt label173
	b label139
label175:
	cmp r3, #0
	beq label139
	add r2, r2, #1
	b label136
label179:
	ldr r3, [sp, #0]
	b label175
label745:
	mov r0, r1
	mov r1, #1
label168:
	add r0, r0, r1
	bl putint
	add sp, sp, #80
	mov r0, #0
	pop { r4, pc }
label165:
	ldr r3, [sp, #8]
	add r2, r0, #6
	cmp r3, #0
	bne label166
label769:
	mov r0, r2
	b label159
label166:
	ldr r3, [sp, #12]
	add r2, r0, #9
	cmp r3, #0
	beq label167
	b label769
label684:
	mov r0, r3
	add r0, r3, #3
	b label150
label164:
	ldr r1, [sp, #28]
	add r0, r0, #9
	cmp r1, #0
	bne label162
label763:
	mov r1, #1
	b label168
label31:
	add r3, r1, #11
	cmp r2, #11
	blt label323
	mov r4, #1
	str r4, [sp, #40]
	ldr r4, [sp, #36]
label33:
	cmp r4, #0
	beq label211
	add r3, r1, #12
	cmp r2, #12
	bge label334
	mov r4, #0
	b label37
label334:
	mov r4, #1
	str r4, [sp, #44]
	ldr r4, [sp, #40]
label37:
	cmp r4, #0
	beq label211
	add r3, r1, #13
	cmp r2, #13
	bge label346
	mov r4, #0
	b label41
label346:
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
label44:
	cmp r4, #0
	beq label211
	add r3, r1, #15
	cmp r2, #15
	bge label367
	mov r4, #0
	b label48
label367:
	mov r4, #1
	str r4, [sp, #56]
	ldr r4, [sp, #52]
label48:
	cmp r4, #0
	beq label211
	add r3, r1, #16
	cmp r2, #16
	blt label380
	mov r4, #1
	str r4, [sp, #60]
	ldr r4, [sp, #56]
label51:
	cmp r4, #0
	beq label211
	add r3, r1, #17
	cmp r2, #17
	bge label388
	mov r4, #0
	b label54
label388:
	mov r4, #1
	str r4, [sp, #64]
	ldr r4, [sp, #60]
label54:
	cmp r4, #0
	beq label211
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
label622:
	mov r4, #1
	b label125
label562:
	mov r4, #1
	b label105
label574:
	mov r4, #1
	b label109
label407:
	mov r3, #0
	cmp r3, #0
	add r3, r1, #20
	mov r1, r4
	movne r1, r3
	b label8
label380:
	mov r4, #0
	b label51
label553:
	mov r4, #1
	b label101
label359:
	mov r4, #0
	b label44
label323:
	mov r4, #0
	b label33
label598:
	mov r4, #1
	b label117
label610:
	mov r4, #1
	b label121
label934:
	mov r3, #0
	str r3, [sp, #72]
	ldr r3, [sp, #68]
	cmp r3, #0
	add r1, r1, #40
	movne r1, r4
	b label76
