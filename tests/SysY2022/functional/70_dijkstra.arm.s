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
	mov r3, #0
	sub sp, sp, #132
	mov r7, sp
	str r3, [sp, #0]
	add r5, sp, #64
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #12]
	str r3, [sp, #16]
	str r3, [sp, #20]
	str r3, [sp, #24]
	str r3, [sp, #28]
	str r3, [sp, #32]
	str r3, [sp, #36]
	str r3, [sp, #40]
	str r3, [sp, #44]
	str r3, [sp, #48]
	str r3, [sp, #52]
	str r3, [sp, #56]
	str r3, [sp, #60]
	str r3, [sp, #64]
	str r3, [sp, #68]
	str r3, [sp, #72]
	str r3, [sp, #76]
	str r3, [sp, #80]
	str r3, [sp, #84]
	str r3, [sp, #88]
	str r3, [sp, #92]
	str r3, [sp, #96]
	str r3, [sp, #100]
	str r3, [sp, #104]
	str r3, [sp, #108]
	str r3, [sp, #112]
	str r3, [sp, #116]
	str r3, [sp, #120]
	str r3, [sp, #124]
	bl getint
	mov r4, r0
	bl getint
	movw r6, #:lower16:e
	movt r6, #:upper16:e
	mov r8, r0
	mov r0, #1
	cmp r4, r0
	blt label8
.p2align 4
label4:
	add r1, r6, r0, lsl #6
	mov r2, #1
.p2align 4
label5:
	movw r3, #65535
	cmp r0, r2
	moveq r3, #0
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bge label5
	add r0, r0, #1
	cmp r4, r0
	bge label4
label8:
	cmp r8, #0
	ble label9
	mov r9, #1
	b label36
label9:
	add r1, r6, #64
	sub r0, r4, #1
	cmp r4, #0
	bgt label100
	b label99
.p2align 4
label36:
	bl getint
	add r10, r6, r0, lsl #6
	bl getint
	mov r11, r0
	bl getint
	add r9, r9, #1
	str r0, [r10, r11, lsl #2]
	cmp r8, r9
	bge label36
	b label9
label99:
	mov r1, #1
	str r1, [sp, #4]
	b label11
label100:
	mov r2, #1
	b label34
label11:
	cmp r0, r1
	bge label105
	b label30
.p2align 4
label34:
	ldr r3, [r1, r2, lsl #2]
	str r3, [r5, r2, lsl #2]
	mov r3, #0
	str r3, [r7, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bge label34
	b label99
.p2align 4
label105:
	movw r8, #65535
	mov r3, #0
	mov r2, r3
	mov r3, #1
	cmp r4, r3
	bge label25
	b label17
.p2align 4
label249:
	add r1, r1, #1
	cmp r0, r1
	bge label105
label30:
	cmp r4, #0
	ble label31
	mov r6, #1
	b label32
label31:
	mov r0, #10
	bl putch
	add sp, sp, #132
	mov r3, #0
	mov r0, r3
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label32:
	ldr r0, [r5, r6, lsl #2]
	bl putint
	mov r0, #32
	bl putch
	add r6, r6, #1
	cmp r4, r6
	bge label32
	b label31
label20:
	add r1, r1, #1
	cmp r0, r1
	bge label105
	b label30
.p2align 4
label25:
	ldr r9, [r5, r3, lsl #2]
	cmp r8, r9
	bgt label29
	add r3, r3, #1
	cmp r4, r3
	bge label25
	b label247
.p2align 4
label29:
	ldr r10, [r7, r3, lsl #2]
	cmp r10, #0
	moveq r2, r3
	moveq r8, r9
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
	blt label22
	add r3, r3, #1
	cmp r4, r3
	bge label21
	b label249
.p2align 4
label22:
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r5, r2, lsl #2]
	add r8, r8, r10
	cmp r9, r8
	bgt label23
	add r3, r3, #1
	cmp r4, r3
	bge label21
	add r1, r1, #1
	cmp r0, r1
	bge label105
	b label30
.p2align 4
label23:
	str r8, [r5, r3, lsl #2]
	add r3, r3, #1
	cmp r4, r3
	bge label21
	add r1, r1, #1
	cmp r0, r1
	bge label105
	b label30
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
