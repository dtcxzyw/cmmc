.arch armv7ve
.data
.bss
.align 8
image_in:
	.zero	4194304
.align 8
image_out:
	.zero	4194304
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
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
	movw r1, #1023
	cmp r0, r1
	blt label4
label24:
	mov r0, #1024
	mov r1, #0
	mov r2, r1
	b label11
.p2align 4
label4:
	sub r1, r0, #1
	mov r2, #2048
	mov r3, #1024
	mov r6, #0
	mov r7, #1
.p2align 4
label5:
	add r8, r0, r3
	add r10, r1, r6
	add r7, r7, #1
	ldr r9, [r4, r8, lsl #2]
	ldr r10, [r4, r10, lsl #2]
	rsb r9, r10, r9, lsl #3
	add r10, r0, r6
	add r6, r6, #1024
	add r10, r4, r10, lsl #2
	ldr r11, [r10, #0]
	ldr r10, [r10, #4]
	sub r9, r9, r11
	sub r9, r9, r10
	add r10, r1, r3
	add r3, r3, #1024
	add r10, r4, r10, lsl #2
	ldr r11, [r10, #0]
	ldr r10, [r10, #8]
	sub r9, r9, r11
	sub r9, r9, r10
	add r10, r1, r2
	ldr r10, [r4, r10, lsl #2]
	sub r9, r9, r10
	add r10, r0, r2
	add r2, r2, #1024
	add r10, r4, r10, lsl #2
	ldr r11, [r10, #0]
	ldr r10, [r10, #4]
	sub r9, r9, r11
	sub r9, r9, r10
	usat r9, #8, r9
	str r9, [r5, r8, lsl #2]
	movw r8, #1023
	cmp r7, r8
	blt label5
	add r0, r0, #1
	movw r1, #1023
	cmp r0, r1
	blt label4
	b label24
.p2align 4
label11:
	ldr r3, [r4, r1, lsl #2]
	add r2, r2, #8
	cmp r2, #1024
	str r3, [r5, r1, lsl #2]
	sub r3, r0, #1
	ldr r6, [r4, r3, lsl #2]
	str r6, [r5, r3, lsl #2]
	add r3, r1, #1024
	ldr r6, [r4, r3, lsl #2]
	str r6, [r5, r3, lsl #2]
	movw r3, #1023
	add r3, r0, r3
	ldr r6, [r4, r3, lsl #2]
	str r6, [r5, r3, lsl #2]
	add r3, r1, #2048
	ldr r6, [r4, r3, lsl #2]
	str r6, [r5, r3, lsl #2]
	movw r3, #2047
	add r3, r0, r3
	ldr r6, [r4, r3, lsl #2]
	str r6, [r5, r3, lsl #2]
	add r3, r1, #3072
	ldr r6, [r4, r3, lsl #2]
	str r6, [r5, r3, lsl #2]
	movw r3, #3071
	add r3, r0, r3
	ldr r6, [r4, r3, lsl #2]
	str r6, [r5, r3, lsl #2]
	add r3, r1, #4096
	ldr r6, [r4, r3, lsl #2]
	str r6, [r5, r3, lsl #2]
	movw r3, #4095
	add r3, r0, r3
	ldr r6, [r4, r3, lsl #2]
	str r6, [r5, r3, lsl #2]
	add r3, r1, #5120
	ldr r6, [r4, r3, lsl #2]
	str r6, [r5, r3, lsl #2]
	movw r3, #5119
	add r3, r0, r3
	ldr r6, [r4, r3, lsl #2]
	str r6, [r5, r3, lsl #2]
	add r3, r1, #6144
	ldr r6, [r4, r3, lsl #2]
	str r6, [r5, r3, lsl #2]
	movw r3, #6143
	add r3, r0, r3
	ldr r6, [r4, r3, lsl #2]
	str r6, [r5, r3, lsl #2]
	add r3, r1, #7168
	add r1, r1, #8192
	ldr r6, [r4, r3, lsl #2]
	str r6, [r5, r3, lsl #2]
	movw r3, #7167
	add r3, r0, r3
	add r0, r0, #8192
	ldr r6, [r4, r3, lsl #2]
	str r6, [r5, r3, lsl #2]
	blt label11
	mov r0, #0
.p2align 4
label15:
	add r2, r4, r0, lsl #2
	add r1, r5, r0, lsl #2
	ldr r3, [r2, #0]
	add r0, r0, #8
	cmp r0, #1024
	str r3, [r1, #0]
	movw r3, #61440
	movt r3, #63
	add r6, r2, r3
	add r3, r1, r3
	ldr r6, [r6, #0]
	str r6, [r3, #0]
	ldr r3, [r2, #4]
	str r3, [r1, #4]
	movw r3, #61444
	movt r3, #63
	add r6, r2, r3
	add r3, r1, r3
	ldr r6, [r6, #0]
	str r6, [r3, #0]
	ldr r3, [r2, #8]
	str r3, [r1, #8]
	movw r3, #61448
	movt r3, #63
	add r6, r2, r3
	add r3, r1, r3
	ldr r6, [r6, #0]
	str r6, [r3, #0]
	ldr r3, [r2, #12]
	str r3, [r1, #12]
	movw r3, #61452
	movt r3, #63
	add r6, r2, r3
	add r3, r1, r3
	ldr r6, [r6, #0]
	str r6, [r3, #0]
	ldr r3, [r2, #16]
	str r3, [r1, #16]
	movw r3, #61456
	movt r3, #63
	add r6, r2, r3
	add r3, r1, r3
	ldr r6, [r6, #0]
	str r6, [r3, #0]
	ldr r3, [r2, #20]
	str r3, [r1, #20]
	movw r3, #61460
	movt r3, #63
	add r6, r2, r3
	add r3, r1, r3
	ldr r6, [r6, #0]
	str r6, [r3, #0]
	ldr r3, [r2, #24]
	str r3, [r1, #24]
	movw r3, #61464
	movt r3, #63
	add r6, r2, r3
	add r3, r1, r3
	ldr r6, [r6, #0]
	str r6, [r3, #0]
	ldr r3, [r2, #28]
	str r3, [r1, #28]
	movw r3, #61468
	movt r3, #63
	add r1, r1, r3
	add r2, r2, r3
	ldr r2, [r2, #0]
	str r2, [r1, #0]
	blt label15
	mov r0, #59
	bl _sysy_stoptime
	mov r1, r5
	mov r0, #1048576
	bl putarray
	ldr r0, [sp, #0]
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
