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
	movw r4, #:lower16:a
	movt r4, #:upper16:a
	str r4, [sp, #4]
	movw r9, #:lower16:b
	movt r9, #:upper16:b
	str r9, [sp, #8]
	movw r4, #:lower16:c
	movt r4, #:upper16:c
	str r4, [sp, #0]
	mov r5, #0
	cmp r5, #1000
	bge label8
	mov r0, #4000
	ldr r4, [sp, #4]
	mla r0, r5, r0, r4
	bl getarray
	cmp r0, #1000
	beq label5
	b label6
label718:
	mov r1, #4000
	ldr r9, [sp, #8]
	mla r1, r0, r1, r9
	mov r2, #0
	b label12
label8:
	mov r0, #23
	bl _sysy_starttime
	mov r0, #0
	cmp r0, #1000
	bge label69
	b label718
label69:
	mov r2, #0
	mov r0, #4000
	ldr r4, [sp, #4]
	mla r1, r2, r0, r4
	ldr r4, [sp, #0]
	mla r3, r2, r0, r4
	cmp r2, #1000
	bge label209
	mov r0, #0
	cmp r0, #1000
	bge label23
label720:
	mov r4, #0
	mov r5, r4
	b label19
label209:
	mov r1, #0
	cmp r1, #1000
	bge label260
	b label710
label19:
	add r6, r1, r5, lsl #2
	ldr r8, [r1, r5, lsl #2]
	mov r7, #4000
	ldr r9, [sp, #8]
	mla r7, r5, r7, r9
	ldr r9, [r7, r0, lsl #2]
	ldr r10, [r6, #4]
	add r11, r7, #4000
	ldr r11, [r11, r0, lsl #2]
	mul r8, r8, r9
	mla r8, r10, r11, r8
	ldr r9, [r6, #8]
	add r10, r7, #8000
	ldr r10, [r10, r0, lsl #2]
	mla r8, r9, r10, r8
	ldr r6, [r6, #12]
	movw r9, #12000
	add r7, r7, r9
	ldr r7, [r7, r0, lsl #2]
	mla r6, r6, r7, r8
	add r4, r6, r4
	add r5, r5, #4
	cmp r5, #1000
	bge label22
	b label19
label22:
	str r4, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #1000
	bge label23
	b label720
label12:
	mov r3, #4000
	ldr r4, [sp, #4]
	mla r3, r2, r3, r4
	ldr r5, [r3, r0, lsl #2]
	add r4, r1, r2, lsl #2
	str r5, [r1, r2, lsl #2]
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
	add r2, r2, #16
	cmp r2, #992
	bge label14
	b label12
label14:
	mov r3, #4000
	ldr r4, [sp, #4]
	mla r3, r2, r3, r4
	ldr r5, [r3, r0, lsl #2]
	add r4, r1, r2, lsl #2
	str r5, [r1, r2, lsl #2]
	add r1, r3, #4000
	ldr r1, [r1, r0, lsl #2]
	str r1, [r4, #4]
	add r1, r3, #8000
	ldr r1, [r1, r0, lsl #2]
	str r1, [r4, #8]
	movw r1, #12000
	add r1, r3, r1
	ldr r1, [r1, r0, lsl #2]
	str r1, [r4, #12]
	add r1, r3, #16000
	ldr r1, [r1, r0, lsl #2]
	str r1, [r4, #16]
	movw r1, #20000
	add r1, r3, r1
	ldr r1, [r1, r0, lsl #2]
	str r1, [r4, #20]
	movw r1, #24000
	add r1, r3, r1
	ldr r1, [r1, r0, lsl #2]
	str r1, [r4, #24]
	movw r1, #28000
	add r1, r3, r1
	ldr r1, [r1, r0, lsl #2]
	str r1, [r4, #28]
	add r0, r0, #1
	cmp r0, #1000
	bge label69
	b label718
label23:
	add r2, r2, #1
	mov r0, #4000
	ldr r4, [sp, #4]
	mla r1, r2, r0, r4
	ldr r4, [sp, #0]
	mla r3, r2, r0, r4
	cmp r2, #1000
	bge label209
	mov r0, #0
	cmp r0, #1000
	bge label23
	b label720
label710:
	mov r0, #4000
	ldr r4, [sp, #0]
	mla r0, r1, r0, r4
	mvn r4, #-2147483648
	mov r2, #0
	b label27
label260:
	mov r0, #0
	cmp r0, #1000
	bge label401
	b label713
label27:
	add r3, r0, r2, lsl #2
	ldr r5, [r0, r2, lsl #2]
	cmp r5, r4
	movlt r4, r5
	ldr r5, [r3, #4]
	cmp r5, r4
	movlt r4, r5
	ldr r5, [r3, #8]
	cmp r5, r4
	movlt r4, r5
	ldr r5, [r3, #12]
	cmp r5, r4
	movlt r4, r5
	ldr r5, [r3, #16]
	cmp r5, r4
	movlt r4, r5
	ldr r5, [r3, #20]
	cmp r5, r4
	movlt r4, r5
	ldr r5, [r3, #24]
	cmp r5, r4
	movlt r4, r5
	ldr r5, [r3, #28]
	cmp r5, r4
	movlt r4, r5
	ldr r5, [r3, #32]
	cmp r5, r4
	movlt r4, r5
	ldr r5, [r3, #36]
	cmp r5, r4
	movlt r4, r5
	ldr r5, [r3, #40]
	cmp r5, r4
	movlt r4, r5
	ldr r5, [r3, #44]
	cmp r5, r4
	movlt r4, r5
	ldr r5, [r3, #48]
	cmp r5, r4
	movlt r4, r5
	ldr r5, [r3, #52]
	cmp r5, r4
	movlt r4, r5
	ldr r5, [r3, #56]
	cmp r5, r4
	movlt r4, r5
	ldr r3, [r3, #60]
	cmp r3, r4
	movlt r4, r3
	add r2, r2, #16
	cmp r2, #992
	bge label30
	b label27
label30:
	add r3, r0, r2, lsl #2
	ldr r5, [r0, r2, lsl #2]
	cmp r5, r4
	mov r2, r4
	movlt r2, r5
	ldr r4, [r3, #4]
	cmp r4, r2
	movlt r2, r4
	ldr r4, [r3, #8]
	cmp r4, r2
	movlt r2, r4
	ldr r4, [r3, #12]
	cmp r4, r2
	movlt r2, r4
	ldr r4, [r3, #16]
	cmp r4, r2
	movlt r2, r4
	ldr r4, [r3, #20]
	cmp r4, r2
	movlt r2, r4
	ldr r4, [r3, #24]
	cmp r4, r2
	movlt r2, r4
	ldr r3, [r3, #28]
	cmp r3, r2
	movlt r2, r3
	mov r4, #0
label31:
	add r3, r0, r4, lsl #2
	str r2, [r0, r4, lsl #2]
	str r2, [r3, #4]
	str r2, [r3, #8]
	str r2, [r3, #12]
	str r2, [r3, #16]
	str r2, [r3, #20]
	str r2, [r3, #24]
	str r2, [r3, #28]
	str r2, [r3, #32]
	str r2, [r3, #36]
	str r2, [r3, #40]
	str r2, [r3, #44]
	str r2, [r3, #48]
	str r2, [r3, #52]
	str r2, [r3, #56]
	str r2, [r3, #60]
	add r4, r4, #16
	cmp r4, #992
	bge label33
	b label31
label713:
	mov r1, #4000
	ldr r4, [sp, #0]
	mla r1, r0, r1, r4
	mov r2, #0
	b label37
label39:
	mov r3, #4000
	ldr r4, [sp, #0]
	mla r3, r2, r3, r4
	ldr r4, [r3, r0, lsl #2]
	rsb r5, r4, #0
	add r4, r1, r2, lsl #2
	str r5, [r1, r2, lsl #2]
	add r1, r3, #4000
	ldr r1, [r1, r0, lsl #2]
	rsb r1, r1, #0
	str r1, [r4, #4]
	add r1, r3, #8000
	ldr r1, [r1, r0, lsl #2]
	rsb r1, r1, #0
	str r1, [r4, #8]
	movw r1, #12000
	add r1, r3, r1
	ldr r1, [r1, r0, lsl #2]
	rsb r1, r1, #0
	str r1, [r4, #12]
	add r1, r3, #16000
	ldr r1, [r1, r0, lsl #2]
	rsb r1, r1, #0
	str r1, [r4, #16]
	movw r1, #20000
	add r1, r3, r1
	ldr r1, [r1, r0, lsl #2]
	rsb r1, r1, #0
	str r1, [r4, #20]
	movw r1, #24000
	add r1, r3, r1
	ldr r1, [r1, r0, lsl #2]
	rsb r1, r1, #0
	str r1, [r4, #24]
	movw r1, #28000
	add r1, r3, r1
	ldr r1, [r1, r0, lsl #2]
	rsb r1, r1, #0
	str r1, [r4, #28]
	add r0, r0, #1
	cmp r0, #1000
	bge label401
	b label713
label37:
	mov r3, #4000
	ldr r4, [sp, #0]
	mla r3, r2, r3, r4
	ldr r4, [r3, r0, lsl #2]
	rsb r5, r4, #0
	add r4, r1, r2, lsl #2
	str r5, [r1, r2, lsl #2]
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
	add r2, r2, #16
	cmp r2, #992
	bge label39
	b label37
label401:
	mov r0, #0
	mov r5, r0
	cmp r0, #1000
	bge label43
label715:
	mov r1, #4000
	ldr r4, [sp, #0]
	mla r1, r0, r1, r4
	mov r4, r5
	mov r2, #0
	b label45
label43:
	mov r0, #92
	bl _sysy_stoptime
	mov r0, r5
	bl putint
	mov r0, #0
	b label6
label45:
	add r3, r1, r2, lsl #2
	ldr r5, [r1, r2, lsl #2]
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
	add r2, r2, #16
	cmp r2, #992
	bge label48
	b label45
label48:
	add r3, r1, r2, lsl #2
	ldr r1, [r1, r2, lsl #2]
	ldr r2, [r3, #4]
	add r1, r4, r1
	add r1, r1, r2
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
	add r5, r1, r2
	add r0, r0, #1
	cmp r0, #1000
	bge label43
	b label715
label33:
	add r3, r0, r4, lsl #2
	str r2, [r0, r4, lsl #2]
	str r2, [r3, #4]
	str r2, [r3, #8]
	str r2, [r3, #12]
	str r2, [r3, #16]
	str r2, [r3, #20]
	str r2, [r3, #24]
	str r2, [r3, #28]
	add r1, r1, #1
	cmp r1, #1000
	bge label260
	b label710
label6:
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label5:
	add r5, r5, #1
	cmp r5, #1000
	bge label8
	mov r0, #4000
	ldr r4, [sp, #4]
	mla r0, r5, r0, r4
	bl getarray
	cmp r0, #1000
	beq label5
	b label6
