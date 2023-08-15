.arch armv7ve
.data
.bss
.align 8
oprs:
	.zero	1024
.align 8
ops:
	.zero	1024
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
	bl getint
	mov r4, r0
	bl getch
.p2align 4
label2:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	bne label2
	sub r5, r0, #48
	cmp r5, #10
	bhs label102
.p2align 4
label103:
	bl getch
	sub r1, r0, #48
	cmp r1, #10
	bhs label507
	add r0, r5, r5, lsl #2
	add r5, r1, r0, lsl #1
	b label103
label102:
	bl getch
	mov r2, #1
	mov r3, #0
	mov r1, r3
label4:
	cmp r4, #0
	beq label101
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	mov r3, #0
	mov r5, r3
	b label13
.p2align 4
label99:
	add r5, r5, #256
.p2align 4
label17:
	mov r3, #0
	add r6, r6, #64
	str r3, [r5, #0]
	cmp r6, #256
	str r3, [r5, #4]
	str r3, [r5, #8]
	str r3, [r5, #12]
	str r3, [r5, #16]
	str r3, [r5, #20]
	str r3, [r5, #24]
	str r3, [r5, #28]
	str r3, [r5, #32]
	str r3, [r5, #36]
	str r3, [r5, #40]
	str r3, [r5, #44]
	str r3, [r5, #48]
	str r3, [r5, #52]
	str r3, [r5, #56]
	str r3, [r5, #60]
	str r3, [r5, #64]
	str r3, [r5, #68]
	str r3, [r5, #72]
	str r3, [r5, #76]
	str r3, [r5, #80]
	str r3, [r5, #84]
	str r3, [r5, #88]
	str r3, [r5, #92]
	str r3, [r5, #96]
	str r3, [r5, #100]
	str r3, [r5, #104]
	str r3, [r5, #108]
	str r3, [r5, #112]
	str r3, [r5, #116]
	str r3, [r5, #120]
	str r3, [r5, #124]
	str r3, [r5, #128]
	str r3, [r5, #132]
	str r3, [r5, #136]
	str r3, [r5, #140]
	str r3, [r5, #144]
	str r3, [r5, #148]
	str r3, [r5, #152]
	str r3, [r5, #156]
	str r3, [r5, #160]
	str r3, [r5, #164]
	str r3, [r5, #168]
	str r3, [r5, #172]
	str r3, [r5, #176]
	str r3, [r5, #180]
	str r3, [r5, #184]
	str r3, [r5, #188]
	str r3, [r5, #192]
	str r3, [r5, #196]
	str r3, [r5, #200]
	str r3, [r5, #204]
	str r3, [r5, #208]
	str r3, [r5, #212]
	str r3, [r5, #216]
	str r3, [r5, #220]
	str r3, [r5, #224]
	str r3, [r5, #228]
	str r3, [r5, #232]
	str r3, [r5, #236]
	str r3, [r5, #240]
	str r3, [r5, #244]
	str r3, [r5, #248]
	str r3, [r5, #252]
	blt label99
	cmp r2, #0
	beq label265
	mov r5, r0
	mov r6, r1
	mov r7, r2
.p2align 4
label95:
	mov r0, #112
	bl putch
	mov r0, #97
	bl putch
	mov r0, #110
	bl putch
	mov r0, #105
	bl putch
	mov r0, #99
	bl putch
	mov r0, #33
	bl putch
	mov r0, #10
	bl putch
	mvn r0, #0
.p2align 4
label90:
	bl putint
	mov r0, #10
	bl putch
	subs r4, r4, #1
	beq label101
	mov r0, r5
	mov r1, r6
	mov r2, r7
	mov r3, #0
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	mov r5, r3
.p2align 4
label13:
	mov r3, #0
	add r5, r5, #64
	str r3, [r6, #0]
	cmp r5, #256
	str r3, [r6, #4]
	str r3, [r6, #8]
	str r3, [r6, #12]
	str r3, [r6, #16]
	str r3, [r6, #20]
	str r3, [r6, #24]
	str r3, [r6, #28]
	str r3, [r6, #32]
	str r3, [r6, #36]
	str r3, [r6, #40]
	str r3, [r6, #44]
	str r3, [r6, #48]
	str r3, [r6, #52]
	str r3, [r6, #56]
	str r3, [r6, #60]
	str r3, [r6, #64]
	str r3, [r6, #68]
	str r3, [r6, #72]
	str r3, [r6, #76]
	str r3, [r6, #80]
	str r3, [r6, #84]
	str r3, [r6, #88]
	str r3, [r6, #92]
	str r3, [r6, #96]
	str r3, [r6, #100]
	str r3, [r6, #104]
	str r3, [r6, #108]
	str r3, [r6, #112]
	str r3, [r6, #116]
	str r3, [r6, #120]
	str r3, [r6, #124]
	str r3, [r6, #128]
	str r3, [r6, #132]
	str r3, [r6, #136]
	str r3, [r6, #140]
	str r3, [r6, #144]
	str r3, [r6, #148]
	str r3, [r6, #152]
	str r3, [r6, #156]
	str r3, [r6, #160]
	str r3, [r6, #164]
	str r3, [r6, #168]
	str r3, [r6, #172]
	str r3, [r6, #176]
	str r3, [r6, #180]
	str r3, [r6, #184]
	str r3, [r6, #188]
	str r3, [r6, #192]
	str r3, [r6, #196]
	str r3, [r6, #200]
	str r3, [r6, #204]
	str r3, [r6, #208]
	str r3, [r6, #212]
	str r3, [r6, #216]
	str r3, [r6, #220]
	str r3, [r6, #224]
	str r3, [r6, #228]
	str r3, [r6, #232]
	str r3, [r6, #236]
	str r3, [r6, #240]
	str r3, [r6, #244]
	str r3, [r6, #248]
	str r3, [r6, #252]
	bge label16
	add r6, r6, #256
	b label13
.p2align 4
label265:
	mov r5, r1
.p2align 4
label21:
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	sub r2, r0, #10
	ldr r1, [r6, #0]
	clz r2, r2
	lsr r2, r2, #5
	add r1, r1, #1
	str r1, [r6, #0]
	str r5, [r6, r1, lsl #2]
	sub r1, r0, #32
	clz r1, r1
	lsr r1, r1, #5
	orrs r1, r1, r2
	beq label275
.p2align 4
label24:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	bne label24
.p2align 4
label275:
	mov r7, r0
	sub r0, r0, #48
	cmp r0, #10
	bhs label27
	mov r5, r0
.p2align 4
label87:
	bl getch
	mov r1, r0
	sub r0, r0, #48
	cmp r0, #10
	bhs label491
	add r1, r5, r5, lsl #2
	add r5, r0, r1, lsl #1
	b label87
.p2align 4
label16:
	movw r5, #:lower16:ops
	movt r5, #:upper16:ops
	mov r3, #0
	mov r6, r3
	b label17
.p2align 4
label491:
	sub r0, r1, #32
	sub r2, r1, #10
	clz r0, r0
	clz r2, r2
	lsr r0, r0, #5
	lsr r2, r2, #5
	orrs r0, r0, r2
	beq label737
.p2align 4
label86:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	bne label86
	sub r0, r0, #48
	cmp r0, #10
	blo label415
.p2align 4
label64:
	bl getch
	mov r2, #1
	mov r1, r0
	mov r0, r5
	movw r5, #:lower16:ops
	movt r5, #:upper16:ops
	ldr r6, [r5, #0]
	cmp r6, #0
	bne label70
	b label69
.p2align 4
label72:
	cmp r3, #45
	bne label444
	sub r3, r7, r5
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	movw r5, #:lower16:ops
	movt r5, #:upper16:ops
	ldr r6, [r5, #0]
	cmp r6, #0
	beq label69
.p2align 4
label70:
	movw r5, #:lower16:ops
	movt r5, #:upper16:ops
	ldr r3, [r5, r6, lsl #2]
	sub r6, r6, #1
	str r6, [r5, #0]
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	cmp r3, #43
	ldr r8, [r6, #0]
	sub r9, r8, #1
	add r7, r6, r8, lsl #2
	sub r8, r8, #2
	ldr r5, [r7, #0]
	str r9, [r6, #0]
	ldr r7, [r7, #-4]
	str r8, [r6, #0]
	bne label72
	add r3, r5, r7
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	movw r5, #:lower16:ops
	movt r5, #:upper16:ops
	ldr r6, [r5, #0]
	cmp r6, #0
	bne label70
.p2align 4
label69:
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	mov r5, r1
	mov r7, r2
	ldr r3, [r6, #0]
	ldr r3, [r6, r3, lsl #2]
	mov r6, r0
	mov r0, r3
	b label90
label737:
	sub r0, r1, #48
	cmp r0, #10
	bhs label64
.p2align 4
label415:
	mov r5, r0
.p2align 4
label83:
	bl getch
	mov r1, r0
	sub r0, r0, #48
	cmp r0, #10
	bhs label476
	add r1, r5, r5, lsl #2
	add r5, r0, r1, lsl #1
	b label83
.p2align 4
label444:
	cmp r3, #42
	bne label746
	mul r3, r5, r7
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	movw r5, #:lower16:ops
	movt r5, #:upper16:ops
	ldr r6, [r5, #0]
	cmp r6, #0
	bne label70
	b label69
.p2align 4
label746:
	cmp r3, #47
	bne label761
	sdiv r3, r7, r5
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	movw r5, #:lower16:ops
	movt r5, #:upper16:ops
	ldr r6, [r5, #0]
	cmp r6, #0
	bne label70
	b label69
.p2align 4
label761:
	cmp r3, #37
	beq label78
	mov r3, #0
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	movw r5, #:lower16:ops
	movt r5, #:upper16:ops
	ldr r6, [r5, #0]
	cmp r6, #0
	bne label70
	b label69
.p2align 4
label27:
	bl getch
	sub r2, r7, #45
	sub r1, r7, #43
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	bne label295
	sub r1, r7, #42
	sub r2, r7, #47
	mov r8, #0
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orr r1, r1, r2
	sub r2, r7, #37
	clz r2, r2
	lsr r2, r2, #5
	orrs r1, r1, r2
	movne r8, #20
	cmp r8, #0
	bne label304
.p2align 4
label305:
	mov r1, r0
	sub r2, r0, #10
	sub r0, r0, #32
	clz r2, r2
	clz r0, r0
	lsr r2, r2, #5
	lsr r0, r0, #5
	orrs r0, r0, r2
	bne label86
	b label737
.p2align 4
label304:
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	beq label32
.p2align 4
label58:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	bne label58
	sub r0, r0, #48
	cmp r0, #10
	bhs label57
.p2align 4
label316:
	mov r5, r0
.p2align 4
label34:
	bl getch
	mov r1, r0
	sub r0, r0, #48
	cmp r0, #10
	bhs label321
	add r1, r5, r5, lsl #2
	add r5, r0, r1, lsl #1
	b label34
.p2align 4
label295:
	mov r8, #10
	cmp r8, #0
	beq label305
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	bne label58
	b label32
.p2align 4
label57:
	bl getch
	mov r2, r5
	mov r1, r0
	movw r5, #:lower16:ops
	movt r5, #:upper16:ops
	mov r0, #1
	ldr r6, [r5, #0]
	cmp r6, #0
	add r9, r5, r6, lsl #2
	bne label41
	add r3, r6, #1
	cmp r0, #0
	str r3, [r5, #0]
	str r7, [r9, #4]
	beq label396
	b label757
.p2align 4
label43:
	add r3, r5, r9
.p2align 4
label44:
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	movw r5, #:lower16:ops
	movt r5, #:upper16:ops
	ldr r6, [r5, #0]
	cmp r6, #0
	add r9, r5, r6, lsl #2
	beq label741
.p2align 4
label41:
	movw r5, #:lower16:ops
	movt r5, #:upper16:ops
	ldr r3, [r5, r6, lsl #2]
	sub r10, r3, #45
	sub r5, r3, #43
	clz r10, r10
	clz r5, r5
	lsr r10, r10, #5
	lsr r5, r5, #5
	orrs r5, r5, r10
	beq label55
	cmp r8, #11
	blt label42
label56:
	add r3, r6, #1
	movw r5, #:lower16:ops
	movt r5, #:upper16:ops
	cmp r0, #0
	str r3, [r5, #0]
	str r7, [r9, #4]
	beq label396
	b label757
.p2align 4
label55:
	sub r5, r3, #42
	sub r10, r3, #47
	cmp r8, #1
	clz r5, r5
	clz r10, r10
	lsr r5, r5, #5
	lsr r10, r10, #5
	orr r5, r5, r10
	sub r10, r3, #37
	clz r10, r10
	lsr r10, r10, #5
	orr r5, r5, r10
	mov r10, #0
	movwlt r10, #1
	orrs r5, r5, r10
	beq label56
.p2align 4
label42:
	sub r6, r6, #1
	movw r5, #:lower16:ops
	movt r5, #:upper16:ops
	cmp r3, #43
	str r6, [r5, #0]
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	ldr r10, [r6, #0]
	sub r11, r10, #1
	add r9, r6, r10, lsl #2
	sub r10, r10, #2
	ldr r5, [r9, #0]
	str r11, [r6, #0]
	ldr r9, [r9, #-4]
	str r10, [r6, #0]
	beq label43
	cmp r3, #45
	beq label47
	cmp r3, #42
	bne label50
	mul r3, r5, r9
	b label44
.p2align 4
label321:
	mov r2, r5
	mov r3, #0
	movw r5, #:lower16:ops
	movt r5, #:upper16:ops
	mov r0, r3
	ldr r6, [r5, #0]
	cmp r6, #0
	add r9, r5, r6, lsl #2
	bne label41
	add r3, r6, #1
	cmp r0, #0
	str r3, [r5, #0]
	str r7, [r9, #4]
	beq label396
	b label757
label741:
	add r3, r6, #1
	movw r5, #:lower16:ops
	movt r5, #:upper16:ops
	cmp r0, #0
	str r3, [r5, #0]
	str r7, [r9, #4]
	bne label757
.p2align 4
label396:
	mov r0, r1
	mov r5, r2
	b label21
.p2align 4
label757:
	mov r5, r1
	mov r6, r2
	mov r7, r0
	b label95
label47:
	sub r3, r9, r5
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	movw r5, #:lower16:ops
	movt r5, #:upper16:ops
	ldr r6, [r5, #0]
	cmp r6, #0
	add r9, r5, r6, lsl #2
	bne label41
	add r3, r6, #1
	cmp r0, #0
	str r3, [r5, #0]
	str r7, [r9, #4]
	beq label396
	b label757
label50:
	cmp r3, #47
	bne label51
	sdiv r3, r9, r5
	b label44
label101:
	mov r3, #0
	add sp, sp, #4
	mov r0, r3
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label78:
	sdiv r3, r7, r5
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	mls r3, r3, r5, r7
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	movw r5, #:lower16:ops
	movt r5, #:upper16:ops
	ldr r6, [r5, #0]
	cmp r6, #0
	bne label70
	b label69
label51:
	cmp r3, #37
	beq label52
	mov r3, #0
	b label44
.p2align 4
label476:
	mov r0, r5
	mov r3, #0
	movw r5, #:lower16:ops
	movt r5, #:upper16:ops
	mov r2, r3
	ldr r6, [r5, #0]
	cmp r6, #0
	bne label70
	b label69
label32:
	sub r0, r0, #48
	cmp r0, #10
	blo label316
	b label57
label52:
	sdiv r3, r9, r5
	mls r3, r3, r5, r9
	b label44
label507:
	mov r1, r5
	mov r3, #0
	mov r2, r3
	b label4
