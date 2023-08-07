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
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #148
	bl getint
	str r0, [sp, #116]
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	bl getarray
	str r0, [sp, #72]
	mov r0, #28
	bl _sysy_starttime
	ldr r0, [sp, #72]
	sub r6, r0, #20
	sub r1, r0, #4
	str r1, [sp, #68]
	str r6, [sp, #64]
	ldr r0, [sp, #116]
	cmp r0, #0
	ble label88
	cmp r0, #4
	ble label92
	sub r1, r0, #20
	sub r2, r0, #4
	cmp r2, #16
	str r2, [sp, #16]
	ble label104
	movw r6, #:lower16:matrix
	movt r6, #:upper16:matrix
	mov r0, #0
.p2align 4
label11:
	str r0, [r6, #0]
	add r2, r0, #1
	str r2, [r6, #4]
	add r2, r0, #2
	str r2, [r6, #8]
	add r2, r0, #3
	str r2, [r6, #12]
	add r2, r0, #4
	str r2, [r6, #16]
	add r2, r0, #5
	str r2, [r6, #20]
	add r2, r0, #6
	str r2, [r6, #24]
	add r2, r0, #7
	str r2, [r6, #28]
	add r2, r0, #8
	str r2, [r6, #32]
	add r2, r0, #9
	str r2, [r6, #36]
	add r2, r0, #10
	str r2, [r6, #40]
	add r2, r0, #11
	str r2, [r6, #44]
	add r2, r0, #12
	str r2, [r6, #48]
	add r2, r0, #13
	str r2, [r6, #52]
	add r2, r0, #14
	str r2, [r6, #56]
	add r2, r0, #15
	add r0, r0, #16
	str r2, [r6, #60]
	cmp r1, r0
	ble label139
	add r6, r6, #64
	b label11
label88:
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	mov r5, #0
	ldr r1, [r0, #0]
	mov r4, r0
	ldr r0, [sp, #116]
	sdiv r2, r0, r1
	mov r0, #0
	mul r3, r1, r0
	cmp r2, r0
	ble label163
.p2align 4
label164:
	mov r6, #0
	cmp r1, r6
	bgt label75
	b label408
.p2align 4
label28:
	add r4, r4, #4
	ldr r1, [r4, #0]
	ldr r0, [sp, #116]
	sdiv r2, r0, r1
	mov r0, #0
	cmp r2, r0
	mul r3, r1, r0
	bgt label164
	b label163
label29:
	ldr r0, [sp, #72]
	cmp r0, #4
	ble label30
	ldr r1, [sp, #68]
	cmp r1, #16
	ble label40
	movw r6, #:lower16:matrix
	movt r6, #:upper16:matrix
	mov r10, #15
	mov r9, #14
	mov r8, #13
	str r6, [sp, #60]
	mov r7, #12
	mov r5, #11
	mov r4, #10
	mov r3, #9
	mov r1, #7
	mov r0, #1
	mov r6, #16
	str r6, [sp, #56]
	str r10, [sp, #48]
	str r9, [sp, #44]
	str r8, [sp, #40]
	str r7, [sp, #36]
	str r5, [sp, #32]
	str r4, [sp, #28]
	str r3, [sp, #24]
	mov r3, #8
	str r3, [sp, #76]
	str r1, [sp, #80]
	mov r1, #6
	str r1, [sp, #84]
	mov r1, #5
	str r1, [sp, #88]
	mov r1, #4
	str r1, [sp, #92]
	mov r1, #3
	str r1, [sp, #96]
	mov r1, #2
	str r1, [sp, #100]
	mov r1, #0
	mov r11, r1
	str r1, [sp, #104]
	str r0, [sp, #52]
	str r1, [sp, #108]
	str r1, [sp, #112]
	b label42
.p2align 4
label414:
	add r0, r0, #1
	cmp r2, r0
	mul r3, r1, r0
	bgt label164
	add r5, r5, #1
	ldr r0, [sp, #72]
	cmp r0, r5
	bgt label28
	b label29
.p2align 4
label75:
	add r7, r6, #1
	cmp r0, r6
	blt label351
	mla r8, r2, r6, r0
	add r9, r3, r6
	cmp r1, r7
	movw r6, #:lower16:matrix
	movt r6, #:upper16:matrix
	ldr r9, [r6, r9, lsl #2]
	str r9, [r6, r8, lsl #2]
	mov r6, r7
	bgt label75
	b label414
.p2align 4
label351:
	mov r6, r7
	cmp r1, r7
	bgt label75
	add r0, r0, #1
	cmp r2, r0
	mul r3, r1, r0
	bgt label164
	add r5, r5, #1
	ldr r0, [sp, #72]
	cmp r0, r5
	bgt label28
	b label29
.p2align 4
label42:
	ldr r6, [sp, #60]
	ldr r2, [r6, #0]
	ldr r3, [r6, #4]
	ldr r0, [sp, #52]
	ldr r1, [sp, #104]
	add r1, r1, r0
	add r0, r0, #32
	mul r3, r3, r1
	ldr r1, [sp, #104]
	mla r2, r1, r2, r3
	ldr r3, [r6, #8]
	ldr r1, [sp, #100]
	add r4, r1, #2
	ldr r1, [sp, #104]
	add r1, r1, r4
	mla r2, r3, r1, r2
	ldr r3, [r6, #12]
	ldr r1, [sp, #96]
	add r4, r1, #6
	ldr r1, [sp, #104]
	add r1, r1, r4
	mla r2, r3, r1, r2
	ldr r3, [r6, #16]
	ldr r1, [sp, #92]
	add r4, r1, #12
	ldr r1, [sp, #104]
	add r1, r1, r4
	mla r2, r3, r1, r2
	ldr r3, [r6, #20]
	ldr r1, [sp, #88]
	add r4, r1, #20
	ldr r1, [sp, #104]
	add r1, r1, r4
	mla r2, r3, r1, r2
	ldr r3, [r6, #24]
	ldr r1, [sp, #84]
	add r4, r1, #30
	ldr r1, [sp, #104]
	add r1, r1, r4
	mla r2, r3, r1, r2
	ldr r3, [r6, #28]
	ldr r1, [sp, #80]
	add r4, r1, #42
	ldr r1, [sp, #104]
	add r1, r1, r4
	ldr r4, [r6, #32]
	mla r2, r3, r1, r2
	ldr r3, [sp, #76]
	ldr r1, [sp, #104]
	add r3, r3, #56
	add r1, r1, r3
	mla r2, r4, r1, r2
	ldr r4, [r6, #36]
	ldr r3, [sp, #24]
	ldr r1, [sp, #104]
	add r3, r3, #72
	add r1, r1, r3
	ldr r3, [r6, #40]
	mla r2, r4, r1, r2
	ldr r4, [sp, #28]
	ldr r1, [sp, #104]
	add r4, r4, #90
	add r1, r1, r4
	mla r2, r3, r1, r2
	ldr r3, [r6, #44]
	ldr r5, [sp, #32]
	ldr r1, [sp, #104]
	add r4, r5, #110
	add r5, r5, #352
	add r1, r1, r4
	mla r2, r3, r1, r2
	ldr r3, [r6, #48]
	ldr r7, [sp, #36]
	ldr r1, [sp, #104]
	add r4, r7, #132
	add r7, r7, #384
	add r1, r1, r4
	mla r2, r3, r1, r2
	ldr r3, [r6, #52]
	ldr r8, [sp, #40]
	ldr r1, [sp, #104]
	add r4, r8, #156
	add r8, r8, #416
	add r1, r1, r4
	mla r2, r3, r1, r2
	ldr r3, [r6, #56]
	ldr r9, [sp, #44]
	ldr r1, [sp, #104]
	add r4, r9, #182
	add r9, r9, #448
	add r1, r1, r4
	mla r2, r3, r1, r2
	ldr r3, [r6, #60]
	ldr r10, [sp, #48]
	ldr r1, [sp, #104]
	add r4, r10, #210
	add r10, r10, #480
	add r1, r1, r4
	mla r2, r3, r1, r2
	ldr r1, [sp, #112]
	add r1, r1, r2
	str r1, [sp, #124]
	ldr r6, [sp, #56]
	ldr r1, [sp, #104]
	add r2, r6, #240
	add r3, r1, r2
	str r3, [sp, #120]
	ldr r11, [sp, #108]
	add r11, r11, #16
	str r11, [sp, #132]
	ldr r1, [sp, #100]
	add r1, r1, #64
	str r1, [sp, #136]
	ldr r1, [sp, #96]
	add r1, r1, #96
	str r1, [sp, #20]
	ldr r1, [sp, #92]
	add r1, r1, #128
	str r1, [sp, #12]
	ldr r1, [sp, #88]
	add r1, r1, #160
	str r1, [sp, #4]
	ldr r1, [sp, #84]
	add r1, r1, #192
	str r1, [sp, #0]
	ldr r1, [sp, #80]
	ldr r3, [sp, #76]
	add r1, r1, #224
	add r2, r3, #256
	ldr r3, [sp, #24]
	ldr r4, [sp, #28]
	str r0, [sp, #128]
	add r0, r6, #512
	add r3, r3, #288
	ldr r6, [sp, #64]
	add r4, r4, #320
	cmp r6, r11
	ble label304
	ldr r6, [sp, #60]
	add r6, r6, #64
	str r6, [sp, #60]
	str r0, [sp, #56]
	mov r6, r0
	str r10, [sp, #48]
	str r9, [sp, #44]
	str r8, [sp, #40]
	str r7, [sp, #36]
	str r5, [sp, #32]
	str r4, [sp, #28]
	str r3, [sp, #24]
	str r2, [sp, #76]
	str r1, [sp, #80]
	ldr r1, [sp, #0]
	str r1, [sp, #84]
	ldr r1, [sp, #4]
	str r1, [sp, #88]
	ldr r1, [sp, #12]
	str r1, [sp, #92]
	ldr r1, [sp, #20]
	str r1, [sp, #96]
	ldr r1, [sp, #136]
	str r1, [sp, #100]
	ldr r3, [sp, #120]
	str r3, [sp, #104]
	ldr r0, [sp, #128]
	str r0, [sp, #52]
	str r11, [sp, #108]
	ldr r1, [sp, #124]
	str r1, [sp, #112]
	b label42
label163:
	add r5, r5, #1
	ldr r0, [sp, #72]
	cmp r0, r5
	bgt label28
	b label29
.p2align 4
label408:
	add r0, r0, #1
	cmp r2, r0
	mul r3, r1, r0
	bgt label164
	b label163
label30:
	movw r6, #:lower16:matrix
	movt r6, #:upper16:matrix
	mov r1, #0
	mov r2, #1
	mov r3, r1
	mov r0, r1
.p2align 4
label31:
	ldr r4, [r6, #0]
	mla r3, r1, r4, r3
	add r1, r1, r2
	add r4, r0, #1
	add r2, r2, #2
	ldr r0, [sp, #72]
	cmp r0, r4
	ble label37
	add r6, r6, #4
	mov r0, r4
	b label31
label37:
	cmp r3, #0
	mov r4, r3
	mov r0, #47
	rsbmi r4, r3, #0
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #148
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label40:
	movw r6, #:lower16:matrix
	movt r6, #:upper16:matrix
	mov r1, #0
	mov r2, #1
	str r6, [sp, #8]
	mov r11, r1
	mov r0, r1
label65:
	ldr r6, [sp, #8]
	add r5, r2, r0
	add r11, r11, #4
	ldr r3, [r6, #0]
	ldr r4, [r6, #4]
	mul r4, r4, r5
	ldr r5, [r6, #8]
	mla r3, r0, r3, r4
	add r4, r2, #1
	add r4, r0, r4, lsl #1
	mla r3, r4, r5, r3
	ldr r5, [r6, #12]
	add r4, r2, r2, lsl #1
	add r4, r4, #6
	add r4, r0, r4
	mla r3, r4, r5, r3
	add r3, r1, r3
	lsl r1, r2, #2
	add r2, r2, #8
	add r1, r1, #12
	add r0, r0, r1
	ldr r1, [sp, #68]
	cmp r1, r11
	ble label71
	mov r1, r3
	add r6, r6, #16
	str r6, [sp, #8]
	b label65
label71:
	movw r6, #:lower16:matrix
	movt r6, #:upper16:matrix
	mov r1, r0
	add r6, r6, r11, lsl #2
	mov r0, r11
	b label31
label139:
	movw r6, #:lower16:matrix
	movt r6, #:upper16:matrix
	add r6, r6, r0, lsl #2
label17:
	str r0, [r6, #0]
	add r1, r0, #1
	str r1, [r6, #4]
	add r1, r0, #2
	str r1, [r6, #8]
	add r1, r0, #3
	add r0, r0, #4
	str r1, [r6, #12]
	ldr r2, [sp, #16]
	cmp r2, r0
	ble label20
	add r6, r6, #16
	b label17
label20:
	movw r6, #:lower16:matrix
	movt r6, #:upper16:matrix
	add r6, r6, r0, lsl #2
label3:
	str r0, [r6, #0]
	add r1, r0, #1
	ldr r0, [sp, #116]
	cmp r0, r1
	ble label88
	add r6, r6, #4
	mov r0, r1
	b label3
label304:
	movw r6, #:lower16:matrix
	movt r6, #:upper16:matrix
	ldr r11, [sp, #132]
	add r6, r6, r11, lsl #2
	str r6, [sp, #8]
	ldr r1, [sp, #124]
	ldr r0, [sp, #128]
	ldr r3, [sp, #120]
	mov r2, r0
	mov r0, r3
	b label65
label92:
	movw r6, #:lower16:matrix
	movt r6, #:upper16:matrix
	mov r0, #0
	b label3
label104:
	movw r6, #:lower16:matrix
	movt r6, #:upper16:matrix
	mov r0, #0
	b label17
