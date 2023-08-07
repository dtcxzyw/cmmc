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
	bge label205
	movs r6, r4
	bne label121
.p2align 4
label209:
	mov r2, r5
.p2align 4
label7:
	add r3, r3, #1
	cmp r3, #20
	blt label2
	b label934
.p2align 4
label121:
	add r5, r2, #2
	cmp r3, #2
	bge label618
	movs r6, r4
	beq label919
.p2align 4
label125:
	add r5, r2, #3
	cmp r3, #3
	bge label629
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	blt label2
	b label934
.p2align 4
label205:
	str r0, [sp, #0]
	movs r6, r0
	bne label121
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	blt label2
	b label934
.p2align 4
label618:
	str r0, [sp, #4]
	ldr r6, [sp, #0]
	cmp r6, #0
	bne label125
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	blt label2
	b label934
label629:
	str r0, [sp, #8]
	ldr r6, [sp, #4]
	cmp r6, #0
	beq label209
	add r5, r2, #4
	cmp r3, #4
	blt label209
	str r0, [sp, #12]
	ldr r6, [sp, #8]
	cmp r6, #0
	bne label129
	b label209
label934:
	mov r3, r4
.p2align 4
label9:
	add r5, r2, #2
	cmp r3, #1
	blt label220
	b label219
label931:
	str r4, [sp, #4]
	ldr r6, [sp, #0]
	cmp r6, #0
	bne label404
label932:
	add r5, r2, #6
	cmp r3, #3
	blt label409
	b label914
.p2align 4
label224:
	mov r2, r5
.p2align 4
label14:
	add r3, r3, #1
	cmp r3, #20
	blt label9
label228:
	mov r3, r0
label16:
	cmp r3, #20
	bge label19
	sub r5, r3, #1
	add r2, r2, #1
	cmp r3, r5
	ble label19
	b label54
label914:
	str r4, [sp, #8]
	ldr r6, [sp, #4]
	cmp r6, #0
	bne label224
	add r5, r2, #8
	cmp r3, #4
	blt label224
	str r4, [sp, #12]
	ldr r6, [sp, #8]
	cmp r6, #0
	bne label224
	add r5, r2, #10
	cmp r3, #5
	blt label224
	str r4, [sp, #16]
	ldr r6, [sp, #12]
	cmp r6, #0
	bne label224
	add r5, r2, #12
	cmp r3, #6
	blt label224
	str r4, [sp, #20]
	ldr r6, [sp, #16]
	cmp r6, #0
	bne label224
	add r5, r2, #14
	cmp r3, #7
	blt label224
	str r4, [sp, #24]
	ldr r6, [sp, #20]
	cmp r6, #0
	bne label224
	add r5, r2, #16
	cmp r3, #8
	blt label224
	str r4, [sp, #28]
	ldr r6, [sp, #24]
	cmp r6, #0
	bne label224
	add r5, r2, #18
	cmp r3, #9
	blt label224
	str r4, [sp, #32]
	ldr r6, [sp, #28]
	cmp r6, #0
	bne label224
	add r6, r2, #20
	cmp r3, #10
	blt label493
	str r4, [sp, #36]
	ldr r5, [sp, #32]
	b label80
.p2align 4
label220:
	movs r6, r0
	bne label224
	add r5, r2, #4
	cmp r3, #2
	blt label398
	str r4, [sp, #4]
	ldr r6, [sp, #0]
	cmp r6, #0
	beq label932
.p2align 4
label404:
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	blt label9
	b label228
.p2align 4
label219:
	str r4, [sp, #0]
	movs r6, r4
	bne label224
	add r5, r2, #4
	cmp r3, #2
	bge label931
.p2align 4
label398:
	movs r6, r0
	bne label404
	add r5, r2, #6
	cmp r3, #3
	bge label914
label409:
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	blt label9
	b label228
label19:
	ldr r3, [sp, #0]
	add r1, r2, #3
	cmp r3, #0
	bne label52
label238:
	ldr r5, [sp, #8]
	add r2, r1, #3
	add r1, r1, #6
	cmp r5, #0
	moveq r1, r2
label21:
	ldr r2, [sp, #16]
	add r5, r1, #3
	cmp r2, #0
	bne label45
	mov r1, r5
label23:
	ldr r6, [sp, #36]
	add r5, r1, #3
	cmp r6, #0
	beq label252
	ldr r5, [sp, #40]
	add r1, r1, #6
	cmp r5, #0
	beq label26
	b label40
label52:
	ldr r5, [sp, #4]
	add r1, r2, #6
	cmp r5, #0
	bne label21
	b label238
label252:
	mov r1, r5
	b label40
label26:
	add r5, r1, #3
	cmp r3, #0
	bne label31
	b label263
label40:
	ldr r6, [sp, #44]
	add r5, r1, #3
	cmp r6, #0
	bne label42
label316:
	mov r1, r5
	b label26
label263:
	mov r1, r5
label34:
	ldr r3, [sp, #20]
	add r2, r1, #3
	cmp r3, #0
	bne label291
	ldr r3, [sp, #24]
	add r2, r1, #6
	cmp r3, #0
	beq label297
	ldr r2, [sp, #28]
	add r1, r1, #9
	cmp r2, #0
	beq label28
	mov r0, r1
	mov r2, #0
	ldr r1, [sp, #32]
	cmp r1, #0
	add r1, r0, #3
	movwne r2, #1
	mov r0, r2
	b label28
label45:
	ldr r6, [sp, #20]
	add r5, r1, #6
	cmp r6, #0
	beq label342
	ldr r6, [sp, #24]
	add r5, r1, #9
	cmp r6, #0
	bne label350
	ldr r5, [sp, #28]
	add r1, r1, #12
	cmp r5, #0
	bne label23
	b label46
label28:
	add r0, r1, r0
	bl putint
	add sp, sp, #80
	mov r0, r4
	pop { r4, r5, r6, pc }
label291:
	mov r1, r2
	b label28
label42:
	ldr r6, [sp, #48]
	add r5, r1, #6
	cmp r6, #0
	beq label316
	ldr r6, [sp, #52]
	add r5, r1, #9
	cmp r6, #0
	beq label316
	ldr r5, [sp, #56]
	add r6, r1, #15
	cmp r5, #0
	add r5, r1, #12
	mov r1, r5
	movne r1, r6
	b label26
label54:
	str r0, [r1, r5, lsl #2]
	cmp r5, #0
	beq label55
	sub r5, r3, #2
	ldr r5, [r1, r5, lsl #2]
	b label57
label55:
	ldr r5, [sp, #0]
label57:
	cmp r5, #0
	beq label19
	add r3, r3, #1
	b label16
label31:
	ldr r5, [sp, #8]
	add r3, r1, #6
	cmp r5, #0
	beq label272
	ldr r5, [sp, #12]
	add r3, r1, #9
	cmp r5, #0
	bne label272
	add r1, r1, #12
	cmp r2, #0
	beq label28
	b label34
label342:
	mov r1, r5
label46:
	add r1, r1, #3
	b label23
label297:
	mov r0, r2
	ldr r1, [sp, #32]
	mov r2, #0
	cmp r1, #0
	add r1, r0, #3
	movwne r2, #1
	mov r0, r2
	b label28
label129:
	add r5, r2, #5
	cmp r3, #5
	blt label209
	str r0, [sp, #16]
	ldr r6, [sp, #12]
	cmp r6, #0
	bne label131
	b label209
label272:
	mov r1, r3
	b label34
label919:
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	blt label2
	b label934
label131:
	add r5, r2, #6
	cmp r3, #6
	blt label209
	str r0, [sp, #20]
	ldr r6, [sp, #16]
	cmp r6, #0
	beq label209
	add r5, r2, #7
	cmp r3, #7
	blt label209
	str r0, [sp, #24]
	ldr r6, [sp, #20]
	cmp r6, #0
	beq label209
	add r5, r2, #8
	cmp r3, #8
	blt label209
	str r0, [sp, #28]
	ldr r6, [sp, #24]
	cmp r6, #0
	beq label209
	add r5, r2, #9
	cmp r3, #9
	blt label209
	str r0, [sp, #32]
	ldr r6, [sp, #28]
	cmp r6, #0
	beq label209
	add r6, r2, #10
	cmp r3, #10
	bge label713
	mov r5, r4
	b label140
label493:
	mov r5, r0
label80:
	cmp r5, #0
	bne label500
	add r6, r2, #22
	cmp r3, #11
	bge label504
	mov r5, r0
label83:
	cmp r5, #0
	bne label500
	add r6, r2, #24
	cmp r3, #12
	blt label514
	str r4, [sp, #44]
	ldr r5, [sp, #40]
	b label87
label713:
	str r0, [sp, #36]
	ldr r5, [sp, #32]
label140:
	cmp r5, #0
	bne label142
label717:
	mov r2, r6
	b label7
label142:
	add r6, r2, #11
	cmp r3, #11
	bge label722
	mov r5, r4
label144:
	cmp r5, #0
	beq label717
	add r6, r2, #12
	cmp r3, #12
	bge label734
	mov r5, r4
label148:
	cmp r5, #0
	bne label150
	b label717
label500:
	mov r2, r6
	b label14
label514:
	mov r5, r0
label87:
	cmp r5, #0
	bne label500
	add r6, r2, #26
	cmp r3, #13
	bge label525
	mov r5, r0
	b label91
label525:
	str r4, [sp, #48]
	ldr r5, [sp, #44]
label91:
	cmp r5, #0
	bne label500
	add r6, r2, #28
	cmp r3, #14
	blt label538
	str r4, [sp, #52]
	ldr r5, [sp, #48]
label95:
	cmp r5, #0
	bne label500
	add r6, r2, #30
	cmp r3, #15
	bge label549
	mov r5, r0
	b label99
label549:
	str r4, [sp, #56]
	ldr r5, [sp, #52]
label99:
	cmp r5, #0
	bne label500
	add r6, r2, #32
	cmp r3, #16
	blt label562
	str r4, [sp, #60]
	ldr r5, [sp, #56]
	b label102
label562:
	mov r5, r0
label102:
	cmp r5, #0
	bne label500
	add r6, r2, #34
	cmp r3, #17
	bge label570
	mov r5, r0
label106:
	cmp r5, #0
	bne label500
	add r6, r2, #36
	cmp r3, #18
	blt label583
	str r4, [sp, #68]
	ldr r5, [sp, #64]
label110:
	cmp r5, #0
	bne label500
	add r6, r2, #38
	cmp r3, #19
	blt label595
	str r4, [sp, #72]
	ldr r5, [sp, #68]
label114:
	cmp r5, #0
	bne label500
	add r2, r2, #40
	cmp r3, #20
	blt label14
	str r4, [sp, #76]
	b label14
label150:
	add r6, r2, #13
	cmp r3, #13
	blt label747
	str r0, [sp, #48]
	ldr r5, [sp, #44]
	b label152
label747:
	mov r5, r4
label152:
	cmp r5, #0
	beq label717
	add r6, r2, #14
	cmp r3, #14
	blt label759
	str r0, [sp, #52]
	ldr r5, [sp, #48]
	b label155
label759:
	mov r5, r4
label155:
	cmp r5, #0
	beq label717
	add r6, r2, #15
	cmp r3, #15
	blt label768
	str r0, [sp, #56]
	ldr r5, [sp, #52]
	b label159
label768:
	mov r5, r4
label159:
	cmp r5, #0
	beq label717
	add r6, r2, #16
	cmp r3, #16
	blt label780
	str r0, [sp, #60]
	ldr r5, [sp, #56]
label162:
	cmp r5, #0
	beq label717
	add r6, r2, #17
	cmp r3, #17
	blt label789
	str r0, [sp, #64]
	ldr r5, [sp, #60]
label166:
	cmp r5, #0
	beq label717
	add r6, r2, #18
	cmp r3, #18
	bge label800
	mov r5, r4
	b label170
label800:
	str r0, [sp, #68]
	ldr r5, [sp, #64]
label170:
	cmp r5, #0
	beq label717
	add r6, r2, #19
	cmp r3, #19
	blt label813
	str r0, [sp, #72]
	ldr r5, [sp, #68]
label174:
	cmp r5, #0
	beq label717
	add r2, r2, #20
	cmp r3, #20
	blt label7
	str r0, [sp, #76]
	b label7
label595:
	mov r5, r0
	b label114
label722:
	str r0, [sp, #40]
	ldr r5, [sp, #36]
	b label144
label813:
	mov r5, r4
	b label174
label789:
	mov r5, r4
	b label166
label780:
	mov r5, r4
	b label162
label570:
	str r4, [sp, #64]
	ldr r5, [sp, #60]
	b label106
label538:
	mov r5, r0
	b label95
label734:
	str r0, [sp, #44]
	ldr r5, [sp, #40]
	b label148
label504:
	str r4, [sp, #40]
	ldr r5, [sp, #36]
	b label83
label583:
	mov r5, r0
	b label110
label350:
	add r1, r5, #3
	b label23
