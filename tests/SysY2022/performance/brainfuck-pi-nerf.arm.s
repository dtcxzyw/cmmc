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
label2:
	bl getch
	subs r2, r0, #35
	mov r1, #1
	movw r3, #3841
	lsl r2, r1, r2
	movt r3, #2560
	and r2, r3, r2
	clz r2, r2
	lsr r2, r2, #5
	orrlt r2, r2, #1
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
	bne label2
	movw r8, #:lower16:program
	cmp r0, #35
	movt r8, #:upper16:program
	str r8, [sp, #0]
	movw r8, #:lower16:input
	movt r8, #:upper16:input
	str r8, [sp, #4]
	bne label84
	mov r8, #0
	str r8, [sp, #8]
	b label4
label84:
	mov r4, #0
	b label55
label4:
	bl getch
	cmp r0, #105
	beq label52
	mov r4, #0
label6:
	mov r0, #116
	bl _sysy_starttime
	mov r3, #0
	movw r0, #:lower16:return_a
	movt r0, #:upper16:return_a
label8:
	add r1, r0, r3, lsl #2
	mov r2, #0
	str r2, [r0, r3, lsl #2]
	add r3, r3, #16
	str r2, [r1, #4]
	cmp r3, #512
	str r2, [r1, #8]
	str r2, [r1, #12]
	str r2, [r1, #16]
	str r2, [r1, #20]
	str r2, [r1, #24]
	str r2, [r1, #28]
	str r2, [r1, #32]
	str r2, [r1, #36]
	str r2, [r1, #40]
	str r2, [r1, #44]
	str r2, [r1, #48]
	str r2, [r1, #52]
	str r2, [r1, #56]
	str r2, [r1, #60]
	blt label8
	movw r1, #:lower16:tape
	mov r5, #0
	movt r1, #:upper16:tape
	mov r2, r5
	mov r3, r5
	mov r6, r5
	mov r7, r5
	b label11
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
	bgt label53
	b label6
label55:
	ldr r8, [sp, #0]
	str r0, [r8, r4, lsl #2]
label58:
	bl getch
	subs r2, r0, #35
	mov r1, #1
	movw r3, #3841
	lsl r2, r1, r2
	movt r3, #2560
	and r2, r3, r2
	clz r2, r2
	lsr r2, r2, #5
	orrlt r2, r2, #1
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
	bne label58
	add r8, r4, #1
	cmp r0, #35
	bne label274
	str r8, [sp, #8]
	b label4
label274:
	mov r4, r8
	b label55
label11:
	ldr r8, [sp, #8]
	cmp r8, r7
	bgt label21
	mov r0, #118
	bl _sysy_stoptime
	cmp r5, #0
	movw r4, #:lower16:output
	movt r4, #:upper16:output
	ble label20
	mov r6, #0
	b label18
label21:
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	beq label45
	cmp r8, #60
	beq label144
	cmp r8, #43
	bne label25
	ldr r8, [r1, r6, lsl #2]
	add r8, r8, #1
	str r8, [r1, r6, lsl #2]
	b label46
label25:
	cmp r8, #45
	beq label26
	cmp r8, #91
	beq label38
	cmp r8, #93
	beq label35
	cmp r8, #46
	beq label34
	cmp r8, #44
	beq label31
	b label46
label34:
	ldr r8, [r1, r6, lsl #2]
	movw r9, #:lower16:output
	movt r9, #:upper16:output
	str r8, [r9, r5, lsl #2]
	add r5, r5, #1
	b label46
label35:
	ldr r8, [r1, r6, lsl #2]
	cmp r8, #0
	beq label37
	b label36
label38:
	ldr r8, [r1, r6, lsl #2]
	cmp r8, #0
	bne label39
	mov r9, #1
label40:
	cmp r9, #0
	ble label46
	add r7, r7, #1
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	sub r10, r8, #93
	sub r8, r8, #91
	clz r10, r10
	clz r8, r8
	lsr r10, r10, #5
	lsr r8, r8, #5
	sub r9, r9, r10
	add r9, r9, r8
	b label40
label45:
	add r6, r6, #1
label46:
	add r7, r7, #1
	b label11
label18:
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	bgt label18
label20:
	mov r0, #0
	add sp, sp, #16
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label31:
	cmp r4, r2
	ble label32
	ldr r8, [sp, #4]
	ldr r8, [r8, r2, lsl #2]
	add r2, r2, #1
	str r8, [r1, r6, lsl #2]
	b label46
label39:
	str r7, [r0, r3, lsl #2]
	add r3, r3, #1
	b label46
label144:
	sub r6, r6, #1
	b label46
label26:
	ldr r8, [r1, r6, lsl #2]
	sub r8, r8, #1
	str r8, [r1, r6, lsl #2]
	b label46
label36:
	sub r7, r3, #1
	ldr r7, [r0, r7, lsl #2]
	b label46
label37:
	sub r3, r3, #1
	b label46
label32:
	mov r8, #0
	str r8, [r1, r6, lsl #2]
	b label46
