.arch armv7ve
.data
.align 4
a:
	.zero	4000000
.align 4
b:
	.zero	4000000
.align 4
c:
	.zero	4000000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	str r3, [sp, #4]
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	str r7, [sp, #8]
	movw r3, #:lower16:c
	movt r3, #:upper16:c
	str r3, [sp, #0]
	mov r4, #0
	cmp r4, #1000
	bge label6
	mov r0, #4000
	ldr r3, [sp, #4]
	mla r0, r4, r0, r3
	bl getarray
	cmp r0, #1000
	beq label5
	b label47
label896:
	mov r1, #4000
	ldr r7, [sp, #8]
	mla r2, r0, r1, r7
	mov r1, #0
	b label10
label5:
	add r4, r4, #1
	cmp r4, #1000
	bge label6
	mov r0, #4000
	ldr r3, [sp, #4]
	mla r0, r4, r0, r3
	bl getarray
	cmp r0, #1000
	beq label5
	b label47
label6:
	mov r0, #23
	bl _sysy_starttime
	mov r0, #0
	cmp r0, #1000
	bge label69
	b label896
label69:
	mov r2, #0
	mov r0, #4000
	ldr r3, [sp, #4]
	mla r4, r2, r0, r3
	ldr r3, [sp, #0]
	mla r5, r2, r0, r3
	cmp r2, #1000
	bge label209
	mov r3, #0
	cmp r3, #1000
	bge label17
	b label898
label209:
	mov r0, #0
	cmp r0, #1000
	bge label422
	b label888
label422:
	mov r0, #0
	cmp r0, #1000
	bge label563
	b label891
label563:
	mov r0, #0
	mov r4, r0
	cmp r0, #1000
	bge label41
	b label893
label898:
	mov r0, #0
	mov r1, r0
	b label18
label17:
	add r2, r2, #1
	mov r0, #4000
	ldr r3, [sp, #4]
	mla r4, r2, r0, r3
	ldr r3, [sp, #0]
	mla r5, r2, r0, r3
	cmp r2, #1000
	bge label209
	mov r3, #0
	cmp r3, #1000
	bge label17
	b label898
label18:
	add r6, r4, r1, lsl #2
	ldr r8, [r4, r1, lsl #2]
	mov r9, #4000
	ldr r7, [sp, #8]
	mla r7, r1, r9, r7
	ldr r10, [r7, r3, lsl #2]
	ldr r9, [r6, #4]
	add r11, r7, #4000
	ldr r11, [r11, r3, lsl #2]
	mul r8, r8, r10
	mla r8, r9, r11, r8
	ldr r9, [r6, #8]
	add r10, r7, #8000
	ldr r10, [r10, r3, lsl #2]
	mla r8, r9, r10, r8
	ldr r9, [r6, #12]
	movw r10, #12000
	add r10, r7, r10
	ldr r10, [r10, r3, lsl #2]
	mla r8, r9, r10, r8
	ldr r9, [r6, #16]
	add r10, r7, #16000
	ldr r10, [r10, r3, lsl #2]
	mla r8, r9, r10, r8
	ldr r9, [r6, #20]
	movw r10, #20000
	add r10, r7, r10
	ldr r10, [r10, r3, lsl #2]
	mla r8, r9, r10, r8
	ldr r9, [r6, #24]
	movw r10, #24000
	add r10, r7, r10
	ldr r10, [r10, r3, lsl #2]
	mla r8, r9, r10, r8
	ldr r9, [r6, #28]
	movw r10, #28000
	add r10, r7, r10
	ldr r10, [r10, r3, lsl #2]
	mla r8, r9, r10, r8
	ldr r9, [r6, #32]
	add r10, r7, #32000
	ldr r10, [r10, r3, lsl #2]
	mla r8, r9, r10, r8
	ldr r9, [r6, #36]
	movw r10, #36000
	add r10, r7, r10
	ldr r10, [r10, r3, lsl #2]
	mla r8, r9, r10, r8
	ldr r9, [r6, #40]
	movw r10, #40000
	add r10, r7, r10
	ldr r10, [r10, r3, lsl #2]
	mla r8, r9, r10, r8
	ldr r9, [r6, #44]
	movw r10, #44000
	add r10, r7, r10
	ldr r10, [r10, r3, lsl #2]
	mla r8, r9, r10, r8
	ldr r9, [r6, #48]
	movw r10, #48000
	add r10, r7, r10
	ldr r10, [r10, r3, lsl #2]
	mla r8, r9, r10, r8
	ldr r9, [r6, #52]
	movw r10, #52000
	add r10, r7, r10
	ldr r10, [r10, r3, lsl #2]
	mla r8, r9, r10, r8
	ldr r9, [r6, #56]
	movw r10, #56000
	add r10, r7, r10
	ldr r10, [r10, r3, lsl #2]
	mla r8, r9, r10, r8
	ldr r6, [r6, #60]
	movw r9, #60000
	add r7, r7, r9
	ldr r7, [r7, r3, lsl #2]
	mla r6, r6, r7, r8
	add r0, r6, r0
	add r1, r1, #16
	cmp r1, #992
	bge label21
	b label18
label21:
	add r6, r4, r1, lsl #2
	ldr r8, [r4, r1, lsl #2]
	mov r9, #4000
	ldr r7, [sp, #8]
	mla r1, r1, r9, r7
	ldr r7, [r1, r3, lsl #2]
	ldr r9, [r6, #4]
	add r10, r1, #4000
	ldr r10, [r10, r3, lsl #2]
	mla r0, r8, r7, r0
	mla r0, r9, r10, r0
	ldr r7, [r6, #8]
	add r8, r1, #8000
	ldr r8, [r8, r3, lsl #2]
	mla r0, r7, r8, r0
	ldr r7, [r6, #12]
	movw r8, #12000
	add r8, r1, r8
	ldr r8, [r8, r3, lsl #2]
	mla r0, r7, r8, r0
	ldr r7, [r6, #16]
	add r8, r1, #16000
	ldr r8, [r8, r3, lsl #2]
	mla r0, r7, r8, r0
	ldr r7, [r6, #20]
	movw r8, #20000
	add r8, r1, r8
	ldr r8, [r8, r3, lsl #2]
	mla r0, r7, r8, r0
	ldr r7, [r6, #24]
	movw r8, #24000
	add r8, r1, r8
	ldr r8, [r8, r3, lsl #2]
	mla r0, r7, r8, r0
	ldr r6, [r6, #28]
	movw r7, #28000
	add r1, r1, r7
	ldr r1, [r1, r3, lsl #2]
	mla r0, r6, r1, r0
	str r0, [r5, r3, lsl #2]
	add r3, r3, #1
	cmp r3, #1000
	bge label17
	b label898
label10:
	mov r4, #4000
	ldr r3, [sp, #4]
	mla r3, r1, r4, r3
	ldr r5, [r3, r0, lsl #2]
	add r4, r2, r1, lsl #2
	str r5, [r2, r1, lsl #2]
	add r5, r3, #4000
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #4]
	add r5, r3, #8000
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #8]
	movw r5, #12000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #12]
	add r5, r3, #16000
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #16]
	movw r5, #20000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #20]
	movw r5, #24000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #24]
	movw r5, #28000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #28]
	add r5, r3, #32000
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #32]
	movw r5, #36000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #36]
	movw r5, #40000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #40]
	movw r5, #44000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #44]
	movw r5, #48000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #48]
	movw r5, #52000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #52]
	movw r5, #56000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #56]
	movw r5, #60000
	add r3, r3, r5
	ldr r3, [r3, r0, lsl #2]
	str r3, [r4, #60]
	add r1, r1, #16
	cmp r1, #992
	bge label12
	b label10
label891:
	mov r1, #4000
	ldr r3, [sp, #0]
	mla r2, r0, r1, r3
	mov r1, #0
label35:
	mov r4, #4000
	ldr r3, [sp, #0]
	mla r3, r1, r4, r3
	ldr r4, [r3, r0, lsl #2]
	rsb r5, r4, #0
	add r4, r2, r1, lsl #2
	str r5, [r2, r1, lsl #2]
	add r5, r3, #4000
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #4]
	add r5, r3, #8000
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #8]
	movw r5, #12000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #12]
	add r5, r3, #16000
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #16]
	movw r5, #20000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #20]
	movw r5, #24000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #24]
	movw r5, #28000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #28]
	add r5, r3, #32000
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #32]
	movw r5, #36000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #36]
	movw r5, #40000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #40]
	movw r5, #44000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #44]
	movw r5, #48000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #48]
	movw r5, #52000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #52]
	movw r5, #56000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #56]
	movw r5, #60000
	add r3, r3, r5
	ldr r3, [r3, r0, lsl #2]
	rsb r3, r3, #0
	str r3, [r4, #60]
	add r1, r1, #16
	cmp r1, #992
	bge label37
	b label35
label37:
	mov r4, #4000
	ldr r3, [sp, #0]
	mla r4, r1, r4, r3
	ldr r3, [r4, r0, lsl #2]
	rsb r5, r3, #0
	add r3, r2, r1, lsl #2
	str r5, [r2, r1, lsl #2]
	add r1, r4, #4000
	ldr r1, [r1, r0, lsl #2]
	rsb r1, r1, #0
	str r1, [r3, #4]
	add r1, r4, #8000
	ldr r1, [r1, r0, lsl #2]
	rsb r1, r1, #0
	str r1, [r3, #8]
	movw r1, #12000
	add r1, r4, r1
	ldr r1, [r1, r0, lsl #2]
	rsb r1, r1, #0
	str r1, [r3, #12]
	add r1, r4, #16000
	ldr r1, [r1, r0, lsl #2]
	rsb r1, r1, #0
	str r1, [r3, #16]
	movw r1, #20000
	add r1, r4, r1
	ldr r1, [r1, r0, lsl #2]
	rsb r1, r1, #0
	str r1, [r3, #20]
	movw r1, #24000
	add r1, r4, r1
	ldr r1, [r1, r0, lsl #2]
	rsb r1, r1, #0
	str r1, [r3, #24]
	movw r1, #28000
	add r1, r4, r1
	ldr r1, [r1, r0, lsl #2]
	rsb r1, r1, #0
	str r1, [r3, #28]
	add r0, r0, #1
	cmp r0, #1000
	bge label563
	b label891
label888:
	mov r1, #4000
	ldr r3, [sp, #0]
	mla r3, r0, r1, r3
	mvn r2, #-2147483648
	mov r1, #0
	b label25
label31:
	add r4, r3, r1, lsl #2
	str r2, [r3, r1, lsl #2]
	str r2, [r4, #4]
	str r2, [r4, #8]
	str r2, [r4, #12]
	str r2, [r4, #16]
	str r2, [r4, #20]
	str r2, [r4, #24]
	str r2, [r4, #28]
	add r0, r0, #1
	cmp r0, #1000
	bge label422
	b label888
label25:
	add r4, r3, r1, lsl #2
	ldr r5, [r3, r1, lsl #2]
	cmp r5, r2
	movlt r2, r5
	ldr r5, [r4, #4]
	cmp r5, r2
	movlt r2, r5
	ldr r5, [r4, #8]
	cmp r5, r2
	movlt r2, r5
	ldr r5, [r4, #12]
	cmp r5, r2
	movlt r2, r5
	ldr r5, [r4, #16]
	cmp r5, r2
	movlt r2, r5
	ldr r5, [r4, #20]
	cmp r5, r2
	movlt r2, r5
	ldr r5, [r4, #24]
	cmp r5, r2
	movlt r2, r5
	ldr r5, [r4, #28]
	cmp r5, r2
	movlt r2, r5
	ldr r5, [r4, #32]
	cmp r5, r2
	movlt r2, r5
	ldr r5, [r4, #36]
	cmp r5, r2
	movlt r2, r5
	ldr r5, [r4, #40]
	cmp r5, r2
	movlt r2, r5
	ldr r5, [r4, #44]
	cmp r5, r2
	movlt r2, r5
	ldr r5, [r4, #48]
	cmp r5, r2
	movlt r2, r5
	ldr r5, [r4, #52]
	cmp r5, r2
	movlt r2, r5
	ldr r5, [r4, #56]
	cmp r5, r2
	movlt r2, r5
	ldr r4, [r4, #60]
	cmp r4, r2
	movlt r2, r4
	add r1, r1, #16
	cmp r1, #992
	bge label28
	b label25
label28:
	add r4, r3, r1, lsl #2
	ldr r5, [r3, r1, lsl #2]
	cmp r5, r2
	mov r1, r2
	movlt r1, r5
	ldr r2, [r4, #4]
	cmp r2, r1
	movlt r1, r2
	ldr r2, [r4, #8]
	cmp r2, r1
	movlt r1, r2
	ldr r2, [r4, #12]
	cmp r2, r1
	movlt r1, r2
	ldr r2, [r4, #16]
	cmp r2, r1
	movlt r1, r2
	ldr r2, [r4, #20]
	cmp r2, r1
	movlt r1, r2
	ldr r2, [r4, #24]
	cmp r2, r1
	movlt r1, r2
	ldr r4, [r4, #28]
	cmp r4, r1
	mov r2, r1
	movlt r2, r4
	mov r1, #0
label29:
	add r4, r3, r1, lsl #2
	str r2, [r3, r1, lsl #2]
	str r2, [r4, #4]
	str r2, [r4, #8]
	str r2, [r4, #12]
	str r2, [r4, #16]
	str r2, [r4, #20]
	str r2, [r4, #24]
	str r2, [r4, #28]
	str r2, [r4, #32]
	str r2, [r4, #36]
	str r2, [r4, #40]
	str r2, [r4, #44]
	str r2, [r4, #48]
	str r2, [r4, #52]
	str r2, [r4, #56]
	str r2, [r4, #60]
	add r1, r1, #16
	cmp r1, #992
	bge label31
	b label29
label893:
	mov r1, #4000
	ldr r3, [sp, #0]
	mla r2, r0, r1, r3
	mov r1, #0
label43:
	add r3, r2, r1, lsl #2
	ldr r5, [r2, r1, lsl #2]
	add r4, r4, r5
	ldr r5, [r3, #4]
	add r4, r4, r5
	ldr r5, [r3, #8]
	add r4, r4, r5
	ldr r5, [r3, #12]
	add r4, r4, r5
	ldr r5, [r3, #16]
	add r4, r4, r5
	ldr r5, [r3, #20]
	add r4, r4, r5
	ldr r5, [r3, #24]
	add r4, r4, r5
	ldr r5, [r3, #28]
	add r4, r4, r5
	ldr r5, [r3, #32]
	add r4, r4, r5
	ldr r5, [r3, #36]
	add r4, r4, r5
	ldr r5, [r3, #40]
	add r4, r4, r5
	ldr r5, [r3, #44]
	add r4, r4, r5
	ldr r5, [r3, #48]
	add r4, r4, r5
	ldr r5, [r3, #52]
	add r4, r4, r5
	ldr r5, [r3, #56]
	add r4, r4, r5
	ldr r3, [r3, #60]
	add r4, r4, r3
	add r1, r1, #16
	cmp r1, #992
	bge label46
	b label43
label46:
	add r3, r2, r1, lsl #2
	ldr r2, [r2, r1, lsl #2]
	ldr r1, [r3, #4]
	add r2, r4, r2
	add r1, r2, r1
	ldr r2, [r3, #8]
	add r1, r1, r2
	ldr r2, [r3, #12]
	add r1, r1, r2
	ldr r2, [r3, #16]
	add r1, r1, r2
	ldr r2, [r3, #20]
	add r1, r1, r2
	ldr r2, [r3, #24]
	add r1, r1, r2
	ldr r2, [r3, #28]
	add r4, r1, r2
	add r0, r0, #1
	cmp r0, #1000
	bge label41
	b label893
label41:
	mov r0, #92
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #0
	b label47
label12:
	mov r4, #4000
	ldr r3, [sp, #4]
	mla r4, r1, r4, r3
	ldr r5, [r4, r0, lsl #2]
	add r3, r2, r1, lsl #2
	str r5, [r2, r1, lsl #2]
	add r1, r4, #4000
	ldr r1, [r1, r0, lsl #2]
	str r1, [r3, #4]
	add r1, r4, #8000
	ldr r1, [r1, r0, lsl #2]
	str r1, [r3, #8]
	movw r1, #12000
	add r1, r4, r1
	ldr r1, [r1, r0, lsl #2]
	str r1, [r3, #12]
	add r1, r4, #16000
	ldr r1, [r1, r0, lsl #2]
	str r1, [r3, #16]
	movw r1, #20000
	add r1, r4, r1
	ldr r1, [r1, r0, lsl #2]
	str r1, [r3, #20]
	movw r1, #24000
	add r1, r4, r1
	ldr r1, [r1, r0, lsl #2]
	str r1, [r3, #24]
	movw r1, #28000
	add r1, r4, r1
	ldr r1, [r1, r0, lsl #2]
	str r1, [r3, #28]
	add r0, r0, #1
	cmp r0, #1000
	bge label69
	b label896
label47:
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
