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
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	sub sp, sp, #16
label2:
.p2align 4
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
	beq label327
	mov r4, #0
	ldr r8, [sp, #0]
	str r0, [r8, r4, lsl #2]
label58:
.p2align 4
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
	beq label331
	mov r4, r8
	ldr r8, [sp, #0]
	str r0, [r8, r4, lsl #2]
	b label58
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
.p2align 4
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
	ldr r8, [sp, #8]
	cmp r8, r5
	bgt label21
	b label17
label52:
	bl getint
	mov r4, r0
	bl getch
	cmp r4, #0
	ble label6
	mov r5, #0
	b label53
label331:
.p2align 4
	str r8, [sp, #8]
	b label4
label17:
	mov r0, #118
	bl _sysy_stoptime
	cmp r5, #0
	movw r4, #:lower16:output
	movt r4, #:upper16:output
	ble label20
	mov r6, #0
label18:
.p2align 4
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	bgt label18
label20:
	mov r0, #0
	add sp, sp, #16
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label11:
.p2align 4
	ldr r8, [sp, #8]
	cmp r8, r7
	ble label17
label21:
.p2align 4
	ldr r8, [sp, #0]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	beq label45
	cmp r8, #60
	beq label44
	cmp r8, #43
	bne label25
	ldr r8, [r1, r6, lsl #2]
	add r8, r8, #1
	str r8, [r1, r6, lsl #2]
	add r7, r7, #1
	b label11
label25:
	cmp r8, #45
	bne label27
	ldr r8, [r1, r6, lsl #2]
	sub r8, r8, #1
	str r8, [r1, r6, lsl #2]
	add r7, r7, #1
	b label11
label27:
	cmp r8, #91
	beq label38
	cmp r8, #93
	beq label35
	cmp r8, #46
	beq label34
	cmp r8, #44
	beq label31
	add r7, r7, #1
	b label11
label34:
	ldr r8, [r1, r6, lsl #2]
	movw r9, #:lower16:output
	movt r9, #:upper16:output
	str r8, [r9, r5, lsl #2]
	add r5, r5, #1
	add r7, r7, #1
	b label11
label44:
.p2align 4
	sub r6, r6, #1
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	bgt label21
	b label17
label45:
.p2align 4
	add r6, r6, #1
label46:
.p2align 4
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	bgt label21
	b label17
label31:
	cmp r4, r2
	ble label32
	ldr r8, [sp, #4]
	ldr r8, [r8, r2, lsl #2]
	add r2, r2, #1
	str r8, [r1, r6, lsl #2]
	b label46
label327:
.p2align 4
	mov r8, #0
	str r8, [sp, #8]
	b label4
label38:
	ldr r8, [r1, r6, lsl #2]
	cmp r8, #0
	bne label39
	mov r9, #1
label40:
.p2align 4
	cmp r9, #0
	bgt label43
	add r7, r7, #1
	ldr r8, [sp, #8]
	cmp r8, r7
	bgt label21
	b label17
label43:
.p2align 4
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
label39:
	str r7, [r0, r3, lsl #2]
	add r3, r3, #1
	add r7, r7, #1
	b label11
label53:
.p2align 4
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	bgt label53
	b label6
label35:
	ldr r8, [r1, r6, lsl #2]
	cmp r8, #0
	beq label37
	sub r7, r3, #1
	ldr r7, [r0, r7, lsl #2]
	b label46
label37:
	sub r3, r3, #1
	add r7, r7, #1
	b label11
label32:
	mov r8, #0
	str r8, [r1, r6, lsl #2]
	add r7, r7, #1
	b label11
