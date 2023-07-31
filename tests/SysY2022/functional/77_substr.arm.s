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
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r2, #4
	mov r0, #8
	sub sp, sp, #124
	mov r1, #1
	mov r6, #0
	mov r3, #7
	str r0, [sp, #0]
	add r4, sp, #64
	mov r7, #2
	str r3, [sp, #4]
	mov r9, #9
	mov r8, #3
	str r2, [sp, #8]
	mov r5, sp
	str r1, [sp, #12]
	str r7, [sp, #16]
	str r3, [sp, #20]
	str r6, [sp, #24]
	str r1, [sp, #28]
	str r9, [sp, #32]
	str r8, [sp, #36]
	str r2, [sp, #40]
	str r0, [sp, #44]
	str r8, [sp, #48]
	str r3, [sp, #52]
	str r6, [sp, #56]
	str r8, [sp, #64]
	str r9, [sp, #68]
	str r3, [sp, #72]
	str r1, [sp, #76]
	str r2, [sp, #80]
	str r7, [sp, #84]
	str r2, [sp, #88]
	mov r2, #6
	str r8, [sp, #92]
	str r2, [sp, #96]
	str r0, [sp, #100]
	mov r0, #5
	str r6, [sp, #104]
	str r1, [sp, #108]
	str r0, [sp, #112]
	mov r0, #43
	bl putint
	mov r0, #10
	bl putch
	mov r2, r6
	movw r0, #:lower16:p
	movt r0, #:upper16:p
label2:
	add r1, r0, r2, lsl #2
	mov r3, #0
	add r2, r2, #64
	str r3, [r1, #0]
	cmp r2, #256
	str r3, [r1, #4]
	str r3, [r1, #8]
	str r3, [r1, #12]
	str r3, [r1, #16]
	str r3, [r1, #20]
	str r3, [r1, #24]
	str r3, [r1, #28]
	str r3, [r1, #32]
	str r3, [r1, #36]
	str r3, [r1, #40]
	str r3, [r1, #44]
	str r3, [r1, #48]
	str r3, [r1, #52]
	str r3, [r1, #56]
	str r3, [r1, #60]
	str r3, [r1, #64]
	str r3, [r1, #68]
	str r3, [r1, #72]
	str r3, [r1, #76]
	str r3, [r1, #80]
	str r3, [r1, #84]
	str r3, [r1, #88]
	str r3, [r1, #92]
	str r3, [r1, #96]
	str r3, [r1, #100]
	str r3, [r1, #104]
	str r3, [r1, #108]
	str r3, [r1, #112]
	str r3, [r1, #116]
	str r3, [r1, #120]
	str r3, [r1, #124]
	str r3, [r1, #128]
	str r3, [r1, #132]
	str r3, [r1, #136]
	str r3, [r1, #140]
	str r3, [r1, #144]
	str r3, [r1, #148]
	str r3, [r1, #152]
	str r3, [r1, #156]
	str r3, [r1, #160]
	str r3, [r1, #164]
	str r3, [r1, #168]
	str r3, [r1, #172]
	str r3, [r1, #176]
	str r3, [r1, #180]
	str r3, [r1, #184]
	str r3, [r1, #188]
	str r3, [r1, #192]
	str r3, [r1, #196]
	str r3, [r1, #200]
	str r3, [r1, #204]
	str r3, [r1, #208]
	str r3, [r1, #212]
	str r3, [r1, #216]
	str r3, [r1, #220]
	str r3, [r1, #224]
	str r3, [r1, #228]
	str r3, [r1, #232]
	str r3, [r1, #236]
	str r3, [r1, #240]
	str r3, [r1, #244]
	str r3, [r1, #248]
	str r3, [r1, #252]
	blt label2
	mov r7, #1
	sub r3, r7, #1
	add r1, r0, r7, lsl #6
	cmp r7, #16
	sub r6, r1, #64
	blt label121
	b label12
.p2align 4
label8:
	sub r9, r2, #1
	ldr r10, [r5, r3, lsl #2]
	add r8, r2, #1
	ldr r11, [r4, r9, lsl #2]
	cmp r10, r11
	beq label9
	ldr r10, [r6, r2, lsl #2]
	ldr r9, [r1, r9, lsl #2]
	cmp r10, r9
	movle r10, r9
	str r10, [r1, r2, lsl #2]
	mov r2, r8
	cmp r8, #14
	blt label8
	b label263
.p2align 4
label9:
	ldr r9, [r6, r9, lsl #2]
	add r9, r9, #1
	str r9, [r1, r2, lsl #2]
	mov r2, r8
	cmp r8, #14
	blt label8
	add r7, r7, #1
	sub r3, r7, #1
	add r1, r0, r7, lsl #6
	cmp r7, #16
	sub r6, r1, #64
	blt label121
label12:
	ldr r0, [r0, #1012]
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #124
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label121:
	mov r2, #1
	cmp r2, #14
	blt label8
	b label124
.p2align 4
label263:
	add r7, r7, #1
	sub r3, r7, #1
	add r1, r0, r7, lsl #6
	cmp r7, #16
	sub r6, r1, #64
	blt label121
	b label12
label124:
	add r7, r7, #1
	sub r3, r7, #1
	add r1, r0, r7, lsl #6
	cmp r7, #16
	sub r6, r1, #64
	blt label121
	b label12
