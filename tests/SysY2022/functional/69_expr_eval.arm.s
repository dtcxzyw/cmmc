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
	movw r7, #:lower16:ops
	movw r6, #:lower16:oprs
	movt r7, #:upper16:ops
	movt r6, #:upper16:oprs
	str r6, [sp, #0]
	str r7, [sp, #4]
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
	bhs label109
.p2align 4
label4:
	bl getch
	sub r1, r0, #48
	cmp r1, #10
	blo label6
	mov r2, r0
	mov r1, #0
	cmp r4, #0
	bne label138
	b label108
.p2align 4
label6:
	add r0, r5, r5, lsl #2
	add r5, r1, r0, lsl #1
	b label4
label7:
	cmp r4, #0
	beq label108
label138:
	mov r0, r5
	mov r3, #0
.p2align 4
label16:
	ldr r6, [sp, #0]
	mov r7, #0
	add r8, r3, #64
	cmp r8, #192
	add r5, r6, r3, lsl #2
	str r7, [r6, r3, lsl #2]
	str r7, [r5, #4]
	str r7, [r5, #8]
	str r7, [r5, #12]
	str r7, [r5, #16]
	str r7, [r5, #20]
	str r7, [r5, #24]
	str r7, [r5, #28]
	str r7, [r5, #32]
	str r7, [r5, #36]
	str r7, [r5, #40]
	str r7, [r5, #44]
	str r7, [r5, #48]
	str r7, [r5, #52]
	str r7, [r5, #56]
	str r7, [r5, #60]
	str r7, [r5, #64]
	str r7, [r5, #68]
	str r7, [r5, #72]
	str r7, [r5, #76]
	str r7, [r5, #80]
	str r7, [r5, #84]
	str r7, [r5, #88]
	str r7, [r5, #92]
	str r7, [r5, #96]
	str r7, [r5, #100]
	str r7, [r5, #104]
	str r7, [r5, #108]
	str r7, [r5, #112]
	str r7, [r5, #116]
	str r7, [r5, #120]
	str r7, [r5, #124]
	str r7, [r5, #128]
	str r7, [r5, #132]
	str r7, [r5, #136]
	str r7, [r5, #140]
	str r7, [r5, #144]
	str r7, [r5, #148]
	str r7, [r5, #152]
	str r7, [r5, #156]
	str r7, [r5, #160]
	str r7, [r5, #164]
	str r7, [r5, #168]
	str r7, [r5, #172]
	str r7, [r5, #176]
	str r7, [r5, #180]
	str r7, [r5, #184]
	str r7, [r5, #188]
	str r7, [r5, #192]
	str r7, [r5, #196]
	str r7, [r5, #200]
	str r7, [r5, #204]
	str r7, [r5, #208]
	str r7, [r5, #212]
	str r7, [r5, #216]
	str r7, [r5, #220]
	str r7, [r5, #224]
	str r7, [r5, #228]
	str r7, [r5, #232]
	str r7, [r5, #236]
	str r7, [r5, #240]
	str r7, [r5, #244]
	str r7, [r5, #248]
	str r7, [r5, #252]
	bge label18
	mov r3, r8
	b label16
.p2align 4
label18:
	ldr r6, [sp, #0]
	mov r7, #0
	add r3, r3, #112
	add r5, r6, r8, lsl #2
	str r7, [r6, r8, lsl #2]
	str r7, [r5, #4]
	str r7, [r5, #8]
	str r7, [r5, #12]
	str r7, [r5, #16]
	str r7, [r5, #20]
	str r7, [r5, #24]
	str r7, [r5, #28]
	str r7, [r5, #32]
	str r7, [r5, #36]
	str r7, [r5, #40]
	str r7, [r5, #44]
	str r7, [r5, #48]
	str r7, [r5, #52]
	str r7, [r5, #56]
	str r7, [r5, #60]
	str r7, [r5, #64]
	str r7, [r5, #68]
	str r7, [r5, #72]
	str r7, [r5, #76]
	str r7, [r5, #80]
	str r7, [r5, #84]
	str r7, [r5, #88]
	str r7, [r5, #92]
	str r7, [r5, #96]
	str r7, [r5, #100]
	str r7, [r5, #104]
	str r7, [r5, #108]
	str r7, [r5, #112]
	str r7, [r5, #116]
	str r7, [r5, #120]
	str r7, [r5, #124]
	str r7, [r5, #128]
	str r7, [r5, #132]
	str r7, [r5, #136]
	str r7, [r5, #140]
	str r7, [r5, #144]
	str r7, [r5, #148]
	str r7, [r5, #152]
	str r7, [r5, #156]
	str r7, [r5, #160]
	str r7, [r5, #164]
	str r7, [r5, #168]
	str r7, [r5, #172]
	str r7, [r5, #176]
	str r7, [r5, #180]
	str r7, [r5, #184]
	str r7, [r5, #188]
	b label19
label108:
	mov r0, #0
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label109:
	bl getch
	mov r1, #1
	mov r5, #0
	mov r2, r0
	b label7
.p2align 4
label19:
	ldr r6, [sp, #0]
	mov r7, #0
	add r5, r6, r3, lsl #2
	str r7, [r6, r3, lsl #2]
	add r3, r3, #4
	str r7, [r5, #4]
	cmp r3, #252
	str r7, [r5, #8]
	str r7, [r5, #12]
	blt label19
	mov r5, #0
	str r5, [r6, r3, lsl #2]
	add r3, r3, #1
	cmp r3, #256
	bge label986
.p2align 4
label21:
	mov r5, #0
	ldr r6, [sp, #0]
	str r5, [r6, r3, lsl #2]
	add r3, r3, #1
	cmp r3, #256
	blt label21
.p2align 4
label986:
	mov r3, #0
.p2align 4
label23:
	ldr r7, [sp, #4]
	mov r6, #0
	add r8, r3, #64
	cmp r8, #192
	add r5, r7, r3, lsl #2
	str r6, [r7, r3, lsl #2]
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
	bge label25
	mov r3, r8
	b label23
.p2align 4
label25:
	ldr r7, [sp, #4]
	mov r6, #0
	add r3, r3, #112
	add r5, r7, r8, lsl #2
	str r6, [r7, r8, lsl #2]
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
.p2align 4
label26:
	ldr r7, [sp, #4]
	mov r6, #0
	add r5, r7, r3, lsl #2
	str r6, [r7, r3, lsl #2]
	add r3, r3, #4
	str r6, [r5, #4]
	cmp r3, #252
	str r6, [r5, #8]
	str r6, [r5, #12]
	blt label26
	mov r5, #0
	str r5, [r7, r3, lsl #2]
	add r3, r3, #1
	cmp r3, #256
	blt label28
	cmp r1, #0
	bne label416
.p2align 4
label1010:
	mov r8, r2
	mov r5, r0
	b label31
.p2align 4
label28:
	mov r5, #0
	ldr r7, [sp, #4]
	str r5, [r7, r3, lsl #2]
	add r3, r3, #1
	cmp r3, #256
	blt label28
	cmp r1, #0
	beq label1010
.p2align 4
label416:
	mov r6, r2
	mov r5, r0
	mov r7, r1
	b label99
.p2align 4
label31:
	ldr r6, [sp, #0]
	sub r1, r8, #10
	clz r1, r1
	lsr r1, r1, #5
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	str r5, [r6, r0, lsl #2]
	sub r0, r8, #32
	clz r0, r0
	lsr r0, r0, #5
	orrs r0, r0, r1
	bne label98
	sub r0, r8, #48
	cmp r0, #10
	bhs label36
.p2align 4
label431:
	mov r5, r0
	b label68
.p2align 4
label36:
	bl getch
	sub r2, r8, #45
	sub r1, r8, #43
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	beq label67
	mov r9, #10
.p2align 4
label37:
	cmp r9, #0
	beq label71
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	bne label66
	sub r0, r0, #48
	cmp r0, #10
	blo label453
	b label62
.p2align 4
label66:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	bne label66
	sub r0, r0, #48
	cmp r0, #10
	blo label453
	b label62
label67:
	sub r1, r8, #42
	sub r2, r8, #47
	mov r9, #0
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orr r1, r1, r2
	sub r2, r8, #37
	clz r2, r2
	lsr r2, r2, #5
	orrs r1, r1, r2
	mov r1, #20
	movne r9, r1
	b label37
.p2align 4
label68:
	bl getch
	sub r1, r0, #48
	cmp r1, #10
	blo label70
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	bne label74
	sub r0, r0, #48
	cmp r0, #10
	blo label572
	b label77
.p2align 4
label70:
	add r0, r5, r5, lsl #2
	add r5, r1, r0, lsl #1
	b label68
.p2align 4
label74:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	bne label74
	sub r0, r0, #48
	cmp r0, #10
	bhs label77
label572:
	mov r5, r0
	b label95
label77:
	bl getch
	mov r2, #1
	mov r1, r5
	ldr r7, [sp, #4]
	ldr r5, [r7, #0]
	cmp r5, #0
	beq label577
.p2align 4
label83:
	ldr r7, [sp, #4]
	ldr r3, [r7, r5, lsl #2]
	sub r5, r5, #1
	str r5, [r7, #0]
	ldr r6, [sp, #0]
	cmp r3, #43
	ldr r8, [r6, #0]
	sub r9, r8, #1
	ldr r5, [r6, r8, lsl #2]
	add r7, r6, r8, lsl #2
	str r9, [r6, #0]
	sub r8, r8, #2
	ldr r7, [r7, #-4]
	str r8, [r6, #0]
	beq label94
	cmp r3, #45
	beq label85
	cmp r3, #42
	beq label91
	cmp r3, #47
	beq label88
	cmp r3, #37
	beq label90
	mov r3, #0
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	ldr r7, [sp, #4]
	ldr r5, [r7, #0]
	cmp r5, #0
	bne label83
	b label577
.p2align 4
label88:
	sdiv r3, r7, r5
	ldr r6, [sp, #0]
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	ldr r7, [sp, #4]
	ldr r5, [r7, #0]
	cmp r5, #0
	bne label83
	b label577
.p2align 4
label91:
	mul r3, r5, r7
	ldr r6, [sp, #0]
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	ldr r7, [sp, #4]
	ldr r5, [r7, #0]
	cmp r5, #0
	bne label83
	b label577
.p2align 4
label94:
	add r3, r5, r7
	ldr r6, [sp, #0]
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	ldr r7, [sp, #4]
	ldr r5, [r7, #0]
	cmp r5, #0
	bne label83
	b label577
.p2align 4
label99:
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
	b label103
.p2align 4
label95:
	bl getch
	mov r1, r0
	sub r0, r0, #48
	cmp r0, #10
	blo label97
	mov r0, r1
	mov r2, #0
	mov r1, r5
	ldr r7, [sp, #4]
	ldr r5, [r7, #0]
	cmp r5, #0
	bne label83
	b label577
.p2align 4
label97:
	add r1, r5, r5, lsl #2
	add r5, r0, r1, lsl #1
	b label95
.p2align 4
label577:
	ldr r6, [sp, #0]
	mov r5, r1
	mov r7, r2
	ldr r3, [r6, #0]
	ldr r3, [r6, r3, lsl #2]
	mov r6, r0
	mov r0, r3
.p2align 4
label103:
	bl putint
	mov r0, #10
	bl putch
	subs r4, r4, #1
	beq label108
	mov r2, r6
	mov r0, r5
	mov r1, r7
	mov r3, #0
	b label16
.p2align 4
label90:
	sdiv r3, r7, r5
	mls r3, r3, r5, r7
	ldr r6, [sp, #0]
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	ldr r7, [sp, #4]
	ldr r5, [r7, #0]
	cmp r5, #0
	bne label83
	b label577
.p2align 4
label98:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	bne label98
	mov r8, r0
	sub r0, r0, #48
	cmp r0, #10
	blo label431
	b label36
.p2align 4
label71:
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	bne label74
	sub r0, r0, #48
	cmp r0, #10
	blo label572
	b label77
.p2align 4
label85:
	sub r3, r7, r5
	ldr r6, [sp, #0]
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	ldr r7, [sp, #4]
	ldr r5, [r7, #0]
	cmp r5, #0
	bne label83
	b label577
label453:
	mov r5, r0
	b label63
label46:
	add r2, r3, #1
	ldr r7, [sp, #4]
	cmp r1, #0
	str r2, [r7, #0]
	str r8, [r7, r2, lsl #2]
	beq label465
	mov r6, r0
	mov r7, r1
	b label99
.p2align 4
label465:
	mov r8, r0
	b label31
label47:
	ldr r7, [sp, #4]
	ldr r2, [r7, r3, lsl #2]
	sub r7, r2, #45
	sub r6, r2, #43
	clz r7, r7
	clz r6, r6
	lsr r7, r7, #5
	lsr r6, r6, #5
	orrs r6, r6, r7
	bne label60
	sub r6, r2, #42
	sub r7, r2, #47
	cmp r9, #0
	clz r6, r6
	clz r7, r7
	lsr r6, r6, #5
	lsr r7, r7, #5
	orr r6, r6, r7
	sub r7, r2, #37
	clz r7, r7
	lsr r7, r7, #5
	orr r6, r6, r7
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label48
	b label46
label62:
	bl getch
	mov r1, #1
	b label42
.p2align 4
label63:
	bl getch
	sub r1, r0, #48
	cmp r1, #10
	blo label65
	mov r1, #0
	ldr r7, [sp, #4]
	ldr r3, [r7, #0]
	cmp r3, #0
	bne label47
	b label46
.p2align 4
label65:
	add r0, r5, r5, lsl #2
	add r5, r1, r0, lsl #1
	b label63
.p2align 4
label42:
	ldr r7, [sp, #4]
	ldr r3, [r7, #0]
	cmp r3, #0
	bne label47
	b label46
label48:
	sub r3, r3, #1
	ldr r7, [sp, #4]
	cmp r2, #43
	str r3, [r7, #0]
	ldr r6, [sp, #0]
	ldr r10, [r6, #0]
	sub r11, r10, #1
	ldr r3, [r6, r10, lsl #2]
	add r7, r6, r10, lsl #2
	str r11, [r6, #0]
	sub r10, r10, #2
	ldr r7, [r7, #-4]
	str r10, [r6, #0]
	bne label50
	add r2, r3, r7
	ldr r3, [r6, #0]
	add r3, r3, #1
	str r3, [r6, #0]
	str r2, [r6, r3, lsl #2]
	b label42
label50:
	cmp r2, #45
	beq label57
	cmp r2, #42
	beq label494
	cmp r2, #47
	beq label498
	cmp r2, #37
	beq label54
	mov r2, #0
	ldr r6, [sp, #0]
	ldr r3, [r6, #0]
	add r3, r3, #1
	str r3, [r6, #0]
	str r2, [r6, r3, lsl #2]
	b label42
label57:
	sub r2, r7, r3
	ldr r6, [sp, #0]
	ldr r3, [r6, #0]
	add r3, r3, #1
	str r3, [r6, #0]
	str r2, [r6, r3, lsl #2]
	b label42
label54:
	sdiv r2, r7, r3
	mls r2, r2, r3, r7
	ldr r6, [sp, #0]
	ldr r3, [r6, #0]
	add r3, r3, #1
	str r3, [r6, #0]
	str r2, [r6, r3, lsl #2]
	b label42
label60:
	cmp r9, #11
	blt label48
	b label46
label494:
	mul r2, r3, r7
	ldr r6, [sp, #0]
	ldr r3, [r6, #0]
	add r3, r3, #1
	str r3, [r6, #0]
	str r2, [r6, r3, lsl #2]
	b label42
label498:
	sdiv r2, r7, r3
	ldr r6, [sp, #0]
	ldr r3, [r6, #0]
	add r3, r3, #1
	str r3, [r6, #0]
	str r2, [r6, r3, lsl #2]
	b label42
