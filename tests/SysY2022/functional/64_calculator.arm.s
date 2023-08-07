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
	movw r5, #:lower16:get
	movt r5, #:upper16:get
	mov r2, #0
	movw r4, #:lower16:chas
	movt r4, #:upper16:chas
	mov r1, #0
	cmp r0, #13
	movwne r1, #1
	cmp r0, #10
	movwne r2, #1
	ands r1, r1, r2
	beq label157
	mov r6, r5
	mov r7, #0
.p2align 4
label3:
	str r0, [r6, #0]
	bl getch
	add r7, r7, #1
	mov r2, #0
	mov r1, #0
	cmp r0, #13
	movwne r1, #1
	cmp r0, #10
	movwne r2, #1
	ands r1, r1, r2
	beq label165
	add r6, r6, #4
	b label3
label165:
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
	ble label101
.p2align 4
label16:
	ldr r3, [r1, #0]
	add r2, r2, #1
	sub r7, r3, #48
	cmp r7, #10
	bhs label178
	str r3, [r6, #0]
	add r8, r8, #1
	add r1, r1, #4
	cmp r0, r2
	add r6, r6, #4
	bgt label16
	b label101
label276:
	mov r6, r7
.p2align 4
label59:
	add r8, r8, #1
	mov r5, #47
	cmp r3, #37
	str r5, [r4, r8, lsl #2]
	bne label695
.p2align 4
label67:
	add r3, r4, r8, lsl #2
	mov r5, r6
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
	beq label306
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r9, #32
	subs r7, r7, #1
	add r6, r6, r5, lsl #2
	add r5, r5, #2
	str r9, [r6, #0]
	str r8, [r6, #4]
	bne label318
	mov r3, r5
	mov r6, #37
	add r1, r1, #4
	cmp r0, r2
	add r8, r5, #1
	add r5, r7, #1
	mov r7, #32
	str r6, [r4, r5, lsl #2]
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r7, [r6, r3, lsl #2]
	add r6, r6, r8, lsl #2
	bgt label16
	b label101
.p2align 4
label178:
	cmp r3, #40
	beq label100
	cmp r3, #94
	beq label21
	cmp r3, #41
	beq label24
	mov r6, r8
	cmp r3, #43
	mov r8, r5
	beq label35
.p2align 4
label705:
	mov r7, r6
	cmp r3, #45
	beq label90
	b label706
.p2align 4
label21:
	add r5, r5, #1
	mov r6, #94
	str r6, [r4, r5, lsl #2]
	cmp r3, #41
	beq label24
	mov r6, r8
	cmp r3, #43
	mov r8, r5
	bne label691
.p2align 4
label35:
	add r5, r4, r8, lsl #2
	mov r7, r6
.p2align 4
label36:
	ldr r9, [r5, #0]
	sub r11, r9, #47
	sub r10, r9, #45
	sub r6, r9, #43
	clz r11, r11
	clz r10, r10
	clz r6, r6
	lsr r11, r11, #5
	lsr r10, r10, #5
	lsr r6, r6, #5
	orr r6, r6, r10
	sub r10, r9, #42
	clz r10, r10
	lsr r10, r10, #5
	orr r10, r10, r11
	sub r11, r9, #94
	orr r6, r6, r10
	clz r11, r11
	sub r10, r9, #37
	lsr r11, r11, #5
	clz r10, r10
	lsr r10, r10, #5
	orr r10, r10, r11
	orrs r6, r6, r10
	beq label238
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r10, #32
	subs r8, r8, #1
	add r6, r6, r7, lsl #2
	add r7, r7, #2
	str r10, [r6, #0]
	str r9, [r6, #4]
	beq label238
	sub r5, r5, #4
	b label36
.p2align 4
label100:
	add r5, r5, #1
	mov r6, #40
	cmp r3, #94
	str r6, [r4, r5, lsl #2]
	beq label21
	cmp r3, #41
	beq label24
	mov r6, r8
	cmp r3, #43
	mov r8, r5
	beq label35
	b label705
.p2align 4
label238:
	add r8, r8, #1
	mov r5, #43
	str r5, [r4, r8, lsl #2]
	cmp r3, #45
	bne label48
.p2align 4
label90:
	add r5, r4, r8, lsl #2
.p2align 4
label91:
	ldr r9, [r5, #0]
	sub r11, r9, #47
	sub r10, r9, #45
	sub r6, r9, #43
	clz r11, r11
	clz r10, r10
	clz r6, r6
	lsr r11, r11, #5
	lsr r10, r10, #5
	lsr r6, r6, #5
	orr r6, r6, r10
	sub r10, r9, #42
	clz r10, r10
	lsr r10, r10, #5
	orr r10, r10, r11
	sub r11, r9, #94
	orr r6, r6, r10
	clz r11, r11
	sub r10, r9, #37
	lsr r11, r11, #5
	clz r10, r10
	lsr r10, r10, #5
	orr r10, r10, r11
	orrs r6, r6, r10
	bne label98
.p2align 4
label95:
	add r8, r8, #1
	mov r5, #45
	cmp r3, #42
	str r5, [r4, r8, lsl #2]
	beq label80
	b label698
.p2align 4
label98:
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r10, #32
	subs r8, r8, #1
	add r6, r6, r7, lsl #2
	add r7, r7, #2
	str r10, [r6, #0]
	str r9, [r6, #4]
	beq label95
	sub r5, r5, #4
	b label91
.p2align 4
label54:
	add r5, r4, r8, lsl #2
.p2align 4
label55:
	ldr r9, [r5, #0]
	sub r11, r9, #94
	sub r10, r9, #47
	sub r6, r9, #42
	clz r11, r11
	clz r10, r10
	clz r6, r6
	lsr r11, r11, #5
	lsr r10, r10, #5
	lsr r6, r6, #5
	orr r6, r6, r10
	sub r10, r9, #37
	clz r10, r10
	lsr r10, r10, #5
	orr r10, r10, r11
	orrs r6, r6, r10
	beq label276
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r10, #32
	subs r8, r8, #1
	add r6, r6, r7, lsl #2
	str r10, [r6, #0]
	str r9, [r6, #4]
	add r6, r7, #2
	beq label59
	sub r5, r5, #4
	mov r7, r6
	b label55
.p2align 4
label698:
	cmp r3, #47
	beq label54
	mov r6, r7
	cmp r3, #37
	beq label67
	b label694
.p2align 4
label48:
	cmp r3, #42
	bne label51
.p2align 4
label80:
	add r5, r4, r8, lsl #2
.p2align 4
label81:
	ldr r9, [r5, #0]
	sub r11, r9, #94
	sub r10, r9, #47
	sub r6, r9, #42
	clz r11, r11
	clz r10, r10
	clz r6, r6
	lsr r11, r11, #5
	lsr r10, r10, #5
	lsr r6, r6, #5
	orr r6, r6, r10
	sub r10, r9, #37
	clz r10, r10
	lsr r10, r10, #5
	orr r10, r10, r11
	orrs r6, r6, r10
	beq label85
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r10, #32
	subs r8, r8, #1
	add r6, r6, r7, lsl #2
	add r7, r7, #2
	str r10, [r6, #0]
	str r9, [r6, #4]
	beq label85
	sub r5, r5, #4
	b label81
.p2align 4
label24:
	ldr r9, [r4, r5, lsl #2]
	sub r7, r5, #1
	cmp r9, #40
	beq label204
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	add r5, r6, r8, lsl #2
	mov r6, r9
.p2align 4
label26:
	mov r9, #32
	add r8, r8, #2
	str r9, [r5, #0]
	str r6, [r5, #4]
	ldr r6, [r4, r7, lsl #2]
	sub r7, r7, #1
	cmp r6, #40
	beq label216
	add r5, r5, #8
	b label26
label101:
	cmp r5, #0
	ble label116
	subs r0, r5, #4
	ble label393
	add r0, r4, r5, lsl #2
.p2align 4
label104:
	ldr r3, [r0, #0]
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r2, #32
	sub r5, r5, #4
	add r1, r6, r8, lsl #2
	cmp r5, #4
	add r8, r8, #8
	str r2, [r1, #0]
	str r3, [r1, #4]
	ldr r3, [r0, #-4]
	str r2, [r1, #8]
	str r3, [r1, #12]
	ldr r3, [r0, #-8]
	str r2, [r1, #16]
	str r3, [r1, #20]
	ldr r3, [r0, #-12]
	str r2, [r1, #24]
	str r3, [r1, #28]
	ble label393
	sub r0, r0, #16
	b label104
.p2align 4
label85:
	add r8, r8, #1
	mov r5, #42
	cmp r3, #47
	str r5, [r4, r8, lsl #2]
	beq label54
	mov r6, r7
	cmp r3, #37
	beq label67
	mov r5, r8
	mov r3, r7
	mov r7, #32
	add r1, r1, #4
	cmp r0, r2
	add r8, r6, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r7, [r6, r3, lsl #2]
	add r6, r6, r8, lsl #2
	bgt label16
	b label101
.p2align 4
label216:
	mov r6, r8
	cmp r3, #43
	mov r8, r7
	beq label35
	mov r7, r6
	cmp r3, #45
	beq label90
	cmp r3, #42
	beq label80
	b label708
.p2align 4
label51:
	cmp r3, #47
	beq label54
	b label263
label393:
	add r0, r4, r5, lsl #2
label110:
	ldr r1, [r0, #0]
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r3, #32
	subs r5, r5, #1
	add r2, r6, r8, lsl #2
	add r8, r8, #2
	str r3, [r2, #0]
	str r1, [r2, #4]
	ble label116
	sub r0, r0, #4
	b label110
.p2align 4
label691:
	mov r7, r6
	cmp r3, #45
	beq label90
.p2align 4
label706:
	cmp r3, #42
	beq label80
.p2align 4
label708:
	cmp r3, #47
	beq label54
.p2align 4
label263:
	mov r6, r7
	cmp r3, #37
	beq label67
.p2align 4
label694:
	mov r5, r8
	mov r3, r6
	mov r7, #32
	add r1, r1, #4
	cmp r0, r2
	add r8, r6, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r7, [r6, r3, lsl #2]
	add r6, r6, r8, lsl #2
	bgt label16
	b label101
label116:
	mov r0, #64
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r0, [r6, r8, lsl #2]
	ldr r0, [r6, #4]
	cmp r0, #64
	beq label118
	mov r2, #1
	mov r0, #0
.p2align 4
label119:
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	ldr r3, [r6, r2, lsl #2]
	sub r8, r3, #94
	sub r7, r3, #47
	sub r5, r3, #42
	sub r1, r3, #43
	clz r8, r8
	clz r7, r7
	clz r5, r5
	clz r1, r1
	lsr r8, r8, #5
	lsr r7, r7, #5
	lsr r5, r5, #5
	lsr r6, r1, #5
	orr r7, r5, r7
	sub r1, r3, #45
	clz r1, r1
	lsr r4, r1, #5
	orr r1, r6, r4
	orr r1, r1, r7
	sub r7, r3, #37
	clz r7, r7
	lsr r7, r7, #5
	orr r7, r7, r8
	orrs r1, r1, r7
	add r1, r2, #1
	beq label122
	movw r7, #:lower16:ints
	movt r7, #:upper16:ints
	cmp r6, #0
	add r2, r7, r0, lsl #2
	mov r6, #0
	ldr r7, [r2, #0]
	ldr r2, [r2, #-4]
	add r8, r7, r2
	movne r6, r8
	cmp r4, #0
	sub r8, r2, r7
	mov r4, r6
	mul r6, r7, r2
	movne r4, r8
	cmp r5, #0
	movne r4, r6
	cmp r3, #47
	beq label130
	cmp r3, #37
	beq label133
	cmp r3, #94
	bne label714
.p2align 4
label138:
	cmp r7, #0
	beq label524
	mov r3, r7
	mov r4, #1
.p2align 4
label139:
	mul r4, r2, r4
	subs r3, r3, #1
	bne label139
	sub r0, r0, #1
	movw r7, #:lower16:ints
	movt r7, #:upper16:ints
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r4, [r7, r0, lsl #2]
	ldr r2, [r6, r1, lsl #2]
	cmp r2, #64
	beq label118
.p2align 4
label538:
	mov r2, r1
	b label119
.p2align 4
label130:
	sdiv r4, r2, r7
	cmp r3, #37
	bne label513
.p2align 4
label133:
	sdiv r4, r2, r7
	mls r4, r4, r7, r2
	cmp r3, #94
	beq label138
.p2align 4
label136:
	sub r0, r0, #1
	movw r7, #:lower16:ints
	movt r7, #:upper16:ints
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r4, [r7, r0, lsl #2]
	ldr r2, [r6, r1, lsl #2]
	cmp r2, #64
	bne label538
	b label118
.p2align 4
label513:
	cmp r3, #94
	beq label138
	sub r0, r0, #1
	movw r7, #:lower16:ints
	movt r7, #:upper16:ints
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r4, [r7, r0, lsl #2]
	ldr r2, [r6, r1, lsl #2]
	cmp r2, #64
	bne label538
	b label118
label122:
	cmp r3, #32
	beq label142
	add r0, r0, #1
	sub r4, r3, #48
	movw r7, #:lower16:ints
	movt r7, #:upper16:ints
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r4, [r7, r0, lsl #2]
	ldr r3, [r6, r1, lsl #2]
	cmp r3, #32
	beq label476
	mov r3, #1
.p2align 4
label124:
	add r5, r2, r3
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	add r4, r4, r4, lsl #2
	movw r7, #:lower16:ints
	movt r7, #:upper16:ints
	ldr r5, [r6, r5, lsl #2]
	lsl r4, r4, #1
	sub r4, r4, #48
	add r4, r5, r4
	add r5, r1, r3
	str r4, [r7, r0, lsl #2]
	add r3, r3, #1
	ldr r5, [r6, r5, lsl #2]
	cmp r5, #32
	bne label124
	add r1, r2, r3
label142:
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	ldr r2, [r6, r1, lsl #2]
	cmp r2, #64
	bne label538
label118:
	movw r7, #:lower16:ints
	movt r7, #:upper16:ints
	ldr r0, [r7, #4]
	bl putint
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label204:
	mov r6, r8
	mov r8, r7
	cmp r3, #43
	beq label35
	mov r7, r6
	cmp r3, #45
	beq label90
	cmp r3, #42
	beq label80
	b label708
.p2align 4
label695:
	mov r5, r8
	mov r3, r6
	mov r7, #32
	add r1, r1, #4
	cmp r0, r2
	add r8, r6, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r7, [r6, r3, lsl #2]
	add r6, r6, r8, lsl #2
	bgt label16
	b label101
.p2align 4
label714:
	sub r0, r0, #1
	movw r7, #:lower16:ints
	movt r7, #:upper16:ints
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r4, [r7, r0, lsl #2]
	ldr r2, [r6, r1, lsl #2]
	cmp r2, #64
	bne label538
	b label118
label306:
	mov r3, r5
	add r5, r7, #1
	mov r6, #37
	add r8, r3, #1
	add r1, r1, #4
	str r6, [r4, r5, lsl #2]
	mov r7, #32
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r7, [r6, r3, lsl #2]
	add r6, r6, r8, lsl #2
	b label10
label157:
	mov r0, #0
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r1, r5
	mov r8, #1
	add r6, r6, #4
	mov r5, #0
	mov r2, r5
	b label10
label476:
	mov r3, #1
	add r1, r2, r3
	b label142
label524:
	mov r4, #1
	b label136
.p2align 4
label318:
	sub r3, r3, #4
	b label68
