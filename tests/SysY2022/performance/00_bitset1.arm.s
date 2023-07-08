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
	mov r9, #30
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
	movw r6, #37856
	and r3, r2, #1
	movt r6, #4
	mls r6, r7, r6, r5
	movw r7, #34953
	movt r7, #34952
	smmla r5, r6, r7, r6
	smmla r7, r6, r7, r6
	asr r8, r5, #4
	asr r10, r7, #4
	add r5, r8, r5, lsr #31
	add r7, r10, r7, lsr #31
	mov r8, #1
	str r8, [sp, #0]
	mls r6, r7, r9, r6
	mov r8, #2
	str r8, [r4, #4]
	mov r8, #4
	str r8, [r4, #8]
	mov r8, #8
	str r8, [r4, #12]
	mov r8, #16
	str r8, [r4, #16]
	mov r8, #32
	str r8, [r4, #20]
	mov r8, #64
	str r8, [r4, #24]
	mov r8, #128
	str r8, [r4, #28]
	mov r8, #256
	str r8, [r4, #32]
	mov r8, #512
	str r8, [r4, #36]
	mov r8, #1024
	str r8, [r4, #40]
	mov r8, #2048
	str r8, [r4, #44]
	mov r8, #4096
	str r8, [r4, #48]
	mov r8, #8192
	str r8, [r4, #52]
	mov r8, #16384
	str r8, [r4, #56]
	mov r8, #32768
	str r8, [r4, #60]
	mov r8, #65536
	str r8, [r4, #64]
	mov r8, #131072
	str r8, [r4, #68]
	mov r8, #262144
	str r8, [r4, #72]
	mov r8, #524288
	str r8, [r4, #76]
	mov r8, #1048576
	str r8, [r4, #80]
	mov r8, #2097152
	str r8, [r4, #84]
	mov r8, #4194304
	str r8, [r4, #88]
	mov r8, #8388608
	str r8, [r4, #92]
	mov r8, #16777216
	str r8, [r4, #96]
	mov r8, #33554432
	str r8, [r4, #100]
	mov r8, #67108864
	str r8, [r4, #104]
	mov r8, #134217728
	str r8, [r4, #108]
	mov r8, #268435456
	str r8, [r4, #112]
	mov r8, #536870912
	str r8, [r4, #116]
	mov r8, #1073741824
	str r8, [r4, #120]
	ldr r8, [r0, r5, lsl #2]
	ldr r7, [r4, r6, lsl #2]
	sdiv r6, r8, r7
	add r9, r6, r6, lsr #31
	asr r9, r9, #1
	sub r9, r6, r9, lsl #1
	cmp r3, r9
	beq label8
	cmp r3, #1
	mov r10, #0
	moveq r10, r7
	ands r9, r6, #1
	and r6, r6, #-2147483647
	mov r9, #0
	moveq r9, r10
	cmp r3, #0
	sub r7, r9, r7
	mov r3, r9
	moveq r3, r7
	cmp r6, #1
	mov r6, r9
	moveq r6, r3
	add r3, r8, r6
	str r3, [r0, r5, lsl #2]
	cmp r1, #0
	ble label9
	b label3
label8:
	str r8, [r0, r5, lsl #2]
	cmp r1, #0
	ble label9
	b label3
