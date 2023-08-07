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
	blo label113
	b label112
label4:
	cmp r4, #0
	beq label111
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	mov r3, #0
	mov r5, r3
	b label13
label112:
	bl getch
	mov r2, #1
	mov r3, #0
	mov r1, r3
	b label4
.p2align 4
label13:
	mov r3, #0
	str r3, [r6, #0]
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
	add r3, r5, #64
	cmp r3, #192
	bge label16
	add r6, r6, #256
	mov r5, r3
	b label13
.p2align 4
label16:
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	add r7, r6, r3, lsl #2
	mov r3, #0
	str r3, [r7, #0]
	str r3, [r7, #4]
	str r3, [r7, #8]
	str r3, [r7, #12]
	str r3, [r7, #16]
	str r3, [r7, #20]
	str r3, [r7, #24]
	str r3, [r7, #28]
	str r3, [r7, #32]
	str r3, [r7, #36]
	str r3, [r7, #40]
	str r3, [r7, #44]
	str r3, [r7, #48]
	str r3, [r7, #52]
	str r3, [r7, #56]
	str r3, [r7, #60]
	str r3, [r7, #64]
	str r3, [r7, #68]
	str r3, [r7, #72]
	str r3, [r7, #76]
	str r3, [r7, #80]
	str r3, [r7, #84]
	str r3, [r7, #88]
	str r3, [r7, #92]
	str r3, [r7, #96]
	str r3, [r7, #100]
	str r3, [r7, #104]
	str r3, [r7, #108]
	str r3, [r7, #112]
	str r3, [r7, #116]
	str r3, [r7, #120]
	str r3, [r7, #124]
	str r3, [r7, #128]
	str r3, [r7, #132]
	str r3, [r7, #136]
	str r3, [r7, #140]
	str r3, [r7, #144]
	str r3, [r7, #148]
	str r3, [r7, #152]
	str r3, [r7, #156]
	str r3, [r7, #160]
	str r3, [r7, #164]
	str r3, [r7, #168]
	str r3, [r7, #172]
	str r3, [r7, #176]
	str r3, [r7, #180]
	str r3, [r7, #184]
	str r3, [r7, #188]
	str r3, [r7, #192]
	str r3, [r7, #196]
	str r3, [r7, #200]
	str r3, [r7, #204]
	str r3, [r7, #208]
	str r3, [r7, #212]
	str r3, [r7, #216]
	str r3, [r7, #220]
	str r3, [r7, #224]
	str r3, [r7, #228]
	str r3, [r7, #232]
	str r3, [r7, #236]
	add r3, r5, #124
	add r5, r6, r3, lsl #2
	mov r6, r3
.p2align 4
label17:
	mov r3, #0
	str r3, [r5, #0]
	add r3, r6, #1
	cmp r3, #256
	bge label272
	add r5, r5, #4
	mov r6, r3
	b label17
.p2align 4
label272:
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	mov r3, #0
	mov r5, r3
.p2align 4
label22:
	mov r3, #0
	str r3, [r6, #0]
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
	add r3, r5, #64
	cmp r3, #192
	bge label25
	add r6, r6, #256
	mov r5, r3
	b label22
.p2align 4
label25:
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	add r7, r6, r3, lsl #2
	mov r3, #0
	str r3, [r7, #0]
	str r3, [r7, #4]
	str r3, [r7, #8]
	str r3, [r7, #12]
	str r3, [r7, #16]
	str r3, [r7, #20]
	str r3, [r7, #24]
	str r3, [r7, #28]
	str r3, [r7, #32]
	str r3, [r7, #36]
	str r3, [r7, #40]
	str r3, [r7, #44]
	str r3, [r7, #48]
	str r3, [r7, #52]
	str r3, [r7, #56]
	str r3, [r7, #60]
	str r3, [r7, #64]
	str r3, [r7, #68]
	str r3, [r7, #72]
	str r3, [r7, #76]
	str r3, [r7, #80]
	str r3, [r7, #84]
	str r3, [r7, #88]
	str r3, [r7, #92]
	str r3, [r7, #96]
	str r3, [r7, #100]
	str r3, [r7, #104]
	str r3, [r7, #108]
	str r3, [r7, #112]
	str r3, [r7, #116]
	str r3, [r7, #120]
	str r3, [r7, #124]
	str r3, [r7, #128]
	str r3, [r7, #132]
	str r3, [r7, #136]
	str r3, [r7, #140]
	str r3, [r7, #144]
	str r3, [r7, #148]
	str r3, [r7, #152]
	str r3, [r7, #156]
	str r3, [r7, #160]
	str r3, [r7, #164]
	str r3, [r7, #168]
	str r3, [r7, #172]
	str r3, [r7, #176]
	str r3, [r7, #180]
	str r3, [r7, #184]
	str r3, [r7, #188]
	str r3, [r7, #192]
	str r3, [r7, #196]
	str r3, [r7, #200]
	str r3, [r7, #204]
	str r3, [r7, #208]
	str r3, [r7, #212]
	str r3, [r7, #216]
	str r3, [r7, #220]
	str r3, [r7, #224]
	str r3, [r7, #228]
	str r3, [r7, #232]
	str r3, [r7, #236]
	add r3, r5, #124
	add r5, r6, r3, lsl #2
	mov r6, r3
.p2align 4
label26:
	mov r3, #0
	str r3, [r5, #0]
	add r3, r6, #1
	cmp r3, #256
	bge label410
	add r5, r5, #4
	mov r6, r3
	b label26
.p2align 4
label410:
	cmp r2, #0
	bne label416
	mov r5, r1
.p2align 4
label35:
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
	bne label38
.p2align 4
label425:
	mov r7, r0
	b label39
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
	b label425
.p2align 4
label39:
	sub r0, r7, #48
	cmp r0, #10
	bhs label41
	mov r5, r0
.p2align 4
label101:
	bl getch
	mov r1, r0
	sub r0, r0, #48
	cmp r0, #10
	bhs label640
	add r1, r5, r5, lsl #2
	add r5, r0, r1, lsl #1
	b label101
.p2align 4
label416:
	mov r5, r0
	mov r6, r1
	mov r7, r2
.p2align 4
label31:
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
label104:
	bl putint
	mov r0, #10
	bl putch
	subs r4, r4, #1
	beq label111
	mov r0, r5
	mov r1, r6
	mov r2, r7
	mov r3, #0
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	mov r5, r3
	b label13
.p2align 4
label113:
	bl getch
	sub r1, r0, #48
	cmp r1, #10
	bhs label656
	add r0, r5, r5, lsl #2
	add r5, r1, r0, lsl #1
	b label113
label1013:
	mov r0, r1
	b label77
.p2align 4
label76:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	bne label76
.p2align 4
label77:
	sub r0, r0, #48
	cmp r0, #10
	blo label571
	b label79
.p2align 4
label640:
	sub r0, r1, #32
	sub r2, r1, #10
	clz r0, r0
	clz r2, r2
	lsr r0, r0, #5
	lsr r2, r2, #5
	orrs r0, r0, r2
	bne label76
	b label1013
.p2align 4
label571:
	mov r5, r0
.p2align 4
label98:
	bl getch
	mov r1, r0
	sub r0, r0, #48
	cmp r0, #10
	bhs label632
	add r1, r5, r5, lsl #2
	add r5, r0, r1, lsl #1
	b label98
.p2align 4
label41:
	bl getch
	sub r2, r7, #45
	sub r1, r7, #43
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	beq label42
	mov r8, #10
	cmp r8, #0
	bne label1011
.p2align 4
label455:
	mov r1, r0
	sub r2, r0, #10
	sub r0, r0, #32
	clz r2, r2
	clz r0, r0
	lsr r2, r2, #5
	lsr r0, r0, #5
	orrs r0, r0, r2
	bne label76
	b label1013
.p2align 4
label42:
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
	beq label455
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	bne label72
	b label46
.p2align 4
label466:
	mov r5, r0
.p2align 4
label68:
	bl getch
	mov r1, r0
	sub r0, r0, #48
	cmp r0, #10
	bhs label542
	add r1, r5, r5, lsl #2
	add r5, r0, r1, lsl #1
	b label68
.p2align 4
label71:
	bl getch
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	mov r2, r5
	mov r1, r0
	ldr r5, [r6, #0]
	mov r0, #1
	cmp r5, #0
	bne label52
	b label1018
.p2align 4
label72:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	bne label72
	sub r0, r0, #48
	cmp r0, #10
	blo label466
	b label71
.p2align 4
label79:
	bl getch
	mov r2, #1
	mov r1, r5
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	ldr r5, [r6, #0]
	cmp r5, #0
	beq label84
.p2align 4
label85:
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	ldr r3, [r6, r5, lsl #2]
	sub r5, r5, #1
	str r5, [r6, #0]
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
	beq label89
	cmp r3, #45
	beq label97
	b label1020
.p2align 4
label89:
	add r3, r5, r7
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	ldr r5, [r6, #0]
	cmp r5, #0
	bne label85
	b label84
.p2align 4
label97:
	sub r3, r7, r5
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	ldr r5, [r6, #0]
	cmp r5, #0
	bne label85
	b label84
.p2align 4
label1020:
	cmp r3, #42
	beq label96
	cmp r3, #47
	beq label93
	cmp r3, #37
	beq label95
	mov r3, #0
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	ldr r5, [r6, #0]
	cmp r5, #0
	bne label85
.p2align 4
label84:
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	mov r5, r0
	mov r7, r2
	ldr r3, [r6, #0]
	ldr r3, [r6, r3, lsl #2]
	mov r6, r1
	mov r0, r3
	b label104
.p2align 4
label1014:
	mov r5, r1
	mov r6, r2
	mov r7, r0
	b label31
.p2align 4
label52:
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	ldr r3, [r6, r5, lsl #2]
	sub r9, r3, #45
	sub r6, r3, #43
	clz r9, r9
	clz r6, r6
	lsr r9, r9, #5
	lsr r6, r6, #5
	orrs r6, r6, r9
	beq label65
	cmp r8, #11
	blt label53
	b label67
.p2align 4
label542:
	mov r2, r5
	mov r3, #0
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	mov r0, r3
	ldr r5, [r6, #0]
	cmp r5, #0
	bne label52
	add r3, r5, #1
	cmp r0, #0
	str r3, [r6, #0]
	str r7, [r6, r3, lsl #2]
	beq label537
	b label1014
.p2align 4
label53:
	sub r5, r5, #1
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	cmp r3, #43
	str r5, [r6, #0]
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
	bne label54
	add r3, r5, r9
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	ldr r5, [r6, #0]
	cmp r5, #0
	bne label52
	b label1016
.p2align 4
label65:
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
	bne label53
label67:
	add r3, r5, #1
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	cmp r0, #0
	str r3, [r6, #0]
	str r7, [r6, r3, lsl #2]
	beq label537
	b label1014
.p2align 4
label54:
	cmp r3, #45
	bne label55
	sub r3, r9, r5
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	ldr r5, [r6, #0]
	cmp r5, #0
	bne label52
	b label470
.p2align 4
label96:
	mul r3, r5, r7
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	ldr r5, [r6, #0]
	cmp r5, #0
	bne label85
	b label84
label48:
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	ldr r5, [r6, #0]
	cmp r5, #0
	bne label52
label470:
	add r3, r5, #1
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	cmp r0, #0
	str r3, [r6, #0]
	str r7, [r6, r3, lsl #2]
	beq label537
	b label1014
label55:
	cmp r3, #42
	bne label56
	mul r3, r5, r9
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	b label48
.p2align 4
label93:
	sdiv r3, r7, r5
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	ldr r5, [r6, #0]
	cmp r5, #0
	bne label85
	b label84
.p2align 4
label537:
	mov r0, r1
	mov r5, r2
	b label35
label1018:
	add r3, r5, #1
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	cmp r0, #0
	str r3, [r6, #0]
	str r7, [r6, r3, lsl #2]
	beq label537
	b label1014
label56:
	cmp r3, #47
	beq label57
	cmp r3, #37
	bne label507
	sdiv r3, r9, r5
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	mls r3, r3, r5, r9
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	b label48
label1016:
	add r3, r5, #1
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	cmp r0, #0
	str r3, [r6, #0]
	str r7, [r6, r3, lsl #2]
	beq label537
	b label1014
label111:
	mov r3, #0
	add sp, sp, #4
	mov r0, r3
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label95:
	sdiv r3, r7, r5
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	mls r3, r3, r5, r7
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	ldr r5, [r6, #0]
	cmp r5, #0
	bne label85
	b label84
.p2align 4
label632:
	mov r0, r1
	mov r3, #0
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	mov r1, r5
	mov r2, r3
	ldr r5, [r6, #0]
	cmp r5, #0
	bne label85
	b label84
label46:
	sub r0, r0, #48
	cmp r0, #10
	blo label466
	b label71
.p2align 4
label1011:
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	bne label72
	b label46
label656:
	mov r1, r5
	mov r3, #0
	mov r2, r3
	b label4
label57:
	sdiv r3, r9, r5
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	b label48
label507:
	mov r3, #0
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	b label48
