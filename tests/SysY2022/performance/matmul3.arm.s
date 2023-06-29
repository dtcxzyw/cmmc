.arch armv7ve
.data
.bss
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
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	str r2, [sp, #4]
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	str r7, [sp, #8]
	movw r2, #:lower16:c
	movt r2, #:upper16:c
	str r2, [sp, #0]
	mov r4, #0
	cmp r4, #1000
	bge label4
	b label46
label4:
	mov r0, #23
	bl _sysy_starttime
	mov r0, #0
	cmp r0, #1000
	bge label60
	b label59
label60:
	mov r0, #0
label7:
	mov r1, #4000
	ldr r2, [sp, #4]
	mla r4, r0, r1, r2
	ldr r2, [sp, #0]
	mla r5, r0, r1, r2
	cmp r0, #1000
	bge label68
	mov r1, #0
	cmp r1, #1000
	bge label230
	b label402
label68:
	mov r0, #0
	cmp r0, #1000
	bge label72
	b label26
label72:
	mov r0, #0
	cmp r0, #1000
	bge label76
	b label75
label76:
	mov r0, #0
	mov r4, r0
	cmp r0, #1000
	bge label25
	b label403
label26:
	mov r1, #4000
	ldr r2, [sp, #0]
	mla r3, r0, r1, r2
	mvn r2, #-2147483648
	mov r1, #0
	b label27
label402:
	mov r2, #0
	mov r3, r2
label35:
	add r6, r4, r3, lsl #2
	ldr r8, [r4, r3, lsl #2]
	mov r9, #4000
	ldr r7, [sp, #8]
	mla r7, r3, r9, r7
	ldr r9, [r7, r1, lsl #2]
	ldr r10, [r6, #4]
	add r11, r7, #4000
	ldr r11, [r11, r1, lsl #2]
	mul r8, r8, r9
	mla r8, r10, r11, r8
	ldr r9, [r6, #8]
	add r10, r7, #8000
	ldr r10, [r10, r1, lsl #2]
	mla r8, r9, r10, r8
	ldr r9, [r6, #12]
	movw r10, #12000
	add r10, r7, r10
	ldr r10, [r10, r1, lsl #2]
	mla r8, r9, r10, r8
	ldr r9, [r6, #16]
	add r10, r7, #16000
	ldr r10, [r10, r1, lsl #2]
	mla r8, r9, r10, r8
	ldr r9, [r6, #20]
	movw r10, #20000
	add r10, r7, r10
	ldr r10, [r10, r1, lsl #2]
	mla r8, r9, r10, r8
	ldr r9, [r6, #24]
	movw r10, #24000
	add r10, r7, r10
	ldr r10, [r10, r1, lsl #2]
	mla r8, r9, r10, r8
	ldr r6, [r6, #28]
	movw r9, #28000
	add r7, r7, r9
	ldr r7, [r7, r1, lsl #2]
	mla r6, r6, r7, r8
	add r2, r6, r2
	add r3, r3, #8
	cmp r3, #1000
	bge label38
	b label35
label27:
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
	ldr r4, [r4, #28]
	cmp r4, r2
	movlt r2, r4
	add r1, r1, #8
	cmp r1, #1000
	bge label211
	b label27
label211:
	mov r1, #0
label30:
	add r4, r3, r1, lsl #2
	str r2, [r3, r1, lsl #2]
	str r2, [r4, #4]
	str r2, [r4, #8]
	str r2, [r4, #12]
	str r2, [r4, #16]
	str r2, [r4, #20]
	str r2, [r4, #24]
	str r2, [r4, #28]
	add r1, r1, #8
	cmp r1, #1000
	bge label32
	b label30
label32:
	add r0, r0, #1
	cmp r0, #1000
	bge label72
	b label26
label59:
	mov r1, #4000
	ldr r7, [sp, #8]
	mla r3, r0, r1, r7
	mov r1, #0
label41:
	mov r4, #4000
	ldr r2, [sp, #4]
	mla r2, r1, r4, r2
	ldr r5, [r2, r0, lsl #2]
	add r4, r3, r1, lsl #2
	str r5, [r3, r1, lsl #2]
	add r5, r2, #4000
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #4]
	add r5, r2, #8000
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #8]
	movw r5, #12000
	add r5, r2, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #12]
	add r5, r2, #16000
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #16]
	movw r5, #20000
	add r5, r2, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #20]
	movw r5, #24000
	add r5, r2, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #24]
	movw r5, #28000
	add r2, r2, r5
	ldr r2, [r2, r0, lsl #2]
	str r2, [r4, #28]
	add r1, r1, #8
	cmp r1, #1000
	bge label43
	b label41
label43:
	add r0, r0, #1
	cmp r0, #1000
	bge label60
	b label59
label38:
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #1000
	bge label230
	b label402
label230:
	add r0, r0, #1
	b label7
label75:
	mov r1, #4000
	ldr r2, [sp, #0]
	mla r3, r0, r1, r2
	mov r1, #0
label14:
	mov r4, #4000
	ldr r2, [sp, #0]
	mla r2, r1, r4, r2
	ldr r4, [r2, r0, lsl #2]
	rsb r5, r4, #0
	add r4, r3, r1, lsl #2
	str r5, [r3, r1, lsl #2]
	add r5, r2, #4000
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #4]
	add r5, r2, #8000
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #8]
	movw r5, #12000
	add r5, r2, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #12]
	add r5, r2, #16000
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #16]
	movw r5, #20000
	add r5, r2, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #20]
	movw r5, #24000
	add r5, r2, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #24]
	movw r5, #28000
	add r2, r2, r5
	ldr r2, [r2, r0, lsl #2]
	rsb r2, r2, #0
	str r2, [r4, #28]
	add r1, r1, #8
	cmp r1, #1000
	bge label16
	b label14
label16:
	add r0, r0, #1
	cmp r0, #1000
	bge label76
	b label75
label403:
	mov r1, #4000
	ldr r2, [sp, #0]
	mla r2, r0, r1, r2
	mov r1, #0
	b label21
label24:
	add r0, r0, #1
	cmp r0, #1000
	bge label25
	b label403
label21:
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
	ldr r3, [r3, #28]
	add r4, r4, r3
	add r1, r1, #8
	cmp r1, #1000
	bge label24
	b label21
label25:
	mov r0, #92
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #0
label44:
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label46:
	mov r0, #4000
	ldr r2, [sp, #4]
	mla r0, r4, r0, r2
	bl getarray
	cmp r0, #1000
	beq label47
	b label44
label47:
	add r4, r4, #1
	cmp r4, #1000
	bge label4
	b label46
