.arch armv7ve
.data
.bss
.align 8
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
	bgt label197
label198:
	mov r0, #0
label7:
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
label112:
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
	add r0, r0, #5
	str r0, [r4, #0]
	mov r0, #1
	b label7
label197:
	ldr r0, [r4, #0]
label10:
	cmp r6, r0
	bgt label12
label14:
	cmp r2, #0
	bne label25
	ldr r1, [r4, #0]
	ldr r0, [r5, r1, lsl #2]
	cmp r0, #123
	bne label16
	mov r2, #4
	b label4
label16:
	cmp r0, #91
	beq label234
	cmp r0, #34
	beq label238
	sub r1, r0, #43
	sub r2, r0, #45
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orr r1, r1, r2
	sub r2, r0, #48
	cmp r2, #10
	mov r2, #0
	movwlo r2, #1
	orrs r1, r1, r2
	beq label19
	mov r0, #1
	ldr r1, [r4, #0]
	mov r2, r0
	b label4
label19:
	cmp r0, #116
	beq label20
	cmp r0, #102
	bne label23
	mov r0, #6
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	b label7
label12:
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
	orr r1, r7, r1
	orrs r1, r3, r1
	beq label14
	add r0, r0, #1
	str r0, [r4, #0]
	b label10
label25:
	cmp r2, #1
	beq label26
	cmp r2, #2
	bne label69
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
label61:
	cmp r6, r0
	ble label394
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #34
	beq label63
	sub r1, r1, #92
	add r0, r0, #1
	clz r1, r1
	lsr r1, r1, #5
	add r0, r1, r0
	str r0, [r4, #0]
	b label61
label69:
	cmp r2, #3
	beq label70
	cmp r2, #4
	beq label126
	cmp r2, #5
	beq label121
	cmp r2, #6
	beq label112
	cmp r2, #7
	bne label198
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
label598:
	add r0, r0, #4
	str r0, [r4, #0]
	mov r0, #1
	b label7
label121:
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
	b label598
label394:
	ldr r0, [r4, #0]
label63:
	cmp r6, r0
	ble label198
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #34
	bne label198
label406:
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #1
	b label7
label97:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #93
	bne label198
	b label406
label26:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r2, r1, #43
	sub r1, r1, #45
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r2, r1
	beq label28
	add r0, r0, #1
	str r0, [r4, #0]
label28:
	cmp r6, r0
	ble label198
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label198
label31:
	cmp r6, r0
	ble label293
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label35
	add r0, r0, #1
	str r0, [r4, #0]
	b label31
label293:
	ldr r0, [r4, #0]
label35:
	cmp r6, r0
	bgt label37
	ldr r0, [r4, #0]
label41:
	cmp r6, r0
	ble label332
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #101
	bne label332
	add r0, r0, #1
	cmp r6, r0
	str r0, [r4, #0]
	bgt label54
label45:
	cmp r6, r0
	bgt label53
	b label47
label50:
	cmp r6, r0
	ble label332
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label332
	b label48
label53:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #45
	bne label50
label48:
	add r0, r0, #1
	str r0, [r4, #0]
	b label50
label70:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
label71:
	cmp r6, r0
	ble label75
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
	orr r1, r3, r1
	orrs r1, r2, r1
	beq label76
	add r0, r0, #1
	str r0, [r4, #0]
	b label71
label75:
	ldr r0, [r4, #0]
label76:
	cmp r6, r0
	bgt label102
label78:
	mov r0, #0
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	beq label198
	b label454
label102:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #93
	beq label406
	b label78
label454:
	ldr r0, [r4, #0]
label80:
	cmp r6, r0
	ble label101
	b label99
label87:
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
	orr r1, r3, r1
	orrs r1, r2, r1
	bne label84
label89:
	mov r0, #0
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	bne label454
	b label198
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
	orr r1, r3, r1
	orrs r1, r2, r1
	beq label82
	add r0, r0, #1
	str r0, [r4, #0]
	b label80
label82:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #44
	bne label466
label84:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label89
	b label87
label101:
	ldr r0, [r4, #0]
	b label82
label466:
	ldr r0, [r4, #0]
label91:
	cmp r6, r0
	ble label98
	b label93
label95:
	cmp r6, r0
	ble label198
	b label97
label98:
	ldr r0, [r4, #0]
	b label95
label126:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
label127:
	cmp r6, r0
	ble label188
	b label129
label131:
	cmp r6, r0
	bgt label187
	b label133
label188:
	ldr r0, [r4, #0]
	b label131
label133:
	mov r0, #2
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	beq label198
	b label710
label187:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #125
	beq label406
	b label133
label710:
	ldr r0, [r4, #0]
label135:
	cmp r6, r0
	ble label184
	b label185
label137:
	cmp r6, r0
	ble label198
	b label139
label184:
	ldr r0, [r4, #0]
	b label137
label139:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #58
	bne label198
label726:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	bgt label143
label145:
	mov r0, #0
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	beq label198
label751:
	ldr r0, [r4, #0]
label147:
	cmp r6, r0
	ble label181
	b label182
label149:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #44
	bne label151
label160:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label163
	b label179
label181:
	ldr r0, [r4, #0]
	b label149
label129:
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
	orr r1, r3, r1
	orrs r1, r2, r1
	beq label131
	add r0, r0, #1
	str r0, [r4, #0]
	b label127
label37:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #46
	bne label41
label38:
	add r0, r0, #1
	cmp r6, r0
	str r0, [r4, #0]
	ble label41
	ldr r1, [r5, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label38
	b label41
label332:
	mov r0, #1
	b label7
label185:
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
	orr r1, r3, r1
	orrs r1, r2, r1
	beq label137
	add r0, r0, #1
	str r0, [r4, #0]
	b label135
label47:
	ldr r0, [r4, #0]
	b label50
label54:
	ldr r0, [r5, r0, lsl #2]
	cmp r0, #43
	bne label55
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b label45
label55:
	ldr r0, [r4, #0]
	b label45
label143:
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
	orr r1, r3, r1
	orrs r1, r2, r1
	bne label726
	b label145
label23:
	cmp r0, #110
	beq label24
	b label198
label151:
	ldr r0, [r4, #0]
label152:
	cmp r6, r0
	ble label154
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
	orr r1, r3, r1
	orrs r1, r2, r1
	beq label155
	add r0, r0, #1
	str r0, [r4, #0]
	b label152
label154:
	ldr r0, [r4, #0]
label155:
	cmp r6, r0
	ble label198
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #125
	bne label198
	b label406
label163:
	mov r0, #2
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	beq label198
	b label805
label179:
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
	orr r1, r3, r1
	orrs r1, r2, r1
	bne label160
	b label163
label805:
	ldr r0, [r4, #0]
label165:
	cmp r6, r0
	ble label167
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
	orr r1, r3, r1
	orrs r1, r2, r1
	beq label170
	add r0, r0, #1
	str r0, [r4, #0]
	b label165
label167:
	ldr r0, [r4, #0]
label170:
	cmp r6, r0
	ble label198
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #58
	bne label198
label837:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	bgt label176
label178:
	mov r0, #0
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	bne label751
	b label198
label182:
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
	orr r1, r3, r1
	orrs r1, r2, r1
	beq label149
	add r0, r0, #1
	str r0, [r4, #0]
	b label147
label93:
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
	orr r1, r3, r1
	orrs r1, r2, r1
	beq label95
	add r0, r0, #1
	str r0, [r4, #0]
	b label91
label176:
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
	orr r1, r3, r1
	orrs r1, r2, r1
	bne label837
	b label178
label20:
	mov r0, #5
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	b label7
label238:
	mov r0, #2
	ldr r1, [r4, #0]
	mov r2, r0
	b label4
label24:
	mov r0, #7
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	b label7
label234:
	mov r0, #3
	ldr r1, [r4, #0]
	mov r2, r0
	b label4
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
	beq label1203
	mov r6, #0
	b label1193
label1179:
	cmp r6, r0
	ble label1183
	b label1181
.p2align 4
label1193:
	str r0, [r4, r6, lsl #2]
	bl getch
	cmp r0, #35
	add r6, r6, #1
	bne label1193
	ldr r0, [sp, #0]
	b label1179
.p2align 4
label1203:
	mov r0, #0
	mov r6, r0
	cmp r0, r0
	bgt label1181
label1183:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	mov r1, r0
	ldr r0, [sp, #0]
label1184:
	cmp r6, r0
	ble label1186
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
	orr r2, r5, r2
	orrs r2, r3, r2
	beq label1186
	add r0, r0, #1
	str r0, [sp, #0]
	b label1184
label1181:
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
	orr r1, r3, r1
	orrs r1, r2, r1
	beq label1183
	add r0, r0, #1
	str r0, [sp, #0]
	b label1179
label1186:
	cmp r1, #0
	bne label1190
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
label1188:
	add sp, sp, #8
	pop { r4, r5, r6, pc }
label1190:
	mov r0, #111
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	mov r0, #0
	b label1188
