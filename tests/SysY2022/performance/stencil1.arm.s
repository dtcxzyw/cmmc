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
.p2align 4
.globl main
main:
	push { r4, r5, lr }
	movw r0, #:lower16:image_in
	movt r0, #:upper16:image_in
	sub sp, sp, #4
	bl getarray
	mov r4, r0
	mov r0, #23
	bl _sysy_starttime
	mov r0, #1
	movw r1, #1023
	movw r2, #:lower16:cmmc_parallel_body_0
	movt r2, #:upper16:cmmc_parallel_body_0
	bl cmmcParallelFor
	mov r1, #1024
	mov r0, #0
	movw r2, #:lower16:cmmc_parallel_body_1
	movt r2, #:upper16:cmmc_parallel_body_1
	bl cmmcParallelFor
	mov r1, #1024
	mov r0, #0
	movw r2, #:lower16:cmmc_parallel_body_2
	movt r2, #:upper16:cmmc_parallel_body_2
	bl cmmcParallelFor
	mov r0, #59
	movw r5, #:lower16:image_out
	movt r5, #:upper16:image_out
	bl _sysy_stoptime
	mov r1, r5
	mov r0, #1048576
	bl putarray
	add sp, sp, #4
	mov r0, r4
	pop { r4, r5, pc }
.p2align 4
cmmc_parallel_body_0:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[32] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11 }
	sub sp, sp, #32
	str r1, [sp, #28]
	b label2
.p2align 4
label8:
	rsb r0, r5, r6, lsl #3
	ldr r10, [sp, #12]
	sub r1, r0, r8
	ldr r0, [r10, #20]
	ldr r2, [sp, #20]
	sub r1, r1, r0
	sub r1, r1, r4
	ldr r4, [r2, #20]
	ldr r3, [sp, #16]
	sub r1, r1, r4
	rsb r4, r8, r4, lsl #3
	sub r1, r1, r7
	sub r5, r1, r9
	sub r0, r4, r0
	ldr r1, [r3, #20]
	ldr r10, [sp, #8]
	sub r5, r5, r1
	usat r5, #8, r5
	str r5, [r10, #16]
	ldr r10, [sp, #12]
	ldr r4, [r10, #24]
	ldr r2, [r2, #24]
	sub r0, r0, r4
	sub r0, r0, r6
	sub r0, r0, r2
	sub r0, r0, r9
	sub r0, r0, r1
	ldr r1, [r3, #24]
	ldr r10, [sp, #8]
	sub r0, r0, r1
	usat r0, #8, r0
	str r0, [r10, #20]
	ldr r1, [sp, #28]
	ldr r2, [sp, #24]
	cmp r1, r2
	ble label9
	mov r0, r2
.p2align 4
label2:
	sub r1, r0, #1
	lsl r2, r1, #10
	movw r1, #:lower16:image_in
	movt r1, #:upper16:image_in
	add r2, r1, r2, lsl #2
	str r2, [sp, #4]
	add r2, r0, #1
	lsl r0, r0, #10
	str r2, [sp, #24]
	lsl r2, r2, #10
	add r3, r1, r2, lsl #2
	add r1, r1, r0, lsl #2
	str r3, [sp, #0]
	add r2, r1, #4
	str r2, [sp, #20]
	movw r1, #:lower16:image_out
	movt r1, #:upper16:image_out
	add r0, r1, r0, lsl #2
	mov r1, #1
.p2align 4
label4:
	ldr r2, [sp, #4]
	add r10, r2, r1, lsl #2
	str r10, [sp, #12]
	ldr r2, [sp, #20]
	ldr r6, [r2, #0]
	ldr r3, [r10, #-4]
	ldr r8, [r10, #0]
	ldr r5, [r10, #4]
	ldr r4, [r2, #-4]
	rsb r3, r3, r6, lsl #3
	sub r3, r3, r8
	sub r3, r3, r5
	sub r3, r3, r4
	ldr r4, [r2, #4]
	rsb r8, r8, r4, lsl #3
	sub r7, r3, r4
	ldr r3, [sp, #0]
	add r3, r3, r1, lsl #2
	str r3, [sp, #16]
	ldr r9, [r3, #-4]
	sub r7, r7, r9
	ldr r9, [r3, #0]
	sub r10, r7, r9
	ldr r7, [r3, #4]
	sub r10, r10, r7
	usat r11, #8, r10
	add r10, r0, r1, lsl #2
	add r1, r1, #4
	str r10, [sp, #8]
	str r11, [r10, #0]
	ldr r10, [sp, #12]
	sub r11, r8, r5
	ldr r8, [r10, #8]
	sub r10, r11, r8
	sub r10, r10, r6
	ldr r6, [r2, #8]
	rsb r5, r5, r6, lsl #3
	sub r10, r10, r6
	sub r9, r10, r9
	sub r10, r9, r7
	ldr r9, [r3, #8]
	sub r10, r10, r9
	usat r11, #8, r10
	ldr r10, [sp, #8]
	str r11, [r10, #4]
	ldr r10, [sp, #12]
	sub r11, r5, r8
	ldr r5, [r10, #12]
	sub r10, r11, r5
	sub r10, r10, r4
	ldr r4, [r2, #12]
	rsb r8, r8, r4, lsl #3
	sub r10, r10, r4
	sub r7, r10, r7
	sub r10, r7, r9
	ldr r7, [r3, #12]
	sub r10, r10, r7
	usat r11, #8, r10
	ldr r10, [sp, #8]
	str r11, [r10, #8]
	ldr r10, [sp, #12]
	sub r11, r8, r5
	ldr r8, [r10, #16]
	sub r10, r11, r8
	sub r10, r10, r6
	ldr r6, [r2, #16]
	sub r2, r10, r6
	sub r2, r2, r9
	ldr r9, [r3, #16]
	sub r2, r2, r7
	ldr r10, [sp, #8]
	sub r2, r2, r9
	usat r2, #8, r2
	str r2, [r10, #12]
	movw r2, #1021
	cmp r1, r2
	bge label8
	ldr r2, [sp, #20]
	add r2, r2, #16
	str r2, [sp, #20]
	b label4
label9:
	add sp, sp, #32
	pop { r4, r5, r6, r7, r8, r9, r10, r11 }
	bx lr
.p2align 4
cmmc_parallel_body_1:
	push { r4, r5, r6, r7 }
	movw r2, #:lower16:image_in
	movt r2, #:upper16:image_in
	sub r3, r1, #3
	add r5, r0, #3
	mov r4, r0
	cmp r1, r5
	movw r0, #:lower16:image_out
	movt r0, #:upper16:image_out
	ble label191
.p2align 4
label189:
	lsl r5, r4, #10
	ldr r6, [r2, r5, lsl #2]
	str r6, [r0, r5, lsl #2]
	add r5, r4, #1
	lsl r6, r5, #10
	add r5, r2, r6, lsl #2
	add r6, r0, r6, lsl #2
	ldr r7, [r5, #-4]
	str r7, [r6, #-4]
	ldr r5, [r5, #0]
	str r5, [r6, #0]
	add r5, r4, #2
	lsl r6, r5, #10
	add r5, r2, r6, lsl #2
	add r6, r0, r6, lsl #2
	ldr r7, [r5, #-4]
	str r7, [r6, #-4]
	ldr r5, [r5, #0]
	str r5, [r6, #0]
	add r5, r4, #3
	add r4, r4, #4
	lsl r6, r5, #10
	cmp r3, r4
	add r5, r2, r6, lsl #2
	add r6, r0, r6, lsl #2
	ldr r7, [r5, #-4]
	str r7, [r6, #-4]
	ldr r5, [r5, #0]
	str r5, [r6, #0]
	lsl r5, r4, #10
	sub r5, r5, #1
	ldr r6, [r2, r5, lsl #2]
	str r6, [r0, r5, lsl #2]
	bgt label189
label191:
	cmp r1, r4
	ble label195
label193:
	lsl r3, r4, #10
	add r4, r4, #1
	ldr r5, [r2, r3, lsl #2]
	cmp r1, r4
	str r5, [r0, r3, lsl #2]
	lsl r3, r4, #10
	sub r3, r3, #1
	ldr r5, [r2, r3, lsl #2]
	str r5, [r0, r3, lsl #2]
	bgt label193
label195:
	pop { r4, r5, r6, r7 }
	bx lr
.p2align 4
cmmc_parallel_body_2:
	push { r4, r5, r6, r7, r8, r9, r10 }
	movw r5, #61444
	movt r5, #63
	movw r2, #61440
	movt r2, #63
	movw r6, #:lower16:image_in
	movt r6, #:upper16:image_in
	movw r3, #:lower16:image_out
	movt r3, #:upper16:image_out
	sub r4, r1, #3
	mov r7, r0
	add r0, r0, #3
	cmp r1, r0
	ble label300
	add r0, r6, r7, lsl #2
.p2align 4
label296:
	add r8, r3, r7, lsl #2
	ldr r9, [r0, #0]
	add r10, r0, r2
	add r7, r7, #4
	cmp r4, r7
	str r9, [r8, #0]
	ldr r10, [r10, #0]
	add r9, r8, r2
	str r10, [r9, #0]
	add r10, r0, r5
	ldr r9, [r0, #4]
	str r9, [r8, #4]
	ldr r10, [r10, #0]
	add r9, r8, r5
	str r10, [r9, #0]
	movw r10, #61448
	movt r10, #63
	ldr r9, [r0, #8]
	str r9, [r8, #8]
	add r9, r8, r10
	add r10, r0, r10
	ldr r10, [r10, #0]
	str r10, [r9, #0]
	ldr r9, [r0, #12]
	str r9, [r8, #12]
	movw r9, #61452
	movt r9, #63
	add r8, r8, r9
	add r9, r0, r9
	ldr r9, [r9, #0]
	str r9, [r8, #0]
	ble label300
	add r0, r0, #16
	b label296
label300:
	cmp r1, r7
	ble label307
	add r0, r6, r7, lsl #2
label303:
	add r4, r3, r7, lsl #2
	ldr r5, [r0, #0]
	add r7, r7, #1
	cmp r1, r7
	str r5, [r4, #0]
	add r5, r0, r2
	add r4, r4, r2
	ldr r5, [r5, #0]
	str r5, [r4, #0]
	ble label307
	add r0, r0, #4
	b label303
label307:
	pop { r4, r5, r6, r7, r8, r9, r10 }
	bx lr
