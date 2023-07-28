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
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	bl getint
	movw r6, #:lower16:A
	mov r5, #0
	mov r4, r0
	movt r6, #:upper16:A
	cmp r0, r5
	bgt label4
	cmp r0, #0
	ble label10
label69:
	movw r5, #:lower16:B
	mov r7, #0
	movt r5, #:upper16:B
	b label43
.p2align 4
label4:
	cmp r4, #0
	bgt label55
	add r5, r5, #1
	cmp r4, r5
	bgt label4
	cmp r4, #0
	bgt label69
	b label10
.p2align 4
label55:
	movw r0, #8040
	mov r8, #0
	mla r7, r5, r0, r6
.p2align 4
label7:
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	bgt label7
	add r5, r5, #1
	cmp r4, r5
	bgt label4
	cmp r4, #0
	bgt label69
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
	str r0, [r5, r7, lsl #2]
	add r7, r7, #1
	cmp r4, r7
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
	bgt label82
	cmp r4, #0
	bgt label16
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label112
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label30
.p2align 4
label16:
	cmp r4, #4
	bgt label88
	mov r2, #0
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bgt label17
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label112
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label30
.p2align 4
label88:
	mov r2, #0
	add r3, r0, r2, lsl #2
	mov r7, #0
	str r7, [r0, r2, lsl #2]
	str r7, [r3, #4]
	str r7, [r3, #8]
	str r7, [r3, #12]
	add r3, r2, #8
	cmp r4, r3
	add r2, r2, #4
	bgt label19
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bgt label17
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label112
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label30
.p2align 4
label19:
	add r3, r0, r2, lsl #2
	mov r7, #0
	str r7, [r0, r2, lsl #2]
	str r7, [r3, #4]
	str r7, [r3, #8]
	str r7, [r3, #12]
	add r3, r2, #8
	cmp r4, r3
	add r2, r2, #4
	bgt label19
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bgt label17
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label112
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label30
.p2align 4
label112:
	mov r7, #0
	cmp r4, r7
	bgt label25
	add r2, r2, #1
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label112
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label30
.p2align 4
label25:
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	beq label26
	ldr r9, [r0, r2, lsl #2]
	ldr r10, [r5, r7, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r0, r2, lsl #2]
	add r7, r7, #1
	cmp r4, r7
	bgt label25
	add r2, r2, #1
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label112
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label30
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
	bgt label82
	cmp r4, #0
	bgt label16
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label112
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label30
.p2align 4
label82:
	mov r7, #0
	cmp r4, r7
	bgt label33
	add r2, r2, #1
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label82
	cmp r4, #0
	bgt label16
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label112
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label30
.p2align 4
label33:
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	beq label34
	ldr r9, [r5, r2, lsl #2]
	ldr r10, [r0, r7, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r5, r2, lsl #2]
	add r7, r7, #1
	cmp r4, r7
	bgt label33
	add r2, r2, #1
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label82
	cmp r4, #0
	bgt label16
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label112
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label30
.p2align 4
label34:
	add r7, r7, #1
	cmp r4, r7
	bgt label33
	add r2, r2, #1
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label82
	cmp r4, #0
	bgt label16
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label112
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label30
.p2align 4
label26:
	add r7, r7, #1
	cmp r4, r7
	bgt label25
	add r2, r2, #1
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label112
	add r1, r1, #1
	cmp r1, #50
	blt label11
label30:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r5
	bl putarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
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
	bgt label82
	cmp r4, #0
	bgt label16
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label112
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label30
.p2align 4
label162:
	mov r2, #0
.p2align 4
label38:
	add r3, r5, r2, lsl #2
	mov r7, #0
	str r7, [r5, r2, lsl #2]
	str r7, [r3, #4]
	str r7, [r3, #8]
	str r7, [r3, #12]
	add r3, r2, #8
	cmp r4, r3
	add r2, r2, #4
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
	bgt label82
	cmp r4, #0
	bgt label16
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label112
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label30
.p2align 4
label17:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bgt label17
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label112
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label30
