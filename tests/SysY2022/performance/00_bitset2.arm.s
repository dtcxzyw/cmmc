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
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #132
	mov r7, sp
	bl getint
	mov r5, r0
	bl getint
	mov r6, r0
	mov r0, #56
	bl _sysy_starttime
	movw r4, #:lower16:a
	movt r4, #:upper16:a
	cmp r5, #0
	ble label12
	mov r1, r6
	mov r0, r5
label2:
	movw r3, #58069
	movt r3, #304
	movw r5, #48287
	movt r5, #304
	mla r2, r1, r5, r3
	movw r1, #51719
	movt r1, #15258
	movw r6, #12185
	movt r6, #17592
	smmul r8, r2, r6
	asr r9, r8, #28
	add r8, r9, r8, lsr #31
	mls r2, r8, r1, r2
	cmp r2, #0
	add r8, r2, r1
	movlt r2, r8
	mla r3, r2, r5, r3
	smmul r5, r3, r6
	asr r6, r5, #28
	add r5, r6, r5, lsr #31
	mls r3, r5, r1, r3
	cmp r3, #0
	add r5, r3, r1
	mov r1, r3
	movlt r1, r5
	movw r3, #37856
	movt r3, #4
	movw r5, #7557
	movt r5, #28633
	smmul r5, r2, r5
	asr r6, r5, #17
	add r5, r6, r5, lsr #31
	mls r5, r5, r3, r2
	movw r2, #34953
	movt r2, #34952
	smmla r2, r5, r2, r5
	asr r3, r2, #4
	add r3, r3, r2, lsr #31
	sub r2, r0, #1
	mov r0, #1
	str r0, [sp, #0]
	mov r0, #2
	str r0, [r7, #4]
	mov r0, #4
	str r0, [r7, #8]
	mov r0, #8
	str r0, [r7, #12]
	mov r0, #16
	str r0, [r7, #16]
	mov r0, #32
	str r0, [r7, #20]
	mov r0, #64
	str r0, [r7, #24]
	mov r0, #128
	str r0, [r7, #28]
	mov r0, #256
	str r0, [r7, #32]
	mov r0, #512
	str r0, [r7, #36]
	mov r0, #1024
	str r0, [r7, #40]
	mov r0, #2048
	str r0, [r7, #44]
	mov r0, #4096
	str r0, [r7, #48]
	mov r0, #8192
	str r0, [r7, #52]
	mov r0, #16384
	str r0, [r7, #56]
	mov r0, #32768
	str r0, [r7, #60]
	mov r0, #65536
	str r0, [r7, #64]
	mov r0, #131072
	str r0, [r7, #68]
	mov r0, #262144
	str r0, [r7, #72]
	mov r0, #524288
	str r0, [r7, #76]
	mov r0, #1048576
	str r0, [r7, #80]
	mov r0, #2097152
	str r0, [r7, #84]
	mov r0, #4194304
	str r0, [r7, #88]
	mov r0, #8388608
	str r0, [r7, #92]
	mov r0, #16777216
	str r0, [r7, #96]
	mov r0, #33554432
	str r0, [r7, #100]
	mov r0, #67108864
	str r0, [r7, #104]
	mov r0, #134217728
	str r0, [r7, #108]
	mov r0, #268435456
	str r0, [r7, #112]
	mov r0, #536870912
	str r0, [r7, #116]
	mov r0, #1073741824
	str r0, [r7, #120]
	movw r0, #9999
	cmp r3, r0
	ble label6
	cmp r2, #0
	ble label12
label188:
	mov r0, r2
	b label2
label6:
	ldr r0, [r4, r3, lsl #2]
	mov r6, #30
	movw r8, #34953
	movt r8, #34952
	smmla r8, r5, r8, r5
	asr r9, r8, #4
	add r8, r9, r8, lsr #31
	mls r5, r8, r6, r5
	ldr r8, [r7, r5, lsl #2]
	sdiv r6, r0, r8
	mov r9, #2
	add r10, r6, r6, lsr #31
	asr r10, r10, #1
	mls r10, r10, r9, r6
	add r11, r1, r1, lsr #31
	asr r11, r11, #1
	mls r9, r11, r9, r1
	cmp r10, r9
	beq label11
	and r0, r6, #1
	eor r10, r9, #1
	orr r0, r0, r10
	clz r0, r0
	lsr r0, r0, #5
	rsb r0, r0, #0
	and r0, r8, r0
	mov r8, #2
	add r10, r6, r6, lsr #31
	asr r10, r10, #1
	mls r6, r10, r8, r6
	eor r6, r6, #1
	orr r6, r6, r9
	cmp r6, #0
	bne label9
	ldr r5, [r7, r5, lsl #2]
	sub r0, r0, r5
	ldr r5, [r4, r3, lsl #2]
	add r0, r0, r5
	str r0, [r4, r3, lsl #2]
	cmp r2, #0
	ble label12
	b label188
label9:
	ldr r5, [r4, r3, lsl #2]
	add r0, r0, r5
	str r0, [r4, r3, lsl #2]
	cmp r2, #0
	ble label12
	b label188
label11:
	str r0, [r4, r3, lsl #2]
	cmp r2, #0
	ble label12
	b label188
label12:
	mov r0, #64
	bl _sysy_stoptime
	movw r0, #10000
	mov r1, r4
	bl putarray
	mov r0, #0
	add sp, sp, #132
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
