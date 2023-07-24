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
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r4, #:lower16:image_in
	sub sp, sp, #12
	movt r4, #:upper16:image_in
	mov r0, r4
	bl getarray
	str r0, [sp, #0]
	mov r0, #23
	bl _sysy_starttime
	mov r0, #1
	movw r5, #:lower16:image_out
	movt r5, #:upper16:image_out
	movw r1, #511
	cmp r0, r1
	blt label4
label24:
	mov r0, #512
	mov r1, #0
	mov r2, r1
	b label11
label4:
	sub r1, r0, #1
	mov r2, #1024
	mov r3, #512
	mov r6, #0
	mov r7, #1
label5:
	add r8, r0, r3
	add r10, r1, r6
	add r11, r0, r6
	add r7, r7, #1
	ldr r9, [r4, r8, lsl #2]
	add r6, r6, #512
	ldr r10, [r4, r10, lsl #2]
	rsb r9, r10, r9, lsl #3
	add r10, r4, r11, lsl #2
	ldr r11, [r4, r11, lsl #2]
	ldr r10, [r10, #4]
	sub r9, r9, r11
	add r11, r1, r3
	sub r9, r9, r10
	add r3, r3, #512
	add r10, r4, r11, lsl #2
	ldr r11, [r4, r11, lsl #2]
	ldr r10, [r10, #8]
	sub r9, r9, r11
	add r11, r0, r2
	sub r9, r9, r10
	add r10, r1, r2
	add r2, r2, #512
	ldr r10, [r4, r10, lsl #2]
	sub r9, r9, r10
	add r10, r4, r11, lsl #2
	ldr r11, [r4, r11, lsl #2]
	ldr r10, [r10, #4]
	sub r9, r9, r11
	sub r9, r9, r10
	usat r9, #8, r9
	str r9, [r5, r8, lsl #2]
	movw r8, #1023
	cmp r7, r8
	blt label5
	add r0, r0, #1
	movw r1, #511
	cmp r0, r1
	blt label4
	b label24
label11:
	ldr r3, [r4, r1, lsl #2]
	add r2, r2, #4
	cmp r2, #1024
	str r3, [r5, r1, lsl #2]
	sub r3, r0, #1
	ldr r6, [r4, r3, lsl #2]
	str r6, [r5, r3, lsl #2]
	add r3, r1, #512
	ldr r6, [r4, r3, lsl #2]
	str r6, [r5, r3, lsl #2]
	movw r3, #511
	add r3, r0, r3
	ldr r6, [r4, r3, lsl #2]
	str r6, [r5, r3, lsl #2]
	add r3, r1, #1024
	ldr r6, [r4, r3, lsl #2]
	str r6, [r5, r3, lsl #2]
	movw r3, #1023
	add r3, r0, r3
	ldr r6, [r4, r3, lsl #2]
	str r6, [r5, r3, lsl #2]
	add r3, r1, #1536
	add r1, r1, #2048
	ldr r6, [r4, r3, lsl #2]
	str r6, [r5, r3, lsl #2]
	movw r3, #1535
	add r3, r0, r3
	add r0, r0, #2048
	ldr r6, [r4, r3, lsl #2]
	str r6, [r5, r3, lsl #2]
	blt label11
	mov r0, #0
label15:
	add r2, r4, r0, lsl #2
	ldr r3, [r4, r0, lsl #2]
	add r1, r5, r0, lsl #2
	str r3, [r5, r0, lsl #2]
	add r0, r0, #4
	movw r3, #63488
	cmp r0, #512
	movt r3, #31
	add r6, r2, r3
	add r3, r1, r3
	ldr r6, [r6, #0]
	str r6, [r3, #0]
	ldr r3, [r2, #4]
	str r3, [r1, #4]
	movw r3, #63492
	movt r3, #31
	add r6, r2, r3
	add r3, r1, r3
	ldr r6, [r6, #0]
	str r6, [r3, #0]
	ldr r3, [r2, #8]
	str r3, [r1, #8]
	movw r3, #63496
	movt r3, #31
	add r6, r2, r3
	add r3, r1, r3
	ldr r6, [r6, #0]
	str r6, [r3, #0]
	ldr r3, [r2, #12]
	str r3, [r1, #12]
	movw r3, #63500
	movt r3, #31
	add r1, r1, r3
	add r2, r2, r3
	ldr r2, [r2, #0]
	str r2, [r1, #0]
	blt label15
	mov r0, #59
	bl _sysy_stoptime
	mov r1, r5
	mov r0, #524288
	bl putarray
	ldr r0, [sp, #0]
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
