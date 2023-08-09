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
	mov r3, #2
	mov r2, #7
	mov r1, #4
	mov r0, #8
	sub sp, sp, #124
	mov r5, #0
	mov r7, #1
	mov r8, #3
	str r0, [sp, #0]
	add r4, sp, #64
	mov r9, #9
	str r2, [sp, #4]
	mov r6, sp
	str r1, [sp, #8]
	str r7, [sp, #12]
	str r3, [sp, #16]
	str r2, [sp, #20]
	str r5, [sp, #24]
	str r7, [sp, #28]
	str r9, [sp, #32]
	str r8, [sp, #36]
	str r1, [sp, #40]
	str r0, [sp, #44]
	str r8, [sp, #48]
	str r2, [sp, #52]
	str r5, [sp, #56]
	str r8, [sp, #64]
	str r9, [sp, #68]
	str r2, [sp, #72]
	str r7, [sp, #76]
	str r1, [sp, #80]
	str r3, [sp, #84]
	str r1, [sp, #88]
	mov r1, #6
	str r8, [sp, #92]
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
	movw r1, #:lower16:p
	movt r1, #:upper16:p
	mov r0, r1
	b label2
label31:
	add r0, r0, #256
.p2align 4
label2:
	mov r5, #0
	add r2, r2, #64
	str r5, [r0, #0]
	cmp r2, #256
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
	blt label31
	add r2, r6, #4
	add r0, r1, #64
	mov r7, #1
	mov r5, r7
	sub r3, r0, #64
	cmp r7, #16
	blt label10
	b label30
.p2align 4
label27:
	ldr r10, [r3, r7, lsl #2]
	add r10, r10, #1
	str r10, [r0, r9, lsl #2]
	add r10, r7, #2
	ldr r11, [r4, r9, lsl #2]
	cmp r8, r11
	beq label25
	ldr r11, [r3, r10, lsl #2]
	ldr r9, [r0, r9, lsl #2]
	cmp r11, r9
	movle r11, r9
	add r9, r7, #3
	str r11, [r0, r10, lsl #2]
	ldr r11, [r4, r10, lsl #2]
	cmp r8, r11
	beq label24
	ldr r11, [r3, r9, lsl #2]
	add r7, r7, #4
	ldr r10, [r0, r10, lsl #2]
	cmp r11, r10
	movle r11, r10
	cmp r7, #13
	str r11, [r0, r9, lsl #2]
	blt label20
	ldr r6, [r4, r9, lsl #2]
	add r5, r5, #1
	cmp r8, r6
	bne label412
.p2align 4
label23:
	ldr r3, [r3, r9, lsl #2]
	add r2, r2, #4
	cmp r5, #16
	add r3, r3, #1
	str r3, [r0, r7, lsl #2]
	add r0, r0, #64
	sub r3, r0, #64
	bge label30
.p2align 4
label10:
	add r6, r0, #4
	mov r7, #1
	sub r9, r7, #1
	ldr r8, [r2, #-4]
	ldr r10, [r4, r9, lsl #2]
	cmp r8, r10
	beq label29
	ldr r10, [r3, r7, lsl #2]
	ldr r9, [r0, r9, lsl #2]
	cmp r10, r9
	movle r10, r9
	str r10, [r6, #0]
	ldr r10, [r4, r7, lsl #2]
	add r9, r7, #1
	cmp r8, r10
	beq label27
	ldr r11, [r3, r9, lsl #2]
	ldr r10, [r6, #0]
	cmp r11, r10
	movle r11, r10
	str r11, [r0, r9, lsl #2]
	ldr r11, [r4, r9, lsl #2]
	add r10, r7, #2
	cmp r8, r11
	beq label25
	ldr r11, [r3, r10, lsl #2]
	ldr r9, [r0, r9, lsl #2]
	cmp r11, r9
	movle r11, r9
	str r11, [r0, r10, lsl #2]
	ldr r11, [r4, r10, lsl #2]
	add r9, r7, #3
	cmp r8, r11
	beq label24
	ldr r11, [r3, r9, lsl #2]
	ldr r10, [r0, r10, lsl #2]
	cmp r11, r10
	movle r11, r10
	str r11, [r0, r9, lsl #2]
	add r7, r7, #4
	cmp r7, #13
	blt label20
	ldr r6, [r4, r9, lsl #2]
	add r5, r5, #1
	cmp r8, r6
	beq label23
	b label390
.p2align 4
label29:
	ldr r9, [r3, r9, lsl #2]
	add r9, r9, #1
	str r9, [r6, #0]
	add r9, r7, #1
	ldr r10, [r4, r7, lsl #2]
	cmp r8, r10
	beq label27
	ldr r11, [r3, r9, lsl #2]
	ldr r10, [r6, #0]
	cmp r11, r10
	movle r11, r10
	add r10, r7, #2
	str r11, [r0, r9, lsl #2]
	ldr r11, [r4, r9, lsl #2]
	cmp r8, r11
	beq label25
	ldr r11, [r3, r10, lsl #2]
	ldr r9, [r0, r9, lsl #2]
	cmp r11, r9
	movle r11, r9
	add r9, r7, #3
	str r11, [r0, r10, lsl #2]
	ldr r11, [r4, r10, lsl #2]
	cmp r8, r11
	bne label411
.p2align 4
label24:
	ldr r10, [r3, r10, lsl #2]
	add r7, r7, #4
	cmp r7, #13
	add r10, r10, #1
	str r10, [r0, r9, lsl #2]
	bge label394
.p2align 4
label20:
	add r6, r6, #16
	sub r9, r7, #1
	ldr r8, [r2, #-4]
	ldr r10, [r4, r9, lsl #2]
	cmp r8, r10
	beq label29
	ldr r10, [r3, r7, lsl #2]
	ldr r9, [r0, r9, lsl #2]
	cmp r10, r9
	movle r10, r9
	add r9, r7, #1
	str r10, [r6, #0]
	ldr r10, [r4, r7, lsl #2]
	cmp r8, r10
	beq label27
	ldr r11, [r3, r9, lsl #2]
	ldr r10, [r6, #0]
	cmp r11, r10
	movle r11, r10
	add r10, r7, #2
	str r11, [r0, r9, lsl #2]
	ldr r11, [r4, r9, lsl #2]
	cmp r8, r11
	beq label25
	ldr r11, [r3, r10, lsl #2]
	ldr r9, [r0, r9, lsl #2]
	cmp r11, r9
	movle r11, r9
	add r9, r7, #3
	str r11, [r0, r10, lsl #2]
	ldr r11, [r4, r10, lsl #2]
	cmp r8, r11
	beq label24
	ldr r11, [r3, r9, lsl #2]
	add r7, r7, #4
	ldr r10, [r0, r10, lsl #2]
	cmp r11, r10
	movle r11, r10
	cmp r7, #13
	str r11, [r0, r9, lsl #2]
	blt label20
	ldr r6, [r4, r9, lsl #2]
	add r5, r5, #1
	cmp r8, r6
	beq label23
label390:
	ldr r3, [r3, r7, lsl #2]
	add r2, r2, #4
	ldr r6, [r0, r9, lsl #2]
	cmp r3, r6
	movle r3, r6
	cmp r5, #16
	str r3, [r0, r7, lsl #2]
	add r0, r0, #64
	sub r3, r0, #64
	blt label10
	b label30
.p2align 4
label25:
	ldr r9, [r3, r9, lsl #2]
	add r9, r9, #1
	str r9, [r0, r10, lsl #2]
	add r9, r7, #3
	ldr r11, [r4, r10, lsl #2]
	cmp r8, r11
	beq label24
	ldr r11, [r3, r9, lsl #2]
	add r7, r7, #4
	ldr r10, [r0, r10, lsl #2]
	cmp r11, r10
	movle r11, r10
	cmp r7, #13
	str r11, [r0, r9, lsl #2]
	blt label20
	ldr r6, [r4, r9, lsl #2]
	add r5, r5, #1
	cmp r8, r6
	beq label23
	ldr r3, [r3, r7, lsl #2]
	add r2, r2, #4
	ldr r6, [r0, r9, lsl #2]
	cmp r3, r6
	movle r3, r6
	cmp r5, #16
	str r3, [r0, r7, lsl #2]
	add r0, r0, #64
	sub r3, r0, #64
	blt label10
	b label30
.p2align 4
label394:
	ldr r6, [r4, r9, lsl #2]
	add r5, r5, #1
	cmp r8, r6
	beq label23
	ldr r3, [r3, r7, lsl #2]
	add r2, r2, #4
	ldr r6, [r0, r9, lsl #2]
	cmp r3, r6
	movle r3, r6
	cmp r5, #16
	str r3, [r0, r7, lsl #2]
	add r0, r0, #64
	sub r3, r0, #64
	blt label10
	b label30
.p2align 4
label411:
	ldr r11, [r3, r9, lsl #2]
	add r7, r7, #4
	ldr r10, [r0, r10, lsl #2]
	cmp r11, r10
	movle r11, r10
	cmp r7, #13
	str r11, [r0, r9, lsl #2]
	blt label20
	ldr r6, [r4, r9, lsl #2]
	add r5, r5, #1
	cmp r8, r6
	beq label23
	ldr r3, [r3, r7, lsl #2]
	add r2, r2, #4
	ldr r6, [r0, r9, lsl #2]
	cmp r3, r6
	movle r3, r6
	cmp r5, #16
	str r3, [r0, r7, lsl #2]
	add r0, r0, #64
	sub r3, r0, #64
	blt label10
label30:
	ldr r0, [r1, #1012]
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #124
	mov r5, #0
	mov r0, r5
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label412:
	ldr r3, [r3, r7, lsl #2]
	add r2, r2, #4
	ldr r6, [r0, r9, lsl #2]
	cmp r3, r6
	movle r3, r6
	cmp r5, #16
	str r3, [r0, r7, lsl #2]
	add r0, r0, #64
	sub r3, r0, #64
	blt label10
	b label30
