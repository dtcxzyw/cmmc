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
	@ stack usage: CalleeArg[0] Local[0] RegSpill[140] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #148
	bl getint
	str r0, [sp, #116]
	mov r1, r0
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	bl getarray
	str r0, [sp, #72]
	mov r0, #28
	bl _sysy_starttime
	ldr r0, [sp, #72]
	sub r8, r0, #3
	sub r0, r0, #18
	str r8, [sp, #68]
	str r0, [sp, #64]
	ldr r1, [sp, #116]
	cmp r1, #0
	ble label115
	cmp r1, #3
	ble label331
	sub r2, r1, #3
	cmp r2, #15
	sub r1, r1, #18
	str r2, [sp, #20]
	ble label349
	movw r7, #:lower16:matrix
	movt r7, #:upper16:matrix
	mov r0, #0
	b label102
.p2align 4
label105:
	add r7, r7, #64
.p2align 4
label102:
	str r0, [r7, #0]
	add r2, r0, #1
	str r2, [r7, #4]
	add r2, r0, #2
	str r2, [r7, #8]
	add r2, r0, #3
	str r2, [r7, #12]
	add r2, r0, #4
	str r2, [r7, #16]
	add r2, r0, #5
	str r2, [r7, #20]
	add r2, r0, #6
	str r2, [r7, #24]
	add r2, r0, #7
	str r2, [r7, #28]
	add r2, r0, #8
	str r2, [r7, #32]
	add r2, r0, #9
	str r2, [r7, #36]
	add r2, r0, #10
	str r2, [r7, #40]
	add r2, r0, #11
	str r2, [r7, #44]
	add r2, r0, #12
	str r2, [r7, #48]
	add r2, r0, #13
	str r2, [r7, #52]
	add r2, r0, #14
	str r2, [r7, #56]
	add r2, r0, #15
	add r0, r0, #16
	str r2, [r7, #60]
	cmp r1, r0
	bgt label105
	mov r1, r0
label93:
	ldr r2, [sp, #20]
	cmp r2, r1
	ble label83
	movw r7, #:lower16:matrix
	movt r7, #:upper16:matrix
	add r0, r7, r1, lsl #2
	b label97
label100:
	add r0, r0, #16
label97:
	str r1, [r0, #0]
	add r2, r1, #1
	str r2, [r0, #4]
	add r2, r1, #2
	str r2, [r0, #8]
	add r2, r1, #3
	add r1, r1, #4
	str r2, [r0, #12]
	ldr r2, [sp, #20]
	cmp r2, r1
	bgt label100
	mov r0, r1
label83:
	ldr r1, [sp, #116]
	cmp r1, r0
	ble label335
	movw r7, #:lower16:matrix
	movt r7, #:upper16:matrix
	add r2, r7, r0, lsl #2
	b label86
label89:
	add r2, r2, #4
	mov r0, r3
label86:
	add r3, r0, #1
	str r0, [r2, #0]
	ldr r1, [sp, #116]
	cmp r1, r3
	bgt label89
label335:
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	mov r5, #0
	movw r7, #:lower16:matrix
	movt r7, #:upper16:matrix
	mov r4, r0
	mov r3, r7
	ldr r0, [r0, #0]
	ldr r1, [sp, #116]
	sdiv r2, r1, r0
	mov r1, #0
label5:
	mul r6, r0, r1
	movw r7, #:lower16:matrix
	movt r7, #:upper16:matrix
	cmp r2, r1
	add r6, r7, r6, lsl #2
	bgt label8
	b label124
.p2align 4
label454:
	add r1, r1, #1
	add r3, r3, #4
	movw r7, #:lower16:matrix
	movt r7, #:upper16:matrix
	cmp r2, r1
	mul r6, r0, r1
	add r6, r7, r6, lsl #2
	ble label457
.p2align 4
label8:
	mov r7, #0
	cmp r0, r7
	bgt label13
	add r1, r1, #1
	add r3, r3, #4
	movw r7, #:lower16:matrix
	movt r7, #:upper16:matrix
	cmp r2, r1
	mul r6, r0, r1
	add r6, r7, r6, lsl #2
	bgt label8
	add r5, r5, #1
	ldr r0, [sp, #72]
	cmp r0, r5
	bgt label17
	b label18
.p2align 4
label15:
	add r6, r6, #4
	mov r7, r8
	cmp r0, r8
	ble label454
.p2align 4
label13:
	add r8, r7, #1
	cmp r1, r7
	blt label15
	mul r7, r2, r7
	ldr r9, [r6, #0]
	cmp r0, r8
	add r6, r6, #4
	str r9, [r3, r7, lsl #2]
	mov r7, r8
	bgt label13
	add r1, r1, #1
	add r3, r3, #4
	movw r7, #:lower16:matrix
	movt r7, #:upper16:matrix
	cmp r2, r1
	mul r6, r0, r1
	add r6, r7, r6, lsl #2
	bgt label8
	add r5, r5, #1
	ldr r0, [sp, #72]
	cmp r0, r5
	bgt label17
	b label18
.p2align 4
label457:
	add r5, r5, #1
	ldr r0, [sp, #72]
	cmp r0, r5
	ble label18
.p2align 4
label17:
	add r4, r4, #4
	movw r7, #:lower16:matrix
	movt r7, #:upper16:matrix
	ldr r0, [r4, #0]
	mov r3, r7
	ldr r1, [sp, #116]
	sdiv r2, r1, r0
	mov r1, #0
	cmp r2, r1
	mul r6, r0, r1
	add r6, r7, r6, lsl #2
	bgt label8
label124:
	add r5, r5, #1
	ldr r0, [sp, #72]
	cmp r0, r5
	bgt label17
label18:
	ldr r0, [sp, #72]
	cmp r0, #3
	ble label151
	ldr r8, [sp, #68]
	cmp r8, #15
	ble label155
	movw r7, #:lower16:matrix
	movt r7, #:upper16:matrix
	mov r1, #16
	mov r11, #15
	mov r10, #14
	str r7, [sp, #60]
	mov r9, #13
	mov r8, #12
	str r1, [sp, #56]
	mov r6, #11
	mov r5, #10
	str r11, [sp, #48]
	mov r4, #9
	mov r3, #8
	str r10, [sp, #44]
	mov r2, #7
	mov r0, #1
	str r9, [sp, #40]
	str r8, [sp, #36]
	str r6, [sp, #32]
	str r5, [sp, #28]
	str r4, [sp, #24]
	str r3, [sp, #76]
	str r2, [sp, #80]
	mov r2, #6
	str r2, [sp, #84]
	mov r2, #5
	str r2, [sp, #88]
	mov r2, #4
	str r2, [sp, #92]
	mov r2, #3
	str r2, [sp, #96]
	mov r2, #2
	str r2, [sp, #100]
	mov r2, #0
	mov r7, r2
	str r2, [sp, #104]
	str r0, [sp, #52]
	str r2, [sp, #108]
	mov r1, r2
	str r2, [sp, #112]
.p2align 4
label43:
	ldr r7, [sp, #60]
	ldr r1, [r7, #0]
	ldr r3, [r7, #4]
	ldr r0, [sp, #52]
	ldr r2, [sp, #104]
	add r2, r2, r0
	add r0, r0, #32
	mul r3, r3, r2
	ldr r2, [sp, #104]
	mla r1, r2, r1, r3
	ldr r2, [sp, #100]
	add r3, r2, #2
	ldr r2, [sp, #104]
	add r2, r2, r3
	ldr r3, [r7, #8]
	mla r1, r2, r3, r1
	ldr r2, [sp, #96]
	add r3, r2, #6
	ldr r2, [sp, #104]
	add r2, r2, r3
	ldr r3, [r7, #12]
	mla r1, r2, r3, r1
	ldr r2, [sp, #92]
	add r3, r2, #12
	ldr r2, [sp, #104]
	add r2, r2, r3
	ldr r3, [r7, #16]
	mla r1, r2, r3, r1
	ldr r2, [sp, #88]
	add r3, r2, #20
	ldr r2, [sp, #104]
	add r2, r2, r3
	ldr r3, [r7, #20]
	mla r1, r2, r3, r1
	ldr r2, [sp, #84]
	add r3, r2, #30
	ldr r2, [sp, #104]
	add r2, r2, r3
	ldr r3, [r7, #24]
	mla r1, r2, r3, r1
	ldr r2, [sp, #80]
	add r3, r2, #42
	ldr r2, [sp, #104]
	add r2, r2, r3
	ldr r3, [r7, #28]
	mla r1, r2, r3, r1
	ldr r3, [sp, #76]
	ldr r2, [sp, #104]
	add r3, r3, #56
	add r2, r2, r3
	ldr r3, [r7, #32]
	ldr r4, [sp, #24]
	mla r1, r2, r3, r1
	ldr r2, [sp, #104]
	add r3, r4, #72
	add r4, r4, #288
	add r2, r2, r3
	ldr r3, [r7, #36]
	ldr r5, [sp, #28]
	mla r1, r2, r3, r1
	ldr r2, [sp, #104]
	add r3, r5, #90
	add r5, r5, #320
	add r2, r2, r3
	ldr r3, [r7, #40]
	ldr r6, [sp, #32]
	mla r1, r2, r3, r1
	ldr r2, [sp, #104]
	add r3, r6, #110
	add r6, r6, #352
	add r2, r2, r3
	ldr r3, [r7, #44]
	ldr r8, [sp, #36]
	mla r1, r2, r3, r1
	ldr r2, [sp, #104]
	add r3, r8, #132
	add r8, r8, #384
	add r2, r2, r3
	ldr r3, [r7, #48]
	ldr r9, [sp, #40]
	mla r1, r2, r3, r1
	ldr r2, [sp, #104]
	add r3, r9, #156
	add r9, r9, #416
	add r2, r2, r3
	ldr r3, [r7, #52]
	ldr r10, [sp, #44]
	mla r1, r2, r3, r1
	ldr r2, [sp, #104]
	add r3, r10, #182
	add r10, r10, #448
	add r2, r2, r3
	ldr r3, [r7, #56]
	ldr r11, [sp, #48]
	mla r1, r2, r3, r1
	ldr r2, [sp, #104]
	add r3, r11, #210
	add r11, r11, #480
	add r2, r2, r3
	ldr r3, [r7, #60]
	mla r2, r2, r3, r1
	ldr r1, [sp, #112]
	add r1, r1, r2
	str r1, [sp, #120]
	ldr r1, [sp, #56]
	ldr r2, [sp, #104]
	add r3, r1, #240
	add r1, r1, #512
	add r2, r2, r3
	str r2, [sp, #128]
	ldr r7, [sp, #108]
	add r7, r7, #16
	str r7, [sp, #124]
	ldr r2, [sp, #100]
	add r2, r2, #64
	str r2, [sp, #136]
	ldr r2, [sp, #96]
	add r2, r2, #96
	str r2, [sp, #16]
	ldr r2, [sp, #92]
	add r2, r2, #128
	str r2, [sp, #12]
	ldr r2, [sp, #88]
	add r2, r2, #160
	str r2, [sp, #4]
	ldr r2, [sp, #84]
	add r2, r2, #192
	str r2, [sp, #0]
	ldr r2, [sp, #80]
	ldr r3, [sp, #76]
	str r0, [sp, #132]
	ldr r0, [sp, #64]
	add r2, r2, #224
	add r3, r3, #256
	cmp r0, r7
	ble label308
	ldr r7, [sp, #60]
	add r7, r7, #64
	str r7, [sp, #60]
	str r1, [sp, #56]
	str r11, [sp, #48]
	str r10, [sp, #44]
	str r9, [sp, #40]
	str r8, [sp, #36]
	str r6, [sp, #32]
	str r5, [sp, #28]
	str r4, [sp, #24]
	str r3, [sp, #76]
	str r2, [sp, #80]
	ldr r2, [sp, #0]
	str r2, [sp, #84]
	ldr r2, [sp, #4]
	str r2, [sp, #88]
	ldr r2, [sp, #12]
	str r2, [sp, #92]
	ldr r2, [sp, #16]
	str r2, [sp, #96]
	ldr r2, [sp, #136]
	str r2, [sp, #100]
	ldr r2, [sp, #128]
	str r2, [sp, #104]
	ldr r0, [sp, #132]
	str r0, [sp, #52]
	ldr r7, [sp, #124]
	str r7, [sp, #108]
	ldr r1, [sp, #120]
	str r1, [sp, #112]
	b label43
label308:
	ldr r2, [sp, #128]
	ldr r0, [sp, #132]
	ldr r7, [sp, #124]
	ldr r1, [sp, #120]
	mov r5, r2
	mov r6, r0
	mov r3, r7
	mov r4, r1
label20:
	ldr r8, [sp, #68]
	cmp r8, r3
	ble label159
	movw r7, #:lower16:matrix
	movt r7, #:upper16:matrix
	mov r1, r3
	mov r0, r6
	mov r2, r5
	add r7, r7, r3, lsl #2
	str r7, [sp, #8]
label35:
	ldr r7, [sp, #8]
	add r6, r0, r2
	add r1, r1, #4
	ldr r3, [r7, #0]
	ldr r5, [r7, #4]
	mul r5, r5, r6
	ldr r6, [r7, #8]
	mla r3, r2, r3, r5
	add r5, r0, #1
	add r5, r2, r5, lsl #1
	mla r3, r5, r6, r3
	ldr r6, [r7, #12]
	add r5, r0, r0, lsl #1
	ldr r8, [sp, #68]
	add r5, r5, #6
	add r5, r2, r5
	mla r3, r5, r6, r3
	cmp r8, r1
	add r4, r4, r3
	lsl r3, r0, #2
	add r0, r0, #8
	add r3, r3, #12
	add r2, r2, r3
	ble label192
	add r7, r7, #16
	str r7, [sp, #8]
	b label35
label192:
	mov r5, r0
	mov r0, r4
	mov r3, r4
label65:
	ldr r0, [sp, #72]
	cmp r0, r1
	ble label313
	movw r7, #:lower16:matrix
	movt r7, #:upper16:matrix
	mov r0, r5
	add r3, r7, r1, lsl #2
	mov r5, r1
	mov r1, r4
label72:
	ldr r4, [r3, #0]
	add r5, r5, #1
	mla r1, r2, r4, r1
	add r4, r0, #2
	add r2, r2, r0
	ldr r0, [sp, #72]
	cmp r0, r5
	ble label79
	add r3, r3, #4
	mov r0, r4
	b label72
label79:
	cmp r1, #0
	mov r4, r1
	mov r0, #47
	rsbmi r4, r1, #0
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #148
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label159:
	mov r3, r0
	mov r0, r1
	mov r1, r7
	mov r4, r0
	mov r5, r3
	mov r3, r0
	b label65
label115:
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	mov r5, #0
	mov r4, r0
	ldr r0, [r0, #0]
	movw r7, #:lower16:matrix
	movt r7, #:upper16:matrix
	ldr r1, [sp, #116]
	mov r3, r7
	sdiv r2, r1, r0
	mov r1, #0
	b label5
label155:
	mov r5, #0
	mov r6, #1
	mov r4, r5
	mov r3, r5
	mov r0, r5
	mov r2, r5
	mov r1, r5
	mov r7, r5
	b label20
label349:
	mov r1, #0
	mov r0, r1
	b label93
label313:
	mov r1, r3
	b label79
label331:
	mov r0, #0
	b label83
label151:
	mov r4, #0
	mov r5, #1
	mov r2, r4
	mov r1, r4
	mov r3, r4
	b label65
