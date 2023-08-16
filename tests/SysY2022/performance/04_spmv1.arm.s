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
	@ stack usage: CalleeArg[0] Local[0] RegSpill[24] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	sub sp, sp, #28
	bl getarray
	movw r2, #:lower16:y
	movt r2, #:upper16:y
	mov r4, r0
	mov r0, r2
	bl getarray
	movw r2, #:lower16:v
	movt r2, #:upper16:v
	mov r0, r2
	bl getarray
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	mov r0, r2
	bl getarray
	mov r0, #39
	bl _sysy_starttime
	subs r1, r4, #1
	str r1, [sp, #20]
	bgt label323
label239:
	mov r0, #47
	bl _sysy_stoptime
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	ldr r1, [sp, #20]
	mov r0, r1
	mov r1, r2
	bl putarray
	add sp, sp, #28
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label323:
	mov r0, #0
	str r0, [sp, #16]
	b label240
.p2align 4
label698:
	ldr r0, [sp, #16]
	add r0, r0, #1
	cmp r0, #100
	bge label239
.p2align 4
label499:
	str r0, [sp, #16]
.p2align 4
label240:
	movw r0, #:lower16:cmmc_parallel_body_payload_0
	movt r0, #:upper16:cmmc_parallel_body_payload_0
	ldr r1, [sp, #20]
	movw r2, #:lower16:cmmc_parallel_body_0
	movt r2, #:upper16:cmmc_parallel_body_0
	str r1, [r0, #0]
	mov r0, #0
	bl cmmcParallelFor
	mov r4, #0
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	str r0, [sp, #4]
	add r2, r4, #1
	ldr r3, [r0, #0]
	ldr r0, [r0, #4]
	str r2, [sp, #12]
	cmp r3, r0
	blt label245
	ldr r1, [sp, #20]
	cmp r1, r2
	bgt label272
	b label273
.p2align 4
label260:
	add r1, r1, #4
.p2align 4
label257:
	ldr r5, [r1, #0]
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	add r5, r2, r5, lsl #2
	movw r2, #:lower16:v
	movt r2, #:upper16:v
	ldr r6, [r5, #0]
	ldr r2, [r2, r3, lsl #2]
	add r3, r3, #1
	cmp r0, r3
	mla r2, r4, r2, r6
	str r2, [r5, #0]
	bgt label260
	ldr r1, [sp, #20]
	ldr r2, [sp, #12]
	cmp r1, r2
	ble label273
.p2align 4
label272:
	ldr r0, [sp, #4]
	add r0, r0, #4
	str r0, [sp, #4]
	ldr r2, [sp, #12]
	ldr r3, [r0, #0]
	ldr r0, [r0, #4]
	mov r4, r2
	add r2, r2, #1
	cmp r3, r0
	str r2, [sp, #12]
	bge label691
.p2align 4
label245:
	add r5, r3, #3
	sub r1, r0, #3
	cmp r0, r5
	ble label340
	movw r2, #:lower16:v
	movt r2, #:upper16:v
	mov r7, r3
	add r6, r2, r3, lsl #2
	b label247
.p2align 4
label250:
	add r6, r6, #16
.p2align 4
label247:
	movw r2, #:lower16:y
	movt r2, #:upper16:y
	add r8, r2, r7, lsl #2
	add r7, r7, #4
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	ldr r9, [r8, #0]
	cmp r1, r7
	add r9, r2, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r6, #0]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r8, #4]
	add r9, r2, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r6, #4]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r8, #8]
	add r9, r2, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r6, #8]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r8, [r8, #12]
	add r2, r2, r8, lsl #2
	ldr r8, [r2, #0]
	ldr r9, [r6, #12]
	add r8, r8, r9
	str r8, [r2, #0]
	bgt label250
	cmp r0, r7
	ble label686
.p2align 4
label266:
	movw r2, #:lower16:y
	movt r2, #:upper16:y
	add r6, r2, r7, lsl #2
	b label267
.p2align 4
label270:
	add r6, r6, #4
.p2align 4
label267:
	ldr r8, [r6, #0]
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	add r8, r2, r8, lsl #2
	movw r2, #:lower16:v
	movt r2, #:upper16:v
	ldr r9, [r8, #0]
	ldr r2, [r2, r7, lsl #2]
	add r7, r7, #1
	cmp r0, r7
	add r2, r9, r2
	str r2, [r8, #0]
	bgt label270
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	cmp r0, r5
	ldr r2, [r2, r4, lsl #2]
	sub r4, r2, #1
	ble label690
.p2align 4
label261:
	movw r2, #:lower16:v
	movt r2, #:upper16:v
	add r5, r2, r3, lsl #2
.p2align 4
label262:
	movw r2, #:lower16:y
	movt r2, #:upper16:y
	add r6, r2, r3, lsl #2
	add r3, r3, #4
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	ldr r7, [r6, #0]
	cmp r1, r3
	add r7, r2, r7, lsl #2
	ldr r8, [r7, #0]
	ldr r9, [r5, #0]
	mla r8, r4, r9, r8
	str r8, [r7, #0]
	ldr r7, [r6, #4]
	add r7, r2, r7, lsl #2
	ldr r8, [r7, #0]
	ldr r9, [r5, #4]
	mla r8, r4, r9, r8
	str r8, [r7, #0]
	ldr r7, [r6, #8]
	add r7, r2, r7, lsl #2
	ldr r8, [r7, #0]
	ldr r9, [r5, #8]
	mla r8, r4, r9, r8
	str r8, [r7, #0]
	ldr r6, [r6, #12]
	add r2, r2, r6, lsl #2
	ldr r6, [r2, #0]
	ldr r7, [r5, #12]
	mla r6, r4, r7, r6
	str r6, [r2, #0]
	ble label455
	add r5, r5, #16
	b label262
.p2align 4
label455:
	cmp r0, r3
	ble label689
.p2align 4
label256:
	movw r2, #:lower16:y
	movt r2, #:upper16:y
	add r1, r2, r3, lsl #2
	b label257
.p2align 4
label273:
	movw r0, #:lower16:cmmc_parallel_body_payload_1
	movt r0, #:upper16:cmmc_parallel_body_payload_1
	ldr r1, [sp, #20]
	movw r2, #:lower16:cmmc_parallel_body_1
	movt r2, #:upper16:cmmc_parallel_body_1
	str r1, [r0, #0]
	mov r0, #0
	bl cmmcParallelFor
	mov r4, #0
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	str r0, [sp, #0]
	add r2, r4, #1
	ldr r3, [r0, #0]
	ldr r0, [r0, #4]
	str r2, [sp, #8]
	cmp r3, r0
	blt label280
	ldr r1, [sp, #20]
	cmp r1, r2
	bgt label279
	b label278
.p2align 4
label300:
	add r1, r1, #4
.p2align 4
label297:
	ldr r5, [r1, #0]
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	add r5, r2, r5, lsl #2
	movw r2, #:lower16:v
	movt r2, #:upper16:v
	ldr r6, [r5, #0]
	ldr r2, [r2, r3, lsl #2]
	add r3, r3, #1
	cmp r0, r3
	mla r2, r4, r2, r6
	str r2, [r5, #0]
	bgt label300
	ldr r1, [sp, #20]
	ldr r2, [sp, #8]
	cmp r1, r2
	ble label698
.p2align 4
label279:
	ldr r0, [sp, #0]
	add r0, r0, #4
	str r0, [sp, #0]
	ldr r2, [sp, #8]
	ldr r3, [r0, #0]
	ldr r0, [r0, #4]
	mov r4, r2
	add r2, r2, #1
	cmp r3, r0
	str r2, [sp, #8]
	bge label692
.p2align 4
label280:
	add r5, r3, #3
	sub r1, r0, #3
	cmp r0, r5
	ble label505
	movw r2, #:lower16:v
	movt r2, #:upper16:v
	mov r7, r3
	add r6, r2, r3, lsl #2
	b label282
.p2align 4
label285:
	add r6, r6, #16
.p2align 4
label282:
	movw r2, #:lower16:y
	movt r2, #:upper16:y
	add r8, r2, r7, lsl #2
	add r7, r7, #4
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	ldr r9, [r8, #0]
	cmp r1, r7
	add r9, r2, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r6, #0]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r8, #4]
	add r9, r2, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r6, #4]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r8, #8]
	add r9, r2, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r6, #8]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r8, [r8, #12]
	add r2, r2, r8, lsl #2
	ldr r8, [r2, #0]
	ldr r9, [r6, #12]
	add r8, r8, r9
	str r8, [r2, #0]
	bgt label285
	cmp r0, r7
	ble label694
.p2align 4
label288:
	movw r2, #:lower16:y
	movt r2, #:upper16:y
	add r6, r2, r7, lsl #2
	b label289
.p2align 4
label292:
	add r6, r6, #4
.p2align 4
label289:
	ldr r8, [r6, #0]
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	add r8, r2, r8, lsl #2
	movw r2, #:lower16:v
	movt r2, #:upper16:v
	ldr r9, [r8, #0]
	ldr r2, [r2, r7, lsl #2]
	add r7, r7, #1
	cmp r0, r7
	add r2, r9, r2
	str r2, [r8, #0]
	bgt label292
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	cmp r0, r5
	ldr r2, [r2, r4, lsl #2]
	sub r4, r2, #1
	ble label696
.p2align 4
label301:
	movw r2, #:lower16:v
	movt r2, #:upper16:v
	add r5, r2, r3, lsl #2
	b label302
.p2align 4
label305:
	add r5, r5, #16
.p2align 4
label302:
	movw r2, #:lower16:y
	movt r2, #:upper16:y
	add r6, r2, r3, lsl #2
	add r3, r3, #4
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	ldr r7, [r6, #0]
	cmp r1, r3
	add r7, r2, r7, lsl #2
	ldr r8, [r7, #0]
	ldr r9, [r5, #0]
	mla r8, r4, r9, r8
	str r8, [r7, #0]
	ldr r7, [r6, #4]
	add r7, r2, r7, lsl #2
	ldr r8, [r7, #0]
	ldr r9, [r5, #4]
	mla r8, r4, r9, r8
	str r8, [r7, #0]
	ldr r7, [r6, #8]
	add r7, r2, r7, lsl #2
	ldr r8, [r7, #0]
	ldr r9, [r5, #8]
	mla r8, r4, r9, r8
	str r8, [r7, #0]
	ldr r6, [r6, #12]
	add r2, r2, r6, lsl #2
	ldr r6, [r2, #0]
	ldr r7, [r5, #12]
	mla r6, r4, r7, r6
	str r6, [r2, #0]
	bgt label305
	cmp r0, r3
	ble label699
.p2align 4
label296:
	movw r2, #:lower16:y
	movt r2, #:upper16:y
	add r1, r2, r3, lsl #2
	b label297
.p2align 4
label505:
	mov r7, r3
	cmp r0, r3
	bgt label288
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	cmp r0, r5
	ldr r2, [r2, r4, lsl #2]
	sub r4, r2, #1
	bgt label301
	cmp r0, r3
	bgt label296
	ldr r1, [sp, #20]
	ldr r2, [sp, #8]
	cmp r1, r2
	bgt label279
	b label697
.p2align 4
label340:
	mov r7, r3
	cmp r0, r3
	bgt label266
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	cmp r0, r5
	ldr r2, [r2, r4, lsl #2]
	sub r4, r2, #1
	bgt label261
	cmp r0, r3
	bgt label256
	ldr r1, [sp, #20]
	ldr r2, [sp, #12]
	cmp r1, r2
	bgt label272
	b label273
.p2align 4
label694:
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	cmp r0, r5
	ldr r2, [r2, r4, lsl #2]
	sub r4, r2, #1
	bgt label301
	cmp r0, r3
	bgt label296
	ldr r1, [sp, #20]
	ldr r2, [sp, #8]
	cmp r1, r2
	bgt label279
	b label697
.p2align 4
label686:
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	cmp r0, r5
	ldr r2, [r2, r4, lsl #2]
	sub r4, r2, #1
	bgt label261
	cmp r0, r3
	bgt label256
	ldr r1, [sp, #20]
	ldr r2, [sp, #12]
	cmp r1, r2
	bgt label272
	b label273
.p2align 4
label696:
	cmp r0, r3
	bgt label296
	ldr r1, [sp, #20]
	ldr r2, [sp, #8]
	cmp r1, r2
	bgt label279
label697:
	ldr r0, [sp, #16]
	add r0, r0, #1
	cmp r0, #100
	blt label499
	b label239
.p2align 4
label690:
	cmp r0, r3
	bgt label256
	ldr r1, [sp, #20]
	ldr r2, [sp, #12]
	cmp r1, r2
	bgt label272
	b label273
.p2align 4
label699:
	ldr r1, [sp, #20]
	ldr r2, [sp, #8]
	cmp r1, r2
	bgt label279
	ldr r0, [sp, #16]
	add r0, r0, #1
	cmp r0, #100
	blt label499
	b label239
.p2align 4
label689:
	ldr r1, [sp, #20]
	ldr r2, [sp, #12]
	cmp r1, r2
	bgt label272
	b label273
.p2align 4
label692:
	ldr r1, [sp, #20]
	ldr r2, [sp, #8]
	cmp r1, r2
	bgt label279
label278:
	ldr r0, [sp, #16]
	add r0, r0, #1
	cmp r0, #100
	blt label499
	b label239
.p2align 4
label691:
	ldr r1, [sp, #20]
	ldr r2, [sp, #12]
	cmp r1, r2
	bgt label272
	b label273
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
