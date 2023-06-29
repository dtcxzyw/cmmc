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
	mov r6, r0
	bl getarray
	mov r5, r0
	mov r0, #23
	bl _sysy_starttime
	movw r4, #:lower16:image_out
	movt r4, #:upper16:image_out
	mov r0, #1
	sub r1, r0, #1
	movw r2, #511
	cmp r0, r2
	bge label24
	b label23
label24:
	mov r0, #0
	b label11
label23:
	mov r3, #1
	b label4
label8:
	add r0, r0, #1
	sub r1, r0, #1
	movw r2, #511
	cmp r0, r2
	bge label24
	b label23
label4:
	add r2, r0, r3, lsl #9
	ldr r7, [r6, r2, lsl #2]
	sub r8, r3, #1
	add r9, r1, r8, lsl #9
	ldr r9, [r6, r9, lsl #2]
	rsb r7, r9, r7, lsl #3
	add r9, r0, r8, lsl #9
	add r8, r6, r9, lsl #2
	ldr r9, [r6, r9, lsl #2]
	sub r7, r7, r9
	ldr r8, [r8, #4]
	sub r7, r7, r8
	add r9, r1, r3, lsl #9
	add r8, r6, r9, lsl #2
	ldr r9, [r6, r9, lsl #2]
	sub r7, r7, r9
	ldr r8, [r8, #8]
	sub r7, r7, r8
	add r3, r3, #1
	add r8, r1, r3, lsl #9
	ldr r8, [r6, r8, lsl #2]
	sub r7, r7, r8
	add r9, r0, r3, lsl #9
	add r8, r6, r9, lsl #2
	ldr r9, [r6, r9, lsl #2]
	sub r7, r7, r9
	ldr r8, [r8, #4]
	sub r7, r7, r8
	cmp r7, #0
	bge label9
	mov r7, #0
	str r7, [r4, r2, lsl #2]
	movw r2, #1023
	cmp r3, r2
	bge label8
	b label4
label9:
	cmp r7, #255
	ble label6
	mov r7, #255
	str r7, [r4, r2, lsl #2]
	movw r2, #1023
	cmp r3, r2
	bge label8
	b label4
label6:
	str r7, [r4, r2, lsl #2]
	movw r2, #1023
	cmp r3, r2
	bge label8
	b label4
label11:
	lsl r1, r0, #9
	ldr r2, [r6, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r0, #1
	lsl r1, r1, #9
	sub r2, r1, #1
	ldr r3, [r6, r2, lsl #2]
	str r3, [r4, r2, lsl #2]
	ldr r2, [r6, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r0, #2
	lsl r1, r1, #9
	sub r2, r1, #1
	ldr r3, [r6, r2, lsl #2]
	str r3, [r4, r2, lsl #2]
	ldr r2, [r6, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r0, #3
	lsl r1, r1, #9
	sub r2, r1, #1
	ldr r3, [r6, r2, lsl #2]
	str r3, [r4, r2, lsl #2]
	ldr r2, [r6, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r0, #4
	lsl r1, r1, #9
	sub r2, r1, #1
	ldr r3, [r6, r2, lsl #2]
	str r3, [r4, r2, lsl #2]
	ldr r2, [r6, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r0, #5
	lsl r1, r1, #9
	sub r2, r1, #1
	ldr r3, [r6, r2, lsl #2]
	str r3, [r4, r2, lsl #2]
	ldr r2, [r6, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r0, #6
	lsl r1, r1, #9
	sub r2, r1, #1
	ldr r3, [r6, r2, lsl #2]
	str r3, [r4, r2, lsl #2]
	ldr r2, [r6, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r0, #7
	lsl r1, r1, #9
	sub r2, r1, #1
	ldr r3, [r6, r2, lsl #2]
	str r3, [r4, r2, lsl #2]
	ldr r2, [r6, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r0, r0, #8
	lsl r1, r0, #9
	sub r1, r1, #1
	ldr r2, [r6, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	cmp r0, #1024
	bge label192
	b label11
label192:
	mov r0, #0
label13:
	add r2, r6, r0, lsl #2
	ldr r3, [r6, r0, lsl #2]
	add r1, r4, r0, lsl #2
	str r3, [r4, r0, lsl #2]
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
	add r7, r2, r3
	ldr r7, [r7, #0]
	add r3, r1, r3
	str r7, [r3, #0]
	ldr r3, [r2, #16]
	str r3, [r1, #16]
	movw r3, #63504
	movt r3, #31
	add r7, r2, r3
	ldr r7, [r7, #0]
	add r3, r1, r3
	str r7, [r3, #0]
	ldr r3, [r2, #20]
	str r3, [r1, #20]
	movw r3, #63508
	movt r3, #31
	add r7, r2, r3
	ldr r7, [r7, #0]
	add r3, r1, r3
	str r7, [r3, #0]
	ldr r3, [r2, #24]
	str r3, [r1, #24]
	movw r3, #63512
	movt r3, #31
	add r7, r2, r3
	ldr r7, [r7, #0]
	add r3, r1, r3
	str r7, [r3, #0]
	ldr r3, [r2, #28]
	str r3, [r1, #28]
	movw r3, #63516
	movt r3, #31
	add r2, r2, r3
	ldr r2, [r2, #0]
	add r1, r1, r3
	str r2, [r1, #0]
	add r0, r0, #8
	cmp r0, #512
	bge label15
	b label13
label15:
	mov r0, #59
	bl _sysy_stoptime
	mov r0, #524288
	mov r1, r4
	bl putarray
	mov r0, r5
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
