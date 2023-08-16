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
	.zero	8
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
	mov r5, r0
	str r7, [sp, #0]
	ble label483
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	mov r6, #0
	mov r4, r3
	mov r7, r3
	mov r5, #0
	b label467
.p2align 4
label593:
	add r6, r6, #1
	ldr r5, [sp, #4]
	cmp r5, r6
	ble label901
	add r4, r4, #4096
	mov r5, #0
	mov r7, r4
.p2align 4
label467:
	bl getint
	str r0, [r7, #0]
	add r0, r5, #1
	ldr r5, [sp, #4]
	cmp r5, r0
	ble label593
	add r7, r7, #4
	mov r5, r0
	b label467
label483:
	mov r0, #65
	bl _sysy_starttime
	ldr r5, [sp, #4]
	cmp r5, #1
	blt label623
	cmp r5, #0
	bgt label493
label626:
	mov r4, #0
	b label486
label623:
	mov r4, #0
label488:
	ldr r5, [sp, #4]
	cmp r5, #0
	ble label491
	movw r0, #:lower16:cmmc_parallel_body_payload_1
	movt r0, #:upper16:cmmc_parallel_body_payload_1
	movw r2, #:lower16:cmmc_parallel_body_1
	movt r2, #:upper16:cmmc_parallel_body_1
	str r5, [r0, #0]
	mov r1, r5
	mov r0, #0
	bl cmmcParallelFor
	movw r2, #:lower16:cmmc_parallel_body_2
	movt r2, #:upper16:cmmc_parallel_body_2
	movw r0, #:lower16:cmmc_parallel_body_payload_2
	movt r0, #:upper16:cmmc_parallel_body_payload_2
	str r5, [r0, #0]
	mov r1, r5
	mov r0, #0
	bl cmmcParallelFor
label491:
	add r4, r4, #1
	cmp r4, #5
	blt label488
label484:
	ldr r5, [sp, #4]
	cmp r5, #0
	ble label626
	movw r4, #:lower16:cmmc_parallel_body_payload_0
	movt r4, #:upper16:cmmc_parallel_body_payload_0
	mov r0, #0
	movw r2, #:lower16:cmmc_parallel_body_0
	movt r2, #:upper16:cmmc_parallel_body_0
	str r0, [r4, #0]
	str r5, [r4, #4]
	mov r1, r5
	bl cmmcParallelFor
	ldr r4, [r4, #0]
label486:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label493:
	ldr r5, [sp, #4]
	cmp r5, #3
	ble label651
	mov r4, #0
	b label530
label547:
	add r4, r4, #1
	cmp r4, #5
	bge label484
label530:
	ldr r5, [sp, #4]
	movw r0, #:lower16:cmmc_parallel_body_payload_1
	movt r0, #:upper16:cmmc_parallel_body_payload_1
	movw r2, #:lower16:cmmc_parallel_body_1
	movt r2, #:upper16:cmmc_parallel_body_1
	str r5, [r0, #0]
	mov r1, r5
	mov r0, #0
	bl cmmcParallelFor
	mov r2, #0
	movw r5, #:lower16:B
	movt r5, #:upper16:B
	mov r0, r5
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	mov r7, #0
	ldr r5, [sp, #4]
	cmp r5, r7
	bgt label565
	b label538
.p2align 4
label566:
	add r3, r3, #4096
	mov r7, r6
	ldr r5, [sp, #4]
	cmp r5, r6
	ble label910
.p2align 4
label565:
	ldr r1, [r3, r2, lsl #2]
	add r6, r7, #1
	cmp r1, #0
	beq label566
	movw r5, #:lower16:C
	movt r5, #:upper16:C
	add r8, r5, r7, lsl #12
	mov r7, #0
	mov r5, r8
.p2align 4
label568:
	add r9, r0, r7, lsl #2
	ldr r10, [r5, #0]
	ldr r11, [r9, #0]
	mla r10, r1, r11, r10
	str r10, [r5, #0]
	ldr r10, [r5, #4]
	ldr r11, [r9, #4]
	mla r10, r1, r11, r10
	str r10, [r5, #4]
	ldr r10, [r5, #8]
	ldr r11, [r9, #8]
	mla r10, r1, r11, r10
	str r10, [r5, #8]
	ldr r10, [r5, #12]
	ldr r9, [r9, #12]
	mla r9, r1, r9, r10
	str r9, [r5, #12]
	add r9, r7, #4
	ldr r7, [sp, #0]
	cmp r7, r9
	ble label854
	add r5, r5, #16
	mov r7, r9
	b label568
.p2align 4
label854:
	ldr r5, [sp, #4]
	cmp r5, r9
	ble label911
	add r7, r8, r9, lsl #2
	b label574
.p2align 4
label577:
	add r7, r7, #4
.p2align 4
label574:
	ldr r5, [r7, #0]
	ldr r8, [r0, r9, lsl #2]
	add r9, r9, #1
	mla r5, r1, r8, r5
	str r5, [r7, #0]
	ldr r5, [sp, #4]
	cmp r5, r9
	bgt label577
	add r3, r3, #4096
	mov r7, r6
	cmp r5, r6
	bgt label565
	add r2, r2, #1
	cmp r5, r2
	bgt label564
	b label539
.p2align 4
label910:
	add r2, r2, #1
	ldr r5, [sp, #4]
	cmp r5, r2
	ble label539
.p2align 4
label564:
	add r0, r0, #4096
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	ldr r5, [sp, #4]
	mov r7, #0
	cmp r5, r7
	bgt label565
label538:
	add r2, r2, #1
	ldr r5, [sp, #4]
	cmp r5, r2
	bgt label564
	b label539
.p2align 4
label911:
	add r3, r3, #4096
	mov r7, r6
	ldr r5, [sp, #4]
	cmp r5, r6
	bgt label565
	add r2, r2, #1
	cmp r5, r2
	bgt label564
label539:
	ldr r5, [sp, #4]
	movw r0, #:lower16:cmmc_parallel_body_payload_2
	movt r0, #:upper16:cmmc_parallel_body_payload_2
	movw r2, #:lower16:cmmc_parallel_body_2
	movt r2, #:upper16:cmmc_parallel_body_2
	str r5, [r0, #0]
	mov r1, r5
	mov r0, #0
	bl cmmcParallelFor
	mov r2, #0
	movw r5, #:lower16:C
	movt r5, #:upper16:C
	mov r0, r5
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	mov r7, #0
	ldr r5, [sp, #4]
	cmp r5, r7
	bgt label549
	b label546
.p2align 4
label550:
	add r3, r3, #4096
	mov r7, r6
	ldr r5, [sp, #4]
	cmp r5, r6
	ble label906
.p2align 4
label549:
	ldr r1, [r3, r2, lsl #2]
	add r6, r7, #1
	cmp r1, #0
	beq label550
	movw r5, #:lower16:B
	movt r5, #:upper16:B
	add r8, r5, r7, lsl #12
	mov r7, #0
	mov r5, r8
.p2align 4
label552:
	add r9, r0, r7, lsl #2
	ldr r10, [r5, #0]
	ldr r11, [r9, #0]
	mla r10, r1, r11, r10
	str r10, [r5, #0]
	ldr r10, [r5, #4]
	ldr r11, [r9, #4]
	mla r10, r1, r11, r10
	str r10, [r5, #4]
	ldr r10, [r5, #8]
	ldr r11, [r9, #8]
	mla r10, r1, r11, r10
	str r10, [r5, #8]
	ldr r10, [r5, #12]
	ldr r9, [r9, #12]
	mla r9, r1, r9, r10
	str r9, [r5, #12]
	add r9, r7, #4
	ldr r7, [sp, #0]
	cmp r7, r9
	ble label792
	add r5, r5, #16
	mov r7, r9
	b label552
.p2align 4
label792:
	ldr r5, [sp, #4]
	cmp r5, r9
	ble label907
	add r7, r8, r9, lsl #2
.p2align 4
label559:
	ldr r5, [r7, #0]
	ldr r8, [r0, r9, lsl #2]
	add r9, r9, #1
	mla r5, r1, r8, r5
	str r5, [r7, #0]
	ldr r5, [sp, #4]
	cmp r5, r9
	ble label562
	add r7, r7, #4
	b label559
.p2align 4
label562:
	add r3, r3, #4096
	mov r7, r6
	ldr r5, [sp, #4]
	cmp r5, r6
	bgt label549
	add r2, r2, #1
	cmp r5, r2
	bgt label548
	b label547
.p2align 4
label906:
	add r2, r2, #1
	ldr r5, [sp, #4]
	cmp r5, r2
	ble label547
.p2align 4
label548:
	add r0, r0, #4096
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	ldr r5, [sp, #4]
	mov r7, #0
	cmp r5, r7
	bgt label549
label546:
	add r2, r2, #1
	ldr r5, [sp, #4]
	cmp r5, r2
	bgt label548
	b label547
.p2align 4
label907:
	add r3, r3, #4096
	mov r7, r6
	ldr r5, [sp, #4]
	cmp r5, r6
	bgt label549
	add r2, r2, #1
	cmp r5, r2
	bgt label548
	b label547
label901:
	movw r5, #:lower16:B
	movt r5, #:upper16:B
	mov r6, #0
	mov r7, r5
	mov r4, r5
	mov r5, #0
	b label477
.p2align 4
label482:
	add r7, r7, #4
	mov r5, r0
.p2align 4
label477:
	bl getint
	str r0, [r7, #0]
	add r0, r5, #1
	ldr r5, [sp, #4]
	cmp r5, r0
	bgt label482
	add r6, r6, #1
	cmp r5, r6
	ble label483
	add r4, r4, #4096
	mov r5, #0
	mov r7, r4
	b label477
label651:
	mov r4, #0
	b label494
label511:
	add r4, r4, #1
	cmp r4, #5
	bge label484
label494:
	ldr r5, [sp, #4]
	movw r0, #:lower16:cmmc_parallel_body_payload_1
	movt r0, #:upper16:cmmc_parallel_body_payload_1
	movw r2, #:lower16:cmmc_parallel_body_1
	movt r2, #:upper16:cmmc_parallel_body_1
	str r5, [r0, #0]
	mov r1, r5
	mov r0, #0
	bl cmmcParallelFor
	mov r1, #0
	movw r5, #:lower16:B
	movt r5, #:upper16:B
	mov r0, r5
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	mov r7, #0
	mov r2, r3
	ldr r5, [sp, #4]
	cmp r5, r7
	bgt label522
	b label502
.p2align 4
label529:
	add r2, r2, #4096
	mov r7, r3
	ldr r5, [sp, #4]
	cmp r5, r3
	ble label905
.p2align 4
label522:
	ldr r6, [r2, r1, lsl #2]
	add r3, r7, #1
	cmp r6, #0
	beq label529
	movw r5, #:lower16:C
	movt r5, #:upper16:C
	add r7, r5, r7, lsl #12
	mov r5, #0
.p2align 4
label524:
	ldr r8, [r7, #0]
	ldr r9, [r0, r5, lsl #2]
	mla r8, r6, r9, r8
	str r8, [r7, #0]
	add r8, r5, #1
	ldr r5, [sp, #4]
	cmp r5, r8
	ble label527
	add r7, r7, #4
	mov r5, r8
	b label524
.p2align 4
label527:
	add r2, r2, #4096
	mov r7, r3
	ldr r5, [sp, #4]
	cmp r5, r3
	bgt label522
	add r1, r1, #1
	cmp r5, r1
	bgt label521
	b label503
.p2align 4
label905:
	add r1, r1, #1
	ldr r5, [sp, #4]
	cmp r5, r1
	ble label503
.p2align 4
label521:
	add r0, r0, #4096
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	ldr r5, [sp, #4]
	mov r7, #0
	mov r2, r3
	cmp r5, r7
	bgt label522
label502:
	add r1, r1, #1
	ldr r5, [sp, #4]
	cmp r5, r1
	bgt label521
label503:
	ldr r5, [sp, #4]
	movw r0, #:lower16:cmmc_parallel_body_payload_2
	movt r0, #:upper16:cmmc_parallel_body_payload_2
	movw r2, #:lower16:cmmc_parallel_body_2
	movt r2, #:upper16:cmmc_parallel_body_2
	str r5, [r0, #0]
	mov r1, r5
	mov r0, #0
	bl cmmcParallelFor
	mov r1, #0
	movw r5, #:lower16:C
	movt r5, #:upper16:C
	mov r0, r5
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	mov r7, #0
	mov r2, r3
	ldr r5, [sp, #4]
	cmp r5, r7
	bgt label513
	b label510
.p2align 4
label685:
	movw r5, #:lower16:B
	movt r5, #:upper16:B
	add r7, r5, r7, lsl #12
	mov r5, #0
	ldr r8, [r7, #0]
	ldr r9, [r0, r5, lsl #2]
	mla r8, r6, r9, r8
	str r8, [r7, #0]
	add r8, r5, #1
	ldr r5, [sp, #4]
	cmp r5, r8
	ble label915
.p2align 4
label519:
	add r7, r7, #4
	mov r5, r8
	ldr r8, [r7, #0]
	ldr r9, [r0, r5, lsl #2]
	mla r8, r6, r9, r8
	str r8, [r7, #0]
	add r8, r5, #1
	ldr r5, [sp, #4]
	cmp r5, r8
	bgt label519
	add r2, r2, #4096
	mov r7, r3
	cmp r5, r3
	ble label917
.p2align 4
label513:
	ldr r6, [r2, r1, lsl #2]
	add r3, r7, #1
	cmp r6, #0
	bne label685
	add r2, r2, #4096
	mov r7, r3
	ldr r5, [sp, #4]
	cmp r5, r3
	bgt label513
	add r1, r1, #1
	cmp r5, r1
	ble label511
.p2align 4
label512:
	add r0, r0, #4096
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	ldr r5, [sp, #4]
	mov r7, #0
	mov r2, r3
	cmp r5, r7
	bgt label513
label510:
	add r1, r1, #1
	ldr r5, [sp, #4]
	cmp r5, r1
	bgt label512
	b label511
.p2align 4
label915:
	add r2, r2, #4096
	mov r7, r3
	ldr r5, [sp, #4]
	cmp r5, r3
	bgt label513
	add r1, r1, #1
	cmp r5, r1
	bgt label512
	b label511
.p2align 4
label917:
	add r1, r1, #1
	ldr r5, [sp, #4]
	cmp r5, r1
	bgt label512
	b label511
.p2align 4
cmmc_parallel_body_0:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	movw r2, #:lower16:cmmc_parallel_body_payload_0
	movt r2, #:upper16:cmmc_parallel_body_payload_0
	mov r6, r0
	ldr r0, [r2, #4]
	cmp r0, #0
	ble label1037
	movw r4, #:lower16:B
	movt r4, #:upper16:B
	cmp r0, #3
	bgt label968
	add r3, r4, r6, lsl #12
	mov r7, #0
	mov r4, r6
	mov r5, r3
	mov r6, #0
	b label1023
.p2align 4
label1029:
	add r5, r5, #4
.p2align 4
label1023:
	ldr r8, [r5, #0]
	add r7, r7, #1
	cmp r0, r7
	add r6, r6, r8
	bgt label1029
	add r4, r4, #1
	cmp r1, r4
	ble label1201
.p2align 4
label1028:
	add r3, r3, #4096
	mov r7, #0
	ldr r8, [r3, #0]
	mov r5, r3
	add r7, r7, #1
	cmp r0, r7
	add r6, r6, r8
	bgt label1029
	add r4, r4, #1
	cmp r1, r4
	bgt label1028
label1201:
	mov r1, r6
	b label965
label1037:
	mov r1, #0
label965:
	mov r0, r2
	bl cmmcReduceAddI32
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label968:
	sub r3, r0, #3
	sub r5, r0, #18
	cmp r3, #15
	bgt label969
	add r4, r4, r6, lsl #12
	mov r5, r6
	mov r8, #0
	mov r7, #0
	mov r6, r4
	b label1003
.p2align 4
label1179:
	add r5, r5, #1
	cmp r1, r5
	ble label1214
.p2align 4
label1016:
	add r4, r4, #4096
	mov r8, r7
	mov r6, r4
	mov r7, #0
.p2align 4
label1003:
	ldr r9, [r6, #0]
	add r7, r7, #4
	cmp r3, r7
	add r8, r8, r9
	ldr r9, [r6, #4]
	add r8, r8, r9
	ldr r9, [r6, #8]
	add r8, r8, r9
	ldr r9, [r6, #12]
	add r8, r8, r9
	ble label1007
	add r6, r6, #16
	b label1003
.p2align 4
label1007:
	cmp r0, r7
	ble label1170
	add r6, r4, r7, lsl #2
	mov r9, r7
	mov r7, r8
.p2align 4
label1009:
	ldr r8, [r6, #0]
	add r9, r9, #1
	cmp r0, r9
	add r7, r7, r8
	ble label1179
	add r6, r6, #4
	b label1009
label969:
	add r4, r4, r6, lsl #12
	mov r9, #0
	mov r7, r4
	mov r8, #0
	b label974
.p2align 4
label997:
	add r7, r7, #64
.p2align 4
label974:
	ldr r10, [r7, #0]
	add r8, r8, #16
	cmp r5, r8
	add r9, r9, r10
	ldr r10, [r7, #4]
	add r9, r9, r10
	ldr r10, [r7, #8]
	add r9, r9, r10
	ldr r10, [r7, #12]
	add r9, r9, r10
	ldr r10, [r7, #16]
	add r9, r9, r10
	ldr r10, [r7, #20]
	add r9, r9, r10
	ldr r10, [r7, #24]
	add r9, r9, r10
	ldr r10, [r7, #28]
	add r9, r9, r10
	ldr r10, [r7, #32]
	add r9, r9, r10
	ldr r10, [r7, #36]
	add r9, r9, r10
	ldr r10, [r7, #40]
	add r9, r9, r10
	ldr r10, [r7, #44]
	add r9, r9, r10
	ldr r10, [r7, #48]
	add r9, r9, r10
	ldr r10, [r7, #52]
	add r9, r9, r10
	ldr r10, [r7, #56]
	add r9, r9, r10
	ldr r10, [r7, #60]
	add r9, r9, r10
	bgt label997
	cmp r3, r8
	ble label1108
	add r7, r4, r8, lsl #2
.p2align 4
label992:
	ldr r10, [r7, #0]
	add r8, r8, #4
	cmp r3, r8
	add r9, r9, r10
	ldr r10, [r7, #4]
	add r9, r9, r10
	ldr r10, [r7, #8]
	add r9, r9, r10
	ldr r10, [r7, #12]
	add r9, r9, r10
	ble label1146
	add r7, r7, #16
	b label992
.p2align 4
label1146:
	mov r10, r9
	cmp r0, r8
	ble label1112
.p2align 4
label985:
	add r7, r4, r8, lsl #2
	mov r9, r8
	mov r8, r10
	b label986
.p2align 4
label990:
	add r7, r7, #4
.p2align 4
label986:
	ldr r10, [r7, #0]
	add r9, r9, #1
	cmp r0, r9
	add r8, r8, r10
	bgt label990
	add r6, r6, #1
	cmp r1, r6
	ble label1117
.p2align 4
label984:
	add r4, r4, #4096
	mov r9, r8
	mov r7, r4
	mov r8, #0
	b label974
label1112:
	mov r8, r10
	add r6, r6, #1
	cmp r1, r6
	bgt label984
	b label1117
label1108:
	mov r10, r9
	cmp r0, r8
	bgt label985
	b label1112
label1214:
	mov r1, r7
	b label965
label1117:
	mov r1, r8
	b label965
label1170:
	mov r7, r8
	add r5, r5, #1
	cmp r1, r5
	bgt label1016
	b label1214
.p2align 4
cmmc_parallel_body_1:
	push { r4, r5, r6, r7, r8 }
	movw r4, #:lower16:C
	movt r4, #:upper16:C
	mov r2, r1
	mov r6, r0
	movw r0, #:lower16:cmmc_parallel_body_payload_1
	movt r0, #:upper16:cmmc_parallel_body_payload_1
	ldr r1, [r0, #0]
	mov r0, #0
	cmp r1, #3
	bgt label2
	cmp r1, #0
	bgt label44
label42:
	pop { r4, r5, r6, r7, r8 }
	bx lr
label44:
	add r3, r4, r6, lsl #12
	mov r4, r6
	mov r5, r3
	mov r6, r0
	b label48
.p2align 4
label51:
	add r5, r5, #4
.p2align 4
label48:
	add r6, r6, #1
	str r0, [r5, #0]
	cmp r1, r6
	bgt label51
	add r4, r4, #1
	cmp r2, r4
	ble label42
.p2align 4
label53:
	add r3, r3, #4096
	add r6, r0, #1
	str r0, [r3, #0]
	mov r5, r3
	cmp r1, r6
	bgt label51
	add r4, r4, #1
	cmp r2, r4
	bgt label53
	b label42
label2:
	sub r3, r1, #3
	sub r5, r1, #18
	cmp r3, #15
	bgt label3
	add r4, r4, r6, lsl #12
	mov r5, r6
	mov r7, r0
	mov r6, r4
	b label30
.p2align 4
label146:
	add r5, r5, #1
	cmp r2, r5
	ble label42
.p2align 4
label40:
	add r4, r4, #4096
	add r7, r0, #4
	str r0, [r4, #0]
	mov r6, r4
	cmp r3, r7
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #12]
	ble label217
.p2align 4
label41:
	add r6, r6, #16
.p2align 4
label30:
	add r7, r7, #4
	str r0, [r6, #0]
	cmp r3, r7
	str r0, [r6, #4]
	str r0, [r6, #8]
	str r0, [r6, #12]
	bgt label41
	cmp r1, r7
	ble label139
.p2align 4
label34:
	add r6, r4, r7, lsl #2
.p2align 4
label35:
	add r7, r7, #1
	str r0, [r6, #0]
	cmp r1, r7
	ble label146
	add r6, r6, #4
	b label35
label217:
	cmp r1, r7
	bgt label34
.p2align 4
label139:
	add r5, r5, #1
	cmp r2, r5
	bgt label40
	b label42
label3:
	add r4, r4, r6, lsl #12
	mov r7, r4
	mov r8, r0
	b label7
.p2align 4
label123:
	add r6, r6, #1
	cmp r2, r6
	ble label42
.p2align 4
label19:
	add r4, r4, #4096
	mov r8, r0
	mov r7, r4
.p2align 4
label7:
	add r8, r8, #16
	str r0, [r7, #0]
	cmp r5, r8
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
	ble label10
	add r7, r7, #64
	b label7
.p2align 4
label10:
	cmp r3, r8
	ble label95
	add r7, r4, r8, lsl #2
	b label12
.p2align 4
label15:
	add r7, r7, #16
.p2align 4
label12:
	add r8, r8, #4
	str r0, [r7, #0]
	cmp r3, r8
	str r0, [r7, #4]
	str r0, [r7, #8]
	str r0, [r7, #12]
	bgt label15
	cmp r1, r8
	ble label211
.p2align 4
label20:
	add r7, r4, r8, lsl #2
.p2align 4
label21:
	add r8, r8, #1
	str r0, [r7, #0]
	cmp r1, r8
	ble label123
	add r7, r7, #4
	b label21
.p2align 4
label95:
	cmp r1, r8
	bgt label20
	add r6, r6, #1
	cmp r2, r6
	bgt label19
	b label42
label211:
	add r6, r6, #1
	cmp r2, r6
	bgt label19
	b label42
.p2align 4
cmmc_parallel_body_2:
	push { r4, r5, r6, r7, r8 }
	movw r4, #:lower16:B
	movt r4, #:upper16:B
	mov r2, r1
	mov r6, r0
	movw r0, #:lower16:cmmc_parallel_body_payload_2
	movt r0, #:upper16:cmmc_parallel_body_payload_2
	ldr r1, [r0, #0]
	mov r0, #0
	cmp r1, #3
	bgt label232
	cmp r1, #0
	bgt label273
label283:
	pop { r4, r5, r6, r7, r8 }
	bx lr
label232:
	sub r3, r1, #3
	sub r5, r1, #18
	cmp r3, #15
	bgt label249
	add r4, r4, r6, lsl #12
	mov r5, r6
	mov r6, r4
	mov r7, r0
	b label237
.p2align 4
label327:
	add r5, r5, #1
	cmp r2, r5
	ble label283
.p2align 4
label243:
	add r4, r4, #4096
	add r7, r0, #4
	str r0, [r4, #0]
	mov r6, r4
	cmp r3, r7
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #12]
	ble label447
.p2align 4
label240:
	add r6, r6, #16
.p2align 4
label237:
	add r7, r7, #4
	str r0, [r6, #0]
	cmp r3, r7
	str r0, [r6, #4]
	str r0, [r6, #8]
	str r0, [r6, #12]
	bgt label240
	cmp r1, r7
	ble label440
.p2align 4
label244:
	add r6, r4, r7, lsl #2
.p2align 4
label245:
	add r7, r7, #1
	str r0, [r6, #0]
	cmp r1, r7
	ble label327
	add r6, r6, #4
	b label245
label447:
	cmp r1, r7
	bgt label244
.p2align 4
label440:
	add r5, r5, #1
	cmp r2, r5
	bgt label243
	b label283
label273:
	add r3, r4, r6, lsl #12
	mov r4, r6
	mov r5, r3
	mov r6, r0
	b label277
.p2align 4
label280:
	add r5, r5, #4
.p2align 4
label277:
	add r6, r6, #1
	str r0, [r5, #0]
	cmp r1, r6
	bgt label280
	add r4, r4, #1
	cmp r2, r4
	ble label283
.p2align 4
label282:
	add r3, r3, #4096
	add r6, r0, #1
	str r0, [r3, #0]
	mov r5, r3
	cmp r1, r6
	bgt label280
	add r4, r4, #1
	cmp r2, r4
	bgt label282
	b label283
label249:
	add r4, r4, r6, lsl #12
	mov r7, r4
	mov r8, r0
	b label253
.p2align 4
label382:
	add r6, r6, #1
	cmp r2, r6
	ble label283
.p2align 4
label265:
	add r4, r4, #4096
	mov r8, r0
	mov r7, r4
.p2align 4
label253:
	add r8, r8, #16
	str r0, [r7, #0]
	cmp r5, r8
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
	ble label256
	add r7, r7, #64
	b label253
.p2align 4
label256:
	cmp r3, r8
	ble label354
	add r7, r4, r8, lsl #2
	b label258
.p2align 4
label261:
	add r7, r7, #16
.p2align 4
label258:
	add r8, r8, #4
	str r0, [r7, #0]
	cmp r3, r8
	str r0, [r7, #4]
	str r0, [r7, #8]
	str r0, [r7, #12]
	bgt label261
	cmp r1, r8
	ble label443
.p2align 4
label266:
	add r7, r4, r8, lsl #2
.p2align 4
label267:
	add r8, r8, #1
	str r0, [r7, #0]
	cmp r1, r8
	ble label382
	add r7, r7, #4
	b label267
.p2align 4
label354:
	cmp r1, r8
	bgt label266
	add r6, r6, #1
	cmp r2, r6
	bgt label265
	b label283
label443:
	add r6, r6, #1
	cmp r2, r6
	bgt label265
	b label283
