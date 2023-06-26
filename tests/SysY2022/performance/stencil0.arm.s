.arch armv7ve
.data
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
	sub sp, sp, #12
	movw r0, #:lower16:image_in
	movt r0, #:upper16:image_in
	mov r9, r0
	str r0, [sp, #0]
	bl getarray
	str r0, [sp, #4]
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
	mov r2, #1
	b label4
label8:
	add r0, r0, #1
	sub r1, r0, #1
	movw r2, #511
	cmp r0, r2
	bge label24
	b label23
label4:
	sub r3, r2, #1
	add r8, r0, r3, lsl #9
	add r10, r1, r3, lsl #9
	add r3, r0, r2, lsl #9
	add r7, r1, r2, lsl #9
	add r2, r2, #1
	add r5, r0, r2, lsl #9
	add r6, r1, r2, lsl #9
	ldr r9, [sp, #0]
	ldr r11, [r9, r3, lsl #2]
	ldr r9, [sp, #0]
	ldr r9, [r9, r10, lsl #2]
	rsb r10, r9, r11, lsl #3
	ldr r9, [sp, #0]
	add r11, r9, r8, lsl #2
	ldr r9, [sp, #0]
	ldr r8, [r9, r8, lsl #2]
	sub r8, r10, r8
	ldr r9, [r11, #4]
	sub r8, r8, r9
	ldr r9, [sp, #0]
	add r10, r9, r7, lsl #2
	ldr r9, [sp, #0]
	ldr r7, [r9, r7, lsl #2]
	sub r7, r8, r7
	ldr r8, [r10, #8]
	sub r7, r7, r8
	ldr r9, [sp, #0]
	ldr r6, [r9, r6, lsl #2]
	sub r6, r7, r6
	ldr r9, [sp, #0]
	add r7, r9, r5, lsl #2
	ldr r9, [sp, #0]
	ldr r5, [r9, r5, lsl #2]
	sub r5, r6, r5
	ldr r6, [r7, #4]
	sub r5, r5, r6
	add r3, r4, r3, lsl #2
	cmp r5, #0
	bge label9
	mov r5, #0
	str r5, [r3, #0]
	movw r3, #1023
	cmp r2, r3
	bge label8
	b label4
label9:
	cmp r5, #255
	ble label6
	mov r5, #255
	str r5, [r3, #0]
	movw r3, #1023
	cmp r2, r3
	bge label8
	b label4
label6:
	str r5, [r3, #0]
	movw r3, #1023
	cmp r2, r3
	bge label8
	b label4
label11:
	lsl r1, r0, #9
	ldr r9, [sp, #0]
	ldr r2, [r9, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r0, #1
	lsl r1, r1, #9
	sub r2, r1, #1
	ldr r9, [sp, #0]
	ldr r3, [r9, r2, lsl #2]
	str r3, [r4, r2, lsl #2]
	ldr r9, [sp, #0]
	ldr r2, [r9, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r0, #2
	lsl r1, r1, #9
	sub r2, r1, #1
	ldr r9, [sp, #0]
	ldr r3, [r9, r2, lsl #2]
	str r3, [r4, r2, lsl #2]
	ldr r9, [sp, #0]
	ldr r2, [r9, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r0, #3
	lsl r1, r1, #9
	sub r2, r1, #1
	ldr r9, [sp, #0]
	ldr r3, [r9, r2, lsl #2]
	str r3, [r4, r2, lsl #2]
	ldr r9, [sp, #0]
	ldr r2, [r9, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r0, #4
	lsl r1, r1, #9
	sub r2, r1, #1
	ldr r9, [sp, #0]
	ldr r3, [r9, r2, lsl #2]
	str r3, [r4, r2, lsl #2]
	ldr r9, [sp, #0]
	ldr r2, [r9, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r0, #5
	lsl r1, r1, #9
	sub r2, r1, #1
	ldr r9, [sp, #0]
	ldr r3, [r9, r2, lsl #2]
	str r3, [r4, r2, lsl #2]
	ldr r9, [sp, #0]
	ldr r2, [r9, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r0, #6
	lsl r1, r1, #9
	sub r2, r1, #1
	ldr r9, [sp, #0]
	ldr r3, [r9, r2, lsl #2]
	str r3, [r4, r2, lsl #2]
	ldr r9, [sp, #0]
	ldr r2, [r9, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r0, #7
	lsl r1, r1, #9
	sub r2, r1, #1
	ldr r9, [sp, #0]
	ldr r3, [r9, r2, lsl #2]
	str r3, [r4, r2, lsl #2]
	ldr r9, [sp, #0]
	ldr r2, [r9, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r0, #8
	lsl r1, r1, #9
	sub r2, r1, #1
	ldr r9, [sp, #0]
	ldr r3, [r9, r2, lsl #2]
	str r3, [r4, r2, lsl #2]
	ldr r9, [sp, #0]
	ldr r2, [r9, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r0, #9
	lsl r1, r1, #9
	sub r2, r1, #1
	ldr r9, [sp, #0]
	ldr r3, [r9, r2, lsl #2]
	str r3, [r4, r2, lsl #2]
	ldr r9, [sp, #0]
	ldr r2, [r9, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r0, #10
	lsl r1, r1, #9
	sub r2, r1, #1
	ldr r9, [sp, #0]
	ldr r3, [r9, r2, lsl #2]
	str r3, [r4, r2, lsl #2]
	ldr r9, [sp, #0]
	ldr r2, [r9, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r0, #11
	lsl r1, r1, #9
	sub r2, r1, #1
	ldr r9, [sp, #0]
	ldr r3, [r9, r2, lsl #2]
	str r3, [r4, r2, lsl #2]
	ldr r9, [sp, #0]
	ldr r2, [r9, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r0, #12
	lsl r1, r1, #9
	sub r2, r1, #1
	ldr r9, [sp, #0]
	ldr r3, [r9, r2, lsl #2]
	str r3, [r4, r2, lsl #2]
	ldr r9, [sp, #0]
	ldr r2, [r9, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r0, #13
	lsl r1, r1, #9
	sub r2, r1, #1
	ldr r9, [sp, #0]
	ldr r3, [r9, r2, lsl #2]
	str r3, [r4, r2, lsl #2]
	ldr r9, [sp, #0]
	ldr r2, [r9, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r0, #14
	lsl r1, r1, #9
	sub r2, r1, #1
	ldr r9, [sp, #0]
	ldr r3, [r9, r2, lsl #2]
	str r3, [r4, r2, lsl #2]
	ldr r9, [sp, #0]
	ldr r2, [r9, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r0, #15
	lsl r1, r1, #9
	sub r2, r1, #1
	ldr r9, [sp, #0]
	ldr r3, [r9, r2, lsl #2]
	str r3, [r4, r2, lsl #2]
	ldr r9, [sp, #0]
	ldr r2, [r9, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r0, r0, #16
	lsl r1, r0, #9
	sub r1, r1, #1
	ldr r9, [sp, #0]
	ldr r2, [r9, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	cmp r0, #1024
	bge label296
	b label11
label296:
	mov r0, #0
label13:
	add r1, r4, r0, lsl #2
	ldr r9, [sp, #0]
	add r2, r9, r0, lsl #2
	ldr r9, [sp, #0]
	ldr r3, [r9, r0, lsl #2]
	str r3, [r4, r0, lsl #2]
	movw r5, #63488
	movt r5, #31
	add r3, r1, r5
	add r5, r2, r5
	ldr r5, [r5, #0]
	str r5, [r3, #0]
	ldr r3, [r2, #4]
	str r3, [r1, #4]
	movw r3, #63492
	movt r3, #31
	add r5, r1, r3
	add r3, r2, r3
	ldr r3, [r3, #0]
	str r3, [r5, #0]
	ldr r3, [r2, #8]
	str r3, [r1, #8]
	movw r5, #63496
	movt r5, #31
	add r3, r1, r5
	add r5, r2, r5
	ldr r5, [r5, #0]
	str r5, [r3, #0]
	ldr r3, [r2, #12]
	str r3, [r1, #12]
	movw r3, #63500
	movt r3, #31
	add r5, r1, r3
	add r3, r2, r3
	ldr r3, [r3, #0]
	str r3, [r5, #0]
	ldr r3, [r2, #16]
	str r3, [r1, #16]
	movw r5, #63504
	movt r5, #31
	add r3, r1, r5
	add r5, r2, r5
	ldr r5, [r5, #0]
	str r5, [r3, #0]
	ldr r3, [r2, #20]
	str r3, [r1, #20]
	movw r5, #63508
	movt r5, #31
	add r3, r1, r5
	add r5, r2, r5
	ldr r5, [r5, #0]
	str r5, [r3, #0]
	ldr r3, [r2, #24]
	str r3, [r1, #24]
	movw r5, #63512
	movt r5, #31
	add r3, r1, r5
	add r5, r2, r5
	ldr r5, [r5, #0]
	str r5, [r3, #0]
	ldr r3, [r2, #28]
	str r3, [r1, #28]
	movw r3, #63516
	movt r3, #31
	add r5, r1, r3
	add r3, r2, r3
	ldr r3, [r3, #0]
	str r3, [r5, #0]
	ldr r3, [r2, #32]
	str r3, [r1, #32]
	movw r5, #63520
	movt r5, #31
	add r3, r1, r5
	add r5, r2, r5
	ldr r5, [r5, #0]
	str r5, [r3, #0]
	ldr r3, [r2, #36]
	str r3, [r1, #36]
	movw r5, #63524
	movt r5, #31
	add r3, r1, r5
	add r5, r2, r5
	ldr r5, [r5, #0]
	str r5, [r3, #0]
	ldr r3, [r2, #40]
	str r3, [r1, #40]
	movw r3, #63528
	movt r3, #31
	add r5, r1, r3
	add r3, r2, r3
	ldr r3, [r3, #0]
	str r3, [r5, #0]
	ldr r3, [r2, #44]
	str r3, [r1, #44]
	movw r5, #63532
	movt r5, #31
	add r3, r1, r5
	add r5, r2, r5
	ldr r5, [r5, #0]
	str r5, [r3, #0]
	ldr r3, [r2, #48]
	str r3, [r1, #48]
	movw r3, #63536
	movt r3, #31
	add r5, r1, r3
	add r3, r2, r3
	ldr r3, [r3, #0]
	str r3, [r5, #0]
	ldr r3, [r2, #52]
	str r3, [r1, #52]
	movw r5, #63540
	movt r5, #31
	add r3, r1, r5
	add r5, r2, r5
	ldr r5, [r5, #0]
	str r5, [r3, #0]
	ldr r3, [r2, #56]
	str r3, [r1, #56]
	movw r3, #63544
	movt r3, #31
	add r5, r1, r3
	add r3, r2, r3
	ldr r3, [r3, #0]
	str r3, [r5, #0]
	ldr r3, [r2, #60]
	str r3, [r1, #60]
	movw r3, #63548
	movt r3, #31
	add r1, r1, r3
	add r2, r2, r3
	ldr r2, [r2, #0]
	str r2, [r1, #0]
	add r0, r0, #16
	cmp r0, #512
	bge label15
	b label13
label15:
	mov r0, #59
	bl _sysy_stoptime
	mov r0, #524288
	mov r1, r4
	bl putarray
	ldr r0, [sp, #4]
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
