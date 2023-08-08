.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test
test:
	push { r4, r5, r6, r7, r8, r9, r10 }
	cmp r0, #1
	bge label4
	mov r0, #0
label2:
	pop { r4, r5, r6, r7, r8, r9, r10 }
	bx lr
label4:
	movw r2, #32769
	movt r2, #32768
	smmla r1, r0, r2, r0
	asr r3, r1, #15
	add r1, r3, r1, lsr #31
	rsb r1, r1, r1, lsl #16
	sub r4, r0, r1
	movw r1, #1
	movt r1, #65535
	movw r0, #65534
	lsl r3, r4, #1
	add r5, r1, r4, lsl #1
	cmp r3, r0
	mov r4, r3
	movgt r4, r5
	add r3, r3, r4, lsl #1
	lsl r5, r4, #1
	add r6, r1, r4, lsl #1
	cmp r5, r0
	movgt r5, r6
	add r7, r1, r5, lsl #1
	lsl r6, r5, #1
	mov r5, r6
	cmp r6, r0
	movgt r5, r7
	add r7, r1, r5, lsl #1
	lsl r6, r5, #1
	mov r5, r6
	cmp r6, r0
	movgt r5, r7
	add r3, r5, r3
	add r7, r1, r5, lsl #1
	lsl r6, r5, #1
	cmp r6, r0
	movgt r6, r7
	add r3, r3, r6, lsl #1
	lsl r7, r6, #1
	add r8, r1, r6, lsl #1
	cmp r7, r0
	movgt r7, r8
	add r9, r1, r7, lsl #1
	lsl r8, r7, #1
	mov r7, r8
	cmp r8, r0
	movgt r7, r9
	add r9, r1, r7, lsl #1
	lsl r8, r7, #1
	mov r7, r8
	cmp r8, r0
	movgt r7, r9
	add r3, r7, r3
	add r9, r1, r7, lsl #1
	lsl r8, r7, #1
	add r3, r3, r7, lsl #1
	cmp r8, r0
	movgt r8, r9
	smmla r2, r3, r2, r3
	add r10, r1, r8, lsl #1
	lsl r9, r8, #1
	mov r8, r9
	cmp r9, r0
	movgt r8, r10
	asr r4, r2, #15
	add r10, r1, r8, lsl #1
	lsl r9, r8, #1
	add r2, r4, r2, lsr #31
	mov r8, r9
	cmp r9, r0
	movgt r8, r10
	rsb r2, r2, r2, lsl #16
	add r10, r1, r8, lsl #1
	lsl r9, r8, #1
	sub r2, r3, r2
	mov r8, r9
	cmp r9, r0
	movgt r8, r10
	add r3, r8, r2
	cmp r3, r0
	add r0, r8, r1
	add r1, r2, r0
	mov r0, r3
	movgt r0, r1
	b label2
.p2align 4
.globl test2
test2:
	push { r4 }
	movw r2, #32769
	movt r2, #32768
	smmla r3, r0, r2, r0
	smmla r2, r1, r2, r1
	asr r4, r3, #15
	add r3, r4, r3, lsr #31
	rsb r3, r3, r3, lsl #16
	subs r0, r0, r3
	movw r3, #65535
	add r4, r0, r3
	movlt r0, r4
	asr r4, r2, #15
	add r2, r4, r2, lsr #31
	rsb r2, r2, r2, lsl #16
	subs r1, r1, r2
	add r2, r1, r3
	movw r3, #65534
	movlt r1, r2
	add r2, r0, r1
	cmp r2, r3
	movw r3, #1
	movt r3, #65535
	add r0, r0, r3
	add r1, r1, r0
	mov r0, r2
	movgt r0, r1
	pop { r4 }
	bx lr
.p2align 4
.globl test3
test3:
	mov r1, #1073741825
	smmul r1, r0, r1
	asr r2, r1, #29
	add r1, r2, r1, lsr #31
	rsb r1, r1, r1, lsl #31
	sub r0, r0, r1
	bx lr
.p2align 4
.globl test4
test4:
	add r1, r0, r0, lsr #31
	asr r1, r1, #1
	sub r1, r0, r1, lsl #1
	add r0, r1, r0, lsl #1
	bx lr
.p2align 4
.globl test5
test5:
	push { lr }
	cmp r0, #1
	sub sp, sp, #4
	bge label178
	mov r0, #0
label176:
	add sp, sp, #4
	pop { pc }
label178:
	movw r1, #65535
	bl cmmcAddRec3SRem
	b label176
.p2align 4
.globl test6
test6:
	push { lr }
	cmp r0, #1
	sub sp, sp, #4
	bge label167
	mov r0, #0
label165:
	add sp, sp, #4
	pop { pc }
label167:
	movw r1, #65535
	bl cmmcAddRec3SRem
	b label165
