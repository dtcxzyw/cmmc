.arch armv7ve
.data
.bss
.align 8
matrix:
	.zero	80000000
.align 8
a:
	.zero	400000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #164
	bl getint
	str r0, [sp, #16]
	mov r2, r0
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	str r2, [sp, #12]
	mov r0, r2
	bl getarray
	sub r1, r0, #4
	str r0, [sp, #48]
	mov r2, r0
	str r1, [sp, #56]
	sub r0, r0, #20
	str r0, [sp, #64]
	mov r0, #28
	bl _sysy_starttime
	ldr r2, [sp, #16]
	cmp r2, #0
	bgt label2
	b label10
label3:
	ldr r3, [sp, #68]
	str r0, [r3, r0, lsl #2]
	ldr r2, [sp, #16]
	add r0, r0, #1
	cmp r2, r0
	bgt label3
	b label10
label5:
	ldr r2, [sp, #16]
	sub r2, r2, #4
	str r2, [sp, #84]
	ldr r2, [sp, #16]
	sub r1, r2, #20
	ldr r2, [sp, #84]
	cmp r2, #16
	bgt label85
	mov r0, #0
	b label6
label85:
	mov r0, #0
	b label8
label6:
	ldr r3, [sp, #68]
	add r2, r0, #1
	str r0, [r3, r0, lsl #2]
	add r1, r3, r0, lsl #2
	str r2, [r1, #4]
	add r2, r0, #2
	str r2, [r1, #8]
	add r2, r0, #3
	add r0, r0, #4
	str r2, [r1, #12]
	ldr r2, [sp, #84]
	cmp r2, r0
	bgt label6
	b label3
label8:
	ldr r3, [sp, #68]
	str r0, [r3, r0, lsl #2]
	add r2, r3, r0, lsl #2
	add r3, r0, #1
	str r3, [r2, #4]
	add r3, r0, #2
	str r3, [r2, #8]
	add r3, r0, #3
	str r3, [r2, #12]
	add r3, r0, #4
	str r3, [r2, #16]
	add r3, r0, #5
	str r3, [r2, #20]
	add r3, r0, #6
	str r3, [r2, #24]
	add r3, r0, #7
	str r3, [r2, #28]
	add r3, r0, #8
	str r3, [r2, #32]
	add r3, r0, #9
	str r3, [r2, #36]
	add r3, r0, #10
	str r3, [r2, #40]
	add r3, r0, #11
	str r3, [r2, #44]
	add r3, r0, #12
	str r3, [r2, #48]
	add r3, r0, #13
	str r3, [r2, #52]
	add r3, r0, #14
	str r3, [r2, #56]
	add r3, r0, #15
	add r0, r0, #16
	str r3, [r2, #60]
	cmp r1, r0
	bgt label8
	b label6
label10:
	ldr r2, [sp, #48]
	cmp r2, #0
	ble label141
	movw r0, #:lower16:matrix
	mov r1, #0
	movt r0, #:upper16:matrix
.p2align 4
label47:
	ldr r2, [sp, #12]
	ldr r3, [r2, r1, lsl #2]
	ldr r2, [sp, #16]
	sdiv r4, r2, r3
	mov r2, #0
	mul r6, r3, r2
	cmp r4, r2
	bgt label326
	add r1, r1, #1
	ldr r2, [sp, #48]
	cmp r2, r1
	bgt label47
	cmp r2, #0
	bgt label14
	b label141
.p2align 4
label55:
	cmp r2, r5
	blt label57
	mla r7, r4, r5, r2
	add r8, r6, r5
	add r5, r5, #1
	ldr r8, [r0, r8, lsl #2]
	str r8, [r0, r7, lsl #2]
	cmp r3, r5
	bgt label55
	add r2, r2, #1
	mul r6, r3, r2
	cmp r4, r2
	bgt label326
	add r1, r1, #1
	ldr r2, [sp, #48]
	cmp r2, r1
	bgt label47
	cmp r2, #0
	bgt label14
	b label141
.p2align 4
label57:
	add r5, r5, #1
	cmp r3, r5
	bgt label55
	add r2, r2, #1
	mul r6, r3, r2
	cmp r4, r2
	bgt label326
	add r1, r1, #1
	ldr r2, [sp, #48]
	cmp r2, r1
	bgt label47
	cmp r2, #0
	bgt label14
label141:
	mov r4, #0
	b label12
.p2align 4
label326:
	mov r5, #0
	cmp r3, r5
	bgt label55
	add r2, r2, #1
	mul r6, r3, r2
	cmp r4, r2
	bgt label326
	add r1, r1, #1
	ldr r2, [sp, #48]
	cmp r2, r1
	bgt label47
	cmp r2, #0
	ble label141
label14:
	movw r4, #:lower16:matrix
	movt r4, #:upper16:matrix
	str r4, [sp, #72]
	ldr r2, [sp, #48]
	cmp r2, #4
	bgt label20
	mov r1, #0
	mov r3, #1
	mov r2, r1
	mov r0, r1
	b label15
label12:
	mov r0, #47
	bl _sysy_stoptime
	movs r0, r4
	rsbmi r0, r4, #0
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #164
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label15:
	ldr r4, [sp, #72]
	ldr r4, [r4, r0, lsl #2]
	add r0, r0, #1
	mla r4, r1, r4, r2
	ldr r2, [sp, #48]
	add r1, r1, r3
	add r3, r3, #2
	cmp r2, r0
	ble label12
	mov r2, r4
	b label15
label20:
	ldr r1, [sp, #56]
	cmp r1, #16
	bgt label165
	mov r1, #0
	str r1, [sp, #124]
	str r1, [sp, #92]
	mov r1, #1
	str r1, [sp, #112]
	ldr r1, [sp, #92]
	mov r0, r1
	b label21
label165:
	mov r2, #16
	mov r1, #15
	mov r10, #14
	mov r9, #13
	str r2, [sp, #80]
	mov r8, #12
	mov r7, #11
	str r1, [sp, #96]
	mov r6, #10
	mov r5, #9
	str r10, [sp, #104]
	mov r4, #8
	mov r3, #7
	str r9, [sp, #116]
	mov r0, #1
	str r8, [sp, #128]
	str r7, [sp, #136]
	str r6, [sp, #108]
	str r5, [sp, #120]
	str r4, [sp, #140]
	str r3, [sp, #144]
	mov r3, #6
	str r3, [sp, #148]
	mov r3, #5
	str r3, [sp, #152]
	mov r3, #4
	str r3, [sp, #156]
	mov r3, #3
	str r3, [sp, #40]
	mov r3, #2
	str r3, [sp, #36]
	mov r3, #0
	str r3, [sp, #32]
	str r0, [sp, #88]
	str r3, [sp, #28]
	str r3, [sp, #24]
	b label26
label21:
	ldr r4, [sp, #72]
	ldr r1, [sp, #92]
	ldr r3, [r4, r1, lsl #2]
	add r2, r4, r1, lsl #2
	ldr r4, [r2, #4]
	ldr r1, [sp, #112]
	add r1, r1, r0
	mul r1, r4, r1
	mla r3, r0, r3, r1
	ldr r1, [sp, #112]
	ldr r4, [r2, #8]
	add r1, r1, #1
	add r1, r0, r1, lsl #1
	mla r3, r1, r4, r3
	ldr r1, [sp, #112]
	ldr r2, [r2, #12]
	add r1, r1, r1, lsl #1
	add r1, r1, #6
	add r1, r0, r1
	mla r2, r1, r2, r3
	ldr r1, [sp, #124]
	add r2, r1, r2
	ldr r1, [sp, #112]
	lsl r1, r1, #2
	add r1, r1, #12
	add r0, r0, r1
	ldr r1, [sp, #92]
	add r4, r1, #4
	ldr r1, [sp, #112]
	add r3, r1, #8
	ldr r1, [sp, #56]
	cmp r1, r4
	bgt label198
	mov r1, r0
	mov r0, r4
	b label15
label198:
	mov r1, r2
	str r2, [sp, #124]
	mov r1, r4
	str r4, [sp, #92]
	mov r1, r3
	str r3, [sp, #112]
	b label21
label26:
	ldr r4, [sp, #72]
	ldr r3, [sp, #28]
	add r1, r4, r3, lsl #2
	str r1, [sp, #20]
	ldr r2, [r4, r3, lsl #2]
	ldr r1, [r1, #4]
	ldr r0, [sp, #88]
	ldr r3, [sp, #32]
	add r3, r3, r0
	add r0, r0, #32
	mul r1, r1, r3
	ldr r3, [sp, #32]
	mla r2, r3, r2, r1
	ldr r1, [sp, #20]
	ldr r1, [r1, #8]
	ldr r3, [sp, #36]
	add r4, r3, #2
	ldr r3, [sp, #32]
	add r3, r3, r4
	mla r2, r1, r3, r2
	ldr r1, [sp, #20]
	ldr r1, [r1, #12]
	ldr r3, [sp, #40]
	add r4, r3, #6
	ldr r3, [sp, #32]
	add r3, r3, r4
	mla r2, r1, r3, r2
	ldr r1, [sp, #20]
	ldr r1, [r1, #16]
	ldr r3, [sp, #156]
	add r4, r3, #12
	ldr r3, [sp, #32]
	add r3, r3, r4
	mla r2, r1, r3, r2
	ldr r1, [sp, #20]
	ldr r1, [r1, #20]
	ldr r3, [sp, #152]
	add r4, r3, #20
	ldr r3, [sp, #32]
	add r3, r3, r4
	mla r2, r1, r3, r2
	ldr r1, [sp, #20]
	ldr r1, [r1, #24]
	ldr r3, [sp, #148]
	add r4, r3, #30
	ldr r3, [sp, #32]
	add r3, r3, r4
	mla r2, r1, r3, r2
	ldr r1, [sp, #20]
	ldr r1, [r1, #28]
	ldr r3, [sp, #144]
	add r4, r3, #42
	ldr r3, [sp, #32]
	add r3, r3, r4
	mla r2, r1, r3, r2
	ldr r1, [sp, #20]
	ldr r1, [r1, #32]
	ldr r4, [sp, #140]
	ldr r3, [sp, #32]
	add r4, r4, #56
	add r3, r3, r4
	mla r2, r1, r3, r2
	ldr r1, [sp, #20]
	ldr r1, [r1, #36]
	ldr r5, [sp, #120]
	ldr r3, [sp, #32]
	add r4, r5, #72
	add r3, r3, r4
	mla r2, r1, r3, r2
	ldr r1, [sp, #20]
	ldr r1, [r1, #40]
	ldr r6, [sp, #108]
	ldr r3, [sp, #32]
	add r4, r6, #90
	add r6, r6, #320
	add r3, r3, r4
	mla r2, r1, r3, r2
	ldr r1, [sp, #20]
	ldr r1, [r1, #44]
	ldr r7, [sp, #136]
	ldr r3, [sp, #32]
	add r4, r7, #110
	add r7, r7, #352
	add r3, r3, r4
	mla r2, r1, r3, r2
	ldr r1, [sp, #20]
	ldr r1, [r1, #48]
	ldr r8, [sp, #128]
	ldr r3, [sp, #32]
	add r4, r8, #132
	add r8, r8, #384
	add r3, r3, r4
	mla r2, r1, r3, r2
	ldr r1, [sp, #20]
	ldr r1, [r1, #52]
	ldr r9, [sp, #116]
	ldr r3, [sp, #32]
	add r4, r9, #156
	add r9, r9, #416
	add r3, r3, r4
	mla r2, r1, r3, r2
	ldr r1, [sp, #20]
	ldr r1, [r1, #56]
	ldr r10, [sp, #104]
	ldr r3, [sp, #32]
	add r4, r10, #182
	add r10, r10, #448
	add r3, r3, r4
	mla r2, r1, r3, r2
	ldr r1, [sp, #20]
	ldr r4, [r1, #60]
	ldr r1, [sp, #96]
	ldr r3, [sp, #32]
	add r5, r1, #210
	add r1, r1, #480
	add r3, r3, r5
	mla r2, r4, r3, r2
	ldr r3, [sp, #24]
	add r2, r3, r2
	str r2, [sp, #4]
	ldr r2, [sp, #80]
	ldr r3, [sp, #32]
	add r4, r2, #240
	add r2, r2, #512
	add r3, r3, r4
	str r3, [sp, #8]
	ldr r3, [sp, #28]
	add r11, r3, #16
	str r11, [sp, #44]
	ldr r3, [sp, #36]
	add r3, r3, #64
	str r3, [sp, #52]
	ldr r3, [sp, #40]
	add r3, r3, #96
	str r3, [sp, #60]
	ldr r3, [sp, #156]
	add r3, r3, #128
	str r3, [sp, #76]
	ldr r3, [sp, #152]
	add r3, r3, #160
	str r3, [sp, #100]
	ldr r3, [sp, #148]
	add r3, r3, #192
	str r3, [sp, #132]
	ldr r3, [sp, #144]
	ldr r4, [sp, #140]
	ldr r5, [sp, #120]
	str r0, [sp, #0]
	add r3, r3, #224
	ldr r0, [sp, #64]
	add r4, r4, #256
	add r5, r5, #288
	cmp r0, r11
	bgt label315
	ldr r2, [sp, #4]
	str r2, [sp, #124]
	mov r1, r2
	str r11, [sp, #92]
	mov r1, r11
	ldr r0, [sp, #0]
	str r0, [sp, #112]
	mov r1, r0
	ldr r3, [sp, #8]
	mov r0, r3
	b label21
label315:
	str r2, [sp, #80]
	str r1, [sp, #96]
	str r10, [sp, #104]
	str r9, [sp, #116]
	str r8, [sp, #128]
	str r7, [sp, #136]
	str r6, [sp, #108]
	str r5, [sp, #120]
	str r4, [sp, #140]
	str r3, [sp, #144]
	ldr r3, [sp, #132]
	str r3, [sp, #148]
	ldr r3, [sp, #100]
	str r3, [sp, #152]
	ldr r3, [sp, #76]
	str r3, [sp, #156]
	ldr r3, [sp, #60]
	str r3, [sp, #40]
	ldr r3, [sp, #52]
	str r3, [sp, #36]
	ldr r3, [sp, #8]
	str r3, [sp, #32]
	ldr r0, [sp, #0]
	str r0, [sp, #88]
	ldr r11, [sp, #44]
	str r11, [sp, #28]
	mov r3, r11
	ldr r2, [sp, #4]
	str r2, [sp, #24]
	mov r3, r2
	b label26
label2:
	movw r3, #:lower16:matrix
	movt r3, #:upper16:matrix
	str r3, [sp, #68]
	ldr r2, [sp, #16]
	cmp r2, #4
	bgt label5
	mov r0, #0
	b label3
