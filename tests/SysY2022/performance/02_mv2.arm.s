.arch armv7ve
.data
.bss
.align 8
A:
	.zero	16160400
.align 8
B:
	.zero	8040
.align 8
C:
	.zero	8040
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getint
	mov r8, #0
	movw r5, #:lower16:C
	movt r5, #:upper16:C
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	sub r2, r0, #4
	mov r4, r0
	str r2, [sp, #4]
	sub r2, r0, #20
	str r2, [sp, #0]
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r7, r2
	cmp r0, r8
	bgt label85
	b label5
.p2align 4
label90:
	add r9, r9, #4
	mov r10, r0
.p2align 4
label86:
	bl getint
	str r0, [r9, #0]
	add r0, r10, #1
	cmp r4, r0
	bgt label90
	add r8, r8, #1
	movw r0, #8040
	cmp r4, r8
	add r7, r7, r0
	ble label5
.p2align 4
label85:
	mov r9, r7
	mov r10, #0
	b label86
label5:
	cmp r4, #0
	ble label6
	mov r7, r6
	mov r8, #0
	b label81
.p2align 4
label84:
	add r7, r7, #4
	mov r8, r0
.p2align 4
label81:
	bl getint
	str r0, [r7, #0]
	add r0, r8, #1
	cmp r4, r0
	bgt label84
label6:
	mov r0, #59
	bl _sysy_starttime
	mov r0, #0
	b label7
.p2align 4
label358:
	add r0, r0, #1
	cmp r0, #50
	bge label49
.p2align 4
label7:
	cmp r4, #0
	ble label9
	cmp r4, #4
	ble label221
	ldr r2, [sp, #4]
	cmp r2, #16
	ble label230
	mov r1, r5
	mov r3, #0
.p2align 4
label74:
	mov r2, #0
	add r3, r3, #16
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	str r2, [r1, #16]
	str r2, [r1, #20]
	str r2, [r1, #24]
	str r2, [r1, #28]
	str r2, [r1, #32]
	str r2, [r1, #36]
	str r2, [r1, #40]
	str r2, [r1, #44]
	str r2, [r1, #48]
	str r2, [r1, #52]
	str r2, [r1, #56]
	str r2, [r1, #60]
	ldr r2, [sp, #0]
	cmp r2, r3
	ble label261
	add r1, r1, #64
	b label74
.p2align 4
label261:
	add r1, r5, r3, lsl #2
	mov r2, #0
	add r3, r3, #4
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	ldr r2, [sp, #4]
	cmp r2, r3
	ble label362
.p2align 4
label71:
	add r1, r1, #16
.p2align 4
label68:
	mov r2, #0
	add r3, r3, #4
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	ldr r2, [sp, #4]
	cmp r2, r3
	bgt label71
	add r1, r5, r3, lsl #2
	add r2, r3, #1
	mov r3, #0
	cmp r4, r2
	str r3, [r1, #0]
	ble label361
.p2align 4
label65:
	add r1, r1, #4
.p2align 4
label61:
	mov r3, #0
	add r2, r2, #1
	str r3, [r1, #0]
	cmp r4, r2
	bgt label65
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r5
	cmp r4, r3
	bgt label51
	b label14
.p2align 4
label214:
	add r3, r3, #1
	add r1, r1, #4
	movw r7, #8040
	cmp r4, r3
	add r2, r2, r7
	ble label360
.p2align 4
label51:
	cmp r4, #0
	ble label198
	mov r7, r2
	mov r8, #0
	ldr r9, [r2, #0]
	cmp r9, #0
	beq label57
	ldr r10, [r1, #0]
	ldr r11, [r6, r8, lsl #2]
	mla r9, r9, r11, r10
	str r9, [r1, #0]
.p2align 4
label57:
	add r8, r8, #1
	cmp r4, r8
	ble label214
.p2align 4
label58:
	add r7, r7, #4
	ldr r9, [r7, #0]
	cmp r9, #0
	beq label57
	ldr r10, [r1, #0]
	ldr r11, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	mla r9, r9, r11, r10
	str r9, [r1, #0]
	bgt label58
	add r3, r3, #1
	add r1, r1, #4
	movw r7, #8040
	cmp r4, r3
	add r2, r2, r7
	bgt label51
	cmp r4, #0
	bgt label15
	b label117
.p2align 4
label360:
	cmp r4, #0
	ble label117
.p2align 4
label15:
	cmp r4, #4
	ble label120
	ldr r2, [sp, #4]
	cmp r2, #16
	ble label123
	mov r1, r6
	mov r3, #0
.p2align 4
label23:
	mov r2, #0
	add r3, r3, #16
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	str r2, [r1, #16]
	str r2, [r1, #20]
	str r2, [r1, #24]
	str r2, [r1, #28]
	str r2, [r1, #32]
	str r2, [r1, #36]
	str r2, [r1, #40]
	str r2, [r1, #44]
	str r2, [r1, #48]
	str r2, [r1, #52]
	str r2, [r1, #56]
	str r2, [r1, #60]
	ldr r2, [sp, #0]
	cmp r2, r3
	ble label154
	add r1, r1, #64
	b label23
.p2align 4
label154:
	add r1, r6, r3, lsl #2
	mov r2, #0
	add r3, r3, #4
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	ldr r2, [sp, #4]
	cmp r2, r3
	ble label355
.p2align 4
label20:
	add r1, r1, #16
.p2align 4
label17:
	mov r2, #0
	add r3, r3, #4
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	ldr r2, [sp, #4]
	cmp r2, r3
	bgt label20
	add r1, r6, r3, lsl #2
	add r2, r3, #1
	mov r3, #0
	cmp r4, r2
	str r3, [r1, #0]
	ble label354
.p2align 4
label33:
	add r1, r1, #4
	mov r3, #0
	add r2, r2, #1
	str r3, [r1, #0]
	cmp r4, r2
	bgt label33
.p2align 4
label162:
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r6
	mov r3, #0
	cmp r4, r3
	bgt label39
	b label167
.p2align 4
label180:
	add r3, r3, #1
	add r1, r1, #4
	movw r7, #8040
	cmp r4, r3
	add r2, r2, r7
	ble label358
.p2align 4
label39:
	cmp r4, #0
	ble label170
	mov r7, r2
	mov r8, #0
	ldr r9, [r2, #0]
	cmp r9, #0
	beq label44
	ldr r10, [r1, #0]
	ldr r11, [r5, r8, lsl #2]
	mla r9, r9, r11, r10
	str r9, [r1, #0]
.p2align 4
label44:
	add r8, r8, #1
	cmp r4, r8
	ble label180
.p2align 4
label45:
	add r7, r7, #4
	ldr r9, [r7, #0]
	cmp r9, #0
	beq label44
	ldr r10, [r1, #0]
	ldr r11, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	mla r9, r9, r11, r10
	str r9, [r1, #0]
	bgt label45
	add r3, r3, #1
	add r1, r1, #4
	movw r7, #8040
	cmp r4, r3
	add r2, r2, r7
	bgt label39
	add r0, r0, #1
	cmp r0, #50
	blt label7
	b label49
.p2align 4
label362:
	add r1, r5, r3, lsl #2
	add r2, r3, #1
	mov r3, #0
	cmp r4, r2
	str r3, [r1, #0]
	bgt label65
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r5
	cmp r4, r3
	bgt label51
	b label14
.p2align 4
label355:
	add r1, r6, r3, lsl #2
	add r2, r3, #1
	mov r3, #0
	cmp r4, r2
	str r3, [r1, #0]
	bgt label33
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r6
	cmp r4, r3
	bgt label39
	b label167
label9:
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r5
	mov r3, #0
	cmp r4, r3
	bgt label51
	b label14
label117:
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r6
	mov r3, #0
	cmp r4, r3
	bgt label39
	b label167
.p2align 4
label170:
	add r3, r3, #1
	add r1, r1, #4
	movw r7, #8040
	cmp r4, r3
	add r2, r2, r7
	bgt label39
label167:
	add r0, r0, #1
	cmp r0, #50
	blt label7
	b label49
.p2align 4
label198:
	add r3, r3, #1
	add r1, r1, #4
	movw r7, #8040
	cmp r4, r3
	add r2, r2, r7
	bgt label51
label14:
	cmp r4, #0
	bgt label15
	b label117
label120:
	mov r1, r6
	mov r2, #0
	mov r3, #0
	add r2, r2, #1
	str r3, [r6, #0]
	cmp r4, r2
	bgt label33
	b label162
label49:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r5
	bl putarray
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label361:
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r5
	mov r3, #0
	cmp r4, r3
	bgt label51
	b label14
.p2align 4
label354:
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r6
	mov r3, #0
	cmp r4, r3
	bgt label39
	b label167
label123:
	mov r1, r6
	mov r3, #0
	b label17
label221:
	mov r1, r5
	mov r2, #0
	b label61
label230:
	mov r1, r5
	mov r3, #0
	b label68
