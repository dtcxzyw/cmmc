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
	movw r4, #:lower16:image_in
	movt r4, #:upper16:image_in
	sub sp, sp, #76
	mov r0, r4
	bl getarray
	str r0, [sp, #16]
	mov r0, #23
	bl _sysy_starttime
	mov r2, #1
	mov r1, #1024
	str r4, [sp, #28]
	mov r0, #2048
	str r1, [sp, #36]
	b label2
.p2align 4
label11:
	ldr r1, [sp, #36]
	movw r4, #:lower16:image_in
	movt r4, #:upper16:image_in
	add r5, r1, r9
	add r1, r4, r5, lsl #2
	ldr r2, [r1, #0]
	ldr r0, [sp, #28]
	add r0, r0, r9, lsl #2
	ldr r3, [r0, #-4]
	ldr r6, [r0, #0]
	ldr r7, [r0, #4]
	rsb r2, r3, r2, lsl #3
	ldr r3, [r1, #-4]
	sub r2, r2, r6
	ldr r1, [r1, #4]
	sub r2, r2, r7
	sub r2, r2, r3
	sub r2, r2, r1
	ldr r1, [sp, #44]
	add r3, r1, r9, lsl #2
	ldr r1, [r3, #-4]
	ldr r8, [r3, #0]
	ldr r10, [r3, #4]
	sub r1, r2, r1
	movw r2, #:lower16:image_out
	movt r2, #:upper16:image_out
	sub r1, r1, r8
	sub r1, r1, r10
	usat r1, #8, r1
	str r1, [r2, r5, lsl #2]
	ldr r1, [sp, #36]
	ldr r9, [sp, #40]
	add r1, r1, #5
	add r1, r9, r1
	add r4, r4, r1, lsl #2
	ldr r5, [r4, #0]
	ldr r0, [r0, #8]
	rsb r5, r6, r5, lsl #3
	sub r5, r5, r7
	sub r0, r5, r0
	ldr r5, [r4, #-4]
	ldr r4, [r4, #4]
	ldr r3, [r3, #8]
	sub r0, r0, r5
	sub r0, r0, r4
	sub r0, r0, r8
	sub r0, r0, r10
	sub r0, r0, r3
	usat r0, #8, r0
	str r0, [r2, r1, lsl #2]
	ldr r2, [sp, #24]
	movw r0, #1023
	cmp r2, r0
	bge label216
	ldr r0, [sp, #28]
	add r0, r0, #4096
	str r0, [sp, #28]
	ldr r0, [sp, #32]
	ldr r1, [sp, #20]
	str r1, [sp, #36]
.p2align 4
label2:
	movw r4, #:lower16:image_in
	movt r4, #:upper16:image_in
	add r2, r2, #1
	mov r9, #1
	add r1, r4, r0, lsl #2
	add r0, r0, #1024
	str r1, [sp, #44]
	ldr r1, [sp, #36]
	add r1, r1, #1024
	str r1, [sp, #20]
	str r2, [sp, #24]
	str r0, [sp, #32]
	ldr r1, [sp, #36]
	add r8, r1, #2
	add r7, r1, #1
	str r7, [sp, #0]
	str r8, [sp, #4]
	add r8, r1, #3
	str r8, [sp, #8]
	ldr r0, [sp, #28]
	str r9, [sp, #40]
	add r0, r0, #4
.p2align 4
label7:
	ldr r1, [sp, #36]
	movw r4, #:lower16:image_in
	movt r4, #:upper16:image_in
	ldr r9, [sp, #40]
	add r7, r1, r9
	add r1, r4, r7, lsl #2
	ldr r2, [r1, #0]
	ldr r3, [r0, #-4]
	ldr r6, [r0, #0]
	rsb r2, r3, r2, lsl #3
	ldr r3, [r0, #4]
	sub r2, r2, r6
	ldr r5, [r1, #-4]
	ldr r1, [r1, #4]
	sub r2, r2, r3
	sub r2, r2, r5
	sub r2, r2, r1
	ldr r1, [sp, #44]
	add r1, r1, r9, lsl #2
	ldr r5, [r1, #-4]
	ldr r8, [r1, #0]
	sub r2, r2, r5
	ldr r5, [r1, #4]
	sub r2, r2, r8
	sub r2, r2, r5
	usat r9, #8, r2
	movw r2, #:lower16:image_out
	movt r2, #:upper16:image_out
	str r9, [r2, r7, lsl #2]
	ldr r9, [sp, #40]
	ldr r7, [sp, #0]
	add r9, r7, r9
	add r7, r4, r9, lsl #2
	ldr r10, [r7, #0]
	rsb r6, r6, r10, lsl #3
	sub r10, r6, r3
	ldr r6, [r0, #8]
	ldr r11, [r7, #-4]
	ldr r7, [r7, #4]
	sub r10, r10, r6
	sub r10, r10, r11
	sub r7, r10, r7
	sub r7, r7, r8
	sub r8, r7, r5
	ldr r7, [r1, #8]
	sub r8, r8, r7
	usat r8, #8, r8
	str r8, [r2, r9, lsl #2]
	ldr r9, [sp, #40]
	ldr r8, [sp, #4]
	add r8, r8, r9
	add r9, r4, r8, lsl #2
	ldr r10, [r9, #0]
	rsb r3, r3, r10, lsl #3
	sub r10, r3, r6
	ldr r3, [r0, #12]
	ldr r11, [r9, #-4]
	ldr r9, [r9, #4]
	sub r10, r10, r3
	sub r10, r10, r11
	sub r9, r10, r9
	sub r5, r9, r5
	sub r9, r5, r7
	ldr r5, [r1, #12]
	sub r9, r9, r5
	usat r9, #8, r9
	str r9, [r2, r8, lsl #2]
	ldr r9, [sp, #40]
	ldr r8, [sp, #8]
	add r8, r8, r9
	add r4, r4, r8, lsl #2
	ldr r9, [r4, #0]
	rsb r6, r6, r9, lsl #3
	sub r3, r6, r3
	ldr r6, [r0, #16]
	sub r3, r3, r6
	ldr r6, [r4, #-4]
	ldr r4, [r4, #4]
	ldr r1, [r1, #16]
	sub r3, r3, r6
	sub r3, r3, r4
	sub r3, r3, r7
	sub r3, r3, r5
	sub r1, r3, r1
	usat r1, #8, r1
	str r1, [r2, r8, lsl #2]
	movw r1, #1021
	ldr r9, [sp, #40]
	add r9, r9, #4
	cmp r9, r1
	bge label11
	add r0, r0, #16
	str r9, [sp, #40]
	b label7
label216:
	movw r4, #:lower16:image_in
	movt r4, #:upper16:image_in
	mov r0, #1024
	str r4, [sp, #48]
	str r0, [sp, #52]
	mov r0, #0
	mov r1, r0
	str r0, [sp, #60]
	str r0, [sp, #64]
.p2align 4
label14:
	ldr r4, [sp, #48]
	movw r2, #:lower16:image_out
	movt r2, #:upper16:image_out
	ldr r1, [r4, #0]
	movw r4, #:lower16:image_in
	movt r4, #:upper16:image_in
	ldr r0, [sp, #60]
	str r1, [r2, r0, lsl #2]
	ldr r0, [sp, #52]
	sub r0, r0, #1
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	ldr r0, [sp, #60]
	add r0, r0, #1024
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	ldr r0, [sp, #52]
	movw r1, #1023
	add r0, r0, r1
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	ldr r0, [sp, #60]
	add r0, r0, #2048
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	ldr r0, [sp, #52]
	movw r1, #2047
	add r0, r0, r1
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	ldr r0, [sp, #60]
	add r0, r0, #3072
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	ldr r0, [sp, #52]
	movw r1, #3071
	add r0, r0, r1
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	ldr r0, [sp, #60]
	add r0, r0, #4096
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	ldr r0, [sp, #52]
	movw r1, #4095
	add r0, r0, r1
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	ldr r0, [sp, #60]
	add r0, r0, #5120
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	ldr r0, [sp, #52]
	movw r1, #5119
	add r0, r0, r1
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	ldr r0, [sp, #60]
	add r0, r0, #6144
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	ldr r0, [sp, #52]
	movw r1, #6143
	add r0, r0, r1
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	ldr r0, [sp, #60]
	add r0, r0, #7168
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	ldr r0, [sp, #52]
	movw r1, #7167
	add r0, r0, r1
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	ldr r0, [sp, #60]
	add r0, r0, #8192
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	ldr r0, [sp, #52]
	movw r1, #8191
	add r0, r0, r1
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	ldr r0, [sp, #60]
	add r0, r0, #9216
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	ldr r0, [sp, #52]
	movw r1, #9215
	add r0, r0, r1
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	ldr r0, [sp, #60]
	add r0, r0, #10240
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	ldr r0, [sp, #52]
	movw r1, #10239
	add r0, r0, r1
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	ldr r0, [sp, #60]
	add r0, r0, #11264
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	ldr r0, [sp, #52]
	movw r1, #11263
	add r0, r0, r1
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	ldr r0, [sp, #60]
	add r0, r0, #12288
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	ldr r0, [sp, #52]
	movw r1, #12287
	add r0, r0, r1
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	ldr r0, [sp, #60]
	add r0, r0, #13312
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	ldr r0, [sp, #52]
	movw r1, #13311
	add r0, r0, r1
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	ldr r0, [sp, #60]
	add r0, r0, #14336
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	ldr r0, [sp, #52]
	movw r1, #14335
	add r0, r0, r1
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	ldr r0, [sp, #60]
	add r0, r0, #15360
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	ldr r0, [sp, #52]
	movw r1, #15359
	add r0, r0, r1
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, r0, lsl #2]
	ldr r1, [sp, #64]
	ldr r0, [sp, #60]
	add r1, r1, #16
	add r2, r0, #16384
	cmp r1, #1024
	ldr r0, [sp, #52]
	add r0, r0, #16384
	bge label19
	ldr r4, [sp, #48]
	add r4, r4, #65536
	str r4, [sp, #48]
	str r0, [sp, #52]
	str r2, [sp, #60]
	mov r0, r2
	str r1, [sp, #64]
	b label14
label19:
	movw r4, #:lower16:image_in
	movt r4, #:upper16:image_in
	mov r0, #0
	str r4, [sp, #56]
	str r0, [sp, #12]
.p2align 4
label20:
	ldr r4, [sp, #56]
	movw r2, #:lower16:image_out
	movt r2, #:upper16:image_out
	ldr r1, [r4, #0]
	ldr r0, [sp, #12]
	add r0, r2, r0, lsl #2
	str r1, [r0, #0]
	movw r1, #61440
	movt r1, #63
	add r2, r4, r1
	add r1, r0, r1
	ldr r2, [r2, #0]
	str r2, [r1, #0]
	ldr r1, [r4, #4]
	str r1, [r0, #4]
	movw r1, #61444
	movt r1, #63
	add r2, r4, r1
	add r1, r0, r1
	ldr r2, [r2, #0]
	str r2, [r1, #0]
	ldr r1, [r4, #8]
	str r1, [r0, #8]
	movw r1, #61448
	movt r1, #63
	add r2, r4, r1
	add r1, r0, r1
	ldr r2, [r2, #0]
	str r2, [r1, #0]
	ldr r1, [r4, #12]
	str r1, [r0, #12]
	movw r1, #61452
	movt r1, #63
	add r2, r4, r1
	add r1, r0, r1
	ldr r2, [r2, #0]
	str r2, [r1, #0]
	ldr r1, [r4, #16]
	str r1, [r0, #16]
	movw r1, #61456
	movt r1, #63
	add r2, r4, r1
	add r1, r0, r1
	ldr r2, [r2, #0]
	str r2, [r1, #0]
	ldr r1, [r4, #20]
	str r1, [r0, #20]
	movw r1, #61460
	movt r1, #63
	add r2, r4, r1
	add r1, r0, r1
	ldr r2, [r2, #0]
	str r2, [r1, #0]
	ldr r1, [r4, #24]
	str r1, [r0, #24]
	movw r1, #61464
	movt r1, #63
	add r2, r4, r1
	add r1, r0, r1
	ldr r2, [r2, #0]
	str r2, [r1, #0]
	ldr r1, [r4, #28]
	str r1, [r0, #28]
	movw r1, #61468
	movt r1, #63
	add r2, r4, r1
	add r1, r0, r1
	ldr r2, [r2, #0]
	str r2, [r1, #0]
	ldr r1, [r4, #32]
	str r1, [r0, #32]
	movw r1, #61472
	movt r1, #63
	add r2, r4, r1
	add r1, r0, r1
	ldr r2, [r2, #0]
	str r2, [r1, #0]
	ldr r1, [r4, #36]
	str r1, [r0, #36]
	movw r1, #61476
	movt r1, #63
	add r2, r4, r1
	add r1, r0, r1
	ldr r2, [r2, #0]
	str r2, [r1, #0]
	ldr r1, [r4, #40]
	str r1, [r0, #40]
	movw r1, #61480
	movt r1, #63
	add r2, r4, r1
	add r1, r0, r1
	ldr r2, [r2, #0]
	str r2, [r1, #0]
	ldr r1, [r4, #44]
	str r1, [r0, #44]
	movw r1, #61484
	movt r1, #63
	add r2, r4, r1
	add r1, r0, r1
	ldr r2, [r2, #0]
	str r2, [r1, #0]
	ldr r1, [r4, #48]
	str r1, [r0, #48]
	movw r1, #61488
	movt r1, #63
	add r2, r4, r1
	add r1, r0, r1
	ldr r2, [r2, #0]
	str r2, [r1, #0]
	ldr r1, [r4, #52]
	str r1, [r0, #52]
	movw r1, #61492
	movt r1, #63
	add r2, r4, r1
	add r1, r0, r1
	ldr r2, [r2, #0]
	str r2, [r1, #0]
	ldr r1, [r4, #56]
	str r1, [r0, #56]
	movw r1, #61496
	movt r1, #63
	add r2, r4, r1
	add r1, r0, r1
	ldr r2, [r2, #0]
	str r2, [r1, #0]
	ldr r1, [r4, #60]
	str r1, [r0, #60]
	movw r1, #61500
	movt r1, #63
	add r0, r0, r1
	add r2, r4, r1
	ldr r2, [r2, #0]
	str r2, [r0, #0]
	ldr r0, [sp, #12]
	add r0, r0, #16
	cmp r0, #1024
	bge label24
	add r4, r4, #64
	str r4, [sp, #56]
	str r0, [sp, #12]
	b label20
label24:
	mov r0, #59
	bl _sysy_stoptime
	mov r0, #1048576
	movw r2, #:lower16:image_out
	movt r2, #:upper16:image_out
	mov r1, r2
	bl putarray
	ldr r0, [sp, #16]
	add sp, sp, #76
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
