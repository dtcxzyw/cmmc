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
	mov r6, #0
	sub r1, r0, #4
	mov r4, r0
	mov r7, r6
	str r1, [sp, #4]
	sub r1, r0, #20
	str r1, [sp, #0]
	cmp r0, r6
	ble label8
.p2align 4
label4:
	movw r1, #8040
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	mov r8, r7
	mla r5, r6, r1, r3
.p2align 4
label5:
	bl getint
	str r0, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	bgt label5
	add r6, r6, #1
	cmp r4, r6
	bgt label4
label8:
	movw r5, #:lower16:B
	movt r5, #:upper16:B
	cmp r4, #0
	ble label9
	mov r6, r7
	b label47
label9:
	mov r0, #59
	bl _sysy_starttime
	mov r0, r7
	movw r6, #:lower16:C
	movt r6, #:upper16:C
	b label10
.p2align 4
label47:
	bl getint
	str r0, [r5, r6, lsl #2]
	add r6, r6, #1
	cmp r4, r6
	bgt label47
	b label9
.p2align 4
label10:
	cmp r4, #0
	bgt label39
	b label79
.p2align 4
label161:
	mov r3, r7
	cmp r4, r7
	ble label164
.p2align 4
label33:
	ldr r8, [r1, r3, lsl #2]
	cmp r8, #0
	beq label35
	add r9, r5, r2, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r6, r3, lsl #2]
	mla r8, r8, r11, r10
	str r8, [r9, #0]
.p2align 4
label35:
	add r3, r3, #1
	cmp r4, r3
	bgt label33
	add r2, r2, #1
	movw r1, #8040
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	cmp r4, r2
	mla r1, r2, r1, r3
	bgt label161
	add r0, r0, #1
	cmp r0, #50
	blt label10
	b label38
.p2align 4
label39:
	cmp r4, #4
	bgt label42
	b label189
.p2align 4
label40:
	str r7, [r6, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bgt label40
	mov r2, r7
	movw r1, #8040
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	cmp r4, r7
	mla r1, r7, r1, r3
	bgt label86
	b label85
.p2align 4
label42:
	ldr r1, [sp, #4]
	cmp r1, #16
	ble label199
	mov r2, r7
.p2align 4
label43:
	add r1, r6, r2, lsl #2
	add r2, r2, #16
	str r7, [r1, #0]
	str r7, [r1, #4]
	str r7, [r1, #8]
	str r7, [r1, #12]
	str r7, [r1, #16]
	str r7, [r1, #20]
	str r7, [r1, #24]
	str r7, [r1, #28]
	str r7, [r1, #32]
	str r7, [r1, #36]
	str r7, [r1, #40]
	str r7, [r1, #44]
	str r7, [r1, #48]
	str r7, [r1, #52]
	str r7, [r1, #56]
	str r7, [r1, #60]
	ldr r1, [sp, #0]
	cmp r1, r2
	bgt label43
.p2align 4
label45:
	add r1, r6, r2, lsl #2
	add r2, r2, #4
	str r7, [r1, #0]
	str r7, [r1, #4]
	str r7, [r1, #8]
	str r7, [r1, #12]
	ldr r1, [sp, #4]
	cmp r1, r2
	bgt label45
.p2align 4
label231:
	str r7, [r6, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bgt label40
	mov r2, r7
	movw r1, #8040
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	cmp r4, r7
	mla r1, r7, r1, r3
	bgt label86
	b label85
.p2align 4
label312:
	mov r2, r7
	b label29
.p2align 4
label86:
	mov r3, r7
	cmp r4, r7
	ble label16
.p2align 4
label17:
	ldr r8, [r1, r3, lsl #2]
	cmp r8, #0
	beq label18
	add r9, r6, r2, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, r3, lsl #2]
	mla r8, r8, r11, r10
	str r8, [r9, #0]
.p2align 4
label18:
	add r3, r3, #1
	cmp r4, r3
	bgt label17
	add r2, r2, #1
	movw r1, #8040
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	cmp r4, r2
	mla r1, r2, r1, r3
	bgt label86
	cmp r4, #0
	ble label312
.p2align 4
label21:
	cmp r4, #4
	ble label112
	ldr r1, [sp, #4]
	cmp r1, #16
	ble label115
	mov r2, r7
	b label25
.p2align 4
label23:
	add r1, r5, r2, lsl #2
	add r2, r2, #4
	str r7, [r1, #0]
	str r7, [r1, #4]
	str r7, [r1, #8]
	str r7, [r1, #12]
	ldr r1, [sp, #4]
	cmp r1, r2
	bgt label23
.p2align 4
label125:
	str r7, [r5, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bgt label27
	b label318
.p2align 4
label25:
	add r1, r5, r2, lsl #2
	add r2, r2, #16
	str r7, [r1, #0]
	str r7, [r1, #4]
	str r7, [r1, #8]
	str r7, [r1, #12]
	str r7, [r1, #16]
	str r7, [r1, #20]
	str r7, [r1, #24]
	str r7, [r1, #28]
	str r7, [r1, #32]
	str r7, [r1, #36]
	str r7, [r1, #40]
	str r7, [r1, #44]
	str r7, [r1, #48]
	str r7, [r1, #52]
	str r7, [r1, #56]
	str r7, [r1, #60]
	ldr r1, [sp, #0]
	cmp r1, r2
	bgt label25
	add r1, r5, r2, lsl #2
	add r2, r2, #4
	str r7, [r1, #0]
	str r7, [r1, #4]
	str r7, [r1, #8]
	str r7, [r1, #12]
	ldr r1, [sp, #4]
	cmp r1, r2
	bgt label23
	str r7, [r5, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	ble label328
.p2align 4
label27:
	str r7, [r5, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bgt label27
	b label312
.p2align 4
label29:
	movw r1, #8040
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	cmp r4, r2
	mla r1, r2, r1, r3
	bgt label161
	b label160
.p2align 4
label16:
	add r2, r2, #1
	movw r1, #8040
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	cmp r4, r2
	mla r1, r2, r1, r3
	bgt label86
	cmp r4, #0
	bgt label21
	b label312
label38:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r6
	bl putarray
	add sp, sp, #12
	mov r0, r7
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label79:
	mov r2, r7
	movw r1, #8040
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	cmp r4, r7
	mla r1, r7, r1, r3
	bgt label86
	b label85
label160:
	add r0, r0, #1
	cmp r0, #50
	blt label10
	b label38
.p2align 4
label164:
	add r2, r2, #1
	movw r1, #8040
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	cmp r4, r2
	mla r1, r2, r1, r3
	bgt label161
	b label160
label112:
	mov r2, r7
	str r7, [r5, r7, lsl #2]
	add r2, r7, #1
	cmp r4, r2
	bgt label27
	b label312
label199:
	mov r2, r7
	add r1, r6, r7, lsl #2
	add r2, r7, #4
	str r7, [r1, #0]
	str r7, [r1, #4]
	str r7, [r1, #8]
	str r7, [r1, #12]
	ldr r1, [sp, #4]
	cmp r1, r2
	bgt label45
	b label231
label115:
	mov r2, r7
	add r1, r5, r7, lsl #2
	add r2, r7, #4
	str r7, [r1, #0]
	str r7, [r1, #4]
	str r7, [r1, #8]
	str r7, [r1, #12]
	ldr r1, [sp, #4]
	cmp r1, r2
	bgt label23
	b label125
label85:
	cmp r4, #0
	bgt label21
	b label312
.p2align 4
label318:
	mov r2, r7
	movw r1, #8040
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	cmp r4, r7
	mla r1, r7, r1, r3
	bgt label161
	b label160
label328:
	mov r2, r7
	movw r1, #8040
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	cmp r4, r7
	mla r1, r7, r1, r3
	bgt label161
	b label160
label189:
	mov r2, r7
	b label40
