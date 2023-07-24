.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, lr }
	mov r1, #0
	sub sp, sp, #84
	mov r2, r1
	str r1, [sp, #0]
	mov r0, sp
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #12]
	str r1, [r0, #16]
	str r1, [r0, #20]
	str r1, [r0, #24]
	str r1, [r0, #28]
	str r1, [r0, #32]
	str r1, [r0, #36]
	str r1, [r0, #40]
	str r1, [r0, #44]
	str r1, [r0, #48]
	str r1, [r0, #52]
	str r1, [r0, #56]
	str r1, [r0, #60]
	str r1, [r0, #64]
	str r1, [r0, #68]
	str r1, [r0, #72]
	str r1, [r0, #76]
.p2align 4
label2:
	cmp r2, #20
	blt label116
	mov r2, #0
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	bge label18
label11:
	sub r3, r2, #1
	add r1, r1, #1
	cmp r2, r3
	ble label18
	mov r4, #1
	cmp r3, #0
	str r4, [r0, r3, lsl #2]
	beq label223
	sub r3, r2, #2
	ldr r3, [r0, r3, lsl #2]
label14:
	cmp r3, #0
	bne label16
	b label18
.p2align 4
label116:
	add r3, r1, #1
	cmp r2, #1
	blt label600
	mov r4, #1
	str r4, [sp, #0]
	cmp r4, #0
	bne label119
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	mov r2, #0
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	blt label11
	b label18
label959:
	mov r1, r3
	add r2, r2, #1
	b label2
.p2align 4
label124:
	cmp r4, #0
	bne label126
	b label959
.p2align 4
label52:
	add r3, r1, #2
	cmp r2, #1
	blt label376
	mov r4, #0
	str r4, [sp, #0]
	cmp r4, #0
	bne label380
	add r3, r1, #4
	cmp r2, #2
	blt label386
	str r4, [r0, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	bne label392
	add r3, r1, #6
	cmp r2, #3
	blt label397
	mov r4, #0
	str r4, [r0, #8]
	ldr r4, [r0, #4]
	cmp r4, #0
	bne label380
	add r3, r1, #8
	cmp r2, #4
	blt label380
	mov r4, #0
	str r4, [r0, #12]
	ldr r4, [r0, #8]
	cmp r4, #0
	bne label380
	add r3, r1, #10
	cmp r2, #5
	blt label380
	mov r4, #0
	str r4, [r0, #16]
	ldr r4, [r0, #12]
	cmp r4, #0
	bne label380
	b label1087
.p2align 4
label376:
	mov r4, #1
	cmp r4, #0
	bne label380
	add r3, r1, #4
	cmp r2, #2
	blt label386
	mov r4, #0
	str r4, [r0, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	bne label392
	add r3, r1, #6
	cmp r2, #3
	blt label397
	mov r4, #0
	str r4, [r0, #8]
	ldr r4, [r0, #4]
	cmp r4, #0
	bne label380
	add r3, r1, #8
	cmp r2, #4
	blt label380
	mov r4, #0
	str r4, [r0, #12]
	ldr r4, [r0, #8]
	cmp r4, #0
	bne label380
	add r3, r1, #10
	cmp r2, #5
	blt label380
	mov r4, #0
	str r4, [r0, #16]
	ldr r4, [r0, #12]
	cmp r4, #0
	bne label380
	b label1059
.p2align 4
label1087:
	add r3, r1, #12
	cmp r2, #6
	blt label380
	b label1075
.p2align 4
label386:
	mov r4, #1
	cmp r4, #0
	bne label392
	add r3, r1, #6
	cmp r2, #3
	blt label397
	mov r4, #0
	str r4, [r0, #8]
	ldr r4, [r0, #4]
	cmp r4, #0
	bne label380
	add r3, r1, #8
	cmp r2, #4
	blt label380
	mov r4, #0
	str r4, [r0, #12]
	ldr r4, [r0, #8]
	cmp r4, #0
	bne label380
	add r3, r1, #10
	cmp r2, #5
	blt label380
	mov r4, #0
	str r4, [r0, #16]
	ldr r4, [r0, #12]
	cmp r4, #0
	bne label380
	add r3, r1, #12
	cmp r2, #6
	blt label380
	mov r4, #0
	str r4, [r0, #20]
	ldr r4, [r0, #16]
	cmp r4, #0
	bne label380
	b label1044
.p2align 4
label1059:
	add r3, r1, #12
	cmp r2, #6
	blt label380
.p2align 4
label1075:
	mov r4, #0
	str r4, [r0, #20]
	ldr r4, [r0, #16]
	cmp r4, #0
	bne label380
	b label1090
.p2align 4
label1044:
	add r3, r1, #14
	cmp r2, #7
	blt label380
	b label1061
.p2align 4
label1090:
	add r3, r1, #14
	cmp r2, #7
	blt label380
.p2align 4
label1061:
	mov r4, #0
	str r4, [r0, #24]
	ldr r4, [r0, #20]
	cmp r4, #0
	bne label380
	add r3, r1, #16
	cmp r2, #8
	blt label380
	mov r4, #0
	str r4, [r0, #28]
	ldr r4, [r0, #24]
	cmp r4, #0
	bne label380
	add r3, r1, #18
	cmp r2, #9
	blt label380
	mov r4, #0
	str r4, [r0, #32]
	ldr r4, [r0, #28]
	cmp r4, #0
	bne label380
	add r3, r1, #20
	cmp r2, #10
	blt label380
	mov r4, #0
	str r4, [r0, #36]
	ldr r4, [r0, #32]
	cmp r4, #0
	bne label380
	add r3, r1, #22
	cmp r2, #11
	blt label490
	b label1098
.p2align 4
label119:
	add r3, r1, #2
	cmp r2, #2
	blt label609
	mov r4, #1
	str r4, [r0, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	bne label122
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	mov r2, #0
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	blt label11
	b label18
.p2align 4
label609:
	mov r4, #0
	cmp r4, #0
	bne label122
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	mov r2, #0
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	blt label11
	b label18
.p2align 4
label122:
	add r3, r1, #3
	cmp r2, #3
	blt label618
	mov r4, #1
	str r4, [r0, #8]
	ldr r4, [r0, #4]
	cmp r4, #0
	bne label126
	b label959
label618:
	mov r4, #0
	b label124
label126:
	add r3, r1, #4
	cmp r2, #4
	blt label959
	mov r4, #1
	str r4, [r0, #12]
	ldr r4, [r0, #8]
	cmp r4, #0
	beq label959
	add r3, r1, #5
	cmp r2, #5
	blt label959
	mov r4, #1
	str r4, [r0, #16]
	ldr r4, [r0, #12]
	cmp r4, #0
	beq label959
	add r3, r1, #6
	cmp r2, #6
	blt label959
	mov r4, #1
	str r4, [r0, #20]
	ldr r4, [r0, #16]
	cmp r4, #0
	beq label959
	add r3, r1, #7
	cmp r2, #7
	blt label959
	mov r4, #1
	str r4, [r0, #24]
	ldr r4, [r0, #20]
	cmp r4, #0
	beq label959
	add r3, r1, #8
	cmp r2, #8
	blt label959
	mov r4, #1
	str r4, [r0, #28]
	ldr r4, [r0, #24]
	cmp r4, #0
	bne label136
	b label959
label18:
	ldr r2, [sp, #0]
	add r3, r1, #3
	cmp r2, #0
	bne label51
	mov r1, r3
	ldr r4, [r0, #8]
	add r3, r3, #3
	add r1, r1, #6
	cmp r4, #0
	moveq r1, r3
	b label20
label167:
	add r4, r1, #19
	cmp r2, #19
	blt label795
	mov r3, #1
	str r3, [r0, #72]
	ldr r3, [r0, #68]
	cmp r3, #0
	add r3, r1, #20
	mov r1, r4
	movne r1, r3
	add r2, r2, #1
	b label2
label795:
	mov r3, #0
	cmp r3, #0
	add r3, r1, #20
	mov r1, r4
	movne r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	mov r2, #0
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	blt label11
	b label18
label136:
	add r3, r1, #9
	cmp r2, #9
	blt label959
	mov r4, #1
	str r4, [r0, #32]
	ldr r4, [r0, #28]
	cmp r4, #0
	beq label959
	add r3, r1, #10
	cmp r2, #10
	blt label959
	mov r4, #1
	str r4, [r0, #36]
	ldr r4, [r0, #32]
	cmp r4, #0
	beq label959
	add r3, r1, #11
	cmp r2, #11
	bge label713
	mov r4, #0
	b label142
.p2align 4
label600:
	mov r4, #0
	cmp r4, #0
	bne label119
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	mov r2, #0
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	blt label11
	b label18
.p2align 4
label380:
	mov r1, r3
.p2align 4
label56:
	add r2, r2, #1
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	blt label11
	b label18
.p2align 4
label392:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	blt label11
	b label18
label397:
	mov r4, #1
	cmp r4, #0
	bne label380
	add r3, r1, #8
	cmp r2, #4
	blt label380
	mov r4, #0
	str r4, [r0, #12]
	ldr r4, [r0, #8]
	cmp r4, #0
	bne label380
	add r3, r1, #10
	cmp r2, #5
	blt label380
	mov r4, #0
	str r4, [r0, #16]
	ldr r4, [r0, #12]
	cmp r4, #0
	bne label380
	add r3, r1, #12
	cmp r2, #6
	blt label380
	mov r4, #0
	str r4, [r0, #20]
	ldr r4, [r0, #16]
	cmp r4, #0
	bne label380
	b label1044
label490:
	mov r4, #1
	b label80
label1098:
	mov r4, #0
	str r4, [r0, #40]
	ldr r4, [r0, #36]
label80:
	cmp r4, #0
	bne label380
	add r3, r1, #24
	cmp r2, #12
	blt label499
	mov r4, #0
	str r4, [r0, #44]
	ldr r4, [r0, #40]
	b label83
label499:
	mov r4, #1
label83:
	cmp r4, #0
	bne label380
	add r3, r1, #26
	cmp r2, #13
	blt label508
	mov r4, #0
	str r4, [r0, #48]
	ldr r4, [r0, #44]
	b label87
label508:
	mov r4, #1
label87:
	cmp r4, #0
	bne label380
	add r3, r1, #28
	cmp r2, #14
	blt label520
	mov r4, #0
	str r4, [r0, #52]
	ldr r4, [r0, #48]
	b label91
label520:
	mov r4, #1
label91:
	cmp r4, #0
	bne label380
	add r3, r1, #30
	cmp r2, #15
	blt label532
	mov r4, #0
	str r4, [r0, #56]
	ldr r4, [r0, #52]
	b label94
label532:
	mov r4, #1
label94:
	cmp r4, #0
	bne label380
	add r3, r1, #32
	cmp r2, #16
	blt label541
	mov r4, #0
	str r4, [r0, #60]
	ldr r4, [r0, #56]
	b label97
label541:
	mov r4, #1
label97:
	cmp r4, #0
	bne label380
	add r3, r1, #34
	cmp r2, #17
	blt label550
	mov r4, #0
	str r4, [r0, #64]
	ldr r4, [r0, #60]
	b label101
label550:
	mov r4, #1
label101:
	cmp r4, #0
	bne label380
	add r3, r1, #36
	cmp r2, #18
	blt label562
	mov r4, #0
	str r4, [r0, #68]
	ldr r4, [r0, #64]
	b label104
label562:
	mov r4, #1
label104:
	cmp r4, #0
	bne label380
	add r4, r1, #38
	cmp r2, #19
	blt label571
	mov r3, #0
	str r3, [r0, #72]
	ldr r3, [r0, #68]
	cmp r3, #0
	add r1, r1, #40
	movne r1, r4
	b label56
label571:
	mov r3, #1
	cmp r3, #0
	add r1, r1, #40
	movne r1, r4
	b label56
label49:
	ldr r4, [r0, #8]
	add r3, r1, #3
	add r1, r1, #6
	cmp r4, #0
	moveq r1, r3
	b label20
label51:
	ldr r3, [r0, #4]
	add r1, r1, #6
	cmp r3, #0
	beq label49
label20:
	ldr r3, [r0, #16]
	add r4, r1, #3
	cmp r3, #0
	bne label22
	mov r1, r4
	b label27
label22:
	ldr r5, [r0, #20]
	add r4, r1, #6
	cmp r5, #0
	bne label23
label252:
	mov r1, r4
	add r1, r4, #3
	b label27
label266:
	add r1, r1, #3
label27:
	ldr r5, [r0, #36]
	add r4, r1, #3
	cmp r5, #0
	bne label29
	mov r1, r4
	b label30
label8:
	cmp r2, #20
	blt label11
	b label18
label16:
	add r2, r2, #1
	b label8
label29:
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	beq label35
label30:
	ldr r5, [r0, #44]
	add r4, r1, #3
	cmp r5, #0
	bne label32
label289:
	mov r1, r4
	b label35
label32:
	ldr r5, [r0, #48]
	add r4, r1, #6
	cmp r5, #0
	beq label289
	ldr r5, [r0, #52]
	add r4, r1, #9
	cmp r5, #0
	beq label289
	ldr r4, [r0, #56]
	add r5, r1, #15
	cmp r4, #0
	add r4, r1, #12
	mov r1, r4
	movne r1, r5
label35:
	add r4, r1, #3
	cmp r2, #0
	bne label40
	mov r1, r4
	b label43
label42:
	add r1, r1, #12
	cmp r3, #0
	beq label333
label43:
	ldr r3, [r0, #20]
	add r2, r1, #3
	cmp r3, #0
	beq label45
	mov r0, r2
	mov r1, #1
	b label37
label45:
	ldr r3, [r0, #24]
	add r2, r1, #6
	cmp r3, #0
	bne label46
	mov r1, r2
	ldr r0, [r0, #32]
	mov r2, #0
	cmp r0, #0
	add r0, r1, #3
	movwne r2, #1
	mov r1, r2
label37:
	add r0, r0, r1
	bl putint
	add sp, sp, #84
	mov r0, #0
	pop { r4, r5, pc }
label353:
	ldr r0, [r0, #32]
	mov r2, #0
	cmp r0, #0
	add r0, r1, #3
	movwne r2, #1
	mov r1, r2
	b label37
label40:
	ldr r4, [r0, #8]
	add r2, r1, #6
	cmp r4, #0
	bne label41
label321:
	mov r1, r2
	b label43
label41:
	ldr r4, [r0, #12]
	add r2, r1, #9
	cmp r4, #0
	beq label42
	b label321
label23:
	ldr r5, [r0, #24]
	add r4, r1, #9
	cmp r5, #0
	bne label252
	ldr r4, [r0, #28]
	add r1, r1, #12
	cmp r4, #0
	bne label27
	b label266
label333:
	mov r0, r1
	mov r1, #1
	b label37
label46:
	ldr r2, [r0, #28]
	add r1, r1, #9
	cmp r2, #0
	beq label333
	b label353
label223:
	ldr r3, [sp, #0]
	b label14
label713:
	mov r4, #1
	str r4, [r0, #40]
	ldr r4, [r0, #36]
label142:
	cmp r4, #0
	beq label959
	add r3, r1, #12
	cmp r2, #12
	bge label725
	mov r4, #0
	b label145
label725:
	mov r4, #1
	str r4, [r0, #44]
	ldr r4, [r0, #40]
label145:
	cmp r4, #0
	beq label959
	add r3, r1, #13
	cmp r2, #13
	blt label735
	mov r4, #1
	str r4, [r0, #48]
	ldr r4, [r0, #44]
	b label148
label735:
	mov r4, #0
label148:
	cmp r4, #0
	beq label959
	add r3, r1, #14
	cmp r2, #14
	blt label744
	mov r4, #1
	str r4, [r0, #52]
	ldr r4, [r0, #48]
	b label152
label744:
	mov r4, #0
label152:
	cmp r4, #0
	beq label959
	add r3, r1, #15
	cmp r2, #15
	blt label756
	mov r4, #1
	str r4, [r0, #56]
	ldr r4, [r0, #52]
	b label156
label756:
	mov r4, #0
label156:
	cmp r4, #0
	beq label959
	add r3, r1, #16
	cmp r2, #16
	bge label767
	mov r4, #0
	b label159
label767:
	mov r4, #1
	str r4, [r0, #60]
	ldr r4, [r0, #56]
label159:
	cmp r4, #0
	beq label959
	add r3, r1, #17
	cmp r2, #17
	blt label777
	mov r4, #1
	str r4, [r0, #64]
	ldr r4, [r0, #60]
	b label162
label777:
	mov r4, #0
label162:
	cmp r4, #0
	beq label959
	add r3, r1, #18
	cmp r2, #18
	blt label786
	mov r4, #1
	str r4, [r0, #68]
	ldr r4, [r0, #64]
	b label165
label786:
	mov r4, #0
label165:
	cmp r4, #0
	bne label167
	b label959
