.arch armv7ve
.data
.bss
.align 8
x:
	.zero	400040
.align 8
y:
	.zero	12000000
.align 8
v:
	.zero	12000000
.align 8
a:
	.zero	400040
.align 8
b:
	.zero	400040
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r1, #:lower16:x
	sub sp, sp, #20
	movt r1, #:upper16:x
	str r1, [sp, #8]
	mov r0, r1
	bl getarray
	movw r7, #:lower16:y
	sub r2, r0, #9
	sub r1, r0, #1
	movt r7, #:upper16:y
	str r1, [sp, #12]
	str r2, [sp, #4]
	str r7, [sp, #0]
	mov r0, r7
	bl getarray
	movw r4, #:lower16:v
	movt r4, #:upper16:v
	mov r0, r4
	bl getarray
	movw r5, #:lower16:a
	movt r5, #:upper16:a
	mov r0, r5
	bl getarray
	mov r0, #39
	bl _sysy_starttime
	mov r0, #0
	movw r6, #:lower16:b
	movt r6, #:upper16:b
.p2align 4
label2:
	ldr r1, [sp, #12]
	cmp r1, #0
	ble label53
	cmp r1, #8
	bgt label57
	b label56
.p2align 4
label269:
	add r0, r0, #1
	cmp r0, #100
	blt label2
label29:
	mov r0, #47
	bl _sysy_stoptime
	ldr r1, [sp, #12]
	mov r0, r1
	mov r1, r6
	bl putarray
	add sp, sp, #20
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label57:
	mov r1, #0
	b label7
.p2align 4
label5:
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r2, r1, #1
	ldr r1, [sp, #12]
	cmp r1, r2
	ble label63
.p2align 4
label64:
	mov r1, r2
	b label5
.p2align 4
label7:
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
	ldr r2, [sp, #4]
	cmp r2, r1
	bgt label7
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r2, r1, #1
	ldr r1, [sp, #12]
	cmp r1, r2
	bgt label64
	cmp r1, r3
	ble label81
.p2align 4
label11:
	add r2, r3, #1
	ldr r1, [sp, #8]
	ldr r8, [r1, r3, lsl #2]
	ldr r1, [r1, r2, lsl #2]
	cmp r8, r1
	bge label110
	mov r9, r8
.p2align 4
label12:
	ldr r7, [sp, #0]
	ldr r7, [r7, r9, lsl #2]
	add r7, r6, r7, lsl #2
	ldr r10, [r7, #0]
	ldr r11, [r4, r9, lsl #2]
	add r9, r9, #1
	cmp r1, r9
	add r10, r10, r11
	str r10, [r7, #0]
	bgt label12
	cmp r8, r1
	bge label110
	ldr r3, [r5, r3, lsl #2]
	sub r3, r3, #1
.p2align 4
label16:
	ldr r7, [sp, #0]
	ldr r7, [r7, r8, lsl #2]
	add r7, r6, r7, lsl #2
	ldr r9, [r7, #0]
	ldr r10, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r1, r8
	mla r9, r3, r10, r9
	str r9, [r7, #0]
	bgt label16
	mov r3, r2
	ldr r1, [sp, #12]
	cmp r1, r2
	bgt label11
	cmp r1, #0
	ble label261
.p2align 4
label30:
	ldr r1, [sp, #12]
	cmp r1, #8
	ble label194
	mov r1, #0
.p2align 4
label31:
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
	ldr r2, [sp, #4]
	cmp r2, r1
	bgt label31
	b label33
.p2align 4
label194:
	mov r1, #0
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r2, r1, #1
	ldr r1, [sp, #12]
	cmp r1, r2
	bgt label216
	b label215
.p2align 4
label33:
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r2, r1, #1
	ldr r1, [sp, #12]
	cmp r1, r2
	ble label215
.p2align 4
label216:
	mov r1, r2
	b label33
label261:
	mov r3, #0
	ldr r1, [sp, #12]
	cmp r1, r3
	ble label137
.p2align 4
label21:
	add r2, r3, #1
	ldr r1, [sp, #8]
	ldr r8, [r1, r3, lsl #2]
	ldr r1, [r1, r2, lsl #2]
	cmp r8, r1
	bge label148
	mov r9, r8
	ldr r7, [sp, #0]
	ldr r7, [r7, r8, lsl #2]
	add r7, r5, r7, lsl #2
	ldr r10, [r7, #0]
	ldr r11, [r4, r8, lsl #2]
	add r9, r8, #1
	cmp r1, r9
	add r10, r10, r11
	str r10, [r7, #0]
	bgt label26
	b label267
.p2align 4
label23:
	ldr r3, [r6, r3, lsl #2]
	sub r3, r3, #1
.p2align 4
label24:
	ldr r7, [sp, #0]
	ldr r7, [r7, r8, lsl #2]
	add r7, r5, r7, lsl #2
	ldr r9, [r7, #0]
	ldr r10, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r1, r8
	mla r9, r3, r10, r9
	str r9, [r7, #0]
	bgt label24
	mov r3, r2
	ldr r1, [sp, #12]
	cmp r1, r2
	bgt label21
	b label269
.p2align 4
label26:
	ldr r7, [sp, #0]
	ldr r7, [r7, r9, lsl #2]
	add r7, r5, r7, lsl #2
	ldr r10, [r7, #0]
	ldr r11, [r4, r9, lsl #2]
	add r9, r9, #1
	cmp r1, r9
	add r10, r10, r11
	str r10, [r7, #0]
	bgt label26
	cmp r8, r1
	blt label23
.p2align 4
label270:
	mov r3, r2
	ldr r1, [sp, #12]
	cmp r1, r2
	bgt label21
	b label137
label53:
	mov r3, #0
	ldr r1, [sp, #12]
	cmp r1, r3
	bgt label11
	b label81
.p2align 4
label148:
	cmp r8, r1
	blt label23
	mov r3, r2
	ldr r1, [sp, #12]
	cmp r1, r2
	bgt label21
	b label137
label81:
	ldr r1, [sp, #12]
	cmp r1, #0
	bgt label30
	b label261
.p2align 4
label110:
	mov r3, r2
	ldr r1, [sp, #12]
	cmp r1, r2
	bgt label11
	b label81
label137:
	add r0, r0, #1
	cmp r0, #100
	blt label2
	b label29
.p2align 4
label215:
	mov r3, #0
	ldr r1, [sp, #12]
	cmp r1, r3
	bgt label21
	b label137
.p2align 4
label267:
	cmp r8, r1
	blt label23
	b label270
.p2align 4
label56:
	mov r1, #0
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r2, r1, #1
	ldr r1, [sp, #12]
	cmp r1, r2
	bgt label64
.p2align 4
label63:
	mov r3, #0
	ldr r1, [sp, #12]
	cmp r1, r3
	bgt label11
	b label81
