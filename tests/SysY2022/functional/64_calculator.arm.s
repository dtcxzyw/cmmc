.arch armv7ve
.data
.bss
.align 4
ints:
	.zero	40000
.align 4
chas:
	.zero	40000
.align 4
get:
	.zero	40000
.align 4
get2:
	.zero	40000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
	bl getch
	movw r4, #:lower16:get2
	cmp r0, #13
	mov r1, #0
	mov r2, #0
	movw r7, #:lower16:get
	movw r6, #:lower16:chas
	movw r5, #:lower16:ints
	movt r4, #:upper16:get2
	movwne r1, #1
	movt r7, #:upper16:get
	movt r6, #:upper16:chas
	movt r5, #:upper16:ints
	cmp r0, #10
	movwne r2, #1
	ands r1, r1, r2
	beq label131
	mov r8, #0
	b label115
label131:
	mov r0, #0
	mov r8, #0
	mov r3, #1
	mov r1, r8
	cmp r0, r8
	ble label76
	ldr r2, [r7, r8, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label9
	str r2, [r4, r3, lsl #2]
	add r1, r8, #1
	add r3, r3, #1
	cmp r0, r1
	ble label76
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label9
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label76
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label9
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label76
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label9
	b label761
label780:
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label9
	b label761
label76:
	cmp r8, #0
	ble label84
	subs r0, r8, #4
	ble label81
label80:
	add r2, r6, r8, lsl #2
	mov r7, #32
	add r1, r4, r3, lsl #2
	ldr r8, [r6, r8, lsl #2]
	str r7, [r4, r3, lsl #2]
	add r3, r3, #8
	str r8, [r1, #4]
	ldr r8, [r2, #-4]
	str r7, [r1, #8]
	str r8, [r1, #12]
	ldr r8, [r2, #-8]
	str r7, [r1, #16]
	str r8, [r1, #20]
	mov r8, r0
	ldr r2, [r2, #-12]
	str r7, [r1, #24]
	str r2, [r1, #28]
	subs r0, r0, #4
	ble label81
	b label80
label115:
	str r0, [r7, r8, lsl #2]
	bl getch
	add r8, r8, #1
	mov r2, #0
	mov r1, #0
	cmp r0, #13
	movwne r1, #1
	cmp r0, #10
	movwne r2, #1
	ands r1, r1, r2
	beq label495
	b label115
label495:
	mov r0, r8
	mov r8, #0
	mov r3, #1
	mov r1, r8
	cmp r0, r8
	ble label76
	ldr r2, [r7, r8, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label9
	str r2, [r4, r3, lsl #2]
	add r1, r8, #1
	add r3, r3, #1
	cmp r0, r1
	ble label76
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label9
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label76
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label9
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label76
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label9
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label76
	b label780
label9:
	cmp r2, #40
	bne label11
	add r8, r8, #1
	mov r9, #40
	str r9, [r6, r8, lsl #2]
	cmp r2, #94
	bne label13
	add r8, r8, #1
	mov r9, #94
	str r9, [r6, r8, lsl #2]
	cmp r2, #41
	bne label21
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label21
	add r10, r4, r3, lsl #2
	mov r11, #32
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label21
	add r10, r4, r3, lsl #2
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label21
	add r10, r4, r3, lsl #2
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label21
	b label782
label53:
	add r8, r3, #1
	mov r3, #37
	str r3, [r6, r8, lsl #2]
	mov r3, r2
	mov r2, #32
	add r1, r1, #1
	str r2, [r4, r3, lsl #2]
	add r3, r3, #1
	cmp r0, r1
	ble label76
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label9
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label76
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label9
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label76
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label9
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label76
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label9
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label76
	b label780
label782:
	add r10, r4, r3, lsl #2
	mov r11, #32
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	b label16
label11:
	cmp r2, #94
	bne label13
	add r8, r8, #1
	mov r9, #94
	str r9, [r6, r8, lsl #2]
	cmp r2, #41
	bne label21
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label21
	add r10, r4, r3, lsl #2
	mov r11, #32
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label21
	add r10, r4, r3, lsl #2
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label21
	add r10, r4, r3, lsl #2
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label21
	b label782
label16:
	cmp r9, #40
	beq label21
	b label782
label21:
	cmp r2, #43
	bne label31
	b label24
label31:
	cmp r2, #45
	bne label34
	b label67
label13:
	cmp r2, #41
	bne label21
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label21
	add r10, r4, r3, lsl #2
	mov r11, #32
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label21
	add r10, r4, r3, lsl #2
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label21
	add r10, r4, r3, lsl #2
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label21
	add r10, r4, r3, lsl #2
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label21
	b label782
label621:
	mov r0, #1
	mov r1, #0
	b label87
label84:
	mov r0, #64
	str r0, [r4, r3, lsl #2]
	ldr r0, [r4, #4]
	cmp r0, #64
	beq label86
	b label621
label87:
	ldr r3, [r4, r0, lsl #2]
	sub r6, r3, #42
	sub r2, r3, #43
	clz r6, r6
	clz r2, r2
	lsr r8, r6, #5
	lsr r9, r2, #5
	sub r6, r3, #47
	sub r2, r3, #45
	clz r6, r6
	clz r2, r2
	lsr r6, r6, #5
	lsr r7, r2, #5
	orr r2, r9, r7
	orr r2, r2, r8
	orr r2, r2, r6
	sub r6, r3, #37
	clz r6, r6
	lsr r6, r6, #5
	orr r2, r2, r6
	sub r6, r3, #94
	clz r6, r6
	lsr r6, r6, #5
	orrs r2, r2, r6
	beq label93
	b label100
label650:
	mov r3, #1
	b label95
label93:
	cmp r3, #32
	beq label113
	add r1, r1, #1
	sub r6, r3, #48
	add r2, r0, #1
	str r6, [r5, r1, lsl #2]
	ldr r3, [r4, r2, lsl #2]
	cmp r3, #32
	beq label428
	b label650
label100:
	add r2, r5, r1, lsl #2
	ldr r6, [r5, r1, lsl #2]
	cmp r9, #0
	mov r9, #0
	ldr r2, [r2, #-4]
	add r10, r6, r2
	movne r9, r10
	cmp r7, #0
	sub r10, r2, r6
	mov r7, r9
	movne r7, r10
	cmp r8, #0
	mul r9, r6, r2
	movne r7, r9
	cmp r3, #47
	bne label102
	sdiv r7, r2, r6
	cmp r3, #37
	bne label105
	mls r7, r7, r6, r2
	cmp r3, #94
	bne label471
	cmp r6, #0
	beq label478
	mov r3, r6
	mov r6, #1
	mul r6, r2, r6
	subs r3, r3, #1
	beq label107
	mul r6, r2, r6
	subs r3, r3, #1
	beq label107
	mul r6, r2, r6
	subs r3, r3, #1
	beq label107
	mul r6, r2, r6
	subs r3, r3, #1
	beq label107
	mul r6, r2, r6
	subs r3, r3, #1
	beq label107
	mul r6, r2, r6
	subs r3, r3, #1
	beq label107
label794:
	mul r6, r2, r6
	subs r3, r3, #1
	beq label107
label777:
	mul r6, r2, r6
	subs r3, r3, #1
	beq label107
	mul r6, r2, r6
	subs r3, r3, #1
	beq label107
	b label797
label471:
	mov r6, r7
label107:
	sub r1, r1, #1
	str r6, [r5, r1, lsl #2]
	add r0, r0, #1
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	beq label86
	b label87
label797:
	mul r6, r2, r6
	subs r3, r3, #1
	beq label107
label110:
	mul r6, r2, r6
	subs r3, r3, #1
	beq label107
	b label110
label758:
	mul r6, r2, r6
	subs r3, r3, #1
	beq label107
	b label777
label478:
	mov r6, #1
	sub r1, r1, #1
	str r6, [r5, r1, lsl #2]
	add r0, r0, #1
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	beq label86
	b label87
label102:
	cmp r3, #37
	bne label105
	sdiv r7, r2, r6
	mls r7, r7, r6, r2
	cmp r3, #94
	bne label471
	cmp r6, #0
	beq label478
	mov r3, r6
	mov r6, #1
	mul r6, r2, r6
	subs r3, r3, #1
	beq label107
	mul r6, r2, r6
	subs r3, r3, #1
	beq label107
	mul r6, r2, r6
	subs r3, r3, #1
	beq label107
	mul r6, r2, r6
	subs r3, r3, #1
	beq label107
	mul r6, r2, r6
	subs r3, r3, #1
	beq label107
	mul r6, r2, r6
	subs r3, r3, #1
	beq label107
	b label794
label105:
	cmp r3, #94
	bne label471
	cmp r6, #0
	beq label478
	mov r3, r6
	mov r6, #1
	mul r6, r2, r6
	subs r3, r3, #1
	beq label107
	mul r6, r2, r6
	subs r3, r3, #1
	beq label107
	mul r6, r2, r6
	subs r3, r3, #1
	beq label107
	mul r6, r2, r6
	subs r3, r3, #1
	beq label107
	mul r6, r2, r6
	subs r3, r3, #1
	beq label107
	mul r6, r2, r6
	subs r3, r3, #1
	beq label107
	b label758
label428:
	mov r3, #1
	add r0, r0, r3
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	beq label86
	b label87
label113:
	add r0, r0, #1
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	beq label86
	b label87
label761:
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label76
	b label780
label57:
	mov r2, #32
	add r1, r1, #1
	str r2, [r4, r3, lsl #2]
	add r3, r3, #1
	cmp r0, r1
	ble label76
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label9
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label76
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label9
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label76
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label9
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label76
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label9
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label76
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label9
	b label761
label34:
	cmp r2, #42
	bne label37
label60:
	ldr r9, [r6, r8, lsl #2]
	sub r11, r9, #47
	sub r10, r9, #42
	clz r11, r11
	clz r10, r10
	lsr r11, r11, #5
	lsr r10, r10, #5
	orr r10, r10, r11
	sub r11, r9, #37
	clz r11, r11
	lsr r11, r11, #5
	orr r10, r10, r11
	sub r11, r9, #94
	clz r11, r11
	lsr r11, r11, #5
	orrs r10, r10, r11
	beq label63
	add r10, r4, r3, lsl #2
	mov r11, #32
	subs r8, r8, #1
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	bne label60
	add r8, r8, #1
	mov r9, #42
	str r9, [r6, r8, lsl #2]
	cmp r2, #47
	bne label47
	b label40
label37:
	cmp r2, #47
	bne label47
	b label40
label47:
	cmp r2, #37
	bne label57
	b label608
label24:
	ldr r9, [r6, r8, lsl #2]
	sub r11, r9, #45
	sub r10, r9, #43
	clz r11, r11
	clz r10, r10
	lsr r11, r11, #5
	lsr r10, r10, #5
	orr r10, r10, r11
	sub r11, r9, #42
	clz r11, r11
	lsr r11, r11, #5
	orr r10, r10, r11
	sub r11, r9, #47
	clz r11, r11
	lsr r11, r11, #5
	orr r10, r10, r11
	sub r11, r9, #37
	clz r11, r11
	lsr r11, r11, #5
	orr r10, r10, r11
	sub r11, r9, #94
	clz r11, r11
	lsr r11, r11, #5
	orrs r10, r10, r11
	beq label28
	add r10, r4, r3, lsl #2
	mov r11, #32
	subs r8, r8, #1
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	bne label24
	add r8, r8, #1
	mov r9, #43
	str r9, [r6, r8, lsl #2]
	cmp r2, #45
	bne label34
	b label67
label28:
	add r8, r8, #1
	mov r9, #43
	str r9, [r6, r8, lsl #2]
	b label31
label67:
	ldr r9, [r6, r8, lsl #2]
	sub r11, r9, #45
	sub r10, r9, #43
	clz r11, r11
	clz r10, r10
	lsr r11, r11, #5
	lsr r10, r10, #5
	orr r10, r10, r11
	sub r11, r9, #42
	clz r11, r11
	lsr r11, r11, #5
	orr r10, r10, r11
	sub r11, r9, #47
	clz r11, r11
	lsr r11, r11, #5
	orr r10, r10, r11
	sub r11, r9, #37
	clz r11, r11
	lsr r11, r11, #5
	orr r10, r10, r11
	sub r11, r9, #94
	clz r11, r11
	lsr r11, r11, #5
	orrs r10, r10, r11
	beq label70
	add r10, r4, r3, lsl #2
	mov r11, #32
	subs r8, r8, #1
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	bne label67
	add r8, r8, #1
	mov r9, #45
	str r9, [r6, r8, lsl #2]
	cmp r2, #42
	bne label37
	b label60
label608:
	mov r2, r3
	mov r3, r8
	b label50
label40:
	ldr r9, [r6, r8, lsl #2]
	sub r11, r9, #47
	sub r10, r9, #42
	clz r11, r11
	clz r10, r10
	lsr r11, r11, #5
	lsr r10, r10, #5
	orr r10, r10, r11
	sub r11, r9, #37
	clz r11, r11
	lsr r11, r11, #5
	orr r10, r10, r11
	sub r11, r9, #94
	clz r11, r11
	lsr r11, r11, #5
	orrs r10, r10, r11
	beq label44
	add r10, r4, r3, lsl #2
	mov r11, #32
	subs r8, r8, #1
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	bne label40
	add r8, r8, #1
	mov r9, #47
	str r9, [r6, r8, lsl #2]
	cmp r2, #37
	bne label57
	b label608
label44:
	add r8, r8, #1
	mov r9, #47
	str r9, [r6, r8, lsl #2]
	b label47
label63:
	add r8, r8, #1
	mov r9, #42
	str r9, [r6, r8, lsl #2]
	cmp r2, #47
	bne label47
	b label40
label50:
	ldr r8, [r6, r3, lsl #2]
	sub r10, r8, #47
	sub r9, r8, #42
	clz r10, r10
	clz r9, r9
	lsr r10, r10, #5
	lsr r9, r9, #5
	orr r9, r9, r10
	sub r10, r8, #37
	clz r10, r10
	lsr r10, r10, #5
	orr r9, r9, r10
	sub r10, r8, #94
	clz r10, r10
	lsr r10, r10, #5
	orrs r9, r9, r10
	beq label53
	add r9, r4, r2, lsl #2
	mov r10, #32
	subs r3, r3, #1
	str r10, [r4, r2, lsl #2]
	add r2, r2, #2
	str r8, [r9, #4]
	bne label50
	add r8, r3, #1
	mov r3, #37
	str r3, [r6, r8, lsl #2]
	mov r3, r2
	mov r2, #32
	add r1, r1, #1
	str r2, [r4, r3, lsl #2]
	add r3, r3, #1
	cmp r0, r1
	ble label76
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label9
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label76
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label9
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label76
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label9
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label76
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label9
	b label761
label95:
	add r7, r0, r3
	add r6, r6, r6, lsl #2
	ldr r7, [r4, r7, lsl #2]
	lsl r6, r6, #1
	sub r6, r6, #48
	add r6, r7, r6
	add r7, r2, r3
	str r6, [r5, r1, lsl #2]
	add r3, r3, #1
	ldr r7, [r4, r7, lsl #2]
	cmp r7, #32
	beq label98
	b label95
label70:
	add r8, r8, #1
	mov r9, #45
	str r9, [r6, r8, lsl #2]
	cmp r2, #42
	bne label37
	b label60
label81:
	ldr r0, [r6, r8, lsl #2]
	add r1, r4, r3, lsl #2
	mov r2, #32
	subs r8, r8, #1
	str r2, [r4, r3, lsl #2]
	add r3, r3, #2
	str r0, [r1, #4]
	ble label84
	b label81
label86:
	ldr r0, [r5, #4]
	bl putint
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label98:
	add r0, r0, r3
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	beq label86
	b label87
