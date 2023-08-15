.arch armv7ve
.data
.bss
.align 8
A:
	.zero	4194304
.align 8
B:
	.zero	4194304
.align 8
C:
	.zero	4194304
.align 8
cmmc_parallel_body_payload_0:
	.zero	9
.align 8
cmmc_parallel_body_payload_1:
	.zero	4
.align 8
cmmc_parallel_body_payload_2:
	.zero	4
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[8] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getint
	cmp r0, #0
	sub r7, r0, #3
	str r0, [sp, #4]
	mov r6, r0
	str r7, [sp, #0]
	ble label290
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	mov r5, #0
	mov r4, r3
	mov r7, r3
	mov r6, #0
	b label358
.p2align 4
label373:
	add r7, r7, #4
	mov r6, r0
.p2align 4
label358:
	bl getint
	str r0, [r7, #0]
	add r0, r6, #1
	ldr r6, [sp, #4]
	cmp r6, r0
	bgt label373
	add r5, r5, #1
	cmp r6, r5
	ble label578
	add r4, r4, #4096
	mov r6, #0
	mov r7, r4
	b label358
label290:
	mov r0, #65
	bl _sysy_starttime
	mov r4, #0
	b label291
.p2align 4
label622:
	add r2, r2, #1
	ldr r6, [sp, #4]
	cmp r6, r2
	bgt label328
label482:
	add r4, r4, #1
	cmp r4, #5
	bge label350
.p2align 4
label291:
	ldr r6, [sp, #4]
	cmp r6, #0
	ble label349
	movw r0, #:lower16:cmmc_parallel_body_payload_1
	movt r0, #:upper16:cmmc_parallel_body_payload_1
	movw r2, #:lower16:cmmc_parallel_body_1
	movt r2, #:upper16:cmmc_parallel_body_1
	str r6, [r0, #0]
	mov r1, r6
	mov r0, #0
	bl cmmcParallelFor
	mov r2, #0
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	mov r0, r6
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	mov r7, #0
	ldr r6, [sp, #4]
	cmp r6, r7
	bgt label300
	add r2, r2, #1
	cmp r6, r2
	bgt label348
	b label320
.p2align 4
label317:
	add r7, r7, #4
	mov r6, r8
.p2align 4
label313:
	ldr r8, [r7, #0]
	ldr r9, [r0, r6, lsl #2]
	mla r8, r1, r9, r8
	str r8, [r7, #0]
	add r8, r6, #1
	ldr r6, [sp, #4]
	cmp r6, r8
	bgt label317
	add r3, r3, #4096
	mov r7, r5
	cmp r6, r5
	ble label618
.p2align 4
label300:
	ldr r1, [r3, r2, lsl #2]
	add r5, r7, #1
	cmp r1, #0
	bne label407
	add r3, r3, #4096
	mov r7, r5
	ldr r6, [sp, #4]
	cmp r6, r5
	bgt label300
	add r2, r2, #1
	cmp r6, r2
	ble label320
.p2align 4
label348:
	add r0, r0, #4096
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	ldr r6, [sp, #4]
	mov r7, #0
	cmp r6, r7
	bgt label300
	add r2, r2, #1
	cmp r6, r2
	bgt label348
	b label320
.p2align 4
label407:
	ldr r6, [sp, #4]
	cmp r6, #1
	blt label613
	movw r6, #:lower16:C
	movt r6, #:upper16:C
	add r8, r6, r7, lsl #12
	ldr r6, [sp, #4]
	cmp r6, #3
	ble label417
	mov r6, r8
	mov r7, #0
.p2align 4
label306:
	add r9, r0, r7, lsl #2
	ldr r10, [r6, #0]
	ldr r11, [r9, #0]
	mla r10, r1, r11, r10
	str r10, [r6, #0]
	ldr r10, [r6, #4]
	ldr r11, [r9, #4]
	mla r10, r1, r11, r10
	str r10, [r6, #4]
	ldr r10, [r6, #8]
	ldr r11, [r9, #8]
	mla r10, r1, r11, r10
	str r10, [r6, #8]
	ldr r10, [r6, #12]
	ldr r9, [r9, #12]
	mla r9, r1, r9, r10
	str r9, [r6, #12]
	add r9, r7, #4
	ldr r7, [sp, #0]
	cmp r7, r9
	ble label446
	add r6, r6, #16
	mov r7, r9
	b label306
.p2align 4
label339:
	add r3, r3, #4096
	mov r7, r5
	ldr r6, [sp, #4]
	cmp r6, r5
	ble label622
.p2align 4
label329:
	ldr r1, [r3, r2, lsl #2]
	add r5, r7, #1
	cmp r1, #0
	bne label330
	add r3, r3, #4096
	mov r7, r5
	ldr r6, [sp, #4]
	cmp r6, r5
	bgt label329
	add r2, r2, #1
	cmp r6, r2
	ble label637
.p2align 4
label328:
	add r0, r0, #4096
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	ldr r6, [sp, #4]
	mov r7, #0
	cmp r6, r7
	bgt label329
	add r2, r2, #1
	cmp r6, r2
	bgt label328
	b label482
.p2align 4
label330:
	ldr r6, [sp, #4]
	cmp r6, #1
	blt label494
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	add r8, r6, r7, lsl #12
	ldr r6, [sp, #4]
	cmp r6, #3
	ble label499
	mov r6, r8
	mov r7, #0
	b label342
.p2align 4
label345:
	add r6, r6, #16
	mov r7, r9
.p2align 4
label342:
	add r9, r0, r7, lsl #2
	ldr r10, [r6, #0]
	ldr r11, [r9, #0]
	mla r10, r1, r11, r10
	str r10, [r6, #0]
	ldr r10, [r6, #4]
	ldr r11, [r9, #4]
	mla r10, r1, r11, r10
	str r10, [r6, #4]
	ldr r10, [r6, #8]
	ldr r11, [r9, #8]
	mla r10, r1, r11, r10
	str r10, [r6, #8]
	ldr r10, [r6, #12]
	ldr r9, [r9, #12]
	mla r9, r1, r9, r10
	str r9, [r6, #12]
	add r9, r7, #4
	ldr r7, [sp, #0]
	cmp r7, r9
	bgt label345
	ldr r6, [sp, #4]
	cmp r6, r9
	ble label623
.p2align 4
label335:
	add r7, r8, r9, lsl #2
	mov r6, r9
.p2align 4
label336:
	ldr r8, [r7, #0]
	ldr r9, [r0, r6, lsl #2]
	mla r8, r1, r9, r8
	str r8, [r7, #0]
	add r8, r6, #1
	ldr r6, [sp, #4]
	cmp r6, r8
	ble label339
	add r7, r7, #4
	mov r6, r8
	b label336
.p2align 4
label446:
	ldr r6, [sp, #4]
	cmp r6, r9
	ble label617
.p2align 4
label312:
	add r7, r8, r9, lsl #2
	mov r6, r9
	b label313
.p2align 4
label499:
	mov r9, #0
	ldr r6, [sp, #4]
	cmp r6, r9
	bgt label335
	add r3, r3, #4096
	mov r7, r5
	cmp r6, r5
	bgt label329
	add r2, r2, #1
	cmp r6, r2
	bgt label328
	b label482
.p2align 4
label417:
	mov r9, #0
	ldr r6, [sp, #4]
	cmp r6, r9
	bgt label312
	add r3, r3, #4096
	mov r7, r5
	cmp r6, r5
	bgt label300
	add r2, r2, #1
	cmp r6, r2
	bgt label348
	b label320
.p2align 4
label623:
	add r3, r3, #4096
	mov r7, r5
	ldr r6, [sp, #4]
	cmp r6, r5
	bgt label329
	add r2, r2, #1
	cmp r6, r2
	bgt label328
	b label482
.p2align 4
label617:
	add r3, r3, #4096
	mov r7, r5
	ldr r6, [sp, #4]
	cmp r6, r5
	bgt label300
	add r2, r2, #1
	cmp r6, r2
	bgt label348
.p2align 4
label320:
	ldr r6, [sp, #4]
	movw r0, #:lower16:cmmc_parallel_body_payload_2
	movt r0, #:upper16:cmmc_parallel_body_payload_2
	movw r2, #:lower16:cmmc_parallel_body_2
	movt r2, #:upper16:cmmc_parallel_body_2
	str r6, [r0, #0]
	mov r1, r6
	mov r0, #0
	bl cmmcParallelFor
	mov r2, #0
	movw r6, #:lower16:C
	movt r6, #:upper16:C
	mov r0, r6
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	mov r7, #0
	ldr r6, [sp, #4]
	cmp r6, r7
	bgt label329
	add r2, r2, #1
	cmp r6, r2
	bgt label328
	b label482
.p2align 4
label494:
	add r3, r3, #4096
	mov r7, r5
	ldr r6, [sp, #4]
	cmp r6, r5
	bgt label329
	add r2, r2, #1
	cmp r6, r2
	bgt label328
	b label482
.p2align 4
label613:
	add r3, r3, #4096
	mov r7, r5
	ldr r6, [sp, #4]
	cmp r6, r5
	bgt label300
	add r2, r2, #1
	cmp r6, r2
	bgt label348
	b label320
.p2align 4
label618:
	add r2, r2, #1
	ldr r6, [sp, #4]
	cmp r6, r2
	bgt label348
	b label320
label350:
	ldr r6, [sp, #4]
	cmp r6, #0
	ble label560
	movw r4, #:lower16:cmmc_parallel_body_payload_0
	movt r4, #:upper16:cmmc_parallel_body_payload_0
	mov r0, #0
	mov r1, #1
	movw r2, #:lower16:cmmc_parallel_body_0
	movt r2, #:upper16:cmmc_parallel_body_0
	str r0, [r4, #0]
	str r6, [r4, #4]
	strb r1, [r4, #8]
	mov r1, r6
	bl cmmcParallelFor
	ldr r4, [r4, #0]
label351:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label637:
	add r4, r4, #1
	cmp r4, #5
	blt label291
	b label350
label349:
	add r4, r4, #1
	cmp r4, #5
	blt label291
	b label350
label560:
	mov r4, #0
	b label351
label578:
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	mov r5, #0
	mov r7, r6
	mov r4, r6
	mov r6, #0
	b label367
.p2align 4
label585:
	add r5, r5, #1
	ldr r6, [sp, #4]
	cmp r6, r5
	ble label290
	add r4, r4, #4096
	mov r6, #0
	mov r7, r4
.p2align 4
label367:
	bl getint
	str r0, [r7, #0]
	add r0, r6, #1
	ldr r6, [sp, #4]
	cmp r6, r0
	ble label585
	add r7, r7, #4
	mov r6, r0
	b label367
.p2align 4
cmmc_parallel_body_0:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r10, #0
	movw r5, #:lower16:cmmc_parallel_body_payload_0
	movt r5, #:upper16:cmmc_parallel_body_payload_0
	mov r4, r1
	movw r2, #:lower16:B
	movt r2, #:upper16:B
	mov r7, r0
	sub sp, sp, #4
	ldr r1, [r5, #4]
	add r2, r2, r0, lsl #12
	ldrsb r6, [r5, #8]
	sub r0, r1, #18
	sub r3, r1, #3
	cmp r6, #0
	bne label676
	b label708
.p2align 4
label686:
	add r8, r8, #4
.p2align 4
label682:
	ldr r11, [r8, #0]
	add r10, r10, #1
	cmp r1, r10
	add r9, r9, r11
	bgt label686
	mov r10, r9
	add r7, r7, #1
	cmp r4, r7
	ble label710
.p2align 4
label711:
	add r2, r2, #4096
	cmp r6, #0
	beq label708
.p2align 4
label676:
	cmp r1, #3
	ble label730
	cmp r3, #15
	ble label748
	mov r8, r2
	mov r9, #0
	b label703
.p2align 4
label707:
	add r8, r8, #64
.p2align 4
label703:
	ldr r11, [r8, #0]
	add r9, r9, #16
	cmp r0, r9
	add r10, r10, r11
	ldr r11, [r8, #4]
	add r10, r10, r11
	ldr r11, [r8, #8]
	add r10, r10, r11
	ldr r11, [r8, #12]
	add r10, r10, r11
	ldr r11, [r8, #16]
	add r10, r10, r11
	ldr r11, [r8, #20]
	add r10, r10, r11
	ldr r11, [r8, #24]
	add r10, r10, r11
	ldr r11, [r8, #28]
	add r10, r10, r11
	ldr r11, [r8, #32]
	add r10, r10, r11
	ldr r11, [r8, #36]
	add r10, r10, r11
	ldr r11, [r8, #40]
	add r10, r10, r11
	ldr r11, [r8, #44]
	add r10, r10, r11
	ldr r11, [r8, #48]
	add r10, r10, r11
	ldr r11, [r8, #52]
	add r10, r10, r11
	ldr r11, [r8, #56]
	add r10, r10, r11
	ldr r11, [r8, #60]
	add r10, r10, r11
	bgt label707
	mov r8, r9
	mov r11, r10
	cmp r3, r9
	ble label841
.p2align 4
label696:
	add r9, r2, r8, lsl #2
	b label697
.p2align 4
label701:
	add r9, r9, #16
.p2align 4
label697:
	ldr r10, [r9, #0]
	add r8, r8, #4
	cmp r3, r8
	add r10, r11, r10
	ldr r11, [r9, #4]
	add r10, r10, r11
	ldr r11, [r9, #8]
	add r10, r10, r11
	ldr r11, [r9, #12]
	add r11, r10, r11
	bgt label701
	mov r10, r8
	mov r9, r11
	cmp r1, r8
	ble label840
.p2align 4
label681:
	add r8, r2, r10, lsl #2
	b label682
label730:
	mov r9, r10
	mov r10, #0
	mov r11, r10
	cmp r1, r10
	bgt label681
	add r7, r7, #1
	cmp r4, r7
	bgt label711
	b label710
label748:
	mov r8, #0
	mov r11, r10
	mov r9, r8
	mov r10, r8
	cmp r3, r8
	bgt label696
	mov r11, r8
	cmp r1, r8
	bgt label681
	add r7, r7, #1
	cmp r4, r7
	bgt label711
	b label710
.p2align 4
label841:
	mov r11, r10
	mov r10, r9
	cmp r1, r9
	mov r9, r11
	bgt label681
	mov r10, r11
	add r7, r7, #1
	cmp r4, r7
	bgt label711
	b label710
label708:
	add r7, r7, #1
	cmp r4, r7
	bgt label711
label710:
	mov r0, r5
	mov r1, r10
	bl cmmcReduceAddI32
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label840:
	mov r10, r11
	add r7, r7, #1
	cmp r4, r7
	bgt label711
	b label710
.p2align 4
cmmc_parallel_body_1:
	push { r4, r5, r6, r7, r8, r9 }
	mov r6, r0
	movw r3, #:lower16:C
	movt r3, #:upper16:C
	mov r5, r1
	add r3, r3, r0, lsl #12
	movw r1, #:lower16:cmmc_parallel_body_payload_1
	movt r1, #:upper16:cmmc_parallel_body_payload_1
	mov r0, #0
	ldr r2, [r1, #0]
	sub r1, r2, #18
	sub r4, r2, #3
	cmp r2, #3
	bgt label15
	mov r8, r0
	cmp r2, r0
	bgt label10
	b label7
.p2align 4
label14:
	add r7, r7, #4
.p2align 4
label11:
	add r8, r8, #1
	str r0, [r7, #0]
	cmp r2, r8
	bgt label14
	add r6, r6, #1
	cmp r5, r6
	ble label8
.p2align 4
label9:
	add r3, r3, #4096
	cmp r2, #3
	ble label129
.p2align 4
label15:
	cmp r4, #15
	ble label64
	mov r7, r3
	mov r8, r0
	b label25
.p2align 4
label28:
	add r7, r7, #64
.p2align 4
label25:
	add r8, r8, #16
	str r0, [r7, #0]
	cmp r1, r8
	str r0, [r7, #4]
	str r0, [r7, #8]
	str r0, [r7, #12]
	str r0, [r7, #16]
	str r0, [r7, #20]
	str r0, [r7, #24]
	str r0, [r7, #28]
	str r0, [r7, #32]
	str r0, [r7, #36]
	str r0, [r7, #40]
	str r0, [r7, #44]
	str r0, [r7, #48]
	str r0, [r7, #52]
	str r0, [r7, #56]
	str r0, [r7, #60]
	bgt label28
	mov r9, r8
	cmp r4, r8
	ble label133
.p2align 4
label19:
	add r7, r3, r9, lsl #2
	mov r8, r9
	b label20
.p2align 4
label23:
	add r7, r7, #16
.p2align 4
label20:
	add r8, r8, #4
	str r0, [r7, #0]
	cmp r4, r8
	str r0, [r7, #4]
	str r0, [r7, #8]
	str r0, [r7, #12]
	bgt label23
	cmp r2, r8
	ble label132
.p2align 4
label10:
	add r7, r3, r8, lsl #2
	b label11
label64:
	mov r9, r0
	mov r8, r0
	cmp r4, r0
	bgt label19
	cmp r2, r0
	bgt label10
	add r6, r6, #1
	cmp r5, r6
	bgt label9
	b label8
.p2align 4
label133:
	cmp r2, r8
	bgt label10
	add r6, r6, #1
	cmp r5, r6
	bgt label9
	b label8
label129:
	mov r8, r0
	cmp r2, r0
	bgt label10
label7:
	add r6, r6, #1
	cmp r5, r6
	bgt label9
label8:
	pop { r4, r5, r6, r7, r8, r9 }
	bx lr
.p2align 4
label132:
	add r6, r6, #1
	cmp r5, r6
	bgt label9
	b label8
.p2align 4
cmmc_parallel_body_2:
	push { r4, r5, r6, r7, r8, r9 }
	movw r3, #:lower16:B
	movt r3, #:upper16:B
	mov r6, r0
	mov r5, r1
	add r3, r3, r0, lsl #12
	movw r1, #:lower16:cmmc_parallel_body_payload_2
	movt r1, #:upper16:cmmc_parallel_body_payload_2
	mov r0, #0
	ldr r2, [r1, #0]
	sub r1, r2, #18
	sub r4, r2, #3
	cmp r2, #3
	bgt label148
	mov r8, r0
	cmp r2, r0
	bgt label167
	b label164
.p2align 4
label156:
	add r7, r7, #16
.p2align 4
label153:
	add r8, r8, #4
	str r0, [r7, #0]
	cmp r4, r8
	str r0, [r7, #4]
	str r0, [r7, #8]
	str r0, [r7, #12]
	bgt label156
	cmp r2, r8
	ble label274
.p2align 4
label167:
	add r7, r3, r8, lsl #2
.p2align 4
label168:
	add r8, r8, #1
	str r0, [r7, #0]
	cmp r2, r8
	ble label242
	add r7, r7, #4
	b label168
.p2align 4
label242:
	add r6, r6, #1
	cmp r5, r6
	ble label165
.p2align 4
label166:
	add r3, r3, #4096
	cmp r2, #3
	ble label276
.p2align 4
label148:
	cmp r4, #15
	ble label189
	mov r7, r3
	mov r8, r0
	b label158
.p2align 4
label161:
	add r7, r7, #64
.p2align 4
label158:
	add r8, r8, #16
	str r0, [r7, #0]
	cmp r1, r8
	str r0, [r7, #4]
	str r0, [r7, #8]
	str r0, [r7, #12]
	str r0, [r7, #16]
	str r0, [r7, #20]
	str r0, [r7, #24]
	str r0, [r7, #28]
	str r0, [r7, #32]
	str r0, [r7, #36]
	str r0, [r7, #40]
	str r0, [r7, #44]
	str r0, [r7, #48]
	str r0, [r7, #52]
	str r0, [r7, #56]
	str r0, [r7, #60]
	bgt label161
	mov r9, r8
	cmp r4, r8
	ble label275
.p2align 4
label152:
	add r7, r3, r9, lsl #2
	mov r8, r9
	b label153
label189:
	mov r9, r0
	mov r8, r0
	cmp r4, r0
	bgt label152
	cmp r2, r0
	bgt label167
	add r6, r6, #1
	cmp r5, r6
	bgt label166
	b label165
.p2align 4
label275:
	cmp r2, r8
	bgt label167
	add r6, r6, #1
	cmp r5, r6
	bgt label166
	b label165
label276:
	mov r8, r0
	cmp r2, r0
	bgt label167
label164:
	add r6, r6, #1
	cmp r5, r6
	bgt label166
label165:
	pop { r4, r5, r6, r7, r8, r9 }
	bx lr
.p2align 4
label274:
	add r6, r6, #1
	cmp r5, r6
	bgt label166
	b label165
