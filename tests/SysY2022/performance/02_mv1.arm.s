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
	mov r4, r0
	movw r7, #:lower16:A
	movt r7, #:upper16:A
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	movw r5, #:lower16:C
	movt r5, #:upper16:C
	mov r8, #0
label2:
	cmp r4, r8
	ble label9
	cmp r4, #0
	ble label5
	b label68
label5:
	add r8, r8, #1
	b label2
label9:
	cmp r4, #0
	ble label83
	mov r8, #0
label10:
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label83
	b label10
label68:
	movw r0, #8040
	mla r9, r8, r0, r7
	mov r10, #0
label7:
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	b label7
label83:
	mov r0, #59
	bl _sysy_starttime
	mov r0, #0
label13:
	cmp r4, #0
	ble label94
	mov r1, #0
	b label45
label103:
	mov r1, #0
label18:
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r4, r1
	ble label26
	mov r3, #0
label20:
	cmp r4, r3
	ble label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	b label120
label25:
	ldr r9, [r6, r1, lsl #2]
	ldr r10, [r5, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r6, r1, lsl #2]
	add r3, r3, #1
	b label20
label26:
	add r0, r0, #1
	cmp r0, #50
	bge label27
	b label13
label27:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r5
	bl putarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label45:
	add r2, r1, #4
	cmp r4, r2
	ble label48
	b label197
label94:
	mov r1, #0
label15:
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r4, r1
	ble label17
	mov r3, #0
	b label39
label17:
	cmp r4, #0
	ble label103
	mov r1, #0
label28:
	add r2, r1, #4
	cmp r4, r2
	ble label31
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	b label28
label39:
	cmp r4, r3
	ble label176
	b label41
label176:
	add r1, r1, #1
	b label15
label41:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label42
	b label182
label42:
	ldr r9, [r5, r1, lsl #2]
	ldr r10, [r6, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r5, r1, lsl #2]
	b label182
label120:
	add r3, r3, #1
	b label20
label182:
	add r3, r3, #1
	b label39
label22:
	add r1, r1, #1
	b label18
label31:
	add r2, r1, #4
	cmp r4, r2
	ble label33
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	b label31
label33:
	add r2, r1, #4
	cmp r4, r2
	ble label36
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	b label33
label36:
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label103
	b label36
label48:
	add r2, r1, #4
	cmp r4, r2
	ble label50
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	b label48
label50:
	add r2, r1, #4
	cmp r4, r2
	ble label52
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	b label50
label52:
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label94
	b label52
label197:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	b label45
