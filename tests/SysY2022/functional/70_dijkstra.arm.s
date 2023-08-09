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
	@ stack usage: CalleeArg[0] Local[128] RegSpill[0] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r9, #0
	sub sp, sp, #132
	str r9, [sp, #0]
	mov r6, sp
	add r5, sp, #64
	str r9, [sp, #4]
	str r9, [sp, #8]
	str r9, [sp, #12]
	str r9, [sp, #16]
	str r9, [sp, #20]
	str r9, [sp, #24]
	str r9, [sp, #28]
	str r9, [sp, #32]
	str r9, [sp, #36]
	str r9, [sp, #40]
	str r9, [sp, #44]
	str r9, [sp, #48]
	str r9, [sp, #52]
	str r9, [sp, #56]
	str r9, [sp, #60]
	str r9, [sp, #64]
	str r9, [sp, #68]
	str r9, [sp, #72]
	str r9, [sp, #76]
	str r9, [sp, #80]
	str r9, [sp, #84]
	str r9, [sp, #88]
	str r9, [sp, #92]
	str r9, [sp, #96]
	str r9, [sp, #100]
	str r9, [sp, #104]
	str r9, [sp, #108]
	str r9, [sp, #112]
	str r9, [sp, #116]
	str r9, [sp, #120]
	str r9, [sp, #124]
	bl getint
	mov r4, r0
	bl getint
	movw r7, #:lower16:e
	movt r7, #:upper16:e
	mov r8, r0
	add r1, r7, #64
	mov r0, #1
	cmp r4, r0
	bge label5
	b label11
.p2align 4
label103:
	add r0, r0, #1
	add r1, r1, #64
	cmp r4, r0
	blt label11
.p2align 4
label5:
	add r2, r1, #4
	mov r3, #1
.p2align 4
label6:
	movw r9, #65535
	cmp r0, r3
	add r3, r3, #1
	moveq r9, #0
	cmp r4, r3
	str r9, [r2, #0]
	blt label103
	add r2, r2, #4
	b label6
label11:
	cmp r8, #0
	ble label12
	mov r9, #1
.p2align 4
label51:
	bl getint
	add r10, r7, r0, lsl #6
	bl getint
	mov r11, r0
	bl getint
	add r9, r9, #1
	str r0, [r10, r11, lsl #2]
	cmp r8, r9
	bge label51
label12:
	add r1, r7, #64
	sub r0, r4, #1
	cmp r4, #0
	ble label13
	add r1, r1, #4
	mov r2, #1
	b label47
.p2align 4
label50:
	add r1, r1, #4
.p2align 4
label47:
	ldr r3, [r1, #0]
	mov r9, #0
	str r3, [r5, r2, lsl #2]
	str r9, [r6, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bge label50
label13:
	mov r1, #1
	str r1, [sp, #4]
	cmp r0, r1
	bge label16
	b label39
.p2align 4
label274:
	add r1, r1, #1
	cmp r0, r1
	blt label39
.p2align 4
label16:
	cmp r4, #0
	ble label124
	add r2, r5, #4
	mov r3, #1
	mov r9, #0
	movw r8, #65535
	ldr r10, [r2, #0]
	cmp r8, r10
	ble label34
.p2align 4
label38:
	ldr r11, [r6, r3, lsl #2]
	cmp r11, #0
	moveq r9, r3
	moveq r8, r10
	add r3, r3, #1
	cmp r4, r3
	blt label270
.p2align 4
label37:
	add r2, r2, #4
	ldr r10, [r2, #0]
	cmp r8, r10
	bgt label38
	add r3, r3, #1
	cmp r4, r3
	bge label37
	mov r2, r9
	mov r3, #1
	cmp r4, #0
	str r3, [r6, r9, lsl #2]
	add r3, r7, r9, lsl #6
	bgt label20
	b label19
.p2align 4
label270:
	mov r2, r9
	mov r3, #1
	cmp r4, #0
	str r3, [r6, r9, lsl #2]
	add r3, r7, r9, lsl #6
	ble label19
.p2align 4
label20:
	add r3, r3, #4
	mov r8, #1
	ldr r9, [r3, #0]
	movw r10, #65535
	cmp r9, r10
	blt label24
	add r8, r8, #1
	cmp r4, r8
	bge label27
	add r1, r1, #1
	cmp r0, r1
	bge label16
	b label39
.p2align 4
label267:
	add r8, r8, #1
	cmp r4, r8
	blt label274
.p2align 4
label27:
	add r3, r3, #4
	movw r10, #65535
	ldr r9, [r3, #0]
	cmp r9, r10
	bge label267
.p2align 4
label24:
	ldr r10, [r5, r8, lsl #2]
	ldr r11, [r5, r2, lsl #2]
	add r9, r9, r11
	cmp r10, r9
	bgt label25
	add r8, r8, #1
	cmp r4, r8
	bge label27
	add r1, r1, #1
	cmp r0, r1
	bge label16
	b label39
.p2align 4
label25:
	str r9, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	bge label27
	add r1, r1, #1
	cmp r0, r1
	bge label16
label39:
	cmp r4, #0
	ble label45
	add r5, r5, #4
	mov r6, #1
.p2align 4
label41:
	ldr r0, [r5, #0]
	bl putint
	mov r0, #32
	bl putch
	add r6, r6, #1
	cmp r4, r6
	blt label45
	add r5, r5, #4
	b label41
.p2align 4
label34:
	add r3, r3, #1
	cmp r4, r3
	bge label37
	mov r2, r9
	mov r3, #1
	cmp r4, #0
	str r3, [r6, r9, lsl #2]
	add r3, r7, r9, lsl #6
	bgt label20
	b label19
label124:
	mov r9, #0
	mov r2, r9
	mov r3, #1
	cmp r4, #0
	str r3, [r6, r9, lsl #2]
	add r3, r7, r9, lsl #6
	bgt label20
	b label19
label45:
	mov r0, #10
	bl putch
	add sp, sp, #132
	mov r9, #0
	mov r0, r9
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label19:
	add r1, r1, #1
	cmp r0, r1
	bge label16
	b label39
