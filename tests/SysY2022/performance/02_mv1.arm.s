.arch armv7ve
.data
.bss
.align 4
A:
	.zero	16160400
.align 4
B:
	.zero	8040
.align 4
C:
	.zero	8040
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	bl getint
	movw r6, #:lower16:A
	mov r5, #0
	mov r4, r0
	movt r6, #:upper16:A
label2:
	cmp r4, r5
	bgt label4
label50:
	cmp r4, #0
	bgt label10
	b label13
label4:
	cmp r4, #0
	bgt label54
	add r5, r5, #1
	b label2
label7:
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	bgt label7
	add r5, r5, #1
	cmp r4, r5
	bgt label4
	b label50
label10:
	movw r5, #:lower16:B
	mov r7, #0
	movt r5, #:upper16:B
label11:
	bl getint
	str r0, [r5, r7, lsl #2]
	add r7, r7, #1
	cmp r4, r7
	bgt label11
label13:
	mov r0, #59
	bl _sysy_starttime
	mov r1, #0
	movw r5, #:lower16:C
	movw r0, #:lower16:B
	movt r5, #:upper16:C
	movt r0, #:upper16:B
label14:
	cmp r4, #0
	ble label84
	mov r2, #0
	add r3, r2, #4
	cmp r4, r3
	bgt label42
	b label168
label137:
	add r1, r1, #1
	cmp r1, #50
	blt label14
	b label39
label138:
	mov r7, #0
label32:
	cmp r4, r7
	bgt label34
	add r2, r2, #1
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label138
	b label137
label34:
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	beq label35
	ldr r9, [r0, r2, lsl #2]
	ldr r10, [r5, r7, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r0, r2, lsl #2]
label35:
	add r7, r7, #1
	b label32
label40:
	add r3, r2, #4
	cmp r4, r3
	bgt label42
label168:
	mov r3, #0
	str r3, [r5, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bgt label43
	b label84
label42:
	add r7, r5, r2, lsl #2
	mov r8, #0
	str r8, [r5, r2, lsl #2]
	mov r2, r3
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	b label40
label84:
	mov r2, #0
	b label16
label43:
	mov r3, #0
	str r3, [r5, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bgt label43
	b label84
label16:
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label91
label90:
	cmp r4, #0
	bgt label115
	b label114
label91:
	mov r7, #0
label18:
	cmp r4, r7
	bgt label21
	add r2, r2, #1
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label91
	b label90
label21:
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	beq label23
	ldr r9, [r5, r2, lsl #2]
	ldr r10, [r0, r7, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r5, r2, lsl #2]
label23:
	add r7, r7, #1
	b label18
label114:
	mov r2, #0
	b label30
label115:
	mov r2, #0
label25:
	add r3, r2, #4
	cmp r4, r3
	bgt label27
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bgt label28
	b label114
label27:
	add r7, r0, r2, lsl #2
	mov r8, #0
	str r8, [r0, r2, lsl #2]
	mov r2, r3
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	b label25
label30:
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label138
	b label137
label28:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bgt label28
	b label114
label39:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r5
	bl putarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label54:
	movw r0, #8040
	mov r8, #0
	mla r7, r5, r0, r6
	b label7
