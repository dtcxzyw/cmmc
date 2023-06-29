.arch armv7ve
.data
.bss
.align 4
a:
	.zero	120000040
.text
.syntax unified
.arm
.fpu vfpv4
radixSort:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #204
	mov r4, r1
	mov r6, sp
	add r7, sp, #64
	add r9, sp, #128
	str r9, [sp, #192]
	add r1, r2, #1
	cmp r1, r3
	mov r1, #0
	movwge r1, #1
	add r5, r0, #1
	clz r5, r5
	lsr r5, r5, #5
	orr r1, r5, r1
	mov r5, #0
	str r5, [sp, #128]
	str r5, [r9, #4]
	str r5, [r9, #8]
	str r5, [r9, #12]
	str r5, [r9, #16]
	str r5, [r9, #20]
	str r5, [r9, #24]
	str r5, [r9, #28]
	str r5, [r9, #32]
	str r5, [r9, #36]
	str r5, [r9, #40]
	str r5, [r9, #44]
	str r5, [r9, #48]
	str r5, [r9, #52]
	str r5, [r9, #56]
	str r5, [r9, #60]
	str r5, [sp, #64]
	str r5, [r7, #4]
	str r5, [r7, #8]
	str r5, [r7, #12]
	str r5, [r7, #16]
	str r5, [r7, #20]
	str r5, [r7, #24]
	str r5, [r7, #28]
	str r5, [r7, #32]
	str r5, [r7, #36]
	str r5, [r7, #40]
	str r5, [r7, #44]
	str r5, [r7, #48]
	str r5, [r7, #52]
	str r5, [r7, #56]
	str r5, [r7, #60]
	str r5, [sp, #0]
	str r5, [r6, #4]
	str r5, [r6, #8]
	str r5, [r6, #12]
	str r5, [r6, #16]
	str r5, [r6, #20]
	str r5, [r6, #24]
	str r5, [r6, #28]
	str r5, [r6, #32]
	str r5, [r6, #36]
	str r5, [r6, #40]
	str r5, [r6, #44]
	str r5, [r6, #48]
	str r5, [r6, #52]
	str r5, [r6, #56]
	str r5, [r6, #60]
	cmp r1, #0
	beq label3
	b label2
label3:
	sub r5, r0, #1
	cmp r2, r3
	bge label58
	mov r8, r2
	ldr r1, [r4, r2, lsl #2]
	cmp r0, #0
	ble label256
	mov r10, #0
	add r9, r10, #512
	cmp r9, r0
	bge label261
	mov r1, #0
	mov r10, r9
	add r9, r9, #512
	cmp r9, r0
	bge label261
	mov r10, r9
	add r9, r9, #512
	cmp r9, r0
	bge label261
	b label971
label261:
	mov r9, r1
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label12
	mov r9, #0
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label12
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label12
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label12
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label12
	b label974
label58:
	str r2, [sp, #128]
	ldr r1, [sp, #0]
	add r1, r2, r1
	str r1, [sp, #64]
	ldr r9, [sp, #192]
	str r1, [r9, #4]
	ldr r3, [r6, #4]
	add r1, r1, r3
	str r1, [r7, #4]
	ldr r9, [sp, #192]
	str r1, [r9, #8]
	ldr r3, [r6, #8]
	add r1, r1, r3
	str r1, [r7, #8]
	ldr r9, [sp, #192]
	str r1, [r9, #12]
	ldr r3, [r6, #12]
	add r1, r1, r3
	str r1, [r7, #12]
	ldr r9, [sp, #192]
	str r1, [r9, #16]
	ldr r3, [r6, #16]
	add r1, r1, r3
	str r1, [r7, #16]
	ldr r9, [sp, #192]
	str r1, [r9, #20]
	ldr r3, [r6, #20]
	add r1, r1, r3
	str r1, [r7, #20]
	ldr r9, [sp, #192]
	str r1, [r9, #24]
	ldr r3, [r6, #24]
	add r1, r1, r3
	str r1, [r7, #24]
	ldr r9, [sp, #192]
	str r1, [r9, #28]
	ldr r3, [r6, #28]
	add r1, r1, r3
	str r1, [r7, #28]
	ldr r9, [sp, #192]
	str r1, [r9, #32]
	ldr r3, [r6, #32]
	add r1, r1, r3
	str r1, [r7, #32]
	ldr r9, [sp, #192]
	str r1, [r9, #36]
	ldr r3, [r6, #36]
	add r1, r1, r3
	str r1, [r7, #36]
	ldr r9, [sp, #192]
	str r1, [r9, #40]
	ldr r3, [r6, #40]
	add r1, r1, r3
	str r1, [r7, #40]
	ldr r9, [sp, #192]
	str r1, [r9, #44]
	ldr r3, [r6, #44]
	add r1, r1, r3
	str r1, [r7, #44]
	ldr r9, [sp, #192]
	str r1, [r9, #48]
	ldr r3, [r6, #48]
	add r1, r1, r3
	str r1, [r7, #48]
	ldr r9, [sp, #192]
	str r1, [r9, #52]
	ldr r3, [r6, #52]
	add r1, r1, r3
	str r1, [r7, #52]
	ldr r9, [sp, #192]
	str r1, [r9, #56]
	ldr r3, [r6, #56]
	add r1, r1, r3
	str r1, [r7, #56]
	ldr r9, [sp, #192]
	str r1, [r9, #60]
	ldr r3, [r6, #60]
	add r1, r1, r3
	str r1, [r7, #60]
	mov r1, #0
	cmp r1, #16
	bge label61
	ldr r9, [sp, #192]
	ldr r3, [r9, r1, lsl #2]
	ldr r8, [r7, r1, lsl #2]
	cmp r3, r8
	bge label70
	ldr r9, [sp, #192]
	ldr r8, [r9, r1, lsl #2]
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label487
	mov r10, r3
	mov r9, #0
	add r11, r9, #512
	cmp r11, r0
	bge label75
	mov r10, #0
	mov r9, r11
	add r11, r11, #512
	cmp r11, r0
	bge label75
	b label933
label61:
	str r2, [sp, #128]
	ldr r0, [sp, #0]
	add r0, r2, r0
	str r0, [sp, #64]
	mov r8, #0
	cmp r8, #16
	bge label2
	cmp r8, #0
	ble label65
	b label66
label75:
	add r11, r9, #64
	cmp r11, r0
	bge label78
	mov r10, #0
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label78
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label78
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label78
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label78
	b label994
label933:
	mov r10, #0
	mov r9, r11
	add r11, r11, #512
	cmp r11, r0
	bge label75
	b label990
label70:
	add r1, r1, #1
	cmp r1, #16
	bge label61
	ldr r9, [sp, #192]
	ldr r3, [r9, r1, lsl #2]
	ldr r8, [r7, r1, lsl #2]
	cmp r3, r8
	bge label70
	ldr r9, [sp, #192]
	ldr r8, [r9, r1, lsl #2]
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label487
	mov r10, r3
	mov r9, #0
	add r11, r9, #512
	cmp r11, r0
	bge label75
	mov r10, #0
	mov r9, r11
	add r11, r11, #512
	cmp r11, r0
	bge label75
	b label933
label990:
	mov r10, #0
	mov r9, r11
	add r11, r11, #512
	cmp r11, r0
	bge label75
	mov r9, r11
	add r11, r11, #512
	cmp r11, r0
	bge label75
label993:
	mov r10, #0
	mov r9, r11
	add r11, r11, #512
	cmp r11, r0
	bge label75
	b label993
label96:
	mov r10, #16
	asr r11, r9, #31
	add r11, r9, r11, lsr #28
	asr r11, r11, #4
	mls r10, r11, r10, r9
	cmp r10, r1
	beq label533
	b label98
label533:
	mov r9, r8
	b label181
label98:
	ldr r9, [sp, #192]
	ldr r9, [r9, r10, lsl #2]
	ldr r8, [r4, r9, lsl #2]
	str r3, [r4, r9, lsl #2]
	ldr r9, [sp, #192]
	ldr r3, [r9, r10, lsl #2]
	add r3, r3, #1
	ldr r9, [sp, #192]
	str r3, [r9, r10, lsl #2]
	cmp r0, #0
	ble label544
	mov r9, r8
	mov r3, #0
	add r10, r3, #512
	cmp r10, r0
	bge label160
	mov r9, #0
	mov r3, r10
	add r10, r10, #512
	cmp r10, r0
	bge label160
	mov r3, r10
	add r10, r10, #512
	cmp r10, r0
	bge label160
	mov r3, r10
	add r10, r10, #512
	cmp r10, r0
	bge label160
	mov r3, r10
	add r10, r10, #512
	cmp r10, r0
	bge label160
	b label1019
label544:
	mov r3, r8
label99:
	mov r9, #16
	asr r10, r3, #31
	add r10, r3, r10, lsr #28
	asr r10, r10, #4
	mls r3, r10, r9, r3
	cmp r3, r1
	beq label101
	cmp r0, #0
	ble label555
	mov r3, r8
	mov r9, #0
	add r10, r9, #512
	cmp r10, r0
	bge label136
	mov r3, #0
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label136
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label136
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label136
label1002:
	mov r3, #0
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label136
	b label1012
label555:
	mov r3, r8
label105:
	mov r9, #16
	asr r10, r3, #31
	add r10, r3, r10, lsr #28
	asr r10, r10, #4
	mls r10, r10, r9, r3
	ldr r9, [sp, #192]
	ldr r9, [r9, r10, lsl #2]
	ldr r3, [r4, r9, lsl #2]
	str r8, [r4, r9, lsl #2]
	ldr r9, [sp, #192]
	ldr r8, [r9, r10, lsl #2]
	add r8, r8, #1
	ldr r9, [sp, #192]
	str r8, [r9, r10, lsl #2]
	cmp r0, #0
	ble label567
	mov r8, r3
	mov r9, #0
	add r10, r9, #512
	cmp r10, r0
	bge label112
	mov r8, #0
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label112
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label112
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label112
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label112
	b label1005
label567:
	mov r8, r3
label107:
	mov r9, #16
	asr r10, r8, #31
	add r10, r8, r10, lsr #28
	asr r10, r10, #4
	mls r8, r10, r9, r8
	cmp r8, r1
	beq label572
	mov r8, r3
	cmp r0, #0
	ble label555
	mov r9, #0
	add r10, r9, #512
	cmp r10, r0
	bge label136
	mov r3, #0
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label136
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label136
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label136
	b label1002
label572:
	mov r8, r3
	ldr r9, [sp, #192]
	ldr r9, [r9, r1, lsl #2]
	b label181
label1005:
	mov r8, #0
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label112
	b label1005
label1012:
	mov r3, #0
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label136
	b label1012
label181:
	str r3, [r4, r9, lsl #2]
	ldr r9, [sp, #192]
	ldr r3, [r9, r1, lsl #2]
	add r3, r3, #1
	ldr r9, [sp, #192]
	str r3, [r9, r1, lsl #2]
	ldr r8, [r7, r1, lsl #2]
	cmp r3, r8
	bge label70
	ldr r9, [sp, #192]
	ldr r8, [r9, r1, lsl #2]
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label487
	mov r10, r3
	mov r9, #0
	add r11, r9, #512
	cmp r11, r0
	bge label75
	mov r10, #0
	mov r9, r11
	add r11, r11, #512
	cmp r11, r0
	bge label75
	mov r9, r11
	add r11, r11, #512
	cmp r11, r0
	bge label75
	b label990
label112:
	add r10, r9, #64
	cmp r10, r0
	bge label115
	mov r8, #0
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label115
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label115
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label115
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label115
	b label1006
label136:
	add r10, r9, #64
	cmp r10, r0
	bge label139
	mov r3, #0
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label139
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label139
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label139
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label139
	b label1013
label115:
	add r10, r9, #64
	cmp r10, r0
	bge label118
	mov r8, #0
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label118
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label118
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label118
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label118
	b label1007
label1006:
	mov r8, #0
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label115
	b label1006
label1013:
	mov r3, #0
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label139
	b label1013
label118:
	add r10, r9, #8
	cmp r10, r0
	bge label121
	mov r8, #0
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label121
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label121
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label121
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label121
	b label1008
label121:
	add r10, r9, #64
	cmp r10, r0
	bge label124
	mov r8, #0
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label124
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label124
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label124
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label124
label1009:
	mov r8, #0
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label124
	b label1009
label124:
	add r10, r9, #8
	cmp r10, r0
	bge label127
	mov r8, #0
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label127
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label127
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label127
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label127
label1010:
	mov r8, #0
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label127
	b label1010
label1008:
	mov r8, #0
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label121
	b label1008
label1007:
	mov r8, #0
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label118
	b label1007
label127:
	add r10, r9, #8
	cmp r10, r0
	bge label130
	mov r8, #0
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label130
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label130
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label130
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label130
	b label1011
label130:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label107
	b label130
label1011:
	mov r8, #0
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label130
	b label1011
label139:
	add r10, r9, #64
	cmp r10, r0
	bge label142
	mov r3, #0
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label142
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label142
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label142
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label142
label1014:
	mov r3, #0
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label142
	b label1014
label142:
	add r10, r9, #8
	cmp r10, r0
	bge label145
	mov r3, #0
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label145
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label145
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label145
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label145
	b label1015
label145:
	add r10, r9, #64
	cmp r10, r0
	bge label148
	mov r3, #0
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label148
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label148
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label148
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label148
	b label1016
label148:
	add r10, r9, #8
	cmp r10, r0
	bge label151
	mov r3, #0
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label151
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label151
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label151
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label151
	b label1017
label151:
	add r10, r9, #8
	cmp r10, r0
	bge label154
	mov r3, #0
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label154
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label154
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label154
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label154
	b label1018
label154:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label105
	b label154
label1018:
	mov r3, #0
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label154
	b label1018
label1017:
	mov r3, #0
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label151
	b label1017
label1016:
	mov r3, #0
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label148
	b label1016
label1015:
	mov r3, #0
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label145
	b label1015
label994:
	mov r10, #0
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label78
	b label994
label78:
	add r11, r9, #64
	cmp r11, r0
	bge label81
	mov r10, #0
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label81
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label81
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label81
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label81
label995:
	mov r10, #0
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label81
	b label995
label81:
	add r11, r9, #8
	cmp r11, r0
	bge label84
	mov r10, #0
	mov r9, r11
	add r11, r11, #8
	cmp r11, r0
	bge label84
	mov r9, r11
	add r11, r11, #8
	cmp r11, r0
	bge label84
	mov r9, r11
	add r11, r11, #8
	cmp r11, r0
	bge label84
	mov r9, r11
	add r11, r11, #8
	cmp r11, r0
	bge label84
label996:
	mov r10, #0
	mov r9, r11
	add r11, r11, #8
	cmp r11, r0
	bge label84
	b label996
label84:
	add r11, r9, #64
	cmp r11, r0
	bge label512
	mov r10, #0
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label512
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label512
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label512
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label512
label997:
	mov r10, #0
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label512
	b label997
label512:
	mov r11, r10
	mov r10, r9
	add r9, r9, #8
	cmp r9, r0
	bge label517
	mov r11, #0
	mov r10, r9
	add r9, r9, #8
	cmp r9, r0
	bge label517
	mov r10, r9
	add r9, r9, #8
	cmp r9, r0
	bge label517
	mov r10, r9
	add r9, r9, #8
	cmp r9, r0
	bge label517
	mov r10, r9
	add r9, r9, #8
	cmp r9, r0
	bge label517
label998:
	mov r11, #0
	mov r10, r9
	add r9, r9, #8
	cmp r9, r0
	bge label517
	b label998
label517:
	mov r9, r11
	add r11, r10, #8
	cmp r11, r0
	bge label93
	mov r9, #0
	mov r10, r11
	add r11, r11, #8
	cmp r11, r0
	bge label93
	mov r10, r11
	add r11, r11, #8
	cmp r11, r0
	bge label93
	mov r10, r11
	add r11, r11, #8
	cmp r11, r0
	bge label93
	mov r10, r11
	add r11, r11, #8
	cmp r11, r0
	bge label93
	b label999
label93:
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label96
	b label93
label999:
	mov r9, #0
	mov r10, r11
	add r11, r11, #8
	cmp r11, r0
	bge label93
	b label999
label1019:
	mov r9, #0
	mov r3, r10
	add r10, r10, #512
	cmp r10, r0
	bge label160
	b label1019
label160:
	add r10, r3, #64
	cmp r10, r0
	bge label163
	mov r9, #0
	mov r3, r10
	add r10, r10, #64
	cmp r10, r0
	bge label163
	mov r3, r10
	add r10, r10, #64
	cmp r10, r0
	bge label163
	mov r3, r10
	add r10, r10, #64
	cmp r10, r0
	bge label163
	mov r3, r10
	add r10, r10, #64
	cmp r10, r0
	bge label163
	b label1020
label163:
	add r10, r3, #64
	cmp r10, r0
	bge label166
	mov r9, #0
	mov r3, r10
	add r10, r10, #64
	cmp r10, r0
	bge label166
	mov r3, r10
	add r10, r10, #64
	cmp r10, r0
	bge label166
	mov r3, r10
	add r10, r10, #64
	cmp r10, r0
	bge label166
	mov r3, r10
	add r10, r10, #64
	cmp r10, r0
	bge label166
	b label1021
label166:
	add r10, r3, #8
	cmp r10, r0
	bge label169
	mov r9, #0
	mov r3, r10
	add r10, r10, #8
	cmp r10, r0
	bge label169
	mov r3, r10
	add r10, r10, #8
	cmp r10, r0
	bge label169
	mov r3, r10
	add r10, r10, #8
	cmp r10, r0
	bge label169
	mov r3, r10
	add r10, r10, #8
	cmp r10, r0
	bge label169
	b label1022
label169:
	add r10, r3, #64
	cmp r10, r0
	bge label172
	mov r9, #0
	mov r3, r10
	add r10, r10, #64
	cmp r10, r0
	bge label172
	mov r3, r10
	add r10, r10, #64
	cmp r10, r0
	bge label172
	mov r3, r10
	add r10, r10, #64
	cmp r10, r0
	bge label172
	mov r3, r10
	add r10, r10, #64
	cmp r10, r0
	bge label172
	b label1023
label172:
	add r10, r3, #8
	cmp r10, r0
	bge label684
	mov r9, #0
	mov r3, r10
	add r10, r10, #8
	cmp r10, r0
	bge label684
	mov r3, r10
	add r10, r10, #8
	cmp r10, r0
	bge label684
	mov r3, r10
	add r10, r10, #8
	cmp r10, r0
	bge label684
	mov r3, r10
	add r10, r10, #8
	cmp r10, r0
	bge label684
	b label1024
label684:
	mov r10, r9
	mov r9, r3
	add r3, r3, #8
	cmp r3, r0
	bge label689
	mov r10, #0
	mov r9, r3
	add r3, r3, #8
	cmp r3, r0
	bge label689
	mov r9, r3
	add r3, r3, #8
	cmp r3, r0
	bge label689
	mov r9, r3
	add r3, r3, #8
	cmp r3, r0
	bge label689
	mov r9, r3
	add r3, r3, #8
	cmp r3, r0
	bge label689
	b label1025
label689:
	mov r3, r10
label178:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label99
	b label178
label1024:
	mov r9, #0
	mov r3, r10
	add r10, r10, #8
	cmp r10, r0
	bge label684
	b label1024
label1025:
	mov r10, #0
	mov r9, r3
	add r3, r3, #8
	cmp r3, r0
	bge label689
	b label1025
label1023:
	mov r9, #0
	mov r3, r10
	add r10, r10, #64
	cmp r10, r0
	bge label172
	b label1023
label1022:
	mov r9, #0
	mov r3, r10
	add r10, r10, #8
	cmp r10, r0
	bge label169
	b label1022
label1021:
	mov r9, #0
	mov r3, r10
	add r10, r10, #64
	cmp r10, r0
	bge label166
	b label1021
label1020:
	mov r9, #0
	mov r3, r10
	add r10, r10, #64
	cmp r10, r0
	bge label163
	b label1020
label487:
	mov r9, r3
	b label96
label101:
	ldr r9, [sp, #192]
	ldr r9, [r9, r1, lsl #2]
	mov r3, r8
	b label181
label974:
	mov r9, #0
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label12
	b label974
label12:
	add r10, r1, #64
	cmp r10, r0
	bge label15
	mov r9, #0
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label15
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label15
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label15
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label15
	b label975
label971:
	mov r1, #0
	mov r10, r9
	add r9, r9, #512
	cmp r9, r0
	bge label261
	b label972
label256:
	mov r9, r1
	b label30
label972:
	mov r1, #0
	mov r10, r9
	add r9, r9, #512
	cmp r9, r0
	bge label261
	b label973
label30:
	mov r1, #16
	asr r10, r9, #31
	add r10, r9, r10, lsr #28
	asr r10, r10, #4
	mls r9, r10, r1, r9
	ldr r1, [r4, r8, lsl #2]
	cmp r0, #0
	ble label304
	mov r11, #0
	add r10, r11, #512
	cmp r10, r0
	bge label321
	mov r1, #0
	mov r11, r10
	add r10, r10, #512
	cmp r10, r0
	bge label321
	mov r11, r10
	add r10, r10, #512
	cmp r10, r0
	bge label321
	mov r11, r10
	add r10, r10, #512
	cmp r10, r0
	bge label321
	mov r11, r10
	add r10, r10, #512
	cmp r10, r0
	bge label321
	b label982
label304:
	mov r10, r1
label32:
	mov r1, #16
	asr r11, r10, #31
	add r11, r10, r11, lsr #28
	asr r11, r11, #4
	mls r1, r11, r1, r10
	ldr r1, [r6, r1, lsl #2]
	add r1, r1, #1
	str r1, [r6, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r3
	bge label58
	ldr r1, [r4, r8, lsl #2]
	cmp r0, #0
	ble label256
	mov r10, #0
	add r9, r10, #512
	cmp r9, r0
	bge label261
	mov r1, #0
	mov r10, r9
	add r9, r9, #512
	cmp r9, r0
	bge label261
	mov r10, r9
	add r9, r9, #512
	cmp r9, r0
	bge label261
	mov r10, r9
	add r9, r9, #512
	cmp r9, r0
	bge label261
	b label972
label321:
	mov r10, r1
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label40
	mov r10, #0
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label40
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label40
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label40
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label40
	b label983
label973:
	mov r1, #0
	mov r10, r9
	add r9, r9, #512
	cmp r9, r0
	bge label261
	b label973
label982:
	mov r1, #0
	mov r11, r10
	add r10, r10, #512
	cmp r10, r0
	bge label321
	b label982
label975:
	mov r9, #0
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label15
	b label975
label15:
	add r10, r1, #8
	cmp r10, r0
	bge label18
	mov r9, #0
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label18
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label18
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label18
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label18
label976:
	mov r9, #0
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label18
	b label976
label18:
	add r10, r1, #64
	cmp r10, r0
	bge label21
	mov r9, #0
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label21
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label21
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label21
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label21
	b label977
label21:
	add r10, r1, #8
	cmp r10, r0
	bge label24
	mov r9, #0
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label24
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label24
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label24
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label24
label978:
	mov r9, #0
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label24
	b label978
label24:
	add r10, r1, #8
	cmp r10, r0
	bge label27
	mov r9, #0
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label27
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label27
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label27
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label27
	b label979
label27:
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label30
	b label27
label979:
	mov r9, #0
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label27
	b label979
label977:
	mov r9, #0
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label21
	b label977
label983:
	mov r10, #0
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label40
	b label983
label40:
	add r11, r1, #64
	cmp r11, r0
	bge label43
	mov r10, #0
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label43
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label43
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label43
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label43
	b label984
label43:
	add r11, r1, #8
	cmp r11, r0
	bge label46
	mov r10, #0
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label46
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label46
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label46
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label46
label985:
	mov r10, #0
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label46
	b label985
label984:
	mov r10, #0
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label43
	b label984
label46:
	add r11, r1, #64
	cmp r11, r0
	bge label49
	mov r10, #0
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label49
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label49
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label49
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label49
	b label986
label49:
	add r11, r1, #8
	cmp r11, r0
	bge label52
	mov r10, #0
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label52
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label52
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label52
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label52
label987:
	mov r10, #0
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label52
	b label987
label52:
	add r11, r1, #8
	cmp r11, r0
	bge label55
	mov r10, #0
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label55
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label55
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label55
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label55
	b label988
label55:
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label32
	b label55
label988:
	mov r10, #0
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label55
	b label988
label986:
	mov r10, #0
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label49
	b label986
label65:
	ldr r9, [sp, #192]
	ldr r2, [r9, r8, lsl #2]
	ldr r3, [r7, r8, lsl #2]
	mov r0, r5
	mov r1, r4
	bl radixSort
	add r8, r8, #1
	cmp r8, #16
	bge label2
	cmp r8, #0
	ble label65
label66:
	sub r0, r8, #1
	ldr r0, [r7, r0, lsl #2]
	ldr r9, [sp, #192]
	str r0, [r9, r8, lsl #2]
	ldr r1, [r6, r8, lsl #2]
	add r0, r0, r1
	str r0, [r7, r8, lsl #2]
	b label65
label2:
	add sp, sp, #204
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
	movw r4, #:lower16:a
	movt r4, #:upper16:a
	mov r6, r4
	mov r0, r4
	bl getarray
	mov r5, r0
	mov r0, #90
	bl _sysy_starttime
	mov r0, #8
	mov r1, r4
	mov r2, #0
	mov r3, r5
	bl radixSort
	cmp r5, #0
	ble label1131
	mov r1, #0
	mov r0, r1
	add r2, r1, #8
	cmp r2, r5
	bge label1117
	b label1116
label1131:
	mov r4, #0
	b label1124
label1116:
	add r3, r6, r0, lsl #2
	ldr r7, [r6, r0, lsl #2]
	ldr r8, [r3, #4]
	add r4, r0, #3
	sdiv r9, r8, r4
	mls r9, r9, r4, r8
	add r10, r0, #1
	add r8, r0, #2
	sdiv r11, r7, r8
	mls r7, r11, r8, r7
	mla r1, r0, r7, r1
	mla r1, r10, r9, r1
	ldr r9, [r3, #8]
	add r7, r0, #4
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r8, r8, r9, r1
	ldr r9, [r3, #12]
	add r1, r0, #5
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r4, r4, r9, r8
	ldr r9, [r3, #16]
	add r8, r0, #6
	sdiv r10, r9, r8
	mls r9, r10, r8, r9
	mla r7, r7, r9, r4
	ldr r9, [r3, #20]
	add r4, r0, #7
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r1, r1, r9, r7
	ldr r7, [r3, #24]
	sdiv r9, r7, r2
	mls r7, r9, r2, r7
	mla r1, r8, r7, r1
	ldr r3, [r3, #28]
	add r0, r0, #9
	sdiv r7, r3, r0
	mls r0, r7, r0, r3
	mla r1, r4, r0, r1
	mov r0, r2
	add r2, r2, #8
	cmp r2, r5
	bge label1117
	b label1116
label1121:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1251
	b label1121
label1251:
	mov r4, r1
label1124:
	mov r0, #102
	bl _sysy_stoptime
	cmp r4, #0
	rsb r1, r4, #0
	mov r0, r4
	movlt r0, r1
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label1117:
	add r2, r0, #8
	cmp r2, r5
	bge label1121
label1120:
	add r3, r6, r0, lsl #2
	ldr r7, [r6, r0, lsl #2]
	ldr r8, [r3, #4]
	add r4, r0, #3
	sdiv r9, r8, r4
	mls r9, r9, r4, r8
	add r10, r0, #1
	add r8, r0, #2
	sdiv r11, r7, r8
	mls r7, r11, r8, r7
	mla r1, r0, r7, r1
	mla r1, r10, r9, r1
	ldr r9, [r3, #8]
	add r7, r0, #4
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r8, r8, r9, r1
	ldr r9, [r3, #12]
	add r1, r0, #5
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r4, r4, r9, r8
	ldr r9, [r3, #16]
	add r8, r0, #6
	sdiv r10, r9, r8
	mls r9, r10, r8, r9
	mla r7, r7, r9, r4
	ldr r9, [r3, #20]
	add r4, r0, #7
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r1, r1, r9, r7
	ldr r7, [r3, #24]
	sdiv r9, r7, r2
	mls r7, r9, r2, r7
	mla r1, r8, r7, r1
	ldr r3, [r3, #28]
	add r0, r0, #9
	sdiv r7, r3, r0
	mls r0, r7, r0, r3
	mla r1, r4, r0, r1
	mov r0, r2
	add r2, r2, #8
	cmp r2, r5
	bge label1121
	b label1120
