.arch armv7ve
.data
.bss
.align 4
oprs:
	.zero	1024
.align 4
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
	movw r7, #:lower16:oprs
	movt r7, #:upper16:oprs
	str r7, [sp, #0]
	movw r7, #:lower16:ops
	movt r7, #:upper16:ops
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
	bhs label7
.p2align 4
label4:
	bl getch
	sub r1, r0, #48
	cmp r1, #10
	blo label6
	mov r2, r0
	mov r1, #0
	cmp r4, #0
	bne label135
	b label105
.p2align 4
label6:
	add r0, r5, r5, lsl #2
	add r5, r1, r0, lsl #1
	b label4
label135:
	mov r0, r5
	mov r3, #0
.p2align 4
label17:
	ldr r7, [sp, #0]
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
	bge label19
	mov r3, r8
	b label17
.p2align 4
label19:
	ldr r7, [sp, #0]
	mov r6, #0
	add r3, r3, #124
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
	b label20
label105:
	mov r0, #0
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label20:
	mov r5, #0
	ldr r7, [sp, #0]
	str r5, [r7, r3, lsl #2]
	add r3, r3, #1
	cmp r3, #256
	blt label20
	mov r3, #0
.p2align 4
label22:
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
	bge label24
	mov r3, r8
	b label22
.p2align 4
label24:
	ldr r7, [sp, #4]
	mov r6, #0
	add r3, r3, #124
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
.p2align 4
label25:
	mov r5, #0
	ldr r7, [sp, #4]
	str r5, [r7, r3, lsl #2]
	add r3, r3, #1
	cmp r3, #256
	blt label25
	cmp r1, #0
	bne label417
	mov r6, r2
	mov r5, r0
	b label37
.p2align 4
label417:
	mov r6, r2
	mov r5, r0
	mov r7, r1
.p2align 4
label28:
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
	b label32
.p2align 4
label37:
	ldr r7, [sp, #0]
	sub r1, r6, #10
	clz r1, r1
	lsr r1, r1, #5
	ldr r0, [r7, #0]
	add r0, r0, #1
	str r0, [r7, #0]
	str r5, [r7, r0, lsl #2]
	sub r0, r6, #32
	clz r0, r0
	lsr r0, r0, #5
	orrs r0, r0, r1
	bne label104
	sub r0, r6, #48
	cmp r0, #10
	bhs label42
.p2align 4
label437:
	mov r5, r0
	b label101
.p2align 4
label42:
	bl getch
	sub r2, r6, #45
	sub r1, r6, #43
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	beq label73
	mov r8, #10
.p2align 4
label43:
	cmp r8, #0
	beq label74
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	bne label46
	sub r0, r0, #48
	cmp r0, #10
	blo label466
	b label52
.p2align 4
label46:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	bne label46
	sub r0, r0, #48
	cmp r0, #10
	blo label466
label52:
	bl getch
	mov r1, #1
.p2align 4
label53:
	ldr r7, [sp, #4]
	ldr r3, [r7, #0]
	cmp r3, #0
	bne label58
label57:
	add r2, r3, #1
	ldr r7, [sp, #4]
	cmp r1, #0
	str r2, [r7, #0]
	str r6, [r7, r2, lsl #2]
	beq label487
	mov r6, r0
	mov r7, r1
	b label28
.p2align 4
label487:
	mov r6, r0
	b label37
label60:
	add r2, r3, r9
	ldr r7, [sp, #0]
	ldr r3, [r7, #0]
	add r3, r3, #1
	str r3, [r7, #0]
	str r2, [r7, r3, lsl #2]
	b label53
label73:
	sub r1, r6, #42
	sub r2, r6, #47
	mov r8, #0
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orr r1, r1, r2
	sub r2, r6, #37
	clz r2, r2
	lsr r2, r2, #5
	orrs r1, r1, r2
	mov r1, #20
	movne r8, r1
	b label43
.p2align 4
label100:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	bne label100
	sub r0, r0, #48
	cmp r0, #10
	blo label563
	b label79
.p2align 4
label101:
	bl getch
	sub r1, r0, #48
	cmp r1, #10
	blo label103
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	bne label100
	sub r0, r0, #48
	cmp r0, #10
	blo label563
	b label79
.p2align 4
label103:
	add r0, r5, r5, lsl #2
	add r5, r1, r0, lsl #1
	b label101
.p2align 4
label74:
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	bne label100
	sub r0, r0, #48
	cmp r0, #10
	bhs label79
label563:
	mov r5, r0
	b label97
label79:
	bl getch
	mov r2, #1
	mov r1, r5
	ldr r7, [sp, #4]
	ldr r5, [r7, #0]
	cmp r5, #0
	beq label568
.p2align 4
label85:
	ldr r7, [sp, #4]
	ldr r3, [r7, r5, lsl #2]
	sub r5, r5, #1
	str r5, [r7, #0]
	ldr r7, [sp, #0]
	cmp r3, #43
	ldr r8, [r7, #0]
	sub r9, r8, #1
	ldr r5, [r7, r8, lsl #2]
	add r6, r7, r8, lsl #2
	str r9, [r7, #0]
	sub r8, r8, #2
	ldr r6, [r6, #-4]
	str r8, [r7, #0]
	beq label96
	cmp r3, #45
	beq label89
	cmp r3, #42
	beq label91
	cmp r3, #47
	beq label93
	cmp r3, #37
	beq label95
	mov r3, #0
	ldr r5, [r7, #0]
	add r5, r5, #1
	str r5, [r7, #0]
	str r3, [r7, r5, lsl #2]
	ldr r7, [sp, #4]
	ldr r5, [r7, #0]
	cmp r5, #0
	bne label85
	b label568
.p2align 4
label93:
	sdiv r3, r6, r5
	ldr r7, [sp, #0]
	ldr r5, [r7, #0]
	add r5, r5, #1
	str r5, [r7, #0]
	str r3, [r7, r5, lsl #2]
	ldr r7, [sp, #4]
	ldr r5, [r7, #0]
	cmp r5, #0
	bne label85
	b label568
.p2align 4
label96:
	add r3, r5, r6
	ldr r7, [sp, #0]
	ldr r5, [r7, #0]
	add r5, r5, #1
	str r5, [r7, #0]
	str r3, [r7, r5, lsl #2]
	ldr r7, [sp, #4]
	ldr r5, [r7, #0]
	cmp r5, #0
	bne label85
	b label568
.p2align 4
label97:
	bl getch
	mov r1, r0
	sub r0, r0, #48
	cmp r0, #10
	blo label99
	mov r0, r1
	mov r2, #0
	mov r1, r5
	ldr r7, [sp, #4]
	ldr r5, [r7, #0]
	cmp r5, #0
	bne label85
	b label568
.p2align 4
label99:
	add r1, r5, r5, lsl #2
	add r5, r0, r1, lsl #1
	b label97
.p2align 4
label32:
	bl putint
	mov r0, #10
	bl putch
	subs r4, r4, #1
	beq label105
	mov r2, r6
	mov r0, r5
	mov r1, r7
	mov r3, #0
	b label17
.p2align 4
label568:
	ldr r7, [sp, #0]
	mov r6, r0
	mov r5, r1
	ldr r3, [r7, #0]
	ldr r3, [r7, r3, lsl #2]
	mov r7, r2
	mov r0, r3
	b label32
.p2align 4
label91:
	mul r3, r5, r6
	ldr r7, [sp, #0]
	ldr r5, [r7, #0]
	add r5, r5, #1
	str r5, [r7, #0]
	str r3, [r7, r5, lsl #2]
	ldr r7, [sp, #4]
	ldr r5, [r7, #0]
	cmp r5, #0
	bne label85
	b label568
.p2align 4
label95:
	sdiv r3, r6, r5
	mls r3, r3, r5, r6
	ldr r7, [sp, #0]
	ldr r5, [r7, #0]
	add r5, r5, #1
	str r5, [r7, #0]
	str r3, [r7, r5, lsl #2]
	ldr r7, [sp, #4]
	ldr r5, [r7, #0]
	cmp r5, #0
	bne label85
	b label568
.p2align 4
label104:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	bne label104
	mov r6, r0
	sub r0, r0, #48
	cmp r0, #10
	blo label437
	b label42
.p2align 4
label89:
	sub r3, r6, r5
	ldr r7, [sp, #0]
	ldr r5, [r7, #0]
	add r5, r5, #1
	str r5, [r7, #0]
	str r3, [r7, r5, lsl #2]
	ldr r7, [sp, #4]
	ldr r5, [r7, #0]
	cmp r5, #0
	bne label85
	b label568
label466:
	mov r5, r0
.p2align 4
label49:
	bl getch
	sub r1, r0, #48
	cmp r1, #10
	blo label51
	mov r1, #0
	ldr r7, [sp, #4]
	ldr r3, [r7, #0]
	cmp r3, #0
	bne label58
	b label57
.p2align 4
label51:
	add r0, r5, r5, lsl #2
	add r5, r1, r0, lsl #1
	b label49
label58:
	ldr r7, [sp, #4]
	ldr r2, [r7, r3, lsl #2]
	sub r9, r2, #45
	sub r7, r2, #43
	clz r9, r9
	clz r7, r7
	lsr r9, r9, #5
	lsr r7, r7, #5
	orrs r7, r7, r9
	bne label72
	sub r7, r2, #42
	sub r9, r2, #47
	cmp r8, #0
	clz r7, r7
	clz r9, r9
	lsr r7, r7, #5
	lsr r9, r9, #5
	orr r7, r7, r9
	sub r9, r2, #37
	clz r9, r9
	lsr r9, r9, #5
	orr r7, r7, r9
	mov r9, #0
	movwle r9, #1
	orrs r7, r7, r9
	bne label59
	b label57
label7:
	bl getch
	mov r1, #1
	mov r5, #0
	mov r2, r0
	cmp r4, #0
	bne label135
	b label105
label59:
	sub r3, r3, #1
	ldr r7, [sp, #4]
	cmp r2, #43
	str r3, [r7, #0]
	ldr r7, [sp, #0]
	ldr r10, [r7, #0]
	sub r11, r10, #1
	ldr r3, [r7, r10, lsl #2]
	add r9, r7, r10, lsl #2
	str r11, [r7, #0]
	sub r10, r10, #2
	ldr r9, [r9, #-4]
	str r10, [r7, #0]
	beq label60
	cmp r2, #45
	beq label516
	cmp r2, #42
	bne label66
	mul r2, r3, r9
	ldr r3, [r7, #0]
	add r3, r3, #1
	str r3, [r7, #0]
	str r2, [r7, r3, lsl #2]
	b label53
label66:
	cmp r2, #47
	beq label525
	cmp r2, #37
	beq label68
	mov r2, #0
	ldr r7, [sp, #0]
	ldr r3, [r7, #0]
	add r3, r3, #1
	str r3, [r7, #0]
	str r2, [r7, r3, lsl #2]
	b label53
label68:
	sdiv r2, r9, r3
	mls r2, r2, r3, r9
	ldr r7, [sp, #0]
	ldr r3, [r7, #0]
	add r3, r3, #1
	str r3, [r7, #0]
	str r2, [r7, r3, lsl #2]
	b label53
label72:
	cmp r8, #11
	blt label59
	b label57
label516:
	sub r2, r9, r3
	ldr r7, [sp, #0]
	ldr r3, [r7, #0]
	add r3, r3, #1
	str r3, [r7, #0]
	str r2, [r7, r3, lsl #2]
	b label53
label525:
	sdiv r2, r9, r3
	ldr r7, [sp, #0]
	ldr r3, [r7, #0]
	add r3, r3, #1
	str r3, [r7, #0]
	str r2, [r7, r3, lsl #2]
	b label53
