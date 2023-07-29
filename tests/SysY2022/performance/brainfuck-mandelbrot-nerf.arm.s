.arch armv7ve
.data
.bss
.align 8
program:
	.zero	262144
.align 8
tape:
	.zero	262144
.align 8
input:
	.zero	262144
.align 8
output:
	.zero	262144
.align 8
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
.p2align 4
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
	movw r8, #:lower16:input
	cmp r0, #35
	movt r8, #:upper16:input
	str r8, [sp, #0]
	bne label4
	mov r8, #0
	str r8, [sp, #4]
	b label10
label4:
	movw r4, #:lower16:program
	mov r5, #0
	movt r4, #:upper16:program
.p2align 4
label5:
	str r0, [r4, r5, lsl #2]
.p2align 4
label8:
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
	bne label8
	add r5, r5, #1
	cmp r0, #35
	bne label5
	mov r8, r5
	str r5, [sp, #4]
label10:
	bl getch
	cmp r0, #105
	beq label57
	mov r8, #0
	str r8, [sp, #8]
label12:
	mov r0, #116
	bl _sysy_starttime
	mov r3, #0
	movw r0, #:lower16:return_a
	movt r0, #:upper16:return_a
	b label14
label57:
	bl getint
	mov r4, r0
	bl getch
	cmp r4, #0
	bgt label316
.p2align 4
label315:
	mov r8, r4
	str r4, [sp, #8]
	b label12
label316:
	mov r5, #0
.p2align 4
label58:
	bl getch
	ldr r8, [sp, #0]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	bgt label58
	b label315
.p2align 4
label14:
	add r1, r0, r3, lsl #2
	mov r2, #0
	str r2, [r0, r3, lsl #2]
	add r3, r3, #64
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
	str r2, [r1, #64]
	str r2, [r1, #68]
	str r2, [r1, #72]
	str r2, [r1, #76]
	str r2, [r1, #80]
	str r2, [r1, #84]
	str r2, [r1, #88]
	str r2, [r1, #92]
	str r2, [r1, #96]
	str r2, [r1, #100]
	str r2, [r1, #104]
	str r2, [r1, #108]
	str r2, [r1, #112]
	str r2, [r1, #116]
	str r2, [r1, #120]
	str r2, [r1, #124]
	str r2, [r1, #128]
	str r2, [r1, #132]
	str r2, [r1, #136]
	str r2, [r1, #140]
	str r2, [r1, #144]
	str r2, [r1, #148]
	str r2, [r1, #152]
	str r2, [r1, #156]
	str r2, [r1, #160]
	str r2, [r1, #164]
	str r2, [r1, #168]
	str r2, [r1, #172]
	str r2, [r1, #176]
	str r2, [r1, #180]
	str r2, [r1, #184]
	str r2, [r1, #188]
	str r2, [r1, #192]
	str r2, [r1, #196]
	str r2, [r1, #200]
	str r2, [r1, #204]
	str r2, [r1, #208]
	str r2, [r1, #212]
	str r2, [r1, #216]
	str r2, [r1, #220]
	str r2, [r1, #224]
	str r2, [r1, #228]
	str r2, [r1, #232]
	str r2, [r1, #236]
	str r2, [r1, #240]
	str r2, [r1, #244]
	str r2, [r1, #248]
	str r2, [r1, #252]
	blt label14
	movw r1, #:lower16:program
	movw r2, #:lower16:tape
	mov r4, #0
	movt r1, #:upper16:program
	movt r2, #:upper16:tape
	mov r3, r4
	mov r5, r4
	mov r6, r4
	mov r7, r4
.p2align 4
label17:
	ldr r8, [sp, #4]
	cmp r8, r7
	ble label23
.p2align 4
label27:
	ldr r8, [r1, r7, lsl #2]
	cmp r8, #62
	beq label56
	cmp r8, #60
	beq label49
	cmp r8, #43
	beq label48
	b label30
.p2align 4
label56:
	add r6, r6, #1
	add r7, r7, #1
	ldr r8, [sp, #4]
	cmp r8, r7
	bgt label27
label23:
	mov r0, #118
	bl _sysy_stoptime
	cmp r4, #0
	movw r5, #:lower16:output
	movt r5, #:upper16:output
	ble label24
	mov r6, #0
	b label25
label24:
	mov r0, #0
	add sp, sp, #16
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label48:
	ldr r8, [r2, r6, lsl #2]
	add r8, r8, #1
	str r8, [r2, r6, lsl #2]
	add r7, r7, #1
	b label17
.p2align 4
label49:
	sub r6, r6, #1
.p2align 4
label50:
	add r7, r7, #1
	ldr r8, [sp, #4]
	cmp r8, r7
	bgt label27
	b label23
label30:
	cmp r8, #45
	beq label47
	cmp r8, #91
	beq label42
	cmp r8, #93
	beq label39
	cmp r8, #46
	bne label35
	ldr r8, [r2, r6, lsl #2]
	movw r9, #:lower16:output
	movt r9, #:upper16:output
	str r8, [r9, r4, lsl #2]
	add r4, r4, #1
	add r7, r7, #1
	b label17
label35:
	cmp r8, #44
	beq label36
	add r7, r7, #1
	b label17
label47:
	ldr r8, [r2, r6, lsl #2]
	sub r8, r8, #1
	str r8, [r2, r6, lsl #2]
	add r7, r7, #1
	b label17
label36:
	ldr r8, [sp, #8]
	cmp r8, r5
	ble label37
	ldr r8, [sp, #0]
	ldr r8, [r8, r5, lsl #2]
	add r5, r5, #1
	str r8, [r2, r6, lsl #2]
	b label50
label37:
	mov r8, #0
	str r8, [r2, r6, lsl #2]
	add r7, r7, #1
	b label17
label42:
	ldr r8, [r2, r6, lsl #2]
	cmp r8, #0
	bne label43
	mov r8, #1
.p2align 4
label44:
	add r7, r7, #1
	ldr r9, [r1, r7, lsl #2]
	sub r10, r9, #93
	sub r9, r9, #91
	clz r10, r10
	clz r9, r9
	lsr r10, r10, #5
	lsr r9, r9, #5
	sub r8, r8, r10
	adds r8, r8, r9
	bgt label44
	add r7, r7, #1
	ldr r8, [sp, #4]
	cmp r8, r7
	bgt label27
	b label23
label43:
	str r7, [r0, r3, lsl #2]
	add r3, r3, #1
	add r7, r7, #1
	b label17
.p2align 4
label25:
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r4, r6
	bgt label25
	b label24
label39:
	ldr r8, [r2, r6, lsl #2]
	cmp r8, #0
	beq label40
	sub r7, r3, #1
	ldr r7, [r0, r7, lsl #2]
	b label50
label40:
	sub r3, r3, #1
	add r7, r7, #1
	b label17
