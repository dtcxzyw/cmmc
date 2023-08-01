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
	mov r7, #0
	mov r3, #7
	str r0, [sp, #0]
	add r4, sp, #64
	mov r6, #2
	str r3, [sp, #4]
	mov r9, #9
	mov r8, #3
	str r2, [sp, #8]
	mov r5, sp
	str r1, [sp, #12]
	str r6, [sp, #16]
	str r3, [sp, #20]
	str r7, [sp, #24]
	str r1, [sp, #28]
	str r9, [sp, #32]
	str r8, [sp, #36]
	str r2, [sp, #40]
	str r0, [sp, #44]
	str r8, [sp, #48]
	str r3, [sp, #52]
	str r7, [sp, #56]
	str r8, [sp, #64]
	str r9, [sp, #68]
	str r3, [sp, #72]
	str r1, [sp, #76]
	str r2, [sp, #80]
	str r6, [sp, #84]
	str r2, [sp, #88]
	mov r2, #6
	str r8, [sp, #92]
	str r2, [sp, #96]
	str r0, [sp, #100]
	mov r0, #5
	str r7, [sp, #104]
	str r1, [sp, #108]
	str r0, [sp, #112]
	mov r0, #43
	bl putint
	mov r0, #10
	bl putch
	mov r1, r7
	movw r6, #:lower16:p
	movt r6, #:upper16:p
label2:
	add r0, r6, r1, lsl #2
	mov r2, #0
	add r1, r1, #64
	str r2, [r0, #0]
	cmp r1, #256
	str r2, [r0, #4]
	str r2, [r0, #8]
	str r2, [r0, #12]
	str r2, [r0, #16]
	str r2, [r0, #20]
	str r2, [r0, #24]
	str r2, [r0, #28]
	str r2, [r0, #32]
	str r2, [r0, #36]
	str r2, [r0, #40]
	str r2, [r0, #44]
	str r2, [r0, #48]
	str r2, [r0, #52]
	str r2, [r0, #56]
	str r2, [r0, #60]
	str r2, [r0, #64]
	str r2, [r0, #68]
	str r2, [r0, #72]
	str r2, [r0, #76]
	str r2, [r0, #80]
	str r2, [r0, #84]
	str r2, [r0, #88]
	str r2, [r0, #92]
	str r2, [r0, #96]
	str r2, [r0, #100]
	str r2, [r0, #104]
	str r2, [r0, #108]
	str r2, [r0, #112]
	str r2, [r0, #116]
	str r2, [r0, #120]
	str r2, [r0, #124]
	str r2, [r0, #128]
	str r2, [r0, #132]
	str r2, [r0, #136]
	str r2, [r0, #140]
	str r2, [r0, #144]
	str r2, [r0, #148]
	str r2, [r0, #152]
	str r2, [r0, #156]
	str r2, [r0, #160]
	str r2, [r0, #164]
	str r2, [r0, #168]
	str r2, [r0, #172]
	str r2, [r0, #176]
	str r2, [r0, #180]
	str r2, [r0, #184]
	str r2, [r0, #188]
	str r2, [r0, #192]
	str r2, [r0, #196]
	str r2, [r0, #200]
	str r2, [r0, #204]
	str r2, [r0, #208]
	str r2, [r0, #212]
	str r2, [r0, #216]
	str r2, [r0, #220]
	str r2, [r0, #224]
	str r2, [r0, #228]
	str r2, [r0, #232]
	str r2, [r0, #236]
	str r2, [r0, #240]
	str r2, [r0, #244]
	str r2, [r0, #248]
	str r2, [r0, #252]
	blt label2
	mov r7, #1
	sub r2, r7, #1
	add r0, r6, r7, lsl #6
	cmp r7, #16
	sub r3, r0, #64
	blt label121
	b label12
.p2align 4
label8:
	sub r9, r1, #1
	ldr r10, [r5, r2, lsl #2]
	add r8, r1, #1
	ldr r11, [r4, r9, lsl #2]
	cmp r10, r11
	beq label9
	ldr r10, [r3, r1, lsl #2]
	ldr r9, [r0, r9, lsl #2]
	cmp r10, r9
	movle r10, r9
	str r10, [r0, r1, lsl #2]
	mov r1, r8
	cmp r8, #14
	blt label8
	b label263
.p2align 4
label9:
	ldr r9, [r3, r9, lsl #2]
	add r9, r9, #1
	str r9, [r0, r1, lsl #2]
	mov r1, r8
	cmp r8, #14
	blt label8
	add r7, r7, #1
	sub r2, r7, #1
	add r0, r6, r7, lsl #6
	cmp r7, #16
	sub r3, r0, #64
	blt label121
label12:
	ldr r0, [r6, #1012]
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #124
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label121:
	mov r1, #1
	cmp r1, #14
	blt label8
	b label124
.p2align 4
label263:
	add r7, r7, #1
	sub r2, r7, #1
	add r0, r6, r7, lsl #6
	cmp r7, #16
	sub r3, r0, #64
	blt label121
	b label12
label124:
	add r7, r7, #1
	sub r2, r7, #1
	add r0, r6, r7, lsl #6
	cmp r7, #16
	sub r3, r0, #64
	blt label121
	b label12
