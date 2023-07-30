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
	mov r5, #0
	movw r6, #:lower16:A
	sub r3, r0, #4
	mov r4, r0
	movt r6, #:upper16:A
	str r3, [sp, #0]
	sub r3, r0, #20
	str r3, [sp, #4]
	cmp r0, r5
	bgt label4
	cmp r0, #0
	bgt label78
	b label10
.p2align 4
label4:
	cmp r4, #0
	bgt label64
	add r5, r5, #1
	cmp r4, r5
	bgt label4
	cmp r4, #0
	bgt label78
	b label10
.p2align 4
label64:
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
	ble label10
label78:
	movw r5, #:lower16:B
	mov r7, #0
	movt r5, #:upper16:B
	b label49
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
label49:
	bl getint
	str r0, [r5, r7, lsl #2]
	add r7, r7, #1
	cmp r4, r7
	bgt label49
	b label10
.p2align 4
label11:
	cmp r4, #0
	bgt label40
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label91
	cmp r4, #0
	bgt label22
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label166
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label39
.p2align 4
label40:
	cmp r4, #4
	bgt label43
	mov r2, #0
	mov r3, #0
	str r3, [r5, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bgt label41
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label91
	cmp r4, #0
	bgt label22
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label166
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label39
.p2align 4
label41:
	mov r3, #0
	str r3, [r5, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bgt label41
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label91
	cmp r4, #0
	bgt label22
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label166
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label39
.p2align 4
label166:
	mov r7, #0
	cmp r4, r7
	bgt label35
	add r2, r2, #1
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label166
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label39
.p2align 4
label35:
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	beq label36
	add r9, r0, r2, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, r7, lsl #2]
	mla r8, r8, r11, r10
	str r8, [r9, #0]
	add r7, r7, #1
	cmp r4, r7
	bgt label35
	add r2, r2, #1
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label166
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label39
.p2align 4
label36:
	add r7, r7, #1
	cmp r4, r7
	bgt label35
	add r2, r2, #1
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label166
	add r1, r1, #1
	cmp r1, #50
	blt label11
label39:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r5
	bl putarray
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label22:
	cmp r4, #4
	bgt label23
	mov r2, #0
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bgt label28
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label166
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label39
.p2align 4
label91:
	mov r7, #0
	cmp r4, r7
	bgt label18
	add r2, r2, #1
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label91
	cmp r4, #0
	bgt label22
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label166
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label39
.p2align 4
label18:
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	beq label19
	add r9, r5, r2, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r0, r7, lsl #2]
	mla r8, r8, r11, r10
	str r8, [r9, #0]
	add r7, r7, #1
	cmp r4, r7
	bgt label18
	add r2, r2, #1
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label91
	cmp r4, #0
	bgt label22
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label166
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label39
.p2align 4
label19:
	add r7, r7, #1
	cmp r4, r7
	bgt label18
	add r2, r2, #1
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label91
	cmp r4, #0
	bgt label22
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label166
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label39
.p2align 4
label43:
	ldr r3, [sp, #0]
	cmp r3, #16
	bgt label205
	mov r2, #0
	add r3, r5, r2, lsl #2
	mov r7, #0
	add r2, r2, #4
	str r7, [r3, #0]
	str r7, [r3, #4]
	str r7, [r3, #8]
	str r7, [r3, #12]
	ldr r3, [sp, #0]
	cmp r3, r2
	bgt label44
	mov r3, #0
	str r3, [r5, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bgt label41
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label91
	cmp r4, #0
	bgt label22
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label166
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label39
.p2align 4
label205:
	mov r3, #0
	b label46
.p2align 4
label44:
	add r3, r5, r2, lsl #2
	mov r7, #0
	add r2, r2, #4
	str r7, [r3, #0]
	str r7, [r3, #4]
	str r7, [r3, #8]
	str r7, [r3, #12]
	ldr r3, [sp, #0]
	cmp r3, r2
	bgt label44
	mov r3, #0
	str r3, [r5, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bgt label41
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label91
	cmp r4, #0
	bgt label22
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label166
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label39
.p2align 4
label46:
	add r2, r5, r3, lsl #2
	mov r7, #0
	str r7, [r2, #0]
	str r7, [r2, #4]
	str r7, [r2, #8]
	str r7, [r2, #12]
	str r7, [r2, #16]
	str r7, [r2, #20]
	str r7, [r2, #24]
	str r7, [r2, #28]
	str r7, [r2, #32]
	str r7, [r2, #36]
	str r7, [r2, #40]
	str r7, [r2, #44]
	str r7, [r2, #48]
	str r7, [r2, #52]
	str r7, [r2, #56]
	str r7, [r2, #60]
	add r2, r3, #16
	ldr r3, [sp, #4]
	cmp r3, r2
	bgt label237
	add r3, r5, r2, lsl #2
	add r2, r2, #4
	str r7, [r3, #0]
	str r7, [r3, #4]
	str r7, [r3, #8]
	str r7, [r3, #12]
	ldr r3, [sp, #0]
	cmp r3, r2
	bgt label44
	mov r3, #0
	str r3, [r5, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bgt label41
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label91
	cmp r4, #0
	bgt label22
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label166
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label39
.p2align 4
label237:
	mov r3, r2
	b label46
.p2align 4
label28:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bgt label28
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label166
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label39
.p2align 4
label23:
	ldr r3, [sp, #0]
	cmp r3, #16
	bgt label121
	mov r2, #0
	add r3, r0, r2, lsl #2
	mov r7, #0
	add r2, r2, #4
	str r7, [r3, #0]
	str r7, [r3, #4]
	str r7, [r3, #8]
	str r7, [r3, #12]
	ldr r3, [sp, #0]
	cmp r3, r2
	bgt label26
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bgt label28
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label166
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label39
.p2align 4
label121:
	mov r3, #0
.p2align 4
label24:
	add r2, r0, r3, lsl #2
	mov r7, #0
	str r7, [r2, #0]
	str r7, [r2, #4]
	str r7, [r2, #8]
	str r7, [r2, #12]
	str r7, [r2, #16]
	str r7, [r2, #20]
	str r7, [r2, #24]
	str r7, [r2, #28]
	str r7, [r2, #32]
	str r7, [r2, #36]
	str r7, [r2, #40]
	str r7, [r2, #44]
	str r7, [r2, #48]
	str r7, [r2, #52]
	str r7, [r2, #56]
	str r7, [r2, #60]
	add r2, r3, #16
	ldr r3, [sp, #4]
	cmp r3, r2
	bgt label143
	add r3, r0, r2, lsl #2
	add r2, r2, #4
	str r7, [r3, #0]
	str r7, [r3, #4]
	str r7, [r3, #8]
	str r7, [r3, #12]
	ldr r3, [sp, #0]
	cmp r3, r2
	bgt label26
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bgt label28
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label166
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label39
.p2align 4
label143:
	mov r3, r2
	b label24
.p2align 4
label26:
	add r3, r0, r2, lsl #2
	mov r7, #0
	add r2, r2, #4
	str r7, [r3, #0]
	str r7, [r3, #4]
	str r7, [r3, #8]
	str r7, [r3, #12]
	ldr r3, [sp, #0]
	cmp r3, r2
	bgt label26
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bgt label28
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	bgt label166
	add r1, r1, #1
	cmp r1, #50
	blt label11
	b label39
