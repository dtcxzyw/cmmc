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
	mov r4, #43
	mov r2, #0
	movw r5, #:lower16:get
	movt r5, #:upper16:get
	mov r1, #0
	cmp r0, #13
	movwne r1, #1
	cmp r0, #10
	movwne r2, #1
	ands r1, r1, r2
	beq label159
	mov r6, r5
	mov r7, #0
.p2align 4
label3:
	str r0, [r6, #0]
	bl getch
	add r7, r7, #1
	mov r1, #0
	mov r2, #0
	cmp r0, #13
	movwne r1, #1
	cmp r0, #10
	movwne r2, #1
	ands r1, r1, r2
	beq label167
	add r6, r6, #4
	b label3
label167:
	mov r0, r7
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r1, r5
	mov r8, #1
	add r6, r6, #4
	mov r5, #0
	mov r2, r5
label10:
	cmp r0, r2
	bgt label16
	b label101
.p2align 4
label312:
	mov r3, r5
	add r5, r7, #1
	mov r6, #37
	mov r9, #32
	add r8, r3, #1
	add r1, r1, #4
	cmp r0, r2
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	str r6, [r7, r5, lsl #2]
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r9, [r6, r3, lsl #2]
	add r6, r6, r8, lsl #2
	ble label101
.p2align 4
label16:
	ldr r3, [r1, #0]
	add r2, r2, #1
	sub r7, r3, #48
	cmp r7, #10
	bhs label184
	str r3, [r6, #0]
	add r8, r8, #1
	add r1, r1, #4
	cmp r0, r2
	add r6, r6, #4
	bgt label16
label101:
	cmp r5, #0
	ble label119
	subs r0, r5, #3
	ble label399
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	add r0, r7, r5, lsl #2
	b label114
.p2align 4
label184:
	cmp r3, #40
	bne label690
	add r5, r5, #1
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	mov r6, #40
	str r6, [r7, r5, lsl #2]
	cmp r3, #94
	beq label100
	cmp r3, #41
	bne label202
.p2align 4
label24:
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	sub r10, r5, #1
	ldr r7, [r7, r5, lsl #2]
	cmp r7, #40
	beq label210
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	add r5, r6, r8, lsl #2
	mov r6, r10
.p2align 4
label26:
	mov r9, #32
	add r8, r8, #2
	str r9, [r5, #0]
	str r7, [r5, #4]
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	ldr r7, [r7, r6, lsl #2]
	sub r6, r6, #1
	cmp r7, #40
	beq label222
	add r5, r5, #8
	b label26
.p2align 4
label222:
	mov r9, r8
	cmp r3, #43
	mov r8, r6
	bne label694
.p2align 4
label90:
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	add r5, r7, r8, lsl #2
	mov r7, r9
.p2align 4
label91:
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
	beq label374
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r9, #32
	subs r8, r8, #1
	add r6, r6, r7, lsl #2
	str r9, [r6, #0]
	str r10, [r6, #4]
	add r6, r7, #2
	bne label96
	add r8, r8, #1
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	cmp r3, #45
	str r4, [r7, r8, lsl #2]
	beq label38
	cmp r3, #42
	beq label80
	cmp r3, #47
	beq label54
	b label710
.p2align 4
label694:
	mov r6, r9
	cmp r3, #45
	bne label724
.p2align 4
label38:
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	add r5, r7, r8, lsl #2
	mov r7, r6
.p2align 4
label39:
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
	beq label248
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r9, #32
	subs r8, r8, #1
	add r6, r6, r7, lsl #2
	str r9, [r6, #0]
	str r10, [r6, #4]
	add r6, r7, #2
	beq label260
	sub r5, r5, #4
	mov r7, r6
	b label39
.p2align 4
label100:
	add r5, r5, #1
	mov r6, #94
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	cmp r3, #41
	str r6, [r7, r5, lsl #2]
	beq label24
	mov r9, r8
	cmp r3, #43
	mov r8, r5
	beq label90
	mov r6, r9
	cmp r3, #45
	beq label38
label231:
	cmp r3, #42
	bne label695
.p2align 4
label80:
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	add r5, r7, r8, lsl #2
	mov r7, r6
.p2align 4
label81:
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
	b label81
.p2align 4
label353:
	add r8, r8, #1
	mov r5, #42
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	cmp r3, #47
	str r5, [r7, r8, lsl #2]
	bne label714
.p2align 4
label54:
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	add r5, r7, r8, lsl #2
	mov r7, r6
.p2align 4
label55:
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
	beq label282
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r9, #32
	subs r8, r8, #1
	add r6, r6, r7, lsl #2
	str r9, [r6, #0]
	str r10, [r6, #4]
	add r6, r7, #2
	bne label63
	add r8, r8, #1
	mov r5, #47
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	cmp r3, #37
	str r5, [r7, r8, lsl #2]
	beq label67
	mov r5, r8
	mov r3, r6
	add r1, r1, #4
	cmp r0, r2
	add r8, r6, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r9, [r6, r3, lsl #2]
	add r6, r6, r8, lsl #2
	bgt label16
	b label101
.p2align 4
label714:
	cmp r3, #37
	bne label729
.p2align 4
label67:
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	mov r5, r6
	add r3, r7, r8, lsl #2
	mov r7, r8
.p2align 4
label68:
	ldr r8, [r3, #0]
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
	beq label312
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r9, #32
	subs r7, r7, #1
	add r6, r6, r5, lsl #2
	add r5, r5, #2
	str r9, [r6, #0]
	str r8, [r6, #4]
	beq label312
	sub r3, r3, #4
	b label68
.p2align 4
label118:
	sub r0, r0, #16
.p2align 4
label114:
	ldr r2, [r0, #0]
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r9, #32
	sub r5, r5, #4
	add r1, r6, r8, lsl #2
	cmp r5, #3
	add r8, r8, #8
	str r9, [r1, #0]
	str r2, [r1, #4]
	ldr r2, [r0, #-4]
	str r9, [r1, #8]
	str r2, [r1, #12]
	ldr r2, [r0, #-8]
	str r9, [r1, #16]
	str r2, [r1, #20]
	ldr r2, [r0, #-12]
	str r9, [r1, #24]
	str r2, [r1, #28]
	bgt label118
	mov r1, r8
label103:
	cmp r5, #0
	ble label119
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	add r0, r7, r5, lsl #2
label108:
	ldr r2, [r0, #0]
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r9, #32
	subs r5, r5, #1
	add r3, r6, r1, lsl #2
	add r1, r1, #2
	str r9, [r3, #0]
	str r2, [r3, #4]
	ble label415
	sub r0, r0, #4
	b label108
.p2align 4
label690:
	cmp r3, #94
	beq label100
	cmp r3, #41
	beq label24
	mov r9, r8
	cmp r3, #43
	mov r8, r5
	beq label90
	mov r6, r9
	cmp r3, #45
	beq label38
	b label723
.p2align 4
label260:
	add r8, r8, #1
	mov r5, #45
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	cmp r3, #42
	str r5, [r7, r8, lsl #2]
	beq label80
	cmp r3, #47
	beq label54
	cmp r3, #37
	beq label67
	b label698
label724:
	cmp r3, #42
	beq label80
.p2align 4
label695:
	cmp r3, #47
	beq label54
.p2align 4
label710:
	cmp r3, #37
	beq label67
.p2align 4
label698:
	mov r5, r8
	mov r3, r6
	mov r9, #32
	add r1, r1, #4
	cmp r0, r2
	add r8, r6, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r9, [r6, r3, lsl #2]
	add r6, r6, r8, lsl #2
	bgt label16
	b label101
.p2align 4
label202:
	mov r9, r8
	cmp r3, #43
	mov r8, r5
	beq label90
	mov r6, r9
	cmp r3, #45
	beq label38
label723:
	cmp r3, #42
	beq label80
	b label695
label415:
	mov r8, r1
label119:
	mov r0, #64
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r0, [r6, r8, lsl #2]
	movw r0, #:lower16:ints
	movt r0, #:upper16:ints
	ldr r1, [r6, #4]
	cmp r1, #64
	beq label121
	mov r2, #0
	mov r1, #1
	b label122
.p2align 4
label705:
	cmp r4, #94
	bne label717
.p2align 4
label131:
	cmp r8, #0
	beq label495
	mov r4, r8
	mov r5, #1
.p2align 4
label132:
	mul r5, r3, r5
	subs r4, r4, #1
	bne label132
	sub r2, r2, #1
	add r1, r1, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r5, [r0, r2, lsl #2]
	ldr r3, [r6, r1, lsl #2]
	cmp r3, #64
	beq label121
.p2align 4
label122:
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
	beq label143
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
	beq label126
	cmp r4, #37
	bne label705
.p2align 4
label137:
	sdiv r5, r3, r8
	cmp r4, #94
	mls r5, r5, r8, r3
	beq label131
	sub r2, r2, #1
	add r1, r1, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r5, [r0, r2, lsl #2]
	ldr r3, [r6, r1, lsl #2]
	cmp r3, #64
	bne label122
	b label121
.p2align 4
label126:
	sdiv r5, r3, r8
	cmp r4, #37
	beq label137
	cmp r4, #94
	beq label131
	sub r2, r2, #1
	add r1, r1, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r5, [r0, r2, lsl #2]
	ldr r3, [r6, r1, lsl #2]
	cmp r3, #64
	bne label122
	b label121
label143:
	cmp r4, #32
	bne label144
label141:
	add r1, r1, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	ldr r3, [r6, r1, lsl #2]
	cmp r3, #64
	bne label122
	b label121
label144:
	add r5, r2, #1
	sub r4, r4, #48
	str r4, [r0, r5, lsl #2]
	ldr r2, [r3, #4]
	cmp r2, #32
	beq label527
	add r2, r3, #4
	mov r3, #1
	b label148
.p2align 4
label152:
	add r2, r2, #4
.p2align 4
label148:
	ldr r6, [r2, #0]
	add r4, r4, r4, lsl #2
	add r3, r3, #1
	lsl r4, r4, #1
	sub r4, r4, #48
	add r4, r6, r4
	str r4, [r0, r5, lsl #2]
	ldr r6, [r2, #4]
	cmp r6, #32
	bne label152
label145:
	add r1, r1, r3
	mov r2, r5
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	ldr r3, [r6, r1, lsl #2]
	cmp r3, #64
	bne label122
label121:
	ldr r0, [r0, #4]
	bl putint
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label210:
	mov r9, r8
	mov r8, r10
	cmp r3, #43
	beq label90
	mov r6, r9
label35:
	cmp r3, #45
	beq label38
	b label231
.p2align 4
label717:
	sub r2, r2, #1
	add r1, r1, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r5, [r0, r2, lsl #2]
	ldr r3, [r6, r1, lsl #2]
	cmp r3, #64
	bne label122
	b label121
label282:
	mov r6, r7
	add r8, r8, #1
	mov r5, #47
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	cmp r3, #37
	str r5, [r7, r8, lsl #2]
	beq label67
	mov r5, r8
	mov r3, r6
	mov r9, #32
	add r1, r1, #4
	add r8, r6, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r9, [r6, r3, lsl #2]
	add r6, r6, r8, lsl #2
	b label10
label344:
	mov r6, r7
	add r8, r8, #1
	mov r5, #42
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	str r5, [r7, r8, lsl #2]
label51:
	cmp r3, #47
	beq label54
	cmp r3, #37
	beq label67
	b label698
label729:
	mov r5, r8
	mov r3, r6
	mov r9, #32
	add r1, r1, #4
	cmp r0, r2
	add r8, r6, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r9, [r6, r3, lsl #2]
	add r6, r6, r8, lsl #2
	bgt label16
	b label101
label248:
	mov r6, r7
	add r8, r8, #1
	mov r5, #45
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	cmp r3, #42
	str r5, [r7, r8, lsl #2]
	beq label80
	b label51
.p2align 4
label63:
	sub r5, r5, #4
	mov r7, r6
	b label55
.p2align 4
label96:
	sub r5, r5, #4
	mov r7, r6
	b label91
label495:
	mov r5, #1
	sub r2, r2, #1
	str r5, [r0, r2, lsl #2]
	b label141
label399:
	mov r1, r8
	mov r8, #0
	b label103
label159:
	mov r0, #0
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r1, r5
	mov r8, #1
	add r6, r6, #4
	mov r5, #0
	mov r2, r5
	b label10
label374:
	mov r6, r7
	add r8, r8, #1
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	str r4, [r7, r8, lsl #2]
	b label35
label527:
	mov r3, #1
	b label145
