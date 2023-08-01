.arch armv7ve
.data
.bss
.align 8
b:
	.zero	12508
.align 8
a:
	.zero	16348
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r4, #63339
	movt r4, #1
	mov r2, #0
	movw r5, #:lower16:a
	movt r5, #:upper16:a
	sub sp, sp, #12
	mov r0, r2
	str r2, [sp, #0]
.p2align 4
label2:
	add r1, r5, r2, lsl #2
	ldr r0, [sp, #0]
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #12]
	str r0, [r1, #16]
	str r0, [r1, #20]
	str r0, [r1, #24]
	str r0, [r1, #28]
	str r0, [r1, #32]
	str r0, [r1, #36]
	str r0, [r1, #40]
	str r0, [r1, #44]
	str r0, [r1, #48]
	str r0, [r1, #52]
	str r0, [r1, #56]
	str r0, [r1, #60]
	str r0, [r1, #64]
	str r0, [r1, #68]
	str r0, [r1, #72]
	str r0, [r1, #76]
	str r0, [r1, #80]
	str r0, [r1, #84]
	str r0, [r1, #88]
	str r0, [r1, #92]
	str r0, [r1, #96]
	str r0, [r1, #100]
	str r0, [r1, #104]
	str r0, [r1, #108]
	str r0, [r1, #112]
	str r0, [r1, #116]
	str r0, [r1, #120]
	str r0, [r1, #124]
	str r0, [r1, #128]
	str r0, [r1, #132]
	str r0, [r1, #136]
	str r0, [r1, #140]
	str r0, [r1, #144]
	str r0, [r1, #148]
	str r0, [r1, #152]
	str r0, [r1, #156]
	str r0, [r1, #160]
	str r0, [r1, #164]
	str r0, [r1, #168]
	str r0, [r1, #172]
	str r0, [r1, #176]
	str r0, [r1, #180]
	str r0, [r1, #184]
	str r0, [r1, #188]
	str r0, [r1, #192]
	str r0, [r1, #196]
	str r0, [r1, #200]
	str r0, [r1, #204]
	str r0, [r1, #208]
	str r0, [r1, #212]
	str r0, [r1, #216]
	str r0, [r1, #220]
	str r0, [r1, #224]
	str r0, [r1, #228]
	str r0, [r1, #232]
	str r0, [r1, #236]
	str r0, [r1, #240]
	str r0, [r1, #244]
	str r0, [r1, #248]
	str r0, [r1, #252]
	add r0, r2, #64
	cmp r0, #4032
	bge label4
	mov r2, r0
	b label2
label4:
	add r1, r5, r0, lsl #2
	ldr r0, [sp, #0]
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #12]
	str r0, [r1, #16]
	str r0, [r1, #20]
	str r0, [r1, #24]
	str r0, [r1, #28]
	str r0, [r1, #32]
	str r0, [r1, #36]
	str r0, [r1, #40]
	str r0, [r1, #44]
	str r0, [r1, #48]
	str r0, [r1, #52]
	str r0, [r1, #56]
	str r0, [r1, #60]
	str r0, [r1, #64]
	str r0, [r1, #68]
	str r0, [r1, #72]
	str r0, [r1, #76]
	str r0, [r1, #80]
	str r0, [r1, #84]
	str r0, [r1, #88]
	str r0, [r1, #92]
	str r0, [r1, #96]
	str r0, [r1, #100]
	str r0, [r1, #104]
	str r0, [r1, #108]
	str r0, [r1, #112]
	str r0, [r1, #116]
	str r0, [r1, #120]
	str r0, [r1, #124]
	str r0, [r1, #128]
	str r0, [r1, #132]
	str r0, [r1, #136]
	str r0, [r1, #140]
	str r0, [r1, #144]
	str r0, [r1, #148]
	str r0, [r1, #152]
	str r0, [r1, #156]
	str r0, [r1, #160]
	str r0, [r1, #164]
	str r0, [r1, #168]
	str r0, [r1, #172]
	str r0, [r1, #176]
	str r0, [r1, #180]
	str r0, [r1, #184]
	str r0, [r1, #188]
	str r0, [r1, #192]
	str r0, [r1, #196]
	str r0, [r1, #200]
	str r0, [r1, #204]
	add r1, r2, #116
.p2align 4
label5:
	ldr r0, [sp, #0]
	str r0, [r5, r1, lsl #2]
	movw r0, #4087
	add r1, r1, #1
	cmp r1, r0
	blt label5
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	ldr r0, [sp, #0]
	mov r2, r0
.p2align 4
label8:
	add r1, r3, r2, lsl #2
	ldr r0, [sp, #0]
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #12]
	str r0, [r1, #16]
	str r0, [r1, #20]
	str r0, [r1, #24]
	str r0, [r1, #28]
	str r0, [r1, #32]
	str r0, [r1, #36]
	str r0, [r1, #40]
	str r0, [r1, #44]
	str r0, [r1, #48]
	str r0, [r1, #52]
	str r0, [r1, #56]
	str r0, [r1, #60]
	str r0, [r1, #64]
	str r0, [r1, #68]
	str r0, [r1, #72]
	str r0, [r1, #76]
	str r0, [r1, #80]
	str r0, [r1, #84]
	str r0, [r1, #88]
	str r0, [r1, #92]
	str r0, [r1, #96]
	str r0, [r1, #100]
	str r0, [r1, #104]
	str r0, [r1, #108]
	str r0, [r1, #112]
	str r0, [r1, #116]
	str r0, [r1, #120]
	str r0, [r1, #124]
	str r0, [r1, #128]
	str r0, [r1, #132]
	str r0, [r1, #136]
	str r0, [r1, #140]
	str r0, [r1, #144]
	str r0, [r1, #148]
	str r0, [r1, #152]
	str r0, [r1, #156]
	str r0, [r1, #160]
	str r0, [r1, #164]
	str r0, [r1, #168]
	str r0, [r1, #172]
	str r0, [r1, #176]
	str r0, [r1, #180]
	str r0, [r1, #184]
	str r0, [r1, #188]
	str r0, [r1, #192]
	str r0, [r1, #196]
	str r0, [r1, #200]
	str r0, [r1, #204]
	str r0, [r1, #208]
	str r0, [r1, #212]
	str r0, [r1, #216]
	str r0, [r1, #220]
	str r0, [r1, #224]
	str r0, [r1, #228]
	str r0, [r1, #232]
	str r0, [r1, #236]
	str r0, [r1, #240]
	str r0, [r1, #244]
	str r0, [r1, #248]
	str r0, [r1, #252]
	add r0, r2, #64
	cmp r0, #3072
	bge label10
	mov r2, r0
	b label8
label10:
	add r1, r3, r0, lsl #2
	ldr r0, [sp, #0]
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #12]
	str r0, [r1, #16]
	str r0, [r1, #20]
	str r0, [r1, #24]
	str r0, [r1, #28]
	str r0, [r1, #32]
	str r0, [r1, #36]
	str r0, [r1, #40]
	str r0, [r1, #44]
	str r0, [r1, #48]
	str r0, [r1, #52]
	str r0, [r1, #56]
	str r0, [r1, #60]
	str r0, [r1, #64]
	str r0, [r1, #68]
	str r0, [r1, #72]
	str r0, [r1, #76]
	str r0, [r1, #80]
	str r0, [r1, #84]
	str r0, [r1, #88]
	str r0, [r1, #92]
	str r0, [r1, #96]
	str r0, [r1, #100]
	str r0, [r1, #104]
	str r0, [r1, #108]
	str r0, [r1, #112]
	str r0, [r1, #116]
	str r0, [r1, #120]
	str r0, [r1, #124]
	str r0, [r1, #128]
	str r0, [r1, #132]
	str r0, [r1, #136]
	str r0, [r1, #140]
	str r0, [r1, #144]
	str r0, [r1, #148]
	str r0, [r1, #152]
	str r0, [r1, #156]
	str r0, [r1, #160]
	str r0, [r1, #164]
	str r0, [r1, #168]
	str r0, [r1, #172]
	str r0, [r1, #176]
	str r0, [r1, #180]
	str r0, [r1, #184]
	str r0, [r1, #188]
	str r0, [r1, #192]
	str r0, [r1, #196]
	str r0, [r1, #200]
	str r0, [r1, #204]
	add r1, r2, #116
.p2align 4
label11:
	ldr r0, [sp, #0]
	str r0, [r3, r1, lsl #2]
	movw r0, #3127
	add r1, r1, #1
	cmp r1, r0
	blt label11
	movw r0, #4584
	add r1, r5, r0
	mov r0, #9
	str r0, [r1, #0]
	mov r1, #1
	str r1, [r3, #1420]
	mov r1, #2
	str r1, [r3, #1424]
	mov r1, #3
	str r1, [r3, #1428]
	str r0, [r3, #1452]
	ldr r8, [r3, #1416]
	movw r0, #1416
	add r7, r3, r0
	mov r6, r7
	movw r0, #8040
	add r0, r3, r0
	ldr r9, [r0, #0]
	movw r0, #12108
	add r0, r3, r0
	ldr r10, [r0, #0]
	ldr r0, [sp, #0]
	mov r11, r0
.p2align 4
label14:
	ldr r0, [r6, r11, lsl #2]
	bl putint
	add r11, r11, #1
	cmp r11, #10
	blt label14
	mov r0, #10
	bl putch
	movw r0, #4584
	add r0, r5, r0
	ldr r0, [r0, #0]
	bl putint
	mov r0, #10
	bl putch
	cmp r10, #10
	blt label21
label17:
	add r0, r8, #3
	add r4, r0, r0, lsl #1
	cmn r4, #1
	bgt label19
	b label18
label21:
	add r0, r10, #4
	cmp r0, #10
	blt label25
label22:
	mul r0, r9, r4
	movw r1, #18373
	movt r1, #36041
	add r9, r9, #7
	smmla r1, r0, r1, r0
	asr r2, r1, #11
	add r1, r2, r1, lsr #31
	movw r2, #3724
	mls r0, r1, r2, r0
	str r0, [r7, r10, lsl #2]
	add r10, r10, #1
	cmp r10, #10
	blt label22
	b label17
.p2align 4
label25:
	add r0, r7, r10, lsl #2
	movw r1, #18373
	movt r1, #36041
	mul r3, r9, r4
	add r10, r10, #4
	cmp r10, #6
	smmla r2, r3, r1, r3
	asr r5, r2, #11
	add r5, r5, r2, lsr #31
	movw r2, #3724
	mls r3, r5, r2, r3
	str r3, [r0, #0]
	add r3, r9, #7
	mul r3, r3, r4
	smmla r5, r3, r1, r3
	asr r11, r5, #11
	add r5, r11, r5, lsr #31
	mls r3, r5, r2, r3
	str r3, [r0, #4]
	add r3, r9, #14
	mul r3, r3, r4
	smmla r5, r3, r1, r3
	asr r11, r5, #11
	add r5, r11, r5, lsr #31
	mls r3, r5, r2, r3
	str r3, [r0, #8]
	add r3, r9, #21
	add r9, r9, #28
	mul r3, r3, r4
	smmla r1, r3, r1, r3
	asr r5, r1, #11
	add r1, r5, r1, lsr #31
	mls r1, r1, r2, r3
	str r1, [r0, #12]
	blt label25
	b label22
label18:
	mov r0, #10
	bl putch
	ldr r0, [sp, #0]
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label19:
	ldr r0, [r6, r4, lsl #2]
	bl putint
	mov r0, #32
	bl putch
	sub r4, r4, #1
	cmn r4, #1
	bgt label19
	b label18
