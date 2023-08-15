.arch armv7ve
.data
.bss
.align 8
a:
	.zero	40000
.align 8
b:
	.zero	40000
.align 8
res:
	.zero	40000
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[20] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #28
	bl getint
	str r0, [sp, #16]
	bl getint
	sub r7, r0, #3
	str r0, [sp, #12]
	str r7, [sp, #4]
	ldr r0, [sp, #16]
	cmp r0, #0
	ble label2
	movw r4, #:lower16:a
	movt r4, #:upper16:a
	mov r5, #0
	ldr r7, [sp, #12]
	cmp r7, #0
	bgt label62
	b label67
.p2align 4
label66:
	add r6, r6, #4
	mov r7, r0
.p2align 4
label63:
	bl getint
	str r0, [r6, #0]
	add r0, r7, #1
	ldr r7, [sp, #12]
	cmp r7, r0
	bgt label66
	add r5, r5, #1
	ldr r0, [sp, #16]
	cmp r0, r5
	ble label2
.p2align 4
label68:
	add r4, r4, #400
	ldr r7, [sp, #12]
	cmp r7, #0
	ble label67
.p2align 4
label62:
	mov r6, r4
	mov r7, #0
	b label63
label2:
	bl getint
	mov r4, r0
	bl getint
	cmp r4, #0
	str r0, [sp, #8]
	mov r3, r0
	ble label14
	movw r8, #:lower16:b
	movt r8, #:upper16:b
	mov r5, #0
	cmp r0, #0
	bgt label7
	b label12
.p2align 4
label11:
	add r6, r6, #4
	mov r7, r0
.p2align 4
label8:
	bl getint
	str r0, [r6, #0]
	ldr r3, [sp, #8]
	add r0, r7, #1
	cmp r3, r0
	bgt label11
	add r5, r5, #1
	cmp r4, r5
	ble label14
.p2align 4
label13:
	add r8, r8, #400
	ldr r3, [sp, #8]
	cmp r3, #0
	ble label12
.p2align 4
label7:
	mov r6, r8
	mov r7, #0
	b label8
label14:
	ldr r0, [sp, #16]
	cmp r0, #0
	ble label15
	movw r2, #:lower16:res
	movt r2, #:upper16:res
	mov r1, #0
	str r2, [sp, #0]
	movw r4, #:lower16:a
	movt r4, #:upper16:a
	mov r7, #400
	ldr r3, [sp, #8]
	mla r0, r1, r7, r4
	cmp r3, #0
	bgt label20
	b label45
.p2align 4
label245:
	add r1, r1, #1
	ldr r0, [sp, #16]
	cmp r0, r1
	ble label250
.p2align 4
label46:
	ldr r2, [sp, #0]
	movw r4, #:lower16:a
	movt r4, #:upper16:a
	mov r7, #400
	mla r0, r1, r7, r4
	add r2, r2, #400
	str r2, [sp, #0]
	ldr r3, [sp, #8]
	cmp r3, #0
	ble label45
.p2align 4
label20:
	ldr r2, [sp, #0]
	mov r3, #0
	ldr r7, [sp, #12]
	cmp r7, #0
	bgt label24
	add r4, r3, #1
	ldr r3, [sp, #8]
	cmp r3, r4
	bgt label44
	b label176
.p2align 4
label40:
	add r4, r4, #400
.p2align 4
label36:
	ldr r7, [r0, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [r4, r3, lsl #2]
	mla r5, r7, r8, r5
	ldr r7, [sp, #12]
	cmp r7, r6
	bgt label40
	str r5, [r2, #0]
	add r4, r3, #1
	ldr r3, [sp, #8]
	cmp r3, r4
	ble label245
.p2align 4
label44:
	add r2, r2, #4
	mov r3, r4
	ldr r7, [sp, #12]
	cmp r7, #0
	ble label239
.p2align 4
label24:
	ldr r6, [r2, #0]
	ldr r7, [sp, #12]
	cmp r7, #3
	ble label119
	mov r4, r0
	mov r5, #0
	b label26
.p2align 4
label30:
	add r4, r4, #16
.p2align 4
label26:
	mov r7, #400
	movw r8, #:lower16:b
	movt r8, #:upper16:b
	mla r7, r5, r7, r8
	add r5, r5, #4
	ldr r8, [r4, #0]
	add r7, r7, r3, lsl #2
	ldr r9, [r7, #0]
	ldr r10, [r4, #4]
	ldr r11, [r7, #400]
	mul r10, r10, r11
	mla r8, r8, r9, r10
	ldr r9, [r4, #8]
	ldr r10, [r7, #800]
	mla r8, r9, r10, r8
	ldr r9, [r4, #12]
	ldr r7, [r7, #1200]
	mla r7, r9, r7, r8
	add r6, r6, r7
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label30
	mov r9, r5
	ldr r7, [sp, #12]
	mov r5, r6
	cmp r7, r9
	ble label237
.p2align 4
label35:
	mov r7, #400
	movw r8, #:lower16:b
	movt r8, #:upper16:b
	mov r6, r9
	mla r4, r9, r7, r8
	b label36
.p2align 4
label119:
	mov r9, #0
	mov r5, r6
	ldr r7, [sp, #12]
	mov r6, r9
	cmp r7, r9
	bgt label35
	mov r5, r9
	str r9, [r2, #0]
	add r4, r3, #1
	ldr r3, [sp, #8]
	cmp r3, r4
	bgt label44
	b label176
.p2align 4
label237:
	mov r5, r6
	str r6, [r2, #0]
	add r4, r3, #1
	ldr r3, [sp, #8]
	cmp r3, r4
	bgt label44
	add r1, r1, #1
	ldr r0, [sp, #16]
	cmp r0, r1
	bgt label46
label250:
	movw r2, #:lower16:res
	movt r2, #:upper16:res
	mov r5, #0
	mov r4, r2
	ldr r3, [sp, #8]
	cmp r3, #0
	bgt label51
.p2align 4
label56:
	mov r0, #10
	bl putch
	ldr r0, [sp, #16]
	add r5, r5, #1
	cmp r0, r5
	ble label15
	add r4, r4, #400
	ldr r3, [sp, #8]
	cmp r3, #0
	ble label56
.p2align 4
label51:
	mov r6, r4
	mov r7, #0
.p2align 4
label52:
	ldr r0, [r6, #0]
	bl putint
	mov r0, #32
	bl putch
	ldr r3, [sp, #8]
	add r7, r7, #1
	cmp r3, r7
	ble label56
	add r6, r6, #4
	b label52
label15:
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label67:
	add r5, r5, #1
	ldr r0, [sp, #16]
	cmp r0, r5
	bgt label68
	b label2
label12:
	add r5, r5, #1
	cmp r4, r5
	bgt label13
	b label14
label45:
	add r1, r1, #1
	ldr r0, [sp, #16]
	cmp r0, r1
	bgt label46
	b label250
.p2align 4
label239:
	add r4, r3, #1
	ldr r3, [sp, #8]
	cmp r3, r4
	bgt label44
label176:
	add r1, r1, #1
	ldr r0, [sp, #16]
	cmp r0, r1
	bgt label46
	b label250
