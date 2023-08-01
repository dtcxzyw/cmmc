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
	movw r8, #:lower16:return_a
	sub sp, sp, #16
	movt r8, #:upper16:return_a
	str r8, [sp, #8]
.p2align 4
label2:
	bl getch
	subs r2, r0, #35
	mov r1, #1
	movw r3, #3841
	lsl r2, r1, r2
	movt r3, #2560
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
	movw r9, #:lower16:program
	cmp r0, #35
	movt r8, #:upper16:input
	movt r9, #:upper16:program
	str r8, [sp, #4]
	str r9, [sp, #0]
	beq label83
	mov r4, #0
.p2align 4
label4:
	ldr r9, [sp, #0]
	str r0, [r9, r4, lsl #2]
.p2align 4
label7:
	bl getch
	subs r2, r0, #35
	mov r1, #1
	movw r3, #3841
	lsl r2, r1, r2
	movt r3, #2560
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
label9:
	bl getch
	cmp r0, #105
	beq label55
	mov r5, #0
label11:
	mov r0, #116
	bl _sysy_starttime
	mov r2, #0
.p2align 4
label13:
	ldr r8, [sp, #8]
	mov r1, #0
	add r0, r8, r2, lsl #2
	add r2, r2, #64
	str r1, [r0, #0]
	cmp r2, #512
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #12]
	str r1, [r0, #16]
	str r1, [r0, #20]
	str r1, [r0, #24]
	str r1, [r0, #28]
	str r1, [r0, #32]
	str r1, [r0, #36]
	str r1, [r0, #40]
	str r1, [r0, #44]
	str r1, [r0, #48]
	str r1, [r0, #52]
	str r1, [r0, #56]
	str r1, [r0, #60]
	str r1, [r0, #64]
	str r1, [r0, #68]
	str r1, [r0, #72]
	str r1, [r0, #76]
	str r1, [r0, #80]
	str r1, [r0, #84]
	str r1, [r0, #88]
	str r1, [r0, #92]
	str r1, [r0, #96]
	str r1, [r0, #100]
	str r1, [r0, #104]
	str r1, [r0, #108]
	str r1, [r0, #112]
	str r1, [r0, #116]
	str r1, [r0, #120]
	str r1, [r0, #124]
	str r1, [r0, #128]
	str r1, [r0, #132]
	str r1, [r0, #136]
	str r1, [r0, #140]
	str r1, [r0, #144]
	str r1, [r0, #148]
	str r1, [r0, #152]
	str r1, [r0, #156]
	str r1, [r0, #160]
	str r1, [r0, #164]
	str r1, [r0, #168]
	str r1, [r0, #172]
	str r1, [r0, #176]
	str r1, [r0, #180]
	str r1, [r0, #184]
	str r1, [r0, #188]
	str r1, [r0, #192]
	str r1, [r0, #196]
	str r1, [r0, #200]
	str r1, [r0, #204]
	str r1, [r0, #208]
	str r1, [r0, #212]
	str r1, [r0, #216]
	str r1, [r0, #220]
	str r1, [r0, #224]
	str r1, [r0, #228]
	str r1, [r0, #232]
	str r1, [r0, #236]
	str r1, [r0, #240]
	str r1, [r0, #244]
	str r1, [r0, #248]
	str r1, [r0, #252]
	blt label13
	movw r0, #:lower16:tape
	mov r6, #0
	movt r0, #:upper16:tape
	mov r2, r6
	mov r1, r6
	mov r3, r6
	mov r7, r6
label16:
	cmp r4, r7
	bgt label26
	b label22
label233:
	mov r8, #1
.p2align 4
label33:
	add r7, r7, #1
	ldr r9, [sp, #0]
	ldr r9, [r9, r7, lsl #2]
	sub r10, r9, #93
	sub r9, r9, #91
	clz r10, r10
	clz r9, r9
	lsr r10, r10, #5
	lsr r9, r9, #5
	sub r8, r8, r10
	adds r8, r8, r9
	bgt label33
label250:
	add r7, r7, #1
	b label16
label22:
	mov r0, #118
	bl _sysy_stoptime
	cmp r6, #0
	movw r4, #:lower16:output
	movt r4, #:upper16:output
	ble label25
	mov r5, #0
.p2align 4
label23:
	ldr r0, [r4, r5, lsl #2]
	bl putch
	add r5, r5, #1
	cmp r6, r5
	bgt label23
label25:
	mov r0, #0
	add sp, sp, #16
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
.p2align 4
label26:
	ldr r9, [sp, #0]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	beq label54
	cmp r8, #60
	bne label28
	sub r3, r3, #1
.p2align 4
label48:
	add r7, r7, #1
	cmp r4, r7
	bgt label26
	b label22
.p2align 4
label54:
	add r3, r3, #1
	add r7, r7, #1
	cmp r4, r7
	bgt label26
	b label22
.p2align 4
label28:
	cmp r8, #43
	beq label46
	cmp r8, #45
	bne label30
	add r8, r0, r3, lsl #2
	ldr r9, [r8, #0]
	sub r9, r9, #1
	str r9, [r8, #0]
	add r7, r7, #1
	cmp r4, r7
	bgt label26
	b label22
.p2align 4
label30:
	cmp r8, #91
	beq label31
	cmp r8, #93
	bne label254
	ldr r8, [r0, r3, lsl #2]
	sub r9, r2, #1
	cmp r8, #0
	bne label262
	mov r2, r9
	add r7, r7, #1
	b label16
label254:
	cmp r8, #46
	bne label41
	ldr r8, [r0, r3, lsl #2]
	movw r9, #:lower16:output
	movt r9, #:upper16:output
	str r8, [r9, r6, lsl #2]
	add r6, r6, #1
	add r7, r7, #1
	b label16
label31:
	ldr r8, [r0, r3, lsl #2]
	cmp r8, #0
	beq label233
	ldr r8, [sp, #8]
	str r7, [r8, r2, lsl #2]
	add r2, r2, #1
	add r7, r7, #1
	b label16
label41:
	cmp r8, #44
	bne label250
	cmp r5, r1
	bgt label285
	mov r8, #0
	str r8, [r0, r3, lsl #2]
	add r7, r7, #1
	b label16
label55:
	bl getint
	mov r5, r0
	bl getch
	cmp r5, #0
	ble label11
	mov r6, #0
.p2align 4
label56:
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r6, lsl #2]
	add r6, r6, #1
	cmp r5, r6
	bgt label56
	b label11
.p2align 4
label46:
	add r8, r0, r3, lsl #2
	ldr r9, [r8, #0]
	add r9, r9, #1
	str r9, [r8, #0]
	add r7, r7, #1
	cmp r4, r7
	bgt label26
	b label22
label285:
	ldr r8, [sp, #4]
	ldr r8, [r8, r1, lsl #2]
	add r1, r1, #1
	str r8, [r0, r3, lsl #2]
	b label48
label83:
	mov r4, #0
	b label9
label262:
	ldr r8, [sp, #8]
	ldr r7, [r8, r9, lsl #2]
	b label48
