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
	mov r8, #0
	sub sp, sp, #140
	add r6, sp, #8
	str r8, [sp, #8]
	add r5, sp, #72
	str r8, [sp, #12]
	str r8, [sp, #16]
	str r8, [sp, #20]
	str r8, [sp, #24]
	str r8, [sp, #28]
	str r8, [sp, #32]
	str r8, [sp, #36]
	str r8, [sp, #40]
	str r8, [sp, #44]
	str r8, [sp, #48]
	str r8, [sp, #52]
	str r8, [sp, #56]
	str r8, [sp, #60]
	str r8, [sp, #64]
	str r8, [sp, #68]
	str r8, [sp, #72]
	str r8, [sp, #76]
	str r8, [sp, #80]
	str r8, [sp, #84]
	str r8, [sp, #88]
	str r8, [sp, #92]
	str r8, [sp, #96]
	str r8, [sp, #100]
	str r8, [sp, #104]
	str r8, [sp, #108]
	str r8, [sp, #112]
	str r8, [sp, #116]
	str r8, [sp, #120]
	str r8, [sp, #124]
	str r8, [sp, #128]
	str r8, [sp, #132]
	bl getint
	str r0, [sp, #0]
	mov r9, r0
	bl getint
	movw r4, #:lower16:e
	movt r4, #:upper16:e
	mov r7, r0
	add r1, r4, #64
	mov r0, #1
	ldr r9, [sp, #0]
	cmp r9, r0
	bge label45
label5:
	cmp r7, #0
	bgt label96
	b label8
.p2align 4
label45:
	add r2, r1, #4
	mov r3, #1
	b label46
.p2align 4
label49:
	add r0, r0, #1
	add r1, r1, #64
	ldr r9, [sp, #0]
	cmp r9, r0
	bge label45
	b label5
.p2align 4
label46:
	movw r8, #65535
	cmp r0, r3
	add r3, r3, #1
	moveq r8, #0
	str r8, [r2, #0]
	ldr r9, [sp, #0]
	cmp r9, r3
	blt label49
	add r2, r2, #4
	b label46
label96:
	mov r8, #1
.p2align 4
label6:
	bl getint
	add r9, r4, r0, lsl #6
	bl getint
	mov r10, r0
	bl getint
	add r8, r8, #1
	str r0, [r9, r10, lsl #2]
	cmp r7, r8
	bge label6
label8:
	add r1, r4, #64
	ldr r9, [sp, #0]
	cmp r9, #0
	sub r0, r9, #1
	ble label9
	add r1, r1, #4
	mov r2, #1
.p2align 4
label41:
	ldr r3, [r1, #0]
	mov r8, #0
	str r3, [r5, r2, lsl #2]
	str r8, [r6, r2, lsl #2]
	ldr r9, [sp, #0]
	add r2, r2, #1
	cmp r9, r2
	blt label9
	add r1, r1, #4
	b label41
label9:
	mov r1, #1
	str r1, [sp, #12]
	cmp r0, r1
	bge label19
label12:
	ldr r9, [sp, #0]
	cmp r9, #0
	ble label18
	add r4, r5, #4
	mov r5, #1
.p2align 4
label14:
	ldr r0, [r4, #0]
	bl putint
	mov r0, #32
	bl putch
	ldr r9, [sp, #0]
	add r5, r5, #1
	cmp r9, r5
	blt label18
	add r4, r4, #4
	b label14
.p2align 4
label19:
	add r7, r5, #4
	add r3, r6, #4
	movw r10, #65535
	mov r8, #0
	mov r2, r8
	mov r8, #1
	ldr r9, [sp, #0]
	cmp r9, r8
	bge label26
	b label135
.p2align 4
label251:
	add r1, r1, #1
	cmp r0, r1
	bge label19
	b label12
.p2align 4
label26:
	ldr r9, [r7, #0]
	cmp r10, r9
	bgt label30
	add r8, r8, #1
	add r7, r7, #4
	ldr r9, [sp, #0]
	add r3, r3, #4
	cmp r9, r8
	bge label26
	b label249
.p2align 4
label30:
	ldr r11, [r3, #0]
	add r7, r7, #4
	add r3, r3, #4
	cmp r11, #0
	moveq r2, r8
	moveq r10, r9
	ldr r9, [sp, #0]
	add r8, r8, #1
	cmp r9, r8
	bge label26
	mov r7, #1
	add r3, r5, #4
	str r7, [r6, r2, lsl #2]
	cmp r9, r7
	bge label35
label154:
	add r1, r1, #1
	cmp r0, r1
	bge label19
	b label12
.p2align 4
label35:
	add r8, r4, r2, lsl #6
	movw r9, #65535
	ldr r8, [r8, r7, lsl #2]
	cmp r8, r9
	blt label37
	add r7, r7, #1
	add r3, r3, #4
	ldr r9, [sp, #0]
	cmp r9, r7
	bge label35
	b label251
.p2align 4
label38:
	str r8, [r3, #0]
	add r7, r7, #1
	ldr r9, [sp, #0]
	add r3, r3, #4
	cmp r9, r7
	bge label35
	add r1, r1, #1
	cmp r0, r1
	bge label19
	b label12
.p2align 4
label37:
	ldr r9, [r3, #0]
	ldr r10, [r5, r2, lsl #2]
	add r8, r8, r10
	cmp r9, r8
	bgt label38
	add r7, r7, #1
	add r3, r3, #4
	ldr r9, [sp, #0]
	cmp r9, r7
	bge label35
	add r1, r1, #1
	cmp r0, r1
	bge label19
	b label12
label18:
	mov r0, #10
	bl putch
	add sp, sp, #140
	mov r8, #0
	mov r0, r8
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label249:
	mov r7, #1
	add r3, r5, #4
	str r7, [r6, r2, lsl #2]
	ldr r9, [sp, #0]
	cmp r9, r7
	bge label35
	b label154
label135:
	mov r7, #1
	add r3, r5, #4
	str r7, [r6, r2, lsl #2]
	ldr r9, [sp, #0]
	cmp r9, r7
	bge label35
	b label154
