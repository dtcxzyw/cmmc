.arch armv7ve
.data
.bss
.align 8
p:
	.zero	1024
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	mov r2, #4
	mov r0, #8
	sub sp, sp, #120
	mov r1, #1
	mov r6, #0
	mov r3, #7
	str r0, [sp, #56]
	mov r4, sp
	mov r7, #2
	str r3, [sp, #60]
	mov r9, #9
	mov r8, #3
	str r2, [sp, #64]
	add r5, sp, #56
	str r1, [sp, #68]
	str r7, [sp, #72]
	str r3, [sp, #76]
	str r6, [sp, #80]
	str r1, [sp, #84]
	str r9, [sp, #88]
	str r8, [sp, #92]
	str r2, [sp, #96]
	str r0, [sp, #100]
	str r8, [sp, #104]
	str r3, [sp, #108]
	str r6, [sp, #112]
	str r8, [sp, #0]
	str r9, [sp, #4]
	str r3, [sp, #8]
	str r1, [sp, #12]
	str r2, [sp, #16]
	str r7, [sp, #20]
	str r2, [sp, #24]
	mov r2, #6
	str r8, [sp, #28]
	str r2, [sp, #32]
	str r0, [sp, #36]
	mov r0, #5
	str r6, [sp, #40]
	str r1, [sp, #44]
	str r0, [sp, #48]
	mov r0, #43
	bl putint
	mov r0, #10
	bl putch
	mov r1, r6
	movw r0, #:lower16:p
	movt r0, #:upper16:p
label2:
	add r2, r0, r1, lsl #2
	mov r3, #0
	add r1, r1, #64
	str r3, [r2, #0]
	cmp r1, #256
	str r3, [r2, #4]
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
	str r3, [r2, #64]
	str r3, [r2, #68]
	str r3, [r2, #72]
	str r3, [r2, #76]
	str r3, [r2, #80]
	str r3, [r2, #84]
	str r3, [r2, #88]
	str r3, [r2, #92]
	str r3, [r2, #96]
	str r3, [r2, #100]
	str r3, [r2, #104]
	str r3, [r2, #108]
	str r3, [r2, #112]
	str r3, [r2, #116]
	str r3, [r2, #120]
	str r3, [r2, #124]
	str r3, [r2, #128]
	str r3, [r2, #132]
	str r3, [r2, #136]
	str r3, [r2, #140]
	str r3, [r2, #144]
	str r3, [r2, #148]
	str r3, [r2, #152]
	str r3, [r2, #156]
	str r3, [r2, #160]
	str r3, [r2, #164]
	str r3, [r2, #168]
	str r3, [r2, #172]
	str r3, [r2, #176]
	str r3, [r2, #180]
	str r3, [r2, #184]
	str r3, [r2, #188]
	str r3, [r2, #192]
	str r3, [r2, #196]
	str r3, [r2, #200]
	str r3, [r2, #204]
	str r3, [r2, #208]
	str r3, [r2, #212]
	str r3, [r2, #216]
	str r3, [r2, #220]
	str r3, [r2, #224]
	str r3, [r2, #228]
	str r3, [r2, #232]
	str r3, [r2, #236]
	str r3, [r2, #240]
	str r3, [r2, #244]
	str r3, [r2, #248]
	str r3, [r2, #252]
	blt label2
	mov r1, #1
	sub r3, r1, #1
	add r6, r0, r1, lsl #6
	cmp r1, #16
	sub r7, r6, #64
	blt label121
label12:
	ldr r0, [r0, #1012]
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #120
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label121:
	mov r2, #1
	cmp r2, #14
	blt label8
	add r1, r1, #1
	sub r3, r1, #1
	add r6, r0, r1, lsl #6
	cmp r1, #16
	sub r7, r6, #64
	blt label121
	b label12
.p2align 4
label8:
	sub r8, r2, #1
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r4, r8, lsl #2]
	cmp r9, r10
	beq label9
	ldr r9, [r7, r2, lsl #2]
	add r8, r6, r2, lsl #2
	add r2, r2, #1
	ldr r10, [r8, #-4]
	cmp r9, r10
	movle r9, r10
	str r9, [r8, #0]
	cmp r2, #14
	blt label8
	add r1, r1, #1
	sub r3, r1, #1
	add r6, r0, r1, lsl #6
	cmp r1, #16
	sub r7, r6, #64
	blt label121
	b label12
.p2align 4
label9:
	ldr r8, [r7, r8, lsl #2]
	add r8, r8, #1
	str r8, [r6, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #14
	blt label8
	add r1, r1, #1
	sub r3, r1, #1
	add r6, r0, r1, lsl #6
	cmp r1, #16
	sub r7, r6, #64
	blt label121
	b label12
