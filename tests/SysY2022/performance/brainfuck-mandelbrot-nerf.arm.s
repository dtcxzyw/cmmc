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
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
label2:
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
	beq label3
	b label2
label3:
	movw r8, #:lower16:program
	cmp r0, #35
	movt r8, #:upper16:program
	str r8, [sp, #0]
	movw r8, #:lower16:input
	movt r8, #:upper16:input
	str r8, [sp, #4]
	beq label84
	mov r4, #0
	ldr r8, [sp, #0]
	str r0, [r8, r4, lsl #2]
	b label58
label84:
	mov r8, #0
	str r8, [sp, #8]
	b label4
label58:
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
	beq label59
	b label58
label4:
	bl getch
	cmp r0, #105
	beq label6
	mov r4, #0
	b label9
label6:
	bl getint
	mov r4, r0
	bl getch
	cmp r4, #0
	ble label9
	mov r5, #0
label7:
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label9
	b label7
label55:
	ldr r8, [sp, #0]
	str r0, [r8, r4, lsl #2]
	b label58
label59:
	add r4, r4, #1
	cmp r0, #35
	beq label274
	b label55
label274:
	mov r8, r4
	str r4, [sp, #8]
	b label4
label9:
	mov r0, #116
	bl _sysy_starttime
	mov r1, #0
	movw r0, #:lower16:return_a
	movt r0, #:upper16:return_a
label11:
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
	bge label13
	b label11
label13:
	movw r1, #:lower16:tape
	mov r5, #0
	movt r1, #:upper16:tape
	mov r7, r5
	mov r3, r5
	mov r2, r5
	mov r6, r5
	ldr r8, [sp, #8]
	cmp r8, r5
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r5, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r5, #1
	add r7, r5, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
label517:
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	b label516
label26:
	cmp r8, #60
	bne label27
	sub r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
label544:
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	b label516
label31:
	cmp r8, #91
	bne label32
	ldr r8, [r1, r3, lsl #2]
	cmp r8, #0
	beq label230
	str r7, [r0, r6, lsl #2]
	add r6, r6, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
label516:
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	b label544
label32:
	cmp r8, #93
	bne label33
	ldr r8, [r1, r3, lsl #2]
	cmp r8, #0
	bne label40
	sub r6, r6, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	b label516
label488:
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	b label516
label230:
	mov r9, #1
	cmp r9, #0
	ble label49
label46:
	add r7, r7, #1
	ldr r8, [sp, #0]
	sub r11, r9, #1
	ldr r10, [r8, r7, lsl #2]
	mov r8, r9
	cmp r10, #93
	moveq r8, r11
	sub r9, r10, #91
	clz r9, r9
	lsr r9, r9, #5
	adds r9, r8, r9
	ble label49
	b label46
label49:
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	b label488
label40:
	sub r7, r6, #1
	ldr r7, [r0, r7, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	b label517
label33:
	cmp r8, #46
	bne label34
	ldr r8, [r1, r3, lsl #2]
	movw r9, #:lower16:output
	movt r9, #:upper16:output
	str r8, [r9, r5, lsl #2]
	add r5, r5, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	b label544
label34:
	cmp r8, #44
	bne label49
	cmp r4, r2
	bgt label37
	mov r8, #0
	str r8, [r1, r3, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	b label516
label37:
	ldr r8, [sp, #4]
	ldr r8, [r8, r2, lsl #2]
	add r2, r2, #1
	str r8, [r1, r3, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	b label517
label27:
	cmp r8, #43
	bne label29
	ldr r8, [r1, r3, lsl #2]
	add r8, r8, #1
	str r8, [r1, r3, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	b label544
label29:
	cmp r8, #45
	bne label31
	ldr r8, [r1, r3, lsl #2]
	sub r8, r8, #1
	str r8, [r1, r3, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	bne label26
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label20
	b label544
label20:
	mov r0, #118
	bl _sysy_stoptime
	cmp r5, #0
	movw r4, #:lower16:output
	movt r4, #:upper16:output
	ble label23
	mov r6, #0
label21:
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label23
	b label21
label23:
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
