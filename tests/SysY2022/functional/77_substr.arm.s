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
	@ stack usage: CalleeArg[0] Local[112] RegSpill[0] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r3, #2
	mov r7, #1
	mov r8, #9
	mov r1, #4
	mov r0, #8
	mov r2, #7
	mov r4, #0
	sub sp, sp, #124
	mov r6, #3
	mov r5, sp
	str r0, [sp, #0]
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r7, [sp, #12]
	str r3, [sp, #16]
	str r2, [sp, #20]
	str r4, [sp, #24]
	str r7, [sp, #28]
	str r8, [sp, #32]
	str r6, [sp, #36]
	str r1, [sp, #40]
	str r0, [sp, #44]
	str r6, [sp, #48]
	str r2, [sp, #52]
	str r4, [sp, #56]
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
	str r4, [sp, #104]
	str r7, [sp, #108]
	str r0, [sp, #112]
	mov r0, #43
	bl putint
	mov r0, #10
	bl putch
	mov r1, r4
	movw r0, #:lower16:p
	movt r0, #:upper16:p
.p2align 4
label2:
	mov r4, #0
	add r1, r1, #64
	str r4, [r0, #0]
	cmp r1, #256
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	str r4, [r0, #16]
	str r4, [r0, #20]
	str r4, [r0, #24]
	str r4, [r0, #28]
	str r4, [r0, #32]
	str r4, [r0, #36]
	str r4, [r0, #40]
	str r4, [r0, #44]
	str r4, [r0, #48]
	str r4, [r0, #52]
	str r4, [r0, #56]
	str r4, [r0, #60]
	str r4, [r0, #64]
	str r4, [r0, #68]
	str r4, [r0, #72]
	str r4, [r0, #76]
	str r4, [r0, #80]
	str r4, [r0, #84]
	str r4, [r0, #88]
	str r4, [r0, #92]
	str r4, [r0, #96]
	str r4, [r0, #100]
	str r4, [r0, #104]
	str r4, [r0, #108]
	str r4, [r0, #112]
	str r4, [r0, #116]
	str r4, [r0, #120]
	str r4, [r0, #124]
	str r4, [r0, #128]
	str r4, [r0, #132]
	str r4, [r0, #136]
	str r4, [r0, #140]
	str r4, [r0, #144]
	str r4, [r0, #148]
	str r4, [r0, #152]
	str r4, [r0, #156]
	str r4, [r0, #160]
	str r4, [r0, #164]
	str r4, [r0, #168]
	str r4, [r0, #172]
	str r4, [r0, #176]
	str r4, [r0, #180]
	str r4, [r0, #184]
	str r4, [r0, #188]
	str r4, [r0, #192]
	str r4, [r0, #196]
	str r4, [r0, #200]
	str r4, [r0, #204]
	str r4, [r0, #208]
	str r4, [r0, #212]
	str r4, [r0, #216]
	str r4, [r0, #220]
	str r4, [r0, #224]
	str r4, [r0, #228]
	str r4, [r0, #232]
	str r4, [r0, #236]
	str r4, [r0, #240]
	str r4, [r0, #244]
	str r4, [r0, #248]
	str r4, [r0, #252]
	bge label132
	add r0, r0, #256
	b label2
label132:
	add r1, r5, #4
	movw r0, #:lower16:p
	movt r0, #:upper16:p
	mov r7, #1
	add r0, r0, #64
	mov r2, r7
	sub r3, r0, #64
	cmp r7, #16
	blt label12
	b label11
.p2align 4
label354:
	ldr r3, [r4, #12]
	add r2, r2, #1
	cmp r5, r3
	bne label365
.p2align 4
label28:
	ldr r3, [r8, #12]
	add r1, r1, #4
	add r0, r0, #64
	cmp r2, #16
	add r3, r3, #1
	str r3, [r6, #16]
	sub r3, r0, #64
	bge label11
.p2align 4
label12:
	add r4, sp, #64
	mov r7, #1
	add r4, r4, #4
	ldr r5, [r1, #-4]
	add r6, r0, r7, lsl #2
	add r8, r3, r7, lsl #2
	ldr r9, [r4, #-4]
	cmp r5, r9
	beq label16
	ldr r10, [r3, r7, lsl #2]
	add r9, r0, r7, lsl #2
	ldr r11, [r9, #-4]
	cmp r10, r11
	movle r10, r11
	str r10, [r9, #0]
	ldr r9, [r4, #0]
	cmp r5, r9
	bne label362
.p2align 4
label18:
	ldr r9, [r3, r7, lsl #2]
	add r9, r9, #1
	str r9, [r6, #4]
	ldr r9, [r4, #4]
	cmp r5, r9
	beq label29
	ldr r10, [r8, #8]
	ldr r9, [r6, #4]
	cmp r10, r9
	movle r10, r9
	str r10, [r6, #8]
	ldr r9, [r4, #8]
	cmp r5, r9
	bne label188
.p2align 4
label22:
	ldr r9, [r8, #8]
	add r7, r7, #4
	cmp r7, #13
	add r9, r9, #1
	str r9, [r6, #12]
	bge label354
.p2align 4
label25:
	add r4, r4, #16
	ldr r5, [r1, #-4]
	add r6, r0, r7, lsl #2
	add r8, r3, r7, lsl #2
	ldr r9, [r4, #-4]
	cmp r5, r9
	bne label356
.p2align 4
label16:
	ldr r9, [r8, #-4]
	add r9, r9, #1
	str r9, [r0, r7, lsl #2]
	ldr r9, [r4, #0]
	cmp r5, r9
	beq label18
	ldr r9, [r8, #4]
	ldr r10, [r0, r7, lsl #2]
	cmp r9, r10
	movle r9, r10
	str r9, [r6, #4]
	ldr r9, [r4, #4]
	cmp r5, r9
	bne label363
.p2align 4
label29:
	ldr r9, [r8, #4]
	add r9, r9, #1
	str r9, [r6, #8]
	ldr r9, [r4, #8]
	cmp r5, r9
	beq label22
	ldr r10, [r8, #12]
	add r7, r7, #4
	ldr r9, [r6, #8]
	cmp r10, r9
	movle r10, r9
	cmp r7, #13
	str r10, [r6, #12]
	blt label25
	ldr r3, [r4, #12]
	add r2, r2, #1
	cmp r5, r3
	beq label28
	ldr r3, [r8, #16]
	add r1, r1, #4
	add r0, r0, #64
	ldr r4, [r6, #12]
	cmp r3, r4
	movle r3, r4
	cmp r2, #16
	str r3, [r6, #16]
	sub r3, r0, #64
	blt label12
	b label11
.p2align 4
label356:
	ldr r10, [r3, r7, lsl #2]
	add r9, r0, r7, lsl #2
	ldr r11, [r9, #-4]
	cmp r10, r11
	movle r10, r11
	str r10, [r9, #0]
	ldr r9, [r4, #0]
	cmp r5, r9
	beq label18
	ldr r9, [r8, #4]
	ldr r10, [r0, r7, lsl #2]
	cmp r9, r10
	movle r9, r10
	str r9, [r6, #4]
	ldr r9, [r4, #4]
	cmp r5, r9
	beq label29
	ldr r10, [r8, #8]
	ldr r9, [r6, #4]
	cmp r10, r9
	movle r10, r9
	str r10, [r6, #8]
	ldr r9, [r4, #8]
	cmp r5, r9
	beq label22
	ldr r10, [r8, #12]
	add r7, r7, #4
	ldr r9, [r6, #8]
	cmp r10, r9
	movle r10, r9
	cmp r7, #13
	str r10, [r6, #12]
	blt label25
	ldr r3, [r4, #12]
	add r2, r2, #1
	cmp r5, r3
	beq label28
	b label370
.p2align 4
label363:
	ldr r10, [r8, #8]
	ldr r9, [r6, #4]
	cmp r10, r9
	movle r10, r9
	str r10, [r6, #8]
	ldr r9, [r4, #8]
	cmp r5, r9
	beq label22
	ldr r10, [r8, #12]
	add r7, r7, #4
	ldr r9, [r6, #8]
	cmp r10, r9
	movle r10, r9
	cmp r7, #13
	str r10, [r6, #12]
	blt label25
	ldr r3, [r4, #12]
	add r2, r2, #1
	cmp r5, r3
	beq label28
	b label370
.p2align 4
label362:
	ldr r9, [r8, #4]
	ldr r10, [r0, r7, lsl #2]
	cmp r9, r10
	movle r9, r10
	str r9, [r6, #4]
	ldr r9, [r4, #4]
	cmp r5, r9
	beq label29
	ldr r10, [r8, #8]
	ldr r9, [r6, #4]
	cmp r10, r9
	movle r10, r9
	str r10, [r6, #8]
	ldr r9, [r4, #8]
	cmp r5, r9
	beq label22
	ldr r10, [r8, #12]
	add r7, r7, #4
	ldr r9, [r6, #8]
	cmp r10, r9
	movle r10, r9
	cmp r7, #13
	str r10, [r6, #12]
	blt label25
	b label364
.p2align 4
label188:
	ldr r10, [r8, #12]
	add r7, r7, #4
	ldr r9, [r6, #8]
	cmp r10, r9
	movle r10, r9
	cmp r7, #13
	str r10, [r6, #12]
	blt label25
.p2align 4
label364:
	ldr r3, [r4, #12]
	add r2, r2, #1
	cmp r5, r3
	beq label28
.p2align 4
label370:
	ldr r3, [r8, #16]
	add r1, r1, #4
	add r0, r0, #64
	ldr r4, [r6, #12]
	cmp r3, r4
	movle r3, r4
	cmp r2, #16
	str r3, [r6, #16]
	sub r3, r0, #64
	blt label12
label11:
	movw r0, #:lower16:p
	movt r0, #:upper16:p
	ldr r0, [r0, #1012]
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #124
	mov r4, #0
	mov r0, r4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label365:
	ldr r3, [r8, #16]
	add r1, r1, #4
	add r0, r0, #64
	ldr r4, [r6, #12]
	cmp r3, r4
	movle r3, r4
	cmp r2, #16
	str r3, [r6, #16]
	sub r3, r0, #64
	blt label12
	b label11
