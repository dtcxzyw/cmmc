.arch armv7ve
.data
.bss
.align 4
program:
	.zero	262144
.align 4
tape:
	.zero	262144
.align 4
input:
	.zero	262144
.align 4
output:
	.zero	262144
.align 4
return_a:
	.zero	2048
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	sub sp, sp, #16
	bl getch
	mov r1, #0
	mov r2, #0
	cmp r0, #62
	movwne r1, #1
	cmp r0, #60
	movwne r2, #1
	cmp r0, #43
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #45
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #91
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #93
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #46
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #44
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #35
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	ands r1, r1, r2
	beq label3
	b label2
label361:
	mov r4, #0
	b label56
label3:
	movw r9, #:lower16:program
	movw r8, #:lower16:input
	cmp r0, #35
	movt r9, #:upper16:program
	movt r8, #:upper16:input
	str r9, [sp, #0]
	str r8, [sp, #4]
	beq label110
	b label361
label56:
	ldr r9, [sp, #0]
	str r0, [r9, r4, lsl #2]
	bl getch
	cmp r0, #62
	mov r2, #0
	mov r1, #0
	movwne r1, #1
	cmp r0, #60
	movwne r2, #1
	cmp r0, #43
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #45
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #91
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #93
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #46
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #44
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #35
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	ands r1, r1, r2
	beq label59
label61:
	bl getch
	cmp r0, #62
	mov r1, #0
	mov r2, #0
	movwne r1, #1
	cmp r0, #60
	movwne r2, #1
	cmp r0, #43
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #45
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #91
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #93
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #46
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #44
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #35
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	ands r1, r1, r2
	beq label59
	b label61
label114:
	mov r4, #0
	mov r0, #116
	bl _sysy_starttime
	mov r1, #0
	movw r0, #:lower16:return_a
	movt r0, #:upper16:return_a
	b label12
label59:
	add r4, r4, #1
	cmp r0, #35
	beq label303
	b label56
label303:
	mov r8, r4
	str r4, [sp, #8]
	bl getch
	cmp r0, #105
	beq label7
	b label114
label2:
	bl getch
	mov r1, #0
	mov r2, #0
	cmp r0, #62
	movwne r1, #1
	cmp r0, #60
	movwne r2, #1
	cmp r0, #43
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #45
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #91
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #93
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #46
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #44
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #35
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	ands r1, r1, r2
	beq label3
	b label2
label12:
	add r2, r0, r1, lsl #2
	mov r3, #0
	str r3, [r0, r1, lsl #2]
	add r1, r1, #16
	str r3, [r2, #4]
	cmp r1, #512
	str r3, [r2, #8]
	str r3, [r2, #12]
	str r3, [r2, #16]
	str r3, [r2, #20]
	str r3, [r2, #24]
	str r3, [r2, #28]
	str r3, [r2, #32]
	str r3, [r2, #36]
	str r3, [r2, #40]
	str r3, [r2, #44]
	str r3, [r2, #48]
	str r3, [r2, #52]
	str r3, [r2, #56]
	str r3, [r2, #60]
	bge label14
	b label12
label14:
	movw r1, #:lower16:tape
	mov r5, #0
	movt r1, #:upper16:tape
	mov r7, r5
	mov r3, r5
	mov r2, r5
	mov r6, r5
	ldr r8, [sp, #8]
	cmp r8, r5
	ble label52
	ldr r9, [sp, #0]
	ldr r8, [r9, r5, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r5, #1
	add r7, r5, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	b label606
label52:
	mov r0, #118
	bl _sysy_stoptime
	cmp r5, #0
	movw r4, #:lower16:output
	movt r4, #:upper16:output
	ble label53
	mov r6, #0
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label53
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label53
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label53
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label53
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label53
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label53
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label53
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label53
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label53
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label53
label636:
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label53
	b label636
label606:
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	b label600
label22:
	cmp r8, #60
	bne label24
	sub r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	b label633
label24:
	cmp r8, #43
	bne label25
	ldr r8, [r1, r3, lsl #2]
	add r8, r8, #1
	str r8, [r1, r3, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	b label633
label34:
	cmp r8, #46
	bne label35
	ldr r8, [r1, r3, lsl #2]
	movw r9, #:lower16:output
	movt r9, #:upper16:output
	str r8, [r9, r5, lsl #2]
	add r5, r5, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	b label633
label35:
	cmp r8, #44
	bne label45
	cmp r4, r2
	bgt label38
	mov r8, #0
	str r8, [r1, r3, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
label600:
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	b label633
label25:
	cmp r8, #45
	bne label26
	ldr r8, [r1, r3, lsl #2]
	sub r8, r8, #1
	str r8, [r1, r3, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	b label633
label26:
	cmp r8, #91
	bne label33
	ldr r8, [r1, r3, lsl #2]
	cmp r8, #0
	beq label190
	str r7, [r0, r6, lsl #2]
	add r6, r6, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	b label600
label33:
	cmp r8, #93
	bne label34
	ldr r8, [r1, r3, lsl #2]
	cmp r8, #0
	bne label42
	sub r6, r6, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	b label600
label633:
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	b label600
label42:
	sub r7, r6, #1
	ldr r7, [r0, r7, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	b label606
label567:
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	b label600
label45:
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	b label567
label190:
	mov r8, #1
	cmp r8, #0
	ble label45
label193:
	add r7, r7, #1
	ldr r9, [sp, #0]
	sub r10, r8, #1
	ldr r9, [r9, r7, lsl #2]
	cmp r9, #93
	moveq r8, r10
	cmp r9, #91
	add r10, r8, #1
	moveq r8, r10
	cmp r8, #0
	ble label45
	b label193
label38:
	ldr r8, [sp, #4]
	ldr r8, [r8, r2, lsl #2]
	add r2, r2, #1
	str r8, [r1, r3, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label52
	b label606
label7:
	bl getint
	mov r4, r0
	bl getch
	cmp r4, #0
	ble label121
	mov r5, #0
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label121
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label121
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label121
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label121
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label121
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label121
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label121
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label121
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label121
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label121
label605:
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label121
	b label605
label53:
	mov r0, #0
	add sp, sp, #16
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label121:
	mov r0, #116
	bl _sysy_starttime
	mov r1, #0
	movw r0, #:lower16:return_a
	movt r0, #:upper16:return_a
	b label12
label110:
	mov r8, #0
	str r8, [sp, #8]
	bl getch
	cmp r0, #105
	beq label7
	b label114
