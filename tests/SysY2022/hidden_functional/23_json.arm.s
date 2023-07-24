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
label2:
	ldr r1, [r4, #0]
	mov r2, r0
label4:
	cmp r6, r1
	bgt label197
label198:
	mov r0, #0
label7:
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
label90:
	ldr r0, [r4, #0]
label91:
	cmp r6, r0
	ble label125
	b label126
label93:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #44
	beq label104
	ldr r0, [r4, #0]
	cmp r6, r0
	bgt label99
label98:
	ldr r0, [r4, #0]
label101:
	cmp r6, r0
	ble label198
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #125
	bne label198
label571:
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #1
	b label7
label104:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	bgt label123
label107:
	mov r0, #2
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	beq label198
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label122
	b label120
label111:
	cmp r6, r0
	ble label198
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #58
	bne label198
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
	bne label90
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
	bne label114
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
label122:
	ldr r0, [r4, #0]
	b label111
label123:
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
	bne label104
	b label107
label125:
	ldr r0, [r4, #0]
	b label93
label77:
	mov r0, #2
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	beq label198
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label130
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
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label125
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
label130:
	ldr r0, [r4, #0]
	b label83
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
	bne label190
label12:
	cmp r2, #0
	beq label179
	cmp r2, #1
	beq label14
	cmp r2, #2
	beq label170
	cmp r2, #3
	beq label135
	cmp r2, #4
	beq label72
	cmp r2, #5
	bne label58
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
label58:
	cmp r2, #6
	beq label65
	cmp r2, #7
	beq label60
	b label198
label72:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
label73:
	cmp r6, r0
	ble label132
	b label133
label75:
	cmp r6, r0
	ble label77
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #125
	beq label571
	b label77
label132:
	ldr r0, [r4, #0]
	b label75
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
label135:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
label136:
	cmp r6, r0
	ble label167
	b label165
label138:
	cmp r6, r0
	bgt label164
label140:
	mov r0, #0
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	beq label198
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label144
	b label145
label164:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #93
	beq label571
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
	bne label166
	b label138
label167:
	ldr r0, [r4, #0]
	b label138
label170:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
label171:
	cmp r6, r0
	bgt label173
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label198
	b label855
label173:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #34
	beq label176
	b label846
label855:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #34
	bne label198
	b label571
label179:
	ldr r1, [r4, #0]
	ldr r0, [r5, r1, lsl #2]
	cmp r0, #123
	beq label872
	cmp r0, #91
	beq label876
	b label875
label872:
	mov r2, #4
	b label4
label875:
	cmp r0, #34
	beq label880
	b label182
label876:
	mov r0, #3
	b label2
label880:
	mov r0, #2
	b label2
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
	bne label889
	cmp r0, #116
	beq label184
	b label185
label889:
	mov r0, #1
	b label2
label184:
	mov r0, #5
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	b label7
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
	cmp r6, r0
	bgt label43
label237:
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label42
label22:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #46
	beq label23
	b label26
label43:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label20
	b label326
label190:
	add r0, r0, #1
	str r0, [r4, #0]
	b label10
label144:
	ldr r0, [r4, #0]
	b label147
label145:
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
	bne label146
label147:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #44
	beq label149
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label161
	b label162
label158:
	cmp r6, r0
	ble label198
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #93
	bne label198
	b label571
label161:
	ldr r0, [r4, #0]
	b label158
label846:
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
	b label855
label18:
	cmp r6, r0
	bgt label43
	b label237
label326:
	add r0, r0, #1
	str r0, [r4, #0]
	b label18
label166:
	add r0, r0, #1
	str r0, [r4, #0]
	b label136
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
label20:
	cmp r6, r0
	bgt label22
	b label42
label26:
	cmp r6, r0
	bgt label28
label266:
	mov r0, #1
	b label7
label42:
	ldr r0, [r4, #0]
	b label26
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
	ldr r0, [r4, #0]
	b label35
label146:
	add r0, r0, #1
	str r0, [r4, #0]
	b label142
label141:
	ldr r0, [r4, #0]
label142:
	cmp r6, r0
	ble label144
	b label145
label152:
	mov r0, #0
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	cmp r0, #0
	bne label141
	b label198
label149:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label152
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
label134:
	add r0, r0, #1
	str r0, [r4, #0]
	b label73
label35:
	cmp r6, r0
	bgt label37
	b label266
label38:
	add r0, r0, #1
	str r0, [r4, #0]
	b label35
label37:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label266
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	bgt label37
	b label266
label30:
	ldr r0, [r5, r0, lsl #2]
	cmp r0, #43
	bne label32
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b label33
label32:
	ldr r0, [r4, #0]
	b label33
label82:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label130
	b label81
label41:
	ldr r0, [r4, #0]
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #45
	beq label38
	b label35
label185:
	cmp r0, #102
	beq label186
	cmp r0, #110
	bne label198
	mov r0, #7
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl detect_item
	b label7
label86:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label89
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
	bne label86
	b label89
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
label156:
	cmp r6, r0
	ble label161
label162:
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
	beq label158
	add r0, r0, #1
	str r0, [r4, #0]
	b label156
label121:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label122
	b label120
label114:
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, r0
	ble label117
	b label118
label96:
	cmp r6, r0
	ble label98
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
	beq label101
	add r0, r0, #1
	str r0, [r4, #0]
	b label96
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
	bne label1157
	mov r0, #0
	mov r6, r0
	cmp r0, r0
	ble label1140
	b label1138
label1157:
	mov r6, #0
label1129:
	str r0, [r4, r6, lsl #2]
	bl getch
	cmp r0, #35
	add r6, r6, #1
	bne label1129
	ldr r0, [sp, #0]
	cmp r6, r0
	bgt label1138
label1140:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	mov r1, r0
	ldr r0, [sp, #0]
label1141:
	cmp r6, r0
	ble label1145
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
	bne label1144
	b label1145
label1136:
	cmp r6, r0
	ble label1140
label1138:
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
	beq label1140
	add r0, r0, #1
	str r0, [sp, #0]
	b label1136
label1144:
	add r0, r0, #1
	str r0, [sp, #0]
	b label1141
label1145:
	cmp r1, #0
	bne label1149
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
label1147:
	add sp, sp, #8
	pop { r4, r5, r6, pc }
label1149:
	mov r0, #111
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	mov r0, #0
	b label1147
