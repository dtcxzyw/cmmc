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
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r0, #0
	sub sp, sp, #132
	mov r5, sp
	add r7, sp, #64
	str r0, [sp, #64]
	str r0, [sp, #68]
	str r0, [sp, #72]
	str r0, [sp, #76]
	str r0, [sp, #80]
	str r0, [sp, #84]
	str r0, [sp, #88]
	str r0, [sp, #92]
	str r0, [sp, #96]
	str r0, [sp, #100]
	str r0, [sp, #104]
	str r0, [sp, #108]
	str r0, [sp, #112]
	str r0, [sp, #116]
	str r0, [sp, #120]
	str r0, [sp, #124]
	str r0, [sp, #0]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #12]
	str r0, [sp, #16]
	str r0, [sp, #20]
	str r0, [sp, #24]
	str r0, [sp, #28]
	str r0, [sp, #32]
	str r0, [sp, #36]
	str r0, [sp, #40]
	str r0, [sp, #44]
	str r0, [sp, #48]
	str r0, [sp, #52]
	str r0, [sp, #56]
	str r0, [sp, #60]
	bl getint
	mov r4, r0
	bl getint
	movw r6, #:lower16:e
	mov r8, r0
	movt r6, #:upper16:e
	mov r0, #1
	cmp r4, r0
	bge label77
	cmp r8, #0
	bgt label81
	add r1, r6, #64
	sub r0, r4, #1
	cmp r4, #0
	bgt label99
	mov r1, #1
	str r1, [sp, #68]
	cmp r0, r1
	bge label116
	cmp r4, #0
	bgt label167
	b label30
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
	add r1, r6, #64
	sub r0, r4, #1
	cmp r4, #0
	bgt label99
	mov r1, #1
	str r1, [sp, #68]
	cmp r0, r1
	bge label116
	cmp r4, #0
	ble label30
label167:
	mov r6, #1
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
label116:
	movw r8, #65535
	mov r2, #0
	mov r3, #1
	cmp r4, r3
	bge label25
	str r3, [r7, r2, lsl #2]
	add r1, r1, #1
	cmp r0, r1
	bge label116
	cmp r4, #0
	bgt label167
	b label30
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
	mov r3, #1
	str r3, [r7, r2, lsl #2]
	cmp r4, r3
	bge label21
	add r1, r1, #1
	cmp r0, r1
	bge label116
	cmp r4, #0
	bgt label167
	b label30
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
	bge label21
	add r1, r1, #1
	cmp r0, r1
	bge label116
	cmp r4, #0
	bgt label167
	b label30
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
	add r1, r1, #1
	cmp r0, r1
	bge label116
	cmp r4, #0
	bgt label167
	b label30
.p2align 4
label23:
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r5, r2, lsl #2]
	add r8, r8, r10
	cmp r9, r8
	bgt label24
	add r3, r3, #1
	cmp r4, r3
	bge label21
	add r1, r1, #1
	cmp r0, r1
	bge label116
	cmp r4, #0
	bgt label167
	b label30
.p2align 4
label24:
	str r8, [r5, r3, lsl #2]
	add r3, r3, #1
	cmp r4, r3
	bge label21
	add r1, r1, #1
	cmp r0, r1
	bge label116
	cmp r4, #0
	bgt label167
	b label30
label77:
	add r1, r6, r0, lsl #6
	mov r2, #1
.p2align 4
label34:
	mov r3, #0
	movw r9, #65535
	cmp r0, r2
	moveq r9, r3
	str r9, [r1, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bge label34
	add r0, r0, #1
	cmp r4, r0
	bge label77
	cmp r8, #0
	bgt label81
	add r1, r6, #64
	sub r0, r4, #1
	cmp r4, #0
	bgt label99
	mov r1, #1
	str r1, [sp, #68]
	cmp r0, r1
	bge label116
	cmp r4, #0
	bgt label167
	b label30
label99:
	mov r2, #1
.p2align 4
label8:
	ldr r3, [r1, r2, lsl #2]
	str r3, [r5, r2, lsl #2]
	mov r3, #0
	str r3, [r7, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bge label8
	mov r1, #1
	str r1, [sp, #68]
	cmp r0, r1
	bge label116
	cmp r4, #0
	bgt label167
label30:
	mov r0, #10
	bl putch
	add sp, sp, #132
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
