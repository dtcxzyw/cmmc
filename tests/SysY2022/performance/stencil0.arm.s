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
	movt r5, #:upper16:image_in
	sub sp, sp, #36
	mov r0, r5
	bl getarray
	str r0, [sp, #28]
	mov r0, #23
	bl _sysy_starttime
	mov r9, #1
	str r9, [sp, #24]
	movw r0, #511
	cmp r9, r0
	blt label17
label4:
	movw r5, #:lower16:image_in
	movt r5, #:upper16:image_in
	mov r1, #512
	mov r2, #0
	mov r0, r5
	mov r3, r2
.p2align 4
label5:
	ldr r4, [r0, #0]
	movw r7, #:lower16:image_out
	movt r7, #:upper16:image_out
	movw r5, #:lower16:image_in
	movt r5, #:upper16:image_in
	add r3, r3, #16
	cmp r3, #1024
	str r4, [r7, r2, lsl #2]
	sub r4, r1, #1
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	add r4, r2, #512
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	movw r4, #511
	add r4, r1, r4
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	add r4, r2, #1024
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	movw r4, #1023
	add r4, r1, r4
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	add r4, r2, #1536
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	movw r4, #1535
	add r4, r1, r4
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	add r4, r2, #2048
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	movw r4, #2047
	add r4, r1, r4
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	add r4, r2, #2560
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	movw r4, #2559
	add r4, r1, r4
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	add r4, r2, #3072
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	movw r4, #3071
	add r4, r1, r4
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	add r4, r2, #3584
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	movw r4, #3583
	add r4, r1, r4
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	add r4, r2, #4096
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	movw r4, #4095
	add r4, r1, r4
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	add r4, r2, #4608
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	movw r4, #4607
	add r4, r1, r4
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	add r4, r2, #5120
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	movw r4, #5119
	add r4, r1, r4
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	add r4, r2, #5632
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	movw r4, #5631
	add r4, r1, r4
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	add r4, r2, #6144
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	movw r4, #6143
	add r4, r1, r4
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	add r4, r2, #6656
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	movw r4, #6655
	add r4, r1, r4
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	add r4, r2, #7168
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	movw r4, #7167
	add r4, r1, r4
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	add r4, r2, #7680
	add r2, r2, #8192
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	movw r4, #7679
	add r4, r1, r4
	add r1, r1, #8192
	ldr r5, [r5, r4, lsl #2]
	str r5, [r7, r4, lsl #2]
	bge label226
	add r0, r0, #32768
	b label5
.p2align 4
label17:
	ldr r9, [sp, #24]
	movw r0, #511
	movw r1, #1023
	movw r3, #1535
	mov r6, #1024
	mov r11, #512
	mov r4, #1
	add r2, r9, #1536
	add r8, r9, #512
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
	b label18
.p2align 4
label23:
	ldr r9, [sp, #24]
	movw r5, #:lower16:image_in
	movt r5, #:upper16:image_in
	add r0, r9, r11
	ldr r1, [r5, r0, lsl #2]
	ldr r10, [sp, #20]
	add r2, r10, r7
	ldr r2, [r5, r2, lsl #2]
	rsb r1, r2, r1, lsl #3
	add r2, r9, r7
	movw r7, #:lower16:image_out
	movt r7, #:upper16:image_out
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
	movw r0, #511
	str r9, [sp, #24]
	cmp r9, r0
	blt label17
	b label4
.p2align 4
label18:
	ldr r9, [sp, #24]
	movw r5, #:lower16:image_in
	movt r5, #:upper16:image_in
	add r4, r4, #4
	ldr r11, [sp, #12]
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
	movw r7, #:lower16:image_out
	movt r7, #:upper16:image_out
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
	bge label23
	str r6, [sp, #16]
	str r11, [sp, #12]
	str r7, [sp, #8]
	mov r11, r7
	b label18
label226:
	movw r5, #:lower16:image_in
	movt r5, #:upper16:image_in
	mov r1, #0
.p2align 4
label12:
	ldr r2, [r5, #0]
	movw r7, #:lower16:image_out
	movt r7, #:upper16:image_out
	add r0, r7, r1, lsl #2
	add r1, r1, #16
	cmp r1, #512
	str r2, [r0, #0]
	movw r2, #63488
	movt r2, #31
	add r3, r5, r2
	add r2, r0, r2
	ldr r3, [r3, #0]
	str r3, [r2, #0]
	ldr r2, [r5, #4]
	str r2, [r0, #4]
	movw r2, #63492
	movt r2, #31
	add r3, r5, r2
	add r2, r0, r2
	ldr r3, [r3, #0]
	str r3, [r2, #0]
	ldr r2, [r5, #8]
	str r2, [r0, #8]
	movw r2, #63496
	movt r2, #31
	add r3, r5, r2
	add r2, r0, r2
	ldr r3, [r3, #0]
	str r3, [r2, #0]
	ldr r2, [r5, #12]
	str r2, [r0, #12]
	movw r2, #63500
	movt r2, #31
	add r3, r5, r2
	add r2, r0, r2
	ldr r3, [r3, #0]
	str r3, [r2, #0]
	ldr r2, [r5, #16]
	str r2, [r0, #16]
	movw r2, #63504
	movt r2, #31
	add r3, r5, r2
	add r2, r0, r2
	ldr r3, [r3, #0]
	str r3, [r2, #0]
	ldr r2, [r5, #20]
	str r2, [r0, #20]
	movw r2, #63508
	movt r2, #31
	add r3, r5, r2
	add r2, r0, r2
	ldr r3, [r3, #0]
	str r3, [r2, #0]
	ldr r2, [r5, #24]
	str r2, [r0, #24]
	movw r2, #63512
	movt r2, #31
	add r3, r5, r2
	add r2, r0, r2
	ldr r3, [r3, #0]
	str r3, [r2, #0]
	ldr r2, [r5, #28]
	str r2, [r0, #28]
	movw r2, #63516
	movt r2, #31
	add r3, r5, r2
	add r2, r0, r2
	ldr r3, [r3, #0]
	str r3, [r2, #0]
	ldr r2, [r5, #32]
	str r2, [r0, #32]
	movw r2, #63520
	movt r2, #31
	add r3, r5, r2
	add r2, r0, r2
	ldr r3, [r3, #0]
	str r3, [r2, #0]
	ldr r2, [r5, #36]
	str r2, [r0, #36]
	movw r2, #63524
	movt r2, #31
	add r3, r5, r2
	add r2, r0, r2
	ldr r3, [r3, #0]
	str r3, [r2, #0]
	ldr r2, [r5, #40]
	str r2, [r0, #40]
	movw r2, #63528
	movt r2, #31
	add r3, r5, r2
	add r2, r0, r2
	ldr r3, [r3, #0]
	str r3, [r2, #0]
	ldr r2, [r5, #44]
	str r2, [r0, #44]
	movw r2, #63532
	movt r2, #31
	add r3, r5, r2
	add r2, r0, r2
	ldr r3, [r3, #0]
	str r3, [r2, #0]
	ldr r2, [r5, #48]
	str r2, [r0, #48]
	movw r2, #63536
	movt r2, #31
	add r3, r5, r2
	add r2, r0, r2
	ldr r3, [r3, #0]
	str r3, [r2, #0]
	ldr r2, [r5, #52]
	str r2, [r0, #52]
	movw r2, #63540
	movt r2, #31
	add r3, r5, r2
	add r2, r0, r2
	ldr r3, [r3, #0]
	str r3, [r2, #0]
	ldr r2, [r5, #56]
	str r2, [r0, #56]
	movw r2, #63544
	movt r2, #31
	add r3, r5, r2
	add r2, r0, r2
	ldr r3, [r3, #0]
	str r3, [r2, #0]
	ldr r2, [r5, #60]
	str r2, [r0, #60]
	movw r2, #63548
	movt r2, #31
	add r0, r0, r2
	add r3, r5, r2
	ldr r3, [r3, #0]
	str r3, [r0, #0]
	bge label16
	add r5, r5, #64
	b label12
label16:
	mov r0, #59
	bl _sysy_stoptime
	mov r0, #524288
	movw r7, #:lower16:image_out
	movt r7, #:upper16:image_out
	mov r1, r7
	bl putarray
	ldr r0, [sp, #28]
	add sp, sp, #36
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
