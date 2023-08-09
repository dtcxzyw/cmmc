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
	bne label66
	add r6, r6, #1
	cmp r0, #35
	bne label68
	mov r2, r6
	str r6, [sp, #0]
label4:
	bl getch
	cmp r0, #105
	bne label98
	bl getint
	mov r4, r0
	bl getch
	cmp r4, #0
	ble label6
	movw r2, #:lower16:input
	movt r2, #:upper16:input
	mov r5, r2
	mov r2, #0
	mov r6, r2
	b label57
.p2align 4
label60:
	add r5, r5, #4
.p2align 4
label57:
	bl getch
	add r6, r6, #1
	str r0, [r5, #0]
	cmp r4, r6
	bgt label60
	b label6
label98:
	mov r2, #0
	mov r4, r2
label6:
	mov r0, #116
	bl _sysy_starttime
	mov r2, #0
	movw r0, #:lower16:return_a
	movt r0, #:upper16:return_a
	mov r3, r2
	mov r1, r0
	b label8
.p2align 4
label54:
	add r1, r1, #256
.p2align 4
label8:
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
	blt label54
	movw r1, #:lower16:tape
	movt r1, #:upper16:tape
	mov r8, r2
	mov r7, r2
	mov r6, r2
	mov r3, r2
	mov r5, r2
	b label12
label453:
	cmp r2, #91
	bne label455
	ldr r2, [r1, r7, lsl #2]
	cmp r2, #0
	beq label218
	str r8, [r0, r6, lsl #2]
	add r8, r8, #1
	add r6, r6, #1
.p2align 4
label12:
	ldr r2, [sp, #0]
	cmp r2, r8
	bgt label25
	b label18
.p2align 4
label193:
	cmp r2, #60
	bne label444
	sub r7, r7, #1
	add r8, r8, #1
	ldr r2, [sp, #0]
	cmp r2, r8
	ble label18
.p2align 4
label25:
	movw r9, #:lower16:program
	movt r9, #:upper16:program
	ldr r2, [r9, r8, lsl #2]
	cmp r2, #62
	bne label193
	add r7, r7, #1
	add r8, r8, #1
	ldr r2, [sp, #0]
	cmp r2, r8
	bgt label25
label18:
	movw r4, #:lower16:output
	movt r4, #:upper16:output
	mov r0, #118
	bl _sysy_stoptime
	cmp r5, #0
	ble label19
	mov r2, #0
	mov r6, r2
	b label21
.p2align 4
label24:
	add r4, r4, #4
	mov r6, r0
.p2align 4
label21:
	ldr r0, [r4, #0]
	bl putch
	add r0, r6, #1
	cmp r5, r0
	bgt label24
label19:
	mov r2, #0
	add sp, sp, #8
	mov r0, r2
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
.p2align 4
label444:
	cmp r2, #43
	bne label448
	add r2, r1, r7, lsl #2
	ldr r9, [r2, #0]
	add r9, r9, #1
	str r9, [r2, #0]
.p2align 4
label48:
	add r8, r8, #1
	ldr r2, [sp, #0]
	cmp r2, r8
	bgt label25
	b label18
.p2align 4
label448:
	cmp r2, #45
	bne label453
	add r2, r1, r7, lsl #2
	add r8, r8, #1
	ldr r9, [r2, #0]
	sub r9, r9, #1
	str r9, [r2, #0]
	ldr r2, [sp, #0]
	cmp r2, r8
	bgt label25
	b label18
label218:
	mov r2, #1
	mov r10, r2
	mov r2, r8
.p2align 4
label34:
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
	bgt label34
	add r8, r2, #1
	b label12
label455:
	cmp r2, #93
	bne label38
	ldr r9, [r1, r7, lsl #2]
	sub r2, r6, #1
	cmp r9, #0
	beq label277
	ldr r8, [r0, r2, lsl #2]
	b label48
label38:
	cmp r2, #46
	bne label39
	ldr r2, [r1, r7, lsl #2]
	movw r9, #:lower16:output
	movt r9, #:upper16:output
	add r8, r8, #1
	str r2, [r9, r5, lsl #2]
	add r5, r5, #1
	b label12
label39:
	cmp r2, #44
	bne label248
	cmp r4, r3
	bgt label252
	mov r2, #0
	add r8, r8, #1
	str r2, [r1, r7, lsl #2]
	b label12
label92:
	mov r2, #0
	str r2, [sp, #0]
	b label4
label277:
	mov r6, r2
	add r8, r8, #1
	b label12
label248:
	add r8, r8, #1
	b label12
label252:
	movw r2, #:lower16:input
	movt r2, #:upper16:input
	ldr r2, [r2, r3, lsl #2]
	add r3, r3, #1
	str r2, [r1, r7, lsl #2]
	b label48
