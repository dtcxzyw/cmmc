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
	sub r2, r0, #35
	mov r1, #1
	movw r4, #3841
	cmp r2, #0
	lsl r3, r1, r2
	movt r4, #2560
	mov r2, #0
	and r3, r4, r3
	movwlt r2, #1
	clz r3, r3
	lsr r3, r3, #5
	orr r2, r3, r2
	subs r3, r0, #67
	lsl r1, r1, r3
	and r1, r1, #83886080
	clz r1, r1
	lsr r4, r1, #5
	mov r1, r2
	movge r1, r4
	mov r2, #0
	cmp r0, #93
	movwgt r2, #1
	orrs r1, r1, r2
	beq label2
label61:
	bl getch
	sub r2, r0, #35
	mov r1, #1
	movw r4, #3841
	cmp r2, #0
	lsl r3, r1, r2
	movt r4, #2560
	mov r2, #0
	and r3, r4, r3
	movwlt r2, #1
	clz r3, r3
	lsr r3, r3, #5
	orr r2, r3, r2
	subs r3, r0, #67
	lsl r1, r1, r3
	and r1, r1, #83886080
	clz r1, r1
	lsr r4, r1, #5
	mov r1, r2
	movge r1, r4
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
	mov r4, #0
	b label55
label86:
	mov r8, #0
	str r8, [sp, #8]
label4:
	bl getch
	cmp r0, #105
	beq label52
	mov r4, #0
label6:
	mov r0, #116
	bl _sysy_starttime
	mov r1, #0
	movw r0, #:lower16:return_a
	movt r0, #:upper16:return_a
label8:
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
	bge label10
	b label8
label10:
	movw r1, #:lower16:tape
	mov r5, #0
	movt r1, #:upper16:tape
	mov r7, r5
	mov r3, r5
	mov r2, r5
	mov r6, r5
	ldr r8, [sp, #8]
	cmp r8, r5
	ble label17
	ldr r9, [sp, #0]
	ldr r8, [r9, r5, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r5, #1
	add r7, r5, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
label570:
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	b label568
label42:
	sub r7, r2, #1
	ldr r7, [r0, r7, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	b label570
label17:
	mov r0, #118
	bl _sysy_stoptime
	cmp r5, #0
	movw r4, #:lower16:output
	movt r4, #:upper16:output
	ble label20
	mov r6, #0
label18:
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label20
	b label18
label55:
	ldr r9, [sp, #0]
	str r0, [r9, r4, lsl #2]
	bl getch
	mov r1, #1
	sub r2, r0, #35
	movw r5, #3841
	cmp r2, #0
	lsl r3, r1, r2
	movt r5, #2560
	mov r2, #0
	and r3, r5, r3
	movwlt r2, #1
	clz r3, r3
	lsr r3, r3, #5
	orr r2, r3, r2
	subs r3, r0, #67
	lsl r1, r1, r3
	and r1, r1, #83886080
	clz r1, r1
	lsr r5, r1, #5
	mov r1, r2
	movge r1, r5
	mov r2, #0
	cmp r0, #93
	movwgt r2, #1
	orrs r1, r1, r2
	beq label59
	b label58
label294:
	mov r8, r4
	str r4, [sp, #8]
	b label4
label58:
	bl getch
	sub r2, r0, #35
	mov r1, #1
	movw r5, #3841
	cmp r2, #0
	lsl r3, r1, r2
	movt r5, #2560
	mov r2, #0
	and r3, r5, r3
	movwlt r2, #1
	clz r3, r3
	lsr r3, r3, #5
	orr r2, r3, r2
	subs r3, r0, #67
	lsl r1, r1, r3
	and r1, r1, #83886080
	clz r1, r1
	lsr r5, r1, #5
	mov r1, r2
	movge r1, r5
	mov r2, #0
	cmp r0, #93
	movwgt r2, #1
	orrs r1, r1, r2
	beq label59
	b label58
label59:
	add r4, r4, #1
	cmp r0, #35
	beq label294
	b label55
label22:
	cmp r8, #60
	bne label23
	sub r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	b label596
label173:
	mov r8, #1
	cmp r8, #0
	ble label45
label32:
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
	ble label45
	b label32
label35:
	cmp r8, #46
	bne label36
	ldr r8, [r1, r3, lsl #2]
	movw r9, #:lower16:output
	movt r9, #:upper16:output
	str r8, [r9, r5, lsl #2]
	add r5, r5, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	b label596
label36:
	cmp r8, #44
	bne label45
	cmp r4, r6
	bgt label39
	mov r8, #0
	str r8, [r1, r3, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	b label568
label596:
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	b label568
label540:
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	b label568
label45:
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	b label540
label39:
	ldr r8, [sp, #4]
	ldr r8, [r8, r6, lsl #2]
	add r6, r6, #1
	str r8, [r1, r3, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	b label570
label23:
	cmp r8, #43
	bne label25
	ldr r8, [r1, r3, lsl #2]
	add r8, r8, #1
	str r8, [r1, r3, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	b label596
label25:
	cmp r8, #45
	bne label27
	ldr r8, [r1, r3, lsl #2]
	sub r8, r8, #1
	str r8, [r1, r3, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	b label596
label27:
	cmp r8, #91
	bne label34
	ldr r8, [r1, r3, lsl #2]
	cmp r8, #0
	beq label173
	str r7, [r0, r2, lsl #2]
	add r2, r2, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	b label568
label34:
	cmp r8, #93
	bne label35
	ldr r8, [r1, r3, lsl #2]
	cmp r8, #0
	bne label42
	sub r2, r2, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label22
label568:
	add r3, r3, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
	b label596
label52:
	bl getint
	mov r4, r0
	bl getch
	cmp r4, #0
	ble label6
	mov r5, #0
label53:
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label6
	b label53
label20:
	mov r0, #0
	add sp, sp, #16
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
