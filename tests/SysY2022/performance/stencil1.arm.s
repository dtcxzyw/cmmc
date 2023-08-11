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
	@ stack usage: CalleeArg[0] Local[0] RegSpill[84] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, lr }
	movw r6, #:lower16:image_in
	movt r6, #:upper16:image_in
	sub sp, sp, #92
	mov r0, r6
	bl getarray
	str r0, [sp, #32]
	mov r0, #23
	bl _sysy_starttime
	mov r4, #1
	mov r5, #1024
	mov r3, #0
	mov r1, #2048
	add r2, r6, #4096
	str r2, [sp, #52]
	b label2
.p2align 4
label26:
	ldr r8, [sp, #24]
	add r8, r8, #16
	str r8, [sp, #24]
.p2align 4
label8:
	ldr r2, [sp, #0]
	add r8, r2, r1, lsl #2
	str r8, [sp, #8]
	ldr r2, [sp, #52]
	add r8, r2, r1, lsl #2
	str r8, [sp, #16]
	ldr r4, [r8, #0]
	ldr r8, [sp, #8]
	ldr r2, [r8, #-4]
	ldr r6, [r8, #0]
	rsb r2, r2, r4, lsl #3
	sub r3, r2, r6
	ldr r2, [r8, #4]
	ldr r8, [sp, #16]
	sub r3, r3, r2
	ldr r5, [r8, #-4]
	sub r5, r3, r5
	ldr r3, [r8, #4]
	ldr r8, [sp, #24]
	sub r5, r5, r3
	rsb r6, r6, r3, lsl #3
	ldr r7, [r8, #-4]
	sub r5, r5, r7
	ldr r7, [r8, #0]
	sub r9, r5, r7
	ldr r5, [r8, #4]
	sub r8, r9, r5
	usat r9, #8, r8
	add r8, r0, r1, lsl #2
	add r1, r1, #4
	str r8, [sp, #4]
	str r9, [r8, #0]
	ldr r8, [sp, #8]
	sub r9, r6, r2
	ldr r6, [r8, #8]
	sub r8, r9, r6
	sub r9, r8, r4
	ldr r8, [sp, #16]
	ldr r4, [r8, #8]
	rsb r2, r2, r4, lsl #3
	sub r8, r9, r4
	sub r7, r8, r7
	ldr r8, [sp, #24]
	sub r9, r7, r5
	ldr r7, [r8, #8]
	sub r8, r9, r7
	usat r9, #8, r8
	ldr r8, [sp, #4]
	str r9, [r8, #4]
	ldr r8, [sp, #8]
	sub r9, r2, r6
	ldr r2, [r8, #12]
	sub r8, r9, r2
	sub r9, r8, r3
	ldr r8, [sp, #16]
	ldr r3, [r8, #12]
	rsb r6, r6, r3, lsl #3
	sub r8, r9, r3
	sub r5, r8, r5
	ldr r8, [sp, #24]
	sub r9, r5, r7
	ldr r5, [r8, #12]
	sub r8, r9, r5
	usat r9, #8, r8
	ldr r8, [sp, #4]
	str r9, [r8, #8]
	ldr r8, [sp, #8]
	sub r9, r6, r2
	ldr r6, [r8, #16]
	sub r8, r9, r6
	sub r9, r8, r4
	ldr r8, [sp, #16]
	ldr r4, [r8, #16]
	sub r8, r9, r4
	sub r7, r8, r7
	ldr r8, [sp, #24]
	sub r9, r7, r5
	ldr r7, [r8, #16]
	sub r8, r9, r7
	usat r9, #8, r8
	ldr r8, [sp, #4]
	str r9, [r8, #12]
	movw r8, #1021
	cmp r1, r8
	blt label26
	rsb r0, r2, r4, lsl #3
	ldr r8, [sp, #8]
	sub r0, r0, r6
	ldr r1, [r8, #20]
	ldr r8, [sp, #16]
	sub r0, r0, r1
	ldr r2, [r8, #20]
	sub r0, r0, r3
	ldr r8, [sp, #24]
	sub r0, r0, r2
	rsb r2, r6, r2, lsl #3
	sub r0, r0, r5
	sub r3, r0, r7
	sub r1, r2, r1
	ldr r0, [r8, #20]
	ldr r8, [sp, #4]
	sub r3, r3, r0
	usat r3, #8, r3
	str r3, [r8, #16]
	ldr r8, [sp, #8]
	ldr r2, [r8, #24]
	ldr r8, [sp, #16]
	sub r1, r1, r2
	ldr r2, [r8, #24]
	sub r1, r1, r4
	ldr r8, [sp, #24]
	sub r1, r1, r2
	sub r1, r1, r7
	sub r0, r1, r0
	ldr r1, [r8, #24]
	ldr r8, [sp, #4]
	sub r0, r0, r1
	usat r0, #8, r0
	str r0, [r8, #20]
	ldr r4, [sp, #56]
	movw r0, #1023
	cmp r4, r0
	bge label12
	ldr r2, [sp, #52]
	add r2, r2, #4096
	str r2, [sp, #52]
	ldr r1, [sp, #80]
	ldr r3, [sp, #64]
	ldr r5, [sp, #60]
.p2align 4
label2:
	movw r6, #:lower16:image_in
	movt r6, #:upper16:image_in
	movw r7, #:lower16:image_out
	movt r7, #:upper16:image_out
	add r4, r4, #1
	add r2, r6, r3, lsl #2
	add r0, r6, r1, lsl #2
	add r3, r3, #1024
	str r2, [sp, #0]
	add r1, r1, #1024
	add r8, r0, #4
	add r0, r7, r5, lsl #2
	add r5, r5, #1024
	str r5, [sp, #60]
	str r3, [sp, #64]
	str r4, [sp, #56]
	str r1, [sp, #80]
	mov r1, #1
	str r8, [sp, #24]
	b label8
label12:
	movw r6, #:lower16:image_in
	movt r6, #:upper16:image_in
	mov r1, #1024
	mov r0, #0
	str r6, [sp, #36]
	mov r2, r6
	mov r3, r0
	str r1, [sp, #40]
	str r0, [sp, #44]
	str r0, [sp, #48]
.p2align 4
label13:
	movw r7, #:lower16:image_out
	movt r7, #:upper16:image_out
	ldr r0, [sp, #44]
	movw r6, #:lower16:image_in
	movt r6, #:upper16:image_in
	add r3, r7, r0, lsl #2
	add r0, r0, #16384
	str r3, [sp, #76]
	ldr r2, [sp, #36]
	ldr r1, [r2, #0]
	str r1, [r3, #0]
	ldr r1, [sp, #40]
	sub r4, r1, #1
	add r1, r1, #16384
	add r3, r6, r4, lsl #2
	str r3, [sp, #72]
	ldr r5, [r3, #0]
	add r3, r7, r4, lsl #2
	add r4, r2, #4096
	str r3, [sp, #68]
	str r5, [r3, #0]
	ldr r3, [sp, #76]
	ldr r4, [r4, #0]
	add r3, r3, #4096
	str r4, [r3, #0]
	ldr r3, [sp, #72]
	add r3, r3, #4096
	ldr r4, [r3, #0]
	ldr r3, [sp, #68]
	add r3, r3, #4096
	str r4, [r3, #0]
	add r4, r2, #8192
	ldr r3, [sp, #76]
	ldr r4, [r4, #0]
	add r3, r3, #8192
	str r4, [r3, #0]
	ldr r3, [sp, #72]
	add r3, r3, #8192
	ldr r4, [r3, #0]
	ldr r3, [sp, #68]
	add r3, r3, #8192
	str r4, [r3, #0]
	add r4, r2, #12288
	ldr r3, [sp, #76]
	ldr r4, [r4, #0]
	add r3, r3, #12288
	str r4, [r3, #0]
	ldr r3, [sp, #72]
	add r3, r3, #12288
	ldr r4, [r3, #0]
	ldr r3, [sp, #68]
	add r3, r3, #12288
	str r4, [r3, #0]
	add r4, r2, #16384
	ldr r3, [sp, #76]
	ldr r4, [r4, #0]
	add r3, r3, #16384
	str r4, [r3, #0]
	ldr r3, [sp, #72]
	add r3, r3, #16384
	ldr r4, [r3, #0]
	ldr r3, [sp, #68]
	add r3, r3, #16384
	str r4, [r3, #0]
	add r4, r2, #20480
	ldr r3, [sp, #76]
	ldr r4, [r4, #0]
	add r3, r3, #20480
	str r4, [r3, #0]
	ldr r3, [sp, #72]
	add r3, r3, #20480
	ldr r4, [r3, #0]
	ldr r3, [sp, #68]
	add r3, r3, #20480
	str r4, [r3, #0]
	add r4, r2, #24576
	ldr r3, [sp, #76]
	ldr r4, [r4, #0]
	add r3, r3, #24576
	str r4, [r3, #0]
	ldr r3, [sp, #72]
	add r3, r3, #24576
	ldr r4, [r3, #0]
	ldr r3, [sp, #68]
	add r3, r3, #24576
	str r4, [r3, #0]
	add r4, r2, #28672
	ldr r3, [sp, #76]
	ldr r4, [r4, #0]
	add r3, r3, #28672
	str r4, [r3, #0]
	ldr r3, [sp, #72]
	add r3, r3, #28672
	ldr r4, [r3, #0]
	ldr r3, [sp, #68]
	add r3, r3, #28672
	str r4, [r3, #0]
	add r4, r2, #32768
	ldr r3, [sp, #76]
	ldr r4, [r4, #0]
	add r3, r3, #32768
	str r4, [r3, #0]
	ldr r3, [sp, #72]
	add r3, r3, #32768
	ldr r4, [r3, #0]
	ldr r3, [sp, #68]
	add r3, r3, #32768
	str r4, [r3, #0]
	add r4, r2, #36864
	ldr r3, [sp, #76]
	ldr r4, [r4, #0]
	add r3, r3, #36864
	str r4, [r3, #0]
	ldr r3, [sp, #72]
	add r3, r3, #36864
	ldr r4, [r3, #0]
	ldr r3, [sp, #68]
	add r3, r3, #36864
	str r4, [r3, #0]
	add r4, r2, #40960
	ldr r3, [sp, #76]
	ldr r4, [r4, #0]
	add r3, r3, #40960
	str r4, [r3, #0]
	ldr r3, [sp, #72]
	add r3, r3, #40960
	ldr r4, [r3, #0]
	ldr r3, [sp, #68]
	add r3, r3, #40960
	str r4, [r3, #0]
	add r4, r2, #45056
	ldr r3, [sp, #76]
	ldr r4, [r4, #0]
	add r3, r3, #45056
	str r4, [r3, #0]
	ldr r3, [sp, #72]
	add r3, r3, #45056
	ldr r4, [r3, #0]
	ldr r3, [sp, #68]
	add r3, r3, #45056
	str r4, [r3, #0]
	add r4, r2, #49152
	ldr r3, [sp, #76]
	ldr r4, [r4, #0]
	add r3, r3, #49152
	str r4, [r3, #0]
	ldr r3, [sp, #72]
	add r3, r3, #49152
	ldr r4, [r3, #0]
	ldr r3, [sp, #68]
	add r3, r3, #49152
	str r4, [r3, #0]
	add r4, r2, #53248
	ldr r3, [sp, #76]
	ldr r4, [r4, #0]
	add r3, r3, #53248
	str r4, [r3, #0]
	ldr r3, [sp, #72]
	add r3, r3, #53248
	ldr r4, [r3, #0]
	ldr r3, [sp, #68]
	add r3, r3, #53248
	str r4, [r3, #0]
	add r4, r2, #57344
	ldr r3, [sp, #76]
	add r2, r2, #61440
	ldr r4, [r4, #0]
	add r3, r3, #57344
	str r4, [r3, #0]
	ldr r3, [sp, #72]
	add r3, r3, #57344
	ldr r4, [r3, #0]
	ldr r3, [sp, #68]
	add r3, r3, #57344
	str r4, [r3, #0]
	ldr r3, [sp, #76]
	ldr r2, [r2, #0]
	add r3, r3, #61440
	str r2, [r3, #0]
	ldr r3, [sp, #72]
	add r2, r3, #61440
	ldr r2, [r2, #0]
	ldr r3, [sp, #68]
	add r3, r3, #61440
	str r2, [r3, #0]
	ldr r3, [sp, #48]
	add r3, r3, #16
	cmp r3, #1024
	bge label278
	ldr r2, [sp, #36]
	add r2, r2, #65536
	str r2, [sp, #36]
	str r1, [sp, #40]
	str r0, [sp, #44]
	str r3, [sp, #48]
	b label13
label278:
	movw r6, #:lower16:image_in
	movt r6, #:upper16:image_in
	mov r0, #0
	str r6, [sp, #28]
	str r0, [sp, #20]
.p2align 4
label20:
	movw r7, #:lower16:image_out
	movt r7, #:upper16:image_out
	ldr r0, [sp, #20]
	add r0, r7, r0, lsl #2
	str r0, [sp, #12]
	ldr r6, [sp, #28]
	ldr r1, [r6, #0]
	str r1, [r0, #0]
	movw r1, #61440
	movt r1, #63
	add r0, r0, r1
	add r1, r6, r1
	ldr r1, [r1, #0]
	str r1, [r0, #0]
	ldr r1, [r6, #4]
	ldr r0, [sp, #12]
	str r1, [r0, #4]
	movw r1, #61444
	movt r1, #63
	add r0, r0, r1
	add r1, r6, r1
	ldr r1, [r1, #0]
	str r1, [r0, #0]
	ldr r1, [r6, #8]
	ldr r0, [sp, #12]
	str r1, [r0, #8]
	movw r1, #61448
	movt r1, #63
	add r0, r0, r1
	add r1, r6, r1
	ldr r1, [r1, #0]
	str r1, [r0, #0]
	ldr r1, [r6, #12]
	ldr r0, [sp, #12]
	str r1, [r0, #12]
	movw r1, #61452
	movt r1, #63
	add r0, r0, r1
	add r1, r6, r1
	ldr r1, [r1, #0]
	str r1, [r0, #0]
	ldr r1, [r6, #16]
	ldr r0, [sp, #12]
	str r1, [r0, #16]
	movw r1, #61456
	movt r1, #63
	add r0, r0, r1
	add r1, r6, r1
	ldr r1, [r1, #0]
	str r1, [r0, #0]
	ldr r1, [r6, #20]
	ldr r0, [sp, #12]
	str r1, [r0, #20]
	movw r1, #61460
	movt r1, #63
	add r0, r0, r1
	add r1, r6, r1
	ldr r1, [r1, #0]
	str r1, [r0, #0]
	ldr r1, [r6, #24]
	ldr r0, [sp, #12]
	str r1, [r0, #24]
	movw r1, #61464
	movt r1, #63
	add r0, r0, r1
	add r1, r6, r1
	ldr r1, [r1, #0]
	str r1, [r0, #0]
	ldr r1, [r6, #28]
	ldr r0, [sp, #12]
	str r1, [r0, #28]
	movw r1, #61468
	movt r1, #63
	add r0, r0, r1
	add r1, r6, r1
	ldr r1, [r1, #0]
	str r1, [r0, #0]
	ldr r1, [r6, #32]
	ldr r0, [sp, #12]
	str r1, [r0, #32]
	movw r1, #61472
	movt r1, #63
	add r0, r0, r1
	add r1, r6, r1
	ldr r1, [r1, #0]
	str r1, [r0, #0]
	ldr r1, [r6, #36]
	ldr r0, [sp, #12]
	str r1, [r0, #36]
	movw r1, #61476
	movt r1, #63
	add r0, r0, r1
	add r1, r6, r1
	ldr r1, [r1, #0]
	str r1, [r0, #0]
	ldr r1, [r6, #40]
	ldr r0, [sp, #12]
	str r1, [r0, #40]
	movw r1, #61480
	movt r1, #63
	add r0, r0, r1
	add r1, r6, r1
	ldr r1, [r1, #0]
	str r1, [r0, #0]
	ldr r1, [r6, #44]
	ldr r0, [sp, #12]
	str r1, [r0, #44]
	movw r1, #61484
	movt r1, #63
	add r0, r0, r1
	add r1, r6, r1
	ldr r1, [r1, #0]
	str r1, [r0, #0]
	ldr r1, [r6, #48]
	ldr r0, [sp, #12]
	str r1, [r0, #48]
	movw r1, #61488
	movt r1, #63
	add r0, r0, r1
	add r1, r6, r1
	ldr r1, [r1, #0]
	str r1, [r0, #0]
	ldr r1, [r6, #52]
	ldr r0, [sp, #12]
	str r1, [r0, #52]
	movw r1, #61492
	movt r1, #63
	add r0, r0, r1
	add r1, r6, r1
	ldr r1, [r1, #0]
	str r1, [r0, #0]
	ldr r1, [r6, #56]
	ldr r0, [sp, #12]
	str r1, [r0, #56]
	movw r1, #61496
	movt r1, #63
	add r0, r0, r1
	add r1, r6, r1
	ldr r1, [r1, #0]
	str r1, [r0, #0]
	ldr r1, [r6, #60]
	ldr r0, [sp, #12]
	str r1, [r0, #60]
	movw r1, #61500
	movt r1, #63
	add r0, r0, r1
	add r1, r6, r1
	ldr r1, [r1, #0]
	str r1, [r0, #0]
	ldr r0, [sp, #20]
	add r0, r0, #16
	cmp r0, #1024
	bge label24
	add r6, r6, #64
	str r6, [sp, #28]
	str r0, [sp, #20]
	b label20
label24:
	mov r0, #59
	bl _sysy_stoptime
	mov r0, #1048576
	movw r7, #:lower16:image_out
	movt r7, #:upper16:image_out
	mov r1, r7
	bl putarray
	ldr r0, [sp, #32]
	add sp, sp, #92
	pop { r4, r5, r6, r7, r8, r9, pc }
