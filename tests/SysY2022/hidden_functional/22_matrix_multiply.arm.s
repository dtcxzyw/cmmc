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
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #28
	bl getint
	str r0, [sp, #0]
	bl getint
	mov r4, #0
	movw r1, #:lower16:a
	str r0, [sp, #8]
	mov r6, r0
	movw r7, #:lower16:b
	movt r1, #:upper16:a
	movt r7, #:upper16:b
	str r1, [sp, #12]
	movw r1, #:lower16:res
	str r7, [sp, #16]
	movt r1, #:upper16:res
	str r1, [sp, #4]
	ldr r0, [sp, #0]
	cmp r0, r4
	ble label8
label4:
	mov r0, #400
	ldr r1, [sp, #12]
	ldr r6, [sp, #8]
	mla r5, r4, r0, r1
	cmp r6, #0
	bgt label54
	add r4, r4, #1
	ldr r0, [sp, #0]
	cmp r0, r4
	bgt label4
	b label8
label54:
	mov r6, #0
label5:
	bl getint
	str r0, [r5, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #8]
	cmp r6, r0
	bgt label62
	add r4, r4, #1
	ldr r0, [sp, #0]
	cmp r0, r4
	bgt label4
	b label8
label62:
	mov r6, r0
	b label5
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
	bgt label34
	b label33
label92:
	mov r0, #0
	ldr r7, [sp, #20]
	cmp r7, r0
	bgt label19
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
	bgt label34
	b label33
label19:
	ldr r6, [sp, #8]
	cmp r6, #0
	bgt label21
	add r0, r0, #1
	ldr r7, [sp, #20]
	cmp r7, r0
	bgt label19
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
	bgt label34
	b label33
label21:
	ldr r5, [r3, r0, lsl #2]
	mov r8, #0
label22:
	add r4, r8, #4
	ldr r6, [sp, #8]
	cmp r6, r4
	bgt label25
	mov r4, #400
	ldr r7, [sp, #16]
	mla r6, r8, r4, r7
	ldr r4, [r1, r8, lsl #2]
	add r8, r8, #1
	ldr r6, [r6, r0, lsl #2]
	mla r5, r4, r6, r5
	ldr r6, [sp, #8]
	cmp r6, r8
	bgt label26
	str r5, [r3, r0, lsl #2]
	add r0, r0, #1
	ldr r7, [sp, #20]
	cmp r7, r0
	bgt label19
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
	bgt label34
	b label33
label25:
	mov r6, #400
	ldr r7, [sp, #16]
	mla r6, r8, r6, r7
	add r7, r1, r8, lsl #2
	ldr r8, [r1, r8, lsl #2]
	add r11, r6, #400
	ldr r9, [r6, r0, lsl #2]
	ldr r10, [r7, #4]
	ldr r11, [r11, r0, lsl #2]
	mla r5, r8, r9, r5
	ldr r8, [r7, #8]
	add r9, r6, #800
	mla r5, r10, r11, r5
	add r6, r6, #1200
	ldr r9, [r9, r0, lsl #2]
	ldr r7, [r7, #12]
	ldr r6, [r6, r0, lsl #2]
	mla r5, r8, r9, r5
	mov r8, r4
	mla r5, r7, r6, r5
	b label22
label26:
	mov r4, #400
	ldr r7, [sp, #16]
	mla r6, r8, r4, r7
	ldr r4, [r1, r8, lsl #2]
	add r8, r8, #1
	ldr r6, [r6, r0, lsl #2]
	mla r5, r4, r6, r5
	ldr r6, [sp, #8]
	cmp r6, r8
	bgt label26
	str r5, [r3, r0, lsl #2]
	add r0, r0, #1
	ldr r7, [sp, #20]
	cmp r7, r0
	bgt label19
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
	bgt label34
	b label33
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
	bgt label34
	b label33
label75:
	mov r7, #0
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
	bgt label34
	b label33
label83:
	mov r7, r0
	b label12
label34:
	mov r0, #400
	ldr r1, [sp, #4]
	ldr r7, [sp, #20]
	mla r5, r4, r0, r1
	cmp r7, #0
	ble label37
	mov r6, #0
label35:
	ldr r0, [r5, r6, lsl #2]
	bl putint
	mov r0, #32
	bl putch
	ldr r7, [sp, #20]
	add r6, r6, #1
	cmp r7, r6
	bgt label35
label37:
	mov r0, #10
	bl putch
	add r4, r4, #1
	ldr r0, [sp, #0]
	cmp r0, r4
	bgt label34
label33:
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
