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
	movw r5, #:lower16:C
	movt r5, #:upper16:C
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	mov r8, #0
	sub r2, r0, #4
	mov r4, r0
	str r2, [sp, #4]
	sub r2, r0, #20
	str r2, [sp, #0]
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r7, r2
	cmp r0, r8
	ble label11
.p2align 4
label5:
	mov r9, r7
	mov r10, #0
.p2align 4
label6:
	bl getint
	str r0, [r9, #0]
	add r0, r10, #1
	cmp r4, r0
	bgt label10
	add r8, r8, #1
	movw r0, #8040
	cmp r4, r8
	add r7, r7, r0
	bgt label5
	b label11
.p2align 4
label10:
	add r9, r9, #4
	mov r10, r0
	b label6
label11:
	cmp r4, #0
	ble label17
	mov r7, r6
	mov r8, #0
.p2align 4
label13:
	bl getint
	str r0, [r7, #0]
	add r0, r8, #1
	cmp r4, r0
	ble label17
	add r7, r7, #4
	mov r8, r0
	b label13
label17:
	mov r0, #59
	bl _sysy_starttime
	mov r0, #0
.p2align 4
label18:
	cmp r4, #0
	ble label20
	cmp r4, #4
	ble label129
	ldr r2, [sp, #4]
	cmp r2, #16
	ble label138
	mov r1, r5
	mov r3, #0
	b label30
label71:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r5
	bl putarray
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label361:
	add r0, r0, #1
	cmp r0, #50
	blt label18
	b label71
.p2align 4
label30:
	mov r2, #0
	add r3, r3, #16
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	str r2, [r1, #16]
	str r2, [r1, #20]
	str r2, [r1, #24]
	str r2, [r1, #28]
	str r2, [r1, #32]
	str r2, [r1, #36]
	str r2, [r1, #40]
	str r2, [r1, #44]
	str r2, [r1, #48]
	str r2, [r1, #52]
	str r2, [r1, #56]
	str r2, [r1, #60]
	ldr r2, [sp, #0]
	cmp r2, r3
	ble label158
	add r1, r1, #64
	b label30
.p2align 4
label22:
	mov r3, #0
	add r2, r2, #1
	str r3, [r1, #0]
	cmp r4, r2
	ble label25
.p2align 4
label26:
	add r1, r1, #4
	b label22
label138:
	mov r1, r5
	mov r3, #0
	mov r2, #0
	add r3, r3, #4
	str r2, [r5, #0]
	str r2, [r5, #4]
	str r2, [r5, #8]
	str r2, [r5, #12]
	ldr r2, [sp, #4]
	cmp r2, r3
	bgt label39
.p2align 4
label169:
	add r1, r5, r3, lsl #2
	add r2, r3, #1
	mov r3, #0
	cmp r4, r2
	str r3, [r1, #0]
	bgt label26
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r5
	cmp r4, r3
	ble label45
.p2align 4
label82:
	cmp r4, #0
	ble label83
	mov r7, r2
	mov r8, #0
	ldr r9, [r2, #0]
	cmp r9, #0
	bne label88
.p2align 4
label89:
	add r8, r8, #1
	cmp r4, r8
	bgt label90
	add r3, r3, #1
	add r1, r1, #4
	movw r7, #8040
	cmp r4, r3
	add r2, r2, r7
	bgt label82
	b label351
.p2align 4
label90:
	add r7, r7, #4
	ldr r9, [r7, #0]
	cmp r9, #0
	beq label89
	ldr r10, [r1, #0]
	ldr r11, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	mla r9, r9, r11, r10
	str r9, [r1, #0]
	bgt label90
	add r3, r3, #1
	add r1, r1, #4
	movw r7, #8040
	cmp r4, r3
	add r2, r2, r7
	bgt label82
	cmp r4, #0
	bgt label46
	b label179
.p2align 4
label88:
	ldr r10, [r1, #0]
	ldr r11, [r6, r8, lsl #2]
	mla r9, r9, r11, r10
	str r9, [r1, #0]
	b label89
label179:
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r6
	mov r3, #0
	b label66
.p2align 4
label46:
	cmp r4, #4
	ble label182
	ldr r2, [sp, #4]
	cmp r2, #16
	ble label191
	mov r1, r6
	mov r3, #0
.p2align 4
label54:
	mov r2, #0
	add r3, r3, #16
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	str r2, [r1, #16]
	str r2, [r1, #20]
	str r2, [r1, #24]
	str r2, [r1, #28]
	str r2, [r1, #32]
	str r2, [r1, #36]
	str r2, [r1, #40]
	str r2, [r1, #44]
	str r2, [r1, #48]
	str r2, [r1, #52]
	str r2, [r1, #56]
	str r2, [r1, #60]
	ldr r2, [sp, #0]
	cmp r2, r3
	ble label211
	add r1, r1, #64
	b label54
label66:
	cmp r4, r3
	bgt label72
	b label70
.p2align 4
label351:
	cmp r4, #0
	bgt label46
	b label179
.p2align 4
label72:
	cmp r4, #0
	ble label237
	mov r7, r2
	mov r8, #0
	ldr r9, [r2, #0]
	cmp r9, #0
	beq label77
	ldr r10, [r1, #0]
	ldr r11, [r5, r8, lsl #2]
	mla r9, r9, r11, r10
	str r9, [r1, #0]
.p2align 4
label77:
	add r8, r8, #1
	cmp r4, r8
	bgt label78
	add r3, r3, #1
	add r1, r1, #4
	movw r7, #8040
	cmp r4, r3
	add r2, r2, r7
	bgt label72
	b label361
.p2align 4
label78:
	add r7, r7, #4
	ldr r9, [r7, #0]
	cmp r9, #0
	beq label77
	ldr r10, [r1, #0]
	ldr r11, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	mla r9, r9, r11, r10
	str r9, [r1, #0]
	bgt label78
	add r3, r3, #1
	add r1, r1, #4
	movw r7, #8040
	cmp r4, r3
	add r2, r2, r7
	bgt label72
	add r0, r0, #1
	cmp r0, #50
	blt label18
	b label71
.p2align 4
label158:
	add r1, r5, r3, lsl #2
	mov r2, #0
	add r3, r3, #4
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	ldr r2, [sp, #4]
	cmp r2, r3
	bgt label39
	b label354
.p2align 4
label36:
	mov r2, #0
	add r3, r3, #4
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	ldr r2, [sp, #4]
	cmp r2, r3
	ble label169
.p2align 4
label39:
	add r1, r1, #16
	b label36
.p2align 4
label211:
	add r1, r6, r3, lsl #2
	mov r2, #0
	add r3, r3, #4
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	ldr r2, [sp, #4]
	cmp r2, r3
	bgt label63
	b label358
.p2align 4
label59:
	mov r2, #0
	add r3, r3, #4
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	ldr r2, [sp, #4]
	cmp r2, r3
	ble label62
.p2align 4
label63:
	add r1, r1, #16
	b label59
.p2align 4
label47:
	mov r3, #0
	add r2, r2, #1
	str r3, [r1, #0]
	cmp r4, r2
	ble label187
.p2align 4
label50:
	add r1, r1, #4
	b label47
.p2align 4
label62:
	add r1, r6, r3, lsl #2
	add r2, r3, #1
	mov r3, #0
	cmp r4, r2
	str r3, [r1, #0]
	bgt label50
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r6
	cmp r4, r3
	bgt label72
	b label70
label45:
	cmp r4, #0
	bgt label46
	b label179
.p2align 4
label83:
	add r3, r3, #1
	add r1, r1, #4
	movw r7, #8040
	cmp r4, r3
	add r2, r2, r7
	bgt label82
	b label45
.p2align 4
label25:
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r5
	mov r3, #0
	cmp r4, r3
	bgt label82
	b label45
.p2align 4
label354:
	add r1, r5, r3, lsl #2
	add r2, r3, #1
	mov r3, #0
	cmp r4, r2
	str r3, [r1, #0]
	bgt label26
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r5
	cmp r4, r3
	bgt label82
	b label45
.p2align 4
label358:
	add r1, r6, r3, lsl #2
	add r2, r3, #1
	mov r3, #0
	cmp r4, r2
	str r3, [r1, #0]
	bgt label50
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r6
	cmp r4, r3
	bgt label72
	b label70
label20:
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r5
	mov r3, #0
	cmp r4, r3
	bgt label82
	b label45
label70:
	add r0, r0, #1
	cmp r0, #50
	blt label18
	b label71
.p2align 4
label237:
	add r3, r3, #1
	add r1, r1, #4
	movw r7, #8040
	cmp r4, r3
	add r2, r2, r7
	bgt label72
	b label70
label191:
	mov r1, r6
	mov r3, #0
	mov r2, #0
	add r3, r3, #4
	str r2, [r6, #0]
	str r2, [r6, #4]
	str r2, [r6, #8]
	str r2, [r6, #12]
	ldr r2, [sp, #4]
	cmp r2, r3
	bgt label63
	b label62
.p2align 4
label187:
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r6
	mov r3, #0
	cmp r4, r3
	bgt label72
	b label70
label129:
	mov r1, r5
	mov r2, #0
	b label22
label182:
	mov r1, r6
	mov r2, #0
	b label47
