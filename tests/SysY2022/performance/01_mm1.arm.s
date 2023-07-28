.arch armv7ve
.data
.bss
.align 4
A:
	.zero	4194304
.align 4
B:
	.zero	4194304
.align 4
C:
	.zero	4194304
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getint
	mov r4, #0
	movw r6, #:lower16:B
	str r0, [sp, #0]
	mov r7, r0
	movw r5, #:lower16:A
	movt r6, #:upper16:B
	movt r5, #:upper16:A
	str r5, [sp, #8]
	str r6, [sp, #4]
	cmp r0, r4
	ble label16
.p2align 4
label4:
	ldr r7, [sp, #0]
	cmp r7, #0
	bgt label5
	add r4, r4, #1
	cmp r7, r4
	bgt label4
	mov r4, #0
	cmp r7, r4
	bgt label11
	b label16
.p2align 4
label6:
	bl getint
	str r0, [r5, r6, lsl #2]
	ldr r7, [sp, #0]
	add r6, r6, #1
	cmp r7, r6
	bgt label6
	add r4, r4, #1
	cmp r7, r4
	bgt label4
	mov r4, #0
	cmp r7, r4
	bgt label11
label16:
	mov r0, #65
	bl _sysy_starttime
	mov r1, #0
	movw r0, #:lower16:C
	movt r0, #:upper16:C
label17:
	mov r2, #0
	ldr r7, [sp, #0]
	cmp r7, r2
	bgt label21
	mov r3, #0
	ldr r6, [sp, #4]
	add r2, r6, r3, lsl #12
	cmp r7, r3
	bgt label158
	mov r2, #0
	cmp r7, r2
	bgt label43
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label263
	add r1, r1, #1
	cmp r1, #5
	blt label17
label529:
	mov r4, #0
	mov r0, r4
	ldr r7, [sp, #0]
	cmp r7, r4
	bgt label56
	b label66
label263:
	mov r4, #0
	ldr r7, [sp, #0]
	cmp r7, r4
	bgt label70
	add r3, r3, #1
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label263
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label529
.p2align 4
label70:
	ldr r5, [sp, #8]
	add r5, r5, r4, lsl #12
	ldr r5, [r5, r3, lsl #2]
	cmp r5, #0
	beq label71
	ldr r7, [sp, #0]
	cmp r7, #0
	bgt label73
	add r4, r4, #1
	cmp r7, r4
	bgt label70
	add r3, r3, #1
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label263
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label529
.p2align 4
label71:
	add r4, r4, #1
	ldr r7, [sp, #0]
	cmp r7, r4
	bgt label70
	add r3, r3, #1
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label263
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label529
.p2align 4
label73:
	ldr r6, [sp, #4]
	ldr r7, [sp, #0]
	add r6, r6, r4, lsl #12
	cmp r7, #4
	bgt label332
	mov r7, #0
	ldr r8, [r6, r7, lsl #2]
	ldr r9, [r2, r7, lsl #2]
	mla r8, r5, r9, r8
	str r8, [r6, r7, lsl #2]
	add r8, r7, #1
	ldr r7, [sp, #0]
	cmp r7, r8
	bgt label377
	add r4, r4, #1
	cmp r7, r4
	bgt label70
	add r3, r3, #1
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label263
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label529
.p2align 4
label332:
	mov r7, #0
.p2align 4
label74:
	add r8, r6, r7, lsl #2
	ldr r10, [r6, r7, lsl #2]
	add r9, r2, r7, lsl #2
	ldr r11, [r2, r7, lsl #2]
	mla r10, r5, r11, r10
	str r10, [r6, r7, lsl #2]
	ldr r10, [r8, #4]
	ldr r11, [r9, #4]
	mla r10, r5, r11, r10
	str r10, [r8, #4]
	ldr r10, [r8, #8]
	ldr r11, [r9, #8]
	mla r10, r5, r11, r10
	str r10, [r8, #8]
	ldr r10, [r8, #12]
	ldr r9, [r9, #12]
	mla r9, r5, r9, r10
	str r9, [r8, #12]
	add r8, r7, #4
	add r9, r7, #8
	ldr r7, [sp, #0]
	cmp r7, r9
	bgt label364
	mov r7, r8
	ldr r8, [r6, r8, lsl #2]
	ldr r9, [r2, r7, lsl #2]
	mla r8, r5, r9, r8
	str r8, [r6, r7, lsl #2]
	add r8, r7, #1
	ldr r7, [sp, #0]
	cmp r7, r8
	bgt label377
	add r4, r4, #1
	cmp r7, r4
	bgt label70
	add r3, r3, #1
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label263
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label529
.p2align 4
label364:
	mov r7, r8
	b label74
.p2align 4
label76:
	ldr r8, [r6, r7, lsl #2]
	ldr r9, [r2, r7, lsl #2]
	mla r8, r5, r9, r8
	str r8, [r6, r7, lsl #2]
	add r8, r7, #1
	ldr r7, [sp, #0]
	cmp r7, r8
	bgt label377
	add r4, r4, #1
	cmp r7, r4
	bgt label70
	add r3, r3, #1
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label263
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label529
.p2align 4
label377:
	mov r7, r8
	b label76
.p2align 4
label158:
	mov r4, #0
	ldr r7, [sp, #0]
	cmp r7, r4
	bgt label33
	add r3, r3, #1
	ldr r6, [sp, #4]
	add r2, r6, r3, lsl #12
	cmp r7, r3
	bgt label158
	mov r2, #0
	cmp r7, r2
	bgt label43
	mov r3, #0
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label263
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label529
.p2align 4
label33:
	ldr r5, [sp, #8]
	add r5, r5, r4, lsl #12
	ldr r5, [r5, r3, lsl #2]
	cmp r5, #0
	beq label34
	ldr r7, [sp, #0]
	cmp r7, #0
	bgt label36
	add r4, r4, #1
	cmp r7, r4
	bgt label33
	add r3, r3, #1
	ldr r6, [sp, #4]
	add r2, r6, r3, lsl #12
	cmp r7, r3
	bgt label158
	mov r2, #0
	cmp r7, r2
	bgt label43
	mov r3, #0
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label263
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label529
.p2align 4
label34:
	add r4, r4, #1
	ldr r7, [sp, #0]
	cmp r7, r4
	bgt label33
	add r3, r3, #1
	ldr r6, [sp, #4]
	add r2, r6, r3, lsl #12
	cmp r7, r3
	bgt label158
	mov r2, #0
	cmp r7, r2
	bgt label43
	mov r3, #0
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label263
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label529
.p2align 4
label36:
	add r6, r0, r4, lsl #12
	ldr r7, [sp, #0]
	cmp r7, #4
	bgt label181
	mov r7, #0
	ldr r8, [r6, r7, lsl #2]
	ldr r9, [r2, r7, lsl #2]
	mla r8, r5, r9, r8
	str r8, [r6, r7, lsl #2]
	add r8, r7, #1
	ldr r7, [sp, #0]
	cmp r7, r8
	bgt label226
	add r4, r4, #1
	cmp r7, r4
	bgt label33
	add r3, r3, #1
	ldr r6, [sp, #4]
	add r2, r6, r3, lsl #12
	cmp r7, r3
	bgt label158
	mov r2, #0
	cmp r7, r2
	bgt label43
	mov r3, #0
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label263
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label529
.p2align 4
label181:
	mov r7, #0
.p2align 4
label37:
	add r8, r6, r7, lsl #2
	ldr r10, [r6, r7, lsl #2]
	add r9, r2, r7, lsl #2
	ldr r11, [r2, r7, lsl #2]
	mla r10, r5, r11, r10
	str r10, [r6, r7, lsl #2]
	ldr r10, [r8, #4]
	ldr r11, [r9, #4]
	mla r10, r5, r11, r10
	str r10, [r8, #4]
	ldr r10, [r8, #8]
	ldr r11, [r9, #8]
	mla r10, r5, r11, r10
	str r10, [r8, #8]
	ldr r10, [r8, #12]
	ldr r9, [r9, #12]
	mla r9, r5, r9, r10
	str r9, [r8, #12]
	add r8, r7, #4
	add r9, r7, #8
	ldr r7, [sp, #0]
	cmp r7, r9
	bgt label213
	mov r7, r8
	ldr r8, [r6, r8, lsl #2]
	ldr r9, [r2, r7, lsl #2]
	mla r8, r5, r9, r8
	str r8, [r6, r7, lsl #2]
	add r8, r7, #1
	ldr r7, [sp, #0]
	cmp r7, r8
	bgt label226
	add r4, r4, #1
	cmp r7, r4
	bgt label33
	add r3, r3, #1
	ldr r6, [sp, #4]
	add r2, r6, r3, lsl #12
	cmp r7, r3
	bgt label158
	mov r2, #0
	cmp r7, r2
	bgt label43
	mov r3, #0
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label263
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label529
.p2align 4
label213:
	mov r7, r8
	b label37
.p2align 4
label39:
	ldr r8, [r6, r7, lsl #2]
	ldr r9, [r2, r7, lsl #2]
	mla r8, r5, r9, r8
	str r8, [r6, r7, lsl #2]
	add r8, r7, #1
	ldr r7, [sp, #0]
	cmp r7, r8
	bgt label226
	add r4, r4, #1
	cmp r7, r4
	bgt label33
	add r3, r3, #1
	ldr r6, [sp, #4]
	add r2, r6, r3, lsl #12
	cmp r7, r3
	bgt label158
	mov r2, #0
	cmp r7, r2
	bgt label43
	mov r3, #0
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label263
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label529
.p2align 4
label226:
	mov r7, r8
	b label39
.p2align 4
label21:
	ldr r7, [sp, #0]
	cmp r7, #0
	bgt label22
	add r2, r2, #1
	cmp r7, r2
	bgt label21
	mov r3, #0
	ldr r6, [sp, #4]
	add r2, r6, r3, lsl #12
	cmp r7, r3
	bgt label158
	mov r2, #0
	cmp r7, r2
	bgt label43
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label263
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label529
.p2align 4
label22:
	add r3, r0, r2, lsl #12
	ldr r7, [sp, #0]
	cmp r7, #4
	bgt label133
	mov r4, #0
	mov r5, #0
	str r5, [r3, r4, lsl #2]
	add r4, r4, #1
	cmp r7, r4
	bgt label25
	add r2, r2, #1
	cmp r7, r2
	bgt label21
	mov r3, #0
	ldr r6, [sp, #4]
	add r2, r6, r3, lsl #12
	cmp r7, r3
	bgt label158
	mov r2, #0
	cmp r7, r2
	bgt label43
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label263
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label529
.p2align 4
label133:
	mov r4, #0
.p2align 4
label23:
	add r5, r3, r4, lsl #2
	mov r6, #0
	str r6, [r3, r4, lsl #2]
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	ldr r7, [sp, #0]
	add r5, r4, #8
	add r4, r4, #4
	cmp r7, r5
	bgt label23
	mov r5, #0
	str r5, [r3, r4, lsl #2]
	add r4, r4, #1
	cmp r7, r4
	bgt label25
	add r2, r2, #1
	cmp r7, r2
	bgt label21
	mov r3, #0
	ldr r6, [sp, #4]
	add r2, r6, r3, lsl #12
	cmp r7, r3
	bgt label158
	mov r2, #0
	cmp r7, r2
	bgt label43
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label263
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label529
.p2align 4
label25:
	mov r5, #0
	str r5, [r3, r4, lsl #2]
	ldr r7, [sp, #0]
	add r4, r4, #1
	cmp r7, r4
	bgt label25
	add r2, r2, #1
	cmp r7, r2
	bgt label21
	mov r3, #0
	ldr r6, [sp, #4]
	add r2, r6, r3, lsl #12
	cmp r7, r3
	bgt label158
	mov r2, #0
	cmp r7, r2
	bgt label43
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label263
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label529
.p2align 4
label43:
	ldr r7, [sp, #0]
	cmp r7, #0
	bgt label44
	add r2, r2, #1
	cmp r7, r2
	bgt label43
	mov r3, #0
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label263
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label529
.p2align 4
label44:
	ldr r6, [sp, #4]
	ldr r7, [sp, #0]
	add r3, r6, r2, lsl #12
	cmp r7, #4
	bgt label238
	mov r4, #0
	mov r5, #0
	str r5, [r3, r4, lsl #2]
	add r4, r4, #1
	cmp r7, r4
	bgt label45
	add r2, r2, #1
	cmp r7, r2
	bgt label43
	mov r3, #0
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label263
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label529
.p2align 4
label238:
	mov r4, #0
	b label47
.p2align 4
label45:
	mov r5, #0
	str r5, [r3, r4, lsl #2]
	ldr r7, [sp, #0]
	add r4, r4, #1
	cmp r7, r4
	bgt label45
	add r2, r2, #1
	cmp r7, r2
	bgt label43
	mov r3, #0
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label263
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label529
.p2align 4
label47:
	add r5, r3, r4, lsl #2
	mov r6, #0
	str r6, [r3, r4, lsl #2]
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	ldr r7, [sp, #0]
	add r5, r4, #8
	add r4, r4, #4
	cmp r7, r5
	bgt label47
	mov r5, #0
	str r5, [r3, r4, lsl #2]
	add r4, r4, #1
	cmp r7, r4
	bgt label45
	add r2, r2, #1
	cmp r7, r2
	bgt label43
	mov r3, #0
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label263
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label529
.p2align 4
label11:
	ldr r7, [sp, #0]
	cmp r7, #0
	bgt label12
	add r4, r4, #1
	cmp r7, r4
	bgt label11
	b label16
.p2align 4
label13:
	bl getint
	str r0, [r5, r6, lsl #2]
	ldr r7, [sp, #0]
	add r6, r6, #1
	cmp r7, r6
	bgt label13
	add r4, r4, #1
	cmp r7, r4
	bgt label11
	b label16
.p2align 4
label56:
	ldr r7, [sp, #0]
	cmp r7, #0
	bgt label57
	mov r3, r4
	add r0, r0, #1
	cmp r7, r0
	bgt label56
	b label66
.p2align 4
label57:
	ldr r6, [sp, #4]
	ldr r7, [sp, #0]
	add r1, r6, r0, lsl #12
	cmp r7, #4
	bgt label280
	mov r2, #0
	mov r3, r4
	ldr r4, [r1, r2, lsl #2]
	add r2, r2, #1
	add r3, r3, r4
	cmp r7, r2
	bgt label61
	add r0, r0, #1
	mov r4, r3
	cmp r7, r0
	bgt label56
	b label66
.p2align 4
label280:
	mov r2, #0
.p2align 4
label58:
	add r3, r1, r2, lsl #2
	ldr r5, [r1, r2, lsl #2]
	add r4, r4, r5
	ldr r5, [r3, #4]
	add r4, r4, r5
	ldr r5, [r3, #8]
	ldr r3, [r3, #12]
	ldr r7, [sp, #0]
	add r4, r4, r5
	add r3, r4, r3
	add r4, r2, #8
	cmp r7, r4
	add r2, r2, #4
	bgt label299
	ldr r4, [r1, r2, lsl #2]
	add r2, r2, #1
	add r3, r3, r4
	cmp r7, r2
	bgt label61
	add r0, r0, #1
	mov r4, r3
	cmp r7, r0
	bgt label56
	b label66
.p2align 4
label299:
	mov r4, r3
	b label58
.p2align 4
label61:
	ldr r4, [r1, r2, lsl #2]
	ldr r7, [sp, #0]
	add r2, r2, #1
	add r3, r3, r4
	cmp r7, r2
	bgt label61
	add r0, r0, #1
	mov r4, r3
	cmp r7, r0
	bgt label56
label66:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #20
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label5:
	ldr r5, [sp, #8]
	mov r6, #0
	add r5, r5, r4, lsl #12
	b label6
.p2align 4
label12:
	ldr r6, [sp, #4]
	add r5, r6, r4, lsl #12
	mov r6, #0
	b label13
