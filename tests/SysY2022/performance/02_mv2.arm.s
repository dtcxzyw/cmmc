.arch armv7ve
.data
.align 4
A:
	.zero	16160400
.align 4
B:
	.zero	8040
.align 4
C:
	.zero	8040
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
	bl getint
	mov r5, r0
	movw r6, #:lower16:A
	movt r6, #:upper16:A
	movw r7, #:lower16:B
	movt r7, #:upper16:B
	movw r4, #:lower16:C
	movt r4, #:upper16:C
	mov r8, #0
	cmp r8, r0
	bge label9
	cmp r0, #0
	ble label8
	movw r0, #8040
	mul r0, r8, r0
	add r10, r6, r0
	mov r9, #0
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	b label614
label9:
	cmp r5, #0
	ble label10
	mov r8, #0
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	b label620
label614:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
label566:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
label618:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	b label618
label8:
	add r8, r8, #1
	cmp r8, r5
	bge label9
	cmp r5, #0
	ble label8
	movw r0, #8040
	mul r0, r8, r0
	add r10, r6, r0
	mov r9, #0
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	b label566
label10:
	mov r0, #59
	bl _sysy_starttime
	mov r0, #0
	cmp r5, #0
	ble label86
	mov r1, #0
	add r2, r1, #16
	cmp r2, r5
	bge label46
	b label45
label86:
	mov r1, #0
	movw r2, #8040
	mul r2, r1, r2
	add r2, r6, r2
	add r3, r4, r1, lsl #2
	cmp r1, r5
	bge label15
	mov r8, #0
	cmp r8, r5
	bge label42
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label40
	add r8, r8, #1
	cmp r8, r5
	bge label42
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label40
	add r8, r8, #1
	cmp r8, r5
	bge label42
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label40
	add r8, r8, #1
	cmp r8, r5
	bge label42
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label40
	b label621
label29:
	add r0, r0, #1
	cmp r0, #50
	bge label30
	cmp r5, #0
	ble label86
	mov r1, #0
	add r2, r1, #16
	cmp r2, r5
	bge label46
	b label45
label30:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label46:
	add r2, r1, #16
	cmp r2, r5
	bge label48
	b label53
label15:
	cmp r5, #0
	ble label97
	mov r1, #0
	add r2, r1, #16
	cmp r2, r5
	bge label18
	b label26
label97:
	mov r1, #0
	movw r2, #8040
	mul r2, r1, r2
	add r2, r6, r2
	add r3, r7, r1, lsl #2
	cmp r1, r5
	bge label29
	mov r8, #0
	cmp r8, r5
	bge label36
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	add r8, r8, #1
	cmp r8, r5
	bge label36
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	add r8, r8, #1
	cmp r8, r5
	bge label36
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	add r8, r8, #1
	cmp r8, r5
	bge label36
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
label548:
	add r8, r8, #1
	cmp r8, r5
	bge label36
	b label574
label580:
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label40
	b label606
label40:
	ldr r10, [r3, #0]
	ldr r11, [r7, r8, lsl #2]
	mla r9, r9, r11, r10
	str r9, [r3, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label42
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label40
	add r8, r8, #1
	cmp r8, r5
	bge label42
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label40
	add r8, r8, #1
	cmp r8, r5
	bge label42
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label40
	add r8, r8, #1
	cmp r8, r5
	bge label42
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label40
	add r8, r8, #1
	cmp r8, r5
	bge label42
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label40
	b label606
label637:
	mov r2, #0
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label260
	b label637
label260:
	mov r1, #0
	movw r2, #8040
	mul r2, r1, r2
	add r2, r6, r2
	add r3, r4, r1, lsl #2
	cmp r1, r5
	bge label15
	mov r8, #0
	cmp r8, r5
	bge label42
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label40
	add r8, r8, #1
	cmp r8, r5
	bge label42
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label40
	add r8, r8, #1
	cmp r8, r5
	bge label42
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label40
	add r8, r8, #1
	cmp r8, r5
	bge label42
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label40
	add r8, r8, #1
	cmp r8, r5
	bge label42
	b label580
label574:
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	b label600
label36:
	add r1, r1, #1
	movw r2, #8040
	mul r2, r1, r2
	add r2, r6, r2
	add r3, r7, r1, lsl #2
	cmp r1, r5
	bge label29
	mov r8, #0
	cmp r8, r5
	bge label36
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	add r8, r8, #1
	cmp r8, r5
	bge label36
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	add r8, r8, #1
	cmp r8, r5
	bge label36
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	add r8, r8, #1
	cmp r8, r5
	bge label36
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	add r8, r8, #1
	cmp r8, r5
	bge label36
	b label574
label600:
	add r8, r8, #1
	cmp r8, r5
	bge label36
	b label626
label35:
	ldr r10, [r3, #0]
	ldr r11, [r4, r8, lsl #2]
	mla r9, r9, r11, r10
	str r9, [r3, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label36
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	add r8, r8, #1
	cmp r8, r5
	bge label36
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	add r8, r8, #1
	cmp r8, r5
	bge label36
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	add r8, r8, #1
	cmp r8, r5
	bge label36
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	add r8, r8, #1
	cmp r8, r5
	bge label36
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	b label600
label626:
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	b label600
label606:
	add r8, r8, #1
	cmp r8, r5
	bge label42
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label40
	b label606
label42:
	add r1, r1, #1
	movw r2, #8040
	mul r2, r1, r2
	add r2, r6, r2
	add r3, r4, r1, lsl #2
	cmp r1, r5
	bge label15
	mov r8, #0
	cmp r8, r5
	bge label42
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label40
	add r8, r8, #1
	cmp r8, r5
	bge label42
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label40
	add r8, r8, #1
	cmp r8, r5
	bge label42
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label40
	add r8, r8, #1
	cmp r8, r5
	bge label42
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label40
	add r8, r8, #1
	cmp r8, r5
	bge label42
	b label580
label621:
	add r8, r8, #1
	cmp r8, r5
	bge label42
	b label580
label18:
	add r2, r1, #16
	cmp r2, r5
	bge label21
	b label20
label21:
	add r2, r1, #16
	cmp r2, r5
	bge label23
	b label25
label23:
	mov r2, #0
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label136
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label136
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label136
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label136
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label136
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label136
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label136
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label136
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label136
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label136
	b label623
label136:
	mov r1, #0
	movw r2, #8040
	mul r2, r1, r2
	add r2, r6, r2
	add r3, r7, r1, lsl #2
	cmp r1, r5
	bge label29
	mov r8, #0
	cmp r8, r5
	bge label36
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	add r8, r8, #1
	cmp r8, r5
	bge label36
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	add r8, r8, #1
	cmp r8, r5
	bge label36
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	add r8, r8, #1
	cmp r8, r5
	bge label36
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	b label548
label623:
	mov r2, #0
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label136
	b label623
label48:
	add r2, r1, #16
	cmp r2, r5
	bge label50
	b label52
label50:
	mov r2, #0
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label260
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label260
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label260
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label260
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label260
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label260
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label260
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label260
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label260
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label260
	b label637
label26:
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	str r8, [r3, #16]
	str r8, [r3, #20]
	str r8, [r3, #24]
	str r8, [r3, #28]
	str r8, [r3, #32]
	str r8, [r3, #36]
	str r8, [r3, #40]
	str r8, [r3, #44]
	str r8, [r3, #48]
	str r8, [r3, #52]
	str r8, [r3, #56]
	str r8, [r3, #60]
	mov r1, r2
	add r2, r2, #16
	cmp r2, r5
	bge label18
	b label26
label25:
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	str r8, [r3, #16]
	str r8, [r3, #20]
	str r8, [r3, #24]
	str r8, [r3, #28]
	str r8, [r3, #32]
	str r8, [r3, #36]
	str r8, [r3, #40]
	str r8, [r3, #44]
	str r8, [r3, #48]
	str r8, [r3, #52]
	str r8, [r3, #56]
	str r8, [r3, #60]
	mov r1, r2
	add r2, r2, #16
	cmp r2, r5
	bge label23
	b label25
label20:
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	str r8, [r3, #16]
	str r8, [r3, #20]
	str r8, [r3, #24]
	str r8, [r3, #28]
	str r8, [r3, #32]
	str r8, [r3, #36]
	str r8, [r3, #40]
	str r8, [r3, #44]
	str r8, [r3, #48]
	str r8, [r3, #52]
	str r8, [r3, #56]
	str r8, [r3, #60]
	mov r1, r2
	add r2, r2, #16
	cmp r2, r5
	bge label21
	b label20
label45:
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	str r8, [r3, #16]
	str r8, [r3, #20]
	str r8, [r3, #24]
	str r8, [r3, #28]
	str r8, [r3, #32]
	str r8, [r3, #36]
	str r8, [r3, #40]
	str r8, [r3, #44]
	str r8, [r3, #48]
	str r8, [r3, #52]
	str r8, [r3, #56]
	str r8, [r3, #60]
	mov r1, r2
	add r2, r2, #16
	cmp r2, r5
	bge label46
	b label45
label53:
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	str r8, [r3, #16]
	str r8, [r3, #20]
	str r8, [r3, #24]
	str r8, [r3, #28]
	str r8, [r3, #32]
	str r8, [r3, #36]
	str r8, [r3, #40]
	str r8, [r3, #44]
	str r8, [r3, #48]
	str r8, [r3, #52]
	str r8, [r3, #56]
	str r8, [r3, #60]
	mov r1, r2
	add r2, r2, #16
	cmp r2, r5
	bge label48
	b label53
label52:
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	str r8, [r3, #16]
	str r8, [r3, #20]
	str r8, [r3, #24]
	str r8, [r3, #28]
	str r8, [r3, #32]
	str r8, [r3, #36]
	str r8, [r3, #40]
	str r8, [r3, #44]
	str r8, [r3, #48]
	str r8, [r3, #52]
	str r8, [r3, #56]
	str r8, [r3, #60]
	mov r1, r2
	add r2, r2, #16
	cmp r2, r5
	bge label50
	b label52
label620:
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
label639:
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	b label639
