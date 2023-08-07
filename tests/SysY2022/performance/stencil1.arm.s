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
	movw r0, #1023
	cmp r9, r0
	blt label4
label30:
	movw r5, #:lower16:image_in
	movt r5, #:upper16:image_in
	mov r1, #1024
	mov r2, #0
	mov r0, r5
	mov r3, r2
	b label12
.p2align 4
label4:
	ldr r9, [sp, #24]
	movw r0, #1023
	movw r1, #2047
	movw r3, #3071
	mov r6, #2048
	mov r11, #1024
	mov r4, #1
	add r2, r9, #3072
	add r8, r9, #1024
	sub r10, r9, #1
	add r0, r9, r0
	add r1, r9, r1
	add r3, r9, r3
	str r10, [sp, #20]
	str r8, [sp, #4]
	add r8, r9, #2048
	str r8, [sp, #0]
	str r6, [sp, #16]
	str r11, [sp, #12]
	mov r11, #0
	str r11, [sp, #8]
.p2align 4
label5:
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
	add r6, r6, #4096
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
	add r7, r11, #4096
	ldr r11, [sp, #12]
	add r11, r11, #4096
	bge label10
	str r6, [sp, #16]
	str r11, [sp, #12]
	str r7, [sp, #8]
	mov r11, r7
	b label5
.p2align 4
label10:
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
	add r1, r9, #5120
	add r9, r9, #1
	add r0, r11, r1
	ldr r2, [r5, r0, lsl #2]
	ldr r11, [sp, #8]
	add r3, r11, #5120
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
	add r3, r11, #5120
	add r3, r10, r3
	add r3, r5, r3, lsl #2
	ldr r4, [r3, #0]
	ldr r3, [r3, #8]
	ldr r6, [sp, #16]
	sub r2, r2, r4
	sub r2, r2, r3
	add r1, r6, r1
	add r3, r6, #5120
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
	movw r0, #1023
	str r9, [sp, #24]
	cmp r9, r0
	blt label4
	b label30
.p2align 4
label12:
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
	add r4, r2, #1024
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	movw r4, #1023
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
	add r4, r2, #3072
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	movw r4, #3071
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
	add r4, r2, #5120
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	movw r4, #5119
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
	add r4, r2, #7168
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	movw r4, #7167
	add r4, r1, r4
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	add r4, r2, #8192
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	movw r4, #8191
	add r4, r1, r4
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	add r4, r2, #9216
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	movw r4, #9215
	add r4, r1, r4
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	add r4, r2, #10240
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	movw r4, #10239
	add r4, r1, r4
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	add r4, r2, #11264
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	movw r4, #11263
	add r4, r1, r4
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	add r4, r2, #12288
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	movw r4, #12287
	add r4, r1, r4
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	add r4, r2, #13312
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	movw r4, #13311
	add r4, r1, r4
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	add r4, r2, #14336
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	movw r4, #14335
	add r4, r1, r4
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	add r4, r2, #15360
	add r2, r2, #16384
	ldr r6, [r5, r4, lsl #2]
	str r6, [r7, r4, lsl #2]
	movw r4, #15359
	add r4, r1, r4
	add r1, r1, #16384
	ldr r5, [r5, r4, lsl #2]
	str r5, [r7, r4, lsl #2]
	bge label504
	add r0, r0, #65536
	b label12
label504:
	movw r5, #:lower16:image_in
	movt r5, #:upper16:image_in
	mov r1, #0
.p2align 4
label19:
	ldr r2, [r5, #0]
	movw r7, #:lower16:image_out
	movt r7, #:upper16:image_out
	add r0, r7, r1, lsl #2
	add r1, r1, #16
	cmp r1, #1024
	str r2, [r0, #0]
	movw r2, #61440
	movt r2, #63
	add r3, r5, r2
	add r2, r0, r2
	ldr r3, [r3, #0]
	str r3, [r2, #0]
	ldr r2, [r5, #4]
	str r2, [r0, #4]
	movw r2, #61444
	movt r2, #63
	add r3, r5, r2
	add r2, r0, r2
	ldr r3, [r3, #0]
	str r3, [r2, #0]
	ldr r2, [r5, #8]
	str r2, [r0, #8]
	movw r2, #61448
	movt r2, #63
	add r3, r5, r2
	add r2, r0, r2
	ldr r3, [r3, #0]
	str r3, [r2, #0]
	ldr r2, [r5, #12]
	str r2, [r0, #12]
	movw r2, #61452
	movt r2, #63
	add r3, r5, r2
	add r2, r0, r2
	ldr r3, [r3, #0]
	str r3, [r2, #0]
	ldr r2, [r5, #16]
	str r2, [r0, #16]
	movw r2, #61456
	movt r2, #63
	add r3, r5, r2
	add r2, r0, r2
	ldr r3, [r3, #0]
	str r3, [r2, #0]
	ldr r2, [r5, #20]
	str r2, [r0, #20]
	movw r2, #61460
	movt r2, #63
	add r3, r5, r2
	add r2, r0, r2
	ldr r3, [r3, #0]
	str r3, [r2, #0]
	ldr r2, [r5, #24]
	str r2, [r0, #24]
	movw r2, #61464
	movt r2, #63
	add r3, r5, r2
	add r2, r0, r2
	ldr r3, [r3, #0]
	str r3, [r2, #0]
	ldr r2, [r5, #28]
	str r2, [r0, #28]
	movw r2, #61468
	movt r2, #63
	add r3, r5, r2
	add r2, r0, r2
	ldr r3, [r3, #0]
	str r3, [r2, #0]
	ldr r2, [r5, #32]
	str r2, [r0, #32]
	movw r2, #61472
	movt r2, #63
	add r3, r5, r2
	add r2, r0, r2
	ldr r3, [r3, #0]
	str r3, [r2, #0]
	ldr r2, [r5, #36]
	str r2, [r0, #36]
	movw r2, #61476
	movt r2, #63
	add r3, r5, r2
	add r2, r0, r2
	ldr r3, [r3, #0]
	str r3, [r2, #0]
	ldr r2, [r5, #40]
	str r2, [r0, #40]
	movw r2, #61480
	movt r2, #63
	add r3, r5, r2
	add r2, r0, r2
	ldr r3, [r3, #0]
	str r3, [r2, #0]
	ldr r2, [r5, #44]
	str r2, [r0, #44]
	movw r2, #61484
	movt r2, #63
	add r3, r5, r2
	add r2, r0, r2
	ldr r3, [r3, #0]
	str r3, [r2, #0]
	ldr r2, [r5, #48]
	str r2, [r0, #48]
	movw r2, #61488
	movt r2, #63
	add r3, r5, r2
	add r2, r0, r2
	ldr r3, [r3, #0]
	str r3, [r2, #0]
	ldr r2, [r5, #52]
	str r2, [r0, #52]
	movw r2, #61492
	movt r2, #63
	add r3, r5, r2
	add r2, r0, r2
	ldr r3, [r3, #0]
	str r3, [r2, #0]
	ldr r2, [r5, #56]
	str r2, [r0, #56]
	movw r2, #61496
	movt r2, #63
	add r3, r5, r2
	add r2, r0, r2
	ldr r3, [r3, #0]
	str r3, [r2, #0]
	ldr r2, [r5, #60]
	str r2, [r0, #60]
	movw r2, #61500
	movt r2, #63
	add r0, r0, r2
	add r3, r5, r2
	ldr r3, [r3, #0]
	str r3, [r0, #0]
	bge label23
	add r5, r5, #64
	b label19
label23:
	mov r0, #59
	bl _sysy_stoptime
	mov r0, #1048576
	movw r7, #:lower16:image_out
	movt r7, #:upper16:image_out
	mov r1, r7
	bl putarray
	ldr r0, [sp, #28]
	add sp, sp, #36
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
