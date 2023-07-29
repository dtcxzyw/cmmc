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
	bgt label197
label198:
	mov r0, #0
label7:
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
label12:
	cmp r2, #0
	bne label23
	ldr r1, [r4, #0]
	ldr r0, [r5, r1, lsl #2]
	cmp r0, #123
	bne label14
	mov r2, #4
	b label4
label14:
	cmp r0, #91
	bne label15
	mov r0, #3
	ldr r1, [r4, #0]
	mov r2, r0
	b label4
label15:
	cmp r0, #34
	bne label16
	mov r0, #2
	ldr r1, [r4, #0]
	mov r2, r0
	b label4
label16:
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
	beq label17
	mov r0, #1
	ldr r1, [r4, #0]
	mov r2, r0
	b label4
label17:
	cmp r0, #116
	beq label22
	cmp r0, #102
	bne label20
	mov r0, #6
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	b label7
label20:
	cmp r0, #110
	beq label21
	b label198
label22:
	mov r0, #5
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	b label7
label23:
	cmp r2, #1
	beq label24
	cmp r2, #2
	bne label69
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b label61
label58:
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #1
	b label7
label61:
	cmp r6, r0
	bgt label66
	ldr r0, [r4, #0]
label63:
	cmp r6, r0
	ble label198
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #34
	bne label198
	b label58
label66:
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
	bne label70
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b label157
label70:
	cmp r2, #4
	bne label71
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b label94
label71:
	cmp r2, #5
	beq label74
	b label79
label72:
	add r0, r0, #4
	str r0, [r4, #0]
	mov r0, #1
	b label7
label74:
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
	b label72
label79:
	cmp r2, #6
	bne label87
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
label87:
	cmp r2, #7
	beq label88
	b label198
label94:
	cmp r6, r0
	ble label550
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
	bne label97
	b label98
label157:
	cmp r6, r0
	bgt label159
	ldr r0, [r4, #0]
	b label161
label159:
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
	bne label160
label161:
	cmp r6, r0
	bgt label187
	b label163
label88:
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
	b label72
label21:
	mov r0, #7
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	b label7
label197:
	ldr r0, [r4, #0]
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
	beq label12
	add r0, r0, #1
	str r0, [r4, #0]
	b label10
label24:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r2, r1, #43
	sub r1, r1, #45
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r2, r1
	beq label26
	add r0, r0, #1
	str r0, [r4, #0]
label26:
	cmp r6, r0
	ble label198
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label198
label29:
	cmp r6, r0
	ble label278
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label33
	add r0, r0, #1
	str r0, [r4, #0]
	b label29
label278:
	ldr r0, [r4, #0]
label33:
	cmp r6, r0
	bgt label35
	ldr r0, [r4, #0]
	b label39
label35:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #46
	beq label36
label39:
	cmp r6, r0
	bgt label41
label317:
	mov r0, #1
	b label7
label41:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #101
	bne label317
	add r0, r0, #1
	cmp r6, r0
	str r0, [r4, #0]
	bgt label52
label43:
	cmp r6, r0
	ble label334
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #45
	beq label347
label45:
	cmp r6, r0
	bgt label47
	b label317
label347:
	add r0, r0, #1
	str r0, [r4, #0]
	b label45
label47:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label317
	b label347
label160:
	add r0, r0, #1
	str r0, [r4, #0]
	b label157
label36:
	add r0, r0, #1
	cmp r6, r0
	str r0, [r4, #0]
	ble label39
	ldr r1, [r5, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label36
	b label39
label163:
	mov r0, #0
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	beq label198
	b label810
label187:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #93
	beq label58
	b label163
label810:
	ldr r0, [r4, #0]
label165:
	cmp r6, r0
	ble label816
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
	beq label170
	add r0, r0, #1
	str r0, [r4, #0]
	b label165
label816:
	ldr r0, [r4, #0]
label170:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #44
	beq label172
	ldr r0, [r4, #0]
label179:
	cmp r6, r0
	bgt label185
	ldr r0, [r4, #0]
label181:
	cmp r6, r0
	ble label198
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #93
	bne label198
	b label58
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
	orr r2, r2, r3
	orrs r1, r2, r1
	bne label186
	b label181
label172:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label177
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
	bne label172
label177:
	mov r0, #0
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	bne label810
	b label198
label97:
	add r0, r0, #1
	str r0, [r4, #0]
	b label94
label550:
	ldr r0, [r4, #0]
label98:
	cmp r6, r0
	bgt label154
label100:
	mov r0, #2
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	beq label198
	b label573
label154:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #125
	beq label58
	b label100
label573:
	ldr r0, [r4, #0]
label102:
	cmp r6, r0
	ble label579
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
	bne label105
	b label106
label579:
	ldr r0, [r4, #0]
label106:
	cmp r6, r0
	ble label198
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #58
	bne label198
label604:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label114
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
	bne label604
	b label114
label52:
	ldr r0, [r5, r0, lsl #2]
	cmp r0, #43
	beq label53
	ldr r0, [r4, #0]
	b label43
label105:
	add r0, r0, #1
	str r0, [r4, #0]
	b label102
label334:
	ldr r0, [r4, #0]
	b label45
label53:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b label43
label114:
	mov r0, #0
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	beq label198
label629:
	ldr r0, [r4, #0]
label116:
	cmp r6, r0
	ble label118
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
	bne label152
	b label119
label118:
	ldr r0, [r4, #0]
label119:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #44
	beq label121
	ldr r0, [r4, #0]
	b label143
label121:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	bgt label140
label124:
	mov r0, #2
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	beq label198
	b label652
label140:
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
	b label124
label143:
	cmp r6, r0
	bgt label149
	ldr r0, [r4, #0]
label145:
	cmp r6, r0
	ble label198
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #125
	bne label198
	b label58
label149:
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
	bne label150
	b label145
label652:
	ldr r0, [r4, #0]
label126:
	cmp r6, r0
	ble label128
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
	bne label130
	b label131
label128:
	ldr r0, [r4, #0]
label131:
	cmp r6, r0
	ble label198
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #58
	bne label198
label684:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	bgt label138
label137:
	mov r0, #0
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	bne label629
	b label198
label138:
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
	bne label684
	b label137
label152:
	add r0, r0, #1
	str r0, [r4, #0]
	b label116
label186:
	add r0, r0, #1
	str r0, [r4, #0]
	b label179
label130:
	add r0, r0, #1
	str r0, [r4, #0]
	b label126
label150:
	add r0, r0, #1
	str r0, [r4, #0]
	b label143
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
	bne label1167
	mov r0, #0
	mov r6, r0
	cmp r0, r0
	ble label1150
	b label1148
label1167:
	mov r6, #0
.p2align 4
label1139:
	str r0, [r4, r6, lsl #2]
	bl getch
	cmp r0, #35
	add r6, r6, #1
	bne label1139
	ldr r0, [sp, #0]
	cmp r6, r0
	bgt label1148
label1150:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	mov r1, r0
	ldr r0, [sp, #0]
label1151:
	cmp r6, r0
	ble label1155
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
	bne label1154
	b label1155
label1146:
	cmp r6, r0
	ble label1150
label1148:
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
	beq label1150
	add r0, r0, #1
	str r0, [sp, #0]
	b label1146
label1154:
	add r0, r0, #1
	str r0, [sp, #0]
	b label1151
label1155:
	cmp r1, #0
	bne label1159
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
label1157:
	add sp, sp, #8
	pop { r4, r5, r6, pc }
label1159:
	mov r0, #111
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	mov r0, #0
	b label1157
