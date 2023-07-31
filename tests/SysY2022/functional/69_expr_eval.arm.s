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
	movw r5, #:lower16:ops
	movw r6, #:lower16:oprs
	movt r5, #:upper16:ops
	movt r6, #:upper16:oprs
	str r6, [sp, #4]
	str r5, [sp, #0]
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
	blo label103
	bl getch
	mov r2, #1
	mov r1, #0
label5:
	cmp r4, #0
	beq label102
	mov r3, #0
.p2align 4
label14:
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
	bge label16
	mov r3, r5
	b label14
.p2align 4
label21:
	ldr r5, [sp, #0]
	add r3, r3, #124
	add r5, r5, r6, lsl #2
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
.p2align 4
label22:
	mov r6, #0
	ldr r5, [sp, #0]
	str r6, [r5, r3, lsl #2]
	add r3, r3, #1
	cmp r3, #256
	blt label22
	cmp r2, #0
	beq label408
.p2align 4
label409:
	mov r5, r0
	mov r6, r1
	mov r7, r2
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
label97:
	bl putint
	mov r0, #10
	bl putch
	subs r4, r4, #1
	beq label102
	mov r0, r5
	mov r1, r6
	mov r2, r7
	mov r3, #0
	b label14
.p2align 4
label16:
	ldr r6, [sp, #4]
	add r3, r3, #124
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
	str r6, [r5, #224]
	str r6, [r5, #228]
	str r6, [r5, #232]
	str r6, [r5, #236]
.p2align 4
label17:
	mov r5, #0
	ldr r6, [sp, #4]
	str r5, [r6, r3, lsl #2]
	add r3, r3, #1
	cmp r3, #256
	blt label17
	mov r3, #0
.p2align 4
label19:
	ldr r5, [sp, #0]
	mov r6, #0
	add r5, r5, r3, lsl #2
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
	add r6, r3, #64
	cmp r6, #192
	bge label21
	mov r3, r6
	b label19
.p2align 4
label408:
	mov r5, r1
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
	bne label32
.p2align 4
label418:
	mov r7, r0
	b label33
.p2align 4
label32:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	bne label32
	b label418
.p2align 4
label33:
	sub r0, r7, #48
	cmp r0, #10
	blo label431
	bl getch
	sub r2, r7, #45
	sub r1, r7, #43
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	beq label36
	mov r8, #10
	cmp r8, #0
	bne label998
label448:
	mov r1, r0
	sub r0, r0, #32
	sub r2, r1, #10
	clz r0, r0
	clz r2, r2
	lsr r0, r0, #5
	lsr r2, r2, #5
	orrs r0, r0, r2
	bne label93
	b label1000
label48:
	add r3, r5, r9
label49:
	ldr r6, [sp, #4]
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	ldr r5, [sp, #0]
	ldr r6, [r5, #0]
	cmp r6, #0
	bne label46
	add r3, r6, #1
	cmp r2, #0
	str r3, [r5, #0]
	str r7, [r5, r3, lsl #2]
	beq label408
	b label409
.p2align 4
label431:
	mov r5, r0
.p2align 4
label94:
	bl getch
	mov r1, r0
	sub r0, r0, #48
	cmp r0, #10
	bhs label628
	add r1, r5, r5, lsl #2
	add r5, r0, r1, lsl #1
	b label94
label36:
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
	beq label448
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	bne label66
	b label40
label459:
	mov r5, r0
.p2align 4
label62:
	bl getch
	mov r1, r0
	sub r0, r0, #48
	cmp r0, #10
	bhs label535
	add r1, r5, r5, lsl #2
	add r5, r0, r1, lsl #1
	b label62
label65:
	bl getch
	mov r2, #1
	mov r1, r5
	ldr r5, [sp, #0]
	ldr r6, [r5, #0]
	cmp r6, #0
	bne label46
	b label463
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
	blo label459
	b label65
.p2align 4
label103:
	bl getch
	sub r1, r0, #48
	cmp r1, #10
	bhs label641
	add r0, r5, r5, lsl #2
	add r5, r1, r0, lsl #1
	b label103
label1000:
	mov r0, r1
	sub r0, r1, #48
	cmp r0, #10
	blo label557
	b label72
.p2align 4
label93:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	bne label93
	sub r0, r0, #48
	cmp r0, #10
	blo label557
	b label72
.p2align 4
label628:
	sub r0, r1, #32
	sub r2, r1, #10
	clz r0, r0
	clz r2, r2
	lsr r0, r0, #5
	lsr r2, r2, #5
	orrs r0, r0, r2
	bne label93
	b label1000
label557:
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
label72:
	bl getch
	mov r2, #1
	mov r1, r5
	ldr r5, [sp, #0]
	ldr r6, [r5, #0]
	cmp r6, #0
	bne label81
.p2align 4
label1007:
	ldr r6, [sp, #4]
	mov r5, r0
	mov r7, r2
	ldr r3, [r6, #0]
	ldr r3, [r6, r3, lsl #2]
	mov r6, r1
	mov r0, r3
	b label97
.p2align 4
label81:
	ldr r5, [sp, #0]
	ldr r3, [r5, r6, lsl #2]
	sub r6, r6, #1
	str r6, [r5, #0]
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
	beq label92
	cmp r3, #45
	bne label594
	sub r3, r7, r5
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	ldr r5, [sp, #0]
	ldr r6, [r5, #0]
	cmp r6, #0
	bne label81
	b label1007
.p2align 4
label92:
	add r3, r5, r7
	ldr r6, [sp, #4]
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	ldr r5, [sp, #0]
	ldr r6, [r5, #0]
	cmp r6, #0
	bne label81
	b label1007
.p2align 4
label594:
	cmp r3, #42
	beq label89
	cmp r3, #47
	bne label1016
	sdiv r3, r7, r5
	ldr r6, [sp, #4]
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	ldr r5, [sp, #0]
	ldr r6, [r5, #0]
	cmp r6, #0
	bne label81
	b label1007
.p2align 4
label89:
	mul r3, r5, r7
	ldr r6, [sp, #4]
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	ldr r5, [sp, #0]
	ldr r6, [r5, #0]
	cmp r6, #0
	bne label81
	b label1007
.p2align 4
label1016:
	cmp r3, #37
	beq label87
	mov r3, #0
	ldr r6, [sp, #4]
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	ldr r5, [sp, #0]
	ldr r6, [r5, #0]
	cmp r6, #0
	bne label81
	b label1007
label46:
	ldr r5, [sp, #0]
	ldr r3, [r5, r6, lsl #2]
	sub r9, r3, #45
	sub r5, r3, #43
	clz r9, r9
	clz r5, r5
	lsr r9, r9, #5
	lsr r5, r5, #5
	orrs r5, r5, r9
	bne label60
	b label59
label47:
	sub r6, r6, #1
	ldr r5, [sp, #0]
	cmp r3, #43
	str r6, [r5, #0]
	ldr r6, [sp, #4]
	ldr r10, [r6, #0]
	sub r11, r10, #1
	add r9, r6, r10, lsl #2
	sub r10, r10, #2
	ldr r5, [r9, #0]
	str r11, [r6, #0]
	ldr r9, [r9, #-4]
	str r10, [r6, #0]
	beq label48
	b label484
label59:
	sub r5, r3, #42
	sub r9, r3, #47
	cmp r8, #1
	clz r5, r5
	clz r9, r9
	lsr r5, r5, #5
	lsr r9, r9, #5
	orr r5, r5, r9
	sub r9, r3, #37
	clz r9, r9
	lsr r9, r9, #5
	orr r5, r5, r9
	mov r9, #0
	movwlt r9, #1
	orrs r5, r5, r9
	bne label47
	b label61
label463:
	add r3, r6, #1
	ldr r5, [sp, #0]
	cmp r2, #0
	str r3, [r5, #0]
	str r7, [r5, r3, lsl #2]
	beq label408
	b label409
label535:
	mov r0, r1
	mov r2, #0
	mov r1, r5
	ldr r5, [sp, #0]
	ldr r6, [r5, #0]
	cmp r6, #0
	bne label46
	b label463
label484:
	cmp r3, #45
	bne label53
	sub r3, r9, r5
	b label49
label53:
	cmp r3, #42
	beq label54
	cmp r3, #47
	bne label56
	sdiv r3, r9, r5
	b label49
label102:
	mov r0, #0
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label87:
	sdiv r3, r7, r5
	mls r3, r3, r5, r7
	ldr r6, [sp, #4]
	ldr r5, [r6, #0]
	add r5, r5, #1
	str r5, [r6, #0]
	str r3, [r6, r5, lsl #2]
	ldr r5, [sp, #0]
	ldr r6, [r5, #0]
	cmp r6, #0
	bne label81
	b label1007
label56:
	cmp r3, #37
	bne label506
	sdiv r3, r9, r5
	mls r3, r3, r5, r9
	b label49
label563:
	mov r0, r1
	mov r2, #0
	mov r1, r5
	ldr r5, [sp, #0]
	ldr r6, [r5, #0]
	cmp r6, #0
	bne label81
	b label1007
label40:
	sub r0, r0, #48
	cmp r0, #10
	blo label459
	b label65
label998:
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	bne label66
	b label40
label60:
	cmp r8, #11
	blt label47
label61:
	add r3, r6, #1
	ldr r5, [sp, #0]
	cmp r2, #0
	str r3, [r5, #0]
	str r7, [r5, r3, lsl #2]
	beq label408
	b label409
label54:
	mul r3, r5, r9
	b label49
label506:
	mov r3, #0
	b label49
label641:
	mov r1, r5
	mov r2, #0
	b label5
