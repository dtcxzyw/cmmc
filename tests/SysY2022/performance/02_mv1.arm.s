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
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
	bl getint
	mov r5, #0
	movw r6, #:lower16:A
	sub r7, r0, #4
	mov r4, r0
	movt r6, #:upper16:A
	cmp r0, r5
	bgt label4
	cmp r0, #0
	bgt label70
	b label10
.p2align 4
label4:
	cmp r4, #0
	bgt label56
	add r5, r5, #1
	cmp r4, r5
	bgt label4
	cmp r4, #0
	bgt label70
	b label10
.p2align 4
label56:
	movw r0, #8040
	mov r9, #0
	mla r8, r5, r0, r6
.p2align 4
label7:
	bl getint
	str r0, [r8, r9, lsl #2]
	add r9, r9, #1
	cmp r4, r9
	bgt label7
	add r5, r5, #1
	cmp r4, r5
	bgt label4
	cmp r4, #0
	ble label10
label70:
	movw r5, #:lower16:B
	mov r8, #0
	movt r5, #:upper16:B
	b label43
label10:
	mov r0, #59
	bl _sysy_starttime
	mov r1, #0
	movw r5, #:lower16:C
	movw r0, #:lower16:B
	movt r5, #:upper16:C
	movt r0, #:upper16:B
	b label11
.p2align 4
label43:
	bl getint
	str r0, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	bgt label43
	b label10
.p2align 4
label11:
	cmp r4, #0
	bgt label37
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label83
	cmp r4, #0
	bgt label22
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label133
	add r1, r1, #1
	cmp r1, #50
	blt label11
label36:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r5
	bl putarray
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label37:
	cmp r4, #4
	bgt label162
	mov r2, #0
	mov r3, #0
	str r3, [r5, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bgt label40
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label83
	cmp r4, #0
	bgt label22
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label133
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label36
.p2align 4
label22:
	cmp r4, #4
	bgt label110
	mov r2, #0
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bgt label25
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label133
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label36
.p2align 4
label110:
	mov r2, #0
.p2align 4
label23:
	add r3, r0, r2, lsl #2
	mov r8, #0
	str r8, [r0, r2, lsl #2]
	add r2, r2, #4
	str r8, [r3, #4]
	cmp r7, r2
	str r8, [r3, #8]
	str r8, [r3, #12]
	bgt label23
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bgt label25
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label133
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label36
.p2align 4
label83:
	mov r8, #0
	cmp r4, r8
	bgt label18
	add r2, r2, #1
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label83
	cmp r4, #0
	bgt label22
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label133
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label36
.p2align 4
label18:
	ldr r9, [r3, r8, lsl #2]
	cmp r9, #0
	beq label20
	ldr r10, [r5, r2, lsl #2]
	ldr r11, [r0, r8, lsl #2]
	mla r9, r9, r11, r10
	str r9, [r5, r2, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	bgt label18
	add r2, r2, #1
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label83
	cmp r4, #0
	bgt label22
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label133
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label36
.p2align 4
label20:
	add r8, r8, #1
	cmp r4, r8
	bgt label18
	add r2, r2, #1
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label83
	cmp r4, #0
	bgt label22
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label133
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label36
.p2align 4
label133:
	mov r8, #0
	cmp r4, r8
	bgt label31
	add r2, r2, #1
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label133
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label36
.p2align 4
label31:
	ldr r9, [r3, r8, lsl #2]
	cmp r9, #0
	beq label32
	ldr r10, [r0, r2, lsl #2]
	ldr r11, [r5, r8, lsl #2]
	mla r9, r9, r11, r10
	str r9, [r0, r2, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	bgt label31
	add r2, r2, #1
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label133
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label36
.p2align 4
label32:
	add r8, r8, #1
	cmp r4, r8
	bgt label31
	add r2, r2, #1
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label133
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label36
.p2align 4
label40:
	mov r3, #0
	str r3, [r5, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bgt label40
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label83
	cmp r4, #0
	bgt label22
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label133
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label36
.p2align 4
label162:
	mov r2, #0
.p2align 4
label38:
	add r3, r5, r2, lsl #2
	mov r8, #0
	str r8, [r5, r2, lsl #2]
	add r2, r2, #4
	str r8, [r3, #4]
	cmp r7, r2
	str r8, [r3, #8]
	str r8, [r3, #12]
	bgt label38
	mov r3, #0
	str r3, [r5, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bgt label40
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label83
	cmp r4, #0
	bgt label22
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label133
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label36
.p2align 4
label25:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bgt label25
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label133
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label36
