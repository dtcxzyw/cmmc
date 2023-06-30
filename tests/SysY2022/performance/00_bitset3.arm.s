.arch armv7ve
.data
.data
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
	mov r6, r0
	bl getint
	mov r7, r0
	mov r0, #56
	bl _sysy_starttime
	movw r5, #:lower16:a
	movt r5, #:upper16:a
	cmp r6, #0
	ble label12
	mov r0, r7
	mov r1, r6
label2:
	movw r3, #58069
	movt r3, #304
	movw r6, #48287
	movt r6, #304
	mla r2, r0, r6, r3
	movw r0, #51719
	movt r0, #15258
	movw r7, #12185
	movt r7, #17592
	smmul r8, r2, r7
	asr r9, r8, #28
	add r8, r9, r8, lsr #31
	mls r2, r8, r0, r2
	cmp r2, #0
	add r8, r2, r0
	movlt r2, r8
	mla r3, r2, r6, r3
	smmul r6, r3, r7
	asr r7, r6, #28
	add r6, r7, r6, lsr #31
	mls r3, r6, r0, r3
	cmp r3, #0
	add r6, r3, r0
	mov r0, r3
	movlt r0, r6
	movw r3, #37856
	movt r3, #4
	movw r6, #7557
	movt r6, #28633
	smmul r6, r2, r6
	asr r7, r6, #17
	add r6, r7, r6, lsr #31
	mls r3, r6, r3, r2
	movw r2, #34953
	movt r2, #34952
	smmla r2, r3, r2, r3
	asr r6, r2, #4
	add r2, r6, r2, lsr #31
	sub r1, r1, #1
	mov r6, #1
	str r6, [sp, #0]
	mov r6, #2
	str r6, [r4, #4]
	mov r6, #4
	str r6, [r4, #8]
	mov r6, #8
	str r6, [r4, #12]
	mov r6, #16
	str r6, [r4, #16]
	mov r6, #32
	str r6, [r4, #20]
	mov r6, #64
	str r6, [r4, #24]
	mov r6, #128
	str r6, [r4, #28]
	mov r6, #256
	str r6, [r4, #32]
	mov r6, #512
	str r6, [r4, #36]
	mov r6, #1024
	str r6, [r4, #40]
	mov r6, #2048
	str r6, [r4, #44]
	mov r6, #4096
	str r6, [r4, #48]
	mov r6, #8192
	str r6, [r4, #52]
	mov r6, #16384
	str r6, [r4, #56]
	mov r6, #32768
	str r6, [r4, #60]
	mov r6, #65536
	str r6, [r4, #64]
	mov r6, #131072
	str r6, [r4, #68]
	mov r6, #262144
	str r6, [r4, #72]
	mov r6, #524288
	str r6, [r4, #76]
	mov r6, #1048576
	str r6, [r4, #80]
	mov r6, #2097152
	str r6, [r4, #84]
	mov r6, #4194304
	str r6, [r4, #88]
	mov r6, #8388608
	str r6, [r4, #92]
	mov r6, #16777216
	str r6, [r4, #96]
	mov r6, #33554432
	str r6, [r4, #100]
	mov r6, #67108864
	str r6, [r4, #104]
	mov r6, #134217728
	str r6, [r4, #108]
	mov r6, #268435456
	str r6, [r4, #112]
	mov r6, #536870912
	str r6, [r4, #116]
	mov r6, #1073741824
	str r6, [r4, #120]
	movw r6, #9999
	cmp r2, r6
	ble label6
	cmp r1, #0
	ble label12
	b label2
label6:
	ldr r6, [r5, r2, lsl #2]
	mov r7, #30
	movw r8, #34953
	movt r8, #34952
	smmla r8, r3, r8, r3
	asr r9, r8, #4
	add r8, r9, r8, lsr #31
	mls r3, r8, r7, r3
	ldr r8, [r4, r3, lsl #2]
	sdiv r7, r6, r8
	add r9, r7, r7, lsr #31
	asr r9, r9, #1
	sub r10, r7, r9, lsl #1
	add r9, r0, r0, lsr #31
	asr r9, r9, #1
	sub r9, r0, r9, lsl #1
	cmp r10, r9
	beq label11
	and r6, r7, #1
	eor r10, r9, #1
	orr r6, r6, r10
	clz r6, r6
	lsr r6, r6, #5
	rsb r6, r6, #0
	and r6, r8, r6
	add r8, r7, r7, lsr #31
	asr r8, r8, #1
	sub r7, r7, r8, lsl #1
	eor r7, r7, #1
	orr r7, r9, r7
	cmp r7, #0
	bne label9
	ldr r3, [r4, r3, lsl #2]
	sub r6, r6, r3
	ldr r3, [r5, r2, lsl #2]
	add r3, r6, r3
	str r3, [r5, r2, lsl #2]
	cmp r1, #0
	ble label12
	b label2
label9:
	ldr r3, [r5, r2, lsl #2]
	add r3, r6, r3
	str r3, [r5, r2, lsl #2]
	cmp r1, #0
	ble label12
	b label2
label11:
	str r6, [r5, r2, lsl #2]
	cmp r1, #0
	ble label12
	b label2
label12:
	mov r0, #64
	bl _sysy_stoptime
	movw r0, #10000
	mov r1, r5
	bl putarray
	mov r0, #0
	add sp, sp, #128
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
