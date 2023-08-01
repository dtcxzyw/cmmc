.arch armv7ve
.data
.bss
.align 8
f:
	.zero	800400
.align 8
dep:
	.zero	40020
.align 8
to:
	.zero	40020
.align 8
next:
	.zero	40020
.align 8
head:
	.zero	40020
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
tree:
	push { r4, r5, r6, r7, lr }
	movw r6, #:lower16:next
	movt r6, #:upper16:next
	movw r2, #:lower16:f
	movt r2, #:upper16:f
	movw r5, #:lower16:to
	movt r5, #:upper16:to
	mov r3, r1
	sub sp, sp, #4
	add r4, r1, #1
	movw r1, #:lower16:dep
	movt r1, #:upper16:dep
	str r3, [r1, r0, lsl #2]
	add r1, r0, r0, lsl #2
	add r1, r2, r1, lsl #4
	ldr r7, [r1, #0]
	cmp r7, #0
	beq label4
	mov r3, #0
.p2align 4
label2:
	ldr r7, [r1, r3, lsl #2]
	add r7, r7, r7, lsl #2
	add r7, r2, r7, lsl #4
	ldr r7, [r7, r3, lsl #2]
	add r3, r3, #1
	cmp r7, #0
	str r7, [r1, r3, lsl #2]
	bne label2
label4:
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r7, [r1, r0, lsl #2]
	cmn r7, #1
	beq label7
.p2align 4
label5:
	ldr r0, [r5, r7, lsl #2]
	mov r1, r4
	bl tree
	ldr r7, [r6, r7, lsl #2]
	cmn r7, #1
	bne label5
label7:
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label177
	mov r4, r0
	mov r5, #0
.p2align 4
label161:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bls label654
	mov r4, r0
	b label161
label77:
	sub r1, r0, #48
	cmp r1, #10
	blo label183
	b label182
label654:
	mov r4, r5
	b label77
label177:
	mov r4, #0
	b label77
label183:
	mov r5, r0
	mov r6, #0
.p2align 4
label80:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label83
	mov r5, r0
	b label80
label83:
	bl getch
	cmp r4, #0
	rsb r2, r6, #0
	sub r1, r0, #48
	mov r4, r6
	movne r4, r2
	cmp r1, #9
	bls label200
	mov r5, r0
	mov r6, #0
.p2align 4
label85:
	bl getch
	cmp r5, #45
	sub r1, r0, #48
	moveq r6, #1
	cmp r1, #9
	bls label208
	mov r5, r0
	b label85
label208:
	mov r5, r6
label88:
	sub r1, r0, #48
	cmp r1, #10
	bhs label213
	mov r6, r0
	mov r7, #0
.p2align 4
label91:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label94
	mov r6, r0
	b label91
label94:
	cmp r5, #0
	rsb r0, r7, #0
	movw r6, #:lower16:dep
	movt r6, #:upper16:dep
	mov r5, r7
	movne r5, r0
	cmp r4, #0
	movw r0, #16191
	movt r0, #16191
	str r0, [r6, #0]
	ble label96
	mov r0, #1
	b label159
label96:
	cmp r4, #1
	beq label122
	mov r6, #0
	mov r7, #1
	b label97
.p2align 4
label159:
	mvn r2, #0
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	bge label159
	b label96
.p2align 4
label97:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label240
	b label239
.p2align 4
label111:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movw r3, #:lower16:next
	movt r3, #:upper16:next
	add r7, r7, #1
	movw r9, #:lower16:f
	movt r9, #:upper16:f
	movne r0, r1
	cmp r4, r7
	movw r1, #:lower16:to
	movt r1, #:upper16:to
	str r0, [r1, r6, lsl #2]
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	add r0, r0, r0, lsl #2
	add r1, r1, r8, lsl #2
	lsl r0, r0, #4
	ldr r2, [r1, #0]
	str r2, [r3, r6, lsl #2]
	str r6, [r1, #0]
	add r6, r6, #1
	str r8, [r9, r0]
	bne label97
	b label122
label239:
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label245
label244:
	mov r10, #0
	b label103
.p2align 4
label245:
	mov r9, r0
	mov r10, #0
	b label116
.p2align 4
label310:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	blo label245
	b label244
.p2align 4
label116:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label103
	mov r9, r0
	b label116
.p2align 4
label103:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label253
	mov r9, r0
	mov r10, #0
.p2align 4
label105:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label261
	mov r9, r0
	b label105
.p2align 4
label261:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label830
.p2align 4
label267:
	mov r10, r0
	mov r11, #0
.p2align 4
label113:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label111
	mov r10, r0
	b label113
label122:
	mov r0, #1
	mov r1, #1
	bl tree
	cmp r5, #0
	beq label123
.p2align 4
label315:
	str r5, [sp, #0]
	b label124
label123:
	mov r0, #0
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label124:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label321
	b label320
.p2align 4
label153:
	add r1, r2, r2, lsl #2
	movw r9, #:lower16:f
	movt r9, #:upper16:f
	add r3, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	add r3, r9, r3, lsl #4
	ldr r1, [r1, #76]
	ldr r3, [r3, #76]
	cmp r1, r3
	movne r2, r1
	add r1, r2, r2, lsl #2
	add r1, r9, r1, lsl #4
	ldr r5, [r1, #72]
	mov r1, r0
	movne r1, r3
	add r0, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	ldr r4, [r0, #72]
	mov r0, r2
	cmp r5, r4
	movne r1, r4
	movne r0, r5
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #68]
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #68]
	cmp r3, r2
	movne r1, r2
	movne r0, r3
	add r2, r1, r1, lsl #2
	add r3, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #64]
	ldr r4, [r2, #64]
	mov r2, r0
	cmp r3, r4
	movne r2, r3
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r3, [r0, #60]
	mov r0, r1
	movne r0, r4
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r4, [r1, #60]
	mov r1, r2
	cmp r3, r4
	movne r0, r4
	movne r1, r3
	add r3, r0, r0, lsl #2
	add r2, r1, r1, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #56]
	ldr r3, [r3, #56]
	cmp r2, r3
	movne r0, r3
	movne r1, r2
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #52]
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #52]
	cmp r4, r2
	movne r0, r2
	movne r1, r4
	add r2, r0, r0, lsl #2
	add r3, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #48]
	ldr r2, [r2, #48]
	cmp r3, r2
	movne r0, r2
	movne r1, r3
	add r2, r0, r0, lsl #2
	add r3, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #44]
	ldr r2, [r2, #44]
	cmp r3, r2
	movne r0, r2
	movne r1, r3
	add r2, r0, r0, lsl #2
	add r3, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #40]
	ldr r2, [r2, #40]
	cmp r3, r2
	movne r0, r2
	movne r1, r3
	add r2, r0, r0, lsl #2
	add r3, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #36]
	ldr r2, [r2, #36]
	cmp r3, r2
	movne r0, r2
	movne r1, r3
	add r2, r0, r0, lsl #2
	add r3, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #32]
	ldr r4, [r2, #32]
	cmp r3, r4
	movne r0, r4
	movne r1, r3
	add r3, r0, r0, lsl #2
	add r2, r1, r1, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #28]
	ldr r3, [r3, #28]
	cmp r2, r3
	movne r0, r3
	movne r1, r2
	add r3, r0, r0, lsl #2
	add r2, r1, r1, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #24]
	ldr r3, [r3, #24]
	cmp r2, r3
	movne r0, r3
	movne r1, r2
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #20]
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #20]
	mov r2, r1
	cmp r4, r3
	movne r2, r4
	add r1, r2, r2, lsl #2
	add r1, r9, r1, lsl #4
	ldr r4, [r1, #16]
	mov r1, r0
	movne r1, r3
	add r0, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	ldr r3, [r0, #16]
	mov r0, r2
	cmp r4, r3
	movne r1, r3
	movne r0, r4
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #12]
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #12]
	cmp r4, r2
	movne r1, r2
	movne r0, r4
	add r2, r1, r1, lsl #2
	add r3, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #8]
	ldr r2, [r2, #8]
	cmp r3, r2
	movne r1, r2
	movne r0, r3
	add r2, r1, r1, lsl #2
	add r3, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #4]
	ldr r4, [r2, #4]
	cmp r3, r4
	movne r1, r4
	movne r0, r3
	add r1, r1, r1, lsl #2
	add r2, r0, r0, lsl #2
	lsl r1, r1, #4
	lsl r2, r2, #4
	ldr r2, [r9, r2]
	ldr r1, [r9, r1]
	cmp r2, r1
	movne r0, r2
	add r0, r0, r0, lsl #2
	lsl r0, r0, #4
	ldr r0, [r9, r0]
.p2align 4
label154:
	bl putint
	mov r0, #10
	bl putch
	ldr r5, [sp, #0]
	subs r5, r5, #1
	bne label315
	b label123
.p2align 4
label321:
	mov r4, r0
	mov r5, #0
.p2align 4
label126:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bls label328
	mov r4, r0
	b label126
.p2align 4
label328:
	mov r4, r5
	sub r1, r0, #48
	cmp r1, #10
	bhs label832
.p2align 4
label334:
	mov r5, r0
	mov r6, #0
.p2align 4
label132:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label135
	mov r5, r0
	b label132
.p2align 4
label135:
	bl getch
	rsb r2, r6, #0
	cmp r4, #0
	sub r1, r0, #48
	mov r4, r6
	movne r4, r2
	cmp r1, #9
	bls label351
	mov r5, r0
	mov r6, #0
.p2align 4
label137:
	bl getch
	cmp r5, #45
	sub r1, r0, #48
	moveq r6, #1
	cmp r1, #9
	bls label359
	mov r5, r0
	b label137
.p2align 4
label359:
	mov r5, r6
	sub r1, r0, #48
	cmp r1, #10
	bhs label833
.p2align 4
label365:
	mov r6, r0
	mov r7, #0
.p2align 4
label156:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label143
	mov r6, r0
	b label156
.p2align 4
label143:
	cmp r5, #0
	rsb r0, r7, #0
	mov r1, r7
	movw r6, #:lower16:dep
	movt r6, #:upper16:dep
	movne r1, r0
	ldr r0, [r6, r4, lsl #2]
	ldr r2, [r6, r1, lsl #2]
	cmp r0, r2
	mov r2, r4
	mov r0, r1
	movlt r2, r1
	movlt r0, r4
	mov r1, #19
	ldr r4, [r6, r2, lsl #2]
	ldr r3, [r6, r0, lsl #2]
	cmp r4, r3
	ble label386
.p2align 4
label148:
	add r4, r2, r2, lsl #2
	movw r9, #:lower16:f
	movt r9, #:upper16:f
	add r4, r9, r4, lsl #4
	ldr r4, [r4, r1, lsl #2]
	cmp r4, #0
	bne label151
	sub r1, r1, #1
	movw r6, #:lower16:dep
	movt r6, #:upper16:dep
	ldr r4, [r6, r2, lsl #2]
	ldr r3, [r6, r0, lsl #2]
	cmp r4, r3
	bgt label148
	b label835
.p2align 4
label151:
	movw r6, #:lower16:dep
	movt r6, #:upper16:dep
	ldr r5, [r6, r4, lsl #2]
	cmp r3, r5
	movle r2, r4
	sub r1, r1, #1
	ldr r4, [r6, r2, lsl #2]
	ldr r3, [r6, r0, lsl #2]
	cmp r4, r3
	bgt label148
	cmp r0, r2
	bne label153
.p2align 4
label406:
	mov r0, r2
	b label154
.p2align 4
label835:
	cmp r0, r2
	beq label406
	b label153
label320:
	mov r4, #0
	b label129
label832:
	mov r6, #0
	b label135
label129:
	sub r1, r0, #48
	cmp r1, #10
	blo label334
	b label832
label351:
	mov r5, #0
	b label140
label833:
	mov r7, #0
	b label143
label140:
	sub r1, r0, #48
	cmp r1, #10
	blo label365
	b label833
label253:
	mov r9, #0
	b label108
label830:
	mov r11, #0
	b label111
label108:
	sub r1, r0, #48
	cmp r1, #10
	blo label267
	b label830
label386:
	cmp r0, r2
	beq label406
	b label153
label213:
	mov r7, #0
	b label94
.p2align 4
label240:
	mov r8, r0
	mov r9, #0
.p2align 4
label119:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bls label310
	mov r8, r0
	b label119
label200:
	mov r5, #0
	b label88
label182:
	mov r6, #0
	b label83
