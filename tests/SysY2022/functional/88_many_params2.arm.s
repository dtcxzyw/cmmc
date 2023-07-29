.arch armv7ve
.data
.bss
.align 4
b:
	.zero	12508
.align 4
a:
	.zero	16348
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r4, #:lower16:a
	mov r2, #0
	sub sp, sp, #4
	movt r4, #:upper16:a
.p2align 4
label2:
	add r0, r4, r2, lsl #2
	mov r1, #0
	str r1, [r4, r2, lsl #2]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #12]
	str r1, [r0, #16]
	str r1, [r0, #20]
	str r1, [r0, #24]
	str r1, [r0, #28]
	str r1, [r0, #32]
	str r1, [r0, #36]
	str r1, [r0, #40]
	str r1, [r0, #44]
	str r1, [r0, #48]
	str r1, [r0, #52]
	str r1, [r0, #56]
	str r1, [r0, #60]
	str r1, [r0, #64]
	str r1, [r0, #68]
	str r1, [r0, #72]
	str r1, [r0, #76]
	str r1, [r0, #80]
	str r1, [r0, #84]
	str r1, [r0, #88]
	str r1, [r0, #92]
	str r1, [r0, #96]
	str r1, [r0, #100]
	str r1, [r0, #104]
	str r1, [r0, #108]
	str r1, [r0, #112]
	str r1, [r0, #116]
	str r1, [r0, #120]
	str r1, [r0, #124]
	str r1, [r0, #128]
	str r1, [r0, #132]
	str r1, [r0, #136]
	str r1, [r0, #140]
	str r1, [r0, #144]
	str r1, [r0, #148]
	str r1, [r0, #152]
	str r1, [r0, #156]
	str r1, [r0, #160]
	str r1, [r0, #164]
	str r1, [r0, #168]
	str r1, [r0, #172]
	str r1, [r0, #176]
	str r1, [r0, #180]
	str r1, [r0, #184]
	str r1, [r0, #188]
	str r1, [r0, #192]
	str r1, [r0, #196]
	str r1, [r0, #200]
	str r1, [r0, #204]
	str r1, [r0, #208]
	str r1, [r0, #212]
	str r1, [r0, #216]
	str r1, [r0, #220]
	str r1, [r0, #224]
	str r1, [r0, #228]
	str r1, [r0, #232]
	str r1, [r0, #236]
	str r1, [r0, #240]
	str r1, [r0, #244]
	str r1, [r0, #248]
	str r1, [r0, #252]
	add r0, r2, #64
	cmp r0, #4032
	bge label4
	mov r2, r0
	b label2
label4:
	add r1, r4, r0, lsl #2
	mov r3, #0
	str r3, [r4, r0, lsl #2]
	add r0, r2, #116
	str r3, [r1, #4]
	str r3, [r1, #8]
	str r3, [r1, #12]
	str r3, [r1, #16]
	str r3, [r1, #20]
	str r3, [r1, #24]
	str r3, [r1, #28]
	str r3, [r1, #32]
	str r3, [r1, #36]
	str r3, [r1, #40]
	str r3, [r1, #44]
	str r3, [r1, #48]
	str r3, [r1, #52]
	str r3, [r1, #56]
	str r3, [r1, #60]
	str r3, [r1, #64]
	str r3, [r1, #68]
	str r3, [r1, #72]
	str r3, [r1, #76]
	str r3, [r1, #80]
	str r3, [r1, #84]
	str r3, [r1, #88]
	str r3, [r1, #92]
	str r3, [r1, #96]
	str r3, [r1, #100]
	str r3, [r1, #104]
	str r3, [r1, #108]
	str r3, [r1, #112]
	str r3, [r1, #116]
	str r3, [r1, #120]
	str r3, [r1, #124]
	str r3, [r1, #128]
	str r3, [r1, #132]
	str r3, [r1, #136]
	str r3, [r1, #140]
	str r3, [r1, #144]
	str r3, [r1, #148]
	str r3, [r1, #152]
	str r3, [r1, #156]
	str r3, [r1, #160]
	str r3, [r1, #164]
	str r3, [r1, #168]
	str r3, [r1, #172]
	str r3, [r1, #176]
	str r3, [r1, #180]
	str r3, [r1, #184]
	str r3, [r1, #188]
	str r3, [r1, #192]
	str r3, [r1, #196]
	str r3, [r1, #200]
	str r3, [r1, #204]
label5:
	mov r1, #0
	str r1, [r4, r0, lsl #2]
	movw r1, #4087
	add r0, r0, #1
	cmp r0, r1
	blt label5
	movw r2, #:lower16:b
	mov r3, #0
	movt r2, #:upper16:b
.p2align 4
label8:
	add r0, r2, r3, lsl #2
	mov r1, #0
	str r1, [r2, r3, lsl #2]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #12]
	str r1, [r0, #16]
	str r1, [r0, #20]
	str r1, [r0, #24]
	str r1, [r0, #28]
	str r1, [r0, #32]
	str r1, [r0, #36]
	str r1, [r0, #40]
	str r1, [r0, #44]
	str r1, [r0, #48]
	str r1, [r0, #52]
	str r1, [r0, #56]
	str r1, [r0, #60]
	str r1, [r0, #64]
	str r1, [r0, #68]
	str r1, [r0, #72]
	str r1, [r0, #76]
	str r1, [r0, #80]
	str r1, [r0, #84]
	str r1, [r0, #88]
	str r1, [r0, #92]
	str r1, [r0, #96]
	str r1, [r0, #100]
	str r1, [r0, #104]
	str r1, [r0, #108]
	str r1, [r0, #112]
	str r1, [r0, #116]
	str r1, [r0, #120]
	str r1, [r0, #124]
	str r1, [r0, #128]
	str r1, [r0, #132]
	str r1, [r0, #136]
	str r1, [r0, #140]
	str r1, [r0, #144]
	str r1, [r0, #148]
	str r1, [r0, #152]
	str r1, [r0, #156]
	str r1, [r0, #160]
	str r1, [r0, #164]
	str r1, [r0, #168]
	str r1, [r0, #172]
	str r1, [r0, #176]
	str r1, [r0, #180]
	str r1, [r0, #184]
	str r1, [r0, #188]
	str r1, [r0, #192]
	str r1, [r0, #196]
	str r1, [r0, #200]
	str r1, [r0, #204]
	str r1, [r0, #208]
	str r1, [r0, #212]
	str r1, [r0, #216]
	str r1, [r0, #220]
	str r1, [r0, #224]
	str r1, [r0, #228]
	str r1, [r0, #232]
	str r1, [r0, #236]
	str r1, [r0, #240]
	str r1, [r0, #244]
	str r1, [r0, #248]
	str r1, [r0, #252]
	add r0, r3, #64
	cmp r0, #3072
	bge label10
	mov r3, r0
	b label8
label10:
	add r1, r2, r0, lsl #2
	mov r5, #0
	str r5, [r2, r0, lsl #2]
	add r0, r3, #116
	str r5, [r1, #4]
	str r5, [r1, #8]
	str r5, [r1, #12]
	str r5, [r1, #16]
	str r5, [r1, #20]
	str r5, [r1, #24]
	str r5, [r1, #28]
	str r5, [r1, #32]
	str r5, [r1, #36]
	str r5, [r1, #40]
	str r5, [r1, #44]
	str r5, [r1, #48]
	str r5, [r1, #52]
	str r5, [r1, #56]
	str r5, [r1, #60]
	str r5, [r1, #64]
	str r5, [r1, #68]
	str r5, [r1, #72]
	str r5, [r1, #76]
	str r5, [r1, #80]
	str r5, [r1, #84]
	str r5, [r1, #88]
	str r5, [r1, #92]
	str r5, [r1, #96]
	str r5, [r1, #100]
	str r5, [r1, #104]
	str r5, [r1, #108]
	str r5, [r1, #112]
	str r5, [r1, #116]
	str r5, [r1, #120]
	str r5, [r1, #124]
	str r5, [r1, #128]
	str r5, [r1, #132]
	str r5, [r1, #136]
	str r5, [r1, #140]
	str r5, [r1, #144]
	str r5, [r1, #148]
	str r5, [r1, #152]
	str r5, [r1, #156]
	str r5, [r1, #160]
	str r5, [r1, #164]
	str r5, [r1, #168]
	str r5, [r1, #172]
	str r5, [r1, #176]
	str r5, [r1, #180]
	str r5, [r1, #184]
	str r5, [r1, #188]
	str r5, [r1, #192]
	str r5, [r1, #196]
	str r5, [r1, #200]
	str r5, [r1, #204]
label11:
	mov r1, #0
	str r1, [r2, r0, lsl #2]
	movw r1, #3127
	add r0, r0, #1
	cmp r0, r1
	blt label11
	movw r0, #4584
	mov r10, #0
	add r1, r4, r0
	mov r0, #9
	str r0, [r1, #0]
	mov r1, #1
	str r1, [r2, #1420]
	mov r1, #2
	str r1, [r2, #1424]
	mov r1, #3
	str r1, [r2, #1428]
	str r0, [r2, #1452]
	ldr r7, [r2, #1416]
	movw r0, #1416
	add r6, r2, r0
	mov r5, r6
	movw r0, #8040
	add r0, r2, r0
	ldr r8, [r0, #0]
	movw r0, #12108
	add r0, r2, r0
	ldr r9, [r0, #0]
.p2align 4
label14:
	ldr r0, [r5, r10, lsl #2]
	bl putint
	add r10, r10, #1
	cmp r10, #10
	blt label14
	mov r0, #10
	bl putch
	movw r0, #4584
	add r0, r4, r0
	ldr r0, [r0, #0]
	bl putint
	mov r0, #10
	bl putch
	cmp r9, #10
	blt label21
label17:
	add r0, r7, #3
	add r4, r0, r0, lsl #1
	cmn r4, #1
	bgt label19
	b label18
label21:
	add r0, r9, #4
	cmp r0, #10
	blt label337
	mov r0, r9
	mov r1, r8
	b label22
label337:
	mov r0, r8
	mov r1, r9
	b label25
label22:
	movw r2, #63339
	movw r3, #18373
	movt r2, #1
	movt r3, #36041
	mul r2, r1, r2
	add r1, r1, #7
	smmla r3, r2, r3, r2
	asr r4, r3, #11
	add r3, r4, r3, lsr #31
	movw r4, #3724
	mls r2, r3, r4, r2
	str r2, [r6, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #10
	blt label22
	b label17
label25:
	add r2, r6, r1, lsl #2
	movw r3, #63339
	movw r4, #18373
	movt r3, #1
	movt r4, #36041
	mul r9, r0, r3
	smmla r8, r9, r4, r9
	asr r10, r8, #11
	add r10, r10, r8, lsr #31
	movw r8, #3724
	mls r9, r10, r8, r9
	str r9, [r6, r1, lsl #2]
	add r1, r1, #4
	add r9, r0, #7
	cmp r1, #6
	mul r9, r9, r3
	smmla r10, r9, r4, r9
	asr r11, r10, #11
	add r10, r11, r10, lsr #31
	mls r9, r10, r8, r9
	str r9, [r2, #4]
	add r9, r0, #14
	mul r9, r9, r3
	smmla r10, r9, r4, r9
	asr r11, r10, #11
	add r10, r11, r10, lsr #31
	mls r9, r10, r8, r9
	str r9, [r2, #8]
	add r9, r0, #21
	mul r3, r9, r3
	smmla r4, r3, r4, r3
	asr r9, r4, #11
	add r4, r9, r4, lsr #31
	mls r3, r4, r8, r3
	str r3, [r2, #12]
	add r2, r0, #28
	blt label369
	mov r0, r1
	mov r1, r2
	b label22
label369:
	mov r0, r2
	b label25
label18:
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label19:
	ldr r0, [r5, r4, lsl #2]
	bl putint
	mov r0, #32
	bl putch
	sub r4, r4, #1
	cmn r4, #1
	bgt label19
	b label18
