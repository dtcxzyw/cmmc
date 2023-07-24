.arch armv7ve
.data
.bss
.align 4
buffer:
	.zero	200000000
.text
.syntax unified
.arm
.fpu vfpv4
detect_item:
.p2align 4
	push { r4, r5, r6, r7, lr }
	mov r4, r3
	mov r6, r2
	mov r5, r1
	sub sp, sp, #4
	ldr r1, [r3, #0]
	mov r2, r0
label4:
	cmp r6, r1
	ble label198
	ldr r0, [r4, #0]
	b label10
label198:
	mov r0, #0
	b label7
label10:
	cmp r6, r0
	ble label12
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r7, r1, #9
	sub r3, r1, #32
	clz r7, r7
	clz r3, r3
	lsr r7, r7, #5
	lsr r3, r3, #5
	orr r3, r3, r7
	sub r7, r1, #10
	sub r1, r1, #13
	clz r7, r7
	clz r1, r1
	lsr r7, r7, #5
	lsr r1, r1, #5
	orr r3, r3, r7
	orrs r1, r3, r1
	bne label190
label12:
	cmp r2, #0
	beq label179
	cmp r2, #1
	beq label14
	cmp r2, #2
	beq label334
	cmp r2, #3
	beq label338
	cmp r2, #4
	beq label342
	cmp r2, #5
	beq label51
	cmp r2, #6
	beq label65
	cmp r2, #7
	beq label60
	b label198
label65:
	ldr r0, [r4, #0]
	add r1, r0, #4
	cmp r6, r1
	ble label198
	ldr r2, [r5, r0, lsl #2]
	cmp r2, #102
	bne label198
	add r2, r0, #1
	ldr r2, [r5, r2, lsl #2]
	cmp r2, #97
	bne label198
	add r2, r0, #2
	ldr r2, [r5, r2, lsl #2]
	cmp r2, #108
	bne label198
	add r2, r0, #3
	ldr r2, [r5, r2, lsl #2]
	cmp r2, #115
	bne label198
	ldr r1, [r5, r1, lsl #2]
	cmp r1, #101
	bne label198
	b label470
label179:
	ldr r1, [r4, #0]
	ldr r0, [r5, r1, lsl #2]
	cmp r0, #123
	bne label180
	mov r2, #4
	b label4
label180:
	cmp r0, #91
	bne label181
	mov r0, #3
	ldr r1, [r4, #0]
	mov r2, r0
	b label4
label181:
	cmp r0, #34
	bne label182
	mov r0, #2
	ldr r1, [r4, #0]
	mov r2, r0
	b label4
label182:
	sub r1, r0, #48
	sub r2, r0, #43
	cmp r1, #10
	clz r2, r2
	mov r1, #0
	lsr r2, r2, #5
	movwlo r1, #1
	orr r1, r1, r2
	sub r2, r0, #45
	clz r2, r2
	lsr r2, r2, #5
	orrs r1, r1, r2
	beq label183
	mov r0, #1
	ldr r1, [r4, #0]
	mov r2, r0
	b label4
label183:
	cmp r0, #116
	bne label185
	mov r0, #5
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	b label7
label185:
	cmp r0, #102
	beq label186
	cmp r0, #110
	beq label188
	b label198
label7:
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
label470:
	add r0, r0, #5
	str r0, [r4, #0]
	mov r0, #1
	b label7
label381:
	add r0, r0, #4
	str r0, [r4, #0]
	mov r0, #1
	b label7
label60:
	ldr r0, [r4, #0]
	add r1, r0, #3
	cmp r6, r1
	ble label198
	ldr r2, [r5, r0, lsl #2]
	cmp r2, #110
	bne label198
	add r2, r0, #1
	ldr r2, [r5, r2, lsl #2]
	cmp r2, #117
	bne label198
	add r2, r0, #2
	ldr r2, [r5, r2, lsl #2]
	cmp r2, #108
	bne label198
	ldr r1, [r5, r1, lsl #2]
	cmp r1, #108
	bne label198
	b label381
label51:
	ldr r0, [r4, #0]
	add r1, r0, #3
	cmp r6, r1
	ble label198
	ldr r2, [r5, r0, lsl #2]
	cmp r2, #116
	bne label198
	add r2, r0, #1
	ldr r2, [r5, r2, lsl #2]
	cmp r2, #114
	bne label198
	add r2, r0, #2
	ldr r2, [r5, r2, lsl #2]
	cmp r2, #117
	bne label198
	ldr r1, [r5, r1, lsl #2]
	cmp r1, #101
	bne label198
	b label381
label188:
	mov r0, #7
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	b label7
label334:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b label171
label571:
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #1
	b label7
label171:
	cmp r6, r0
	bgt label173
	ldr r0, [r4, #0]
	b label176
label173:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #34
	beq label176
	sub r1, r1, #92
	add r0, r0, #1
	clz r1, r1
	lsr r1, r1, #5
	add r0, r1, r0
	str r0, [r4, #0]
	b label171
label176:
	cmp r6, r0
	ble label198
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #34
	bne label198
	b label571
label14:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r2, r1, #43
	sub r1, r1, #45
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r2, r1
	beq label15
	add r0, r0, #1
	str r0, [r4, #0]
label15:
	cmp r6, r0
	ble label198
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label198
label18:
	cmp r6, r0
	ble label237
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label20
	add r0, r0, #1
	str r0, [r4, #0]
	b label18
label190:
	add r0, r0, #1
	str r0, [r4, #0]
	b label10
label237:
	ldr r0, [r4, #0]
label20:
	cmp r6, r0
	bgt label22
	ldr r0, [r4, #0]
label26:
	cmp r6, r0
	bgt label28
label266:
	mov r0, #1
	b label7
label28:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #101
	bne label266
	add r0, r0, #1
	cmp r6, r0
	str r0, [r4, #0]
	bgt label30
label33:
	cmp r6, r0
	bgt label41
	b label293
label338:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
label136:
	cmp r6, r0
	bgt label165
	ldr r0, [r4, #0]
label138:
	cmp r6, r0
	bgt label164
	b label140
label165:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r3, r1, #9
	sub r2, r1, #32
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orr r2, r2, r3
	sub r3, r1, #10
	sub r1, r1, #13
	clz r3, r3
	clz r1, r1
	lsr r3, r3, #5
	lsr r1, r1, #5
	orr r2, r2, r3
	orrs r1, r2, r1
	beq label138
	add r0, r0, #1
	str r0, [r4, #0]
	b label136
label140:
	mov r0, #0
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	beq label198
	b label723
label164:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #93
	beq label571
	b label140
label723:
	ldr r0, [r4, #0]
label142:
	cmp r6, r0
	ble label144
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r3, r1, #9
	sub r2, r1, #32
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orr r2, r2, r3
	sub r3, r1, #10
	sub r1, r1, #13
	clz r3, r3
	clz r1, r1
	lsr r3, r3, #5
	lsr r1, r1, #5
	orr r2, r2, r3
	orrs r1, r2, r1
	beq label147
	add r0, r0, #1
	str r0, [r4, #0]
	b label142
label144:
	ldr r0, [r4, #0]
label147:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #44
	bne label751
label149:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	bgt label153
label152:
	mov r0, #0
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	bne label723
	b label198
label153:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r3, r1, #9
	sub r2, r1, #32
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orr r2, r2, r3
	sub r3, r1, #10
	sub r1, r1, #13
	clz r3, r3
	clz r1, r1
	lsr r3, r3, #5
	lsr r1, r1, #5
	orr r2, r2, r3
	orrs r1, r2, r1
	bne label149
	b label152
label751:
	ldr r0, [r4, #0]
label156:
	cmp r6, r0
	ble label782
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r3, r1, #9
	sub r2, r1, #32
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orr r2, r2, r3
	sub r3, r1, #10
	sub r1, r1, #13
	clz r3, r3
	clz r1, r1
	lsr r3, r3, #5
	lsr r1, r1, #5
	orr r2, r2, r3
	orrs r1, r2, r1
	bne label163
	b label158
label782:
	ldr r0, [r4, #0]
label158:
	cmp r6, r0
	ble label198
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #93
	bne label198
	b label571
label342:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
label73:
	cmp r6, r0
	bgt label133
	ldr r0, [r4, #0]
label75:
	cmp r6, r0
	bgt label131
	b label77
label133:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r3, r1, #9
	sub r2, r1, #32
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orr r2, r2, r3
	sub r3, r1, #10
	sub r1, r1, #13
	clz r3, r3
	clz r1, r1
	lsr r3, r3, #5
	lsr r1, r1, #5
	orr r2, r2, r3
	orrs r1, r2, r1
	bne label134
	b label75
label77:
	mov r0, #2
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	beq label198
	b label486
label131:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #125
	beq label571
	b label77
label486:
	ldr r0, [r4, #0]
label79:
	cmp r6, r0
	bgt label81
	ldr r0, [r4, #0]
	b label83
label81:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r3, r1, #9
	sub r2, r1, #32
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orr r2, r2, r3
	sub r3, r1, #10
	sub r1, r1, #13
	clz r3, r3
	clz r1, r1
	lsr r3, r3, #5
	lsr r1, r1, #5
	orr r2, r2, r3
	orrs r1, r2, r1
	bne label82
label83:
	cmp r6, r0
	ble label198
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #58
	bne label198
label517:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	bgt label128
label89:
	mov r0, #0
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	beq label198
	b label527
label128:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r3, r1, #9
	sub r2, r1, #32
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orr r2, r2, r3
	sub r3, r1, #10
	sub r1, r1, #13
	clz r3, r3
	clz r1, r1
	lsr r3, r3, #5
	lsr r1, r1, #5
	orr r2, r2, r3
	orrs r1, r2, r1
	bne label517
	b label89
label527:
	ldr r0, [r4, #0]
label91:
	cmp r6, r0
	bgt label126
	ldr r0, [r4, #0]
label93:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #44
	beq label540
	ldr r0, [r4, #0]
label96:
	cmp r6, r0
	bgt label99
	ldr r0, [r4, #0]
	b label101
label99:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r3, r1, #9
	sub r2, r1, #32
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orr r2, r2, r3
	sub r3, r1, #10
	sub r1, r1, #13
	clz r3, r3
	clz r1, r1
	lsr r3, r3, #5
	lsr r1, r1, #5
	orr r2, r2, r3
	orrs r1, r2, r1
	bne label100
label101:
	cmp r6, r0
	ble label198
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #125
	bne label198
	b label571
label126:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r3, r1, #9
	sub r2, r1, #32
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orr r2, r2, r3
	sub r3, r1, #10
	sub r1, r1, #13
	clz r3, r3
	clz r1, r1
	lsr r3, r3, #5
	lsr r1, r1, #5
	orr r2, r2, r3
	orrs r1, r2, r1
	bne label127
	b label93
label22:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #46
	bne label26
label23:
	add r0, r0, #1
	cmp r6, r0
	str r0, [r4, #0]
	ble label26
	ldr r1, [r5, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label23
	b label26
label134:
	add r0, r0, #1
	str r0, [r4, #0]
	b label73
label30:
	ldr r0, [r5, r0, lsl #2]
	cmp r0, #43
	beq label31
	ldr r0, [r4, #0]
	b label33
label31:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b label33
label82:
	add r0, r0, #1
	str r0, [r4, #0]
	b label79
label293:
	ldr r0, [r4, #0]
label35:
	cmp r6, r0
	bgt label37
	b label266
label306:
	add r0, r0, #1
	str r0, [r4, #0]
	b label35
label37:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label266
	b label306
label41:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #45
	beq label306
	b label35
label186:
	mov r0, #6
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	b label7
label127:
	add r0, r0, #1
	str r0, [r4, #0]
	b label91
label540:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label107
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r3, r1, #9
	sub r2, r1, #32
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orr r2, r2, r3
	sub r3, r1, #10
	sub r1, r1, #13
	clz r3, r3
	clz r1, r1
	lsr r3, r3, #5
	lsr r1, r1, #5
	orr r2, r2, r3
	orrs r1, r2, r1
	bne label540
label107:
	mov r0, #2
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	beq label198
	ldr r0, [r4, #0]
label109:
	cmp r6, r0
	bgt label120
	ldr r0, [r4, #0]
label111:
	cmp r6, r0
	ble label198
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #58
	bne label198
label597:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	bgt label118
label117:
	mov r0, #0
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	bne label527
	b label198
label118:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r3, r1, #9
	sub r2, r1, #32
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orr r2, r2, r3
	sub r3, r1, #10
	sub r1, r1, #13
	clz r3, r3
	clz r1, r1
	lsr r3, r3, #5
	lsr r1, r1, #5
	orr r2, r2, r3
	orrs r1, r2, r1
	bne label597
	b label117
label120:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r3, r1, #9
	sub r2, r1, #32
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orr r2, r2, r3
	sub r3, r1, #10
	sub r1, r1, #13
	clz r3, r3
	clz r1, r1
	lsr r3, r3, #5
	lsr r1, r1, #5
	orr r2, r2, r3
	orrs r1, r2, r1
	bne label121
	b label111
label163:
	add r0, r0, #1
	str r0, [r4, #0]
	b label156
label121:
	add r0, r0, #1
	str r0, [r4, #0]
	b label109
label100:
	add r0, r0, #1
	str r0, [r4, #0]
	b label96
.globl main
main:
.p2align 4
	push { r4, r5, r6, lr }
	mov r0, #0
	sub sp, sp, #8
	str r0, [sp, #0]
	mov r5, sp
	bl getch
	cmp r0, #35
	movw r4, #:lower16:buffer
	movt r4, #:upper16:buffer
	bne label1123
	mov r0, #0
	mov r6, r0
	cmp r0, r0
	ble label1106
	b label1104
label1123:
	mov r6, #0
label1095:
.p2align 4
	str r0, [r4, r6, lsl #2]
	bl getch
	cmp r0, #35
	add r6, r6, #1
	bne label1095
	ldr r0, [sp, #0]
	cmp r6, r0
	bgt label1104
label1106:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	mov r1, r0
	ldr r0, [sp, #0]
label1107:
	cmp r6, r0
	ble label1111
	ldr r0, [sp, #0]
	ldr r2, [r4, r0, lsl #2]
	sub r5, r2, #9
	sub r3, r2, #32
	clz r5, r5
	clz r3, r3
	lsr r5, r5, #5
	lsr r3, r3, #5
	orr r3, r3, r5
	sub r5, r2, #10
	sub r2, r2, #13
	clz r5, r5
	clz r2, r2
	lsr r5, r5, #5
	lsr r2, r2, #5
	orr r3, r3, r5
	orrs r2, r3, r2
	bne label1110
	b label1111
label1102:
	cmp r6, r0
	ble label1106
label1104:
	ldr r0, [sp, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r3, r1, #9
	sub r2, r1, #32
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orr r2, r2, r3
	sub r3, r1, #10
	sub r1, r1, #13
	clz r3, r3
	clz r1, r1
	lsr r3, r3, #5
	lsr r1, r1, #5
	orr r2, r2, r3
	orrs r1, r2, r1
	beq label1106
	add r0, r0, #1
	str r0, [sp, #0]
	b label1102
label1110:
	add r0, r0, #1
	str r0, [sp, #0]
	b label1107
label1111:
	cmp r1, #0
	bne label1115
	mov r0, #110
	bl putch
	mov r0, #111
	bl putch
	mov r0, #116
	bl putch
	mov r0, #32
	bl putch
	mov r0, #111
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	mov r0, #1
label1113:
	add sp, sp, #8
	pop { r4, r5, r6, pc }
label1115:
	mov r0, #111
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	mov r0, #0
	b label1113
