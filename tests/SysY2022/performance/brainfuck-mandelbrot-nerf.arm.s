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
	sub sp, sp, #16
.p2align 4
label2:
	bl getch
	subs r2, r0, #35
	movw r3, #3841
	mov r1, #1
	movt r3, #2560
	lsl r2, r1, r2
	and r2, r3, r2
	sub r3, r0, #67
	clz r2, r2
	lsl r1, r1, r3
	lsr r2, r2, #5
	and r1, r1, #83886080
	orrlt r2, r2, #1
	clz r1, r1
	cmn r3, #1
	lsr r4, r1, #5
	mov r1, r2
	movgt r1, r4
	mov r2, #0
	cmp r0, #93
	movwgt r2, #1
	orrs r1, r1, r2
	bne label2
	movw r8, #:lower16:input
	cmp r0, #35
	movt r8, #:upper16:input
	str r8, [sp, #8]
	movw r8, #:lower16:program
	movt r8, #:upper16:program
	str r8, [sp, #4]
	beq label81
	mov r4, #0
.p2align 4
label4:
	ldr r8, [sp, #4]
	str r0, [r8, r4, lsl #2]
.p2align 4
label7:
	bl getch
	subs r2, r0, #35
	movw r3, #3841
	mov r1, #1
	movt r3, #2560
	lsl r2, r1, r2
	and r2, r3, r2
	sub r3, r0, #67
	clz r2, r2
	lsl r1, r1, r3
	lsr r2, r2, #5
	and r1, r1, #83886080
	orrlt r2, r2, #1
	clz r1, r1
	cmn r3, #1
	lsr r5, r1, #5
	mov r1, r2
	movgt r1, r5
	mov r2, #0
	cmp r0, #93
	movwgt r2, #1
	orrs r1, r1, r2
	bne label7
	add r4, r4, #1
	cmp r0, #35
	bne label4
	mov r8, r4
	str r4, [sp, #0]
label9:
	bl getch
	cmp r0, #105
	beq label55
	mov r4, #0
label11:
	mov r0, #116
	bl _sysy_starttime
	mov r3, #0
	movw r0, #:lower16:return_a
	movt r0, #:upper16:return_a
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
	mov r5, #0
	movt r1, #:upper16:tape
	mov r3, r5
	mov r2, r5
	mov r6, r5
	mov r7, r5
label16:
	ldr r8, [sp, #0]
	cmp r8, r7
	bgt label26
	b label22
label30:
	cmp r8, #91
	bne label36
	ldr r8, [r1, r6, lsl #2]
	cmp r8, #0
	bne label32
	mov r9, #1
.p2align 4
label33:
	add r7, r7, #1
	ldr r8, [sp, #4]
	ldr r8, [r8, r7, lsl #2]
	sub r10, r8, #93
	sub r8, r8, #91
	clz r10, r10
	clz r8, r8
	lsr r10, r10, #5
	lsr r8, r8, #5
	sub r9, r9, r10
	adds r9, r9, r8
	bgt label33
label250:
	add r7, r7, #1
	b label16
label22:
	mov r0, #118
	bl _sysy_stoptime
	cmp r5, #0
	movw r4, #:lower16:output
	movt r4, #:upper16:output
	ble label25
	mov r6, #0
.p2align 4
label23:
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	bgt label23
label25:
	mov r0, #0
	add sp, sp, #16
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
.p2align 4
label26:
	ldr r8, [sp, #4]
	ldr r8, [r8, r7, lsl #2]
	cmp r8, #62
	beq label54
	cmp r8, #60
	bne label28
	sub r6, r6, #1
.p2align 4
label48:
	add r7, r7, #1
	ldr r8, [sp, #0]
	cmp r8, r7
	bgt label26
	b label22
.p2align 4
label54:
	add r6, r6, #1
	add r7, r7, #1
	ldr r8, [sp, #0]
	cmp r8, r7
	bgt label26
	b label22
.p2align 4
label28:
	cmp r8, #43
	bne label29
	add r8, r1, r6, lsl #2
	ldr r9, [r8, #0]
	add r9, r9, #1
	str r9, [r8, #0]
	add r7, r7, #1
	ldr r8, [sp, #0]
	cmp r8, r7
	bgt label26
	b label22
.p2align 4
label29:
	cmp r8, #45
	bne label30
	add r8, r1, r6, lsl #2
	ldr r9, [r8, #0]
	sub r9, r9, #1
	str r9, [r8, #0]
	add r7, r7, #1
	ldr r8, [sp, #0]
	cmp r8, r7
	bgt label26
	b label22
label36:
	cmp r8, #93
	beq label37
	cmp r8, #46
	beq label40
	cmp r8, #44
	bne label250
	cmp r4, r2
	bgt label285
	mov r8, #0
	str r8, [r1, r6, lsl #2]
	add r7, r7, #1
	b label16
label55:
	bl getint
	mov r4, r0
	bl getch
	cmp r4, #0
	ble label11
	mov r5, #0
.p2align 4
label56:
	bl getch
	ldr r8, [sp, #8]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	bgt label56
	b label11
label37:
	ldr r9, [r1, r6, lsl #2]
	sub r8, r3, #1
	cmp r9, #0
	beq label263
	ldr r7, [r0, r8, lsl #2]
	b label48
label285:
	ldr r8, [sp, #8]
	ldr r8, [r8, r2, lsl #2]
	add r2, r2, #1
	str r8, [r1, r6, lsl #2]
	b label48
label263:
	mov r3, r8
	add r7, r7, #1
	b label16
label40:
	ldr r8, [r1, r6, lsl #2]
	movw r9, #:lower16:output
	movt r9, #:upper16:output
	str r8, [r9, r5, lsl #2]
	add r5, r5, #1
	add r7, r7, #1
	b label16
label32:
	str r7, [r0, r3, lsl #2]
	add r3, r3, #1
	add r7, r7, #1
	b label16
label81:
	mov r8, #0
	str r8, [sp, #0]
	b label9
