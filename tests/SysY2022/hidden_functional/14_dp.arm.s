.arch armv7ve
.data
.bss
.align 4
t:
	.zero	8040
.align 4
dp:
	.zero	140700
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getint
	mov r1, #140
	mov r5, r0
	movw r0, #:lower16:dp
	movt r0, #:upper16:dp
	mla r2, r5, r1, r0
	mov r4, r0
	str r2, [sp, #0]
	bl getint
	cmp r5, #0
	movw r6, #:lower16:t
	str r0, [sp, #4]
	mov r8, r0
	movt r6, #:upper16:t
	ble label28
	mov r7, #1
	b label2
label28:
	mov r2, #1
	sub r0, r2, #1
	mov r1, #140
	add r3, r6, r2, lsl #3
	cmp r5, r2
	mla r7, r2, r1, r4
	mla r0, r0, r1, r4
	blt label12
	mov r1, #1
	ldr r8, [sp, #4]
	cmp r8, r1
	blt label11
	add r8, r1, #1
	add r10, r0, r1, lsl #2
	ldr r9, [r0, r1, lsl #2]
	and r11, r8, #1
	ldr r11, [r3, r11, lsl #2]
	ldr r10, [r10, #-4]
	add r9, r9, r11
	add r10, r11, r10
	cmp r10, r9
	bge label10
	str r9, [r7, r1, lsl #2]
	mov r1, r8
	ldr r8, [sp, #4]
	cmp r8, r1
	blt label11
	add r8, r1, #1
	add r10, r0, r1, lsl #2
	ldr r9, [r0, r1, lsl #2]
	and r11, r8, #1
	ldr r11, [r3, r11, lsl #2]
	ldr r10, [r10, #-4]
	add r9, r9, r11
	add r10, r11, r10
	cmp r10, r9
	bge label10
	str r9, [r7, r1, lsl #2]
	mov r1, r8
	ldr r8, [sp, #4]
	cmp r8, r1
	blt label11
	add r8, r1, #1
	add r10, r0, r1, lsl #2
	ldr r9, [r0, r1, lsl #2]
	and r11, r8, #1
	ldr r11, [r3, r11, lsl #2]
	ldr r10, [r10, #-4]
	add r9, r9, r11
	add r10, r11, r10
	cmp r10, r9
	bge label10
	str r9, [r7, r1, lsl #2]
	mov r1, r8
	ldr r8, [sp, #4]
	cmp r8, r1
	blt label11
	add r8, r1, #1
	add r10, r0, r1, lsl #2
	ldr r9, [r0, r1, lsl #2]
	and r11, r8, #1
	ldr r11, [r3, r11, lsl #2]
	ldr r10, [r10, #-4]
	add r9, r9, r11
	add r10, r11, r10
	cmp r10, r9
	bge label10
	b label160
label12:
	ldr r8, [sp, #4]
	cmn r8, #1
	ble label86
	mov r0, #0
	mov r1, r0
	ldr r2, [sp, #0]
	ldr r2, [r2, r0, lsl #2]
	add r0, r0, #1
	cmp r1, r2
	movle r1, r2
	cmp r8, r0
	blt label16
	ldr r2, [sp, #0]
	ldr r2, [r2, r0, lsl #2]
	add r0, r0, #1
	cmp r1, r2
	movle r1, r2
	cmp r8, r0
	blt label16
	ldr r2, [sp, #0]
	ldr r2, [r2, r0, lsl #2]
	add r0, r0, #1
	cmp r1, r2
	movle r1, r2
	cmp r8, r0
	blt label16
	ldr r2, [sp, #0]
	ldr r2, [r2, r0, lsl #2]
	add r0, r0, #1
	cmp r1, r2
	movle r1, r2
	cmp r8, r0
	blt label16
	ldr r2, [sp, #0]
	ldr r2, [r2, r0, lsl #2]
	add r0, r0, #1
	cmp r1, r2
	movle r1, r2
	cmp r8, r0
	blt label16
	ldr r2, [sp, #0]
	ldr r2, [r2, r0, lsl #2]
	add r0, r0, #1
	cmp r1, r2
	movle r1, r2
	cmp r8, r0
	blt label16
	ldr r2, [sp, #0]
	ldr r2, [r2, r0, lsl #2]
	add r0, r0, #1
	cmp r1, r2
	movle r1, r2
	cmp r8, r0
	blt label16
	ldr r2, [sp, #0]
	ldr r2, [r2, r0, lsl #2]
	add r0, r0, #1
	cmp r1, r2
	movle r1, r2
	cmp r8, r0
	blt label16
	ldr r2, [sp, #0]
	ldr r2, [r2, r0, lsl #2]
	add r0, r0, #1
	cmp r1, r2
	movle r1, r2
	cmp r8, r0
	blt label16
	b label200
label86:
	mov r1, #0
label16:
	mov r0, r1
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label191:
	str r9, [r7, r1, lsl #2]
	mov r1, r8
	ldr r8, [sp, #4]
	cmp r8, r1
	blt label11
label171:
	add r8, r1, #1
	add r10, r0, r1, lsl #2
	ldr r9, [r0, r1, lsl #2]
	and r11, r8, #1
	ldr r11, [r3, r11, lsl #2]
	ldr r10, [r10, #-4]
	add r9, r9, r11
	add r10, r11, r10
	cmp r10, r9
	bge label10
label182:
	str r9, [r7, r1, lsl #2]
	mov r1, r8
	ldr r8, [sp, #4]
	cmp r8, r1
	blt label11
	b label193
label10:
	str r10, [r7, r1, lsl #2]
	mov r1, r8
	ldr r8, [sp, #4]
	cmp r8, r1
	blt label11
	add r8, r1, #1
	add r10, r0, r1, lsl #2
	ldr r9, [r0, r1, lsl #2]
	and r11, r8, #1
	ldr r11, [r3, r11, lsl #2]
	ldr r10, [r10, #-4]
	add r9, r9, r11
	add r10, r11, r10
	cmp r10, r9
	bge label10
	str r9, [r7, r1, lsl #2]
	mov r1, r8
	ldr r8, [sp, #4]
	cmp r8, r1
	blt label11
	add r8, r1, #1
	add r10, r0, r1, lsl #2
	ldr r9, [r0, r1, lsl #2]
	and r11, r8, #1
	ldr r11, [r3, r11, lsl #2]
	ldr r10, [r10, #-4]
	add r9, r9, r11
	add r10, r11, r10
	cmp r10, r9
	bge label10
	str r9, [r7, r1, lsl #2]
	mov r1, r8
	ldr r8, [sp, #4]
	cmp r8, r1
	blt label11
	add r8, r1, #1
	add r10, r0, r1, lsl #2
	ldr r9, [r0, r1, lsl #2]
	and r11, r8, #1
	ldr r11, [r3, r11, lsl #2]
	ldr r10, [r10, #-4]
	add r9, r9, r11
	add r10, r11, r10
	cmp r10, r9
	bge label10
	str r9, [r7, r1, lsl #2]
	mov r1, r8
	ldr r8, [sp, #4]
	cmp r8, r1
	blt label11
	add r8, r1, #1
	add r10, r0, r1, lsl #2
	ldr r9, [r0, r1, lsl #2]
	and r11, r8, #1
	ldr r11, [r3, r11, lsl #2]
	ldr r10, [r10, #-4]
	add r9, r9, r11
	add r10, r11, r10
	cmp r10, r9
	bge label10
	str r9, [r7, r1, lsl #2]
	mov r1, r8
	ldr r8, [sp, #4]
	cmp r8, r1
	blt label11
	add r8, r1, #1
	add r10, r0, r1, lsl #2
	ldr r9, [r0, r1, lsl #2]
	and r11, r8, #1
	ldr r11, [r3, r11, lsl #2]
	ldr r10, [r10, #-4]
	add r9, r9, r11
	add r10, r11, r10
	cmp r10, r9
	bge label10
	b label182
label193:
	add r8, r1, #1
	add r10, r0, r1, lsl #2
	ldr r9, [r0, r1, lsl #2]
	and r11, r8, #1
	ldr r11, [r3, r11, lsl #2]
	ldr r10, [r10, #-4]
	add r9, r9, r11
	add r10, r11, r10
	cmp r10, r9
	bge label10
	b label182
label2:
	bl getint
	and r1, r0, #1
	mov r2, #1
	add r0, r6, r7, lsl #3
	str r2, [r0, r1, lsl #2]
	mov r2, #140
	mul r1, r7, r2
	mla r2, r7, r2, r4
	add r7, r7, #1
	cmp r5, r7
	ldr r2, [r2, #-140]
	ldr r0, [r0, #4]
	add r0, r2, r0
	str r0, [r4, r1]
	blt label46
	b label2
label46:
	mov r2, #1
	sub r0, r2, #1
	mov r1, #140
	add r3, r6, r2, lsl #3
	cmp r5, r2
	mla r7, r2, r1, r4
	mla r0, r0, r1, r4
	blt label12
	mov r1, #1
	ldr r8, [sp, #4]
	cmp r8, r1
	blt label11
	add r8, r1, #1
	add r10, r0, r1, lsl #2
	ldr r9, [r0, r1, lsl #2]
	and r11, r8, #1
	ldr r11, [r3, r11, lsl #2]
	ldr r10, [r10, #-4]
	add r9, r9, r11
	add r10, r11, r10
	cmp r10, r9
	bge label10
	str r9, [r7, r1, lsl #2]
	mov r1, r8
	ldr r8, [sp, #4]
	cmp r8, r1
	blt label11
	add r8, r1, #1
	add r10, r0, r1, lsl #2
	ldr r9, [r0, r1, lsl #2]
	and r11, r8, #1
	ldr r11, [r3, r11, lsl #2]
	ldr r10, [r10, #-4]
	add r9, r9, r11
	add r10, r11, r10
	cmp r10, r9
	bge label10
	str r9, [r7, r1, lsl #2]
	mov r1, r8
	ldr r8, [sp, #4]
	cmp r8, r1
	blt label11
	add r8, r1, #1
	add r10, r0, r1, lsl #2
	ldr r9, [r0, r1, lsl #2]
	and r11, r8, #1
	ldr r11, [r3, r11, lsl #2]
	ldr r10, [r10, #-4]
	add r9, r9, r11
	add r10, r11, r10
	cmp r10, r9
	bge label10
	str r9, [r7, r1, lsl #2]
	mov r1, r8
	ldr r8, [sp, #4]
	cmp r8, r1
	blt label11
	add r8, r1, #1
	add r10, r0, r1, lsl #2
	ldr r9, [r0, r1, lsl #2]
	and r11, r8, #1
	ldr r11, [r3, r11, lsl #2]
	ldr r10, [r10, #-4]
	add r9, r9, r11
	add r10, r11, r10
	cmp r10, r9
	bge label10
	b label191
label11:
	add r2, r2, #1
	sub r0, r2, #1
	mov r1, #140
	add r3, r6, r2, lsl #3
	cmp r5, r2
	mla r7, r2, r1, r4
	mla r0, r0, r1, r4
	blt label12
	mov r1, #1
	ldr r8, [sp, #4]
	cmp r8, r1
	blt label11
	add r8, r1, #1
	add r10, r0, r1, lsl #2
	ldr r9, [r0, r1, lsl #2]
	and r11, r8, #1
	ldr r11, [r3, r11, lsl #2]
	ldr r10, [r10, #-4]
	add r9, r9, r11
	add r10, r11, r10
	cmp r10, r9
	bge label10
	str r9, [r7, r1, lsl #2]
	mov r1, r8
	ldr r8, [sp, #4]
	cmp r8, r1
	blt label11
	add r8, r1, #1
	add r10, r0, r1, lsl #2
	ldr r9, [r0, r1, lsl #2]
	and r11, r8, #1
	ldr r11, [r3, r11, lsl #2]
	ldr r10, [r10, #-4]
	add r9, r9, r11
	add r10, r11, r10
	cmp r10, r9
	bge label10
	str r9, [r7, r1, lsl #2]
	mov r1, r8
	ldr r8, [sp, #4]
	cmp r8, r1
	blt label11
	add r8, r1, #1
	add r10, r0, r1, lsl #2
	ldr r9, [r0, r1, lsl #2]
	and r11, r8, #1
	ldr r11, [r3, r11, lsl #2]
	ldr r10, [r10, #-4]
	add r9, r9, r11
	add r10, r11, r10
	cmp r10, r9
	bge label10
	str r9, [r7, r1, lsl #2]
	mov r1, r8
	ldr r8, [sp, #4]
	cmp r8, r1
	blt label11
	add r8, r1, #1
	add r10, r0, r1, lsl #2
	ldr r9, [r0, r1, lsl #2]
	and r11, r8, #1
	ldr r11, [r3, r11, lsl #2]
	ldr r10, [r10, #-4]
	add r9, r9, r11
	add r10, r11, r10
	cmp r10, r9
	bge label10
	str r9, [r7, r1, lsl #2]
	mov r1, r8
	ldr r8, [sp, #4]
	cmp r8, r1
	blt label11
	b label171
label160:
	str r9, [r7, r1, lsl #2]
	mov r1, r8
	ldr r8, [sp, #4]
	cmp r8, r1
	blt label11
	b label171
label200:
	ldr r2, [sp, #0]
	ldr r2, [r2, r0, lsl #2]
	ldr r8, [sp, #4]
	add r0, r0, #1
	cmp r1, r2
	movle r1, r2
	cmp r8, r0
	blt label16
label13:
	ldr r2, [sp, #0]
	ldr r2, [r2, r0, lsl #2]
	ldr r8, [sp, #4]
	add r0, r0, #1
	cmp r1, r2
	movle r1, r2
	cmp r8, r0
	blt label16
	b label13
