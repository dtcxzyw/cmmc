.arch armv7ve
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
	add r6, sp, #0
	bl getint
	mov r5, r0
	bl getint
	mov r7, r0
	mov r0, #56
	bl _sysy_starttime
	movw r4, #:lower16:a
	movt r4, #:upper16:a
	cmp r5, #0
	ble label18
	mov r1, r7
	mov r0, r5
label2:
	movw r2, #58069
	movt r2, #304
	movw r3, #48287
	movt r3, #304
	mla r1, r1, r3, r2
	movw r2, #51719
	movt r2, #15258
	movw r3, #12185
	movt r3, #17592
	smmul r3, r1, r3
	asr r5, r3, #28
	add r3, r5, r3, lsr #31
	mls r1, r3, r2, r1
	sub r2, r0, #1
	cmp r1, #0
	bge label35
	movw r0, #51719
	movt r0, #15258
	add r0, r1, r0
	b label5
label35:
	mov r0, r1
label5:
	movw r1, #58069
	movt r1, #304
	movw r3, #48287
	movt r3, #304
	mla r1, r0, r3, r1
	movw r3, #51719
	movt r3, #15258
	movw r5, #12185
	movt r5, #17592
	smmul r5, r1, r5
	asr r7, r5, #28
	add r5, r7, r5, lsr #31
	mls r1, r5, r3, r1
	movw r3, #37856
	movt r3, #4
	movw r5, #7557
	movt r5, #28633
	smmul r5, r0, r5
	asr r7, r5, #17
	add r5, r7, r5, lsr #31
	mls r5, r5, r3, r0
	cmp r1, #0
	bge label43
	b label42
label43:
	mov r0, r1
label7:
	movw r1, #34953
	movt r1, #34952
	smmla r1, r5, r1, r5
	asr r3, r1, #4
	add r3, r3, r1, lsr #31
	mov r1, #1
	str r1, [sp, #0]
	mov r1, #2
	str r1, [r6, #4]
	mov r1, #4
	str r1, [r6, #8]
	mov r1, #8
	str r1, [r6, #12]
	mov r1, #16
	str r1, [r6, #16]
	mov r1, #32
	str r1, [r6, #20]
	mov r1, #64
	str r1, [r6, #24]
	mov r1, #128
	str r1, [r6, #28]
	mov r1, #256
	str r1, [r6, #32]
	mov r1, #512
	str r1, [r6, #36]
	mov r1, #1024
	str r1, [r6, #40]
	mov r1, #2048
	str r1, [r6, #44]
	mov r1, #4096
	str r1, [r6, #48]
	mov r1, #8192
	str r1, [r6, #52]
	mov r1, #16384
	str r1, [r6, #56]
	mov r1, #32768
	str r1, [r6, #60]
	mov r1, #65536
	str r1, [r6, #64]
	mov r1, #131072
	str r1, [r6, #68]
	mov r1, #262144
	str r1, [r6, #72]
	mov r1, #524288
	str r1, [r6, #76]
	mov r1, #1048576
	str r1, [r6, #80]
	mov r1, #2097152
	str r1, [r6, #84]
	mov r1, #4194304
	str r1, [r6, #88]
	mov r1, #8388608
	str r1, [r6, #92]
	mov r1, #16777216
	str r1, [r6, #96]
	mov r1, #33554432
	str r1, [r6, #100]
	mov r1, #67108864
	str r1, [r6, #104]
	mov r1, #134217728
	str r1, [r6, #108]
	mov r1, #268435456
	str r1, [r6, #112]
	mov r1, #536870912
	str r1, [r6, #116]
	mov r1, #1073741824
	str r1, [r6, #120]
	movw r1, #9999
	cmp r3, r1
	ble label9
	cmp r2, #0
	ble label18
	b label203
label9:
	ldr r1, [r4, r3, lsl #2]
	mov r7, #30
	movw r8, #34953
	movt r8, #34952
	smmla r8, r5, r8, r5
	asr r9, r8, #4
	add r8, r9, r8, lsr #31
	mls r5, r8, r7, r5
	ldr r7, [r6, r5, lsl #2]
	sdiv r8, r1, r7
	mov r9, #2
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r10, r10, r9, r8
	add r11, r0, r0, lsr #31
	asr r11, r11, #1
	mls r9, r11, r9, r0
	cmp r10, r9
	beq label14
	mov r1, #2
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r1, r8
	clz r1, r8
	lsr r1, r1, #5
	sub r10, r9, #1
	clz r10, r10
	lsr r10, r10, #5
	and r1, r1, r10
	rsb r1, r1, #0
	and r1, r7, r1
	sub r7, r8, #1
	clz r7, r7
	lsr r7, r7, #5
	clz r8, r9
	lsr r8, r8, #5
	and r7, r7, r8
	cmp r7, #0
	beq label12
	ldr r5, [r6, r5, lsl #2]
	sub r1, r1, r5
	ldr r5, [r4, r3, lsl #2]
	add r1, r1, r5
	str r1, [r4, r3, lsl #2]
	cmp r2, #0
	ble label18
	b label203
label12:
	ldr r5, [r4, r3, lsl #2]
	add r1, r1, r5
	str r1, [r4, r3, lsl #2]
	cmp r2, #0
	ble label18
	b label203
label14:
	str r1, [r4, r3, lsl #2]
	cmp r2, #0
	ble label18
label203:
	mov r1, r0
	mov r0, r2
	b label2
label42:
	movw r0, #51719
	movt r0, #15258
	add r0, r1, r0
	b label7
label18:
	mov r0, #64
	bl _sysy_stoptime
	movw r0, #10000
	mov r1, r4
	bl putarray
	mov r0, #0
	add sp, sp, #132
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
