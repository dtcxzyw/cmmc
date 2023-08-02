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
	mov r2, #0
	movw r4, #:lower16:a
	movt r4, #:upper16:a
	sub sp, sp, #12
	mov r0, r2
	mov r1, r4
	str r2, [sp, #0]
.p2align 4
label2:
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
	bge label6
	add r1, r1, #256
	mov r2, r0
	b label2
label6:
	add r1, r4, r0, lsl #2
	add r2, r2, #112
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
	add r1, r4, r2, lsl #2
.p2align 4
label7:
	ldr r0, [sp, #0]
	add r2, r2, #4
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #12]
	movw r0, #4083
	cmp r2, r0
	bge label186
	add r1, r1, #16
	b label7
label186:
	add r1, r4, r2, lsl #2
.p2align 4
label12:
	ldr r0, [sp, #0]
	add r2, r2, #1
	str r0, [r1, #0]
	movw r0, #4087
	cmp r2, r0
	bge label15
	add r1, r1, #4
	b label12
label15:
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	ldr r0, [sp, #0]
	mov r1, r2
	mov r3, r0
.p2align 4
label16:
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
	add r0, r3, #64
	cmp r0, #3072
	bge label19
	add r1, r1, #256
	mov r3, r0
	b label16
label19:
	add r1, r2, r0, lsl #2
	add r3, r3, #112
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
	add r1, r2, r3, lsl #2
.p2align 4
label20:
	ldr r0, [sp, #0]
	add r3, r3, #4
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #12]
	movw r0, #3123
	cmp r3, r0
	bge label23
	add r1, r1, #16
	b label20
label23:
	add r1, r2, r3, lsl #2
.p2align 4
label24:
	ldr r0, [sp, #0]
	add r3, r3, #1
	str r0, [r1, #0]
	movw r0, #3127
	cmp r3, r0
	bge label27
	add r1, r1, #4
	b label24
label27:
	movw r0, #4584
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
	ldr r6, [r2, #1416]
	movw r0, #1416
	add r7, r2, r0
	mov r5, r7
	movw r0, #8040
	add r0, r2, r0
	ldr r8, [r0, #0]
	movw r0, #12108
	add r0, r2, r0
	ldr r9, [r0, #0]
	mov r10, r7
	ldr r0, [sp, #0]
	mov r11, r0
.p2align 4
label28:
	ldr r0, [r10, #0]
	bl putint
	add r11, r11, #1
	cmp r11, #10
	bge label31
	add r10, r10, #4
	b label28
label31:
	mov r0, #10
	bl putch
	movw r0, #4584
	add r0, r4, r0
	ldr r0, [r0, #0]
	bl putint
	mov r0, #10
	bl putch
	cmp r9, #10
	bge label46
	add r0, r9, #4
	cmp r0, #10
	bge label360
	add r0, r7, r9, lsl #2
.p2align 4
label39:
	movw r1, #63339
	movt r1, #1
	movw r2, #18373
	movt r2, #36041
	add r9, r9, #4
	mul r4, r8, r1
	cmp r9, #6
	smmla r3, r4, r2, r4
	asr r10, r3, #11
	add r10, r10, r3, lsr #31
	movw r3, #3724
	mls r4, r10, r3, r4
	str r4, [r0, #0]
	add r4, r8, #7
	mul r4, r4, r1
	smmla r10, r4, r2, r4
	asr r11, r10, #11
	add r10, r11, r10, lsr #31
	mls r4, r10, r3, r4
	str r4, [r0, #4]
	add r4, r8, #14
	mul r4, r4, r1
	smmla r10, r4, r2, r4
	asr r11, r10, #11
	add r10, r11, r10, lsr #31
	mls r4, r10, r3, r4
	str r4, [r0, #8]
	add r4, r8, #21
	add r8, r8, #28
	mul r1, r4, r1
	smmla r2, r1, r2, r1
	asr r4, r2, #11
	add r2, r4, r2, lsr #31
	mls r1, r2, r3, r1
	str r1, [r0, #12]
	bge label360
	add r0, r0, #16
	b label39
label360:
	add r0, r7, r9, lsl #2
label33:
	movw r1, #63339
	movt r1, #1
	movw r2, #18373
	movt r2, #36041
	add r9, r9, #1
	mul r1, r8, r1
	cmp r9, #10
	add r8, r8, #7
	smmla r2, r1, r2, r1
	asr r3, r2, #11
	add r2, r3, r2, lsr #31
	movw r3, #3724
	mls r1, r2, r3, r1
	str r1, [r0, #0]
	bge label46
	add r0, r0, #4
	b label33
label46:
	add r0, r6, #3
	add r0, r0, r0, lsl #1
	cmn r0, #1
	ble label47
	add r4, r5, r0, lsl #2
	mov r5, r0
.p2align 4
label49:
	ldr r0, [r4, #0]
	bl putint
	mov r0, #32
	bl putch
	sub r5, r5, #1
	cmn r5, #1
	ble label47
	sub r4, r4, #4
	b label49
label47:
	mov r0, #10
	bl putch
	ldr r0, [sp, #0]
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
