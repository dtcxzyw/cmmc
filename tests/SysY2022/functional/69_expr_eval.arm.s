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
	blo label4
	bl getch
	mov r2, #1
	mov r3, #0
	mov r1, r0
	mov r0, r3
	b label7
.p2align 4
label4:
	bl getch
	sub r1, r0, #48
	cmp r1, #10
	bhs label136
	add r0, r5, r5, lsl #2
	add r5, r1, r0, lsl #1
	b label4
label136:
	mov r1, r0
	mov r3, #0
	mov r0, r5
	mov r2, r3
label7:
	cmp r4, #0
	beq label11
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	mov r3, #0
	mov r5, r3
.p2align 4
label17:
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
	bge label21
	add r6, r6, #256
	mov r5, r3
	b label17
.p2align 4
label21:
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
label22:
	mov r3, #0
	str r3, [r5, #0]
	add r3, r6, #1
	cmp r3, #256
	bge label280
	add r5, r5, #4
	mov r6, r3
	b label22
label11:
	mov r3, #0
	add sp, sp, #4
	mov r0, r3
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label280:
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	mov r3, #0
	mov r5, r3
.p2align 4
label27:
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
	bge label31
	add r6, r6, #256
	mov r5, r3
	b label27
.p2align 4
label31:
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
label32:
	mov r3, #0
	str r3, [r5, #0]
	add r3, r6, #1
	cmp r3, #256
	bge label35
	add r5, r5, #4
	mov r6, r3
	b label32
.p2align 4
label35:
	cmp r2, #0
	bne label424
.p2align 4
label423:
	mov r5, r0
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	sub r2, r1, #10
	ldr r0, [r6, #0]
	clz r2, r2
	lsr r2, r2, #5
	add r0, r0, #1
	str r0, [r6, #0]
	str r5, [r6, r0, lsl #2]
	sub r0, r1, #32
	clz r0, r0
	lsr r0, r0, #5
	orrs r0, r0, r2
	bne label103
	b label433
.p2align 4
label439:
	mov r5, r0
	b label100
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
	bne label446
	b label42
.p2align 4
label103:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	bne label103
	mov r7, r0
	sub r0, r0, #48
	cmp r0, #10
	blo label439
	b label41
.p2align 4
label100:
	bl getch
	mov r1, r0
	sub r0, r0, #48
	cmp r0, #10
	bhs label636
	add r1, r5, r5, lsl #2
	add r5, r0, r1, lsl #1
	b label100
.p2align 4
label424:
	mov r5, r1
	mov r6, r0
	mov r7, r2
	b label104
.p2align 4
label479:
	add r3, r5, #1
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	cmp r2, #0
	str r3, [r6, #0]
	str r7, [r6, r3, lsl #2]
	beq label423
	b label424
.p2align 4
label104:
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
label108:
	bl putint
	mov r0, #10
	bl putch
	subs r4, r4, #1
	beq label11
	mov r1, r5
	mov r0, r6
	mov r2, r7
	mov r3, #0
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	mov r5, r3
	b label17
label1006:
	mov r0, r1
	sub r0, r1, #48
	cmp r0, #10
	blo label565
	b label78
.p2align 4
label99:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	bne label99
	sub r0, r0, #48
	cmp r0, #10
	blo label565
	b label78
.p2align 4
label636:
	sub r0, r1, #32
	sub r2, r1, #10
	clz r0, r0
	clz r2, r2
	lsr r0, r0, #5
	lsr r2, r2, #5
	orrs r0, r0, r2
	bne label99
	b label1006
.p2align 4
label565:
	mov r5, r0
.p2align 4
label96:
	bl getch
	mov r1, r0
	sub r0, r0, #48
	cmp r0, #10
	bhs label621
	add r1, r5, r5, lsl #2
	add r5, r0, r1, lsl #1
	b label96
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
.p2align 4
label83:
	movw r6, #:lower16:oprs
	movt r6, #:upper16:oprs
	mov r5, r1
	mov r7, r2
	ldr r3, [r6, #0]
	ldr r3, [r6, r3, lsl #2]
	mov r6, r0
	mov r0, r3
	b label108
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
	beq label95
	b label590
.p2align 4
label88:
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
	bne label84
	b label83
.p2align 4
label95:
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
	bne label84
	b label83
.p2align 4
label590:
	cmp r3, #45
	beq label88
	cmp r3, #42
	beq label94
	cmp r3, #47
	bne label1031
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
	b label83
.p2align 4
label1031:
	cmp r3, #37
	beq label92
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
	b label83
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
	beq label456
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	beq label47
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
.p2align 4
label47:
	sub r0, r0, #48
	cmp r0, #10
	bhs label49
	mov r5, r0
.p2align 4
label70:
	bl getch
	mov r1, r0
	sub r0, r0, #48
	cmp r0, #10
	bhs label551
	add r1, r5, r5, lsl #2
	add r5, r0, r1, lsl #1
	b label70
.p2align 4
label446:
	mov r8, #10
	cmp r8, #0
	beq label456
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	bne label46
	b label47
.p2align 4
label49:
	bl getch
	mov r2, #1
	mov r1, r0
	mov r0, r5
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	ldr r5, [r6, #0]
	cmp r5, #0
	beq label479
.p2align 4
label54:
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
	bne label55
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
	beq label69
.p2align 4
label57:
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
	beq label68
	cmp r3, #45
	beq label61
	cmp r3, #42
	beq label67
	b label63
label58:
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
	bne label54
	b label479
label67:
	mul r3, r5, r9
	b label58
.p2align 4
label94:
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
	b label83
.p2align 4
label551:
	mov r0, r5
	mov r3, #0
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	mov r2, r3
	ldr r5, [r6, #0]
	cmp r5, #0
	bne label54
	add r3, r5, #1
	cmp r2, #0
	str r3, [r6, #0]
	str r7, [r6, r3, lsl #2]
	beq label423
	b label424
.p2align 4
label68:
	add r3, r5, r9
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
	bne label54
	add r3, r5, #1
	cmp r2, #0
	str r3, [r6, #0]
	str r7, [r6, r3, lsl #2]
	beq label423
	b label424
label61:
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
	bne label54
	b label479
label63:
	cmp r3, #47
	bne label64
	sdiv r3, r9, r5
	b label58
.p2align 4
label92:
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
	b label83
label433:
	mov r7, r1
	sub r0, r1, #48
	cmp r0, #10
	blo label439
	b label41
label64:
	cmp r3, #37
	bne label534
	sdiv r3, r9, r5
	mls r3, r3, r5, r9
	b label58
.p2align 4
label621:
	mov r0, r5
	mov r3, #0
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	mov r2, r3
	ldr r5, [r6, #0]
	cmp r5, #0
	bne label84
	b label83
.p2align 4
label55:
	cmp r8, #11
	blt label57
label69:
	add r3, r5, #1
	movw r6, #:lower16:ops
	movt r6, #:upper16:ops
	cmp r2, #0
	str r3, [r6, #0]
	str r7, [r6, r3, lsl #2]
	beq label423
	b label424
label534:
	mov r3, #0
	b label58
.p2align 4
label456:
	mov r1, r0
	sub r2, r0, #10
	sub r0, r0, #32
	clz r2, r2
	clz r0, r0
	lsr r2, r2, #5
	lsr r0, r0, #5
	orrs r0, r0, r2
	bne label99
	b label1006
