.arch armv7ve
.data
.bss
.align 8
t:
	.zero	8040
.align 8
dp:
	.zero	140700
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getint
	movw r3, #:lower16:dp
	mov r2, #140
	mov r5, r0
	str r3, [sp, #0]
	movt r3, #:upper16:dp
	mla r2, r0, r2, r3
	str r3, [sp, #0]
	str r2, [sp, #8]
	bl getint
	cmp r5, #0
	mov r4, #1
	str r0, [sp, #4]
	mov r8, r0
	movw r6, #:lower16:t
	movt r6, #:upper16:t
	bgt label28
label27:
	mov r7, r4
	b label2
label28:
	mov r7, r4
	b label16
label2:
	sub r0, r7, #1
	mov r2, #140
	ldr r3, [sp, #0]
	add r1, r6, r7, lsl #3
	cmp r5, r7
	mla r0, r0, r2, r3
	mla r2, r7, r2, r3
	bge label39
	b label10
.p2align 4
label16:
	bl getint
	mov r2, #140
	and r1, r0, #1
	add r0, r6, r7, lsl #3
	str r4, [r0, r1, lsl #2]
	ldr r3, [sp, #0]
	mla r1, r7, r2, r3
	add r7, r7, #1
	cmp r5, r7
	ldr r2, [r1, #-140]
	ldr r0, [r0, #4]
	add r0, r2, r0
	str r0, [r1, #0]
	bge label16
	b label27
.p2align 4
label39:
	mov r3, r4
	ldr r8, [sp, #4]
	cmp r8, r4
	blt label42
.p2align 4
label6:
	add r8, r3, #1
	add r10, r0, r3, lsl #2
	and r11, r8, #1
	ldr r9, [r10, #0]
	ldr r11, [r1, r11, lsl #2]
	ldr r10, [r10, #-4]
	add r9, r9, r11
	add r10, r11, r10
	cmp r10, r9
	blt label7
	str r10, [r2, r3, lsl #2]
	mov r3, r8
	ldr r8, [sp, #4]
	cmp r8, r3
	bge label6
	b label123
.p2align 4
label7:
	str r9, [r2, r3, lsl #2]
	mov r3, r8
	ldr r8, [sp, #4]
	cmp r8, r3
	bge label6
	add r7, r7, #1
	sub r0, r7, #1
	mov r2, #140
	ldr r3, [sp, #0]
	add r1, r6, r7, lsl #3
	cmp r5, r7
	mla r0, r0, r2, r3
	mla r2, r7, r2, r3
	bge label39
	b label10
.p2align 4
label123:
	add r7, r7, #1
	sub r0, r7, #1
	mov r2, #140
	ldr r3, [sp, #0]
	add r1, r6, r7, lsl #3
	cmp r5, r7
	mla r0, r0, r2, r3
	mla r2, r7, r2, r3
	bge label39
label10:
	ldr r8, [sp, #4]
	cmn r8, #1
	ble label67
	mov r0, #0
	mov r1, r0
.p2align 4
label11:
	ldr r2, [sp, #8]
	ldr r2, [r2, r0, lsl #2]
	ldr r8, [sp, #4]
	add r0, r0, #1
	cmp r1, r2
	movle r1, r2
	cmp r8, r0
	bge label11
	mov r0, r1
label14:
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label42:
	add r7, r7, #1
	sub r0, r7, #1
	mov r2, #140
	ldr r3, [sp, #0]
	add r1, r6, r7, lsl #3
	cmp r5, r7
	mla r0, r0, r2, r3
	mla r2, r7, r2, r3
	bge label39
	b label10
label67:
	mov r0, #0
	b label14
