.arch armv7ve
.data
.bss
.align 8
ints:
	.zero	40000
.align 8
chas:
	.zero	40000
.align 8
get:
	.zero	40000
.align 8
get2:
	.zero	40000
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
	bl getch
	movw r4, #:lower16:get
	movt r4, #:upper16:get
	mov r2, #0
	mov r1, #0
	cmp r0, #13
	movwne r1, #1
	cmp r0, #10
	movwne r2, #1
	ands r1, r1, r2
	beq label156
	mov r5, r4
	mov r6, #0
.p2align 4
label3:
	str r0, [r5, #0]
	bl getch
	add r6, r6, #1
	mov r2, #0
	mov r1, #0
	cmp r0, #13
	movwne r1, #1
	cmp r0, #10
	movwne r2, #1
	ands r1, r1, r2
	beq label164
	add r5, r5, #4
	b label3
label164:
	mov r1, r6
	movw r0, #:lower16:chas
	movt r0, #:upper16:chas
	mov r2, r4
	mov r5, #0
	mov r8, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r3, r5
	add r6, r6, #4
label10:
	cmp r1, r3
	bgt label16
	b label101
.p2align 4
label17:
	str r4, [r6, #0]
	add r8, r8, #1
	add r2, r2, #4
	cmp r1, r3
	add r6, r6, #4
	ble label101
.p2align 4
label16:
	ldr r4, [r2, #0]
	add r3, r3, #1
	sub r7, r4, #48
	cmp r7, #10
	blo label17
	cmp r4, #40
	beq label19
	cmp r4, #94
	beq label22
	cmp r4, #41
	beq label25
	mov r6, r8
	cmp r4, #43
	mov r8, r5
	beq label36
	cmp r4, #45
	beq label91
label730:
	mov r7, r6
	cmp r4, #42
	beq label52
	b label265
.p2align 4
label32:
	add r5, r5, #8
.p2align 4
label27:
	mov r9, #32
	add r8, r8, #2
	str r9, [r5, #0]
	str r6, [r5, #4]
	ldr r6, [r0, r7, lsl #2]
	sub r7, r7, #1
	cmp r6, #40
	bne label32
	mov r6, r8
	cmp r4, #43
	mov r8, r7
	beq label36
	cmp r4, #45
	beq label91
	mov r7, r6
	cmp r4, #42
	beq label52
.p2align 4
label265:
	cmp r4, #47
	beq label81
.p2align 4
label693:
	mov r6, r7
	cmp r4, #37
	bne label720
.p2align 4
label71:
	add r4, r0, r8, lsl #2
	mov r5, r6
	mov r7, r8
.p2align 4
label72:
	ldr r8, [r4, #0]
	sub r10, r8, #94
	sub r9, r8, #47
	sub r6, r8, #42
	clz r10, r10
	clz r9, r9
	clz r6, r6
	lsr r10, r10, #5
	lsr r9, r9, #5
	lsr r6, r6, #5
	orr r6, r6, r9
	sub r9, r8, #37
	clz r9, r9
	lsr r9, r9, #5
	orr r9, r9, r10
	orrs r6, r6, r9
	beq label318
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r9, #32
	subs r7, r7, #1
	add r6, r6, r5, lsl #2
	add r5, r5, #2
	str r9, [r6, #0]
	str r8, [r6, #4]
	beq label318
	sub r4, r4, #4
	b label72
.p2align 4
label202:
	mov r6, r8
	cmp r4, #43
	mov r8, r5
	bne label690
.p2align 4
label36:
	add r5, r0, r8, lsl #2
	mov r7, r6
.p2align 4
label37:
	ldr r10, [r5, #0]
	sub r11, r10, #47
	sub r9, r10, #45
	sub r6, r10, #43
	clz r11, r11
	clz r9, r9
	clz r6, r6
	lsr r11, r11, #5
	lsr r9, r9, #5
	lsr r6, r6, #5
	orr r6, r6, r9
	sub r9, r10, #42
	clz r9, r9
	lsr r9, r9, #5
	orr r9, r9, r11
	sub r11, r10, #94
	orr r6, r6, r9
	clz r11, r11
	sub r9, r10, #37
	lsr r11, r11, #5
	clz r9, r9
	lsr r9, r9, #5
	orr r9, r9, r11
	orrs r6, r6, r9
	beq label244
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r9, #32
	subs r8, r8, #1
	add r6, r6, r7, lsl #2
	str r9, [r6, #0]
	str r10, [r6, #4]
	add r6, r7, #2
	bne label42
	add r8, r8, #1
	mov r5, #43
	cmp r4, #45
	str r5, [r0, r8, lsl #2]
	bne label709
.p2align 4
label91:
	add r5, r0, r8, lsl #2
	mov r7, r6
.p2align 4
label92:
	ldr r10, [r5, #0]
	sub r11, r10, #47
	sub r9, r10, #45
	sub r6, r10, #43
	clz r11, r11
	clz r9, r9
	clz r6, r6
	lsr r11, r11, #5
	lsr r9, r9, #5
	lsr r6, r6, #5
	orr r6, r6, r9
	sub r9, r10, #42
	clz r9, r9
	lsr r9, r9, #5
	orr r9, r9, r11
	sub r11, r10, #94
	orr r6, r6, r9
	clz r11, r11
	sub r9, r10, #37
	lsr r11, r11, #5
	clz r9, r9
	lsr r9, r9, #5
	orr r9, r9, r11
	orrs r6, r6, r9
	beq label96
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r9, #32
	subs r8, r8, #1
	add r6, r6, r7, lsl #2
	add r7, r7, #2
	str r9, [r6, #0]
	str r10, [r6, #4]
	beq label386
	sub r5, r5, #4
	b label92
.p2align 4
label700:
	cmp r4, #47
	bne label711
.p2align 4
label81:
	add r5, r0, r8, lsl #2
.p2align 4
label82:
	ldr r10, [r5, #0]
	sub r11, r10, #94
	sub r9, r10, #47
	sub r6, r10, #42
	clz r11, r11
	clz r9, r9
	clz r6, r6
	lsr r11, r11, #5
	lsr r9, r9, #5
	lsr r6, r6, #5
	orr r6, r6, r9
	sub r9, r10, #37
	clz r9, r9
	lsr r9, r9, #5
	orr r9, r9, r11
	orrs r6, r6, r9
	beq label344
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r9, #32
	subs r8, r8, #1
	add r6, r6, r7, lsl #2
	str r9, [r6, #0]
	str r10, [r6, #4]
	add r6, r7, #2
	beq label353
	sub r5, r5, #4
	mov r7, r6
	b label82
.p2align 4
label386:
	add r8, r8, #1
	mov r5, #45
	cmp r4, #42
	str r5, [r0, r8, lsl #2]
	bne label700
.p2align 4
label52:
	add r5, r0, r8, lsl #2
.p2align 4
label53:
	ldr r10, [r5, #0]
	sub r11, r10, #94
	sub r9, r10, #47
	sub r6, r10, #42
	clz r11, r11
	clz r9, r9
	clz r6, r6
	lsr r11, r11, #5
	lsr r9, r9, #5
	lsr r6, r6, #5
	orr r6, r6, r9
	sub r9, r10, #37
	clz r9, r9
	lsr r9, r9, #5
	orr r9, r9, r11
	orrs r6, r6, r9
	beq label57
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r9, #32
	subs r8, r8, #1
	add r6, r6, r7, lsl #2
	add r7, r7, #2
	str r9, [r6, #0]
	str r10, [r6, #4]
	beq label290
	sub r5, r5, #4
	b label53
.p2align 4
label318:
	mov r4, r5
	add r5, r7, #1
	mov r6, #37
	mov r9, #32
	add r8, r4, #1
	str r6, [r0, r5, lsl #2]
	add r2, r2, #4
	cmp r1, r3
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r9, [r6, r4, lsl #2]
	add r6, r6, r8, lsl #2
	bgt label16
	b label101
.p2align 4
label19:
	add r5, r5, #1
	mov r6, #40
	str r6, [r0, r5, lsl #2]
	cmp r4, #94
	bne label195
.p2align 4
label22:
	add r5, r5, #1
	mov r6, #94
	str r6, [r0, r5, lsl #2]
	cmp r4, #41
	bne label202
.p2align 4
label25:
	ldr r9, [r0, r5, lsl #2]
	sub r7, r5, #1
	cmp r9, #40
	beq label210
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	add r5, r6, r8, lsl #2
	mov r6, r9
	b label27
.p2align 4
label353:
	add r8, r8, #1
	mov r5, #47
	cmp r4, #37
	str r5, [r0, r8, lsl #2]
	beq label71
	mov r5, r8
	mov r4, r6
	mov r9, #32
	add r2, r2, #4
	cmp r1, r3
	add r8, r6, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r9, [r6, r4, lsl #2]
	add r6, r6, r8, lsl #2
	bgt label16
	b label101
.p2align 4
label290:
	add r8, r8, #1
	mov r5, #42
	cmp r4, #47
	str r5, [r0, r8, lsl #2]
	beq label81
	mov r6, r7
	cmp r4, #37
	beq label71
	mov r5, r8
	mov r4, r7
	mov r9, #32
	add r2, r2, #4
	cmp r1, r3
	add r8, r7, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r9, [r6, r7, lsl #2]
	add r6, r6, r8, lsl #2
	bgt label16
	b label101
.p2align 4
label195:
	cmp r4, #41
	beq label25
	mov r6, r8
	cmp r4, #43
	mov r8, r5
	beq label36
	cmp r4, #45
	beq label91
	mov r7, r6
	cmp r4, #42
	beq label52
	b label265
.p2align 4
label709:
	mov r7, r6
	cmp r4, #42
	beq label52
	cmp r4, #47
	beq label81
	b label693
label711:
	mov r6, r7
	cmp r4, #37
	beq label71
label299:
	mov r5, r8
	mov r4, r6
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r9, #32
	add r8, r4, #1
	add r2, r2, #4
	str r9, [r6, r4, lsl #2]
	cmp r1, r3
	add r6, r6, r8, lsl #2
	bgt label16
	b label101
label690:
	cmp r4, #45
	beq label91
	mov r7, r6
	cmp r4, #42
	beq label52
	b label265
label101:
	cmp r5, #0
	ble label116
	subs r1, r5, #4
	ble label103
	add r1, r0, r5, lsl #2
	b label110
.p2align 4
label115:
	sub r1, r1, #16
.p2align 4
label110:
	ldr r3, [r1, #0]
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r9, #32
	sub r5, r5, #4
	add r2, r6, r8, lsl #2
	cmp r5, #4
	add r8, r8, #8
	str r9, [r2, #0]
	str r3, [r2, #4]
	ldr r3, [r1, #-4]
	str r9, [r2, #8]
	str r3, [r2, #12]
	ldr r3, [r1, #-8]
	str r9, [r2, #16]
	str r3, [r2, #20]
	ldr r3, [r1, #-12]
	str r9, [r2, #24]
	str r3, [r2, #28]
	bgt label115
label103:
	add r0, r0, r5, lsl #2
label104:
	ldr r1, [r0, #0]
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r9, #32
	subs r5, r5, #1
	add r2, r6, r8, lsl #2
	add r8, r8, #2
	str r9, [r2, #0]
	str r1, [r2, #4]
	ble label116
	sub r0, r0, #4
	b label104
label116:
	mov r0, #64
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r0, [r6, r8, lsl #2]
	movw r0, #:lower16:ints
	movt r0, #:upper16:ints
	ldr r1, [r6, #4]
	cmp r1, #64
	beq label118
	mov r2, #0
	mov r1, #1
	b label119
.p2align 4
label146:
	sdiv r5, r3, r8
	cmp r4, #94
	mls r5, r5, r8, r3
	bne label701
.p2align 4
label140:
	cmp r8, #0
	beq label526
	mov r4, r8
	mov r5, #1
.p2align 4
label141:
	mul r5, r3, r5
	subs r4, r4, #1
	bne label141
	sub r2, r2, #1
	add r1, r1, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r5, [r0, r2, lsl #2]
	ldr r3, [r6, r1, lsl #2]
	cmp r3, #64
	beq label118
.p2align 4
label119:
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	add r3, r6, r1, lsl #2
	ldr r4, [r3, #0]
	sub r10, r4, #94
	sub r9, r4, #47
	sub r6, r4, #42
	sub r5, r4, #43
	clz r10, r10
	clz r9, r9
	clz r6, r6
	clz r5, r5
	lsr r10, r10, #5
	lsr r9, r9, #5
	lsr r6, r6, #5
	lsr r7, r5, #5
	orr r9, r6, r9
	sub r5, r4, #45
	clz r5, r5
	lsr r5, r5, #5
	orr r8, r7, r5
	orr r8, r8, r9
	sub r9, r4, #37
	clz r9, r9
	lsr r9, r9, #5
	orr r9, r9, r10
	orrs r8, r8, r9
	beq label122
	add r3, r0, r2, lsl #2
	cmp r7, #0
	mov r7, #0
	ldr r8, [r3, #0]
	ldr r3, [r3, #-4]
	add r9, r8, r3
	movne r7, r9
	cmp r5, #0
	sub r9, r3, r8
	mov r5, r7
	mul r7, r8, r3
	movne r5, r9
	cmp r6, #0
	movne r5, r7
	cmp r4, #47
	bne label136
	sdiv r5, r3, r8
	cmp r4, #37
	beq label146
	cmp r4, #94
	beq label140
	sub r2, r2, #1
	add r1, r1, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r5, [r0, r2, lsl #2]
	ldr r3, [r6, r1, lsl #2]
	cmp r3, #64
	bne label119
	b label118
.p2align 4
label136:
	cmp r4, #37
	beq label146
	cmp r4, #94
	beq label140
	sub r2, r2, #1
	add r1, r1, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r5, [r0, r2, lsl #2]
	ldr r3, [r6, r1, lsl #2]
	cmp r3, #64
	bne label119
	b label118
label122:
	cmp r4, #32
	bne label123
	add r1, r1, #1
label132:
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	ldr r3, [r6, r1, lsl #2]
	cmp r3, #64
	bne label119
	b label118
label123:
	add r5, r2, #1
	sub r4, r4, #48
	str r4, [r0, r5, lsl #2]
	ldr r2, [r3, #4]
	cmp r2, #32
	beq label479
	add r2, r3, #4
	mov r3, #1
	b label125
.p2align 4
label129:
	add r2, r2, #4
.p2align 4
label125:
	ldr r6, [r2, #0]
	add r4, r4, r4, lsl #2
	add r3, r3, #1
	lsl r4, r4, #1
	sub r4, r4, #48
	add r4, r6, r4
	str r4, [r0, r5, lsl #2]
	ldr r6, [r2, #4]
	cmp r6, #32
	bne label129
	add r1, r1, r3
	mov r2, r5
	b label132
label526:
	mov r5, #1
	sub r2, r2, #1
	str r5, [r0, r2, lsl #2]
	add r1, r1, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	ldr r3, [r6, r1, lsl #2]
	cmp r3, #64
	bne label119
label118:
	ldr r0, [r0, #4]
	bl putint
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label210:
	mov r6, r8
	mov r8, r7
	cmp r4, #43
	beq label36
	cmp r4, #45
	beq label91
	mov r7, r6
	cmp r4, #42
	beq label52
	b label265
.p2align 4
label701:
	sub r2, r2, #1
	add r1, r1, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r5, [r0, r2, lsl #2]
	ldr r3, [r6, r1, lsl #2]
	cmp r3, #64
	bne label119
	b label118
label344:
	mov r6, r7
	add r8, r8, #1
	mov r5, #47
	str r5, [r0, r8, lsl #2]
label65:
	cmp r4, #37
	beq label71
	b label299
label57:
	add r8, r8, #1
	mov r5, #42
	cmp r4, #47
	str r5, [r0, r8, lsl #2]
	beq label81
	mov r6, r7
	b label65
label720:
	mov r5, r8
	mov r4, r6
	mov r9, #32
	add r2, r2, #4
	cmp r1, r3
	add r8, r6, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r9, [r6, r4, lsl #2]
	add r6, r6, r8, lsl #2
	bgt label16
	b label101
label96:
	add r8, r8, #1
	mov r5, #45
	cmp r4, #42
	str r5, [r0, r8, lsl #2]
	beq label52
	b label265
label244:
	mov r6, r7
	add r8, r8, #1
	mov r5, #43
	str r5, [r0, r8, lsl #2]
	cmp r4, #45
	beq label91
	b label730
label479:
	mov r3, #1
	mov r2, r5
	add r1, r1, r3
	b label132
label156:
	mov r1, #0
	movw r0, #:lower16:chas
	movt r0, #:upper16:chas
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r2, r4
	mov r5, #0
	mov r8, #1
	add r6, r6, #4
	mov r3, r5
	b label10
.p2align 4
label42:
	sub r5, r5, #4
	mov r7, r6
	b label37
