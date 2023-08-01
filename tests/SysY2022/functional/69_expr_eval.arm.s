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
.globl main
main:
.p2align 4
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
	blo label4
	bl getch
	mov r1, #1
	mov r5, #0
label8:
	cmp r4, #0
	beq label105
	mov r2, #0
.p2align 4
label17:
	ldr r6, [sp, #4]
	add r3, r6, r2, lsl #2
	mov r6, #0
	str r6, [r3, #0]
	str r6, [r3, #4]
	str r6, [r3, #8]
	str r6, [r3, #12]
	str r6, [r3, #16]
	str r6, [r3, #20]
	str r6, [r3, #24]
	str r6, [r3, #28]
	str r6, [r3, #32]
	str r6, [r3, #36]
	str r6, [r3, #40]
	str r6, [r3, #44]
	str r6, [r3, #48]
	str r6, [r3, #52]
	str r6, [r3, #56]
	str r6, [r3, #60]
	str r6, [r3, #64]
	str r6, [r3, #68]
	str r6, [r3, #72]
	str r6, [r3, #76]
	str r6, [r3, #80]
	str r6, [r3, #84]
	str r6, [r3, #88]
	str r6, [r3, #92]
	str r6, [r3, #96]
	str r6, [r3, #100]
	str r6, [r3, #104]
	str r6, [r3, #108]
	str r6, [r3, #112]
	str r6, [r3, #116]
	str r6, [r3, #120]
	str r6, [r3, #124]
	str r6, [r3, #128]
	str r6, [r3, #132]
	str r6, [r3, #136]
	str r6, [r3, #140]
	str r6, [r3, #144]
	str r6, [r3, #148]
	str r6, [r3, #152]
	str r6, [r3, #156]
	str r6, [r3, #160]
	str r6, [r3, #164]
	str r6, [r3, #168]
	str r6, [r3, #172]
	str r6, [r3, #176]
	str r6, [r3, #180]
	str r6, [r3, #184]
	str r6, [r3, #188]
	str r6, [r3, #192]
	str r6, [r3, #196]
	str r6, [r3, #200]
	str r6, [r3, #204]
	str r6, [r3, #208]
	str r6, [r3, #212]
	str r6, [r3, #216]
	str r6, [r3, #220]
	str r6, [r3, #224]
	str r6, [r3, #228]
	str r6, [r3, #232]
	str r6, [r3, #236]
	str r6, [r3, #240]
	str r6, [r3, #244]
	str r6, [r3, #248]
	str r6, [r3, #252]
	add r3, r2, #64
	cmp r3, #192
	bge label19
	mov r2, r3
	b label17
.p2align 4
label409:
	mov r8, r0
	mov r6, r5
	mov r7, r1
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
	mov r5, r8
.p2align 4
label100:
	bl putint
	mov r0, #10
	bl putch
	subs r4, r4, #1
	beq label105
	mov r0, r5
	mov r1, r7
	mov r5, r6
	mov r2, #0
	b label17
.p2align 4
label19:
	ldr r6, [sp, #4]
	add r2, r2, #120
	add r3, r6, r3, lsl #2
	mov r6, #0
	str r6, [r3, #0]
	str r6, [r3, #4]
	str r6, [r3, #8]
	str r6, [r3, #12]
	str r6, [r3, #16]
	str r6, [r3, #20]
	str r6, [r3, #24]
	str r6, [r3, #28]
	str r6, [r3, #32]
	str r6, [r3, #36]
	str r6, [r3, #40]
	str r6, [r3, #44]
	str r6, [r3, #48]
	str r6, [r3, #52]
	str r6, [r3, #56]
	str r6, [r3, #60]
	str r6, [r3, #64]
	str r6, [r3, #68]
	str r6, [r3, #72]
	str r6, [r3, #76]
	str r6, [r3, #80]
	str r6, [r3, #84]
	str r6, [r3, #88]
	str r6, [r3, #92]
	str r6, [r3, #96]
	str r6, [r3, #100]
	str r6, [r3, #104]
	str r6, [r3, #108]
	str r6, [r3, #112]
	str r6, [r3, #116]
	str r6, [r3, #120]
	str r6, [r3, #124]
	str r6, [r3, #128]
	str r6, [r3, #132]
	str r6, [r3, #136]
	str r6, [r3, #140]
	str r6, [r3, #144]
	str r6, [r3, #148]
	str r6, [r3, #152]
	str r6, [r3, #156]
	str r6, [r3, #160]
	str r6, [r3, #164]
	str r6, [r3, #168]
	str r6, [r3, #172]
	str r6, [r3, #176]
	str r6, [r3, #180]
	str r6, [r3, #184]
	str r6, [r3, #188]
	str r6, [r3, #192]
	str r6, [r3, #196]
	str r6, [r3, #200]
	str r6, [r3, #204]
	str r6, [r3, #208]
	str r6, [r3, #212]
	str r6, [r3, #216]
	str r6, [r3, #220]
.p2align 4
label20:
	mov r3, #0
	ldr r6, [sp, #4]
	str r3, [r6, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #256
	blt label20
	mov r2, #0
.p2align 4
label22:
	ldr r6, [sp, #0]
	add r3, r6, r2, lsl #2
	mov r6, #0
	str r6, [r3, #0]
	str r6, [r3, #4]
	str r6, [r3, #8]
	str r6, [r3, #12]
	str r6, [r3, #16]
	str r6, [r3, #20]
	str r6, [r3, #24]
	str r6, [r3, #28]
	str r6, [r3, #32]
	str r6, [r3, #36]
	str r6, [r3, #40]
	str r6, [r3, #44]
	str r6, [r3, #48]
	str r6, [r3, #52]
	str r6, [r3, #56]
	str r6, [r3, #60]
	str r6, [r3, #64]
	str r6, [r3, #68]
	str r6, [r3, #72]
	str r6, [r3, #76]
	str r6, [r3, #80]
	str r6, [r3, #84]
	str r6, [r3, #88]
	str r6, [r3, #92]
	str r6, [r3, #96]
	str r6, [r3, #100]
	str r6, [r3, #104]
	str r6, [r3, #108]
	str r6, [r3, #112]
	str r6, [r3, #116]
	str r6, [r3, #120]
	str r6, [r3, #124]
	str r6, [r3, #128]
	str r6, [r3, #132]
	str r6, [r3, #136]
	str r6, [r3, #140]
	str r6, [r3, #144]
	str r6, [r3, #148]
	str r6, [r3, #152]
	str r6, [r3, #156]
	str r6, [r3, #160]
	str r6, [r3, #164]
	str r6, [r3, #168]
	str r6, [r3, #172]
	str r6, [r3, #176]
	str r6, [r3, #180]
	str r6, [r3, #184]
	str r6, [r3, #188]
	str r6, [r3, #192]
	str r6, [r3, #196]
	str r6, [r3, #200]
	str r6, [r3, #204]
	str r6, [r3, #208]
	str r6, [r3, #212]
	str r6, [r3, #216]
	str r6, [r3, #220]
	str r6, [r3, #224]
	str r6, [r3, #228]
	str r6, [r3, #232]
	str r6, [r3, #236]
	str r6, [r3, #240]
	str r6, [r3, #244]
	str r6, [r3, #248]
	str r6, [r3, #252]
	add r3, r2, #64
	cmp r3, #192
	bge label24
	mov r2, r3
	b label22
.p2align 4
label24:
	ldr r6, [sp, #0]
	add r2, r2, #120
	add r3, r6, r3, lsl #2
	mov r6, #0
	str r6, [r3, #0]
	str r6, [r3, #4]
	str r6, [r3, #8]
	str r6, [r3, #12]
	str r6, [r3, #16]
	str r6, [r3, #20]
	str r6, [r3, #24]
	str r6, [r3, #28]
	str r6, [r3, #32]
	str r6, [r3, #36]
	str r6, [r3, #40]
	str r6, [r3, #44]
	str r6, [r3, #48]
	str r6, [r3, #52]
	str r6, [r3, #56]
	str r6, [r3, #60]
	str r6, [r3, #64]
	str r6, [r3, #68]
	str r6, [r3, #72]
	str r6, [r3, #76]
	str r6, [r3, #80]
	str r6, [r3, #84]
	str r6, [r3, #88]
	str r6, [r3, #92]
	str r6, [r3, #96]
	str r6, [r3, #100]
	str r6, [r3, #104]
	str r6, [r3, #108]
	str r6, [r3, #112]
	str r6, [r3, #116]
	str r6, [r3, #120]
	str r6, [r3, #124]
	str r6, [r3, #128]
	str r6, [r3, #132]
	str r6, [r3, #136]
	str r6, [r3, #140]
	str r6, [r3, #144]
	str r6, [r3, #148]
	str r6, [r3, #152]
	str r6, [r3, #156]
	str r6, [r3, #160]
	str r6, [r3, #164]
	str r6, [r3, #168]
	str r6, [r3, #172]
	str r6, [r3, #176]
	str r6, [r3, #180]
	str r6, [r3, #184]
	str r6, [r3, #188]
	str r6, [r3, #192]
	str r6, [r3, #196]
	str r6, [r3, #200]
	str r6, [r3, #204]
	str r6, [r3, #208]
	str r6, [r3, #212]
	str r6, [r3, #216]
	str r6, [r3, #220]
.p2align 4
label25:
	mov r3, #0
	ldr r6, [sp, #0]
	str r3, [r6, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #256
	blt label25
	cmp r1, #0
	bne label409
.p2align 4
label28:
	ldr r6, [sp, #4]
	sub r2, r0, #10
	clz r2, r2
	lsr r2, r2, #5
	ldr r1, [r6, #0]
	add r1, r1, #1
	str r1, [r6, #0]
	str r5, [r6, r1, lsl #2]
	sub r1, r0, #32
	clz r1, r1
	lsr r1, r1, #5
	orrs r1, r1, r2
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
label4:
	bl getch
	mov r1, r0
	sub r0, r0, #48
	cmp r0, #10
	bhs label127
	add r1, r5, r5, lsl #2
	add r5, r0, r1, lsl #1
	b label4
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
	mov r1, r0
	mov r0, r5
	ldr r6, [sp, #0]
	ldr r5, [r6, #0]
	cmp r5, #0
	bne label82
	b label993
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
	beq label85
	cmp r3, #45
	beq label93
	b label994
.p2align 4
label85:
	add r3, r5, r7
	ldr r6, [sp, #4]
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	ldr r6, [sp, #0]
	ldr r5, [r6, #0]
	cmp r5, #0
	bne label82
	b label993
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
	b label993
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
label994:
	cmp r3, #42
	bne label1009
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
	b label993
.p2align 4
label1009:
	cmp r3, #47
	bne label1011
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
	b label993
.p2align 4
label1011:
	cmp r3, #37
	bne label1012
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
label993:
	ldr r6, [sp, #4]
	mov r5, r1
	mov r7, r2
	ldr r3, [r6, #0]
	ldr r3, [r6, r3, lsl #2]
	mov r6, r0
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
.p2align 4
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
label1005:
	mov r8, r1
	mov r6, r5
	mov r7, r0
	b label96
.p2align 4
label44:
	bl getch
	mov r1, r0
	mov r0, #1
	ldr r6, [sp, #0]
	ldr r3, [r6, #0]
	cmp r3, #0
	bne label50
label49:
	add r2, r3, #1
	ldr r6, [sp, #0]
	cmp r0, #0
	str r2, [r6, #0]
	str r7, [r6, r2, lsl #2]
	beq label480
	b label1005
.p2align 4
label50:
	ldr r6, [sp, #0]
	ldr r2, [r6, r3, lsl #2]
	sub r9, r2, #45
	sub r6, r2, #43
	clz r9, r9
	clz r6, r6
	lsr r9, r9, #5
	lsr r6, r6, #5
	orrs r6, r6, r9
	bne label64
	b label63
.p2align 4
label62:
	add r2, r3, r9
	ldr r6, [sp, #4]
	ldr r3, [r6, #0]
	add r3, r3, #1
	str r3, [r6, #0]
	str r2, [r6, r3, lsl #2]
	ldr r6, [sp, #0]
	ldr r3, [r6, #0]
	cmp r3, #0
	bne label50
	b label991
.p2align 4
label63:
	sub r6, r2, #42
	sub r9, r2, #47
	cmp r8, #1
	clz r6, r6
	clz r9, r9
	lsr r6, r6, #5
	lsr r9, r9, #5
	orr r6, r6, r9
	sub r9, r2, #37
	clz r9, r9
	lsr r9, r9, #5
	orr r6, r6, r9
	mov r9, #0
	movwlt r9, #1
	orrs r6, r6, r9
	beq label49
.p2align 4
label51:
	sub r3, r3, #1
	ldr r6, [sp, #0]
	cmp r2, #43
	str r3, [r6, #0]
	ldr r6, [sp, #4]
	ldr r10, [r6, #0]
	sub r11, r10, #1
	add r9, r6, r10, lsl #2
	sub r10, r10, #2
	ldr r3, [r9, #0]
	str r11, [r6, #0]
	ldr r9, [r9, #-4]
	str r10, [r6, #0]
	beq label62
	b label500
.p2align 4
label64:
	cmp r8, #11
	blt label51
	b label49
.p2align 4
label464:
	mov r0, #0
	ldr r6, [sp, #0]
	ldr r3, [r6, #0]
	cmp r3, #0
	bne label50
	add r2, r3, #1
	cmp r0, #0
	str r2, [r6, #0]
	str r7, [r6, r2, lsl #2]
	bne label1005
.p2align 4
label480:
	mov r0, r1
	b label28
.p2align 4
label500:
	cmp r2, #45
	bne label986
	sub r2, r9, r3
	ldr r6, [sp, #4]
	ldr r3, [r6, #0]
	add r3, r3, #1
	str r3, [r6, #0]
	str r2, [r6, r3, lsl #2]
	ldr r6, [sp, #0]
	ldr r3, [r6, #0]
	cmp r3, #0
	bne label50
	add r2, r3, #1
	cmp r0, #0
	str r2, [r6, #0]
	str r7, [r6, r2, lsl #2]
	beq label480
	b label1005
label991:
	add r2, r3, #1
	ldr r6, [sp, #0]
	cmp r0, #0
	str r2, [r6, #0]
	str r7, [r6, r2, lsl #2]
	beq label480
	b label1005
label986:
	cmp r2, #42
	bne label1006
	mul r2, r3, r9
	ldr r6, [sp, #4]
	ldr r3, [r6, #0]
	add r3, r3, #1
	str r3, [r6, #0]
	str r2, [r6, r3, lsl #2]
	ldr r6, [sp, #0]
	ldr r3, [r6, #0]
	cmp r3, #0
	bne label50
	b label49
.p2align 4
label1012:
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
	b label993
label1006:
	cmp r2, #47
	beq label60
	cmp r2, #37
	bne label520
	sdiv r2, r9, r3
	mls r2, r2, r3, r9
label52:
	ldr r6, [sp, #4]
	ldr r3, [r6, #0]
	add r3, r3, #1
	str r3, [r6, #0]
	str r2, [r6, r3, lsl #2]
	ldr r6, [sp, #0]
	ldr r3, [r6, #0]
	cmp r3, #0
	bne label50
	b label49
label60:
	sdiv r2, r9, r3
	b label52
label105:
	mov r0, #0
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label418:
	mov r7, r0
	sub r0, r0, #48
	cmp r0, #10
	blo label424
	b label33
label127:
	mov r0, r1
	mov r1, #0
	b label8
label520:
	mov r2, #0
	b label52
.p2align 4
label563:
	mov r0, r5
	mov r2, #0
	ldr r6, [sp, #0]
	ldr r5, [r6, #0]
	cmp r5, #0
	bne label82
	b label993
