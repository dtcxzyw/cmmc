.arch armv7ve
.data
.bss
.align 4
image_in:
	.zero	2097152
.align 4
image_out:
	.zero	2097152
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, lr }
	sub sp, sp, #4
	movw r0, #:lower16:image_in
	movt r0, #:upper16:image_in
	mov r4, r0
	bl getarray
	mov r6, r0
	mov r0, #23
	bl _sysy_starttime
	movw r5, #:lower16:image_out
	movt r5, #:upper16:image_out
	mov r0, #1
	sub r1, r0, #1
	movw r2, #511
	cmp r0, r2
	bge label20
	b label19
label20:
	mov r0, #0
label7:
	lsl r1, r0, #9
	ldr r2, [r4, r1, lsl #2]
	str r2, [r5, r1, lsl #2]
	add r1, r0, #1
	lsl r1, r1, #9
	sub r2, r1, #1
	ldr r3, [r4, r2, lsl #2]
	str r3, [r5, r2, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	str r2, [r5, r1, lsl #2]
	add r1, r0, #2
	lsl r1, r1, #9
	sub r2, r1, #1
	ldr r3, [r4, r2, lsl #2]
	str r3, [r5, r2, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	str r2, [r5, r1, lsl #2]
	add r1, r0, #3
	lsl r1, r1, #9
	sub r2, r1, #1
	ldr r3, [r4, r2, lsl #2]
	str r3, [r5, r2, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	str r2, [r5, r1, lsl #2]
	add r0, r0, #4
	lsl r1, r0, #9
	sub r1, r1, #1
	ldr r2, [r4, r1, lsl #2]
	str r2, [r5, r1, lsl #2]
	cmp r0, #1024
	bge label130
	b label7
label130:
	mov r0, #0
	b label9
label19:
	mov r3, #1
label4:
	add r2, r0, r3, lsl #9
	ldr r8, [r4, r2, lsl #2]
	sub r7, r3, #1
	add r9, r1, r7, lsl #9
	ldr r9, [r4, r9, lsl #2]
	rsb r8, r9, r8, lsl #3
	add r9, r0, r7, lsl #9
	add r7, r4, r9, lsl #2
	ldr r9, [r4, r9, lsl #2]
	sub r8, r8, r9
	ldr r7, [r7, #4]
	sub r7, r8, r7
	add r9, r1, r3, lsl #9
	add r8, r4, r9, lsl #2
	ldr r9, [r4, r9, lsl #2]
	sub r7, r7, r9
	ldr r8, [r8, #8]
	sub r7, r7, r8
	add r3, r3, #1
	add r8, r1, r3, lsl #9
	ldr r8, [r4, r8, lsl #2]
	sub r7, r7, r8
	add r9, r0, r3, lsl #9
	add r8, r4, r9, lsl #2
	ldr r9, [r4, r9, lsl #2]
	sub r7, r7, r9
	ldr r8, [r8, #4]
	sub r7, r7, r8
	cmp r7, #255
	usat r7, #8, r7
	str r7, [r5, r2, lsl #2]
	movw r2, #1023
	cmp r3, r2
	bge label6
	b label4
label6:
	add r0, r0, #1
	sub r1, r0, #1
	movw r2, #511
	cmp r0, r2
	bge label20
	b label19
label9:
	add r2, r4, r0, lsl #2
	ldr r3, [r4, r0, lsl #2]
	add r1, r5, r0, lsl #2
	str r3, [r5, r0, lsl #2]
	movw r3, #63488
	movt r3, #31
	add r7, r2, r3
	ldr r7, [r7, #0]
	add r3, r1, r3
	str r7, [r3, #0]
	ldr r3, [r2, #4]
	str r3, [r1, #4]
	movw r3, #63492
	movt r3, #31
	add r7, r2, r3
	ldr r7, [r7, #0]
	add r3, r1, r3
	str r7, [r3, #0]
	ldr r3, [r2, #8]
	str r3, [r1, #8]
	movw r3, #63496
	movt r3, #31
	add r7, r2, r3
	ldr r7, [r7, #0]
	add r3, r1, r3
	str r7, [r3, #0]
	ldr r3, [r2, #12]
	str r3, [r1, #12]
	movw r3, #63500
	movt r3, #31
	add r2, r2, r3
	ldr r2, [r2, #0]
	add r1, r1, r3
	str r2, [r1, #0]
	add r0, r0, #4
	cmp r0, #512
	bge label11
	b label9
label11:
	mov r0, #59
	bl _sysy_stoptime
	mov r0, #524288
	mov r1, r5
	bl putarray
	mov r0, r6
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }