.arch armv7ve
.data
.bss
.align 4
a:
	.zero	40000
.align 4
b:
	.zero	40000
.align 4
res:
	.zero	40000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #28
	bl getint
	str r0, [sp, #0]
	bl getint
	mov r5, #0
	movw r7, #:lower16:b
	str r0, [sp, #8]
	mov r4, r0
	movw r1, #:lower16:a
	movt r7, #:upper16:b
	movt r1, #:upper16:a
	str r1, [sp, #12]
	movw r1, #:lower16:res
	str r7, [sp, #16]
	movt r1, #:upper16:res
	str r1, [sp, #4]
	ldr r0, [sp, #0]
	cmp r0, r5
	bgt label4
label8:
	bl getint
	mov r4, r0
	bl getint
	mov r5, #0
	str r0, [sp, #20]
	mov r7, r0
	cmp r4, r5
	bgt label11
	mov r2, #0
	mov r0, #400
	ldr r1, [sp, #4]
	mla r3, r2, r0, r1
	ldr r1, [sp, #12]
	mla r1, r2, r0, r1
	ldr r0, [sp, #0]
	cmp r0, r2
	bgt label92
	mov r4, #0
	cmp r0, r4
	bgt label20
label19:
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label27:
	ldr r4, [sp, #8]
	cmp r4, #0
	bgt label28
	add r0, r0, #1
	ldr r7, [sp, #20]
	cmp r7, r0
	bgt label27
	add r2, r2, #1
	mov r0, #400
	ldr r1, [sp, #4]
	mla r3, r2, r0, r1
	ldr r1, [sp, #12]
	mla r1, r2, r0, r1
	ldr r0, [sp, #0]
	cmp r0, r2
	bgt label92
	mov r4, #0
	cmp r0, r4
	bgt label20
	b label19
.p2align 4
label28:
	ldr r5, [r3, r0, lsl #2]
	ldr r4, [sp, #8]
	cmp r4, #4
	bgt label124
	mov r4, r5
	mov r5, #0
	mov r6, #400
	ldr r7, [sp, #16]
	mla r6, r5, r6, r7
	ldr r7, [r1, r5, lsl #2]
	add r5, r5, #1
	ldr r6, [r6, r0, lsl #2]
	mla r6, r7, r6, r4
	ldr r4, [sp, #8]
	cmp r4, r5
	bgt label179
	str r6, [r3, r0, lsl #2]
	add r0, r0, #1
	ldr r7, [sp, #20]
	cmp r7, r0
	bgt label27
	add r2, r2, #1
	mov r0, #400
	ldr r1, [sp, #4]
	mla r3, r2, r0, r1
	ldr r1, [sp, #12]
	mla r1, r2, r0, r1
	ldr r0, [sp, #0]
	cmp r0, r2
	bgt label92
	mov r4, #0
	cmp r0, r4
	bgt label20
	b label19
.p2align 4
label124:
	mov r4, #0
.p2align 4
label29:
	mov r6, #400
	ldr r7, [sp, #16]
	ldr r8, [r1, r4, lsl #2]
	mla r6, r4, r6, r7
	add r7, r1, r4, lsl #2
	add r11, r6, #400
	ldr r9, [r6, r0, lsl #2]
	ldr r10, [r7, #4]
	ldr r11, [r11, r0, lsl #2]
	mul r10, r10, r11
	mla r8, r8, r9, r10
	ldr r9, [r7, #8]
	add r10, r6, #800
	ldr r10, [r10, r0, lsl #2]
	mla r8, r9, r10, r8
	add r9, r6, #1200
	ldr r6, [r7, #12]
	ldr r7, [r9, r0, lsl #2]
	mla r6, r6, r7, r8
	add r7, r4, #8
	add r5, r5, r6
	add r6, r4, #4
	ldr r4, [sp, #8]
	cmp r4, r7
	bgt label164
	mov r4, r5
	mov r5, r6
	mov r6, #400
	ldr r7, [sp, #16]
	mla r6, r5, r6, r7
	ldr r7, [r1, r5, lsl #2]
	add r5, r5, #1
	ldr r6, [r6, r0, lsl #2]
	mla r6, r7, r6, r4
	ldr r4, [sp, #8]
	cmp r4, r5
	bgt label179
	str r6, [r3, r0, lsl #2]
	add r0, r0, #1
	ldr r7, [sp, #20]
	cmp r7, r0
	bgt label27
	add r2, r2, #1
	mov r0, #400
	ldr r1, [sp, #4]
	mla r3, r2, r0, r1
	ldr r1, [sp, #12]
	mla r1, r2, r0, r1
	ldr r0, [sp, #0]
	cmp r0, r2
	bgt label92
	mov r4, #0
	cmp r0, r4
	bgt label20
	b label19
.p2align 4
label164:
	mov r4, r6
	b label29
.p2align 4
label32:
	mov r6, #400
	ldr r7, [sp, #16]
	mla r6, r5, r6, r7
	ldr r7, [r1, r5, lsl #2]
	add r5, r5, #1
	ldr r6, [r6, r0, lsl #2]
	mla r6, r7, r6, r4
	ldr r4, [sp, #8]
	cmp r4, r5
	bgt label179
	str r6, [r3, r0, lsl #2]
	add r0, r0, #1
	ldr r7, [sp, #20]
	cmp r7, r0
	bgt label27
	add r2, r2, #1
	mov r0, #400
	ldr r1, [sp, #4]
	mla r3, r2, r0, r1
	ldr r1, [sp, #12]
	mla r1, r2, r0, r1
	ldr r0, [sp, #0]
	cmp r0, r2
	bgt label92
	mov r4, #0
	cmp r0, r4
	bgt label20
	b label19
.p2align 4
label179:
	mov r4, r6
	b label32
.p2align 4
label20:
	mov r0, #400
	ldr r1, [sp, #4]
	ldr r7, [sp, #20]
	mla r5, r4, r0, r1
	cmp r7, #0
	ble label23
	mov r6, #0
.p2align 4
label21:
	ldr r0, [r5, r6, lsl #2]
	bl putint
	mov r0, #32
	bl putch
	ldr r7, [sp, #20]
	add r6, r6, #1
	cmp r7, r6
	bgt label21
.p2align 4
label23:
	mov r0, #10
	bl putch
	add r4, r4, #1
	ldr r0, [sp, #0]
	cmp r0, r4
	bgt label20
	b label19
.p2align 4
label4:
	mov r0, #400
	ldr r1, [sp, #12]
	ldr r4, [sp, #8]
	mla r6, r5, r0, r1
	cmp r4, #0
	bgt label54
	add r5, r5, #1
	ldr r0, [sp, #0]
	cmp r0, r5
	bgt label4
	b label8
.p2align 4
label54:
	mov r4, #0
.p2align 4
label5:
	bl getint
	str r0, [r6, r4, lsl #2]
	add r0, r4, #1
	ldr r4, [sp, #8]
	cmp r4, r0
	bgt label62
	add r5, r5, #1
	ldr r0, [sp, #0]
	cmp r0, r5
	bgt label4
	b label8
.p2align 4
label62:
	mov r4, r0
	b label5
.p2align 4
label11:
	mov r0, #400
	ldr r7, [sp, #16]
	mla r6, r5, r0, r7
	ldr r7, [sp, #20]
	cmp r7, #0
	bgt label75
	add r5, r5, #1
	cmp r4, r5
	bgt label11
	mov r2, #0
	ldr r1, [sp, #4]
	mla r3, r2, r0, r1
	ldr r1, [sp, #12]
	mla r1, r2, r0, r1
	ldr r0, [sp, #0]
	cmp r0, r2
	bgt label92
	mov r4, #0
	cmp r0, r4
	bgt label20
	b label19
.p2align 4
label75:
	mov r7, #0
.p2align 4
label12:
	bl getint
	str r0, [r6, r7, lsl #2]
	add r0, r7, #1
	ldr r7, [sp, #20]
	cmp r7, r0
	bgt label83
	add r5, r5, #1
	cmp r4, r5
	bgt label11
	mov r2, #0
	mov r0, #400
	ldr r1, [sp, #4]
	mla r3, r2, r0, r1
	ldr r1, [sp, #12]
	mla r1, r2, r0, r1
	ldr r0, [sp, #0]
	cmp r0, r2
	bgt label92
	mov r4, #0
	cmp r0, r4
	bgt label20
	b label19
.p2align 4
label83:
	mov r7, r0
	b label12
.p2align 4
label92:
	mov r0, #0
	ldr r7, [sp, #20]
	cmp r7, r0
	bgt label27
	add r2, r2, #1
	mov r0, #400
	ldr r1, [sp, #4]
	mla r3, r2, r0, r1
	ldr r1, [sp, #12]
	mla r1, r2, r0, r1
	ldr r0, [sp, #0]
	cmp r0, r2
	bgt label92
	mov r4, #0
	cmp r0, r4
	bgt label20
	b label19
