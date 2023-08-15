.arch armv7ve
.data
.section .rodata
.align 8
__cmmc_jumptable194:
	.word	label103-__cmmc_jumptable194
	.word	label19-__cmmc_jumptable194
	.word	label54-__cmmc_jumptable194
	.word	label70-__cmmc_jumptable194
	.word	label111-__cmmc_jumptable194
	.word	label174-__cmmc_jumptable194
	.word	label63-__cmmc_jumptable194
	.word	label12-__cmmc_jumptable194
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
	mov r1, r0
	ldr r0, [r3, #0]
label4:
	cmp r6, r0
	bgt label9
label188:
	mov r0, #0
label7:
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
label9:
	cmp r6, r0
	bgt label179
label11:
	movw r0, #:lower16:__cmmc_jumptable194
	movt r0, #:upper16:__cmmc_jumptable194
	ldr r1, [r0, r1, lsl #2]
	add r0, r0, r1
	bx r0
label70:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
label71:
	cmp r6, r0
	ble label102
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
	beq label75
	add r0, r0, #1
	str r0, [r5, #0]
	b label71
label179:
	ldr r0, [r5, #0]
	ldr r2, [r4, r0, lsl #2]
	sub r7, r2, #9
	sub r3, r2, #32
	clz r7, r7
	clz r3, r3
	lsr r7, r7, #5
	lsr r3, r3, #5
	orr r3, r3, r7
	sub r7, r2, #10
	sub r2, r2, #13
	clz r7, r7
	clz r2, r2
	lsr r7, r7, #5
	lsr r2, r2, #5
	orr r2, r7, r2
	orrs r2, r3, r2
	beq label11
	add r0, r0, #1
	str r0, [r5, #0]
	b label9
label54:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
label55:
	cmp r6, r0
	ble label356
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	beq label60
	sub r1, r1, #92
	add r0, r0, #1
	clz r1, r1
	lsr r1, r1, #5
	add r0, r1, r0
	str r0, [r5, #0]
	b label55
label111:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
label112:
	cmp r6, r0
	bgt label172
	ldr r0, [r5, #0]
label115:
	cmp r6, r0
	bgt label171
label117:
	mov r0, #2
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	beq label188
	ldr r0, [r5, #0]
label119:
	cmp r6, r0
	bgt label121
	ldr r0, [r5, #0]
label124:
	cmp r6, r0
	ble label188
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #58
	bne label188
label628:
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label130
label132:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	beq label188
label653:
	ldr r0, [r5, #0]
label134:
	cmp r6, r0
	ble label170
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
	beq label136
	add r0, r0, #1
	str r0, [r5, #0]
	b label134
label172:
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
	beq label115
	add r0, r0, #1
	str r0, [r5, #0]
	b label112
label102:
	ldr r0, [r5, #0]
label75:
	cmp r6, r0
	ble label78
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	beq label52
label78:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	beq label188
label456:
	ldr r0, [r5, #0]
label80:
	cmp r6, r0
	bgt label100
	ldr r0, [r5, #0]
label82:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label468
label84:
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	bgt label87
label89:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	bne label456
	b label188
label19:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r2, r1, #43
	sub r1, r1, #45
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r2, r1
	beq label20
	add r0, r0, #1
	str r0, [r5, #0]
label20:
	cmp r6, r0
	ble label188
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label188
label23:
	cmp r6, r0
	ble label258
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label28
	add r0, r0, #1
	str r0, [r5, #0]
	b label23
label100:
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
	beq label82
	add r0, r0, #1
	str r0, [r5, #0]
	b label80
label87:
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
	bne label84
	b label89
label174:
	ldr r0, [r5, #0]
	add r1, r0, #3
	cmp r6, r1
	ble label188
	add r1, r4, r0, lsl #2
	ldr r2, [r1, #0]
	cmp r2, #116
	bne label188
	ldr r2, [r1, #4]
	cmp r2, #114
	bne label188
	ldr r2, [r1, #8]
	cmp r2, #117
	bne label188
	ldr r1, [r1, #12]
	cmp r1, #101
	bne label188
label230:
	add r0, r0, #4
	str r0, [r5, #0]
	mov r0, #1
	b label7
label12:
	ldr r0, [r5, #0]
	add r1, r0, #3
	cmp r6, r1
	ble label188
	add r1, r4, r0, lsl #2
	ldr r2, [r1, #0]
	cmp r2, #110
	bne label188
	ldr r2, [r1, #4]
	cmp r2, #117
	bne label188
	ldr r2, [r1, #8]
	cmp r2, #108
	bne label188
	ldr r1, [r1, #12]
	cmp r1, #108
	bne label188
	b label230
label356:
	ldr r0, [r5, #0]
label60:
	cmp r6, r0
	ble label188
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #34
	bne label188
label52:
	add r0, r0, #1
	str r0, [r5, #0]
	mov r0, #1
	b label7
label103:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #123
	bne label104
	mov r1, #4
	b label4
label104:
	cmp r1, #91
	bne label105
	mov r1, #3
	ldr r0, [r5, #0]
	b label4
label63:
	ldr r0, [r5, #0]
	add r1, r0, #4
	cmp r6, r1
	ble label188
	add r1, r4, r0, lsl #2
	ldr r2, [r1, #0]
	cmp r2, #102
	bne label188
	ldr r2, [r1, #4]
	cmp r2, #97
	bne label188
	ldr r2, [r1, #8]
	cmp r2, #108
	bne label188
	ldr r2, [r1, #12]
	cmp r2, #115
	bne label188
	ldr r1, [r1, #16]
	cmp r1, #101
	bne label188
	add r0, r0, #5
	str r0, [r5, #0]
	mov r0, #1
	b label7
label121:
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
	beq label124
	add r0, r0, #1
	str r0, [r5, #0]
	b label119
label171:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	beq label52
	b label117
label105:
	cmp r1, #34
	beq label559
	sub r0, r1, #43
	sub r2, r1, #45
	clz r0, r0
	clz r2, r2
	lsr r0, r0, #5
	lsr r2, r2, #5
	orr r0, r0, r2
	sub r2, r1, #48
	cmp r2, #10
	mov r2, #0
	movwlo r2, #1
	orrs r0, r0, r2
	beq label107
	mov r1, #1
	ldr r0, [r5, #0]
	b label4
label258:
	ldr r0, [r5, #0]
label28:
	cmp r6, r0
	bgt label31
	ldr r0, [r5, #0]
label35:
	cmp r6, r0
	bgt label37
label299:
	mov r0, #1
	b label7
label31:
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #46
	bne label35
label32:
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label35
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	blo label32
	b label35
label170:
	ldr r0, [r5, #0]
label136:
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #44
	bne label665
label138:
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r6, r0
	ble label143
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
	bne label138
label143:
	mov r0, #2
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	beq label188
	ldr r0, [r5, #0]
label145:
	cmp r6, r0
	bgt label147
	ldr r0, [r5, #0]
label149:
	cmp r6, r0
	ble label188
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #58
	bne label188
label721:
	add r0, r0, #1
	str r0, [r5, #0]
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
	bne label721
label157:
	mov r0, #0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	cmp r0, #0
	bne label653
	b label188
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
	bne label628
	b label132
label37:
	ldr r0, [r5, #0]
	add r1, r4, r0, lsl #2
	ldr r2, [r1, #0]
	cmp r2, #101
	bne label299
	add r0, r0, #1
	cmp r6, r0
	str r0, [r5, #0]
	ble label39
	ldr r0, [r1, #4]
	cmp r0, #43
	bne label49
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
label39:
	cmp r6, r0
	ble label41
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #45
	bne label45
label42:
	add r0, r0, #1
	str r0, [r5, #0]
label45:
	cmp r6, r0
	ble label299
	ldr r0, [r5, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r1, r1, #48
	cmp r1, #10
	bhs label299
	b label42
label41:
	ldr r0, [r5, #0]
	b label45
label147:
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
	beq label149
	add r0, r0, #1
	str r0, [r5, #0]
	b label145
label107:
	cmp r1, #116
	bne label108
	mov r1, #5
	ldr r0, [r5, #0]
	b label4
label49:
	ldr r0, [r5, #0]
	b label39
label468:
	ldr r0, [r5, #0]
label91:
	cmp r6, r0
	bgt label94
	ldr r0, [r5, #0]
label96:
	cmp r6, r0
	ble label188
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #93
	bne label188
	b label52
label94:
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
	beq label96
	add r0, r0, #1
	str r0, [r5, #0]
	b label91
label108:
	cmp r1, #102
	bne label109
	mov r1, #6
	ldr r0, [r5, #0]
	b label4
label109:
	cmp r1, #110
	bne label188
	mov r0, #7
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl detect_item
	b label7
label665:
	ldr r0, [r5, #0]
label160:
	cmp r6, r0
	bgt label162
	ldr r0, [r5, #0]
label164:
	cmp r6, r0
	ble label188
	ldr r1, [r4, r0, lsl #2]
	cmp r1, #125
	bne label188
	b label52
label162:
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
	beq label164
	add r0, r0, #1
	str r0, [r5, #0]
	b label160
label559:
	mov r1, #2
	ldr r0, [r5, #0]
	b label4
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[4] RegSpill[0] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, lr }
	mov r4, #0
	sub sp, sp, #8
	str r4, [sp, #0]
	mov r6, sp
	bl getch
	cmp r0, #35
	movw r5, #:lower16:buffer
	movt r5, #:upper16:buffer
	beq label1119
	mov r7, r5
	mov r8, r4
.p2align 4
label1090:
	str r0, [r7, #0]
	bl getch
	cmp r0, #35
	add r1, r8, #1
	beq label1125
	add r7, r7, #4
	mov r8, r1
	b label1090
label1125:
	ldr r0, [sp, #0]
	mov r7, r1
label1099:
	cmp r7, r0
	bgt label1111
label1101:
	mov r0, r4
	mov r1, r5
	mov r2, r7
	mov r3, r6
	bl detect_item
	mov r1, r0
	ldr r0, [sp, #0]
label1102:
	cmp r7, r0
	bgt label1104
label1106:
	cmp r1, #0
	beq label1110
	mov r0, #111
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	mov r0, r4
label1108:
	add sp, sp, #8
	pop { r4, r5, r6, r7, r8, pc }
label1111:
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
	beq label1101
	add r0, r0, #1
	str r0, [sp, #0]
	b label1099
label1104:
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
	beq label1106
	add r0, r0, #1
	str r0, [sp, #0]
	b label1102
label1110:
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
	b label1108
label1119:
	mov r0, r4
	mov r7, r4
	b label1099
