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
label9:
	cmp r4, #0
	ble label10
	mov r8, #0
label54:
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label10
	b label54
label10:
	mov r0, #59
	bl _sysy_starttime
	mov r0, #0
label11:
	cmp r4, #0
	ble label86
	mov r1, #0
label13:
	add r2, r1, #4
	cmp r4, r2
	ble label16
	b label90
label29:
	add r0, r0, #1
	cmp r0, #50
	bge label30
	b label11
label30:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r5
	bl putarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label86:
	mov r1, #0
label24:
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r4, r1
	ble label26
	mov r3, #0
label48:
	cmp r4, r3
	ble label205
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label52
	b label211
label52:
	ldr r9, [r5, r1, lsl #2]
	ldr r10, [r6, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r5, r1, lsl #2]
	add r3, r3, #1
	b label48
label211:
	add r3, r3, #1
	b label48
label205:
	add r1, r1, #1
	b label24
label26:
	cmp r4, #0
	ble label132
	mov r1, #0
label37:
	add r2, r1, #4
	cmp r4, r2
	ble label40
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	b label37
label132:
	mov r1, #0
label27:
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r4, r1
	ble label29
	mov r3, #0
label31:
	cmp r4, r3
	ble label33
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	b label154
label36:
	ldr r9, [r6, r1, lsl #2]
	ldr r10, [r5, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r6, r1, lsl #2]
	add r3, r3, #1
	b label31
label154:
	add r3, r3, #1
	b label31
label33:
	add r1, r1, #1
	b label27
label40:
	add r2, r1, #4
	cmp r4, r2
	ble label43
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	b label40
label43:
	add r2, r1, #4
	cmp r4, r2
	ble label45
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	b label43
label45:
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label132
	b label45
label16:
	add r2, r1, #4
	cmp r4, r2
	ble label18
	b label100
label18:
	add r2, r1, #4
	cmp r4, r2
	ble label20
	b label105
label20:
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label86
	b label20
label100:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	b label16
label105:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	b label18
label90:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	b label13
