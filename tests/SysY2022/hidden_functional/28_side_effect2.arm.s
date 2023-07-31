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
	str r1, [sp, #0]
	mov r2, r1
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
label116:
	add r3, r1, #1
	cmp r2, #1
	blt label600
	mov r4, #1
	str r4, [sp, #0]
	cmp r4, #0
	bne label121
	b label916
.p2align 4
label603:
	mov r1, r3
.p2align 4
label119:
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label202
.p2align 4
label124:
	add r3, r1, #3
	cmp r2, #3
	bge label618
	mov r4, #0
	cmp r4, #0
	beq label622
label127:
	add r3, r1, #4
	cmp r2, #4
	blt label628
	mov r4, #1
	str r4, [sp, #12]
	ldr r4, [sp, #8]
	cmp r4, #0
	bne label129
	b label603
.p2align 4
label600:
	mov r4, #0
	cmp r4, #0
	beq label603
.p2align 4
label121:
	add r3, r1, #2
	cmp r2, #2
	blt label610
	mov r4, #1
	str r4, [sp, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	bne label124
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label202
.p2align 4
label610:
	mov r4, #0
	cmp r4, #0
	bne label124
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label202
label618:
	mov r4, #1
	str r4, [sp, #8]
	ldr r4, [sp, #4]
	cmp r4, #0
	bne label127
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
label202:
	mov r2, #0
	cmp r2, #20
	blt label52
label206:
	mov r3, #1
label8:
	cmp r3, #20
	bge label11
	sub r2, r3, #1
	add r1, r1, #1
	cmp r3, r2
	ble label11
	b label46
.p2align 4
label52:
	add r3, r1, #2
	cmp r2, #1
	blt label376
	mov r4, #0
	str r4, [sp, #0]
	cmp r4, #0
	beq label908
.p2align 4
label380:
	mov r1, r3
.p2align 4
label56:
	add r2, r2, #1
	cmp r2, #20
	blt label52
	b label206
.p2align 4
label376:
	mov r4, #1
	cmp r4, #0
	bne label380
	add r3, r1, #4
	cmp r2, #2
	blt label386
	mov r4, #0
	str r4, [sp, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	bne label392
	add r3, r1, #6
	cmp r2, #3
	blt label397
	b label897
.p2align 4
label908:
	add r3, r1, #4
	cmp r2, #2
	blt label386
	mov r4, #0
	str r4, [sp, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	beq label926
.p2align 4
label392:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label52
	b label206
.p2align 4
label386:
	mov r4, #1
	cmp r4, #0
	bne label392
	add r3, r1, #6
	cmp r2, #3
	blt label397
	mov r4, #0
	str r4, [sp, #8]
	ldr r4, [sp, #4]
	cmp r4, #0
	beq label403
label404:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label52
	b label206
label926:
	add r3, r1, #6
	cmp r2, #3
	bge label897
label397:
	mov r4, #1
	cmp r4, #0
	bne label404
	add r3, r1, #8
	cmp r2, #4
	blt label409
	b label900
label897:
	mov r4, #0
	str r4, [sp, #8]
	ldr r4, [sp, #4]
	cmp r4, #0
	bne label404
label403:
	add r3, r1, #8
	cmp r2, #4
	blt label409
label900:
	mov r4, #0
	str r4, [sp, #12]
	ldr r4, [sp, #8]
	cmp r4, #0
	bne label380
	add r3, r1, #10
	cmp r2, #5
	blt label380
	mov r4, #0
	str r4, [sp, #16]
	ldr r4, [sp, #12]
	cmp r4, #0
	bne label380
	add r3, r1, #12
	cmp r2, #6
	blt label380
	mov r4, #0
	str r4, [sp, #20]
	ldr r4, [sp, #16]
	cmp r4, #0
	bne label380
	add r3, r1, #14
	cmp r2, #7
	blt label380
	mov r4, #0
	str r4, [sp, #24]
	ldr r4, [sp, #20]
	cmp r4, #0
	bne label380
	add r3, r1, #16
	cmp r2, #8
	blt label380
	mov r4, #0
	str r4, [sp, #28]
	ldr r4, [sp, #24]
	cmp r4, #0
	bne label380
	add r3, r1, #18
	cmp r2, #9
	blt label380
	mov r4, #0
	str r4, [sp, #32]
	ldr r4, [sp, #28]
	cmp r4, #0
	bne label380
	add r3, r1, #20
	cmp r2, #10
	blt label380
	mov r4, #0
	str r4, [sp, #36]
	ldr r4, [sp, #32]
	cmp r4, #0
	bne label380
	add r3, r1, #22
	cmp r2, #11
	bge label492
	mov r4, #1
	b label81
label11:
	ldr r2, [sp, #0]
	add r0, r1, #3
	cmp r2, #0
	bne label13
label216:
	ldr r3, [sp, #8]
	add r1, r0, #3
	add r0, r0, #6
	cmp r3, #0
	moveq r0, r1
	b label16
label13:
	ldr r3, [sp, #4]
	add r0, r1, #6
	cmp r3, #0
	beq label216
label16:
	ldr r1, [sp, #16]
	add r3, r0, #3
	cmp r1, #0
	bne label18
	mov r0, r3
label23:
	ldr r4, [sp, #36]
	add r3, r0, #3
	cmp r4, #0
	bne label44
	mov r0, r3
	b label39
label25:
	add r3, r0, #3
	cmp r2, #0
	bne label27
	b label269
label39:
	ldr r4, [sp, #44]
	add r3, r0, #3
	cmp r4, #0
	bne label41
label322:
	mov r0, r3
	b label25
label129:
	add r3, r1, #5
	cmp r2, #5
	blt label603
	mov r4, #1
	str r4, [sp, #16]
	ldr r4, [sp, #12]
	cmp r4, #0
	bne label131
	b label603
label269:
	mov r0, r3
label30:
	ldr r2, [sp, #20]
	add r1, r0, #3
	cmp r2, #0
	bne label295
	ldr r2, [sp, #24]
	add r1, r0, #6
	cmp r2, #0
	beq label301
	ldr r1, [sp, #28]
	add r0, r0, #9
	cmp r1, #0
	beq label288
	b label33
label18:
	ldr r4, [sp, #20]
	add r3, r0, #6
	cmp r4, #0
	beq label243
	ldr r4, [sp, #24]
	add r3, r0, #9
	cmp r4, #0
	bne label251
	ldr r3, [sp, #28]
	add r0, r0, #12
	cmp r3, #0
	bne label23
	b label19
label295:
	mov r0, r1
	mov r1, #1
label36:
	add r0, r0, r1
	bl putint
	add sp, sp, #80
	mov r0, #0
	pop { r4, pc }
label41:
	ldr r4, [sp, #48]
	add r3, r0, #6
	cmp r4, #0
	beq label322
	ldr r4, [sp, #52]
	add r3, r0, #9
	cmp r4, #0
	beq label322
	ldr r3, [sp, #56]
	add r4, r0, #15
	cmp r3, #0
	add r3, r0, #12
	mov r0, r3
	movne r0, r4
	b label25
label46:
	mov r4, #1
	cmp r2, #0
	str r4, [r0, r2, lsl #2]
	beq label47
	sub r2, r3, #2
	ldr r2, [r0, r2, lsl #2]
	b label49
label47:
	ldr r2, [sp, #0]
label49:
	cmp r2, #0
	beq label11
	add r3, r3, #1
	b label8
label27:
	ldr r3, [sp, #8]
	add r2, r0, #6
	cmp r3, #0
	bne label28
label276:
	mov r0, r2
	b label30
label28:
	ldr r3, [sp, #12]
	add r2, r0, #9
	cmp r3, #0
	beq label29
	b label276
label44:
	ldr r3, [sp, #40]
	add r0, r0, #6
	cmp r3, #0
	beq label25
	b label39
label243:
	mov r0, r3
label19:
	add r0, r0, #3
	b label23
.p2align 4
label916:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label202
label301:
	mov r0, r1
label33:
	ldr r1, [sp, #32]
	add r0, r0, #3
	cmp r1, #0
	mov r1, #0
	movwne r1, #1
	b label36
label131:
	add r3, r1, #6
	cmp r2, #6
	blt label603
	mov r4, #1
	str r4, [sp, #20]
	ldr r4, [sp, #16]
	cmp r4, #0
	bne label133
	b label603
label29:
	add r0, r0, #12
	cmp r1, #0
	beq label288
	b label30
label409:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label52
	b label206
label622:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label202
label628:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label202
label133:
	add r3, r1, #7
	cmp r2, #7
	blt label603
	mov r4, #1
	str r4, [sp, #24]
	ldr r4, [sp, #20]
	cmp r4, #0
	beq label603
	add r3, r1, #8
	cmp r2, #8
	blt label603
	mov r4, #1
	str r4, [sp, #28]
	ldr r4, [sp, #24]
	cmp r4, #0
	beq label603
	add r3, r1, #9
	cmp r2, #9
	blt label603
	mov r4, #1
	str r4, [sp, #32]
	ldr r4, [sp, #28]
	cmp r4, #0
	beq label603
	add r3, r1, #10
	cmp r2, #10
	blt label603
	mov r4, #1
	str r4, [sp, #36]
	ldr r4, [sp, #32]
	cmp r4, #0
	bne label141
	b label603
label492:
	mov r4, #0
	str r4, [sp, #40]
	ldr r4, [sp, #36]
label81:
	cmp r4, #0
	bne label380
	add r3, r1, #24
	cmp r2, #12
	blt label502
	mov r4, #0
	str r4, [sp, #44]
	ldr r4, [sp, #40]
	b label84
label141:
	add r3, r1, #11
	cmp r2, #11
	bge label711
	mov r4, #0
	b label143
label711:
	mov r4, #1
	str r4, [sp, #40]
	ldr r4, [sp, #36]
label143:
	cmp r4, #0
	beq label603
	add r3, r1, #12
	cmp r2, #12
	blt label724
	mov r4, #1
	str r4, [sp, #44]
	ldr r4, [sp, #40]
	b label147
label502:
	mov r4, #1
label84:
	cmp r4, #0
	bne label380
	add r3, r1, #26
	cmp r2, #13
	blt label511
	mov r4, #0
	str r4, [sp, #48]
	ldr r4, [sp, #44]
	b label87
label724:
	mov r4, #0
label147:
	cmp r4, #0
	bne label149
	b label603
label511:
	mov r4, #1
label87:
	cmp r4, #0
	bne label380
	add r3, r1, #28
	cmp r2, #14
	bge label519
	mov r4, #1
label91:
	cmp r4, #0
	bne label380
	add r3, r1, #30
	cmp r2, #15
	bge label531
	mov r4, #1
	b label94
label149:
	add r3, r1, #13
	cmp r2, #13
	bge label735
	mov r4, #0
	b label151
label735:
	mov r4, #1
	str r4, [sp, #48]
	ldr r4, [sp, #44]
label151:
	cmp r4, #0
	beq label603
	add r3, r1, #14
	cmp r2, #14
	blt label748
	mov r4, #1
	str r4, [sp, #52]
	ldr r4, [sp, #48]
	b label155
label748:
	mov r4, #0
label155:
	cmp r4, #0
	bne label157
	b label603
label531:
	mov r4, #0
	str r4, [sp, #56]
	ldr r4, [sp, #52]
label94:
	cmp r4, #0
	bne label380
	add r3, r1, #32
	cmp r2, #16
	blt label541
	mov r4, #0
	str r4, [sp, #60]
	ldr r4, [sp, #56]
label97:
	cmp r4, #0
	bne label380
	add r3, r1, #34
	cmp r2, #17
	blt label550
	mov r4, #0
	str r4, [sp, #64]
	ldr r4, [sp, #60]
	b label100
label157:
	add r3, r1, #15
	cmp r2, #15
	blt label760
	mov r4, #1
	str r4, [sp, #56]
	ldr r4, [sp, #52]
	b label159
label760:
	mov r4, #0
label159:
	cmp r4, #0
	beq label603
	add r3, r1, #16
	cmp r2, #16
	blt label772
	mov r4, #1
	str r4, [sp, #60]
	ldr r4, [sp, #56]
	b label163
label772:
	mov r4, #0
label163:
	cmp r4, #0
	bne label165
	b label603
label550:
	mov r4, #1
label100:
	cmp r4, #0
	bne label380
	add r3, r1, #36
	cmp r2, #18
	bge label558
	mov r4, #1
	b label103
label165:
	add r3, r1, #17
	cmp r2, #17
	bge label783
	mov r4, #0
	b label167
label783:
	mov r4, #1
	str r4, [sp, #64]
	ldr r4, [sp, #60]
label167:
	cmp r4, #0
	beq label603
	add r3, r1, #18
	cmp r2, #18
	bge label795
	mov r4, #0
	b label171
label558:
	mov r4, #0
	str r4, [sp, #68]
	ldr r4, [sp, #64]
label103:
	cmp r4, #0
	bne label380
	add r4, r1, #38
	cmp r2, #19
	bge label567
	mov r3, #1
	cmp r3, #0
	add r1, r1, #40
	movne r1, r4
	b label56
label795:
	mov r4, #1
	str r4, [sp, #68]
	ldr r4, [sp, #64]
label171:
	cmp r4, #0
	beq label603
	add r4, r1, #19
	cmp r2, #19
	bge label807
	mov r3, #0
	cmp r3, #0
	add r3, r1, #20
	mov r1, r4
	movne r1, r3
	b label119
label288:
	mov r1, #1
	b label36
label567:
	mov r3, #0
	str r3, [sp, #72]
	ldr r3, [sp, #68]
	cmp r3, #0
	add r1, r1, #40
	movne r1, r4
	b label56
label807:
	mov r3, #1
	str r3, [sp, #72]
	ldr r3, [sp, #68]
	cmp r3, #0
	add r3, r1, #20
	mov r1, r4
	movne r1, r3
	b label119
label541:
	mov r4, #1
	b label97
label519:
	mov r4, #0
	str r4, [sp, #52]
	ldr r4, [sp, #48]
	b label91
label251:
	mov r0, r3
	add r0, r3, #3
	b label23
