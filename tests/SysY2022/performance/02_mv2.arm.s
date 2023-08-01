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
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getint
	mov r6, #0
	movw r7, #:lower16:A
	sub r2, r0, #8
	mov r4, r0
	movt r7, #:upper16:A
	str r2, [sp, #0]
	cmp r0, r6
	bgt label39
label4:
	movw r5, #:lower16:B
	cmp r4, #0
	movt r5, #:upper16:B
	ble label5
	mov r6, #0
	b label37
label5:
	mov r0, #59
	bl _sysy_starttime
	mov r0, #0
	movw r6, #:lower16:C
	movt r6, #:upper16:C
	b label6
.p2align 4
label37:
	bl getint
	str r0, [r5, r6, lsl #2]
	add r6, r6, #1
	cmp r4, r6
	bgt label37
	b label5
.p2align 4
label39:
	cmp r4, #0
	ble label40
	movw r0, #8040
	mov r8, #0
	mla r5, r6, r0, r7
.p2align 4
label42:
	bl getint
	str r0, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	bgt label42
	add r6, r6, #1
	cmp r4, r6
	bgt label39
	b label4
.p2align 4
label6:
	cmp r4, #0
	bgt label32
	b label61
.p2align 4
label101:
	mov r3, #0
	cmp r4, r3
	ble label239
.p2align 4
label22:
	ldr r8, [r1, r3, lsl #2]
	cmp r8, #0
	beq label23
	add r9, r5, r2, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r6, r3, lsl #2]
	mla r8, r8, r11, r10
	str r8, [r9, #0]
.p2align 4
label23:
	add r3, r3, #1
	cmp r4, r3
	bgt label22
	add r2, r2, #1
	movw r1, #8040
	cmp r4, r2
	mla r1, r2, r1, r7
	bgt label101
	add r0, r0, #1
	cmp r0, #50
	blt label6
	b label19
.p2align 4
label32:
	cmp r4, #8
	ble label150
	mov r1, #0
	b label35
.p2align 4
label33:
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	bgt label33
.p2align 4
label157:
	mov r2, #0
	movw r1, #8040
	cmp r4, r2
	mla r1, r2, r1, r7
	bgt label68
	b label67
.p2align 4
label35:
	add r2, r6, r1, lsl #2
	mov r3, #0
	add r1, r1, #8
	str r3, [r2, #0]
	str r3, [r2, #4]
	str r3, [r2, #8]
	str r3, [r2, #12]
	str r3, [r2, #16]
	str r3, [r2, #20]
	str r3, [r2, #24]
	str r3, [r2, #28]
	ldr r2, [sp, #0]
	cmp r2, r1
	bgt label35
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	bgt label33
	movw r1, #8040
	cmp r4, r2
	mla r1, r2, r1, r7
	ble label67
.p2align 4
label68:
	mov r3, #0
	cmp r4, r3
	bgt label29
	b label236
.p2align 4
label11:
	cmp r4, #8
	bgt label74
	b label73
.p2align 4
label29:
	ldr r8, [r1, r3, lsl #2]
	cmp r8, #0
	beq label31
	add r9, r6, r2, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, r3, lsl #2]
	mla r8, r8, r11, r10
	str r8, [r9, #0]
.p2align 4
label31:
	add r3, r3, #1
	cmp r4, r3
	bgt label29
	add r2, r2, #1
	movw r1, #8040
	cmp r4, r2
	mla r1, r2, r1, r7
	bgt label68
	cmp r4, #0
	bgt label11
.p2align 4
label235:
	mov r2, #0
	b label16
.p2align 4
label74:
	mov r1, #0
.p2align 4
label12:
	add r2, r5, r1, lsl #2
	mov r3, #0
	add r1, r1, #8
	str r3, [r2, #0]
	str r3, [r2, #4]
	str r3, [r2, #8]
	str r3, [r2, #12]
	str r3, [r2, #16]
	str r3, [r2, #20]
	str r3, [r2, #24]
	str r3, [r2, #28]
	ldr r2, [sp, #0]
	cmp r2, r1
	bgt label12
.p2align 4
label14:
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	bgt label14
	b label235
.p2align 4
label16:
	movw r1, #8040
	cmp r4, r2
	mla r1, r2, r1, r7
	bgt label101
label100:
	add r0, r0, #1
	cmp r0, #50
	blt label6
	b label19
label40:
	add r6, r6, #1
	cmp r4, r6
	bgt label39
	b label4
label19:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r6
	bl putarray
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label61:
	mov r2, #0
	movw r1, #8040
	cmp r4, r2
	mla r1, r2, r1, r7
	bgt label68
	b label67
.p2align 4
label239:
	add r2, r2, #1
	movw r1, #8040
	cmp r4, r2
	mla r1, r2, r1, r7
	bgt label101
	b label100
.p2align 4
label236:
	add r2, r2, #1
	movw r1, #8040
	cmp r4, r2
	mla r1, r2, r1, r7
	bgt label68
	cmp r4, #0
	bgt label11
	b label235
label73:
	mov r1, #0
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	bgt label14
	b label235
label150:
	mov r1, #0
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	bgt label33
	b label157
label67:
	cmp r4, #0
	bgt label11
	b label235
