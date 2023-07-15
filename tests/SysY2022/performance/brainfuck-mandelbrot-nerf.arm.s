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
	subs r2, r0, #35
	movw r3, #3841
	mov r1, #1
	movt r3, #2560
	lsl r2, r1, r2
	and r2, r3, r2
	mov r3, #0
	clz r2, r2
	movwlt r3, #1
	lsr r2, r2, #5
	orr r2, r2, r3
	subs r3, r0, #67
	lsl r1, r1, r3
	and r1, r1, #83886080
	clz r1, r1
	lsr r3, r1, #5
	mov r1, r2
	movge r1, r3
	mov r2, #0
	cmp r0, #93
	movwgt r2, #1
	orrs r1, r1, r2
	beq label2
label61:
	bl getch
	subs r2, r0, #35
	mov r1, #1
	movw r3, #3841
	lsl r2, r1, r2
	movt r3, #2560
	and r2, r3, r2
	mov r3, #0
	clz r2, r2
	movwlt r3, #1
	lsr r2, r2, #5
	orr r2, r2, r3
	subs r3, r0, #67
	lsl r1, r1, r3
	and r1, r1, #83886080
	clz r1, r1
	lsr r3, r1, #5
	mov r1, r2
	movge r1, r3
	mov r2, #0
	cmp r0, #93
	movwgt r2, #1
	orrs r1, r1, r2
	beq label2
	b label61
label2:
	movw r9, #:lower16:program
	movw r8, #:lower16:input
	cmp r0, #35
	movt r9, #:upper16:program
	movt r8, #:upper16:input
	str r9, [sp, #0]
	str r8, [sp, #4]
	beq label86
	b label85
label86:
	mov r8, #0
	str r8, [sp, #8]
label10:
	bl getch
	cmp r0, #105
	beq label58
	mov r4, #0
	b label12
label85:
	mov r4, #0
label4:
	ldr r9, [sp, #0]
	str r0, [r9, r4, lsl #2]
	bl getch
	subs r2, r0, #35
	mov r1, #1
	movw r3, #3841
	lsl r2, r1, r2
	movt r3, #2560
	and r2, r3, r2
	mov r3, #0
	clz r2, r2
	movwlt r3, #1
	lsr r2, r2, #5
	orr r2, r2, r3
	subs r3, r0, #67
	lsl r1, r1, r3
	and r1, r1, #83886080
	clz r1, r1
	lsr r3, r1, #5
	mov r1, r2
	movge r1, r3
	mov r2, #0
	cmp r0, #93
	movwgt r2, #1
	orrs r1, r1, r2
	beq label8
label7:
	bl getch
	mov r1, #1
	movw r3, #3841
	subs r2, r0, #35
	movt r3, #2560
	lsl r2, r1, r2
	and r2, r3, r2
	mov r3, #0
	clz r2, r2
	movwlt r3, #1
	lsr r2, r2, #5
	orr r2, r2, r3
	subs r3, r0, #67
	lsl r1, r1, r3
	and r1, r1, #83886080
	clz r1, r1
	lsr r3, r1, #5
	mov r1, r2
	movge r1, r3
	mov r2, #0
	cmp r0, #93
	movwgt r2, #1
	orrs r1, r1, r2
	beq label8
	b label7
label8:
	add r4, r4, #1
	cmp r0, #35
	beq label129
	b label4
label129:
	mov r8, r4
	str r4, [sp, #8]
	b label10
label12:
	mov r0, #116
	bl _sysy_starttime
	mov r1, #0
	movw r0, #:lower16:return_a
	movt r0, #:upper16:return_a
label14:
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
	bge label16
	b label14
label16:
	movw r1, #:lower16:tape
	mov r5, #0
	movt r1, #:upper16:tape
	mov r7, r5
	mov r3, r5
	mov r2, r5
	mov r6, r5
	ldr r8, [sp, #8]
	cmp r8, r5
	ble label54
	ldr r9, [sp, #0]
	ldr r8, [r9, r5, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r5, #1
	add r7, r5, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	b label577
label54:
	mov r0, #118
	bl _sysy_stoptime
	cmp r5, #0
	movw r4, #:lower16:output
	movt r4, #:upper16:output
	ble label57
	mov r6, #0
	b label55
label577:
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	b label576
label55:
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label57
	b label55
label28:
	cmp r8, #45
	bne label30
	ldr r8, [r1, r3, lsl #2]
	sub r8, r8, #1
	str r8, [r1, r3, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	b label605
label30:
	cmp r8, #91
	bne label31
	ldr r8, [r1, r3, lsl #2]
	cmp r8, #0
	beq label244
	str r7, [r0, r2, lsl #2]
	add r2, r2, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
label576:
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
label605:
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	b label576
label244:
	mov r8, #1
	cmp r8, #0
	ble label48
label46:
	add r7, r7, #1
	ldr r9, [sp, #0]
	sub r10, r8, #1
	ldr r9, [r9, r7, lsl #2]
	cmp r9, #93
	sub r9, r9, #91
	moveq r8, r10
	clz r9, r9
	lsr r9, r9, #5
	adds r8, r8, r9
	ble label48
	b label46
label547:
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	b label576
label48:
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	b label547
label25:
	cmp r8, #60
	bne label27
	sub r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	b label605
label31:
	cmp r8, #93
	bne label32
	ldr r8, [r1, r3, lsl #2]
	cmp r8, #0
	bne label40
	sub r2, r2, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	b label576
label32:
	cmp r8, #46
	bne label33
	ldr r8, [r1, r3, lsl #2]
	movw r9, #:lower16:output
	movt r9, #:upper16:output
	str r8, [r9, r5, lsl #2]
	add r5, r5, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	b label605
label33:
	cmp r8, #44
	bne label48
	cmp r4, r6
	bgt label36
	mov r8, #0
	str r8, [r1, r3, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	b label576
label36:
	ldr r8, [sp, #4]
	ldr r8, [r8, r6, lsl #2]
	add r6, r6, #1
	str r8, [r1, r3, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	b label577
label40:
	sub r7, r2, #1
	ldr r7, [r0, r7, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	b label577
label27:
	cmp r8, #43
	bne label28
	ldr r8, [r1, r3, lsl #2]
	add r8, r8, #1
	str r8, [r1, r3, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label25
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label54
	b label605
label57:
	mov r0, #0
	add sp, sp, #16
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label58:
	bl getint
	mov r4, r0
	bl getch
	cmp r4, #0
	ble label12
	mov r5, #0
label59:
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label12
	b label59
