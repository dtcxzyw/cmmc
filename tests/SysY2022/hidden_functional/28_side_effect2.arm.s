.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[80] RegSpill[0] CalleeSaved[0]
	push { r4, r5, r6, lr }
	sub sp, sp, #80
	mov r4, #0
	mov r0, #1
	mov r1, sp
	str r4, [sp, #0]
	mov r2, r4
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
	b label2
.p2align 4
label206:
	str r0, [sp, #0]
	movs r6, r0
	bne label8
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	bge label935
.p2align 4
label2:
	add r5, r2, #1
	cmp r3, #1
	bge label206
	movs r6, r4
	beq label916
.p2align 4
label8:
	add r5, r2, #2
	cmp r3, #2
	bge label216
	movs r6, r4
	bne label11
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	blt label2
	b label935
.p2align 4
label216:
	str r0, [sp, #4]
	ldr r6, [sp, #0]
	cmp r6, #0
	bne label11
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	blt label2
	b label935
.p2align 4
label11:
	add r5, r2, #3
	cmp r3, #3
	blt label226
	str r0, [sp, #8]
	ldr r6, [sp, #4]
	cmp r6, #0
	bne label13
label919:
	mov r2, r5
label68:
	add r3, r3, #1
	cmp r3, #20
	blt label2
	b label935
label13:
	add r5, r2, #4
	cmp r3, #4
	blt label919
	str r0, [sp, #12]
	ldr r6, [sp, #8]
	cmp r6, #0
	beq label919
	add r5, r2, #5
	cmp r3, #5
	blt label919
	str r0, [sp, #16]
	ldr r6, [sp, #12]
	cmp r6, #0
	bne label17
	b label919
.p2align 4
label916:
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	blt label2
label935:
	mov r3, r4
	b label70
label938:
	add r5, r2, #6
	cmp r3, #3
	blt label631
label923:
	str r4, [sp, #8]
	ldr r6, [sp, #4]
	cmp r6, #0
	bne label448
	add r5, r2, #8
	cmp r3, #4
	bge label127
.p2align 4
label448:
	mov r2, r5
.p2align 4
label75:
	add r3, r3, #1
	cmp r3, #20
	bge label452
.p2align 4
label70:
	add r5, r2, #2
	cmp r3, #1
	blt label444
	str r4, [sp, #0]
	movs r6, r4
	bne label448
	add r5, r2, #4
	cmp r3, #2
	bge label937
.p2align 4
label622:
	movs r6, r0
	bne label626
	add r5, r2, #6
	cmp r3, #3
	bge label923
label631:
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	blt label70
	b label452
.p2align 4
label444:
	movs r6, r0
	bne label448
	add r5, r2, #4
	cmp r3, #2
	blt label622
	str r4, [sp, #4]
	ldr r6, [sp, #0]
	cmp r6, #0
	bne label626
	b label938
label937:
	str r4, [sp, #4]
	ldr r6, [sp, #0]
	cmp r6, #0
	beq label938
.p2align 4
label626:
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	blt label70
label452:
	mov r3, r0
label77:
	cmp r3, #20
	blt label114
label80:
	ldr r3, [sp, #0]
	add r1, r2, #3
	cmp r3, #0
	bne label113
label463:
	ldr r5, [sp, #8]
	add r2, r1, #3
	add r1, r1, #6
	cmp r5, #0
	moveq r1, r2
label82:
	ldr r2, [sp, #16]
	add r5, r1, #3
	cmp r2, #0
	bne label106
	mov r1, r5
label84:
	ldr r6, [sp, #36]
	add r5, r1, #3
	cmp r6, #0
	beq label477
	ldr r5, [sp, #40]
	add r1, r1, #6
	cmp r5, #0
	beq label92
	b label86
label477:
	mov r1, r5
label86:
	ldr r6, [sp, #44]
	add r5, r1, #3
	cmp r6, #0
	bne label88
label485:
	mov r1, r5
label92:
	add r5, r1, #3
	cmp r3, #0
	bne label100
	mov r1, r5
label94:
	ldr r3, [sp, #20]
	add r2, r1, #3
	cmp r3, #0
	beq label96
	mov r1, r2
label103:
	add r0, r1, r0
	bl putint
	add sp, sp, #80
	mov r0, r4
	pop { r4, r5, r6, pc }
label127:
	str r4, [sp, #12]
	ldr r6, [sp, #8]
	cmp r6, #0
	bne label448
	add r5, r2, #10
	cmp r3, #5
	blt label448
	str r4, [sp, #16]
	ldr r6, [sp, #12]
	cmp r6, #0
	bne label448
	add r5, r2, #12
	cmp r3, #6
	blt label448
	str r4, [sp, #20]
	ldr r6, [sp, #16]
	cmp r6, #0
	bne label448
	add r5, r2, #14
	cmp r3, #7
	blt label448
	str r4, [sp, #24]
	ldr r6, [sp, #20]
	cmp r6, #0
	bne label448
	add r5, r2, #16
	cmp r3, #8
	blt label448
	str r4, [sp, #28]
	ldr r6, [sp, #24]
	cmp r6, #0
	bne label448
	add r5, r2, #18
	cmp r3, #9
	blt label448
	str r4, [sp, #32]
	ldr r6, [sp, #28]
	cmp r6, #0
	bne label448
	add r6, r2, #20
	cmp r3, #10
	bge label714
	mov r5, r0
label139:
	cmp r5, #0
	beq label141
label719:
	mov r2, r6
	b label75
label106:
	ldr r6, [sp, #20]
	add r5, r1, #6
	cmp r6, #0
	beq label567
	ldr r6, [sp, #24]
	add r5, r1, #9
	cmp r6, #0
	beq label108
label567:
	add r1, r5, #3
	b label84
label96:
	ldr r3, [sp, #24]
	add r2, r1, #6
	cmp r3, #0
	beq label529
	ldr r2, [sp, #28]
	add r1, r1, #9
	cmp r2, #0
	beq label103
	mov r0, r1
	mov r2, #0
	ldr r1, [sp, #32]
	cmp r1, #0
	add r1, r0, #3
	movwne r2, #1
	mov r0, r2
	b label103
label88:
	ldr r6, [sp, #48]
	add r5, r1, #6
	cmp r6, #0
	beq label485
	ldr r6, [sp, #52]
	add r5, r1, #9
	cmp r6, #0
	beq label485
	ldr r5, [sp, #56]
	add r6, r1, #12
	cmp r5, #0
	add r5, r1, #15
	mov r1, r6
	movne r1, r5
	b label92
label114:
	sub r5, r3, #1
	add r2, r2, #1
	cmp r3, r5
	ble label80
	add r6, r1, r5, lsl #2
	cmp r5, #0
	str r0, [r6, #0]
	beq label117
	ldr r5, [r6, #-4]
label118:
	cmp r5, #0
	beq label80
	add r3, r3, #1
	b label77
label100:
	ldr r5, [sp, #8]
	add r3, r1, #6
	cmp r5, #0
	bne label101
label547:
	mov r1, r3
	b label94
label113:
	ldr r5, [sp, #4]
	add r1, r2, #6
	cmp r5, #0
	bne label82
	b label463
label529:
	mov r0, r2
	ldr r1, [sp, #32]
	mov r2, #0
	cmp r1, #0
	add r1, r0, #3
	movwne r2, #1
	mov r0, r2
	b label103
label101:
	ldr r5, [sp, #12]
	add r3, r1, #9
	cmp r5, #0
	bne label547
	add r1, r1, #12
	cmp r2, #0
	beq label103
	b label94
label226:
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	blt label2
	b label935
label108:
	ldr r5, [sp, #28]
	add r1, r1, #12
	cmp r5, #0
	bne label84
	add r1, r1, #3
	b label84
label17:
	add r5, r2, #6
	cmp r3, #6
	blt label919
	str r0, [sp, #20]
	ldr r6, [sp, #16]
	cmp r6, #0
	beq label919
	add r5, r2, #7
	cmp r3, #7
	blt label919
	str r0, [sp, #24]
	ldr r6, [sp, #20]
	cmp r6, #0
	beq label919
	add r5, r2, #8
	cmp r3, #8
	blt label919
	str r0, [sp, #28]
	ldr r6, [sp, #24]
	cmp r6, #0
	beq label919
	add r5, r2, #9
	cmp r3, #9
	blt label919
	str r0, [sp, #32]
	ldr r6, [sp, #28]
	cmp r6, #0
	beq label919
	add r6, r2, #10
	cmp r3, #10
	bge label309
	mov r5, r4
	b label27
label141:
	add r6, r2, #22
	cmp r3, #11
	blt label724
	str r4, [sp, #40]
	ldr r5, [sp, #36]
	b label143
label309:
	str r0, [sp, #36]
	ldr r5, [sp, #32]
label27:
	cmp r5, #0
	bne label29
label316:
	mov r2, r6
	b label68
label724:
	mov r5, r0
label143:
	cmp r5, #0
	bne label719
	add r6, r2, #24
	cmp r3, #12
	blt label736
	str r4, [sp, #44]
	ldr r5, [sp, #40]
	b label147
label736:
	mov r5, r0
label147:
	cmp r5, #0
	bne label719
	add r6, r2, #26
	cmp r3, #13
	blt label748
	str r4, [sp, #48]
	ldr r5, [sp, #44]
	b label151
label748:
	mov r5, r0
label151:
	cmp r5, #0
	bne label719
	add r6, r2, #28
	cmp r3, #14
	blt label760
	str r4, [sp, #52]
	ldr r5, [sp, #48]
	b label155
label760:
	mov r5, r0
label155:
	cmp r5, #0
	bne label719
	add r6, r2, #30
	cmp r3, #15
	bge label771
	mov r5, r0
label159:
	cmp r5, #0
	bne label719
	add r6, r2, #32
	cmp r3, #16
	bge label783
	mov r5, r0
	b label163
label783:
	str r4, [sp, #60]
	ldr r5, [sp, #56]
label163:
	cmp r5, #0
	bne label719
	add r6, r2, #34
	cmp r3, #17
	bge label795
	mov r5, r0
	b label167
label795:
	str r4, [sp, #64]
	ldr r5, [sp, #60]
label167:
	cmp r5, #0
	bne label719
	add r6, r2, #36
	cmp r3, #18
	bge label807
	mov r5, r0
	b label171
label807:
	str r4, [sp, #68]
	ldr r5, [sp, #64]
label171:
	cmp r5, #0
	bne label719
	add r6, r2, #38
	cmp r3, #19
	blt label820
	str r4, [sp, #72]
	ldr r5, [sp, #68]
label175:
	cmp r5, #0
	bne label719
	add r2, r2, #40
	cmp r3, #20
	blt label75
	str r4, [sp, #76]
	b label75
label29:
	add r6, r2, #11
	cmp r3, #11
	blt label322
	str r0, [sp, #40]
	ldr r5, [sp, #36]
label31:
	cmp r5, #0
	beq label316
	add r6, r2, #12
	cmp r3, #12
	blt label334
	str r0, [sp, #44]
	ldr r5, [sp, #40]
label35:
	cmp r5, #0
	beq label316
	add r6, r2, #13
	cmp r3, #13
	bge label345
	mov r5, r4
label38:
	cmp r5, #0
	beq label316
	add r6, r2, #14
	cmp r3, #14
	blt label355
	str r0, [sp, #52]
	ldr r5, [sp, #48]
label41:
	cmp r5, #0
	beq label316
	add r6, r2, #15
	cmp r3, #15
	bge label363
	mov r5, r4
label45:
	cmp r5, #0
	beq label316
	add r6, r2, #16
	cmp r3, #16
	bge label375
	mov r5, r4
label48:
	cmp r5, #0
	beq label316
	add r6, r2, #17
	cmp r3, #17
	bge label384
	mov r5, r4
label51:
	cmp r5, #0
	beq label316
	add r6, r2, #18
	cmp r3, #18
	bge label393
	mov r5, r4
label55:
	cmp r5, #0
	beq label316
	add r6, r2, #19
	cmp r3, #19
	blt label406
	str r0, [sp, #72]
	ldr r5, [sp, #68]
	b label58
label406:
	mov r5, r4
label58:
	cmp r5, #0
	beq label316
	add r2, r2, #20
	cmp r3, #20
	blt label68
	str r0, [sp, #76]
	b label68
label322:
	mov r5, r4
	b label31
label393:
	str r0, [sp, #68]
	ldr r5, [sp, #64]
	b label55
label384:
	str r0, [sp, #64]
	ldr r5, [sp, #60]
	b label51
label375:
	str r0, [sp, #60]
	ldr r5, [sp, #56]
	b label48
label363:
	str r0, [sp, #56]
	ldr r5, [sp, #52]
	b label45
label345:
	str r0, [sp, #48]
	ldr r5, [sp, #44]
	b label38
label355:
	mov r5, r4
	b label41
label334:
	mov r5, r4
	b label35
label771:
	str r4, [sp, #56]
	ldr r5, [sp, #52]
	b label159
label714:
	str r4, [sp, #36]
	ldr r5, [sp, #32]
	b label139
label820:
	mov r5, r0
	b label175
label117:
	ldr r5, [sp, #0]
	b label118
