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
	movw r7, #:lower16:A
	sub r2, r0, #4
	mov r4, r0
	movt r7, #:upper16:A
	str r2, [sp, #0]
	sub r2, r0, #20
	str r2, [sp, #4]
	cmp r0, r5
	bgt label4
	movw r5, #:lower16:B
	cmp r0, #0
	movt r5, #:upper16:B
	bgt label79
	b label10
.p2align 4
label4:
	cmp r4, #0
	bgt label5
	add r5, r5, #1
	cmp r4, r5
	bgt label4
	movw r5, #:lower16:B
	cmp r4, #0
	movt r5, #:upper16:B
	bgt label79
	b label10
.p2align 4
label6:
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	bgt label6
	add r5, r5, #1
	cmp r4, r5
	bgt label4
	movw r5, #:lower16:B
	cmp r4, #0
	movt r5, #:upper16:B
	ble label10
label79:
	mov r6, #0
	b label48
label10:
	mov r0, #59
	bl _sysy_starttime
	mov r0, #0
	movw r6, #:lower16:C
	movt r6, #:upper16:C
.p2align 4
label11:
	cmp r4, #0
	bgt label40
	mov r1, #0
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	bgt label90
	cmp r4, #0
	bgt label22
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	bgt label165
	add r0, r0, #1
	cmp r0, #50
	blt label11
	b label39
.p2align 4
label23:
	ldr r2, [sp, #0]
	cmp r2, #16
	bgt label120
	mov r1, #0
	add r2, r5, r1, lsl #2
	mov r3, #0
	add r1, r1, #4
	str r3, [r2, #0]
	str r3, [r2, #4]
	str r3, [r2, #8]
	str r3, [r2, #12]
	ldr r2, [sp, #0]
	cmp r2, r1
	bgt label26
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	bgt label28
	mov r1, #0
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	bgt label165
	add r0, r0, #1
	cmp r0, #50
	blt label11
	b label39
.p2align 4
label120:
	mov r2, #0
.p2align 4
label24:
	add r1, r5, r2, lsl #2
	mov r3, #0
	str r3, [r1, #0]
	str r3, [r1, #4]
	str r3, [r1, #8]
	str r3, [r1, #12]
	str r3, [r1, #16]
	str r3, [r1, #20]
	str r3, [r1, #24]
	str r3, [r1, #28]
	str r3, [r1, #32]
	str r3, [r1, #36]
	str r3, [r1, #40]
	str r3, [r1, #44]
	str r3, [r1, #48]
	str r3, [r1, #52]
	str r3, [r1, #56]
	str r3, [r1, #60]
	add r1, r2, #16
	ldr r2, [sp, #4]
	cmp r2, r1
	bgt label142
	add r2, r5, r1, lsl #2
	add r1, r1, #4
	str r3, [r2, #0]
	str r3, [r2, #4]
	str r3, [r2, #8]
	str r3, [r2, #12]
	ldr r2, [sp, #0]
	cmp r2, r1
	bgt label26
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	bgt label28
	mov r1, #0
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	bgt label165
	add r0, r0, #1
	cmp r0, #50
	blt label11
	b label39
.p2align 4
label142:
	mov r2, r1
	b label24
.p2align 4
label26:
	add r2, r5, r1, lsl #2
	mov r3, #0
	add r1, r1, #4
	str r3, [r2, #0]
	str r3, [r2, #4]
	str r3, [r2, #8]
	str r3, [r2, #12]
	ldr r2, [sp, #0]
	cmp r2, r1
	bgt label26
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	bgt label28
	mov r1, #0
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	bgt label165
	add r0, r0, #1
	cmp r0, #50
	blt label11
	b label39
.p2align 4
label40:
	cmp r4, #4
	bgt label43
	mov r1, #0
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	bgt label41
	mov r1, #0
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	bgt label90
	cmp r4, #0
	bgt label22
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	bgt label165
	add r0, r0, #1
	cmp r0, #50
	blt label11
	b label39
.p2align 4
label165:
	mov r3, #0
	cmp r4, r3
	bgt label34
	add r1, r1, #1
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	bgt label165
	add r0, r0, #1
	cmp r0, #50
	blt label11
	b label39
.p2align 4
label34:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	beq label35
	add r9, r5, r1, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r6, r3, lsl #2]
	mla r8, r8, r11, r10
	str r8, [r9, #0]
	add r3, r3, #1
	cmp r4, r3
	bgt label34
	add r1, r1, #1
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	bgt label165
	add r0, r0, #1
	cmp r0, #50
	blt label11
	b label39
.p2align 4
label35:
	add r3, r3, #1
	cmp r4, r3
	bgt label34
	add r1, r1, #1
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	bgt label165
	add r0, r0, #1
	cmp r0, #50
	blt label11
	b label39
.p2align 4
label90:
	mov r3, #0
	cmp r4, r3
	bgt label18
	add r1, r1, #1
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	bgt label90
	cmp r4, #0
	bgt label22
	mov r1, #0
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	bgt label165
	add r0, r0, #1
	cmp r0, #50
	blt label11
	b label39
.p2align 4
label18:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	beq label19
	add r9, r6, r1, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, r3, lsl #2]
	mla r8, r8, r11, r10
	str r8, [r9, #0]
	add r3, r3, #1
	cmp r4, r3
	bgt label18
	add r1, r1, #1
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	bgt label90
	cmp r4, #0
	bgt label22
	mov r1, #0
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	bgt label165
	add r0, r0, #1
	cmp r0, #50
	blt label11
	b label39
.p2align 4
label19:
	add r3, r3, #1
	cmp r4, r3
	bgt label18
	add r1, r1, #1
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	bgt label90
	cmp r4, #0
	bgt label22
	mov r1, #0
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	bgt label165
	add r0, r0, #1
	cmp r0, #50
	blt label11
	b label39
.p2align 4
label22:
	cmp r4, #4
	bgt label23
	mov r1, #0
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	bgt label28
	mov r1, #0
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	bgt label165
	add r0, r0, #1
	cmp r0, #50
	blt label11
	b label39
.p2align 4
label41:
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	bgt label41
	mov r1, #0
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	bgt label90
	cmp r4, #0
	bgt label22
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	bgt label165
	add r0, r0, #1
	cmp r0, #50
	blt label11
	b label39
.p2align 4
label43:
	ldr r2, [sp, #0]
	cmp r2, #16
	bgt label204
	mov r1, #0
	add r2, r6, r1, lsl #2
	mov r3, #0
	add r1, r1, #4
	str r3, [r2, #0]
	str r3, [r2, #4]
	str r3, [r2, #8]
	str r3, [r2, #12]
	ldr r2, [sp, #0]
	cmp r2, r1
	bgt label44
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	bgt label41
	mov r1, #0
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	bgt label90
	cmp r4, #0
	bgt label22
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	bgt label165
	add r0, r0, #1
	cmp r0, #50
	blt label11
	b label39
.p2align 4
label204:
	mov r2, #0
	b label46
.p2align 4
label44:
	add r2, r6, r1, lsl #2
	mov r3, #0
	add r1, r1, #4
	str r3, [r2, #0]
	str r3, [r2, #4]
	str r3, [r2, #8]
	str r3, [r2, #12]
	ldr r2, [sp, #0]
	cmp r2, r1
	bgt label44
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	bgt label41
	mov r1, #0
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	bgt label90
	cmp r4, #0
	bgt label22
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	bgt label165
	add r0, r0, #1
	cmp r0, #50
	blt label11
	b label39
.p2align 4
label46:
	add r1, r6, r2, lsl #2
	mov r3, #0
	str r3, [r1, #0]
	str r3, [r1, #4]
	str r3, [r1, #8]
	str r3, [r1, #12]
	str r3, [r1, #16]
	str r3, [r1, #20]
	str r3, [r1, #24]
	str r3, [r1, #28]
	str r3, [r1, #32]
	str r3, [r1, #36]
	str r3, [r1, #40]
	str r3, [r1, #44]
	str r3, [r1, #48]
	str r3, [r1, #52]
	str r3, [r1, #56]
	str r3, [r1, #60]
	add r1, r2, #16
	ldr r2, [sp, #4]
	cmp r2, r1
	bgt label236
	add r2, r6, r1, lsl #2
	add r1, r1, #4
	str r3, [r2, #0]
	str r3, [r2, #4]
	str r3, [r2, #8]
	str r3, [r2, #12]
	ldr r2, [sp, #0]
	cmp r2, r1
	bgt label44
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	bgt label41
	mov r1, #0
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	bgt label90
	cmp r4, #0
	bgt label22
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	bgt label165
	add r0, r0, #1
	cmp r0, #50
	blt label11
	b label39
.p2align 4
label236:
	mov r2, r1
	b label46
.p2align 4
label28:
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	bgt label28
	mov r1, #0
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	bgt label165
	add r0, r0, #1
	cmp r0, #50
	blt label11
label39:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r6
	bl putarray
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label5:
	movw r0, #8040
	mov r8, #0
	mla r6, r5, r0, r7
	b label6
.p2align 4
label48:
	bl getint
	str r0, [r5, r6, lsl #2]
	add r6, r6, #1
	cmp r4, r6
	bgt label48
	b label10
