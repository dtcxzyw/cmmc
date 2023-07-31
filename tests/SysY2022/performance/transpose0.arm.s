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
	str r0, [sp, #136]
	mov r1, r0
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	str r1, [sp, #140]
	mov r0, r1
	bl getarray
	sub r5, r0, #4
	str r0, [sp, #88]
	mov r1, r0
	str r5, [sp, #80]
	sub r0, r0, #20
	str r0, [sp, #76]
	mov r0, #28
	bl _sysy_starttime
	movw r5, #:lower16:matrix
	movt r5, #:upper16:matrix
	str r5, [sp, #84]
	ldr r1, [sp, #136]
	cmp r1, #0
	ble label10
	cmp r1, #4
	ble label70
	sub r2, r1, #4
	cmp r2, #16
	sub r1, r1, #20
	str r2, [sp, #20]
	ble label76
	mov r0, #0
	b label6
label4:
	ldr r5, [sp, #84]
	add r2, r0, #1
	add r1, r5, r0, lsl #2
	str r0, [r1, #0]
	str r2, [r1, #4]
	add r2, r0, #2
	str r2, [r1, #8]
	add r2, r0, #3
	add r0, r0, #4
	str r2, [r1, #12]
	ldr r2, [sp, #20]
	cmp r2, r0
	bgt label4
	b label8
label6:
	ldr r5, [sp, #84]
	add r3, r0, #1
	add r2, r5, r0, lsl #2
	str r0, [r2, #0]
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
	bgt label6
	b label4
label8:
	ldr r5, [sp, #84]
	str r0, [r5, r0, lsl #2]
	ldr r1, [sp, #136]
	add r0, r0, #1
	cmp r1, r0
	bgt label8
label10:
	ldr r1, [sp, #88]
	cmp r1, #0
	ble label22
	mov r0, #0
.p2align 4
label12:
	ldr r1, [sp, #140]
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #136]
	sdiv r3, r1, r2
	mov r1, #0
	b label14
.p2align 4
label20:
	add r6, r5, #1
	cmp r1, r5
	blt label162
	mla r7, r3, r5, r1
	add r8, r4, r5
	ldr r5, [sp, #84]
	ldr r8, [r5, r8, lsl #2]
	str r8, [r5, r7, lsl #2]
	mov r5, r6
	cmp r2, r6
	bgt label20
	add r1, r1, #1
	mul r4, r2, r1
	cmp r3, r1
	bgt label147
	add r0, r0, #1
	ldr r1, [sp, #88]
	cmp r1, r0
	bgt label12
	cmp r1, #0
	bgt label25
	b label404
.p2align 4
label147:
	mov r5, #0
	cmp r2, r5
	bgt label20
	b label399
.p2align 4
label162:
	mov r5, r6
	cmp r2, r6
	bgt label20
	add r1, r1, #1
	mul r4, r2, r1
	cmp r3, r1
	bgt label147
	add r0, r0, #1
	ldr r1, [sp, #88]
	cmp r1, r0
	bgt label12
	cmp r1, #0
	bgt label25
	b label404
.p2align 4
label399:
	add r1, r1, #1
	mul r4, r2, r1
	cmp r3, r1
	bgt label147
	add r0, r0, #1
	ldr r1, [sp, #88]
	cmp r1, r0
	bgt label12
	cmp r1, #0
	bgt label25
	b label404
.p2align 4
label14:
	mul r4, r2, r1
	cmp r3, r1
	bgt label147
	add r0, r0, #1
	ldr r1, [sp, #88]
	cmp r1, r0
	bgt label12
	cmp r1, #0
	ble label404
label25:
	ldr r1, [sp, #88]
	cmp r1, #4
	ble label177
	ldr r5, [sp, #80]
	cmp r5, #16
	ble label181
	mov r2, #16
	mov r1, #15
	mov r10, #14
	mov r9, #13
	str r2, [sp, #72]
	mov r8, #12
	mov r7, #11
	str r1, [sp, #64]
	mov r6, #10
	mov r5, #9
	str r10, [sp, #60]
	mov r4, #8
	mov r3, #7
	str r9, [sp, #56]
	mov r0, #1
	str r8, [sp, #52]
	str r7, [sp, #48]
	str r6, [sp, #44]
	str r5, [sp, #40]
	str r4, [sp, #92]
	str r3, [sp, #96]
	mov r3, #6
	str r3, [sp, #100]
	mov r3, #5
	str r3, [sp, #104]
	mov r3, #4
	str r3, [sp, #108]
	mov r3, #3
	str r3, [sp, #112]
	mov r3, #2
	str r3, [sp, #116]
	mov r3, #0
	str r3, [sp, #120]
	str r0, [sp, #68]
	str r3, [sp, #124]
	str r3, [sp, #128]
label32:
	ldr r5, [sp, #84]
	ldr r3, [sp, #124]
	add r1, r5, r3, lsl #2
	str r1, [sp, #132]
	ldr r2, [r1, #0]
	ldr r1, [r1, #4]
	ldr r0, [sp, #68]
	ldr r3, [sp, #120]
	add r3, r3, r0
	add r0, r0, #32
	mul r1, r1, r3
	ldr r3, [sp, #120]
	mla r2, r3, r2, r1
	ldr r1, [sp, #132]
	ldr r1, [r1, #8]
	ldr r3, [sp, #116]
	add r4, r3, #2
	ldr r3, [sp, #120]
	add r3, r3, r4
	mla r2, r1, r3, r2
	ldr r1, [sp, #132]
	ldr r1, [r1, #12]
	ldr r3, [sp, #112]
	add r4, r3, #6
	ldr r3, [sp, #120]
	add r3, r3, r4
	mla r2, r1, r3, r2
	ldr r1, [sp, #132]
	ldr r1, [r1, #16]
	ldr r3, [sp, #108]
	add r4, r3, #12
	ldr r3, [sp, #120]
	add r3, r3, r4
	mla r2, r1, r3, r2
	ldr r1, [sp, #132]
	ldr r1, [r1, #20]
	ldr r3, [sp, #104]
	add r4, r3, #20
	ldr r3, [sp, #120]
	add r3, r3, r4
	mla r2, r1, r3, r2
	ldr r1, [sp, #132]
	ldr r1, [r1, #24]
	ldr r3, [sp, #100]
	add r4, r3, #30
	ldr r3, [sp, #120]
	add r3, r3, r4
	mla r2, r1, r3, r2
	ldr r1, [sp, #132]
	ldr r1, [r1, #28]
	ldr r3, [sp, #96]
	add r4, r3, #42
	ldr r3, [sp, #120]
	add r3, r3, r4
	mla r2, r1, r3, r2
	ldr r1, [sp, #132]
	ldr r1, [r1, #32]
	ldr r4, [sp, #92]
	ldr r3, [sp, #120]
	add r4, r4, #56
	add r3, r3, r4
	mla r2, r1, r3, r2
	ldr r1, [sp, #132]
	ldr r1, [r1, #36]
	ldr r5, [sp, #40]
	ldr r3, [sp, #120]
	add r4, r5, #72
	add r3, r3, r4
	mla r2, r1, r3, r2
	ldr r1, [sp, #132]
	ldr r1, [r1, #40]
	ldr r6, [sp, #44]
	ldr r3, [sp, #120]
	add r4, r6, #90
	add r6, r6, #320
	add r3, r3, r4
	mla r2, r1, r3, r2
	ldr r1, [sp, #132]
	ldr r1, [r1, #44]
	ldr r7, [sp, #48]
	ldr r3, [sp, #120]
	add r4, r7, #110
	add r7, r7, #352
	add r3, r3, r4
	mla r2, r1, r3, r2
	ldr r1, [sp, #132]
	ldr r1, [r1, #48]
	ldr r8, [sp, #52]
	ldr r3, [sp, #120]
	add r4, r8, #132
	add r8, r8, #384
	add r3, r3, r4
	mla r2, r1, r3, r2
	ldr r1, [sp, #132]
	ldr r1, [r1, #52]
	ldr r9, [sp, #56]
	ldr r3, [sp, #120]
	add r4, r9, #156
	add r9, r9, #416
	add r3, r3, r4
	mla r2, r1, r3, r2
	ldr r1, [sp, #132]
	ldr r1, [r1, #56]
	ldr r10, [sp, #60]
	ldr r3, [sp, #120]
	add r4, r10, #182
	add r10, r10, #448
	add r3, r3, r4
	mla r2, r1, r3, r2
	ldr r1, [sp, #132]
	ldr r4, [r1, #60]
	ldr r1, [sp, #64]
	ldr r3, [sp, #120]
	add r5, r1, #210
	add r1, r1, #480
	add r3, r3, r5
	mla r2, r4, r3, r2
	ldr r3, [sp, #128]
	add r2, r3, r2
	str r2, [sp, #148]
	ldr r2, [sp, #72]
	ldr r3, [sp, #120]
	add r4, r2, #240
	add r2, r2, #512
	add r3, r3, r4
	str r3, [sp, #144]
	ldr r3, [sp, #124]
	add r11, r3, #16
	str r11, [sp, #36]
	ldr r3, [sp, #116]
	add r3, r3, #64
	str r3, [sp, #32]
	ldr r3, [sp, #112]
	add r3, r3, #96
	str r3, [sp, #28]
	ldr r3, [sp, #108]
	add r3, r3, #128
	str r3, [sp, #24]
	ldr r3, [sp, #104]
	add r3, r3, #160
	str r3, [sp, #12]
	ldr r3, [sp, #100]
	add r3, r3, #192
	str r3, [sp, #0]
	ldr r3, [sp, #96]
	ldr r4, [sp, #92]
	ldr r5, [sp, #40]
	str r0, [sp, #152]
	add r3, r3, #224
	ldr r0, [sp, #76]
	add r4, r4, #256
	add r5, r5, #288
	cmp r0, r11
	ble label331
	str r2, [sp, #72]
	str r1, [sp, #64]
	str r10, [sp, #60]
	str r9, [sp, #56]
	str r8, [sp, #52]
	str r7, [sp, #48]
	str r6, [sp, #44]
	str r5, [sp, #40]
	str r4, [sp, #92]
	str r3, [sp, #96]
	ldr r3, [sp, #0]
	str r3, [sp, #100]
	ldr r3, [sp, #12]
	str r3, [sp, #104]
	ldr r3, [sp, #24]
	str r3, [sp, #108]
	ldr r3, [sp, #28]
	str r3, [sp, #112]
	ldr r3, [sp, #32]
	str r3, [sp, #116]
	ldr r3, [sp, #144]
	str r3, [sp, #120]
	ldr r0, [sp, #152]
	str r0, [sp, #68]
	str r11, [sp, #124]
	mov r3, r11
	ldr r2, [sp, #148]
	str r2, [sp, #128]
	mov r3, r2
	b label32
label27:
	ldr r5, [sp, #84]
	ldr r1, [sp, #16]
	add r2, r5, r1, lsl #2
	ldr r3, [r2, #0]
	ldr r4, [r2, #4]
	ldr r1, [sp, #8]
	add r1, r1, r0
	mul r1, r4, r1
	mla r3, r0, r3, r1
	ldr r1, [sp, #8]
	ldr r4, [r2, #8]
	add r1, r1, #1
	add r1, r0, r1, lsl #1
	mla r3, r1, r4, r3
	ldr r1, [sp, #8]
	ldr r2, [r2, #12]
	add r1, r1, r1, lsl #1
	add r1, r1, #6
	add r1, r0, r1
	mla r2, r1, r2, r3
	ldr r1, [sp, #4]
	add r2, r1, r2
	ldr r1, [sp, #8]
	lsl r1, r1, #2
	add r1, r1, #12
	add r0, r0, r1
	ldr r1, [sp, #16]
	add r4, r1, #4
	ldr r1, [sp, #8]
	ldr r5, [sp, #80]
	add r3, r1, #8
	cmp r5, r4
	bgt label215
	b label214
label331:
	ldr r2, [sp, #148]
	str r2, [sp, #4]
	mov r1, r2
	ldr r11, [sp, #36]
	str r11, [sp, #16]
	mov r1, r11
	ldr r0, [sp, #152]
	str r0, [sp, #8]
	mov r1, r0
	ldr r3, [sp, #144]
	mov r0, r3
	b label27
label214:
	mov r1, r0
	mov r0, r4
label52:
	ldr r5, [sp, #84]
	ldr r4, [r5, r0, lsl #2]
	add r0, r0, #1
	mla r2, r1, r4, r2
	add r4, r1, r3
	ldr r1, [sp, #88]
	add r3, r3, #2
	cmp r1, r0
	ble label343
	mov r1, r4
	b label52
label23:
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
label343:
	mov r4, r2
	b label23
label404:
	mov r4, #0
	b label23
label22:
	ldr r1, [sp, #88]
	cmp r1, #0
	bgt label25
	b label404
label181:
	mov r1, #0
	str r1, [sp, #4]
	str r1, [sp, #16]
	mov r1, #1
	str r1, [sp, #8]
	ldr r1, [sp, #16]
	mov r0, r1
	b label27
label70:
	mov r0, #0
	b label8
label215:
	mov r1, r2
	str r2, [sp, #4]
	mov r1, r4
	str r4, [sp, #16]
	mov r1, r3
	str r3, [sp, #8]
	b label27
label76:
	mov r0, #0
	b label4
label177:
	mov r1, #0
	mov r3, #1
	mov r2, r1
	mov r0, r1
	b label52
