.arch armv7ve
.data
.bss
.align 8
e:
	.zero	1024
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #132
	mov r10, #0
	mov r7, sp
	add r5, sp, #64
	str r10, [sp, #0]
	str r10, [sp, #4]
	str r10, [sp, #8]
	str r10, [sp, #12]
	str r10, [sp, #16]
	str r10, [sp, #20]
	str r10, [sp, #24]
	str r10, [sp, #28]
	str r10, [sp, #32]
	str r10, [sp, #36]
	str r10, [sp, #40]
	str r10, [sp, #44]
	str r10, [sp, #48]
	str r10, [sp, #52]
	str r10, [sp, #56]
	str r10, [sp, #60]
	str r10, [sp, #64]
	str r10, [sp, #68]
	str r10, [sp, #72]
	str r10, [sp, #76]
	str r10, [sp, #80]
	str r10, [sp, #84]
	str r10, [sp, #88]
	str r10, [sp, #92]
	str r10, [sp, #96]
	str r10, [sp, #100]
	str r10, [sp, #104]
	str r10, [sp, #108]
	str r10, [sp, #112]
	str r10, [sp, #116]
	str r10, [sp, #120]
	str r10, [sp, #124]
	bl getint
	mov r4, r0
	bl getint
	movw r6, #:lower16:e
	movt r6, #:upper16:e
	mov r8, r0
	mov r0, #1
	cmp r4, r0
	bge label33
label4:
	cmp r8, #0
	bgt label81
	b label7
.p2align 4
label33:
	add r1, r6, r0, lsl #6
	mov r2, #1
.p2align 4
label34:
	movw r3, #65535
	cmp r0, r2
	moveq r3, #0
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bge label34
	add r0, r0, #1
	cmp r4, r0
	bge label33
	b label4
label81:
	mov r9, #1
.p2align 4
label5:
	bl getint
	add r10, r6, r0, lsl #6
	bl getint
	mov r11, r0
	bl getint
	add r9, r9, #1
	str r0, [r10, r11, lsl #2]
	cmp r8, r9
	bge label5
label7:
	add r1, r6, #64
	sub r0, r4, #1
	cmp r4, #0
	bgt label99
label98:
	mov r1, #1
	str r1, [sp, #4]
	b label11
label99:
	mov r2, #1
.p2align 4
label8:
	ldr r3, [r1, r2, lsl #2]
	mov r10, #0
	str r3, [r5, r2, lsl #2]
	str r10, [r7, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bge label8
	b label98
label11:
	cmp r0, r1
	blt label29
.p2align 4
label116:
	movw r8, #65535
	mov r10, #0
	mov r3, #1
	mov r2, r10
	cmp r4, r3
	bge label25
	b label17
.p2align 4
label244:
	add r1, r1, #1
	cmp r0, r1
	bge label116
label29:
	cmp r4, #0
	ble label30
	mov r6, #1
	b label31
label30:
	mov r0, #10
	bl putch
	add sp, sp, #132
	mov r10, #0
	mov r0, r10
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label31:
	ldr r0, [r5, r6, lsl #2]
	bl putint
	mov r0, #32
	bl putch
	add r6, r6, #1
	cmp r4, r6
	bge label31
	b label30
label20:
	add r1, r1, #1
	cmp r0, r1
	bge label116
	b label29
.p2align 4
label25:
	ldr r9, [r5, r3, lsl #2]
	cmp r8, r9
	bgt label28
	mov r10, #0
	cmp r10, #0
	movne r2, r3
	movne r8, r9
	add r3, r3, #1
	cmp r4, r3
	bge label25
	b label247
.p2align 4
label28:
	ldr r10, [r7, r3, lsl #2]
	clz r10, r10
	lsr r10, r10, #5
	cmp r10, #0
	movne r2, r3
	movne r8, r9
	add r3, r3, #1
	cmp r4, r3
	bge label25
	mov r3, #1
	str r3, [r7, r2, lsl #2]
	cmp r4, r3
	blt label20
.p2align 4
label21:
	add r8, r6, r2, lsl #6
	movw r9, #65535
	ldr r8, [r8, r3, lsl #2]
	cmp r8, r9
	blt label23
	add r3, r3, #1
	cmp r4, r3
	bge label21
	b label244
.p2align 4
label23:
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r5, r2, lsl #2]
	add r8, r8, r10
	cmp r9, r8
	ble label147
	str r8, [r5, r3, lsl #2]
	add r3, r3, #1
	cmp r4, r3
	bge label21
	add r1, r1, #1
	cmp r0, r1
	bge label116
	b label29
.p2align 4
label147:
	add r3, r3, #1
	cmp r4, r3
	bge label21
	add r1, r1, #1
	cmp r0, r1
	bge label116
	b label29
label17:
	mov r3, #1
	str r3, [r7, r2, lsl #2]
	cmp r4, r3
	bge label21
	b label20
.p2align 4
label247:
	mov r3, #1
	str r3, [r7, r2, lsl #2]
	cmp r4, r3
	bge label21
	b label20
