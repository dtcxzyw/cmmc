.arch armv7ve
.data
.bss
.align 8
x:
	.zero	400040
.align 8
y:
	.zero	12000000
.align 8
v:
	.zero	12000000
.align 8
a:
	.zero	400040
.align 8
b:
	.zero	400040
.align 8
cmmc_parallel_body_payload_0:
	.zero	4
.align 8
cmmc_parallel_body_payload_1:
	.zero	4
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[20] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	sub sp, sp, #28
	bl getarray
	movw r7, #:lower16:y
	movt r7, #:upper16:y
	mov r4, r0
	mov r0, r7
	bl getarray
	movw r7, #:lower16:v
	movt r7, #:upper16:v
	mov r0, r7
	bl getarray
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	mov r0, r3
	bl getarray
	mov r0, #39
	bl _sysy_starttime
	mov r0, #0
	subs r1, r4, #1
	str r1, [sp, #16]
	str r0, [sp, #12]
	bgt label243
	b label241
.p2align 4
label699:
	ldr r0, [sp, #12]
	add r0, r0, #1
	cmp r0, #100
	bge label242
.p2align 4
label335:
	str r0, [sp, #12]
	ldr r1, [sp, #16]
	cmp r1, #0
	ble label241
.p2align 4
label243:
	movw r0, #:lower16:cmmc_parallel_body_payload_0
	movt r0, #:upper16:cmmc_parallel_body_payload_0
	ldr r1, [sp, #16]
	movw r2, #:lower16:cmmc_parallel_body_0
	movt r2, #:upper16:cmmc_parallel_body_0
	str r1, [r0, #0]
	mov r0, #0
	bl cmmcParallelFor
	mov r5, #0
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	ldr r4, [r0, #0]
	add r2, r5, #1
	ldr r1, [r0, #4]
	str r2, [sp, #4]
	cmp r4, r1
	blt label247
	ldr r1, [sp, #16]
	cmp r1, r2
	bgt label306
	b label274
.p2align 4
label267:
	add r2, r2, #4
.p2align 4
label264:
	ldr r5, [r2, #0]
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	add r5, r7, r5, lsl #2
	movw r7, #:lower16:v
	movt r7, #:upper16:v
	ldr r6, [r5, #0]
	ldr r7, [r7, r4, lsl #2]
	add r4, r4, #1
	cmp r1, r4
	mla r6, r3, r7, r6
	str r6, [r5, #0]
	bgt label267
	ldr r1, [sp, #16]
	ldr r2, [sp, #4]
	cmp r1, r2
	ble label274
.p2align 4
label306:
	add r0, r0, #4
	ldr r2, [sp, #4]
	ldr r4, [r0, #0]
	ldr r1, [r0, #4]
	mov r5, r2
	add r2, r2, #1
	cmp r4, r1
	str r2, [sp, #4]
	bge label703
.p2align 4
label247:
	add r6, r4, #3
	sub r2, r1, #3
	cmp r1, r6
	ble label349
	movw r7, #:lower16:v
	movt r7, #:upper16:v
	mov r8, r4
	add r3, r7, r4, lsl #2
.p2align 4
label249:
	movw r7, #:lower16:y
	movt r7, #:upper16:y
	add r9, r7, r8, lsl #2
	add r8, r8, #4
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	ldr r10, [r9, #0]
	cmp r2, r8
	add r7, r7, r10, lsl #2
	ldr r10, [r7, #0]
	ldr r11, [r3, #0]
	add r10, r10, r11
	str r10, [r7, #0]
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	ldr r10, [r9, #4]
	add r7, r7, r10, lsl #2
	ldr r10, [r7, #0]
	ldr r11, [r3, #4]
	add r10, r10, r11
	str r10, [r7, #0]
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	ldr r10, [r9, #8]
	add r7, r7, r10, lsl #2
	ldr r10, [r7, #0]
	ldr r11, [r3, #8]
	add r10, r10, r11
	str r10, [r7, #0]
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	ldr r9, [r9, #12]
	add r7, r7, r9, lsl #2
	ldr r9, [r7, #0]
	ldr r10, [r3, #12]
	add r9, r9, r10
	str r9, [r7, #0]
	ble label388
	add r3, r3, #16
	b label249
.p2align 4
label388:
	cmp r1, r8
	ble label687
.p2align 4
label255:
	movw r7, #:lower16:y
	movt r7, #:upper16:y
	add r3, r7, r8, lsl #2
	b label256
.p2align 4
label259:
	add r3, r3, #4
.p2align 4
label256:
	ldr r9, [r3, #0]
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	add r9, r7, r9, lsl #2
	movw r7, #:lower16:v
	movt r7, #:upper16:v
	ldr r10, [r9, #0]
	ldr r7, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r1, r8
	add r7, r10, r7
	str r7, [r9, #0]
	bgt label259
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	cmp r1, r6
	ldr r3, [r3, r5, lsl #2]
	sub r3, r3, #1
	ble label689
.p2align 4
label268:
	movw r7, #:lower16:v
	movt r7, #:upper16:v
	add r5, r7, r4, lsl #2
.p2align 4
label269:
	movw r7, #:lower16:y
	movt r7, #:upper16:y
	add r6, r7, r4, lsl #2
	add r4, r4, #4
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	ldr r8, [r6, #0]
	cmp r2, r4
	add r7, r7, r8, lsl #2
	ldr r8, [r7, #0]
	ldr r9, [r5, #0]
	mla r8, r3, r9, r8
	str r8, [r7, #0]
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	ldr r8, [r6, #4]
	add r7, r7, r8, lsl #2
	ldr r8, [r7, #0]
	ldr r9, [r5, #4]
	mla r8, r3, r9, r8
	str r8, [r7, #0]
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	ldr r8, [r6, #8]
	add r7, r7, r8, lsl #2
	ldr r8, [r7, #0]
	ldr r9, [r5, #8]
	mla r8, r3, r9, r8
	str r8, [r7, #0]
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	ldr r6, [r6, #12]
	add r6, r7, r6, lsl #2
	ldr r7, [r6, #0]
	ldr r8, [r5, #12]
	mla r7, r3, r8, r7
	str r7, [r6, #0]
	ble label480
	add r5, r5, #16
	b label269
.p2align 4
label480:
	cmp r1, r4
	ble label692
.p2align 4
label263:
	movw r7, #:lower16:y
	movt r7, #:upper16:y
	add r2, r7, r4, lsl #2
	b label264
.p2align 4
label274:
	movw r0, #:lower16:cmmc_parallel_body_payload_1
	movt r0, #:upper16:cmmc_parallel_body_payload_1
	ldr r1, [sp, #16]
	movw r2, #:lower16:cmmc_parallel_body_1
	movt r2, #:upper16:cmmc_parallel_body_1
	str r1, [r0, #0]
	mov r0, #0
	bl cmmcParallelFor
	mov r4, #0
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	str r0, [sp, #0]
	add r3, r4, #1
	ldr r2, [r0, #0]
	ldr r0, [r0, #4]
	str r3, [sp, #8]
	cmp r2, r0
	blt label278
	ldr r1, [sp, #16]
	cmp r1, r3
	bgt label305
	b label636
.p2align 4
label298:
	add r1, r1, #4
.p2align 4
label295:
	ldr r5, [r1, #0]
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	movw r7, #:lower16:v
	movt r7, #:upper16:v
	add r3, r3, r5, lsl #2
	ldr r5, [r3, #0]
	ldr r6, [r7, r2, lsl #2]
	add r2, r2, #1
	cmp r0, r2
	mla r5, r4, r6, r5
	str r5, [r3, #0]
	bgt label298
	ldr r1, [sp, #16]
	ldr r3, [sp, #8]
	cmp r1, r3
	ble label699
.p2align 4
label305:
	ldr r0, [sp, #0]
	add r0, r0, #4
	str r0, [sp, #0]
	ldr r3, [sp, #8]
	ldr r2, [r0, #0]
	ldr r0, [r0, #4]
	mov r4, r3
	add r3, r3, #1
	cmp r2, r0
	str r3, [sp, #8]
	bge label702
.p2align 4
label278:
	add r5, r2, #3
	sub r1, r0, #3
	cmp r0, r5
	ble label500
	movw r7, #:lower16:v
	movt r7, #:upper16:v
	mov r8, r2
	add r6, r7, r2, lsl #2
	b label280
.p2align 4
label283:
	add r6, r6, #16
.p2align 4
label280:
	movw r7, #:lower16:y
	movt r7, #:upper16:y
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	add r7, r7, r8, lsl #2
	add r8, r8, #4
	ldr r9, [r7, #0]
	cmp r1, r8
	add r9, r3, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r6, #0]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r7, #4]
	add r9, r3, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r6, #4]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r7, #8]
	add r9, r3, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r6, #8]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r7, [r7, #12]
	add r3, r3, r7, lsl #2
	ldr r7, [r3, #0]
	ldr r9, [r6, #12]
	add r7, r7, r9
	str r7, [r3, #0]
	bgt label283
	cmp r0, r8
	ble label695
.p2align 4
label286:
	movw r7, #:lower16:y
	movt r7, #:upper16:y
	add r6, r7, r8, lsl #2
	b label287
.p2align 4
label290:
	add r6, r6, #4
.p2align 4
label287:
	ldr r7, [r6, #0]
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	add r3, r3, r7, lsl #2
	movw r7, #:lower16:v
	movt r7, #:upper16:v
	ldr r9, [r3, #0]
	ldr r7, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r0, r8
	add r7, r9, r7
	str r7, [r3, #0]
	bgt label290
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	cmp r0, r5
	ldr r3, [r7, r4, lsl #2]
	sub r4, r3, #1
	ble label697
.p2align 4
label299:
	movw r7, #:lower16:v
	movt r7, #:upper16:v
	add r5, r7, r2, lsl #2
.p2align 4
label300:
	movw r7, #:lower16:y
	movt r7, #:upper16:y
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	add r6, r7, r2, lsl #2
	add r2, r2, #4
	ldr r7, [r6, #0]
	cmp r1, r2
	add r7, r3, r7, lsl #2
	ldr r8, [r7, #0]
	ldr r9, [r5, #0]
	mla r8, r4, r9, r8
	str r8, [r7, #0]
	ldr r7, [r6, #4]
	add r7, r3, r7, lsl #2
	ldr r8, [r7, #0]
	ldr r9, [r5, #4]
	mla r8, r4, r9, r8
	str r8, [r7, #0]
	ldr r7, [r6, #8]
	add r7, r3, r7, lsl #2
	ldr r8, [r7, #0]
	ldr r9, [r5, #8]
	mla r8, r4, r9, r8
	str r8, [r7, #0]
	ldr r6, [r6, #12]
	add r3, r3, r6, lsl #2
	ldr r6, [r3, #0]
	ldr r7, [r5, #12]
	mla r6, r4, r7, r6
	str r6, [r3, #0]
	ble label631
	add r5, r5, #16
	b label300
.p2align 4
label631:
	cmp r0, r2
	ble label700
.p2align 4
label294:
	movw r7, #:lower16:y
	movt r7, #:upper16:y
	add r1, r7, r2, lsl #2
	b label295
.p2align 4
label500:
	mov r8, r2
	cmp r0, r2
	bgt label286
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	cmp r0, r5
	ldr r3, [r7, r4, lsl #2]
	sub r4, r3, #1
	bgt label299
	cmp r0, r2
	bgt label294
	ldr r1, [sp, #16]
	ldr r3, [sp, #8]
	cmp r1, r3
	bgt label305
	b label698
.p2align 4
label349:
	mov r8, r4
	cmp r1, r4
	bgt label255
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	cmp r1, r6
	ldr r3, [r3, r5, lsl #2]
	sub r3, r3, #1
	bgt label268
	cmp r1, r4
	bgt label263
	ldr r1, [sp, #16]
	ldr r2, [sp, #4]
	cmp r1, r2
	bgt label306
	b label274
.p2align 4
label695:
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	cmp r0, r5
	ldr r3, [r7, r4, lsl #2]
	sub r4, r3, #1
	bgt label299
	cmp r0, r2
	bgt label294
	ldr r1, [sp, #16]
	ldr r3, [sp, #8]
	cmp r1, r3
	bgt label305
	b label698
.p2align 4
label687:
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	cmp r1, r6
	ldr r3, [r3, r5, lsl #2]
	sub r3, r3, #1
	bgt label268
	cmp r1, r4
	bgt label263
	ldr r1, [sp, #16]
	ldr r2, [sp, #4]
	cmp r1, r2
	bgt label306
	b label274
.p2align 4
label697:
	cmp r0, r2
	bgt label294
	ldr r1, [sp, #16]
	ldr r3, [sp, #8]
	cmp r1, r3
	bgt label305
label698:
	ldr r0, [sp, #12]
	add r0, r0, #1
	cmp r0, #100
	blt label335
	b label242
.p2align 4
label689:
	cmp r1, r4
	bgt label263
	ldr r1, [sp, #16]
	ldr r2, [sp, #4]
	cmp r1, r2
	bgt label306
	b label274
.p2align 4
label700:
	ldr r1, [sp, #16]
	ldr r3, [sp, #8]
	cmp r1, r3
	bgt label305
	ldr r0, [sp, #12]
	add r0, r0, #1
	cmp r0, #100
	blt label335
	b label242
.p2align 4
label692:
	ldr r1, [sp, #16]
	ldr r2, [sp, #4]
	cmp r1, r2
	bgt label306
	b label274
label241:
	ldr r0, [sp, #12]
	add r0, r0, #1
	cmp r0, #100
	blt label335
	b label242
.p2align 4
label702:
	ldr r1, [sp, #16]
	ldr r3, [sp, #8]
	cmp r1, r3
	bgt label305
label636:
	ldr r0, [sp, #12]
	add r0, r0, #1
	cmp r0, #100
	blt label335
	b label242
.p2align 4
label703:
	ldr r1, [sp, #16]
	ldr r2, [sp, #4]
	cmp r1, r2
	bgt label306
	b label274
label242:
	mov r0, #47
	bl _sysy_stoptime
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	ldr r1, [sp, #16]
	mov r0, r1
	mov r1, r7
	bl putarray
	add sp, sp, #28
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
cmmc_parallel_body_0:
	push { r4, r5, r6 }
	movw r4, #:lower16:b
	movt r4, #:upper16:b
	mov r2, r1
	mov r3, r0
	add r0, r0, #3
	cmp r1, r0
	mov r0, #0
	ble label16
	add r1, r3, #15
	sub r5, r2, #3
	sub r6, r2, #18
	cmp r1, r5
	bge label37
	add r1, r4, r3, lsl #2
	b label12
.p2align 4
label15:
	add r1, r1, #64
.p2align 4
label12:
	add r3, r3, #16
	str r0, [r1, #0]
	cmp r6, r3
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #12]
	str r0, [r1, #16]
	str r0, [r1, #20]
	str r0, [r1, #24]
	str r0, [r1, #28]
	str r0, [r1, #32]
	str r0, [r1, #36]
	str r0, [r1, #40]
	str r0, [r1, #44]
	str r0, [r1, #48]
	str r0, [r1, #52]
	str r0, [r1, #56]
	str r0, [r1, #60]
	bgt label15
	mov r1, r3
label3:
	cmp r5, r1
	ble label16
	add r3, r4, r1, lsl #2
	b label7
label10:
	add r3, r3, #16
label7:
	add r1, r1, #4
	str r0, [r3, #0]
	cmp r5, r1
	str r0, [r3, #4]
	str r0, [r3, #8]
	str r0, [r3, #12]
	bgt label10
	mov r3, r1
label16:
	cmp r2, r3
	ble label23
	add r1, r4, r3, lsl #2
	b label19
label22:
	add r1, r1, #4
label19:
	add r3, r3, #1
	str r0, [r1, #0]
	cmp r2, r3
	bgt label22
label23:
	pop { r4, r5, r6 }
	bx lr
label37:
	mov r1, r3
	mov r3, r0
	b label3
.p2align 4
cmmc_parallel_body_1:
	push { r4, r5, r6 }
	movw r4, #:lower16:a
	movt r4, #:upper16:a
	mov r2, r1
	mov r3, r0
	add r0, r0, #3
	cmp r1, r0
	mov r0, #0
	ble label134
	add r1, r3, #15
	sub r5, r2, #3
	sub r6, r2, #18
	cmp r1, r5
	bge label155
	add r1, r4, r3, lsl #2
	b label122
.p2align 4
label125:
	add r1, r1, #64
.p2align 4
label122:
	add r3, r3, #16
	str r0, [r1, #0]
	cmp r6, r3
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #12]
	str r0, [r1, #16]
	str r0, [r1, #20]
	str r0, [r1, #24]
	str r0, [r1, #28]
	str r0, [r1, #32]
	str r0, [r1, #36]
	str r0, [r1, #40]
	str r0, [r1, #44]
	str r0, [r1, #48]
	str r0, [r1, #52]
	str r0, [r1, #56]
	str r0, [r1, #60]
	bgt label125
	mov r1, r3
label126:
	cmp r5, r1
	ble label134
	add r3, r4, r1, lsl #2
label130:
	add r1, r1, #4
	str r0, [r3, #0]
	cmp r5, r1
	str r0, [r3, #4]
	str r0, [r3, #8]
	str r0, [r3, #12]
	ble label192
	add r3, r3, #16
	b label130
label192:
	mov r3, r1
label134:
	cmp r2, r3
	ble label141
	add r1, r4, r3, lsl #2
	b label137
label140:
	add r1, r1, #4
label137:
	add r3, r3, #1
	str r0, [r1, #0]
	cmp r2, r3
	bgt label140
label141:
	pop { r4, r5, r6 }
	bx lr
label155:
	mov r1, r3
	mov r3, r0
	b label126
