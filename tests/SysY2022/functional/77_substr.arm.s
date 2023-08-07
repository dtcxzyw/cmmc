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
	mov r1, #4
	mov r3, #2
	mov r2, #7
	mov r0, #8
	sub sp, sp, #124
	mov r8, #9
	mov r6, #3
	mov r5, #0
	str r0, [sp, #0]
	mov r7, #1
	add r4, sp, #64
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r7, [sp, #12]
	str r3, [sp, #16]
	str r2, [sp, #20]
	str r5, [sp, #24]
	str r7, [sp, #28]
	str r8, [sp, #32]
	str r6, [sp, #36]
	str r1, [sp, #40]
	str r0, [sp, #44]
	str r6, [sp, #48]
	str r2, [sp, #52]
	str r5, [sp, #56]
	str r6, [sp, #64]
	str r8, [sp, #68]
	str r2, [sp, #72]
	str r7, [sp, #76]
	str r1, [sp, #80]
	str r3, [sp, #84]
	str r1, [sp, #88]
	mov r1, #6
	str r6, [sp, #92]
	str r1, [sp, #96]
	str r0, [sp, #100]
	mov r0, #5
	str r5, [sp, #104]
	str r7, [sp, #108]
	str r0, [sp, #112]
	mov r0, #43
	bl putint
	mov r0, #10
	bl putch
	mov r2, r5
	movw r0, #:lower16:p
	movt r0, #:upper16:p
	mov r1, r0
.p2align 4
label2:
	mov r5, #0
	add r2, r2, #64
	str r5, [r1, #0]
	cmp r2, #256
	str r5, [r1, #4]
	str r5, [r1, #8]
	str r5, [r1, #12]
	str r5, [r1, #16]
	str r5, [r1, #20]
	str r5, [r1, #24]
	str r5, [r1, #28]
	str r5, [r1, #32]
	str r5, [r1, #36]
	str r5, [r1, #40]
	str r5, [r1, #44]
	str r5, [r1, #48]
	str r5, [r1, #52]
	str r5, [r1, #56]
	str r5, [r1, #60]
	str r5, [r1, #64]
	str r5, [r1, #68]
	str r5, [r1, #72]
	str r5, [r1, #76]
	str r5, [r1, #80]
	str r5, [r1, #84]
	str r5, [r1, #88]
	str r5, [r1, #92]
	str r5, [r1, #96]
	str r5, [r1, #100]
	str r5, [r1, #104]
	str r5, [r1, #108]
	str r5, [r1, #112]
	str r5, [r1, #116]
	str r5, [r1, #120]
	str r5, [r1, #124]
	str r5, [r1, #128]
	str r5, [r1, #132]
	str r5, [r1, #136]
	str r5, [r1, #140]
	str r5, [r1, #144]
	str r5, [r1, #148]
	str r5, [r1, #152]
	str r5, [r1, #156]
	str r5, [r1, #160]
	str r5, [r1, #164]
	str r5, [r1, #168]
	str r5, [r1, #172]
	str r5, [r1, #176]
	str r5, [r1, #180]
	str r5, [r1, #184]
	str r5, [r1, #188]
	str r5, [r1, #192]
	str r5, [r1, #196]
	str r5, [r1, #200]
	str r5, [r1, #204]
	str r5, [r1, #208]
	str r5, [r1, #212]
	str r5, [r1, #216]
	str r5, [r1, #220]
	str r5, [r1, #224]
	str r5, [r1, #228]
	str r5, [r1, #232]
	str r5, [r1, #236]
	str r5, [r1, #240]
	str r5, [r1, #244]
	str r5, [r1, #248]
	str r5, [r1, #252]
	bge label5
	add r1, r1, #256
	b label2
label5:
	add r1, r0, #64
	mov r7, #1
	mov r3, r7
	cmp r7, #16
	bge label9
.p2align 4
label10:
	sub r5, r3, #1
	add r6, r1, #4
	mov r7, #1
	add r2, r0, r5, lsl #6
	sub r9, r7, #1
	mov r8, sp
	ldr r8, [r8, r5, lsl #2]
	ldr r10, [r4, r9, lsl #2]
	cmp r8, r10
	beq label29
	ldr r10, [r2, r7, lsl #2]
	ldr r9, [r1, r9, lsl #2]
	cmp r10, r9
	movle r10, r9
	str r10, [r6, #0]
	ldr r10, [r4, r7, lsl #2]
	add r9, r7, #1
	cmp r8, r10
	bne label159
.p2align 4
label15:
	ldr r10, [r2, r7, lsl #2]
	add r10, r10, #1
	str r10, [r1, r9, lsl #2]
	ldr r11, [r4, r9, lsl #2]
	add r10, r7, #2
	cmp r8, r11
	beq label26
	ldr r11, [r2, r10, lsl #2]
	ldr r9, [r1, r9, lsl #2]
	cmp r11, r9
	movle r11, r9
	str r11, [r1, r10, lsl #2]
	ldr r11, [r4, r10, lsl #2]
	add r9, r7, #3
	cmp r8, r11
	beq label25
	b label190
.p2align 4
label22:
	ldr r2, [r2, r9, lsl #2]
	cmp r3, #16
	add r2, r2, #1
	str r2, [r1, r7, lsl #2]
	add r1, r1, #64
	blt label10
	b label9
.p2align 4
label23:
	add r6, r6, #16
	sub r9, r7, #1
	mov r8, sp
	ldr r8, [r8, r5, lsl #2]
	ldr r10, [r4, r9, lsl #2]
	cmp r8, r10
	beq label29
	b label393
.p2align 4
label25:
	ldr r10, [r2, r10, lsl #2]
	add r7, r7, #4
	cmp r7, #13
	add r10, r10, #1
	str r10, [r1, r9, lsl #2]
	blt label23
	ldr r5, [r4, r9, lsl #2]
	add r3, r3, #1
	cmp r8, r5
	beq label22
	ldr r5, [r2, r7, lsl #2]
	ldr r2, [r1, r9, lsl #2]
	cmp r5, r2
	movle r5, r2
	cmp r3, #16
	str r5, [r1, r7, lsl #2]
	add r1, r1, #64
	blt label10
	b label9
.p2align 4
label29:
	ldr r9, [r2, r9, lsl #2]
	add r9, r9, #1
	str r9, [r6, #0]
	add r9, r7, #1
	ldr r10, [r4, r7, lsl #2]
	cmp r8, r10
	beq label15
	ldr r10, [r2, r9, lsl #2]
	ldr r11, [r6, #0]
	cmp r10, r11
	movle r10, r11
	str r10, [r1, r9, lsl #2]
	add r10, r7, #2
	ldr r11, [r4, r9, lsl #2]
	cmp r8, r11
	beq label26
	ldr r11, [r2, r10, lsl #2]
	ldr r9, [r1, r9, lsl #2]
	cmp r11, r9
	movle r11, r9
	add r9, r7, #3
	str r11, [r1, r10, lsl #2]
	ldr r11, [r4, r10, lsl #2]
	cmp r8, r11
	beq label25
	ldr r11, [r2, r9, lsl #2]
	add r7, r7, #4
	ldr r10, [r1, r10, lsl #2]
	cmp r11, r10
	movle r11, r10
	cmp r7, #13
	str r11, [r1, r9, lsl #2]
	blt label23
	ldr r5, [r4, r9, lsl #2]
	add r3, r3, #1
	cmp r8, r5
	beq label22
	ldr r5, [r2, r7, lsl #2]
	ldr r2, [r1, r9, lsl #2]
	cmp r5, r2
	movle r5, r2
	cmp r3, #16
	str r5, [r1, r7, lsl #2]
	add r1, r1, #64
	blt label10
	b label9
.p2align 4
label26:
	ldr r9, [r2, r9, lsl #2]
	add r9, r9, #1
	str r9, [r1, r10, lsl #2]
	add r9, r7, #3
	ldr r11, [r4, r10, lsl #2]
	cmp r8, r11
	beq label25
	ldr r11, [r2, r9, lsl #2]
	add r7, r7, #4
	ldr r10, [r1, r10, lsl #2]
	cmp r11, r10
	movle r11, r10
	cmp r7, #13
	str r11, [r1, r9, lsl #2]
	blt label23
	ldr r5, [r4, r9, lsl #2]
	add r3, r3, #1
	cmp r8, r5
	beq label22
	ldr r5, [r2, r7, lsl #2]
	ldr r2, [r1, r9, lsl #2]
	cmp r5, r2
	movle r5, r2
	cmp r3, #16
	str r5, [r1, r7, lsl #2]
	add r1, r1, #64
	blt label10
	b label9
.p2align 4
label393:
	ldr r10, [r2, r7, lsl #2]
	ldr r9, [r1, r9, lsl #2]
	cmp r10, r9
	movle r10, r9
	add r9, r7, #1
	str r10, [r6, #0]
	ldr r10, [r4, r7, lsl #2]
	cmp r8, r10
	beq label15
	ldr r10, [r2, r9, lsl #2]
	ldr r11, [r6, #0]
	cmp r10, r11
	movle r10, r11
	str r10, [r1, r9, lsl #2]
	add r10, r7, #2
	ldr r11, [r4, r9, lsl #2]
	cmp r8, r11
	beq label26
	ldr r11, [r2, r10, lsl #2]
	ldr r9, [r1, r9, lsl #2]
	cmp r11, r9
	movle r11, r9
	add r9, r7, #3
	str r11, [r1, r10, lsl #2]
	ldr r11, [r4, r10, lsl #2]
	cmp r8, r11
	beq label25
	ldr r11, [r2, r9, lsl #2]
	add r7, r7, #4
	ldr r10, [r1, r10, lsl #2]
	cmp r11, r10
	movle r11, r10
	cmp r7, #13
	str r11, [r1, r9, lsl #2]
	blt label23
	ldr r5, [r4, r9, lsl #2]
	add r3, r3, #1
	cmp r8, r5
	beq label22
	b label21
.p2align 4
label190:
	ldr r11, [r2, r9, lsl #2]
	ldr r10, [r1, r10, lsl #2]
	cmp r11, r10
	movle r11, r10
	str r11, [r1, r9, lsl #2]
	add r7, r7, #4
	cmp r7, #13
	blt label23
.p2align 4
label20:
	ldr r5, [r4, r9, lsl #2]
	add r3, r3, #1
	cmp r8, r5
	beq label22
.p2align 4
label21:
	ldr r5, [r2, r7, lsl #2]
	ldr r2, [r1, r9, lsl #2]
	cmp r5, r2
	movle r5, r2
	cmp r3, #16
	str r5, [r1, r7, lsl #2]
	add r1, r1, #64
	blt label10
	b label9
.p2align 4
label159:
	ldr r10, [r2, r9, lsl #2]
	ldr r11, [r6, #0]
	cmp r10, r11
	movle r10, r11
	str r10, [r1, r9, lsl #2]
	add r10, r7, #2
	ldr r11, [r4, r9, lsl #2]
	cmp r8, r11
	beq label26
	ldr r11, [r2, r10, lsl #2]
	ldr r9, [r1, r9, lsl #2]
	cmp r11, r9
	movle r11, r9
	add r9, r7, #3
	str r11, [r1, r10, lsl #2]
	ldr r11, [r4, r10, lsl #2]
	cmp r8, r11
	beq label25
	ldr r11, [r2, r9, lsl #2]
	add r7, r7, #4
	ldr r10, [r1, r10, lsl #2]
	cmp r11, r10
	movle r11, r10
	cmp r7, #13
	str r11, [r1, r9, lsl #2]
	blt label23
	b label20
label9:
	ldr r0, [r0, #1012]
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #124
	mov r5, #0
	mov r0, r5
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
