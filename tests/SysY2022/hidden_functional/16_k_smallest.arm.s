.arch armv7ve
.data
.bss
.align 8
array:
	.zero	4000
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
	mov r5, r0
	bl getint
	cmp r5, #0
	movw r4, #:lower16:array
	movt r4, #:upper16:array
	str r0, [sp, #0]
	mov r2, r0
	ble label60
	mov r6, r4
	mov r7, #0
.p2align 4
label3:
	bl getint
	str r0, [r6, #0]
	add r0, r7, #1
	cmp r5, r0
	ble label60
	add r6, r6, #4
	mov r7, r0
	b label3
label60:
	sub r1, r5, #1
	mov r0, #0
label11:
	cmp r0, r1
	beq label13
	ldr r2, [r4, r1, lsl #2]
	bge label79
	add r3, r0, #4
	sub r6, r1, #4
	cmp r1, r3
	ble label16
	add r3, r4, r0, lsl #2
	mov r5, r0
	mov r7, r0
	ldr r8, [r3, #0]
	cmp r2, r8
	bge label35
	b label22
label110:
	add r8, r5, #3
	ldr r9, [r4, r8, lsl #2]
	cmp r2, r9
	bge label33
	b label215
.p2align 4
label26:
	add r10, r4, r7, lsl #2
	add r7, r7, #1
	ldr r11, [r10, #0]
	str r11, [r4, r8, lsl #2]
	str r9, [r10, #0]
	add r8, r5, #3
	ldr r9, [r4, r8, lsl #2]
	cmp r2, r9
	bge label33
	b label29
.p2align 4
label32:
	add r3, r3, #16
	ldr r8, [r3, #0]
	cmp r2, r8
	bge label35
	add r8, r5, #1
	ldr r9, [r4, r8, lsl #2]
	cmp r2, r9
	bge label34
	b label221
.p2align 4
label33:
	add r10, r4, r7, lsl #2
	add r5, r5, #4
	add r7, r7, #1
	cmp r6, r5
	ldr r11, [r10, #0]
	str r11, [r4, r8, lsl #2]
	str r9, [r10, #0]
	bgt label32
	b label220
.p2align 4
label34:
	add r10, r4, r7, lsl #2
	add r7, r7, #1
	ldr r11, [r10, #0]
	str r11, [r4, r8, lsl #2]
	add r8, r5, #2
	str r9, [r10, #0]
	ldr r9, [r4, r8, lsl #2]
	cmp r2, r9
	bge label26
	b label218
.p2align 4
label35:
	add r9, r4, r7, lsl #2
	add r7, r7, #1
	ldr r10, [r9, #0]
	str r10, [r3, #0]
	str r8, [r9, #0]
	add r8, r5, #1
	ldr r9, [r4, r8, lsl #2]
	cmp r2, r9
	bge label34
	add r8, r5, #2
	ldr r9, [r4, r8, lsl #2]
	cmp r2, r9
	bge label26
	b label110
label29:
	add r5, r5, #4
	cmp r6, r5
	bgt label32
	b label220
label215:
	add r5, r5, #4
	cmp r6, r5
	bgt label32
	b label220
label218:
	add r8, r5, #3
	ldr r9, [r4, r8, lsl #2]
	cmp r2, r9
	bge label33
	b label215
label221:
	add r8, r5, #2
	ldr r9, [r4, r8, lsl #2]
	cmp r2, r9
	bge label26
	b label110
label13:
	mov r0, #0
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label22:
	add r8, r5, #1
	ldr r9, [r4, r8, lsl #2]
	cmp r2, r9
	bge label34
	add r8, r5, #2
	ldr r9, [r4, r8, lsl #2]
	cmp r2, r9
	bge label26
	b label110
label220:
	add r3, r4, r5, lsl #2
label36:
	ldr r6, [r3, #0]
	cmp r2, r6
	bge label43
label40:
	add r5, r5, #1
	cmp r1, r5
	ble label158
	add r3, r3, #4
	b label36
label43:
	add r8, r4, r7, lsl #2
	add r7, r7, #1
	ldr r9, [r8, #0]
	str r9, [r3, #0]
	str r6, [r8, #0]
	b label40
label158:
	mov r5, r7
label44:
	add r2, r4, r5, lsl #2
	add r6, r4, r1, lsl #2
	ldr r3, [r2, #0]
	ldr r7, [r6, #0]
	str r7, [r2, #0]
	str r3, [r6, #0]
	ldr r2, [sp, #0]
	cmp r2, r5
	beq label46
	blt label53
	add r0, r5, #1
	b label11
label46:
	cmp r5, #0
	ble label13
	mov r6, #0
.p2align 4
label48:
	ldr r0, [r4, #0]
	bl putint
	mov r0, #32
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label13
	add r4, r4, #4
	b label48
label16:
	add r3, r4, r0, lsl #2
	mov r7, r0
	mov r5, r0
	b label36
label79:
	mov r5, r0
	b label44
label53:
	sub r1, r5, #1
	b label11
