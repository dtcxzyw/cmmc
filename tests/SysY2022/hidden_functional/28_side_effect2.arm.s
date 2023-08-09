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
	bne label7
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	bge label936
.p2align 4
label2:
	add r5, r2, #1
	cmp r3, #1
	bge label206
	movs r6, r4
	bne label7
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	blt label2
label936:
	mov r3, r4
	b label69
.p2align 4
label442:
	str r4, [sp, #0]
	movs r6, r4
	beq label932
.p2align 4
label447:
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	bge label922
.p2align 4
label69:
	add r5, r2, #2
	cmp r3, #1
	bge label442
	movs r6, r0
	bne label447
	add r5, r2, #4
	cmp r3, #2
	blt label452
	str r4, [sp, #4]
	ldr r6, [sp, #0]
	cmp r6, #0
	bne label459
label939:
	add r5, r2, #6
	cmp r3, #3
	blt label464
	b label924
.p2align 4
label7:
	add r5, r2, #2
	cmp r3, #2
	blt label216
	str r0, [sp, #4]
	ldr r6, [sp, #0]
	cmp r6, #0
	bne label10
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	blt label2
	b label936
.p2align 4
label216:
	movs r6, r4
	beq label219
.p2align 4
label10:
	add r5, r2, #3
	cmp r3, #3
	bge label224
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	blt label2
	b label936
.p2align 4
label452:
	movs r6, r0
	bne label459
	add r5, r2, #6
	cmp r3, #3
	bge label924
label464:
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	blt label69
	b label922
.p2align 4
label932:
	add r5, r2, #4
	cmp r3, #2
	blt label452
	str r4, [sp, #4]
	ldr r6, [sp, #0]
	cmp r6, #0
	beq label939
.p2align 4
label459:
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	blt label69
label922:
	mov r3, r0
label136:
	cmp r3, #20
	bge label146
	sub r5, r3, #1
	add r2, r2, #1
	cmp r3, r5
	ble label146
	add r6, r1, r5, lsl #2
	cmp r5, #0
	str r0, [r6, #0]
	bne label689
	ldr r5, [sp, #0]
	b label143
label224:
	str r0, [sp, #8]
	ldr r6, [sp, #4]
	cmp r6, #0
	beq label918
	add r5, r2, #4
	cmp r3, #4
	blt label918
	str r0, [sp, #12]
	ldr r6, [sp, #8]
	cmp r6, #0
	bne label14
label918:
	mov r2, r5
label67:
	add r3, r3, #1
	cmp r3, #20
	blt label2
	b label936
label924:
	str r4, [sp, #8]
	ldr r6, [sp, #4]
	cmp r6, #0
	bne label471
	add r5, r2, #8
	cmp r3, #4
	bge label81
label471:
	mov r2, r5
label134:
	add r3, r3, #1
	cmp r3, #20
	blt label69
	b label922
label146:
	ldr r3, [sp, #0]
	add r1, r2, #3
	cmp r3, #0
	bne label177
label705:
	ldr r5, [sp, #8]
	add r2, r1, #3
	add r1, r1, #6
	cmp r5, #0
	moveq r1, r2
label148:
	ldr r2, [sp, #16]
	add r5, r1, #3
	cmp r2, #0
	bne label172
	mov r1, r5
label150:
	ldr r6, [sp, #36]
	add r5, r1, #3
	cmp r6, #0
	bne label157
	mov r1, r5
label152:
	ldr r6, [sp, #44]
	add r5, r1, #3
	cmp r6, #0
	beq label727
	ldr r6, [sp, #48]
	add r5, r1, #6
	cmp r6, #0
	bne label155
label727:
	mov r1, r5
label158:
	add r5, r1, #3
	cmp r3, #0
	bne label166
	mov r1, r5
label160:
	ldr r3, [sp, #20]
	add r2, r1, #3
	cmp r3, #0
	bne label765
	ldr r3, [sp, #24]
	add r2, r1, #6
	cmp r3, #0
	beq label771
	ldr r2, [sp, #28]
	add r1, r1, #9
	cmp r2, #0
	beq label169
	mov r0, r1
	mov r2, #0
	ldr r1, [sp, #32]
	cmp r1, #0
	add r1, r0, #3
	movwne r2, #1
	mov r0, r2
	b label169
label81:
	str r4, [sp, #12]
	ldr r6, [sp, #8]
	cmp r6, #0
	bne label471
	add r5, r2, #10
	cmp r3, #5
	blt label471
	str r4, [sp, #16]
	ldr r6, [sp, #12]
	cmp r6, #0
	bne label471
	add r5, r2, #12
	cmp r3, #6
	blt label471
	str r4, [sp, #20]
	ldr r6, [sp, #16]
	cmp r6, #0
	bne label471
	add r5, r2, #14
	cmp r3, #7
	blt label471
	str r4, [sp, #24]
	ldr r6, [sp, #20]
	cmp r6, #0
	bne label471
	add r5, r2, #16
	cmp r3, #8
	blt label471
	str r4, [sp, #28]
	ldr r6, [sp, #24]
	cmp r6, #0
	bne label471
	add r5, r2, #18
	cmp r3, #9
	blt label471
	str r4, [sp, #32]
	ldr r6, [sp, #28]
	cmp r6, #0
	bne label471
	add r6, r2, #20
	cmp r3, #10
	bge label547
	mov r5, r0
	b label94
label172:
	ldr r6, [sp, #20]
	add r5, r1, #6
	cmp r6, #0
	bne label175
	mov r1, r5
label173:
	add r1, r1, #3
	b label150
label765:
	mov r1, r2
label169:
	add r0, r1, r0
	bl putint
	add sp, sp, #80
	mov r0, r4
	pop { r4, r5, r6, pc }
label689:
	ldr r5, [r6, #-4]
label143:
	cmp r5, #0
	beq label146
	add r3, r3, #1
	b label136
label157:
	ldr r5, [sp, #40]
	add r1, r1, #6
	cmp r5, #0
	beq label158
	b label152
label177:
	ldr r5, [sp, #4]
	add r1, r2, #6
	cmp r5, #0
	bne label148
	b label705
label166:
	ldr r5, [sp, #8]
	add r3, r1, #6
	cmp r5, #0
	beq label789
	ldr r5, [sp, #12]
	add r3, r1, #9
	cmp r5, #0
	bne label789
	add r1, r1, #12
	cmp r2, #0
	beq label169
	b label160
label771:
	mov r0, r2
	ldr r1, [sp, #32]
	mov r2, #0
	cmp r1, #0
	add r1, r0, #3
	movwne r2, #1
	mov r0, r2
	b label169
label155:
	ldr r6, [sp, #52]
	add r5, r1, #9
	cmp r6, #0
	beq label727
	ldr r5, [sp, #56]
	add r6, r1, #15
	cmp r5, #0
	add r5, r1, #12
	mov r1, r5
	movne r1, r6
	b label158
label14:
	add r5, r2, #5
	cmp r3, #5
	blt label918
	str r0, [sp, #16]
	ldr r6, [sp, #12]
	cmp r6, #0
	bne label16
	b label918
label219:
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	blt label2
	b label936
label789:
	mov r1, r3
	b label160
label175:
	ldr r6, [sp, #24]
	add r5, r1, #9
	cmp r6, #0
	beq label176
	add r1, r5, #3
	b label150
label176:
	ldr r5, [sp, #28]
	add r1, r1, #12
	cmp r5, #0
	bne label150
	b label173
label16:
	add r5, r2, #6
	cmp r3, #6
	blt label918
	str r0, [sp, #20]
	ldr r6, [sp, #16]
	cmp r6, #0
	beq label918
	add r5, r2, #7
	cmp r3, #7
	blt label918
	str r0, [sp, #24]
	ldr r6, [sp, #20]
	cmp r6, #0
	beq label918
	add r5, r2, #8
	cmp r3, #8
	blt label918
	str r0, [sp, #28]
	ldr r6, [sp, #24]
	cmp r6, #0
	beq label918
	add r5, r2, #9
	cmp r3, #9
	blt label918
	str r0, [sp, #32]
	ldr r6, [sp, #28]
	cmp r6, #0
	bne label24
	b label918
label547:
	str r4, [sp, #36]
	ldr r5, [sp, #32]
label94:
	cmp r5, #0
	bne label555
	add r6, r2, #22
	cmp r3, #11
	blt label560
	str r4, [sp, #40]
	ldr r5, [sp, #36]
	b label98
label24:
	add r6, r2, #10
	cmp r3, #10
	bge label308
	mov r5, r4
	b label25
label308:
	str r0, [sp, #36]
	ldr r5, [sp, #32]
label25:
	cmp r5, #0
	beq label312
	add r6, r2, #11
	cmp r3, #11
	blt label318
	str r0, [sp, #40]
	ldr r5, [sp, #36]
label28:
	cmp r5, #0
	bne label30
	b label312
label617:
	mov r5, r0
label117:
	cmp r5, #0
	bne label555
	add r6, r2, #34
	cmp r3, #17
	blt label629
	str r4, [sp, #64]
	ldr r5, [sp, #60]
label120:
	cmp r5, #0
	beq label122
label555:
	mov r2, r6
	b label134
label30:
	add r6, r2, #12
	cmp r3, #12
	bge label326
	mov r5, r4
label32:
	cmp r5, #0
	beq label312
	add r6, r2, #13
	cmp r3, #13
	blt label339
	str r0, [sp, #48]
	ldr r5, [sp, #44]
label36:
	cmp r5, #0
	bne label38
label312:
	mov r2, r6
	b label67
label122:
	add r6, r2, #36
	cmp r3, #18
	blt label638
	str r4, [sp, #68]
	ldr r5, [sp, #64]
	b label124
label638:
	mov r5, r0
label124:
	cmp r5, #0
	bne label555
	add r6, r2, #38
	cmp r3, #19
	blt label650
	str r4, [sp, #72]
	ldr r5, [sp, #68]
	b label128
label650:
	mov r5, r0
label128:
	cmp r5, #0
	bne label555
	add r2, r2, #40
	cmp r3, #20
	blt label134
	str r4, [sp, #76]
	b label134
label560:
	mov r5, r0
label98:
	cmp r5, #0
	bne label555
	add r6, r2, #24
	cmp r3, #12
	blt label572
	str r4, [sp, #44]
	ldr r5, [sp, #40]
label102:
	cmp r5, #0
	bne label555
	add r6, r2, #26
	cmp r3, #13
	blt label584
	str r4, [sp, #48]
	ldr r5, [sp, #44]
	b label106
label584:
	mov r5, r0
label106:
	cmp r5, #0
	bne label555
	add r6, r2, #28
	cmp r3, #14
	blt label596
	str r4, [sp, #52]
	ldr r5, [sp, #48]
label109:
	cmp r5, #0
	bne label555
	add r6, r2, #30
	cmp r3, #15
	blt label605
	str r4, [sp, #56]
	ldr r5, [sp, #52]
label113:
	cmp r5, #0
	bne label555
	add r6, r2, #32
	cmp r3, #16
	blt label617
	str r4, [sp, #60]
	ldr r5, [sp, #56]
	b label117
label38:
	add r6, r2, #14
	cmp r3, #14
	blt label351
	str r0, [sp, #52]
	ldr r5, [sp, #48]
	b label39
label351:
	mov r5, r4
label39:
	cmp r5, #0
	beq label312
	add r6, r2, #15
	cmp r3, #15
	blt label360
	str r0, [sp, #56]
	ldr r5, [sp, #52]
	b label42
label360:
	mov r5, r4
label42:
	cmp r5, #0
	beq label312
	add r6, r2, #16
	cmp r3, #16
	bge label368
	mov r5, r4
label46:
	cmp r5, #0
	beq label312
	add r6, r2, #17
	cmp r3, #17
	bge label380
	mov r5, r4
	b label50
label380:
	str r0, [sp, #64]
	ldr r5, [sp, #60]
label50:
	cmp r5, #0
	beq label312
	add r6, r2, #18
	cmp r3, #18
	bge label392
	mov r5, r4
label54:
	cmp r5, #0
	beq label312
	add r6, r2, #19
	cmp r3, #19
	bge label404
	mov r5, r4
	b label58
label404:
	str r0, [sp, #72]
	ldr r5, [sp, #68]
label58:
	cmp r5, #0
	beq label312
	add r2, r2, #20
	cmp r3, #20
	blt label67
	str r0, [sp, #76]
	b label67
label605:
	mov r5, r0
	b label113
label392:
	str r0, [sp, #68]
	ldr r5, [sp, #64]
	b label54
label368:
	str r0, [sp, #60]
	ldr r5, [sp, #56]
	b label46
label596:
	mov r5, r0
	b label109
label339:
	mov r5, r4
	b label36
label318:
	mov r5, r4
	b label28
label326:
	str r0, [sp, #44]
	ldr r5, [sp, #40]
	b label32
label572:
	mov r5, r0
	b label102
label629:
	mov r5, r0
	b label120
