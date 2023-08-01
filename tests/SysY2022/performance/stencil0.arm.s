.arch armv7ve
.data
.bss
.align 8
image_in:
	.zero	2097152
.align 8
image_out:
	.zero	2097152
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r5, #:lower16:image_in
	sub sp, sp, #44
	str r5, [sp, #32]
	movt r5, #:upper16:image_in
	str r5, [sp, #32]
	mov r0, r5
	bl getarray
	str r0, [sp, #36]
	mov r0, #23
	bl _sysy_starttime
	mov r9, #1
	movw r7, #:lower16:image_out
	str r7, [sp, #28]
	movt r7, #:upper16:image_out
	str r7, [sp, #28]
	str r9, [sp, #24]
	movw r0, #511
	cmp r9, r0
	blt label4
label24:
	mov r0, #512
	mov r1, #0
	mov r2, r1
	b label11
.p2align 4
label4:
	ldr r9, [sp, #24]
	movw r0, #511
	movw r1, #1023
	movw r3, #1535
	mov r6, #1024
	mov r11, #512
	mov r4, #1
	add r8, r9, #512
	add r2, r9, #1536
	sub r10, r9, #1
	add r0, r9, r0
	add r1, r9, r1
	add r3, r9, r3
	str r10, [sp, #20]
	str r8, [sp, #4]
	add r8, r9, #1024
	str r8, [sp, #0]
	str r6, [sp, #16]
	str r11, [sp, #12]
	mov r11, #0
	str r11, [sp, #8]
.p2align 4
label5:
	ldr r9, [sp, #24]
	add r4, r4, #4
	ldr r11, [sp, #12]
	ldr r5, [sp, #32]
	add r8, r9, r11
	ldr r6, [r5, r8, lsl #2]
	ldr r10, [sp, #20]
	ldr r11, [sp, #8]
	add r7, r10, r11
	ldr r7, [r5, r7, lsl #2]
	rsb r6, r7, r6, lsl #3
	add r7, r9, r11
	add r7, r5, r7, lsl #2
	ldr r11, [r7, #0]
	ldr r7, [r7, #4]
	sub r6, r6, r11
	ldr r11, [sp, #12]
	sub r6, r6, r7
	add r7, r10, r11
	add r7, r5, r7, lsl #2
	ldr r11, [r7, #0]
	ldr r7, [r7, #8]
	sub r6, r6, r11
	sub r7, r6, r7
	ldr r6, [sp, #16]
	add r9, r9, r6
	add r10, r10, r6
	add r9, r5, r9, lsl #2
	ldr r10, [r5, r10, lsl #2]
	sub r7, r7, r10
	ldr r10, [r9, #0]
	ldr r9, [r9, #4]
	sub r7, r7, r10
	sub r7, r7, r9
	usat r9, #8, r7
	ldr r7, [sp, #28]
	str r9, [r7, r8, lsl #2]
	ldr r11, [sp, #12]
	ldr r8, [sp, #4]
	add r9, r8, r11
	ldr r8, [r5, r9, lsl #2]
	ldr r11, [sp, #8]
	add r10, r0, r11
	ldr r10, [r5, r10, lsl #2]
	rsb r10, r10, r8, lsl #3
	ldr r8, [sp, #4]
	add r8, r8, r11
	add r8, r5, r8, lsl #2
	ldr r11, [r8, #0]
	ldr r8, [r8, #4]
	sub r10, r10, r11
	ldr r11, [sp, #12]
	sub r8, r10, r8
	add r10, r0, r11
	add r10, r5, r10, lsl #2
	ldr r11, [r10, #0]
	ldr r10, [r10, #8]
	sub r8, r8, r11
	sub r8, r8, r10
	add r10, r0, r6
	ldr r10, [r5, r10, lsl #2]
	sub r10, r8, r10
	ldr r8, [sp, #4]
	add r8, r8, r6
	add r8, r5, r8, lsl #2
	ldr r11, [r8, #0]
	ldr r8, [r8, #4]
	sub r10, r10, r11
	sub r8, r10, r8
	usat r8, #8, r8
	str r8, [r7, r9, lsl #2]
	ldr r11, [sp, #12]
	ldr r8, [sp, #0]
	add r9, r8, r11
	ldr r8, [r5, r9, lsl #2]
	ldr r11, [sp, #8]
	add r10, r1, r11
	ldr r10, [r5, r10, lsl #2]
	rsb r10, r10, r8, lsl #3
	ldr r8, [sp, #0]
	add r8, r8, r11
	add r8, r5, r8, lsl #2
	ldr r11, [r8, #0]
	ldr r8, [r8, #4]
	sub r10, r10, r11
	ldr r11, [sp, #12]
	sub r8, r10, r8
	add r10, r1, r11
	add r10, r5, r10, lsl #2
	ldr r11, [r10, #0]
	ldr r10, [r10, #8]
	sub r8, r8, r11
	sub r8, r8, r10
	add r10, r1, r6
	ldr r10, [r5, r10, lsl #2]
	sub r10, r8, r10
	ldr r8, [sp, #0]
	add r8, r8, r6
	add r8, r5, r8, lsl #2
	ldr r11, [r8, #0]
	ldr r8, [r8, #4]
	sub r10, r10, r11
	sub r8, r10, r8
	usat r8, #8, r8
	str r8, [r7, r9, lsl #2]
	ldr r11, [sp, #12]
	add r8, r2, r11
	ldr r9, [r5, r8, lsl #2]
	ldr r11, [sp, #8]
	add r10, r3, r11
	ldr r10, [r5, r10, lsl #2]
	rsb r9, r10, r9, lsl #3
	add r10, r2, r11
	add r10, r5, r10, lsl #2
	ldr r11, [r10, #0]
	ldr r10, [r10, #4]
	sub r9, r9, r11
	ldr r11, [sp, #12]
	sub r9, r9, r10
	add r10, r3, r11
	add r10, r5, r10, lsl #2
	ldr r11, [r10, #0]
	ldr r10, [r10, #8]
	sub r9, r9, r11
	sub r9, r9, r10
	add r10, r3, r6
	ldr r10, [r5, r10, lsl #2]
	sub r9, r9, r10
	add r10, r2, r6
	add r6, r6, #2048
	add r5, r5, r10, lsl #2
	ldr r10, [r5, #0]
	ldr r5, [r5, #4]
	sub r9, r9, r10
	sub r5, r9, r5
	usat r5, #8, r5
	str r5, [r7, r8, lsl #2]
	movw r5, #1021
	ldr r11, [sp, #8]
	cmp r4, r5
	add r7, r11, #2048
	ldr r11, [sp, #12]
	add r11, r11, #2048
	bge label10
	str r6, [sp, #16]
	str r11, [sp, #12]
	str r7, [sp, #8]
	mov r11, r7
	b label5
.p2align 4
label10:
	ldr r9, [sp, #24]
	ldr r5, [sp, #32]
	add r0, r9, r11
	ldr r1, [r5, r0, lsl #2]
	ldr r10, [sp, #20]
	add r2, r10, r7
	ldr r2, [r5, r2, lsl #2]
	rsb r1, r2, r1, lsl #3
	add r2, r9, r7
	add r2, r5, r2, lsl #2
	ldr r3, [r2, #0]
	ldr r2, [r2, #4]
	sub r1, r1, r3
	sub r1, r1, r2
	add r2, r10, r11
	add r2, r5, r2, lsl #2
	ldr r3, [r2, #0]
	ldr r2, [r2, #8]
	sub r1, r1, r3
	sub r1, r1, r2
	add r2, r10, r6
	ldr r2, [r5, r2, lsl #2]
	sub r1, r1, r2
	add r2, r9, r6
	add r2, r5, r2, lsl #2
	ldr r3, [r2, #0]
	ldr r2, [r2, #4]
	ldr r7, [sp, #28]
	sub r1, r1, r3
	sub r1, r1, r2
	usat r1, #8, r1
	str r1, [r7, r0, lsl #2]
	ldr r11, [sp, #12]
	add r1, r9, #2560
	add r9, r9, #1
	add r0, r11, r1
	ldr r2, [r5, r0, lsl #2]
	ldr r11, [sp, #8]
	add r3, r11, #2560
	add r3, r10, r3
	ldr r3, [r5, r3, lsl #2]
	rsb r2, r3, r2, lsl #3
	add r3, r11, r1
	add r3, r5, r3, lsl #2
	ldr r4, [r3, #0]
	ldr r3, [r3, #4]
	ldr r11, [sp, #12]
	sub r2, r2, r4
	sub r2, r2, r3
	add r3, r11, #2560
	add r3, r10, r3
	add r3, r5, r3, lsl #2
	ldr r4, [r3, #0]
	ldr r3, [r3, #8]
	ldr r6, [sp, #16]
	sub r2, r2, r4
	sub r2, r2, r3
	add r1, r6, r1
	add r3, r6, #2560
	add r1, r5, r1, lsl #2
	add r3, r10, r3
	ldr r3, [r5, r3, lsl #2]
	sub r2, r2, r3
	ldr r3, [r1, #0]
	ldr r1, [r1, #4]
	sub r2, r2, r3
	sub r1, r2, r1
	usat r1, #8, r1
	str r1, [r7, r0, lsl #2]
	str r9, [sp, #24]
	movw r0, #511
	cmp r9, r0
	blt label4
	b label24
.p2align 4
label11:
	ldr r5, [sp, #32]
	add r2, r2, #16
	cmp r2, #1024
	ldr r3, [r5, r1, lsl #2]
	ldr r7, [sp, #28]
	str r3, [r7, r1, lsl #2]
	sub r3, r0, #1
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	add r3, r1, #512
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	movw r3, #511
	add r3, r0, r3
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	add r3, r1, #1024
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	movw r3, #1023
	add r3, r0, r3
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	add r3, r1, #1536
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	movw r3, #1535
	add r3, r0, r3
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	add r3, r1, #2048
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	movw r3, #2047
	add r3, r0, r3
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	add r3, r1, #2560
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	movw r3, #2559
	add r3, r0, r3
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	add r3, r1, #3072
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	movw r3, #3071
	add r3, r0, r3
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	add r3, r1, #3584
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	movw r3, #3583
	add r3, r0, r3
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	add r3, r1, #4096
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	movw r3, #4095
	add r3, r0, r3
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	add r3, r1, #4608
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	movw r3, #4607
	add r3, r0, r3
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	add r3, r1, #5120
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	movw r3, #5119
	add r3, r0, r3
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	add r3, r1, #5632
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	movw r3, #5631
	add r3, r0, r3
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	add r3, r1, #6144
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	movw r3, #6143
	add r3, r0, r3
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	add r3, r1, #6656
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	movw r3, #6655
	add r3, r0, r3
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	add r3, r1, #7168
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	movw r3, #7167
	add r3, r0, r3
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	add r3, r1, #7680
	add r1, r1, #8192
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	movw r3, #7679
	add r3, r0, r3
	add r0, r0, #8192
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	blt label11
	mov r0, #0
.p2align 4
label15:
	ldr r5, [sp, #32]
	add r1, r5, r0, lsl #2
	ldr r3, [r1, #0]
	ldr r7, [sp, #28]
	add r2, r7, r0, lsl #2
	add r0, r0, #16
	str r3, [r2, #0]
	cmp r0, #512
	movw r3, #63488
	movt r3, #31
	add r4, r1, r3
	add r3, r2, r3
	ldr r4, [r4, #0]
	str r4, [r3, #0]
	ldr r3, [r1, #4]
	str r3, [r2, #4]
	movw r3, #63492
	movt r3, #31
	add r4, r1, r3
	add r3, r2, r3
	ldr r4, [r4, #0]
	str r4, [r3, #0]
	ldr r3, [r1, #8]
	str r3, [r2, #8]
	movw r3, #63496
	movt r3, #31
	add r4, r1, r3
	add r3, r2, r3
	ldr r4, [r4, #0]
	str r4, [r3, #0]
	ldr r3, [r1, #12]
	str r3, [r2, #12]
	movw r3, #63500
	movt r3, #31
	add r4, r1, r3
	add r3, r2, r3
	ldr r4, [r4, #0]
	str r4, [r3, #0]
	ldr r3, [r1, #16]
	str r3, [r2, #16]
	movw r3, #63504
	movt r3, #31
	add r4, r1, r3
	add r3, r2, r3
	ldr r4, [r4, #0]
	str r4, [r3, #0]
	ldr r3, [r1, #20]
	str r3, [r2, #20]
	movw r3, #63508
	movt r3, #31
	add r4, r1, r3
	add r3, r2, r3
	ldr r4, [r4, #0]
	str r4, [r3, #0]
	ldr r3, [r1, #24]
	str r3, [r2, #24]
	movw r3, #63512
	movt r3, #31
	add r4, r1, r3
	add r3, r2, r3
	ldr r4, [r4, #0]
	str r4, [r3, #0]
	ldr r3, [r1, #28]
	str r3, [r2, #28]
	movw r3, #63516
	movt r3, #31
	add r4, r1, r3
	add r3, r2, r3
	ldr r4, [r4, #0]
	str r4, [r3, #0]
	ldr r3, [r1, #32]
	str r3, [r2, #32]
	movw r3, #63520
	movt r3, #31
	add r4, r1, r3
	add r3, r2, r3
	ldr r4, [r4, #0]
	str r4, [r3, #0]
	ldr r3, [r1, #36]
	str r3, [r2, #36]
	movw r3, #63524
	movt r3, #31
	add r4, r1, r3
	add r3, r2, r3
	ldr r4, [r4, #0]
	str r4, [r3, #0]
	ldr r3, [r1, #40]
	str r3, [r2, #40]
	movw r3, #63528
	movt r3, #31
	add r4, r1, r3
	add r3, r2, r3
	ldr r4, [r4, #0]
	str r4, [r3, #0]
	ldr r3, [r1, #44]
	str r3, [r2, #44]
	movw r3, #63532
	movt r3, #31
	add r4, r1, r3
	add r3, r2, r3
	ldr r4, [r4, #0]
	str r4, [r3, #0]
	ldr r3, [r1, #48]
	str r3, [r2, #48]
	movw r3, #63536
	movt r3, #31
	add r4, r1, r3
	add r3, r2, r3
	ldr r4, [r4, #0]
	str r4, [r3, #0]
	ldr r3, [r1, #52]
	str r3, [r2, #52]
	movw r3, #63540
	movt r3, #31
	add r4, r1, r3
	add r3, r2, r3
	ldr r4, [r4, #0]
	str r4, [r3, #0]
	ldr r3, [r1, #56]
	str r3, [r2, #56]
	movw r3, #63544
	movt r3, #31
	add r4, r1, r3
	add r3, r2, r3
	ldr r4, [r4, #0]
	str r4, [r3, #0]
	ldr r3, [r1, #60]
	str r3, [r2, #60]
	movw r3, #63548
	movt r3, #31
	add r2, r2, r3
	add r1, r1, r3
	ldr r1, [r1, #0]
	str r1, [r2, #0]
	blt label15
	mov r0, #59
	bl _sysy_stoptime
	mov r0, #524288
	ldr r7, [sp, #28]
	mov r1, r7
	bl putarray
	ldr r0, [sp, #36]
	add sp, sp, #44
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
