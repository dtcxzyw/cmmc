.arch armv7ve
.data
.bss
.align 4
a:
	.zero	40000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	sub sp, sp, #128
	mov r4, sp
	bl getint
	mov r5, r0
	bl getint
	mov r6, r0
	mov r0, #56
	bl _sysy_starttime
	cmp r5, #0
	ble label9
	b label15
label9:
	mov r0, #64
	bl _sysy_stoptime
	movw r0, #10000
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	bl putarray
	add sp, sp, #128
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label15:
	movw r0, #:lower16:a
	mov r2, r6
	mov r1, r5
	movt r0, #:upper16:a
label3:
	movw r3, #58069
	movw r6, #48287
	movw r7, #12185
	sub r1, r1, #1
	movt r3, #304
	movt r6, #304
	movt r7, #17592
	mla r5, r2, r6, r3
	movw r2, #51719
	movt r2, #15258
	smmul r8, r5, r7
	asr r9, r8, #28
	add r8, r9, r8, lsr #31
	mls r5, r8, r2, r5
	add r8, r5, r2
	cmp r5, #0
	movlt r5, r8
	mla r3, r5, r6, r3
	smmul r6, r3, r7
	asr r7, r6, #28
	add r6, r7, r6, lsr #31
	movw r7, #7557
	mls r3, r6, r2, r3
	movt r7, #28633
	smmul r7, r5, r7
	add r6, r3, r2
	cmp r3, #0
	asr r8, r7, #17
	mov r2, r3
	add r7, r8, r7, lsr #31
	movlt r2, r6
	mov r8, #30
	movw r6, #37856
	add r3, r2, r2, lsr #31
	movt r6, #4
	asr r3, r3, #1
	mls r6, r7, r6, r5
	sub r3, r2, r3, lsl #1
	movw r5, #34953
	movt r5, #34952
	udiv r9, r6, r8
	smmla r5, r6, r5, r6
	mls r6, r9, r8, r6
	asr r7, r5, #4
	add r5, r7, r5, lsr #31
	mov r7, #1
	str r7, [sp, #0]
	mov r7, #2
	str r7, [r4, #4]
	mov r7, #4
	str r7, [r4, #8]
	mov r7, #8
	str r7, [r4, #12]
	mov r7, #16
	str r7, [r4, #16]
	mov r7, #32
	str r7, [r4, #20]
	mov r7, #64
	str r7, [r4, #24]
	mov r7, #128
	str r7, [r4, #28]
	mov r7, #256
	str r7, [r4, #32]
	mov r7, #512
	str r7, [r4, #36]
	mov r7, #1024
	str r7, [r4, #40]
	mov r7, #2048
	str r7, [r4, #44]
	mov r7, #4096
	str r7, [r4, #48]
	mov r7, #8192
	str r7, [r4, #52]
	mov r7, #16384
	str r7, [r4, #56]
	mov r7, #32768
	str r7, [r4, #60]
	mov r7, #65536
	str r7, [r4, #64]
	mov r7, #131072
	str r7, [r4, #68]
	mov r7, #262144
	str r7, [r4, #72]
	mov r7, #524288
	str r7, [r4, #76]
	mov r7, #1048576
	str r7, [r4, #80]
	mov r7, #2097152
	str r7, [r4, #84]
	mov r7, #4194304
	str r7, [r4, #88]
	mov r7, #8388608
	str r7, [r4, #92]
	mov r7, #16777216
	str r7, [r4, #96]
	mov r7, #33554432
	str r7, [r4, #100]
	mov r7, #67108864
	str r7, [r4, #104]
	mov r7, #134217728
	str r7, [r4, #108]
	mov r7, #268435456
	str r7, [r4, #112]
	mov r7, #536870912
	str r7, [r4, #116]
	mov r7, #1073741824
	str r7, [r4, #120]
	ldr r7, [r0, r5, lsl #2]
	ldr r8, [r4, r6, lsl #2]
	sdiv r6, r7, r8
	add r9, r6, r6, lsr #31
	asr r9, r9, #1
	sub r9, r6, r9, lsl #1
	cmp r3, r9
	beq label8
	cmp r3, #1
	mov r10, #0
	moveq r10, r8
	ands r9, r6, #1
	and r6, r6, #-2147483647
	mov r9, #0
	moveq r9, r10
	cmp r3, #0
	sub r8, r9, r8
	mov r3, r9
	moveq r3, r8
	cmp r6, #1
	mov r6, r9
	moveq r6, r3
	add r3, r7, r6
	str r3, [r0, r5, lsl #2]
	cmp r1, #0
	ble label9
	b label3
label8:
	str r7, [r0, r5, lsl #2]
	cmp r1, #0
	ble label9
	b label3
