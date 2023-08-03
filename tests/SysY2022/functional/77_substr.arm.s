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
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r8, #1
	mov r1, #4
	mov r3, #2
	mov r0, #8
	sub sp, sp, #124
	mov r6, #3
	mov r2, #7
	mov r7, #9
	str r0, [sp, #0]
	add r4, sp, #64
	mov r5, #0
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r8, [sp, #12]
	str r3, [sp, #16]
	str r2, [sp, #20]
	str r5, [sp, #24]
	str r8, [sp, #28]
	str r7, [sp, #32]
	str r6, [sp, #36]
	str r1, [sp, #40]
	str r0, [sp, #44]
	str r6, [sp, #48]
	str r2, [sp, #52]
	str r5, [sp, #56]
	str r6, [sp, #64]
	str r7, [sp, #68]
	str r2, [sp, #72]
	str r8, [sp, #76]
	str r1, [sp, #80]
	str r3, [sp, #84]
	str r1, [sp, #88]
	mov r1, #6
	str r6, [sp, #92]
	str r1, [sp, #96]
	str r0, [sp, #100]
	mov r0, #5
	str r5, [sp, #104]
	str r8, [sp, #108]
	str r0, [sp, #112]
	mov r0, #43
	bl putint
	mov r0, #10
	bl putch
	mov r1, r5
	movw r2, #:lower16:p
	movt r2, #:upper16:p
	mov r0, r2
.p2align 4
label2:
	mov r5, #0
	add r1, r1, #64
	str r5, [r0, #0]
	cmp r1, #256
	str r5, [r0, #4]
	str r5, [r0, #8]
	str r5, [r0, #12]
	str r5, [r0, #16]
	str r5, [r0, #20]
	str r5, [r0, #24]
	str r5, [r0, #28]
	str r5, [r0, #32]
	str r5, [r0, #36]
	str r5, [r0, #40]
	str r5, [r0, #44]
	str r5, [r0, #48]
	str r5, [r0, #52]
	str r5, [r0, #56]
	str r5, [r0, #60]
	str r5, [r0, #64]
	str r5, [r0, #68]
	str r5, [r0, #72]
	str r5, [r0, #76]
	str r5, [r0, #80]
	str r5, [r0, #84]
	str r5, [r0, #88]
	str r5, [r0, #92]
	str r5, [r0, #96]
	str r5, [r0, #100]
	str r5, [r0, #104]
	str r5, [r0, #108]
	str r5, [r0, #112]
	str r5, [r0, #116]
	str r5, [r0, #120]
	str r5, [r0, #124]
	str r5, [r0, #128]
	str r5, [r0, #132]
	str r5, [r0, #136]
	str r5, [r0, #140]
	str r5, [r0, #144]
	str r5, [r0, #148]
	str r5, [r0, #152]
	str r5, [r0, #156]
	str r5, [r0, #160]
	str r5, [r0, #164]
	str r5, [r0, #168]
	str r5, [r0, #172]
	str r5, [r0, #176]
	str r5, [r0, #180]
	str r5, [r0, #184]
	str r5, [r0, #188]
	str r5, [r0, #192]
	str r5, [r0, #196]
	str r5, [r0, #200]
	str r5, [r0, #204]
	str r5, [r0, #208]
	str r5, [r0, #212]
	str r5, [r0, #216]
	str r5, [r0, #220]
	str r5, [r0, #224]
	str r5, [r0, #228]
	str r5, [r0, #232]
	str r5, [r0, #236]
	str r5, [r0, #240]
	str r5, [r0, #244]
	str r5, [r0, #248]
	str r5, [r0, #252]
	bge label117
	add r0, r0, #256
	b label2
label117:
	add r1, r2, #64
	mov r8, #1
	mov r5, r8
	sub r0, r8, #1
	sub r3, r1, #64
	cmp r8, #16
	bge label19
.p2align 4
label10:
	add r7, r1, #4
	add r6, r3, #4
	mov r8, #1
	cmp r8, #14
	bge label131
.p2align 4
label15:
	sub r9, r8, #1
	mov r10, sp
	add r8, r8, #1
	ldr r10, [r10, r0, lsl #2]
	ldr r11, [r4, r9, lsl #2]
	cmp r10, r11
	beq label16
	ldr r10, [r6, #0]
	add r6, r6, #4
	ldr r9, [r1, r9, lsl #2]
	cmp r10, r9
	movle r10, r9
	cmp r8, #14
	str r10, [r7, #0]
	add r7, r7, #4
	blt label15
	b label265
.p2align 4
label16:
	ldr r9, [r3, r9, lsl #2]
	add r6, r6, #4
	cmp r8, #14
	add r9, r9, #1
	str r9, [r7, #0]
	add r7, r7, #4
	blt label15
	add r5, r5, #1
	add r1, r1, #64
	cmp r5, #16
	sub r0, r5, #1
	sub r3, r1, #64
	blt label10
label19:
	ldr r0, [r2, #1012]
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #124
	mov r5, #0
	mov r0, r5
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label265:
	add r5, r5, #1
	add r1, r1, #64
	cmp r5, #16
	sub r0, r5, #1
	sub r3, r1, #64
	blt label10
	b label19
label131:
	add r5, r5, #1
	add r1, r1, #64
	cmp r5, #16
	sub r0, r5, #1
	sub r3, r1, #64
	blt label10
	b label19
