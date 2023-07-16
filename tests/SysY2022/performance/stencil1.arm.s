.arch armv7ve
.data
.bss
.align 4
image_in:
	.zero	4194304
.align 4
image_out:
	.zero	4194304
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, lr }
	movw r0, #:lower16:image_in
	sub sp, sp, #4
	movt r0, #:upper16:image_in
	mov r4, r0
	bl getarray
	mov r6, r0
	mov r0, #23
	bl _sysy_starttime
	mov r0, #1
	movw r5, #:lower16:image_out
	movt r5, #:upper16:image_out
	movw r1, #1023
	cmp r0, r1
	bge label19
	b label18
label19:
	mov r0, #0
label7:
	lsl r1, r0, #10
	ldr r2, [r4, r1, lsl #2]
	str r2, [r5, r1, lsl #2]
	add r1, r0, #1
	lsl r1, r1, #10
	sub r2, r1, #1
	ldr r3, [r4, r2, lsl #2]
	str r3, [r5, r2, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	str r2, [r5, r1, lsl #2]
	add r1, r0, #2
	lsl r1, r1, #10
	sub r2, r1, #1
	ldr r3, [r4, r2, lsl #2]
	str r3, [r5, r2, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	str r2, [r5, r1, lsl #2]
	add r1, r0, #3
	add r0, r0, #4
	lsl r1, r1, #10
	cmp r0, #1024
	sub r2, r1, #1
	ldr r3, [r4, r2, lsl #2]
	str r3, [r5, r2, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	str r2, [r5, r1, lsl #2]
	lsl r1, r0, #10
	sub r1, r1, #1
	ldr r2, [r4, r1, lsl #2]
	str r2, [r5, r1, lsl #2]
	bge label132
	b label7
label132:
	mov r0, #0
	b label9
label18:
	mov r2, #1
label4:
	sub r7, r2, #1
	lsl r3, r2, #10
	lsl r1, r7, #10
	sub r3, r3, #1
	sub r1, r1, #1
	add r8, r0, r1
	add r1, r0, r2, lsl #10
	add r2, r2, #1
	ldr r9, [r4, r1, lsl #2]
	ldr r8, [r4, r8, lsl #2]
	rsb r8, r8, r9, lsl #3
	add r9, r0, r7, lsl #10
	add r7, r4, r9, lsl #2
	ldr r9, [r4, r9, lsl #2]
	ldr r7, [r7, #4]
	sub r8, r8, r9
	sub r7, r8, r7
	add r8, r0, r3
	add r3, r4, r8, lsl #2
	ldr r8, [r4, r8, lsl #2]
	ldr r3, [r3, #8]
	sub r7, r7, r8
	add r8, r0, r2, lsl #10
	sub r3, r7, r3
	lsl r7, r2, #10
	sub r7, r7, #1
	add r7, r0, r7
	ldr r7, [r4, r7, lsl #2]
	sub r3, r3, r7
	add r7, r4, r8, lsl #2
	ldr r8, [r4, r8, lsl #2]
	ldr r7, [r7, #4]
	sub r3, r3, r8
	sub r3, r3, r7
	usat r3, #8, r3
	str r3, [r5, r1, lsl #2]
	movw r1, #1023
	cmp r2, r1
	bge label6
	b label4
label6:
	add r0, r0, #1
	movw r1, #1023
	cmp r0, r1
	bge label19
	b label18
label9:
	add r2, r4, r0, lsl #2
	ldr r3, [r4, r0, lsl #2]
	add r1, r5, r0, lsl #2
	str r3, [r5, r0, lsl #2]
	add r0, r0, #4
	movw r3, #61440
	cmp r0, #1024
	movt r3, #63
	add r7, r2, r3
	add r3, r1, r3
	ldr r7, [r7, #0]
	str r7, [r3, #0]
	ldr r3, [r2, #4]
	str r3, [r1, #4]
	movw r3, #61444
	movt r3, #63
	add r7, r2, r3
	add r3, r1, r3
	ldr r7, [r7, #0]
	str r7, [r3, #0]
	ldr r3, [r2, #8]
	str r3, [r1, #8]
	movw r3, #61448
	movt r3, #63
	add r7, r2, r3
	add r3, r1, r3
	ldr r7, [r7, #0]
	str r7, [r3, #0]
	ldr r3, [r2, #12]
	str r3, [r1, #12]
	movw r3, #61452
	movt r3, #63
	add r1, r1, r3
	add r2, r2, r3
	ldr r2, [r2, #0]
	str r2, [r1, #0]
	bge label11
	b label9
label11:
	mov r0, #59
	bl _sysy_stoptime
	mov r1, r5
	mov r0, #1048576
	bl putarray
	add sp, sp, #4
	mov r0, r6
	pop { r4, r5, r6, r7, r8, r9, pc }
