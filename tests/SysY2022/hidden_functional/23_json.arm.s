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
.p2align 4
detect_item:
	push { r4, r5, r6, r7, lr }
	mov r5, r3
	mov r6, r2
	mov r4, r1
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
label197:
	ldr r0, [r5, #0]
label10:
	cmp r6, r0
	bgt label189
label12:
	cmp r2, #0
	bne label23
	ldr r1, [r5, #0]
	ldr r0, [r4, r1, lsl #2]
	cmp r0, #123
	bne label14
	mov r2, #4
	b label4
label189:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
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
	beq label12
	add r0, r0, #1
	str r0, [r5, #0]
	b label10
label23:
	cmp r2, #1
	beq label24
	cmp r2, #2
	bne label67
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
label59:
	cmp r6, r0
	bgt label65
	b label379
label61:
	cmp r6, r0
	ble label198
	b label63
label65:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	beq label61
	sub r1, r1, #92
	add r0, r0, #1
	clz r1, r1
	lsr r1, r1, #5
	add r0, r1, r0
	str r0, [r5, #0]
	b label59
label14:
	cmp r0, #91
	bne label15
	mov r0, #3
	ldr r1, [r5, #0]
	mov r2, r0
	b label4
label24:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r2, r1, #43
	sub r1, r1, #45
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r2, r1
	beq label26
	add r0, r0, #1
	str r0, [r5, #0]
label26:
	cmp r6, r0
	ble label198
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label198
label29:
	cmp r6, r0
	ble label278
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label32
label33:
	cmp r6, r0
	ble label292
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #46
	bne label39
label36:
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label39
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label36
	b label39
label15:
	cmp r0, #34
	bne label16
	mov r0, #2
	ldr r1, [r5, #0]
	mov r2, r0
	b label4
label67:
	cmp r2, #3
	bne label68
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
label155:
	cmp r6, r0
	ble label157
	ldr r0, [r5, #0]
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
	beq label160
	add r0, r0, #1
	str r0, [r5, #0]
	b label155
label63:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	bne label198
label391:
	add r0, r0, #1
	str r0, [r5, #0]
	mov r0, #1
	b label7
label68:
	cmp r2, #4
	beq label69
	cmp r2, #5
	bne label140
	ldr r0, [r5, #0]
	add r1, r0, #3
	cmp r6, r1
	ble label198
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #116
	bne label198
	add r2, r0, #1
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #114
	bne label198
	add r2, r0, #2
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #117
	bne label198
	ldr r1, [r4, r1, lsl #2]
	cmp r1, #101
	bne label198
label690:
	add r0, r0, #4
	str r0, [r5, #0]
	mov r0, #1
	b label7
label16:
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
	beq label17
	mov r0, #1
	ldr r1, [r5, #0]
	mov r2, r0
	b label4
label32:
	add r0, r0, #1
	str r0, [r5, #0]
	b label29
label157:
	ldr r0, [r5, #0]
label160:
	cmp r6, r0
	bgt label186
label162:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	beq label198
label810:
	ldr r0, [r5, #0]
label164:
	cmp r6, r0
	ble label185
	ldr r0, [r5, #0]
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
	beq label168
	add r0, r0, #1
	str r0, [r5, #0]
	b label164
label168:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label170
label179:
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label184
	b label182
label185:
	ldr r0, [r5, #0]
	b label168
label182:
	ldr r0, [r5, #0]
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
	bne label179
label184:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	bne label810
	b label198
label292:
	ldr r0, [r5, #0]
label39:
	cmp r6, r0
	ble label317
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #101
	bne label317
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label43
	ldr r0, [r4, r0, lsl #2]
	cmp r0, #43
	bne label53
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b label43
label69:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
label70:
	cmp r6, r0
	ble label129
	b label130
label72:
	cmp r6, r0
	bgt label128
	b label74
label129:
	ldr r0, [r5, #0]
	b label72
label43:
	cmp r6, r0
	bgt label51
	b label334
label45:
	cmp r6, r0
	ble label317
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label317
label347:
	add r0, r0, #1
	str r0, [r5, #0]
	b label45
label51:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	beq label347
	b label45
label130:
	ldr r0, [r5, #0]
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
	beq label72
	add r0, r0, #1
	str r0, [r5, #0]
	b label70
label140:
	cmp r2, #6
	beq label147
	cmp r2, #7
	beq label142
	b label198
label186:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	beq label391
	b label162
label317:
	mov r0, #1
	b label7
label74:
	mov r0, #2
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	beq label198
	ldr r0, [r5, #0]
label76:
	cmp r6, r0
	bgt label78
	ldr r0, [r5, #0]
label81:
	cmp r6, r0
	ble label198
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #58
	bne label198
label459:
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label126
label87:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	beq label198
label469:
	ldr r0, [r5, #0]
label89:
	cmp r6, r0
	bgt label124
	ldr r0, [r5, #0]
label92:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label94
label103:
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label122
label106:
	mov r0, #2
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	beq label198
	ldr r0, [r5, #0]
label108:
	cmp r6, r0
	ble label110
	ldr r0, [r5, #0]
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
	beq label111
	add r0, r0, #1
	str r0, [r5, #0]
	b label108
label126:
	ldr r0, [r5, #0]
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
	bne label459
	b label87
label78:
	ldr r0, [r5, #0]
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
	beq label81
	add r0, r0, #1
	str r0, [r5, #0]
	b label76
label128:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	beq label391
	b label74
label17:
	cmp r0, #116
	bne label19
	mov r0, #5
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	b label7
label147:
	ldr r0, [r5, #0]
	add r1, r0, #4
	cmp r6, r1
	ble label198
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #102
	bne label198
	add r2, r0, #1
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #97
	bne label198
	add r2, r0, #2
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #108
	bne label198
	add r2, r0, #3
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #115
	bne label198
	ldr r1, [r4, r1, lsl #2]
	cmp r1, #101
	bne label198
	add r0, r0, #5
	str r0, [r5, #0]
	mov r0, #1
	b label7
label19:
	cmp r0, #102
	beq label20
	cmp r0, #110
	bne label198
	mov r0, #7
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	b label7
label53:
	ldr r0, [r5, #0]
	b label43
label142:
	ldr r0, [r5, #0]
	add r1, r0, #3
	cmp r6, r1
	ble label198
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #110
	bne label198
	add r2, r0, #1
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #117
	bne label198
	add r2, r0, #2
	ldr r2, [r4, r2, lsl #2]
	cmp r2, #108
	bne label198
	ldr r1, [r4, r1, lsl #2]
	cmp r1, #108
	bne label198
	b label690
label122:
	ldr r0, [r5, #0]
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
	bne label103
	b label106
label124:
	ldr r0, [r5, #0]
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
	beq label92
	add r0, r0, #1
	str r0, [r5, #0]
	b label89
label110:
	ldr r0, [r5, #0]
label111:
	cmp r6, r0
	ble label198
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #58
	bne label198
label541:
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label119
	ldr r0, [r5, #0]
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
	bne label541
label119:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	bne label469
	b label198
label170:
	ldr r0, [r5, #0]
label171:
	cmp r6, r0
	ble label178
	b label176
label173:
	cmp r6, r0
	ble label198
	b label175
label178:
	ldr r0, [r5, #0]
	b label173
label176:
	ldr r0, [r5, #0]
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
	beq label173
	add r0, r0, #1
	str r0, [r5, #0]
	b label171
label175:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	bne label198
	b label391
label94:
	ldr r0, [r5, #0]
label95:
	cmp r6, r0
	ble label97
	ldr r0, [r5, #0]
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
	beq label98
	add r0, r0, #1
	str r0, [r5, #0]
	b label95
label98:
	cmp r6, r0
	ble label198
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	bne label198
	b label391
label20:
	mov r0, #6
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	b label7
label97:
	ldr r0, [r5, #0]
	b label98
label334:
	ldr r0, [r5, #0]
	b label45
label379:
	ldr r0, [r5, #0]
	b label61
label278:
	ldr r0, [r5, #0]
	b label33
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, lr }
	mov r4, #0
	sub sp, sp, #8
	str r4, [sp, #0]
	mov r6, sp
	bl getch
	cmp r0, #35
	movw r5, #:lower16:buffer
	movt r5, #:upper16:buffer
	beq label1207
	mov r7, r5
	mov r8, r4
.p2align 4
label1178:
	str r0, [r7, #0]
	bl getch
	cmp r0, #35
	add r1, r8, #1
	beq label1182
	add r7, r7, #4
	mov r8, r1
	b label1178
label1182:
	ldr r0, [sp, #0]
	mov r7, r1
label1187:
	cmp r7, r0
	bgt label1189
label1191:
	mov r0, r4
	mov r1, r5
	mov r2, r7
	mov r3, r6
	bl detect_item
	mov r1, r0
	ldr r0, [sp, #0]
label1192:
	cmp r7, r0
	ble label1196
	ldr r0, [sp, #0]
	ldr r2, [r5, r0, lsl #2]
	sub r6, r2, #9
	sub r3, r2, #32
	clz r6, r6
	clz r3, r3
	lsr r6, r6, #5
	lsr r3, r3, #5
	orr r3, r3, r6
	sub r6, r2, #10
	sub r2, r2, #13
	clz r6, r6
	clz r2, r2
	lsr r6, r6, #5
	lsr r2, r2, #5
	orr r2, r6, r2
	orrs r2, r3, r2
	beq label1196
	add r0, r0, #1
	str r0, [sp, #0]
	b label1192
label1189:
	ldr r0, [sp, #0]
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
	beq label1191
	add r0, r0, #1
	str r0, [sp, #0]
	b label1187
label1196:
	cmp r1, #0
	bne label1199
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
label1197:
	add sp, sp, #8
	pop { r4, r5, r6, r7, r8, pc }
label1199:
	mov r0, #111
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	mov r0, r4
	b label1197
label1207:
	mov r0, r4
	mov r7, r4
	b label1187
