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
	beq label146
	cmp r2, #2
	bne label26
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
label16:
	cmp r6, r0
	bgt label21
	ldr r0, [r4, #0]
label18:
	cmp r6, r0
	ble label198
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #34
	bne label198
	b label232
label21:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #34
	beq label18
	b label240
label26:
	cmp r2, #3
	bne label27
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b label114
label27:
	cmp r2, #4
	bne label28
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b label51
label28:
	cmp r2, #5
	beq label29
	cmp r2, #6
	bne label42
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
	b label342
label42:
	cmp r2, #7
	beq label43
	b label198
label51:
	cmp r6, r0
	ble label391
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
	bne label54
	b label55
label114:
	cmp r6, r0
	bgt label116
	ldr r0, [r4, #0]
	b label118
label116:
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
	bne label117
label118:
	cmp r6, r0
	bgt label144
	b label120
label146:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r2, r1, #43
	sub r1, r1, #45
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r2, r1
	bne label147
	b label148
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
	beq label188
	cmp r0, #102
	bne label186
	mov r0, #6
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	b label7
label186:
	cmp r0, #110
	beq label187
	b label198
label188:
	mov r0, #5
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	b label7
label29:
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
	b label294
label7:
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
label232:
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #1
	b label7
label476:
	ldr r0, [r4, #0]
label75:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #44
	beq label77
	ldr r0, [r4, #0]
	b label99
label77:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	bgt label96
label80:
	mov r0, #2
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	beq label198
	b label492
label96:
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
	bne label77
	b label80
label99:
	cmp r6, r0
	bgt label105
	ldr r0, [r4, #0]
label101:
	cmp r6, r0
	ble label198
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #125
	bne label198
	b label232
label105:
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
	bne label106
	b label101
label492:
	ldr r0, [r4, #0]
label82:
	cmp r6, r0
	ble label84
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
	bne label95
	b label85
label84:
	ldr r0, [r4, #0]
label85:
	cmp r6, r0
	ble label198
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #58
	bne label198
label509:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	bgt label92
label91:
	mov r0, #0
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	bne label470
	b label198
label92:
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
	bne label509
	b label91
label470:
	ldr r0, [r4, #0]
label73:
	cmp r6, r0
	ble label476
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
	bne label109
	b label75
label294:
	add r0, r0, #4
	str r0, [r4, #0]
	mov r0, #1
	b label7
label43:
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
	b label294
label187:
	mov r0, #7
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	b label7
label147:
	add r0, r0, #1
	str r0, [r4, #0]
label148:
	cmp r6, r0
	ble label198
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label198
label151:
	cmp r6, r0
	bgt label153
	ldr r0, [r4, #0]
	b label155
label153:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label781
label155:
	cmp r6, r0
	bgt label157
	ldr r0, [r4, #0]
label162:
	cmp r6, r0
	bgt label164
label812:
	mov r0, #1
	b label7
label164:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #101
	bne label812
	add r0, r0, #1
	cmp r6, r0
	str r0, [r4, #0]
	bgt label175
label166:
	cmp r6, r0
	bgt label168
	ldr r0, [r4, #0]
	b label170
label168:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #45
	bne label170
label838:
	add r0, r0, #1
	str r0, [r4, #0]
label170:
	cmp r6, r0
	ble label812
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label812
	b label838
label190:
	add r0, r0, #1
	str r0, [r4, #0]
	b label10
label240:
	sub r1, r1, #92
	add r0, r0, #1
	clz r1, r1
	lsr r1, r1, #5
	add r0, r1, r0
	str r0, [r4, #0]
	b label16
label117:
	add r0, r0, #1
	str r0, [r4, #0]
	b label114
label781:
	add r0, r0, #1
	str r0, [r4, #0]
	b label151
label120:
	mov r0, #0
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	beq label198
	b label651
label144:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #93
	beq label232
	b label120
label651:
	ldr r0, [r4, #0]
label122:
	cmp r6, r0
	bgt label124
	ldr r0, [r4, #0]
	b label126
label124:
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
	bne label125
label126:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #44
	beq label679
	b label678
label125:
	add r0, r0, #1
	str r0, [r4, #0]
	b label122
label679:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label142
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
	bne label679
label142:
	mov r0, #0
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	bne label651
	b label198
label678:
	ldr r0, [r4, #0]
label129:
	cmp r6, r0
	ble label131
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
	bne label133
	b label134
label131:
	ldr r0, [r4, #0]
label134:
	cmp r6, r0
	ble label198
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #93
	bne label198
	b label232
label157:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #46
	bne label162
label158:
	add r0, r0, #1
	cmp r6, r0
	str r0, [r4, #0]
	ble label162
	ldr r1, [r5, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label158
	b label162
label54:
	add r0, r0, #1
	str r0, [r4, #0]
	b label51
label391:
	ldr r0, [r4, #0]
label55:
	cmp r6, r0
	bgt label111
label57:
	mov r0, #2
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	beq label198
	ldr r0, [r4, #0]
label59:
	cmp r6, r0
	bgt label61
	ldr r0, [r4, #0]
	b label63
label61:
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
	bne label62
label63:
	cmp r6, r0
	ble label198
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #58
	bne label198
	b label445
label111:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #125
	beq label232
	b label57
label445:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label71
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
	bne label445
	b label71
label175:
	ldr r0, [r5, r0, lsl #2]
	cmp r0, #43
	beq label860
	b label859
label62:
	add r0, r0, #1
	str r0, [r4, #0]
	b label59
label860:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b label166
label859:
	ldr r0, [r4, #0]
	b label166
label71:
	mov r0, #0
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	beq label198
	b label470
label109:
	add r0, r0, #1
	str r0, [r4, #0]
	b label73
label133:
	add r0, r0, #1
	str r0, [r4, #0]
	b label129
label95:
	add r0, r0, #1
	str r0, [r4, #0]
	b label82
label342:
	add r0, r0, #5
	str r0, [r4, #0]
	mov r0, #1
	b label7
label106:
	add r0, r0, #1
	str r0, [r4, #0]
	b label99
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
	bne label1170
	mov r0, #0
	mov r6, r0
	cmp r0, r0
	ble label1153
	b label1151
label1170:
	mov r6, #0
.p2align 4
label1142:
	str r0, [r4, r6, lsl #2]
	bl getch
	cmp r0, #35
	add r6, r6, #1
	bne label1142
	ldr r0, [sp, #0]
	cmp r6, r0
	bgt label1151
label1153:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	mov r1, r0
	ldr r0, [sp, #0]
label1154:
	cmp r6, r0
	ble label1156
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
	bne label1162
	b label1156
label1149:
	cmp r6, r0
	ble label1153
label1151:
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
	beq label1153
	add r0, r0, #1
	str r0, [sp, #0]
	b label1149
label1162:
	add r0, r0, #1
	str r0, [sp, #0]
	b label1154
label1156:
	cmp r1, #0
	bne label1160
	b label1159
label1157:
	add sp, sp, #8
	pop { r4, r5, r6, pc }
label1159:
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
	b label1157
label1160:
	mov r0, #111
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	mov r0, #0
	b label1157
