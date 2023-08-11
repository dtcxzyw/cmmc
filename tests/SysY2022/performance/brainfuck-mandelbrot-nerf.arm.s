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
	@ stack usage: CalleeArg[0] Local[0] RegSpill[4] CalleeSaved[0]
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
	beq label92
	movw r9, #:lower16:program
	movt r9, #:upper16:program
	mov r2, #0
	mov r5, r9
	mov r6, r2
	str r0, [r9, #0]
	b label66
.p2align 4
label68:
	add r5, r5, #4
	str r0, [r5, #0]
.p2align 4
label66:
	bl getch
	subs r1, r0, #35
	sub r3, r0, #67
	mov r2, #1
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
	bne label66
	add r6, r6, #1
	cmp r0, #35
	bne label68
	mov r2, r6
	str r6, [sp, #0]
label4:
	bl getch
	cmp r0, #105
	beq label6
	mov r2, #0
	mov r4, r2
label12:
	mov r0, #116
	bl _sysy_starttime
	mov r2, #0
	movw r0, #:lower16:return_a
	movt r0, #:upper16:return_a
	mov r3, r2
	mov r1, r0
.p2align 4
label14:
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
	bge label180
	add r1, r1, #256
	b label14
label6:
	bl getint
	mov r4, r0
	bl getch
	cmp r4, #0
	ble label12
	movw r2, #:lower16:input
	movt r2, #:upper16:input
	mov r5, r2
	mov r2, #0
	mov r6, r2
.p2align 4
label8:
	bl getch
	add r6, r6, #1
	str r0, [r5, #0]
	cmp r4, r6
	ble label12
	add r5, r5, #4
	b label8
label92:
	mov r2, #0
	str r2, [sp, #0]
	b label4
label180:
	movw r1, #:lower16:tape
	movt r1, #:upper16:tape
	mov r2, #0
	mov r8, r2
	mov r7, r2
	mov r6, r2
	mov r3, r2
	mov r5, r2
	b label19
label49:
	str r8, [r0, r6, lsl #2]
	add r8, r8, #1
	add r6, r6, #1
.p2align 4
label19:
	ldr r2, [sp, #0]
	cmp r2, r8
	bgt label32
	b label25
.p2align 4
label33:
	add r7, r7, #1
	add r8, r8, #1
	ldr r2, [sp, #0]
	cmp r2, r8
	ble label25
.p2align 4
label32:
	movw r9, #:lower16:program
	movt r9, #:upper16:program
	ldr r2, [r9, r8, lsl #2]
	cmp r2, #62
	beq label33
	cmp r2, #60
	beq label54
	cmp r2, #43
	bne label448
	add r2, r1, r7, lsl #2
	add r8, r8, #1
	ldr r9, [r2, #0]
	add r9, r9, #1
	str r9, [r2, #0]
	ldr r2, [sp, #0]
	cmp r2, r8
	bgt label32
	b label25
.p2align 4
label54:
	sub r7, r7, #1
.p2align 4
label55:
	add r8, r8, #1
	ldr r2, [sp, #0]
	cmp r2, r8
	bgt label32
	b label25
.p2align 4
label448:
	cmp r2, #45
	beq label37
	cmp r2, #91
	bne label454
	ldr r2, [r1, r7, lsl #2]
	cmp r2, #0
	bne label49
	mov r2, #1
	mov r10, r2
	mov r2, r8
.p2align 4
label50:
	add r2, r2, #1
	movw r9, #:lower16:program
	movt r9, #:upper16:program
	ldr r8, [r9, r2, lsl #2]
	cmp r8, #91
	sub r9, r8, #93
	mov r8, #0
	clz r9, r9
	movwne r8, #1
	lsr r9, r9, #5
	sub r9, r10, r9
	add r9, r9, #1
	subs r10, r9, r8
	bgt label50
	add r8, r2, #1
	b label19
label454:
	cmp r2, #93
	bne label40
	ldr r9, [r1, r7, lsl #2]
	sub r2, r6, #1
	cmp r9, #0
	beq label269
	add r2, r0, r6, lsl #2
	ldr r8, [r2, #-4]
	b label55
label40:
	cmp r2, #46
	bne label41
	ldr r2, [r1, r7, lsl #2]
	movw r9, #:lower16:output
	movt r9, #:upper16:output
	add r8, r8, #1
	str r2, [r9, r5, lsl #2]
	add r5, r5, #1
	b label19
label25:
	movw r4, #:lower16:output
	movt r4, #:upper16:output
	mov r0, #118
	bl _sysy_stoptime
	cmp r5, #0
	ble label31
	mov r2, #0
	mov r6, r2
	b label27
.p2align 4
label30:
	add r4, r4, #4
	mov r6, r0
.p2align 4
label27:
	ldr r0, [r4, #0]
	bl putch
	add r0, r6, #1
	cmp r5, r0
	bgt label30
label31:
	mov r2, #0
	add sp, sp, #8
	mov r0, r2
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label41:
	cmp r2, #44
	beq label42
	add r8, r8, #1
	b label19
label42:
	cmp r4, r3
	bgt label244
	mov r2, #0
	add r8, r8, #1
	str r2, [r1, r7, lsl #2]
	b label19
label37:
	add r2, r1, r7, lsl #2
	add r8, r8, #1
	ldr r9, [r2, #0]
	sub r9, r9, #1
	str r9, [r2, #0]
	ldr r2, [sp, #0]
	cmp r2, r8
	bgt label32
	b label25
label244:
	movw r2, #:lower16:input
	movt r2, #:upper16:input
	ldr r2, [r2, r3, lsl #2]
	add r3, r3, #1
	str r2, [r1, r7, lsl #2]
	b label55
label269:
	mov r6, r2
	add r8, r8, #1
	b label19
