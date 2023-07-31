.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
QuickSort:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r4, r2
	mov r3, r0
	sub sp, sp, #20
	mov r0, r1
	str r3, [sp, #8]
	mov r3, #0
	str r2, [sp, #12]
	mov r1, r3
label2:
	cmp r3, #0
	mov r2, #0
	str r2, [sp, #4]
	movne r2, r1
	str r2, [sp, #4]
	ldr r4, [sp, #12]
	cmp r4, r0
	bgt label7
	add sp, sp, #20
	mov r0, r2
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label7:
	ldr r3, [sp, #8]
	mov r5, r0
	ldr r1, [r3, r0, lsl #2]
	ldr r4, [sp, #12]
	str r0, [sp, #0]
	sub r2, r1, #1
	cmp r4, r0
	ble label11
.p2align 4
label72:
	ldr r5, [sp, #0]
	cmp r5, r4
	blt label82
	cmp r4, r5
	bgt label77
	ble label380
.p2align 4
label80:
	ldr r3, [sp, #8]
	ldr r6, [r3, r5, lsl #2]
	str r6, [r3, r4, lsl #2]
	str r5, [sp, #0]
	sub r4, r4, #1
	cmp r4, r5
	bgt label72
	sub r4, r5, #1
	str r1, [r3, r5, lsl #2]
	mov r1, r0
	cmp r4, r0
	bgt label15
	b label14
label11:
	ldr r3, [sp, #8]
	ldr r5, [sp, #0]
	sub r4, r5, #1
	str r1, [r3, r5, lsl #2]
	mov r1, r0
label12:
	cmp r4, r1
	bgt label15
	b label14
.p2align 4
label113:
	ldr r3, [sp, #8]
	sub r6, r5, #1
	str r0, [r3, r5, lsl #2]
	cmp r6, r1
	bgt label35
label388:
	add r1, r5, #1
	b label12
.p2align 4
label357:
	cmp r6, r5
	ble label389
.p2align 4
label28:
	ldr r3, [sp, #8]
	ldr r3, [r3, r5, lsl #2]
	cmp r0, r3
	ble label148
	add r5, r5, #1
	cmp r6, r5
	bgt label28
	ldr r3, [sp, #8]
	sub r6, r5, #1
	str r0, [r3, r5, lsl #2]
	cmp r6, r1
	ble label388
label35:
	ldr r3, [sp, #8]
	mov r8, r6
	mov r7, r1
	ldr r0, [r3, r1, lsl #2]
	sub r2, r0, #1
	cmp r6, r1
	ble label171
.p2align 4
label39:
	cmp r7, r8
	blt label41
	cmp r8, r7
	bgt label49
	ldr r3, [sp, #8]
	sub r8, r7, #1
	str r0, [r3, r7, lsl #2]
	cmp r8, r1
	bgt label54
	b label397
.p2align 4
label16:
	cmp r6, r5
	ble label113
.p2align 4
label19:
	cmp r5, r6
	blt label21
	bge label357
.p2align 4
label30:
	ldr r3, [sp, #8]
	ldr r7, [r3, r6, lsl #2]
	str r7, [r3, r5, lsl #2]
	add r5, r5, #1
	cmp r6, r5
	bgt label28
	sub r6, r5, #1
	str r0, [r3, r5, lsl #2]
	cmp r6, r1
	bgt label35
	b label388
.p2align 4
label212:
	cmp r8, r7
	bgt label48
	ldr r3, [sp, #8]
	sub r8, r7, #1
	str r0, [r3, r7, lsl #2]
	cmp r8, r1
	ble label397
label54:
	ldr r3, [sp, #8]
	mov r10, r8
	mov r9, r1
	ldr r0, [r3, r1, lsl #2]
	sub r2, r0, #1
	cmp r8, r1
	ble label58
.p2align 4
label59:
	cmp r9, r10
	blt label69
	b label61
.p2align 4
label62:
	ldr r3, [sp, #8]
	ldr r11, [r3, r10, lsl #2]
	str r11, [r3, r9, lsl #2]
	add r9, r9, #1
	cmp r10, r9
	ble label65
.p2align 4
label67:
	ldr r3, [sp, #8]
	ldr r3, [r3, r9, lsl #2]
	cmp r0, r3
	ble label266
	add r9, r9, #1
	cmp r10, r9
	bgt label67
	b label377
.p2align 4
label69:
	ldr r3, [sp, #8]
	ldr r3, [r3, r10, lsl #2]
	cmp r2, r3
	bge label274
	sub r10, r10, #1
	cmp r9, r10
	blt label69
	cmp r10, r9
	bgt label67
label58:
	ldr r3, [sp, #8]
	sub r2, r9, #1
	str r0, [r3, r9, lsl #2]
	mov r0, r3
	bl QuickSort
	add r1, r9, #1
	b label52
.p2align 4
label266:
	cmp r10, r9
	bgt label66
	b label58
.p2align 4
label182:
	cmp r7, r8
	bge label366
	ldr r3, [sp, #8]
	ldr r9, [r3, r8, lsl #2]
	str r9, [r3, r7, lsl #2]
	add r7, r7, #1
	cmp r8, r7
	ble label47
.p2align 4
label49:
	ldr r3, [sp, #8]
	ldr r3, [r3, r7, lsl #2]
	cmp r0, r3
	ble label212
	add r7, r7, #1
	cmp r8, r7
	bgt label49
	ldr r3, [sp, #8]
	sub r8, r7, #1
	str r0, [r3, r7, lsl #2]
	cmp r8, r1
	bgt label54
	b label397
.p2align 4
label366:
	cmp r8, r7
	bgt label49
	ldr r3, [sp, #8]
	sub r8, r7, #1
	str r0, [r3, r7, lsl #2]
	cmp r8, r1
	bgt label54
	b label397
label32:
	cmp r6, r1
	bgt label35
	b label388
.p2align 4
label171:
	ldr r3, [sp, #8]
	sub r8, r7, #1
	str r0, [r3, r7, lsl #2]
	cmp r8, r1
	bgt label54
label397:
	add r1, r7, #1
	b label32
.p2align 4
label41:
	ldr r3, [sp, #8]
	ldr r3, [r3, r8, lsl #2]
	cmp r2, r3
	bge label182
	sub r8, r8, #1
	cmp r7, r8
	blt label41
	cmp r8, r7
	bgt label49
	ble label444
.p2align 4
label48:
	ldr r3, [sp, #8]
	ldr r9, [r3, r7, lsl #2]
	str r9, [r3, r8, lsl #2]
	sub r8, r8, #1
	cmp r8, r7
	bgt label39
	sub r8, r7, #1
	str r0, [r3, r7, lsl #2]
	cmp r8, r1
	bgt label54
	b label397
.p2align 4
label47:
	cmp r8, r7
	bgt label48
	ldr r3, [sp, #8]
	sub r8, r7, #1
	str r0, [r3, r7, lsl #2]
	cmp r8, r1
	bgt label54
	b label397
.p2align 4
label444:
	cmp r8, r7
	bgt label39
	ldr r3, [sp, #8]
	sub r8, r7, #1
	str r0, [r3, r7, lsl #2]
	cmp r8, r1
	bgt label54
	b label397
.p2align 4
label148:
	cmp r6, r5
	bgt label27
	ldr r3, [sp, #8]
	sub r6, r5, #1
	str r0, [r3, r5, lsl #2]
	cmp r6, r1
	bgt label35
	b label388
.p2align 4
label21:
	ldr r3, [sp, #8]
	ldr r3, [r3, r6, lsl #2]
	cmp r2, r3
	bge label124
	sub r6, r6, #1
	cmp r5, r6
	blt label21
	cmp r6, r5
	bgt label28
	ble label439
.p2align 4
label27:
	ldr r3, [sp, #8]
	ldr r7, [r3, r5, lsl #2]
	str r7, [r3, r6, lsl #2]
	sub r6, r6, #1
	cmp r6, r5
	bgt label19
	sub r6, r5, #1
	str r0, [r3, r5, lsl #2]
	cmp r6, r1
	bgt label35
	b label388
.p2align 4
label439:
	cmp r6, r5
	bgt label19
	ldr r3, [sp, #8]
	sub r6, r5, #1
	str r0, [r3, r5, lsl #2]
	cmp r6, r1
	bgt label35
	b label388
.p2align 4
label124:
	cmp r5, r6
	blt label30
	cmp r6, r5
	bgt label28
	ldr r3, [sp, #8]
	sub r6, r5, #1
	str r0, [r3, r5, lsl #2]
	cmp r6, r1
	bgt label35
	b label388
.p2align 4
label389:
	cmp r6, r5
	bgt label27
	ldr r3, [sp, #8]
	sub r6, r5, #1
	str r0, [r3, r5, lsl #2]
	cmp r6, r1
	bgt label35
	b label388
label15:
	ldr r3, [sp, #8]
	mov r6, r4
	mov r5, r1
	ldr r0, [r3, r1, lsl #2]
	sub r2, r0, #1
	b label16
.p2align 4
label77:
	ldr r3, [sp, #8]
	ldr r3, [r3, r5, lsl #2]
	cmp r1, r3
	ble label294
	add r5, r5, #1
	cmp r4, r5
	bgt label77
	str r5, [sp, #0]
	ldr r3, [sp, #8]
	sub r4, r5, #1
	str r1, [r3, r5, lsl #2]
	mov r1, r0
	cmp r4, r0
	bgt label15
	b label14
.p2align 4
label294:
	cmp r4, r5
	bgt label80
	str r5, [sp, #0]
	ldr r3, [sp, #8]
	sub r4, r5, #1
	str r1, [r3, r5, lsl #2]
	mov r1, r0
	cmp r4, r0
	bgt label15
label14:
	ldr r5, [sp, #0]
	mov r3, #1
	ldr r2, [sp, #4]
	add r0, r5, #1
	mov r1, r2
	b label2
.p2align 4
label81:
	ldr r3, [sp, #8]
	ldr r6, [r3, r4, lsl #2]
	ldr r5, [sp, #0]
	str r6, [r3, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	bgt label77
	b label385
.p2align 4
label82:
	ldr r3, [sp, #8]
	ldr r3, [r3, r4, lsl #2]
	cmp r2, r3
	bge label317
	sub r4, r4, #1
	ldr r5, [sp, #0]
	cmp r5, r4
	blt label82
	cmp r4, r5
	bgt label77
	str r5, [sp, #0]
	ldr r3, [sp, #8]
	sub r4, r5, #1
	str r1, [r3, r5, lsl #2]
	mov r1, r0
	cmp r4, r0
	bgt label15
	b label14
.p2align 4
label385:
	cmp r4, r5
	bgt label80
	str r5, [sp, #0]
	ldr r3, [sp, #8]
	sub r4, r5, #1
	str r1, [r3, r5, lsl #2]
	mov r1, r0
	cmp r4, r0
	bgt label15
	b label14
.p2align 4
label317:
	ldr r5, [sp, #0]
	cmp r5, r4
	blt label81
	cmp r4, r5
	bgt label77
	str r5, [sp, #0]
	ldr r3, [sp, #8]
	sub r4, r5, #1
	str r1, [r3, r5, lsl #2]
	mov r1, r0
	cmp r4, r0
	bgt label15
	b label14
.p2align 4
label380:
	str r5, [sp, #0]
	cmp r4, r5
	bgt label72
	ldr r3, [sp, #8]
	sub r4, r5, #1
	str r1, [r3, r5, lsl #2]
	mov r1, r0
	cmp r4, r0
	bgt label15
	b label14
.p2align 4
label61:
	cmp r9, r10
	blt label62
	cmp r10, r9
	bgt label67
	b label58
.p2align 4
label65:
	cmp r10, r9
	ble label253
.p2align 4
label66:
	ldr r3, [sp, #8]
	ldr r11, [r3, r9, lsl #2]
	str r11, [r3, r10, lsl #2]
	sub r10, r10, #1
	cmp r10, r9
	bgt label59
	b label58
.p2align 4
label274:
	cmp r9, r10
	blt label62
	cmp r10, r9
	bgt label67
	b label58
.p2align 4
label377:
	cmp r10, r9
	bgt label66
	b label58
label52:
	cmp r8, r1
	bgt label54
	b label397
.p2align 4
label253:
	cmp r10, r9
	bgt label59
	b label58
.globl main
main:
.p2align 4
	push { r4, r5, lr }
	sub sp, sp, #44
	mov r0, #4
	mov r2, #9
	mov r1, #0
	str r0, [sp, #0]
	mov r4, sp
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #2
	str r2, [sp, #8]
	str r0, [sp, #12]
	mov r0, #1
	str r1, [sp, #16]
	str r0, [sp, #20]
	mov r0, #6
	str r0, [sp, #24]
	mov r0, #5
	str r0, [sp, #28]
	mov r0, #7
	str r0, [sp, #32]
	mov r0, #8
	str r0, [sp, #36]
	mov r0, r4
	bl QuickSort
	cmp r0, #10
	bge label499
	mov r5, r0
.p2align 4
label497:
	ldr r0, [r4, r5, lsl #2]
	bl putint
	mov r0, #10
	bl putch
	add r5, r5, #1
	cmp r5, #10
	blt label497
label499:
	mov r0, #0
	add sp, sp, #44
	pop { r4, r5, pc }
