.arch armv7ve
.data
.bss
.align 8
a:
	.zero	120000040
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
radixSort:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r5, r3
	mov r4, r1
	mov r7, r2
	sub sp, sp, #196
	add r1, r2, #1
	add r2, r0, #1
	cmp r3, r1
	clz r2, r2
	mov r3, #0
	mov r1, #0
	lsr r2, r2, #5
	str r3, [sp, #0]
	movwle r1, #1
	str r3, [sp, #4]
	str r3, [sp, #8]
	orrs r1, r1, r2
	str r3, [sp, #12]
	str r3, [sp, #16]
	str r3, [sp, #20]
	str r3, [sp, #24]
	str r3, [sp, #28]
	str r3, [sp, #32]
	str r3, [sp, #36]
	str r3, [sp, #40]
	str r3, [sp, #44]
	str r3, [sp, #48]
	str r3, [sp, #52]
	str r3, [sp, #56]
	str r3, [sp, #60]
	str r3, [sp, #64]
	str r3, [sp, #68]
	str r3, [sp, #72]
	str r3, [sp, #76]
	str r3, [sp, #80]
	str r3, [sp, #84]
	str r3, [sp, #88]
	str r3, [sp, #92]
	str r3, [sp, #96]
	str r3, [sp, #100]
	str r3, [sp, #104]
	str r3, [sp, #108]
	str r3, [sp, #112]
	str r3, [sp, #116]
	str r3, [sp, #120]
	str r3, [sp, #124]
	str r3, [sp, #128]
	str r3, [sp, #132]
	str r3, [sp, #136]
	str r3, [sp, #140]
	str r3, [sp, #144]
	str r3, [sp, #148]
	str r3, [sp, #152]
	str r3, [sp, #156]
	str r3, [sp, #160]
	str r3, [sp, #164]
	str r3, [sp, #168]
	str r3, [sp, #172]
	str r3, [sp, #176]
	str r3, [sp, #180]
	str r3, [sp, #184]
	str r3, [sp, #188]
	bne label40
	lsl r1, r0, #2
	sub r6, r0, #1
	cmp r7, r5
	bge label12
	mov r8, r7
.p2align 4
label3:
	ldr r2, [r4, r8, lsl #2]
	cmp r0, #0
	ble label114
	mov r9, r3
	cmp r0, #8
	blt label9
	mov r10, r3
	add r9, r3, #1
	cmp r0, r9
	ble label372
.p2align 4
label7:
	cmp r0, #8
	bge label127
.p2align 4
label9:
	asr r10, r2, #31
	rsb r11, r1, #32
	add r10, r2, r10, lsr r11
	asr r10, r10, r1
	add r9, r9, #1
	cmp r0, r9
	bgt label7
	and r2, r10, #15
	add r9, sp, #128
	add r8, r8, #1
	add r2, r9, r2, lsl #2
	cmp r5, r8
	ldr r9, [r2, #0]
	add r9, r9, #1
	str r9, [r2, #0]
	bgt label3
label12:
	str r7, [sp, #0]
	ldr r2, [sp, #128]
	add r2, r7, r2
	str r2, [sp, #64]
	str r2, [sp, #4]
	ldr r5, [sp, #132]
	add r2, r2, r5
	str r2, [sp, #68]
	str r2, [sp, #8]
	ldr r5, [sp, #136]
	add r2, r2, r5
	str r2, [sp, #72]
	str r2, [sp, #12]
	ldr r5, [sp, #140]
	add r2, r2, r5
	str r2, [sp, #76]
	str r2, [sp, #16]
	ldr r5, [sp, #144]
	add r2, r2, r5
	str r2, [sp, #80]
	str r2, [sp, #20]
	ldr r5, [sp, #148]
	add r2, r2, r5
	str r2, [sp, #84]
	str r2, [sp, #24]
	ldr r5, [sp, #152]
	add r2, r2, r5
	str r2, [sp, #88]
	str r2, [sp, #28]
	ldr r5, [sp, #156]
	add r2, r2, r5
	str r2, [sp, #92]
	str r2, [sp, #32]
	ldr r5, [sp, #160]
	add r2, r2, r5
	str r2, [sp, #96]
	str r2, [sp, #36]
	ldr r5, [sp, #164]
	add r2, r2, r5
	str r2, [sp, #100]
	str r2, [sp, #40]
	ldr r5, [sp, #168]
	add r2, r2, r5
	str r2, [sp, #104]
	str r2, [sp, #44]
	ldr r5, [sp, #172]
	add r2, r2, r5
	str r2, [sp, #108]
	str r2, [sp, #48]
	ldr r5, [sp, #176]
	add r2, r2, r5
	str r2, [sp, #112]
	str r2, [sp, #52]
	ldr r5, [sp, #180]
	add r2, r2, r5
	str r2, [sp, #116]
	str r2, [sp, #56]
	ldr r5, [sp, #184]
	add r2, r2, r5
	str r2, [sp, #120]
	str r2, [sp, #60]
	ldr r5, [sp, #188]
	add r2, r2, r5
	mov r5, r3
	str r2, [sp, #124]
	cmp r3, #16
	blt label15
label215:
	str r7, [sp, #0]
	mov r5, r3
	ldr r0, [sp, #128]
	add r0, r7, r0
	str r0, [sp, #64]
	b label32
.p2align 4
label15:
	mov r9, sp
	ldr r2, [r9, r5, lsl #2]
	add r8, sp, #64
	ldr r8, [r8, r5, lsl #2]
	cmp r2, r8
	bge label225
.p2align 4
label18:
	mov r9, sp
	ldr r2, [r9, r5, lsl #2]
	ldr r2, [r4, r2, lsl #2]
	cmp r0, #0
	ble label234
.p2align 4
label235:
	mov r8, r3
	cmp r0, #8
	blt label27
	b label375
.p2align 4
label23:
	mov r9, sp
	add r8, r9, r8, lsl #2
	ldr r9, [r8, #0]
	add r11, r4, r9, lsl #2
	ldr r10, [r11, #0]
	str r2, [r11, #0]
	add r2, r9, #1
	str r2, [r8, #0]
	mov r2, r10
	cmp r0, #0
	bgt label235
	b label376
.p2align 4
label25:
	cmp r0, #8
	bge label255
.p2align 4
label27:
	asr r9, r2, #31
	rsb r10, r1, #32
	add r9, r2, r9, lsr r10
	asr r9, r9, r1
	add r8, r8, #1
	cmp r0, r8
	bgt label25
	asr r8, r9, #31
	add r8, r9, r8, lsr #28
	asr r8, r8, #4
	sub r8, r9, r8, lsl #4
	cmp r5, r8
	bne label23
	mov r9, sp
	add r8, r9, r5, lsl #2
	ldr r9, [r8, #0]
	str r2, [r4, r9, lsl #2]
	add r2, r9, #1
	str r2, [r8, #0]
	add r8, sp, #64
	ldr r8, [r8, r5, lsl #2]
	cmp r2, r8
	blt label18
	add r5, r5, #1
	cmp r5, #16
	blt label15
	b label215
label32:
	cmp r5, #16
	blt label34
	b label40
.p2align 4
label255:
	mov r9, r3
	add r8, r8, #1
	cmp r0, r8
	bgt label25
	asr r8, r3, #31
	add r8, r3, r8, lsr #28
	asr r8, r8, #4
	sub r8, r3, r8, lsl #4
	cmp r5, r8
	bne label23
	mov r9, sp
	add r8, r9, r5, lsl #2
	ldr r9, [r8, #0]
	str r2, [r4, r9, lsl #2]
	add r2, r9, #1
	str r2, [r8, #0]
	add r8, sp, #64
	ldr r8, [r8, r5, lsl #2]
	cmp r2, r8
	blt label18
.p2align 4
label393:
	add r5, r5, #1
	cmp r5, #16
	blt label15
	b label215
.p2align 4
label375:
	mov r9, r3
	add r8, r8, #1
	cmp r0, r8
	bgt label25
	asr r8, r3, #31
	add r8, r3, r8, lsr #28
	asr r8, r8, #4
	sub r8, r3, r8, lsl #4
	cmp r5, r8
	bne label23
	mov r9, sp
	add r8, r9, r5, lsl #2
	ldr r9, [r8, #0]
	str r2, [r4, r9, lsl #2]
	add r2, r9, #1
	str r2, [r8, #0]
	add r8, sp, #64
	ldr r8, [r8, r5, lsl #2]
	cmp r2, r8
	blt label18
	b label393
.p2align 4
label34:
	cmp r5, #0
	bgt label39
	mov r9, sp
	add r8, sp, #64
	ldr r2, [r9, r5, lsl #2]
	ldr r3, [r8, r5, lsl #2]
.p2align 4
label36:
	mov r0, r6
	mov r1, r4
	bl radixSort
	add r5, r5, #1
	cmp r5, #16
	blt label34
label40:
	add sp, sp, #196
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label225:
	add r5, r5, #1
	cmp r5, #16
	blt label15
	b label215
.p2align 4
label376:
	mov r9, r2
	asr r8, r2, #31
	add r8, r2, r8, lsr #28
	asr r8, r8, #4
	sub r8, r2, r8, lsl #4
	cmp r5, r8
	bne label23
	mov r9, sp
	add r8, r9, r5, lsl #2
	ldr r9, [r8, #0]
	str r2, [r4, r9, lsl #2]
	add r2, r9, #1
	str r2, [r8, #0]
	add r8, sp, #64
	ldr r8, [r8, r5, lsl #2]
	cmp r2, r8
	blt label18
	b label225
.p2align 4
label127:
	mov r10, r3
	add r9, r9, #1
	cmp r0, r9
	bgt label7
.p2align 4
label372:
	and r2, r10, #15
	add r9, sp, #128
	add r8, r8, #1
	add r2, r9, r2, lsl #2
	cmp r5, r8
	ldr r9, [r2, #0]
	add r9, r9, #1
	str r9, [r2, #0]
	bgt label3
	b label12
label114:
	mov r10, r2
	and r2, r2, #15
	add r9, sp, #128
	add r8, r8, #1
	add r2, r9, r2, lsl #2
	cmp r5, r8
	ldr r9, [r2, #0]
	add r9, r9, #1
	str r9, [r2, #0]
	bgt label3
	b label12
.p2align 4
label234:
	mov r9, r2
	asr r8, r2, #31
	add r8, r2, r8, lsr #28
	asr r8, r8, #4
	sub r8, r2, r8, lsl #4
	cmp r5, r8
	bne label23
	mov r9, sp
	add r8, r9, r5, lsl #2
	ldr r9, [r8, #0]
	str r2, [r4, r9, lsl #2]
	add r2, r9, #1
	str r2, [r8, #0]
	add r8, sp, #64
	ldr r8, [r8, r5, lsl #2]
	cmp r2, r8
	blt label18
	b label225
.p2align 4
label39:
	sub r0, r5, #1
	add r8, sp, #64
	mov r9, sp
	ldr r2, [r8, r0, lsl #2]
	str r2, [r9, r5, lsl #2]
	add r9, sp, #128
	ldr r0, [r9, r5, lsl #2]
	add r3, r2, r0
	str r3, [r8, r5, lsl #2]
	b label36
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r4, #:lower16:a
	movt r4, #:upper16:a
	sub sp, sp, #4
	mov r0, r4
	bl getarray
	mov r5, r0
	mov r0, #90
	bl _sysy_starttime
	mov r1, r4
	mov r2, #0
	mov r0, #8
	mov r3, r5
	bl radixSort
	cmp r5, #0
	ble label421
	sub r0, r5, #4
	cmp r5, #4
	ble label426
	mov r2, #0
	mov r1, r2
.p2align 4
label409:
	add r6, r4, r2, lsl #2
	add r3, r2, #3
	ldr r7, [r6, #0]
	ldr r8, [r6, #4]
	sdiv r9, r8, r3
	mls r8, r9, r3, r8
	mla r9, r8, r2, r8
	add r8, r2, #2
	sdiv r10, r7, r8
	mls r7, r10, r8, r7
	ldr r10, [r6, #8]
	ldr r6, [r6, #12]
	mla r9, r2, r7, r9
	add r7, r2, #4
	cmp r0, r7
	add r2, r2, #5
	sdiv r11, r10, r7
	mls r10, r11, r7, r10
	mla r8, r8, r10, r9
	sdiv r9, r6, r2
	mls r2, r9, r2, r6
	mla r2, r3, r2, r8
	add r1, r1, r2
	ble label412
	mov r2, r7
	b label409
label412:
	ldr r0, [r4, r7, lsl #2]
	add r2, r7, #2
	sdiv r3, r0, r2
	mls r0, r3, r2, r0
	mla r1, r7, r0, r1
	add r7, r7, #1
	cmp r5, r7
	bgt label412
	mov r4, r1
label415:
	mov r0, #102
	bl _sysy_stoptime
	movs r0, r4
	rsbmi r0, r4, #0
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label426:
	mov r1, #0
	mov r7, r1
	b label412
label421:
	mov r4, #0
	b label415
