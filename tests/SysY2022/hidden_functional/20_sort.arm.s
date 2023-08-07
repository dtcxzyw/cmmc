.arch armv7ve
.data
.bss
.align 8
cnt:
	.zero	1600080
.align 8
a:
	.zero	400020
.align 8
b:
	.zero	400020
.align 8
c:
	.zero	400020
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label114
	mov r4, r0
	mov r5, #0
.p2align 4
label2:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bls label122
	mov r4, r0
	b label2
label122:
	mov r4, r5
label5:
	sub r1, r0, #48
	cmp r1, #10
	bhs label127
	mov r5, r0
	mov r6, #0
.p2align 4
label108:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label8
	mov r5, r0
	b label108
label8:
	cmp r4, #0
	rsb r0, r6, #0
	str r6, [sp, #0]
	movw r5, #:lower16:b
	movt r5, #:upper16:b
	mov r8, r6
	movw r4, #:lower16:c
	movt r4, #:upper16:c
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	movne r8, r0
	cmp r8, #0
	str r8, [sp, #0]
	beq label10
	mov r7, r6
	mov r8, #0
.p2align 4
label93:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label363
	mov r9, r0
	mov r10, #0
	b label105
.p2align 4
label102:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movne r0, r1
	str r0, [r7, #0]
	str r0, [r5, r8, lsl #2]
	str r0, [r4, r8, lsl #2]
	add r0, r8, #1
	ldr r8, [sp, #0]
	cmp r8, r0
	beq label10
	add r7, r7, #4
	mov r8, r0
	b label93
.p2align 4
label105:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label398
	mov r9, r0
	b label105
label368:
	mov r11, #0
	b label102
.p2align 4
label369:
	mov r10, r0
	mov r11, #0
	b label99
.p2align 4
label398:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	blo label369
	b label368
.p2align 4
label99:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label102
	mov r10, r0
	b label99
label10:
	mov r0, r6
	mov r1, #0
label11:
	ldr r8, [sp, #0]
	cmp r8, r1
	ble label24
.p2align 4
label14:
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r8, r1
	ble label149
	add r2, r6, r1, lsl #2
	mov r3, r1
	ldr r7, [r0, #0]
	ldr r8, [r2, #0]
	cmp r7, r8
	ble label157
.p2align 4
label19:
	str r8, [r0, #0]
	str r7, [r2, #0]
	add r3, r3, #1
	ldr r8, [sp, #0]
	cmp r8, r3
	bgt label22
	add r0, r0, #4
	cmp r8, r1
	bgt label14
	b label24
.p2align 4
label22:
	add r2, r2, #4
	ldr r7, [r0, #0]
	ldr r8, [r2, #0]
	cmp r7, r8
	bgt label19
	add r3, r3, #1
	ldr r8, [sp, #0]
	cmp r8, r3
	bgt label22
	add r0, r0, #4
	cmp r8, r1
	bgt label14
	b label24
label363:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label369
	b label368
label24:
	ldr r8, [sp, #0]
	movw r3, #:lower16:cnt
	movt r3, #:upper16:cnt
	cmp r8, #0
	sub r0, r8, #4
	ble label172
	cmp r8, #4
	ble label310
	mov r1, r5
	mvn r7, #99
	mov r2, #0
.p2align 4
label80:
	ldr r8, [r1, #0]
	add r2, r2, #4
	cmp r7, r8
	add r9, r3, r8, lsl #2
	ldr r10, [r9, #0]
	add r10, r10, #1
	str r10, [r9, #0]
	ldr r9, [r1, #4]
	add r10, r3, r9, lsl #2
	ldr r11, [r10, #0]
	add r11, r11, #1
	str r11, [r10, #0]
	mov r10, r7
	mov r7, r9
	movle r10, r8
	ldr r8, [r1, #8]
	cmp r9, r10
	movle r7, r10
	cmp r7, r8
	movle r7, r8
	add r8, r3, r8, lsl #2
	ldr r9, [r8, #0]
	add r9, r9, #1
	str r9, [r8, #0]
	ldr r8, [r1, #12]
	cmp r7, r8
	movle r7, r8
	cmp r0, r2
	add r8, r3, r8, lsl #2
	ldr r9, [r8, #0]
	add r9, r9, #1
	str r9, [r8, #0]
	ble label84
	add r1, r1, #16
	b label80
label84:
	add r1, r5, r2, lsl #2
label86:
	ldr r8, [r1, #0]
	add r2, r2, #1
	cmp r7, r8
	add r9, r3, r8, lsl #2
	movle r7, r8
	ldr r10, [r9, #0]
	add r10, r10, #1
	str r10, [r9, #0]
	ldr r8, [sp, #0]
	cmp r8, r2
	ble label356
	add r1, r1, #4
	b label86
label27:
	cmp r2, r1
	bge label69
	b label31
label356:
	mov r2, r7
	mov r9, #0
	mov r1, r9
	b label27
label31:
	mov r1, r4
	mov r7, #0
label32:
	ldr r8, [sp, #0]
	cmp r8, r7
	bgt label35
	b label52
.p2align 4
label69:
	ldr r8, [r3, #0]
	cmp r8, #0
	beq label295
	add r7, r5, r9, lsl #2
	b label71
.p2align 4
label303:
	add r1, r1, #1
	add r3, r3, #4
	cmp r2, r1
	bge label69
	b label31
.p2align 4
label71:
	str r1, [r7, #0]
	subs r8, r8, #1
	add r9, r9, #1
	beq label303
	add r7, r7, #4
	b label71
.p2align 4
label35:
	add r2, r7, #1
	ldr r8, [sp, #0]
	cmp r8, r2
	ble label185
	add r3, r7, #5
	cmp r8, r3
	bgt label37
	add r3, r4, r2, lsl #2
	add r9, r2, #1
	ldr r8, [r3, #0]
	ldr r10, [r4, r7, lsl #2]
	cmp r8, r10
	ldr r8, [sp, #0]
	movlt r7, r2
	cmp r8, r9
	bgt label48
	b label244
.p2align 4
label37:
	add r3, r4, r2, lsl #2
	mov r8, r7
	mov r7, r2
	b label38
.p2align 4
label244:
	ldr r3, [r1, #0]
	add r7, r4, r7, lsl #2
	ldr r8, [r7, #0]
	str r8, [r1, #0]
	add r1, r1, #4
	str r3, [r7, #0]
	ldr r8, [sp, #0]
	mov r7, r2
	cmp r8, r2
	bgt label35
label52:
	ldr r8, [sp, #0]
	cmp r8, #0
	beq label53
	mov r0, r5
	mov r1, #0
.p2align 4
label64:
	ldr r3, [r0, #0]
	ldr r2, [r6, r1, lsl #2]
	sub r7, r3, r2
	add r3, r4, r1, lsl #2
	str r7, [r0, #0]
	add r1, r1, #1
	ldr r8, [r3, #0]
	sub r7, r8, r7
	sub r2, r7, r2
	str r2, [r3, #0]
	ldr r8, [sp, #0]
	subs r2, r8, r1
	beq label53
	add r0, r0, #4
	b label64
.p2align 4
label38:
	ldr r9, [r3, #0]
	ldr r10, [r4, r8, lsl #2]
	cmp r9, r10
	add r9, r7, #1
	movlt r8, r7
	ldr r10, [r4, r9, lsl #2]
	ldr r11, [r4, r8, lsl #2]
	cmp r10, r11
	movlt r8, r9
	add r9, r7, #2
	ldr r10, [r4, r9, lsl #2]
	ldr r11, [r4, r8, lsl #2]
	cmp r10, r11
	movlt r8, r9
	add r9, r7, #3
	add r7, r7, #4
	ldr r10, [r4, r9, lsl #2]
	ldr r11, [r4, r8, lsl #2]
	cmp r10, r11
	movlt r8, r9
	cmp r0, r7
	ble label42
	add r3, r3, #16
	b label38
.p2align 4
label42:
	add r3, r4, r7, lsl #2
	mov r9, r7
	mov r7, r8
	ldr r8, [r3, #0]
	ldr r10, [r4, r7, lsl #2]
	cmp r8, r10
	ldr r8, [sp, #0]
	movlt r7, r9
	add r9, r9, #1
	cmp r8, r9
	bgt label48
	b label446
.p2align 4
label44:
	ldr r8, [r3, #0]
	ldr r10, [r4, r7, lsl #2]
	cmp r8, r10
	ldr r8, [sp, #0]
	movlt r7, r9
	add r9, r9, #1
	cmp r8, r9
	ble label244
.p2align 4
label48:
	add r3, r3, #4
	b label44
label53:
	mov r0, #0
label54:
	ldr r8, [sp, #0]
	subs r1, r0, r8
	beq label260
	ldr r1, [r5, #0]
	cmp r1, #0
	bne label266
	ldr r1, [r4, #0]
	cmp r1, #0
	beq label270
	mov r0, #2
label58:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label266:
	mov r0, #1
	b label58
.p2align 4
label157:
	add r3, r3, #1
	ldr r8, [sp, #0]
	cmp r8, r3
	bgt label22
	add r0, r0, #4
	cmp r8, r1
	bgt label14
	b label24
.p2align 4
label446:
	ldr r3, [r1, #0]
	add r7, r4, r7, lsl #2
	ldr r8, [r7, #0]
	str r8, [r1, #0]
	add r1, r1, #4
	str r3, [r7, #0]
	ldr r8, [sp, #0]
	mov r7, r2
	cmp r8, r2
	bgt label35
	b label52
label172:
	mvn r2, #99
	mov r9, #0
	mov r1, r9
	b label27
label149:
	add r0, r0, #4
	b label11
label260:
	mvn r0, #122
	b label58
label185:
	ldr r3, [r1, #0]
	add r7, r4, r7, lsl #2
	ldr r8, [r7, #0]
	str r8, [r1, #0]
	add r1, r1, #4
	str r3, [r7, #0]
	mov r7, r2
	b label32
label270:
	add r0, r0, #1
	add r5, r5, #4
	add r4, r4, #4
	b label54
label295:
	add r1, r1, #1
	add r3, r3, #4
	b label27
label310:
	mov r1, r5
	mov r2, #0
	mvn r7, #99
	b label86
label114:
	mov r4, #0
	b label5
label127:
	mov r6, #0
	b label8
