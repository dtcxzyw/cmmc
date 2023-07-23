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
	push { r4, r5, r6, r7, lr }
	mov r4, r3
	mov r6, r2
	mov r5, r1
	sub sp, sp, #4
	ldr r1, [r3, #0]
	mov r2, r0
	cmp r6, r1
	ble label181
	ldr r0, [r3, #0]
	cmp r6, r0
	ble label12
	b label172
label181:
	mov r0, #0
label7:
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
label1175:
	add r0, r0, #5
	str r0, [r4, #0]
	mov r0, #1
	b label7
label12:
	cmp r2, #0
	beq label13
	cmp r2, #1
	beq label24
	cmp r2, #2
	beq label163
	cmp r2, #3
	beq label129
	cmp r2, #4
	beq label60
	cmp r2, #5
	beq label108
	cmp r2, #6
	beq label116
	cmp r2, #7
	beq label124
	b label181
label13:
	ldr r1, [r4, #0]
	ldr r0, [r5, r1, lsl #2]
	cmp r0, #123
	beq label198
	cmp r0, #91
	beq label202
	cmp r0, #34
	beq label206
	b label16
label198:
	mov r2, #4
	cmp r6, r1
	ble label181
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label12
	b label172
label202:
	mov r0, #3
	ldr r1, [r4, #0]
	mov r2, r0
	cmp r6, r1
	ble label181
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label12
	b label172
label60:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	bgt label105
label104:
	ldr r0, [r4, #0]
	cmp r6, r0
	bgt label65
	b label66
label116:
	ldr r0, [r4, #0]
	add r1, r0, #4
	cmp r6, r1
	ble label181
	ldr r2, [r5, r0, lsl #2]
	cmp r2, #102
	bne label181
	add r2, r0, #1
	ldr r2, [r5, r2, lsl #2]
	cmp r2, #97
	bne label181
	add r2, r0, #2
	ldr r2, [r5, r2, lsl #2]
	cmp r2, #108
	bne label181
	add r2, r0, #3
	ldr r2, [r5, r2, lsl #2]
	cmp r2, #115
	bne label181
	ldr r1, [r5, r1, lsl #2]
	cmp r1, #101
	bne label181
	b label1175
label172:
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
	bne label173
	cmp r2, #0
	beq label13
	cmp r2, #1
	beq label24
	cmp r2, #2
	beq label163
	cmp r2, #3
	beq label129
	cmp r2, #4
	beq label60
	cmp r2, #5
	beq label108
	cmp r2, #6
	beq label116
	cmp r2, #7
	beq label124
	b label181
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
	bne label215
	cmp r0, #116
	beq label18
	cmp r0, #102
	beq label20
	cmp r0, #110
	beq label22
	b label181
label215:
	mov r0, #1
	ldr r1, [r4, #0]
	mov r2, r0
	cmp r6, r1
	ble label181
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label12
	b label172
label18:
	mov r0, #5
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	b label7
label20:
	mov r0, #6
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	b label7
label22:
	mov r0, #7
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	b label7
label124:
	ldr r0, [r4, #0]
	add r1, r0, #3
	cmp r6, r1
	ble label181
	ldr r2, [r5, r0, lsl #2]
	cmp r2, #110
	bne label181
	add r2, r0, #1
	ldr r2, [r5, r2, lsl #2]
	cmp r2, #117
	bne label181
	add r2, r0, #2
	ldr r2, [r5, r2, lsl #2]
	cmp r2, #108
	bne label181
	ldr r1, [r5, r1, lsl #2]
	cmp r1, #108
	bne label181
label1163:
	add r0, r0, #4
	str r0, [r4, #0]
	mov r0, #1
	b label7
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
	bne label56
	cmp r6, r0
	ble label181
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label181
	cmp r6, r0
	bgt label30
	ldr r0, [r4, #0]
	cmp r6, r0
	bgt label35
	ldr r0, [r4, #0]
	cmp r6, r0
	bgt label42
	b label1179
label30:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label33
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	bgt label30
	ldr r0, [r4, #0]
	cmp r6, r0
	bgt label35
	ldr r0, [r4, #0]
	cmp r6, r0
	bgt label42
	b label1179
label33:
	cmp r6, r0
	bgt label35
	ldr r0, [r4, #0]
	cmp r6, r0
	bgt label42
	b label1179
label35:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #46
	beq label36
	cmp r6, r0
	bgt label42
	b label1179
label56:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label181
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label181
	cmp r6, r0
	bgt label30
	ldr r0, [r4, #0]
	cmp r6, r0
	bgt label35
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label1179
label42:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #101
	bne label1179
	add r0, r0, #1
	cmp r6, r0
	str r0, [r4, #0]
	bgt label44
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label1179
label54:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label1179
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	bgt label54
	b label1179
label173:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label12
	b label172
label206:
	mov r0, #2
	ldr r1, [r4, #0]
	mov r2, r0
	cmp r6, r1
	ble label181
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label12
	b label172
label65:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #125
	beq label1161
label66:
	mov r0, #2
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	beq label181
	ldr r0, [r4, #0]
	cmp r6, r0
	bgt label102
label70:
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label181
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #58
	bne label181
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label77
label100:
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
	bne label101
	b label77
label1161:
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #1
	b label7
label90:
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
	bne label91
	cmp r6, r0
	ble label181
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #125
	bne label181
	b label1161
label91:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label89
	b label90
label77:
	mov r0, #0
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	beq label181
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label97
	b label98
label89:
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label181
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #125
	bne label181
	b label1161
label97:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #44
	beq label92
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label89
	b label90
label102:
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
	bne label103
	cmp r6, r0
	ble label181
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #58
	bne label181
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label77
	b label100
label108:
	ldr r0, [r4, #0]
	add r1, r0, #3
	cmp r6, r1
	ble label181
	ldr r2, [r5, r0, lsl #2]
	cmp r2, #116
	bne label181
	add r2, r0, #1
	ldr r2, [r5, r2, lsl #2]
	cmp r2, #114
	bne label181
	add r2, r0, #2
	ldr r2, [r5, r2, lsl #2]
	cmp r2, #117
	bne label181
	ldr r1, [r5, r1, lsl #2]
	cmp r1, #101
	bne label181
	b label1163
label129:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	bgt label132
label160:
	ldr r0, [r4, #0]
	cmp r6, r0
	bgt label159
	b label136
label163:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	bgt label166
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label181
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #34
	bne label181
	b label1161
label166:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #34
	beq label168
	sub r1, r1, #92
	add r0, r0, #1
	clz r1, r1
	lsr r1, r1, #5
	add r0, r1, r0
	str r0, [r4, #0]
	cmp r6, r0
	bgt label166
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label181
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #34
	bne label181
	b label1161
label168:
	cmp r6, r0
	ble label181
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #34
	bne label181
	b label1161
label136:
	mov r0, #0
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	beq label181
	ldr r0, [r4, #0]
	cmp r6, r0
	bgt label141
label140:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #44
	beq label145
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label156
	b label157
label141:
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
	bne label142
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #44
	beq label145
	ldr r0, [r4, #0]
	cmp r6, r0
	bgt label157
label156:
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label181
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #93
	bne label181
	b label1161
label157:
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
	bne label158
	cmp r6, r0
	ble label181
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #93
	bne label181
	b label1161
label158:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label156
	b label157
label36:
	add r0, r0, #1
	cmp r6, r0
	str r0, [r4, #0]
	ble label1179
label38:
	ldr r1, [r5, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label40
	add r0, r0, #1
	cmp r6, r0
	str r0, [r4, #0]
	bgt label38
	b label1179
label132:
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
	cmp r6, r0
	bgt label159
	b label136
label133:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label160
	b label132
label1179:
	mov r0, #1
	b label7
label142:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label140
	b label141
label145:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label136
label148:
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
	beq label136
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label136
	b label148
label159:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #93
	beq label1161
	b label136
label40:
	cmp r6, r0
	bgt label42
	b label1179
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
	cmp r6, r0
	bgt label65
	b label66
label106:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label104
	b label105
label44:
	ldr r0, [r5, r0, lsl #2]
	cmp r0, #43
	beq label46
	ldr r0, [r4, #0]
	cmp r6, r0
	bgt label55
	ldr r0, [r4, #0]
	cmp r6, r0
	bgt label54
	b label1179
label46:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	bgt label55
	ldr r0, [r4, #0]
	cmp r6, r0
	bgt label54
	b label1179
label50:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	bgt label54
	b label1179
label55:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #45
	beq label50
	cmp r6, r0
	bgt label54
	b label1179
label103:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label70
	b label102
label101:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label77
	b label100
label98:
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
	bne label99
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #44
	beq label92
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label89
	b label90
label99:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label97
	b label98
label92:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label66
label95:
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
	beq label66
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label66
	b label95
.globl main
main:
	push { r4, r5, r6, lr }
	mov r0, #0
	sub sp, sp, #8
	str r0, [sp, #0]
	mov r5, sp
	bl getch
	cmp r0, #35
	movw r4, #:lower16:buffer
	movt r4, #:upper16:buffer
	bne label1216
	mov r0, #0
	mov r6, r0
	cmp r0, r0
	ble label1197
	b label1207
label1216:
	mov r6, #0
label1188:
	str r0, [r4, r6, lsl #2]
	bl getch
	cmp r0, #35
	add r6, r6, #1
	bne label1188
	ldr r0, [sp, #0]
	cmp r6, r0
	bgt label1207
label1197:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	mov r1, r0
	ldr r0, [sp, #0]
	cmp r6, r0
	bgt label1200
label1202:
	cmp r1, #0
	bne label1204
label1203:
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
	b label1205
label1204:
	mov r0, #111
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	mov r0, #0
label1205:
	add sp, sp, #8
	pop { r4, r5, r6, pc }
label1207:
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
	beq label1197
	add r0, r0, #1
	str r0, [sp, #0]
	cmp r6, r0
	ble label1197
	b label1207
label1200:
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
	bne label1201
	cmp r1, #0
	bne label1204
	b label1203
label1201:
	add r0, r0, #1
	str r0, [sp, #0]
	cmp r6, r0
	ble label1202
	b label1200
