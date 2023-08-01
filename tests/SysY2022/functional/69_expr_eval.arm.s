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
	sub sp, sp, #12
	bl getint
	mov r4, r0
	bl getch
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	str r6, [sp, #4]
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	str r6, [sp, #0]
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
	bhs label7
.p2align 4
label4:
	bl getch
	sub r1, r0, #48
	cmp r1, #10
	bhs label127
	add r0, r5, r5, lsl #2
	add r5, r1, r0, lsl #1
	b label4
label127:
	mov r1, r0
	mov r2, #0
	mov r0, r5
label8:
	cmp r4, #0
	beq label105
	mov r3, #0
.p2align 4
label17:
	ldr r6, [sp, #4]
	add r5, r6, r3, lsl #2
	mov r6, #0
	str r6, [r5, #0]
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	str r6, [r5, #16]
	str r6, [r5, #20]
	str r6, [r5, #24]
	str r6, [r5, #28]
	str r6, [r5, #32]
	str r6, [r5, #36]
	str r6, [r5, #40]
	str r6, [r5, #44]
	str r6, [r5, #48]
	str r6, [r5, #52]
	str r6, [r5, #56]
	str r6, [r5, #60]
	str r6, [r5, #64]
	str r6, [r5, #68]
	str r6, [r5, #72]
	str r6, [r5, #76]
	str r6, [r5, #80]
	str r6, [r5, #84]
	str r6, [r5, #88]
	str r6, [r5, #92]
	str r6, [r5, #96]
	str r6, [r5, #100]
	str r6, [r5, #104]
	str r6, [r5, #108]
	str r6, [r5, #112]
	str r6, [r5, #116]
	str r6, [r5, #120]
	str r6, [r5, #124]
	str r6, [r5, #128]
	str r6, [r5, #132]
	str r6, [r5, #136]
	str r6, [r5, #140]
	str r6, [r5, #144]
	str r6, [r5, #148]
	str r6, [r5, #152]
	str r6, [r5, #156]
	str r6, [r5, #160]
	str r6, [r5, #164]
	str r6, [r5, #168]
	str r6, [r5, #172]
	str r6, [r5, #176]
	str r6, [r5, #180]
	str r6, [r5, #184]
	str r6, [r5, #188]
	str r6, [r5, #192]
	str r6, [r5, #196]
	str r6, [r5, #200]
	str r6, [r5, #204]
	str r6, [r5, #208]
	str r6, [r5, #212]
	str r6, [r5, #216]
	str r6, [r5, #220]
	str r6, [r5, #224]
	str r6, [r5, #228]
	str r6, [r5, #232]
	str r6, [r5, #236]
	str r6, [r5, #240]
	str r6, [r5, #244]
	str r6, [r5, #248]
	str r6, [r5, #252]
	add r5, r3, #64
	cmp r5, #192
	bge label19
	mov r3, r5
	b label17
.p2align 4
label19:
	ldr r6, [sp, #4]
	add r3, r3, #120
	add r5, r6, r5, lsl #2
	mov r6, #0
	str r6, [r5, #0]
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	str r6, [r5, #16]
	str r6, [r5, #20]
	str r6, [r5, #24]
	str r6, [r5, #28]
	str r6, [r5, #32]
	str r6, [r5, #36]
	str r6, [r5, #40]
	str r6, [r5, #44]
	str r6, [r5, #48]
	str r6, [r5, #52]
	str r6, [r5, #56]
	str r6, [r5, #60]
	str r6, [r5, #64]
	str r6, [r5, #68]
	str r6, [r5, #72]
	str r6, [r5, #76]
	str r6, [r5, #80]
	str r6, [r5, #84]
	str r6, [r5, #88]
	str r6, [r5, #92]
	str r6, [r5, #96]
	str r6, [r5, #100]
	str r6, [r5, #104]
	str r6, [r5, #108]
	str r6, [r5, #112]
	str r6, [r5, #116]
	str r6, [r5, #120]
	str r6, [r5, #124]
	str r6, [r5, #128]
	str r6, [r5, #132]
	str r6, [r5, #136]
	str r6, [r5, #140]
	str r6, [r5, #144]
	str r6, [r5, #148]
	str r6, [r5, #152]
	str r6, [r5, #156]
	str r6, [r5, #160]
	str r6, [r5, #164]
	str r6, [r5, #168]
	str r6, [r5, #172]
	str r6, [r5, #176]
	str r6, [r5, #180]
	str r6, [r5, #184]
	str r6, [r5, #188]
	str r6, [r5, #192]
	str r6, [r5, #196]
	str r6, [r5, #200]
	str r6, [r5, #204]
	str r6, [r5, #208]
	str r6, [r5, #212]
	str r6, [r5, #216]
	str r6, [r5, #220]
.p2align 4
label20:
	mov r5, #0
	ldr r6, [sp, #4]
	str r5, [r6, r3, lsl #2]
	add r3, r3, #1
	cmp r3, #256
	blt label20
	mov r3, #0
.p2align 4
label22:
	ldr r6, [sp, #0]
	add r5, r6, r3, lsl #2
	mov r6, #0
	str r6, [r5, #0]
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	str r6, [r5, #16]
	str r6, [r5, #20]
	str r6, [r5, #24]
	str r6, [r5, #28]
	str r6, [r5, #32]
	str r6, [r5, #36]
	str r6, [r5, #40]
	str r6, [r5, #44]
	str r6, [r5, #48]
	str r6, [r5, #52]
	str r6, [r5, #56]
	str r6, [r5, #60]
	str r6, [r5, #64]
	str r6, [r5, #68]
	str r6, [r5, #72]
	str r6, [r5, #76]
	str r6, [r5, #80]
	str r6, [r5, #84]
	str r6, [r5, #88]
	str r6, [r5, #92]
	str r6, [r5, #96]
	str r6, [r5, #100]
	str r6, [r5, #104]
	str r6, [r5, #108]
	str r6, [r5, #112]
	str r6, [r5, #116]
	str r6, [r5, #120]
	str r6, [r5, #124]
	str r6, [r5, #128]
	str r6, [r5, #132]
	str r6, [r5, #136]
	str r6, [r5, #140]
	str r6, [r5, #144]
	str r6, [r5, #148]
	str r6, [r5, #152]
	str r6, [r5, #156]
	str r6, [r5, #160]
	str r6, [r5, #164]
	str r6, [r5, #168]
	str r6, [r5, #172]
	str r6, [r5, #176]
	str r6, [r5, #180]
	str r6, [r5, #184]
	str r6, [r5, #188]
	str r6, [r5, #192]
	str r6, [r5, #196]
	str r6, [r5, #200]
	str r6, [r5, #204]
	str r6, [r5, #208]
	str r6, [r5, #212]
	str r6, [r5, #216]
	str r6, [r5, #220]
	str r6, [r5, #224]
	str r6, [r5, #228]
	str r6, [r5, #232]
	str r6, [r5, #236]
	str r6, [r5, #240]
	str r6, [r5, #244]
	str r6, [r5, #248]
	str r6, [r5, #252]
	add r5, r3, #64
	cmp r5, #192
	bge label24
	mov r3, r5
	b label22
.p2align 4
label24:
	ldr r6, [sp, #0]
	add r3, r3, #120
	add r5, r6, r5, lsl #2
	mov r6, #0
	str r6, [r5, #0]
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	str r6, [r5, #16]
	str r6, [r5, #20]
	str r6, [r5, #24]
	str r6, [r5, #28]
	str r6, [r5, #32]
	str r6, [r5, #36]
	str r6, [r5, #40]
	str r6, [r5, #44]
	str r6, [r5, #48]
	str r6, [r5, #52]
	str r6, [r5, #56]
	str r6, [r5, #60]
	str r6, [r5, #64]
	str r6, [r5, #68]
	str r6, [r5, #72]
	str r6, [r5, #76]
	str r6, [r5, #80]
	str r6, [r5, #84]
	str r6, [r5, #88]
	str r6, [r5, #92]
	str r6, [r5, #96]
	str r6, [r5, #100]
	str r6, [r5, #104]
	str r6, [r5, #108]
	str r6, [r5, #112]
	str r6, [r5, #116]
	str r6, [r5, #120]
	str r6, [r5, #124]
	str r6, [r5, #128]
	str r6, [r5, #132]
	str r6, [r5, #136]
	str r6, [r5, #140]
	str r6, [r5, #144]
	str r6, [r5, #148]
	str r6, [r5, #152]
	str r6, [r5, #156]
	str r6, [r5, #160]
	str r6, [r5, #164]
	str r6, [r5, #168]
	str r6, [r5, #172]
	str r6, [r5, #176]
	str r6, [r5, #180]
	str r6, [r5, #184]
	str r6, [r5, #188]
	str r6, [r5, #192]
	str r6, [r5, #196]
	str r6, [r5, #200]
	str r6, [r5, #204]
	str r6, [r5, #208]
	str r6, [r5, #212]
	str r6, [r5, #216]
	str r6, [r5, #220]
.p2align 4
label25:
	mov r5, #0
	ldr r6, [sp, #0]
	str r5, [r6, r3, lsl #2]
	add r3, r3, #1
	cmp r3, #256
	blt label25
	cmp r2, #0
	bne label409
.p2align 4
label408:
	mov r5, r0
	ldr r6, [sp, #4]
	sub r2, r1, #10
	clz r2, r2
	lsr r2, r2, #5
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	str r5, [r6, r0, lsl #2]
	sub r0, r1, #32
	clz r0, r0
	lsr r0, r0, #5
	orrs r0, r0, r2
	bne label95
	b label418
.p2align 4
label424:
	mov r5, r0
	b label65
.p2align 4
label33:
	bl getch
	sub r2, r7, #45
	sub r1, r7, #43
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	bne label431
	b label34
.p2align 4
label95:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	bne label95
	mov r7, r0
	sub r0, r0, #48
	cmp r0, #10
	blo label424
	b label33
.p2align 4
label65:
	bl getch
	mov r1, r0
	sub r0, r0, #48
	cmp r0, #10
	bhs label544
	add r1, r5, r5, lsl #2
	add r5, r0, r1, lsl #1
	b label65
.p2align 4
label409:
	mov r5, r1
	mov r6, r0
	mov r7, r2
	b label96
label49:
	add r3, r5, #1
	ldr r6, [sp, #0]
	cmp r2, #0
	str r3, [r6, #0]
	str r7, [r6, r3, lsl #2]
	beq label408
	b label409
.p2align 4
label96:
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
label100:
	bl putint
	mov r0, #10
	bl putch
	subs r4, r4, #1
	beq label105
	mov r1, r5
	mov r0, r6
	mov r2, r7
	mov r3, #0
	b label17
.p2align 4
label544:
	sub r0, r1, #32
	sub r2, r1, #10
	clz r0, r0
	clz r2, r2
	lsr r0, r0, #5
	lsr r2, r2, #5
	orrs r0, r0, r2
	bne label94
	b label984
.p2align 4
label76:
	bl getch
	mov r2, #1
	mov r1, r5
	ldr r6, [sp, #0]
	ldr r5, [r6, #0]
	cmp r5, #0
	bne label82
	b label991
.p2align 4
label94:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	bne label94
	sub r0, r0, #48
	cmp r0, #10
	blo label558
	b label76
.p2align 4
label82:
	ldr r6, [sp, #0]
	ldr r3, [r6, r5, lsl #2]
	sub r5, r5, #1
	str r5, [r6, #0]
	ldr r6, [sp, #4]
	cmp r3, #43
	ldr r8, [r6, #0]
	sub r9, r8, #1
	add r7, r6, r8, lsl #2
	sub r8, r8, #2
	ldr r5, [r7, #0]
	str r9, [r6, #0]
	ldr r7, [r7, #-4]
	str r8, [r6, #0]
	bne label591
	add r3, r5, r7
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	ldr r6, [sp, #0]
	ldr r5, [r6, #0]
	cmp r5, #0
	bne label82
	b label991
.p2align 4
label93:
	sub r3, r7, r5
	ldr r6, [sp, #4]
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	ldr r6, [sp, #0]
	ldr r5, [r6, #0]
	cmp r5, #0
	bne label82
	b label991
.p2align 4
label591:
	cmp r3, #45
	beq label93
	cmp r3, #42
	beq label92
	cmp r3, #47
	beq label91
	cmp r3, #37
	bne label1008
	sdiv r3, r7, r5
	mls r3, r3, r5, r7
	ldr r6, [sp, #4]
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	ldr r6, [sp, #0]
	ldr r5, [r6, #0]
	cmp r5, #0
	bne label82
.p2align 4
label991:
	ldr r6, [sp, #4]
	mov r5, r0
	mov r7, r2
	ldr r3, [r6, #0]
	ldr r3, [r6, r3, lsl #2]
	mov r6, r1
	mov r0, r3
	b label100
.p2align 4
label34:
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
	mov r1, #20
	movne r8, r1
	cmp r8, #0
	beq label441
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	bne label38
	b label39
label982:
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	beq label39
.p2align 4
label38:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	bne label38
.p2align 4
label39:
	sub r0, r0, #48
	cmp r0, #10
	bhs label44
	mov r5, r0
.p2align 4
label41:
	bl getch
	mov r1, r0
	sub r0, r0, #48
	cmp r0, #10
	bhs label464
	add r1, r5, r5, lsl #2
	add r5, r0, r1, lsl #1
	b label41
label44:
	bl getch
	mov r2, #1
	mov r1, r0
	mov r0, r5
	ldr r6, [sp, #0]
	ldr r5, [r6, #0]
	cmp r5, #0
	beq label49
.p2align 4
label50:
	ldr r6, [sp, #0]
	ldr r3, [r6, r5, lsl #2]
	sub r9, r3, #45
	sub r6, r3, #43
	clz r9, r9
	clz r6, r6
	lsr r9, r9, #5
	lsr r6, r6, #5
	orrs r6, r6, r9
	beq label63
	cmp r8, #11
	blt label51
	b label49
.p2align 4
label431:
	mov r8, #10
	cmp r8, #0
	bne label982
.p2align 4
label441:
	mov r1, r0
	sub r0, r0, #32
	sub r2, r1, #10
	clz r0, r0
	clz r2, r2
	lsr r0, r0, #5
	lsr r2, r2, #5
	orrs r0, r0, r2
	bne label94
	b label984
.p2align 4
label51:
	sub r5, r5, #1
	ldr r6, [sp, #0]
	cmp r3, #43
	str r5, [r6, #0]
	ldr r6, [sp, #4]
	ldr r10, [r6, #0]
	sub r11, r10, #1
	add r9, r6, r10, lsl #2
	sub r10, r10, #2
	ldr r5, [r9, #0]
	str r11, [r6, #0]
	ldr r9, [r9, #-4]
	str r10, [r6, #0]
	beq label62
	b label500
label63:
	sub r6, r3, #42
	sub r9, r3, #47
	cmp r8, #1
	clz r6, r6
	clz r9, r9
	lsr r6, r6, #5
	lsr r9, r9, #5
	orr r6, r6, r9
	sub r9, r3, #37
	clz r9, r9
	lsr r9, r9, #5
	orr r6, r6, r9
	mov r9, #0
	movwlt r9, #1
	orrs r6, r6, r9
	bne label51
	b label49
.p2align 4
label92:
	mul r3, r5, r7
	ldr r6, [sp, #4]
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	ldr r6, [sp, #0]
	ldr r5, [r6, #0]
	cmp r5, #0
	bne label82
	b label991
label464:
	mov r0, r5
	mov r2, #0
	ldr r6, [sp, #0]
	ldr r5, [r6, #0]
	cmp r5, #0
	bne label50
	add r3, r5, #1
	cmp r2, #0
	str r3, [r6, #0]
	str r7, [r6, r3, lsl #2]
	beq label408
	b label409
label500:
	cmp r3, #45
	bne label986
	sub r3, r9, r5
	ldr r6, [sp, #4]
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	ldr r6, [sp, #0]
	ldr r5, [r6, #0]
	cmp r5, #0
	bne label50
	b label49
label62:
	add r3, r5, r9
	ldr r6, [sp, #4]
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	ldr r6, [sp, #0]
	ldr r5, [r6, #0]
	cmp r5, #0
	bne label50
	add r3, r5, #1
	cmp r2, #0
	str r3, [r6, #0]
	str r7, [r6, r3, lsl #2]
	beq label408
	b label409
.p2align 4
label91:
	sdiv r3, r7, r5
	ldr r6, [sp, #4]
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	ldr r6, [sp, #0]
	ldr r5, [r6, #0]
	cmp r5, #0
	bne label82
	b label991
label986:
	cmp r3, #42
	beq label56
	b label57
label52:
	ldr r6, [sp, #4]
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	ldr r6, [sp, #0]
	ldr r5, [r6, #0]
	cmp r5, #0
	bne label50
	b label49
label56:
	mul r3, r5, r9
	b label52
label57:
	cmp r3, #47
	beq label60
	cmp r3, #37
	beq label59
	mov r3, #0
	b label52
label105:
	mov r0, #0
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label1008:
	mov r3, #0
	ldr r6, [sp, #4]
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	ldr r6, [sp, #0]
	ldr r5, [r6, #0]
	cmp r5, #0
	bne label82
	b label991
label418:
	mov r7, r1
	sub r0, r1, #48
	cmp r0, #10
	blo label424
	b label33
label7:
	bl getch
	mov r2, #1
	mov r1, r0
	mov r0, #0
	b label8
label984:
	mov r0, r1
	sub r0, r1, #48
	cmp r0, #10
	bhs label76
.p2align 4
label558:
	mov r5, r0
.p2align 4
label73:
	bl getch
	mov r1, r0
	sub r0, r0, #48
	cmp r0, #10
	bhs label563
	add r1, r5, r5, lsl #2
	add r5, r0, r1, lsl #1
	b label73
.p2align 4
label563:
	mov r0, r1
	mov r2, #0
	mov r1, r5
	ldr r6, [sp, #0]
	ldr r5, [r6, #0]
	cmp r5, #0
	bne label82
	b label991
label59:
	sdiv r3, r9, r5
	mls r3, r3, r5, r9
	b label52
label60:
	sdiv r3, r9, r5
	b label52
