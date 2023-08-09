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
	bl getch
	mov r1, #1
	mov r3, #0
	mov r5, r3
label4:
	cmp r4, #0
	beq label111
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	mov r3, #0
	mov r2, r3
	b label13
.p2align 4
label110:
	add r2, r2, #256
.p2align 4
label18:
	mov r3, #0
	add r6, r6, #64
	str r3, [r2, #0]
	cmp r6, #256
	str r3, [r2, #4]
	str r3, [r2, #8]
	str r3, [r2, #12]
	str r3, [r2, #16]
	str r3, [r2, #20]
	str r3, [r2, #24]
	str r3, [r2, #28]
	str r3, [r2, #32]
	str r3, [r2, #36]
	str r3, [r2, #40]
	str r3, [r2, #44]
	str r3, [r2, #48]
	str r3, [r2, #52]
	str r3, [r2, #56]
	str r3, [r2, #60]
	str r3, [r2, #64]
	str r3, [r2, #68]
	str r3, [r2, #72]
	str r3, [r2, #76]
	str r3, [r2, #80]
	str r3, [r2, #84]
	str r3, [r2, #88]
	str r3, [r2, #92]
	str r3, [r2, #96]
	str r3, [r2, #100]
	str r3, [r2, #104]
	str r3, [r2, #108]
	str r3, [r2, #112]
	str r3, [r2, #116]
	str r3, [r2, #120]
	str r3, [r2, #124]
	str r3, [r2, #128]
	str r3, [r2, #132]
	str r3, [r2, #136]
	str r3, [r2, #140]
	str r3, [r2, #144]
	str r3, [r2, #148]
	str r3, [r2, #152]
	str r3, [r2, #156]
	str r3, [r2, #160]
	str r3, [r2, #164]
	str r3, [r2, #168]
	str r3, [r2, #172]
	str r3, [r2, #176]
	str r3, [r2, #180]
	str r3, [r2, #184]
	str r3, [r2, #188]
	str r3, [r2, #192]
	str r3, [r2, #196]
	str r3, [r2, #200]
	str r3, [r2, #204]
	str r3, [r2, #208]
	str r3, [r2, #212]
	str r3, [r2, #216]
	str r3, [r2, #220]
	str r3, [r2, #224]
	str r3, [r2, #228]
	str r3, [r2, #232]
	str r3, [r2, #236]
	str r3, [r2, #240]
	str r3, [r2, #244]
	str r3, [r2, #248]
	str r3, [r2, #252]
	blt label110
	cmp r1, #0
	beq label22
	mov r6, r0
	mov r8, r5
	mov r7, r1
.p2align 4
label101:
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
	mov r5, r6
	mov r6, r8
.p2align 4
label105:
	bl putint
	mov r0, #10
	bl putch
	subs r4, r4, #1
	beq label111
	mov r0, r5
	mov r1, r7
	mov r3, #0
	mov r5, r6
	mov r2, r3
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
.p2align 4
label13:
	mov r3, #0
	add r2, r2, #64
	str r3, [r6, #0]
	cmp r2, #256
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
	bge label203
	add r6, r6, #256
	b label13
.p2align 4
label22:
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
	beq label286
.p2align 4
label23:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	bne label23
.p2align 4
label286:
	mov r7, r0
	sub r0, r0, #48
	cmp r0, #10
	blo label299
	bl getch
	mov r6, r5
	mov r5, r7
	sub r1, r7, #43
	sub r2, r7, #45
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	bne label306
.p2align 4
label69:
	sub r1, r5, #42
	sub r2, r5, #47
	mov r7, #0
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orr r1, r1, r2
	sub r2, r5, #37
	clz r2, r2
	lsr r2, r2, #5
	orrs r1, r1, r2
	movne r7, #20
	cmp r7, #0
	beq label310
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	beq label35
.p2align 4
label34:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	bne label34
.p2align 4
label35:
	sub r8, r0, #48
	cmp r8, #10
	blo label37
	bl getch
	mov r8, r6
	mov r1, r0
	mov r0, #1
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	ldr r3, [r6, #0]
	cmp r3, #0
	add r9, r6, r3, lsl #2
	bne label45
label343:
	add r2, r3, #1
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	cmp r0, #0
	str r2, [r6, #0]
	str r5, [r9, #4]
	beq label61
.p2align 4
label409:
	mov r6, r1
	mov r7, r0
	b label101
.p2align 4
label299:
	mov r5, r0
.p2align 4
label98:
	bl getch
	mov r1, r0
	sub r0, r0, #48
	cmp r0, #10
	bhs label533
	add r1, r5, r5, lsl #2
	add r5, r0, r1, lsl #1
	b label98
.p2align 4
label39:
	add r1, r8, r8, lsl #2
	add r8, r0, r1, lsl #1
.p2align 4
label37:
	bl getch
	mov r1, r0
	sub r0, r0, #48
	cmp r0, #10
	blo label39
	mov r3, #0
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	mov r0, r3
	ldr r3, [r6, #0]
	cmp r3, #0
	add r9, r6, r3, lsl #2
	beq label789
.p2align 4
label45:
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	ldr r2, [r6, r3, lsl #2]
	sub r10, r2, #45
	sub r6, r2, #43
	clz r10, r10
	clz r6, r6
	lsr r10, r10, #5
	lsr r6, r6, #5
	orrs r6, r6, r10
	beq label58
	cmp r7, #11
	bge label60
.p2align 4
label46:
	sub r3, r3, #1
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	cmp r2, #43
	str r3, [r6, #0]
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	ldr r10, [r6, #0]
	sub r11, r10, #1
	add r9, r6, r10, lsl #2
	sub r10, r10, #2
	ldr r3, [r9, #0]
	str r11, [r6, #0]
	ldr r9, [r9, #-4]
	str r10, [r6, #0]
	bne label364
	add r3, r3, r9
.p2align 4
label48:
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	ldr r2, [r6, #0]
	add r2, r2, #1
	str r2, [r6, #0]
	str r3, [r6, r2, lsl #2]
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	ldr r3, [r6, #0]
	cmp r3, #0
	add r9, r6, r3, lsl #2
	bne label45
	add r2, r3, #1
	cmp r0, #0
	str r2, [r6, #0]
	str r5, [r9, #4]
	bne label409
	b label61
.p2align 4
label115:
	add r0, r5, r5, lsl #2
	add r5, r1, r0, lsl #1
.p2align 4
label113:
	bl getch
	sub r1, r0, #48
	cmp r1, #10
	blo label115
	mov r3, #0
	mov r1, r3
	b label4
.p2align 4
label533:
	sub r0, r1, #32
	sub r2, r1, #10
	clz r0, r0
	clz r2, r2
	lsr r0, r0, #5
	lsr r2, r2, #5
	orrs r0, r0, r2
	beq label788
.p2align 4
label97:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	bne label97
	sub r0, r0, #48
	cmp r0, #10
	blo label457
.p2align 4
label78:
	bl getch
	mov r2, #1
	mov r1, r0
	mov r0, r5
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	ldr r5, [r6, #0]
	cmp r5, #0
	bne label84
	b label799
.p2align 4
label86:
	cmp r3, #45
	bne label87
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
	beq label799
.p2align 4
label84:
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
	bne label86
	add r3, r5, r7
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	ldr r5, [r6, #0]
	cmp r5, #0
	bne label84
.p2align 4
label799:
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	mov r5, r1
	mov r7, r2
	ldr r3, [r6, #0]
	ldr r3, [r6, r3, lsl #2]
	mov r6, r0
	mov r0, r3
	b label105
label788:
	sub r0, r1, #48
	cmp r0, #10
	bhs label78
.p2align 4
label457:
	mov r5, r0
.p2align 4
label75:
	bl getch
	mov r1, r0
	sub r0, r0, #48
	cmp r0, #10
	bhs label462
	add r1, r5, r5, lsl #2
	add r5, r0, r1, lsl #1
	b label75
.p2align 4
label87:
	cmp r3, #42
	bne label88
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
	bne label84
	b label799
.p2align 4
label88:
	cmp r3, #47
	beq label91
	cmp r3, #37
	bne label506
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
	bne label84
	b label799
.p2align 4
label306:
	mov r7, #10
	cmp r7, #0
	beq label310
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	bne label34
	b label35
.p2align 4
label58:
	sub r6, r2, #42
	sub r10, r2, #47
	cmp r7, #1
	clz r6, r6
	clz r10, r10
	lsr r6, r6, #5
	lsr r10, r10, #5
	orr r6, r6, r10
	sub r10, r2, #37
	clz r10, r10
	lsr r10, r10, #5
	orr r6, r6, r10
	mov r10, #0
	movwlt r10, #1
	orrs r6, r6, r10
	bne label46
label60:
	add r2, r3, #1
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	cmp r0, #0
	str r2, [r6, #0]
	str r5, [r9, #4]
	bne label409
.p2align 4
label61:
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	sub r2, r1, #10
	ldr r0, [r6, #0]
	clz r2, r2
	lsr r2, r2, #5
	add r0, r0, #1
	str r0, [r6, #0]
	str r8, [r6, r0, lsl #2]
	sub r0, r1, #32
	clz r0, r0
	lsr r0, r0, #5
	orrs r0, r0, r2
	beq label418
.p2align 4
label68:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	bne label68
	mov r5, r0
	sub r0, r0, #48
	cmp r0, #10
	blo label424
label64:
	bl getch
	sub r2, r5, #45
	sub r1, r5, #43
	mov r6, r8
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	bne label306
	b label69
.p2align 4
label364:
	cmp r2, #45
	beq label51
	cmp r2, #42
	bne label53
	mul r3, r3, r9
	b label48
.p2align 4
label91:
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
	bne label84
	b label799
label789:
	add r2, r3, #1
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	cmp r0, #0
	str r2, [r6, #0]
	str r5, [r9, #4]
	bne label409
	b label61
label53:
	cmp r2, #47
	beq label54
	cmp r2, #37
	bne label386
	sdiv r2, r9, r3
	mls r3, r2, r3, r9
	b label48
label51:
	sub r3, r9, r3
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	ldr r2, [r6, #0]
	add r2, r2, #1
	str r2, [r6, #0]
	str r3, [r6, r2, lsl #2]
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	ldr r3, [r6, #0]
	cmp r3, #0
	add r9, r6, r3, lsl #2
	bne label45
	b label343
label111:
	mov r3, #0
	add sp, sp, #4
	mov r0, r3
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label506:
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
	bne label84
	b label799
label418:
	mov r5, r1
	sub r0, r1, #48
	cmp r0, #10
	bhs label64
label424:
	mov r5, r0
	b label65
.p2align 4
label67:
	add r1, r5, r5, lsl #2
	add r5, r0, r1, lsl #1
.p2align 4
label65:
	bl getch
	mov r1, r0
	sub r0, r0, #48
	cmp r0, #10
	blo label67
	sub r0, r1, #32
	sub r2, r1, #10
	clz r0, r0
	clz r2, r2
	lsr r0, r0, #5
	lsr r2, r2, #5
	orrs r0, r0, r2
	bne label97
	b label788
label54:
	sdiv r3, r9, r3
	b label48
label386:
	mov r3, #0
	b label48
.p2align 4
label310:
	mov r5, r6
	mov r1, r0
	sub r2, r0, #10
	sub r0, r0, #32
	clz r2, r2
	clz r0, r0
	lsr r2, r2, #5
	lsr r0, r0, #5
	orrs r0, r0, r2
	bne label97
	b label788
.p2align 4
label203:
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	mov r3, #0
	mov r2, r6
	mov r6, r3
	b label18
.p2align 4
label462:
	mov r0, r5
	mov r3, #0
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	mov r2, r3
	ldr r5, [r6, #0]
	cmp r5, #0
	bne label84
	b label799
