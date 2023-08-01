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
	movw r3, #:lower16:A
	sub r2, r0, #4
	mov r4, r0
	mov r7, r6
	str r2, [sp, #4]
	str r3, [sp, #0]
	movt r3, #:upper16:A
	str r3, [sp, #0]
label2:
	cmp r4, r6
	ble label9
.p2align 4
label4:
	cmp r4, #0
	ble label54
	movw r1, #8040
	ldr r3, [sp, #0]
	mov r8, r7
	mla r5, r6, r1, r3
.p2align 4
label6:
	bl getint
	str r0, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	bgt label6
	add r6, r6, #1
	cmp r4, r6
	bgt label4
label9:
	movw r5, #:lower16:B
	cmp r4, #0
	movt r5, #:upper16:B
	ble label10
	mov r6, r7
	b label42
label10:
	mov r0, #59
	bl _sysy_starttime
	mov r0, r7
	movw r6, #:lower16:C
	movt r6, #:upper16:C
	b label11
.p2align 4
label42:
	bl getint
	str r0, [r5, r6, lsl #2]
	add r6, r6, #1
	cmp r4, r6
	bgt label42
	b label10
.p2align 4
label11:
	cmp r4, #0
	bgt label37
	b label75
.p2align 4
label132:
	mov r3, r7
	cmp r4, r7
	ble label31
.p2align 4
label32:
	ldr r8, [r1, r3, lsl #2]
	cmp r8, #0
	beq label33
	add r9, r5, r2, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r6, r3, lsl #2]
	mla r8, r8, r11, r10
	str r8, [r9, #0]
.p2align 4
label33:
	add r3, r3, #1
	cmp r4, r3
	bgt label32
	add r2, r2, #1
	movw r1, #8040
	ldr r3, [sp, #0]
	cmp r4, r2
	mla r1, r2, r1, r3
	bgt label132
	add r0, r0, #1
	cmp r0, #50
	blt label11
	b label36
.p2align 4
label37:
	cmp r4, #4
	ble label160
	mov r1, r7
	add r2, r6, r7, lsl #2
	add r1, r7, #4
	str r7, [r2, #0]
	str r7, [r2, #4]
	str r7, [r2, #8]
	str r7, [r2, #12]
	ldr r2, [sp, #4]
	cmp r2, r1
	bgt label40
	b label237
.p2align 4
label38:
	str r7, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	bgt label38
.p2align 4
label167:
	mov r2, r7
	movw r1, #8040
	ldr r3, [sp, #0]
	cmp r4, r7
	mla r1, r7, r1, r3
	bgt label82
	b label81
.p2align 4
label40:
	add r2, r6, r1, lsl #2
	add r1, r1, #4
	str r7, [r2, #0]
	str r7, [r2, #4]
	str r7, [r2, #8]
	str r7, [r2, #12]
	ldr r2, [sp, #4]
	cmp r2, r1
	bgt label40
	str r7, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	bgt label38
.p2align 4
label239:
	mov r2, r7
	movw r1, #8040
	ldr r3, [sp, #0]
	cmp r4, r7
	mla r1, r7, r1, r3
	ble label81
.p2align 4
label82:
	mov r3, r7
	cmp r4, r7
	ble label17
.p2align 4
label18:
	ldr r8, [r1, r3, lsl #2]
	cmp r8, #0
	beq label19
	add r9, r6, r2, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, r3, lsl #2]
	mla r8, r8, r11, r10
	str r8, [r9, #0]
.p2align 4
label19:
	add r3, r3, #1
	cmp r4, r3
	bgt label18
	add r2, r2, #1
	movw r1, #8040
	ldr r3, [sp, #0]
	cmp r4, r2
	mla r1, r2, r1, r3
	bgt label82
	cmp r4, #0
	ble label224
.p2align 4
label22:
	cmp r4, #4
	ble label108
	mov r1, r7
	add r2, r5, r7, lsl #2
	add r1, r7, #4
	str r7, [r2, #0]
	str r7, [r2, #4]
	str r7, [r2, #8]
	str r7, [r2, #12]
	ldr r2, [sp, #4]
	cmp r2, r1
	bgt label25
	b label229
.p2align 4
label23:
	str r7, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	bgt label23
.p2align 4
label115:
	mov r2, r7
	movw r1, #8040
	ldr r3, [sp, #0]
	cmp r4, r7
	mla r1, r7, r1, r3
	bgt label132
	b label131
.p2align 4
label25:
	add r2, r5, r1, lsl #2
	add r1, r1, #4
	str r7, [r2, #0]
	str r7, [r2, #4]
	str r7, [r2, #8]
	str r7, [r2, #12]
	ldr r2, [sp, #4]
	cmp r2, r1
	bgt label25
	str r7, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	bgt label23
.p2align 4
label231:
	mov r2, r7
	movw r1, #8040
	ldr r3, [sp, #0]
	cmp r4, r7
	mla r1, r7, r1, r3
	bgt label132
	b label131
.p2align 4
label31:
	add r2, r2, #1
	movw r1, #8040
	ldr r3, [sp, #0]
	cmp r4, r2
	mla r1, r2, r1, r3
	bgt label132
	add r0, r0, #1
	cmp r0, #50
	blt label11
	b label36
.p2align 4
label17:
	add r2, r2, #1
	movw r1, #8040
	ldr r3, [sp, #0]
	cmp r4, r2
	mla r1, r2, r1, r3
	bgt label82
	cmp r4, #0
	bgt label22
	b label224
label36:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r6
	bl putarray
	add sp, sp, #12
	mov r0, r7
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label75:
	mov r2, r7
	movw r1, #8040
	ldr r3, [sp, #0]
	cmp r4, r7
	mla r1, r7, r1, r3
	bgt label82
	b label81
label224:
	mov r2, r7
	movw r1, #8040
	ldr r3, [sp, #0]
	cmp r4, r7
	mla r1, r7, r1, r3
	bgt label132
	b label131
label108:
	mov r1, r7
	str r7, [r5, r7, lsl #2]
	add r1, r7, #1
	cmp r4, r1
	bgt label23
	b label115
label160:
	mov r1, r7
	str r7, [r6, r7, lsl #2]
	add r1, r7, #1
	cmp r4, r1
	bgt label38
	b label167
label237:
	str r7, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	bgt label38
	b label239
label229:
	str r7, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	bgt label23
	b label231
label131:
	add r0, r0, #1
	cmp r0, #50
	blt label11
	b label36
label81:
	cmp r4, #0
	bgt label22
	b label224
label54:
	add r6, r6, #1
	b label2
