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
	movw r5, #:lower16:image_in
	sub sp, sp, #52
	movt r5, #:upper16:image_in
	str r5, [sp, #36]
	mov r0, r5
	bl getarray
	str r0, [sp, #40]
	mov r0, #23
	bl _sysy_starttime
	mov r10, #1
	movw r7, #:lower16:image_out
	movt r7, #:upper16:image_out
	str r7, [sp, #32]
	str r10, [sp, #28]
	movw r0, #1023
	cmp r10, r0
	bge label24
.p2align 4
label4:
	ldr r10, [sp, #28]
	movw r0, #1023
	movw r2, #3071
	mov r6, #2048
	mov r3, #1024
	mov r9, #0
	mov r4, #1
	add r1, r10, #3072
	sub r11, r10, #1
	add r2, r10, r2
	str r11, [sp, #24]
	add r11, r10, #1024
	str r11, [sp, #8]
	add r11, r10, r0
	movw r0, #2047
	str r11, [sp, #0]
	add r0, r10, r0
	add r11, r10, #2048
	str r11, [sp, #4]
	str r6, [sp, #20]
	str r3, [sp, #16]
	str r9, [sp, #12]
.p2align 4
label5:
	ldr r10, [sp, #28]
	add r4, r4, #4
	ldr r3, [sp, #16]
	ldr r5, [sp, #36]
	add r8, r10, r3
	ldr r6, [r5, r8, lsl #2]
	ldr r11, [sp, #24]
	ldr r9, [sp, #12]
	add r7, r11, r9
	ldr r7, [r5, r7, lsl #2]
	rsb r6, r7, r6, lsl #3
	add r7, r10, r9
	add r7, r5, r7, lsl #2
	ldr r9, [r7, #0]
	ldr r7, [r7, #4]
	sub r6, r6, r9
	sub r6, r6, r7
	add r7, r11, r3
	add r7, r5, r7, lsl #2
	ldr r9, [r7, #0]
	ldr r7, [r7, #8]
	sub r6, r6, r9
	sub r7, r6, r7
	ldr r6, [sp, #20]
	add r9, r11, r6
	ldr r9, [r5, r9, lsl #2]
	sub r7, r7, r9
	add r9, r10, r6
	add r9, r5, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r9, [r9, #4]
	sub r7, r7, r10
	sub r7, r7, r9
	usat r9, #8, r7
	ldr r7, [sp, #32]
	str r9, [r7, r8, lsl #2]
	ldr r11, [sp, #8]
	add r8, r11, r3
	ldr r10, [r5, r8, lsl #2]
	ldr r9, [sp, #12]
	ldr r11, [sp, #0]
	add r9, r11, r9
	ldr r9, [r5, r9, lsl #2]
	rsb r10, r9, r10, lsl #3
	ldr r9, [sp, #12]
	ldr r11, [sp, #8]
	add r9, r11, r9
	add r9, r5, r9, lsl #2
	ldr r11, [r9, #0]
	ldr r9, [r9, #4]
	sub r10, r10, r11
	ldr r11, [sp, #0]
	sub r9, r10, r9
	add r10, r11, r3
	add r10, r5, r10, lsl #2
	ldr r11, [r10, #0]
	ldr r10, [r10, #8]
	sub r9, r9, r11
	ldr r11, [sp, #0]
	sub r9, r9, r10
	add r10, r11, r6
	ldr r10, [r5, r10, lsl #2]
	ldr r11, [sp, #8]
	sub r9, r9, r10
	add r10, r11, r6
	add r10, r5, r10, lsl #2
	ldr r11, [r10, #0]
	ldr r10, [r10, #4]
	sub r9, r9, r11
	sub r9, r9, r10
	usat r9, #8, r9
	str r9, [r7, r8, lsl #2]
	ldr r11, [sp, #4]
	add r8, r11, r3
	ldr r10, [r5, r8, lsl #2]
	ldr r9, [sp, #12]
	add r9, r0, r9
	ldr r9, [r5, r9, lsl #2]
	rsb r10, r9, r10, lsl #3
	ldr r9, [sp, #12]
	add r9, r11, r9
	add r9, r5, r9, lsl #2
	ldr r11, [r9, #0]
	ldr r9, [r9, #4]
	sub r10, r10, r11
	sub r9, r10, r9
	add r10, r0, r3
	add r10, r5, r10, lsl #2
	ldr r11, [r10, #0]
	ldr r10, [r10, #8]
	sub r9, r9, r11
	sub r9, r9, r10
	add r10, r0, r6
	ldr r10, [r5, r10, lsl #2]
	ldr r11, [sp, #4]
	sub r9, r9, r10
	add r10, r11, r6
	add r10, r5, r10, lsl #2
	ldr r11, [r10, #0]
	ldr r10, [r10, #4]
	sub r9, r9, r11
	sub r9, r9, r10
	usat r9, #8, r9
	str r9, [r7, r8, lsl #2]
	add r8, r1, r3
	ldr r10, [r5, r8, lsl #2]
	ldr r9, [sp, #12]
	add r9, r2, r9
	ldr r9, [r5, r9, lsl #2]
	rsb r10, r9, r10, lsl #3
	ldr r9, [sp, #12]
	add r9, r1, r9
	add r9, r5, r9, lsl #2
	ldr r11, [r9, #0]
	ldr r9, [r9, #4]
	sub r10, r10, r11
	sub r9, r10, r9
	add r10, r2, r3
	add r3, r3, #4096
	add r10, r5, r10, lsl #2
	ldr r11, [r10, #0]
	ldr r10, [r10, #8]
	sub r9, r9, r11
	sub r9, r9, r10
	add r10, r2, r6
	ldr r10, [r5, r10, lsl #2]
	sub r9, r9, r10
	add r10, r1, r6
	add r6, r6, #4096
	add r5, r5, r10, lsl #2
	ldr r10, [r5, #0]
	ldr r5, [r5, #4]
	sub r9, r9, r10
	sub r5, r9, r5
	usat r5, #8, r5
	str r5, [r7, r8, lsl #2]
	movw r5, #1021
	ldr r9, [sp, #12]
	cmp r4, r5
	add r9, r9, #4096
	bge label10
	str r6, [sp, #20]
	str r3, [sp, #16]
	str r9, [sp, #12]
	b label5
.p2align 4
label24:
	mov r0, #1024
	mov r1, #0
	mov r2, r1
	b label11
.p2align 4
label10:
	ldr r10, [sp, #28]
	ldr r5, [sp, #36]
	add r0, r10, r3
	ldr r1, [r5, r0, lsl #2]
	ldr r11, [sp, #24]
	add r2, r11, r9
	ldr r2, [r5, r2, lsl #2]
	rsb r1, r2, r1, lsl #3
	add r2, r10, r9
	add r2, r5, r2, lsl #2
	ldr r4, [r2, #0]
	ldr r2, [r2, #4]
	sub r1, r1, r4
	sub r1, r1, r2
	add r2, r11, r3
	add r2, r5, r2, lsl #2
	ldr r3, [r2, #0]
	ldr r2, [r2, #8]
	sub r1, r1, r3
	sub r1, r1, r2
	add r2, r11, r6
	ldr r2, [r5, r2, lsl #2]
	sub r1, r1, r2
	add r2, r10, r6
	add r2, r5, r2, lsl #2
	ldr r3, [r2, #0]
	ldr r2, [r2, #4]
	ldr r7, [sp, #32]
	sub r1, r1, r3
	sub r1, r1, r2
	usat r1, #8, r1
	str r1, [r7, r0, lsl #2]
	ldr r3, [sp, #16]
	add r1, r10, #5120
	add r10, r10, #1
	add r0, r3, r1
	add r3, r3, #5120
	ldr r2, [r5, r0, lsl #2]
	add r3, r11, r3
	ldr r9, [sp, #12]
	add r3, r5, r3, lsl #2
	add r4, r9, #5120
	add r4, r11, r4
	ldr r4, [r5, r4, lsl #2]
	rsb r2, r4, r2, lsl #3
	add r4, r9, r1
	add r4, r5, r4, lsl #2
	ldr r6, [r4, #0]
	ldr r4, [r4, #4]
	sub r2, r2, r6
	sub r2, r2, r4
	ldr r4, [r3, #0]
	ldr r3, [r3, #8]
	ldr r6, [sp, #20]
	sub r2, r2, r4
	sub r2, r2, r3
	add r1, r6, r1
	add r3, r6, #5120
	add r1, r5, r1, lsl #2
	add r3, r11, r3
	ldr r3, [r5, r3, lsl #2]
	sub r2, r2, r3
	ldr r3, [r1, #0]
	ldr r1, [r1, #4]
	sub r2, r2, r3
	sub r1, r2, r1
	usat r1, #8, r1
	str r1, [r7, r0, lsl #2]
	str r10, [sp, #28]
	movw r0, #1023
	cmp r10, r0
	blt label4
	b label24
.p2align 4
label11:
	ldr r5, [sp, #36]
	add r2, r2, #16
	cmp r2, #1024
	ldr r3, [r5, r1, lsl #2]
	ldr r7, [sp, #32]
	str r3, [r7, r1, lsl #2]
	sub r3, r0, #1
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	add r3, r1, #1024
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	movw r3, #1023
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
	add r3, r1, #3072
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	movw r3, #3071
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
	add r3, r1, #5120
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	movw r3, #5119
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
	add r3, r1, #7168
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	movw r3, #7167
	add r3, r0, r3
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	add r3, r1, #8192
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	movw r3, #8191
	add r3, r0, r3
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	add r3, r1, #9216
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	movw r3, #9215
	add r3, r0, r3
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	add r3, r1, #10240
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	movw r3, #10239
	add r3, r0, r3
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	add r3, r1, #11264
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	movw r3, #11263
	add r3, r0, r3
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	add r3, r1, #12288
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	movw r3, #12287
	add r3, r0, r3
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	add r3, r1, #13312
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	movw r3, #13311
	add r3, r0, r3
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	add r3, r1, #14336
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	movw r3, #14335
	add r3, r0, r3
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	add r3, r1, #15360
	add r1, r1, #16384
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	movw r3, #15359
	add r3, r0, r3
	add r0, r0, #16384
	ldr r4, [r5, r3, lsl #2]
	str r4, [r7, r3, lsl #2]
	blt label11
	mov r1, #0
.p2align 4
label15:
	ldr r5, [sp, #36]
	add r0, r5, r1, lsl #2
	ldr r3, [r0, #0]
	ldr r7, [sp, #32]
	add r2, r7, r1, lsl #2
	add r1, r1, #16
	str r3, [r2, #0]
	cmp r1, #1024
	movw r3, #61440
	movt r3, #63
	add r4, r0, r3
	add r3, r2, r3
	ldr r4, [r4, #0]
	str r4, [r3, #0]
	ldr r3, [r0, #4]
	str r3, [r2, #4]
	movw r3, #61444
	movt r3, #63
	add r4, r0, r3
	add r3, r2, r3
	ldr r4, [r4, #0]
	str r4, [r3, #0]
	ldr r3, [r0, #8]
	str r3, [r2, #8]
	movw r3, #61448
	movt r3, #63
	add r4, r0, r3
	add r3, r2, r3
	ldr r4, [r4, #0]
	str r4, [r3, #0]
	ldr r3, [r0, #12]
	str r3, [r2, #12]
	movw r3, #61452
	movt r3, #63
	add r4, r0, r3
	add r3, r2, r3
	ldr r4, [r4, #0]
	str r4, [r3, #0]
	ldr r3, [r0, #16]
	str r3, [r2, #16]
	movw r3, #61456
	movt r3, #63
	add r4, r0, r3
	add r3, r2, r3
	ldr r4, [r4, #0]
	str r4, [r3, #0]
	ldr r3, [r0, #20]
	str r3, [r2, #20]
	movw r3, #61460
	movt r3, #63
	add r4, r0, r3
	add r3, r2, r3
	ldr r4, [r4, #0]
	str r4, [r3, #0]
	ldr r3, [r0, #24]
	str r3, [r2, #24]
	movw r3, #61464
	movt r3, #63
	add r4, r0, r3
	add r3, r2, r3
	ldr r4, [r4, #0]
	str r4, [r3, #0]
	ldr r3, [r0, #28]
	str r3, [r2, #28]
	movw r3, #61468
	movt r3, #63
	add r4, r0, r3
	add r3, r2, r3
	ldr r4, [r4, #0]
	str r4, [r3, #0]
	ldr r3, [r0, #32]
	str r3, [r2, #32]
	movw r3, #61472
	movt r3, #63
	add r4, r0, r3
	add r3, r2, r3
	ldr r4, [r4, #0]
	str r4, [r3, #0]
	ldr r3, [r0, #36]
	str r3, [r2, #36]
	movw r3, #61476
	movt r3, #63
	add r4, r0, r3
	add r3, r2, r3
	ldr r4, [r4, #0]
	str r4, [r3, #0]
	ldr r3, [r0, #40]
	str r3, [r2, #40]
	movw r3, #61480
	movt r3, #63
	add r4, r0, r3
	add r3, r2, r3
	ldr r4, [r4, #0]
	str r4, [r3, #0]
	ldr r3, [r0, #44]
	str r3, [r2, #44]
	movw r3, #61484
	movt r3, #63
	add r4, r0, r3
	add r3, r2, r3
	ldr r4, [r4, #0]
	str r4, [r3, #0]
	ldr r3, [r0, #48]
	str r3, [r2, #48]
	movw r3, #61488
	movt r3, #63
	add r4, r0, r3
	add r3, r2, r3
	ldr r4, [r4, #0]
	str r4, [r3, #0]
	ldr r3, [r0, #52]
	str r3, [r2, #52]
	movw r3, #61492
	movt r3, #63
	add r4, r0, r3
	add r3, r2, r3
	ldr r4, [r4, #0]
	str r4, [r3, #0]
	ldr r3, [r0, #56]
	str r3, [r2, #56]
	movw r3, #61496
	movt r3, #63
	add r4, r0, r3
	add r3, r2, r3
	ldr r4, [r4, #0]
	str r4, [r3, #0]
	ldr r3, [r0, #60]
	str r3, [r2, #60]
	movw r3, #61500
	movt r3, #63
	add r2, r2, r3
	add r0, r0, r3
	ldr r0, [r0, #0]
	str r0, [r2, #0]
	blt label15
	mov r0, #59
	bl _sysy_stoptime
	mov r0, #1048576
	ldr r7, [sp, #32]
	mov r1, r7
	bl putarray
	ldr r0, [sp, #40]
	add sp, sp, #52
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
