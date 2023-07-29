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
	sub sp, sp, #84
	mov r1, #0
	mov r0, sp
	mov r2, r1
	str r1, [sp, #0]
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
	blt label5
	mov r2, #0
	cmp r2, #20
	blt label116
	mov r2, #1
	cmp r2, #20
	blt label109
	b label75
label938:
	mov r1, r3
	add r2, r2, #1
	b label2
.p2align 4
label13:
	cmp r4, #0
	bne label15
	b label938
.p2align 4
label5:
	add r3, r1, #1
	cmp r2, #1
	blt label208
	mov r4, #1
	str r4, [sp, #0]
	cmp r4, #0
	bne label8
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label5
	mov r2, #0
	cmp r2, #20
	blt label116
	mov r2, #1
	cmp r2, #20
	blt label109
	b label75
.p2align 4
label208:
	mov r4, #0
	cmp r4, #0
	bne label8
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label5
	mov r2, #0
	cmp r2, #20
	blt label116
	mov r2, #1
	cmp r2, #20
	blt label109
	b label75
.p2align 4
label69:
	cmp r2, #20
	blt label116
	mov r2, #1
	cmp r2, #20
	blt label109
	b label75
.p2align 4
label116:
	add r3, r1, #2
	cmp r2, #1
	blt label600
	mov r4, #0
	str r4, [sp, #0]
	cmp r4, #0
	bne label604
	add r3, r1, #4
	cmp r2, #2
	blt label609
	str r4, [r0, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	bne label615
	add r3, r1, #6
	cmp r2, #3
	blt label620
	mov r4, #0
	str r4, [r0, #8]
	ldr r4, [r0, #4]
	cmp r4, #0
	bne label627
	add r3, r1, #8
	cmp r2, #4
	blt label627
	mov r4, #0
	str r4, [r0, #12]
	ldr r4, [r0, #8]
	cmp r4, #0
	bne label627
	add r3, r1, #10
	cmp r2, #5
	blt label627
	mov r4, #0
	str r4, [r0, #16]
	ldr r4, [r0, #12]
	cmp r4, #0
	bne label627
	b label1086
.p2align 4
label600:
	mov r4, #1
	cmp r4, #0
	bne label604
	add r3, r1, #4
	cmp r2, #2
	blt label609
	mov r4, #0
	str r4, [r0, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	bne label615
	add r3, r1, #6
	cmp r2, #3
	blt label620
	mov r4, #0
	str r4, [r0, #8]
	ldr r4, [r0, #4]
	cmp r4, #0
	bne label627
	add r3, r1, #8
	cmp r2, #4
	blt label627
	mov r4, #0
	str r4, [r0, #12]
	ldr r4, [r0, #8]
	cmp r4, #0
	bne label627
	add r3, r1, #10
	cmp r2, #5
	blt label627
	mov r4, #0
	str r4, [r0, #16]
	ldr r4, [r0, #12]
	cmp r4, #0
	bne label627
	b label1058
.p2align 4
label1086:
	add r3, r1, #12
	cmp r2, #6
	blt label627
	b label1074
.p2align 4
label609:
	mov r4, #1
	cmp r4, #0
	bne label615
	add r3, r1, #6
	cmp r2, #3
	blt label620
	mov r4, #0
	str r4, [r0, #8]
	ldr r4, [r0, #4]
	cmp r4, #0
	bne label627
	add r3, r1, #8
	cmp r2, #4
	blt label627
	mov r4, #0
	str r4, [r0, #12]
	ldr r4, [r0, #8]
	cmp r4, #0
	bne label627
	add r3, r1, #10
	cmp r2, #5
	blt label627
	mov r4, #0
	str r4, [r0, #16]
	ldr r4, [r0, #12]
	cmp r4, #0
	bne label627
	add r3, r1, #12
	cmp r2, #6
	blt label627
	mov r4, #0
	str r4, [r0, #20]
	ldr r4, [r0, #16]
	cmp r4, #0
	bne label627
	b label1043
.p2align 4
label1058:
	add r3, r1, #12
	cmp r2, #6
	blt label627
.p2align 4
label1074:
	mov r4, #0
	str r4, [r0, #20]
	ldr r4, [r0, #16]
	cmp r4, #0
	bne label627
	add r3, r1, #14
	cmp r2, #7
	blt label627
	b label1060
label620:
	mov r4, #1
	cmp r4, #0
	bne label627
	add r3, r1, #8
	cmp r2, #4
	blt label627
	mov r4, #0
	str r4, [r0, #12]
	ldr r4, [r0, #8]
	cmp r4, #0
	bne label627
	add r3, r1, #10
	cmp r2, #5
	blt label627
	mov r4, #0
	str r4, [r0, #16]
	ldr r4, [r0, #12]
	cmp r4, #0
	bne label627
	add r3, r1, #12
	cmp r2, #6
	blt label627
	mov r4, #0
	str r4, [r0, #20]
	ldr r4, [r0, #16]
	cmp r4, #0
	bne label627
.p2align 4
label1043:
	add r3, r1, #14
	cmp r2, #7
	blt label627
.p2align 4
label1060:
	mov r4, #0
	str r4, [r0, #24]
	ldr r4, [r0, #20]
	cmp r4, #0
	beq label1076
label627:
	mov r1, r3
	add r2, r2, #1
	b label69
.p2align 4
label1076:
	add r3, r1, #16
	cmp r2, #8
	blt label627
	mov r4, #0
	str r4, [r0, #28]
	ldr r4, [r0, #24]
	cmp r4, #0
	bne label627
	add r3, r1, #18
	cmp r2, #9
	blt label627
	mov r4, #0
	str r4, [r0, #32]
	ldr r4, [r0, #28]
	cmp r4, #0
	bne label627
	add r3, r1, #20
	cmp r2, #10
	blt label627
	mov r4, #0
	str r4, [r0, #36]
	ldr r4, [r0, #32]
	cmp r4, #0
	bne label627
	add r3, r1, #22
	cmp r2, #11
	blt label716
	b label1097
label15:
	add r3, r1, #4
	cmp r2, #4
	blt label938
	mov r4, #1
	str r4, [r0, #12]
	ldr r4, [r0, #8]
	cmp r4, #0
	beq label938
	add r3, r1, #5
	cmp r2, #5
	blt label938
	mov r4, #1
	str r4, [r0, #16]
	ldr r4, [r0, #12]
	cmp r4, #0
	beq label938
	add r3, r1, #6
	cmp r2, #6
	blt label938
	mov r4, #1
	str r4, [r0, #20]
	ldr r4, [r0, #16]
	cmp r4, #0
	beq label938
	add r3, r1, #7
	cmp r2, #7
	blt label938
	mov r4, #1
	str r4, [r0, #24]
	ldr r4, [r0, #20]
	cmp r4, #0
	beq label938
	add r3, r1, #8
	cmp r2, #8
	blt label938
	mov r4, #1
	str r4, [r0, #28]
	ldr r4, [r0, #24]
	cmp r4, #0
	beq label938
	add r3, r1, #9
	cmp r2, #9
	blt label938
	mov r4, #1
	str r4, [r0, #32]
	ldr r4, [r0, #28]
	cmp r4, #0
	beq label938
	add r3, r1, #10
	cmp r2, #10
	blt label938
	mov r4, #1
	str r4, [r0, #36]
	ldr r4, [r0, #32]
	cmp r4, #0
	beq label938
	add r3, r1, #11
	cmp r2, #11
	bge label321
	mov r4, #0
	b label31
.p2align 4
label8:
	add r3, r1, #2
	cmp r2, #2
	blt label217
	mov r4, #1
	str r4, [r0, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	bne label11
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label5
	mov r2, #0
	cmp r2, #20
	blt label116
	mov r2, #1
	cmp r2, #20
	blt label109
	b label75
.p2align 4
label217:
	mov r4, #0
	cmp r4, #0
	bne label11
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label5
	mov r2, #0
	cmp r2, #20
	blt label116
	mov r2, #1
	cmp r2, #20
	blt label109
label75:
	ldr r2, [sp, #0]
	add r3, r1, #3
	cmp r2, #0
	bne label108
	mov r1, r3
	ldr r4, [r0, #8]
	add r3, r3, #3
	add r1, r1, #6
	cmp r4, #0
	moveq r1, r3
	b label77
.p2align 4
label11:
	add r3, r1, #3
	cmp r2, #3
	blt label226
	mov r4, #1
	str r4, [r0, #8]
	ldr r4, [r0, #4]
	cmp r4, #0
	bne label15
	b label938
label226:
	mov r4, #0
	b label13
label1097:
	mov r4, #0
	str r4, [r0, #40]
	ldr r4, [r0, #36]
label143:
	cmp r4, #0
	bne label627
	add r3, r1, #24
	cmp r2, #12
	blt label725
	mov r4, #0
	str r4, [r0, #44]
	ldr r4, [r0, #40]
	b label146
label725:
	mov r4, #1
label146:
	cmp r4, #0
	bne label627
	add r3, r1, #26
	cmp r2, #13
	blt label734
	mov r4, #0
	str r4, [r0, #48]
	ldr r4, [r0, #44]
	b label149
label734:
	mov r4, #1
label149:
	cmp r4, #0
	bne label627
	add r3, r1, #28
	cmp r2, #14
	blt label743
	mov r4, #0
	str r4, [r0, #52]
	ldr r4, [r0, #48]
	b label152
label743:
	mov r4, #1
label152:
	cmp r4, #0
	bne label627
	add r3, r1, #30
	cmp r2, #15
	blt label752
	mov r4, #0
	str r4, [r0, #56]
	ldr r4, [r0, #52]
	b label156
label752:
	mov r4, #1
label156:
	cmp r4, #0
	bne label627
	add r3, r1, #32
	cmp r2, #16
	blt label764
	mov r4, #0
	str r4, [r0, #60]
	ldr r4, [r0, #56]
	b label160
label764:
	mov r4, #1
label160:
	cmp r4, #0
	bne label627
	add r3, r1, #34
	cmp r2, #17
	blt label776
	mov r4, #0
	str r4, [r0, #64]
	ldr r4, [r0, #60]
	b label163
label776:
	mov r4, #1
label163:
	cmp r4, #0
	bne label627
	add r3, r1, #36
	cmp r2, #18
	blt label785
	mov r4, #0
	str r4, [r0, #68]
	ldr r4, [r0, #64]
	b label167
label785:
	mov r4, #1
label167:
	cmp r4, #0
	bne label627
	add r4, r1, #38
	cmp r2, #19
	blt label797
	mov r3, #0
	str r3, [r0, #72]
	ldr r3, [r0, #68]
	cmp r3, #0
	add r1, r1, #40
	movne r1, r4
	add r2, r2, #1
	b label69
label797:
	mov r3, #1
	cmp r3, #0
	add r1, r1, #40
	movne r1, r4
	add r2, r2, #1
	b label69
label109:
	sub r3, r2, #1
	add r1, r1, #1
	cmp r2, r3
	ble label75
	mov r4, #1
	cmp r3, #0
	str r4, [r0, r3, lsl #2]
	beq label585
	b label584
.p2align 4
label604:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	mov r2, #1
	cmp r2, #20
	blt label109
	b label75
.p2align 4
label615:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	mov r2, #1
	cmp r2, #20
	blt label109
	b label75
label716:
	mov r4, #1
	b label143
label77:
	ldr r3, [r0, #16]
	add r4, r1, #3
	cmp r3, #0
	bne label101
	mov r1, r4
	b label79
label101:
	ldr r5, [r0, #20]
	add r4, r1, #6
	cmp r5, #0
	bne label102
label544:
	mov r1, r4
	add r1, r4, #3
	b label79
label106:
	ldr r4, [r0, #8]
	add r3, r1, #3
	add r1, r1, #6
	cmp r4, #0
	moveq r1, r3
	b label77
label108:
	ldr r3, [r0, #4]
	add r1, r1, #6
	cmp r3, #0
	bne label77
	b label106
label79:
	ldr r5, [r0, #36]
	add r4, r1, #3
	cmp r5, #0
	bne label95
	mov r1, r4
	b label96
label558:
	add r1, r1, #3
	b label79
label95:
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	beq label81
label96:
	ldr r5, [r0, #44]
	add r4, r1, #3
	cmp r5, #0
	bne label98
label518:
	mov r1, r4
	b label81
label98:
	ldr r5, [r0, #48]
	add r4, r1, #6
	cmp r5, #0
	beq label518
	ldr r5, [r0, #52]
	add r4, r1, #9
	cmp r5, #0
	beq label518
	b label531
label81:
	add r4, r1, #3
	cmp r2, #0
	bne label89
	mov r1, r4
	b label83
label531:
	ldr r4, [r0, #56]
	add r5, r1, #15
	cmp r4, #0
	add r4, r1, #12
	mov r1, r4
	movne r1, r5
	b label81
label83:
	ldr r3, [r0, #20]
	add r2, r1, #3
	cmp r3, #0
	beq label85
	mov r0, r2
	mov r1, #1
	b label92
label85:
	ldr r3, [r0, #24]
	add r2, r1, #6
	cmp r3, #0
	bne label86
	mov r1, r2
	ldr r0, [r0, #32]
	mov r2, #0
	cmp r0, #0
	add r0, r1, #3
	movwne r2, #1
	mov r1, r2
	b label92
label91:
	add r1, r1, #12
	cmp r3, #0
	beq label480
	b label83
label479:
	ldr r0, [r0, #32]
	mov r2, #0
	cmp r0, #0
	add r0, r1, #3
	movwne r2, #1
	mov r1, r2
label92:
	add r0, r0, r1
	bl putint
	add sp, sp, #84
	mov r0, #0
	pop { r4, r5, pc }
label480:
	mov r0, r1
	mov r1, #1
	b label92
label89:
	ldr r4, [r0, #8]
	add r2, r1, #6
	cmp r4, #0
	bne label90
label490:
	mov r1, r2
	b label83
label90:
	ldr r4, [r0, #12]
	add r2, r1, #9
	cmp r4, #0
	beq label91
	b label490
label102:
	ldr r5, [r0, #24]
	add r4, r1, #9
	cmp r5, #0
	bne label544
	ldr r4, [r0, #28]
	add r1, r1, #12
	cmp r4, #0
	bne label79
	b label558
label86:
	ldr r2, [r0, #28]
	add r1, r1, #9
	cmp r2, #0
	beq label480
	b label479
label585:
	ldr r3, [sp, #0]
label112:
	cmp r3, #0
	bne label114
	b label75
label72:
	cmp r2, #20
	blt label109
	b label75
label114:
	add r2, r2, #1
	b label72
label584:
	sub r3, r2, #2
	ldr r3, [r0, r3, lsl #2]
	b label112
label321:
	mov r4, #1
	str r4, [r0, #40]
	ldr r4, [r0, #36]
label31:
	cmp r4, #0
	beq label938
	add r3, r1, #12
	cmp r2, #12
	bge label333
	mov r4, #0
	b label35
label333:
	mov r4, #1
	str r4, [r0, #44]
	ldr r4, [r0, #40]
label35:
	cmp r4, #0
	beq label938
	add r3, r1, #13
	cmp r2, #13
	bge label345
	mov r4, #0
	b label38
label345:
	mov r4, #1
	str r4, [r0, #48]
	ldr r4, [r0, #44]
label38:
	cmp r4, #0
	beq label938
	add r3, r1, #14
	cmp r2, #14
	blt label355
	mov r4, #1
	str r4, [r0, #52]
	ldr r4, [r0, #48]
	b label41
label355:
	mov r4, #0
label41:
	cmp r4, #0
	beq label938
	add r3, r1, #15
	cmp r2, #15
	bge label363
	mov r4, #0
	b label44
label363:
	mov r4, #1
	str r4, [r0, #56]
	ldr r4, [r0, #52]
label44:
	cmp r4, #0
	beq label938
	add r3, r1, #16
	cmp r2, #16
	bge label372
	mov r4, #0
	b label47
label372:
	mov r4, #1
	str r4, [r0, #60]
	ldr r4, [r0, #56]
label47:
	cmp r4, #0
	beq label938
	add r3, r1, #17
	cmp r2, #17
	blt label382
	mov r4, #1
	str r4, [r0, #64]
	ldr r4, [r0, #60]
	b label50
label382:
	mov r4, #0
label50:
	cmp r4, #0
	beq label938
	add r3, r1, #18
	cmp r2, #18
	blt label391
	mov r4, #1
	str r4, [r0, #68]
	ldr r4, [r0, #64]
	b label54
label391:
	mov r4, #0
label54:
	cmp r4, #0
	beq label938
	add r4, r1, #19
	cmp r2, #19
	blt label403
	mov r3, #1
	str r3, [r0, #72]
	ldr r3, [r0, #68]
	cmp r3, #0
	add r3, r1, #20
	mov r1, r4
	movne r1, r3
	add r2, r2, #1
	b label2
label403:
	mov r3, #0
	cmp r3, #0
	add r3, r1, #20
	mov r1, r4
	movne r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label5
	mov r2, #0
	cmp r2, #20
	blt label116
	mov r2, #1
	cmp r2, #20
	blt label109
	b label75
