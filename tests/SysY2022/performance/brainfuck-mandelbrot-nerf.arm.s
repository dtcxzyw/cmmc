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
	cmp r0, #62
	mov r1, #0
	movwne r1, #1
	cmp r0, #60
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #43
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #45
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #91
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #93
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #46
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #44
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #35
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r1, #0
	beq label3
label2:
	bl getch
	cmp r0, #62
	mov r1, #0
	movwne r1, #1
	cmp r0, #60
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #43
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #45
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #91
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #93
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #46
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #44
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #35
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r1, #0
	beq label3
	b label2
label358:
	mov r4, #0
	b label5
label3:
	movw r9, #:lower16:program
	movt r9, #:upper16:program
	str r9, [sp, #0]
	movw r8, #:lower16:input
	movt r8, #:upper16:input
	str r8, [sp, #4]
	cmp r0, #35
	beq label111
	b label358
label111:
	mov r8, #0
	str r8, [sp, #8]
	bl getch
	cmp r0, #105
	beq label59
	b label359
label59:
	bl getint
	mov r4, r0
	bl getch
	mov r5, #0
	cmp r4, r5
	ble label13
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label13
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label13
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label13
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label13
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label13
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label13
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label13
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label13
	b label648
label5:
	ldr r9, [sp, #0]
	str r0, [r9, r4, lsl #2]
	bl getch
	cmp r0, #62
	mov r1, #0
	movwne r1, #1
	cmp r0, #60
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #43
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #45
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #91
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #93
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #46
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #44
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #35
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r1, #0
	beq label9
label8:
	bl getch
	cmp r0, #62
	mov r1, #0
	movwne r1, #1
	cmp r0, #60
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #43
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #45
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #91
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #93
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #46
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #44
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #35
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r1, #0
	beq label9
	b label8
label9:
	add r4, r4, #1
	cmp r0, #35
	beq label160
	b label5
label359:
	mov r4, #0
	mov r0, #116
	bl _sysy_starttime
	movw r0, #:lower16:return_a
	movt r0, #:upper16:return_a
	mov r1, #0
	b label15
label160:
	mov r8, r4
	str r4, [sp, #8]
	bl getch
	cmp r0, #105
	beq label59
	b label359
label15:
	add r2, r0, r1, lsl #2
	mov r3, #0
	str r3, [r0, r1, lsl #2]
	str r3, [r2, #4]
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
	add r1, r1, #16
	cmp r1, #512
	bge label17
	b label15
label17:
	movw r1, #:lower16:tape
	movt r1, #:upper16:tape
	mov r5, #0
	mov r6, r5
	mov r2, r5
	mov r3, r5
	mov r7, r5
	ldr r8, [sp, #8]
	cmp r8, r5
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r5, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r5, #1
	add r7, r5, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	b label616
label55:
	mov r0, #118
	bl _sysy_stoptime
	movw r4, #:lower16:output
	movt r4, #:upper16:output
	cmp r5, #0
	ble label58
	mov r6, #0
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label58
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label58
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label58
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label58
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label58
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label58
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label58
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label58
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label58
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label58
label647:
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label58
	b label647
label616:
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	b label610
label29:
	cmp r8, #45
	bne label31
	ldr r8, [r1, r3, lsl #2]
	sub r8, r8, #1
	str r8, [r1, r3, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	b label645
label31:
	cmp r8, #91
	bne label38
	ldr r8, [r1, r3, lsl #2]
	cmp r8, #0
	beq label231
	str r7, [r0, r2, lsl #2]
	add r2, r2, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	b label610
label231:
	mov r8, #1
	cmp r8, #0
	ble label49
	add r7, r7, #1
	ldr r9, [sp, #0]
	ldr r9, [r9, r7, lsl #2]
	sub r10, r8, #1
	cmp r9, #93
	moveq r8, r10
	add r10, r8, #1
	cmp r9, #91
	moveq r8, r10
	cmp r8, #0
	ble label49
label237:
	add r7, r7, #1
	ldr r9, [sp, #0]
	ldr r9, [r9, r7, lsl #2]
	sub r10, r8, #1
	cmp r9, #93
	moveq r8, r10
	add r10, r8, #1
	cmp r9, #91
	moveq r8, r10
	cmp r8, #0
	ble label49
	b label237
label38:
	cmp r8, #93
	bne label39
	ldr r8, [r1, r3, lsl #2]
	cmp r8, #0
	bne label46
	sub r2, r2, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
label610:
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
label645:
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	b label610
label49:
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	b label610
label26:
	cmp r8, #60
	bne label28
	sub r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	b label645
label39:
	cmp r8, #46
	bne label41
	ldr r8, [r1, r3, lsl #2]
	movw r9, #:lower16:output
	movt r9, #:upper16:output
	str r8, [r9, r5, lsl #2]
	add r5, r5, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	b label645
label41:
	cmp r8, #44
	bne label49
	cmp r4, r6
	bgt label43
	mov r8, #0
	str r8, [r1, r3, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	b label610
label43:
	ldr r8, [sp, #4]
	ldr r8, [r8, r6, lsl #2]
	str r8, [r1, r3, lsl #2]
	add r6, r6, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	b label616
label28:
	cmp r8, #43
	bne label29
	ldr r8, [r1, r3, lsl #2]
	add r8, r8, #1
	str r8, [r1, r3, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	b label645
label46:
	sub r7, r2, #1
	ldr r7, [r0, r7, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label55
	b label616
label648:
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label13
	b label648
label58:
	mov r0, #0
	add sp, sp, #16
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label13:
	mov r0, #116
	bl _sysy_starttime
	movw r0, #:lower16:return_a
	movt r0, #:upper16:return_a
	mov r1, #0
	b label15
