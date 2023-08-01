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
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	movw r4, #3841
	movt r4, #2560
	sub sp, sp, #8
.p2align 4
label2:
	bl getch
	subs r1, r0, #35
	mov r2, #1
	sub r3, r0, #67
	lsl r1, r2, r1
	lsl r2, r2, r3
	and r1, r4, r1
	and r2, r2, #83886080
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrlt r1, r1, #1
	cmn r3, #1
	movgt r1, r2
	mov r2, #0
	cmp r0, #93
	movwgt r2, #1
	orrs r1, r1, r2
	bne label2
	cmp r0, #35
	beq label81
	mov r2, #0
	mov r5, r2
.p2align 4
label4:
	movw r9, #:lower16:program
	movt r9, #:upper16:program
	str r0, [r9, r5, lsl #2]
.p2align 4
label7:
	bl getch
	subs r1, r0, #35
	mov r2, #1
	sub r3, r0, #67
	lsl r1, r2, r1
	lsl r2, r2, r3
	and r1, r4, r1
	and r2, r2, #83886080
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrlt r1, r1, #1
	cmn r3, #1
	movgt r1, r2
	mov r2, #0
	cmp r0, #93
	movwgt r2, #1
	orrs r1, r1, r2
	bne label7
	add r5, r5, #1
	cmp r0, #35
	bne label4
	mov r2, r5
	str r5, [sp, #0]
label9:
	bl getch
	cmp r0, #105
	bne label112
	bl getint
	mov r4, r0
	bl getch
	cmp r4, #0
	ble label11
	mov r2, #0
	mov r5, r2
.p2align 4
label56:
	bl getch
	movw r2, #:lower16:input
	movt r2, #:upper16:input
	str r0, [r2, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	bgt label56
	b label11
label112:
	mov r2, #0
	mov r4, r2
label11:
	mov r0, #116
	bl _sysy_starttime
	mov r2, #0
	movw r0, #:lower16:return_a
	movt r0, #:upper16:return_a
	mov r3, r2
.p2align 4
label13:
	add r1, r0, r3, lsl #2
	mov r2, #0
	add r3, r3, #64
	str r2, [r1, #0]
	cmp r3, #512
	str r2, [r1, #4]
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
	blt label13
	movw r1, #:lower16:tape
	movt r1, #:upper16:tape
	mov r8, r2
	mov r7, r2
	mov r6, r2
	mov r3, r2
	mov r5, r2
.p2align 4
label16:
	ldr r2, [sp, #0]
	cmp r2, r8
	bgt label22
	b label51
label28:
	ldr r2, [r1, r7, lsl #2]
	cmp r2, #0
	beq label220
	str r8, [r0, r6, lsl #2]
	add r6, r6, #1
	add r8, r8, #1
	b label16
.p2align 4
label22:
	movw r9, #:lower16:program
	movt r9, #:upper16:program
	ldr r2, [r9, r8, lsl #2]
	cmp r2, #62
	beq label50
	b label23
.p2align 4
label24:
	sub r7, r7, #1
	add r8, r8, #1
	ldr r2, [sp, #0]
	cmp r2, r8
	bgt label22
	b label51
.p2align 4
label50:
	add r7, r7, #1
	add r8, r8, #1
	ldr r2, [sp, #0]
	cmp r2, r8
	bgt label22
label51:
	movw r4, #:lower16:output
	movt r4, #:upper16:output
	mov r0, #118
	bl _sysy_stoptime
	cmp r5, #0
	ble label54
	mov r2, #0
	mov r6, r2
.p2align 4
label52:
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	bgt label52
label54:
	mov r2, #0
	add sp, sp, #8
	mov r0, r2
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
.p2align 4
label23:
	cmp r2, #60
	beq label24
	cmp r2, #43
	bne label442
	add r2, r1, r7, lsl #2
	ldr r9, [r2, #0]
	add r9, r9, #1
	str r9, [r2, #0]
.p2align 4
label44:
	add r8, r8, #1
	ldr r2, [sp, #0]
	cmp r2, r8
	bgt label22
	b label51
.p2align 4
label442:
	cmp r2, #45
	beq label42
	cmp r2, #91
	beq label28
	cmp r2, #93
	bne label36
	ldr r9, [r1, r7, lsl #2]
	sub r2, r6, #1
	cmp r9, #0
	beq label250
	ldr r8, [r0, r2, lsl #2]
	b label44
label220:
	mov r2, #1
	mov r10, r2
	mov r2, r8
.p2align 4
label30:
	add r2, r2, #1
	movw r9, #:lower16:program
	movt r9, #:upper16:program
	ldr r8, [r9, r2, lsl #2]
	sub r9, r8, #93
	sub r8, r8, #91
	clz r9, r9
	clz r8, r8
	lsr r9, r9, #5
	lsr r8, r8, #5
	sub r9, r10, r9
	adds r10, r9, r8
	bgt label30
	mov r8, r2
	add r8, r2, #1
	b label16
label36:
	cmp r2, #46
	beq label41
	cmp r2, #44
	bne label260
	cmp r4, r3
	ble label39
	movw r2, #:lower16:input
	movt r2, #:upper16:input
	ldr r2, [r2, r3, lsl #2]
	add r3, r3, #1
	str r2, [r1, r7, lsl #2]
	b label44
.p2align 4
label42:
	add r2, r1, r7, lsl #2
	ldr r9, [r2, #0]
	sub r9, r9, #1
	str r9, [r2, #0]
	add r8, r8, #1
	ldr r2, [sp, #0]
	cmp r2, r8
	bgt label22
	b label51
label81:
	mov r2, #0
	str r2, [sp, #0]
	b label9
label39:
	mov r2, #0
	str r2, [r1, r7, lsl #2]
	add r8, r8, #1
	b label16
label260:
	add r8, r8, #1
	b label16
label41:
	ldr r2, [r1, r7, lsl #2]
	movw r9, #:lower16:output
	movt r9, #:upper16:output
	str r2, [r9, r5, lsl #2]
	add r5, r5, #1
	add r8, r8, #1
	b label16
label250:
	mov r6, r2
	add r8, r8, #1
	b label16
