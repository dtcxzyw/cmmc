.arch armv7ve
.data
.align 4
A:
	.zero	4194304
.align 4
B:
	.zero	4194304
.align 4
C:
	.zero	4194304
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #28
	bl getint
	mov r5, r0
	str r0, [sp, #0]
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	str r3, [sp, #8]
	movw r3, #:lower16:B
	movt r3, #:upper16:B
	str r3, [sp, #4]
	movw r3, #:lower16:C
	movt r3, #:upper16:C
	str r3, [sp, #12]
	mov r4, #0
	cmp r4, r0
	bge label126
	cmp r0, #0
	ble label114
	ldr r3, [sp, #8]
	add r6, r3, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	b label1583
label126:
	mov r4, #0
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label6
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label109
	ldr r3, [sp, #4]
	add r6, r3, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	b label1584
label6:
	mov r0, #65
	bl _sysy_starttime
	mov r0, #0
	str r0, [sp, #16]
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label134
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label12
	mov r1, #0
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label16
	b label15
label134:
	mov r0, #0
	ldr r3, [sp, #4]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label219
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label104
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label87
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label104
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label87
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label104
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label87
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label104
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label87
	b label1498
label15:
	add r4, r2, r1, lsl #2
	mov r5, #0
	str r5, [r2, r1, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	str r5, [r4, #16]
	str r5, [r4, #20]
	str r5, [r4, #24]
	str r5, [r4, #28]
	str r5, [r4, #32]
	str r5, [r4, #36]
	str r5, [r4, #40]
	str r5, [r4, #44]
	str r5, [r4, #48]
	str r5, [r4, #52]
	str r5, [r4, #56]
	str r5, [r4, #60]
	mov r1, r3
	add r3, r3, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label16
	b label15
label1498:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label104
	b label1532
label87:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label103
	ldr r3, [sp, #12]
	add r3, r3, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #16
	ble label813
	ldr r7, [r6, r0, lsl #2]
	mov r4, #16
	mov r9, #0
	b label100
label813:
	mov r8, #0
	ldr r4, [r6, r0, lsl #2]
	add r6, r8, #16
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label94
	b label93
label94:
	add r6, r8, #16
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label924
	b label96
label924:
	mov r5, r8
	ldr r6, [r3, r8, lsl #2]
	ldr r7, [r2, r8, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r8, lsl #2]
	add r6, r8, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label103
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label103
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label103
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label103
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label103
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label103
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label103
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label103
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label103
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label103
	b label1605
label96:
	add r5, r3, r8, lsl #2
	ldr r9, [r3, r8, lsl #2]
	add r7, r2, r8, lsl #2
	ldr r10, [r2, r8, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r3, r8, lsl #2]
	ldr r8, [r5, #4]
	ldr r9, [r7, #4]
	mla r8, r4, r9, r8
	str r8, [r5, #4]
	ldr r8, [r5, #8]
	ldr r9, [r7, #8]
	mla r8, r4, r9, r8
	str r8, [r5, #8]
	ldr r8, [r5, #12]
	ldr r9, [r7, #12]
	mla r8, r4, r9, r8
	str r8, [r5, #12]
	ldr r8, [r5, #16]
	ldr r9, [r7, #16]
	mla r8, r4, r9, r8
	str r8, [r5, #16]
	ldr r8, [r5, #20]
	ldr r9, [r7, #20]
	mla r8, r4, r9, r8
	str r8, [r5, #20]
	ldr r8, [r5, #24]
	ldr r9, [r7, #24]
	mla r8, r4, r9, r8
	str r8, [r5, #24]
	ldr r8, [r5, #28]
	ldr r9, [r7, #28]
	mla r8, r4, r9, r8
	str r8, [r5, #28]
	ldr r8, [r5, #32]
	ldr r9, [r7, #32]
	mla r8, r4, r9, r8
	str r8, [r5, #32]
	ldr r8, [r5, #36]
	ldr r9, [r7, #36]
	mla r8, r4, r9, r8
	str r8, [r5, #36]
	ldr r8, [r5, #40]
	ldr r9, [r7, #40]
	mla r8, r4, r9, r8
	str r8, [r5, #40]
	ldr r8, [r5, #44]
	ldr r9, [r7, #44]
	mla r8, r4, r9, r8
	str r8, [r5, #44]
	ldr r8, [r5, #48]
	ldr r9, [r7, #48]
	mla r8, r4, r9, r8
	str r8, [r5, #48]
	ldr r8, [r5, #52]
	ldr r9, [r7, #52]
	mla r8, r4, r9, r8
	str r8, [r5, #52]
	ldr r8, [r5, #56]
	ldr r9, [r7, #56]
	mla r8, r4, r9, r8
	str r8, [r5, #56]
	ldr r8, [r5, #60]
	ldr r7, [r7, #60]
	mla r7, r4, r7, r8
	str r7, [r5, #60]
	mov r8, r6
	add r6, r6, #16
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label924
	b label96
label103:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label104
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label87
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label104
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label87
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label104
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label87
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label104
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label87
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label104
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label87
	b label1566
label1605:
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label103
	b label1605
label1566:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label104
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label87
	b label1566
label1532:
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label87
	b label1566
label104:
	add r0, r0, #1
	ldr r3, [sp, #4]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label219
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label104
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label87
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label104
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label87
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label104
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label87
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label104
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label87
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label104
	b label1532
label219:
	mov r0, #0
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label223
	ldr r3, [sp, #4]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label72
	mov r1, #0
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label75
	b label83
label223:
	mov r0, #0
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label30
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label70
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label54
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label70
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label54
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label70
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label54
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label70
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label54
	b label1588
label30:
	ldr r0, [sp, #16]
	add r0, r0, #1
	cmp r0, #5
	bge label234
	str r0, [sp, #16]
	mov r0, #0
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label134
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label12
	mov r1, #0
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label16
	b label15
label234:
	mov r2, #0
	mov r4, r2
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label34
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label36
	ldr r3, [sp, #4]
	add r3, r3, r2, lsl #12
	mov r1, r2
	mov r0, #0
	add r4, r0, #16
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label42
	b label49
label54:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label53
	ldr r3, [sp, #4]
	add r3, r3, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #16
	ble label383
	ldr r7, [r6, r0, lsl #2]
	mov r4, #16
	mov r9, #0
	b label67
label383:
	mov r8, #0
	ldr r4, [r6, r0, lsl #2]
	add r6, r8, #16
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label61
label60:
	add r5, r3, r8, lsl #2
	ldr r9, [r3, r8, lsl #2]
	add r7, r2, r8, lsl #2
	ldr r10, [r2, r8, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r3, r8, lsl #2]
	ldr r8, [r5, #4]
	ldr r9, [r7, #4]
	mla r8, r4, r9, r8
	str r8, [r5, #4]
	ldr r8, [r5, #8]
	ldr r9, [r7, #8]
	mla r8, r4, r9, r8
	str r8, [r5, #8]
	ldr r8, [r5, #12]
	ldr r9, [r7, #12]
	mla r8, r4, r9, r8
	str r8, [r5, #12]
	ldr r8, [r5, #16]
	ldr r9, [r7, #16]
	mla r8, r4, r9, r8
	str r8, [r5, #16]
	ldr r8, [r5, #20]
	ldr r9, [r7, #20]
	mla r8, r4, r9, r8
	str r8, [r5, #20]
	ldr r8, [r5, #24]
	ldr r9, [r7, #24]
	mla r8, r4, r9, r8
	str r8, [r5, #24]
	ldr r8, [r5, #28]
	ldr r9, [r7, #28]
	mla r8, r4, r9, r8
	str r8, [r5, #28]
	ldr r8, [r5, #32]
	ldr r9, [r7, #32]
	mla r8, r4, r9, r8
	str r8, [r5, #32]
	ldr r8, [r5, #36]
	ldr r9, [r7, #36]
	mla r8, r4, r9, r8
	str r8, [r5, #36]
	ldr r8, [r5, #40]
	ldr r9, [r7, #40]
	mla r8, r4, r9, r8
	str r8, [r5, #40]
	ldr r8, [r5, #44]
	ldr r9, [r7, #44]
	mla r8, r4, r9, r8
	str r8, [r5, #44]
	ldr r8, [r5, #48]
	ldr r9, [r7, #48]
	mla r8, r4, r9, r8
	str r8, [r5, #48]
	ldr r8, [r5, #52]
	ldr r9, [r7, #52]
	mla r8, r4, r9, r8
	str r8, [r5, #52]
	ldr r8, [r5, #56]
	ldr r9, [r7, #56]
	mla r8, r4, r9, r8
	str r8, [r5, #56]
	ldr r8, [r5, #60]
	ldr r7, [r7, #60]
	mla r7, r4, r7, r8
	str r7, [r5, #60]
	mov r8, r6
	add r6, r6, #16
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label61
	b label60
label61:
	add r6, r8, #16
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label494
	b label63
label494:
	mov r5, r8
	ldr r6, [r3, r8, lsl #2]
	ldr r7, [r2, r8, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r8, lsl #2]
	add r6, r8, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label53
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label53
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label53
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label53
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label53
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label53
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label53
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label53
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label53
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label53
label1596:
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label53
	b label1596
label1556:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label70
	b label1590
label53:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label70
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label54
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label70
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label54
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label70
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label54
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label70
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label54
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label70
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label54
	b label1556
label1588:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label70
label1522:
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label54
	b label1556
label1590:
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label54
	b label1556
label70:
	add r0, r0, #1
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label30
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label70
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label54
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label70
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label54
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label70
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label54
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label70
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label54
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label70
	b label1522
label93:
	add r5, r3, r8, lsl #2
	ldr r9, [r3, r8, lsl #2]
	add r7, r2, r8, lsl #2
	ldr r10, [r2, r8, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r3, r8, lsl #2]
	ldr r8, [r5, #4]
	ldr r9, [r7, #4]
	mla r8, r4, r9, r8
	str r8, [r5, #4]
	ldr r8, [r5, #8]
	ldr r9, [r7, #8]
	mla r8, r4, r9, r8
	str r8, [r5, #8]
	ldr r8, [r5, #12]
	ldr r9, [r7, #12]
	mla r8, r4, r9, r8
	str r8, [r5, #12]
	ldr r8, [r5, #16]
	ldr r9, [r7, #16]
	mla r8, r4, r9, r8
	str r8, [r5, #16]
	ldr r8, [r5, #20]
	ldr r9, [r7, #20]
	mla r8, r4, r9, r8
	str r8, [r5, #20]
	ldr r8, [r5, #24]
	ldr r9, [r7, #24]
	mla r8, r4, r9, r8
	str r8, [r5, #24]
	ldr r8, [r5, #28]
	ldr r9, [r7, #28]
	mla r8, r4, r9, r8
	str r8, [r5, #28]
	ldr r8, [r5, #32]
	ldr r9, [r7, #32]
	mla r8, r4, r9, r8
	str r8, [r5, #32]
	ldr r8, [r5, #36]
	ldr r9, [r7, #36]
	mla r8, r4, r9, r8
	str r8, [r5, #36]
	ldr r8, [r5, #40]
	ldr r9, [r7, #40]
	mla r8, r4, r9, r8
	str r8, [r5, #40]
	ldr r8, [r5, #44]
	ldr r9, [r7, #44]
	mla r8, r4, r9, r8
	str r8, [r5, #44]
	ldr r8, [r5, #48]
	ldr r9, [r7, #48]
	mla r8, r4, r9, r8
	str r8, [r5, #48]
	ldr r8, [r5, #52]
	ldr r9, [r7, #52]
	mla r8, r4, r9, r8
	str r8, [r5, #52]
	ldr r8, [r5, #56]
	ldr r9, [r7, #56]
	mla r8, r4, r9, r8
	str r8, [r5, #56]
	ldr r8, [r5, #60]
	ldr r7, [r7, #60]
	mla r7, r4, r7, r8
	str r7, [r5, #60]
	mov r8, r6
	add r6, r6, #16
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label94
	b label93
label100:
	add r5, r3, r9, lsl #2
	ldr r10, [r3, r9, lsl #2]
	add r8, r2, r9, lsl #2
	ldr r11, [r2, r9, lsl #2]
	mla r10, r7, r11, r10
	str r10, [r3, r9, lsl #2]
	ldr r9, [r5, #4]
	ldr r10, [r8, #4]
	mla r9, r7, r10, r9
	str r9, [r5, #4]
	ldr r9, [r5, #8]
	ldr r10, [r8, #8]
	mla r9, r7, r10, r9
	str r9, [r5, #8]
	ldr r9, [r5, #12]
	ldr r10, [r8, #12]
	mla r9, r7, r10, r9
	str r9, [r5, #12]
	ldr r9, [r5, #16]
	ldr r10, [r8, #16]
	mla r9, r7, r10, r9
	str r9, [r5, #16]
	ldr r9, [r5, #20]
	ldr r10, [r8, #20]
	mla r9, r7, r10, r9
	str r9, [r5, #20]
	ldr r9, [r5, #24]
	ldr r10, [r8, #24]
	mla r9, r7, r10, r9
	str r9, [r5, #24]
	ldr r9, [r5, #28]
	ldr r10, [r8, #28]
	mla r9, r7, r10, r9
	str r9, [r5, #28]
	ldr r9, [r5, #32]
	ldr r10, [r8, #32]
	mla r9, r7, r10, r9
	str r9, [r5, #32]
	ldr r9, [r5, #36]
	ldr r10, [r8, #36]
	mla r9, r7, r10, r9
	str r9, [r5, #36]
	ldr r9, [r5, #40]
	ldr r10, [r8, #40]
	mla r9, r7, r10, r9
	str r9, [r5, #40]
	ldr r9, [r5, #44]
	ldr r10, [r8, #44]
	mla r9, r7, r10, r9
	str r9, [r5, #44]
	ldr r9, [r5, #48]
	ldr r10, [r8, #48]
	mla r9, r7, r10, r9
	str r9, [r5, #48]
	ldr r9, [r5, #52]
	ldr r10, [r8, #52]
	mla r9, r7, r10, r9
	str r9, [r5, #52]
	ldr r9, [r5, #56]
	ldr r10, [r8, #56]
	mla r9, r7, r10, r9
	str r9, [r5, #56]
	ldr r9, [r5, #60]
	ldr r8, [r8, #60]
	mla r8, r7, r8, r9
	str r8, [r5, #60]
	add r8, r4, #16
	ldr r5, [sp, #0]
	cmp r8, r5
	bge label1141
	mov r9, r4
	mov r4, r8
	b label100
label1141:
	mov r8, r4
	ldr r4, [r6, r0, lsl #2]
	add r6, r8, #16
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label94
	b label93
label63:
	add r5, r3, r8, lsl #2
	ldr r9, [r3, r8, lsl #2]
	add r7, r2, r8, lsl #2
	ldr r10, [r2, r8, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r3, r8, lsl #2]
	ldr r8, [r5, #4]
	ldr r9, [r7, #4]
	mla r8, r4, r9, r8
	str r8, [r5, #4]
	ldr r8, [r5, #8]
	ldr r9, [r7, #8]
	mla r8, r4, r9, r8
	str r8, [r5, #8]
	ldr r8, [r5, #12]
	ldr r9, [r7, #12]
	mla r8, r4, r9, r8
	str r8, [r5, #12]
	ldr r8, [r5, #16]
	ldr r9, [r7, #16]
	mla r8, r4, r9, r8
	str r8, [r5, #16]
	ldr r8, [r5, #20]
	ldr r9, [r7, #20]
	mla r8, r4, r9, r8
	str r8, [r5, #20]
	ldr r8, [r5, #24]
	ldr r9, [r7, #24]
	mla r8, r4, r9, r8
	str r8, [r5, #24]
	ldr r8, [r5, #28]
	ldr r9, [r7, #28]
	mla r8, r4, r9, r8
	str r8, [r5, #28]
	ldr r8, [r5, #32]
	ldr r9, [r7, #32]
	mla r8, r4, r9, r8
	str r8, [r5, #32]
	ldr r8, [r5, #36]
	ldr r9, [r7, #36]
	mla r8, r4, r9, r8
	str r8, [r5, #36]
	ldr r8, [r5, #40]
	ldr r9, [r7, #40]
	mla r8, r4, r9, r8
	str r8, [r5, #40]
	ldr r8, [r5, #44]
	ldr r9, [r7, #44]
	mla r8, r4, r9, r8
	str r8, [r5, #44]
	ldr r8, [r5, #48]
	ldr r9, [r7, #48]
	mla r8, r4, r9, r8
	str r8, [r5, #48]
	ldr r8, [r5, #52]
	ldr r9, [r7, #52]
	mla r8, r4, r9, r8
	str r8, [r5, #52]
	ldr r8, [r5, #56]
	ldr r9, [r7, #56]
	mla r8, r4, r9, r8
	str r8, [r5, #56]
	ldr r8, [r5, #60]
	ldr r7, [r7, #60]
	mla r7, r4, r7, r8
	str r7, [r5, #60]
	mov r8, r6
	add r6, r6, #16
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label494
	b label63
label67:
	add r5, r3, r9, lsl #2
	ldr r10, [r3, r9, lsl #2]
	add r8, r2, r9, lsl #2
	ldr r11, [r2, r9, lsl #2]
	mla r10, r7, r11, r10
	str r10, [r3, r9, lsl #2]
	ldr r9, [r5, #4]
	ldr r10, [r8, #4]
	mla r9, r7, r10, r9
	str r9, [r5, #4]
	ldr r9, [r5, #8]
	ldr r10, [r8, #8]
	mla r9, r7, r10, r9
	str r9, [r5, #8]
	ldr r9, [r5, #12]
	ldr r10, [r8, #12]
	mla r9, r7, r10, r9
	str r9, [r5, #12]
	ldr r9, [r5, #16]
	ldr r10, [r8, #16]
	mla r9, r7, r10, r9
	str r9, [r5, #16]
	ldr r9, [r5, #20]
	ldr r10, [r8, #20]
	mla r9, r7, r10, r9
	str r9, [r5, #20]
	ldr r9, [r5, #24]
	ldr r10, [r8, #24]
	mla r9, r7, r10, r9
	str r9, [r5, #24]
	ldr r9, [r5, #28]
	ldr r10, [r8, #28]
	mla r9, r7, r10, r9
	str r9, [r5, #28]
	ldr r9, [r5, #32]
	ldr r10, [r8, #32]
	mla r9, r7, r10, r9
	str r9, [r5, #32]
	ldr r9, [r5, #36]
	ldr r10, [r8, #36]
	mla r9, r7, r10, r9
	str r9, [r5, #36]
	ldr r9, [r5, #40]
	ldr r10, [r8, #40]
	mla r9, r7, r10, r9
	str r9, [r5, #40]
	ldr r9, [r5, #44]
	ldr r10, [r8, #44]
	mla r9, r7, r10, r9
	str r9, [r5, #44]
	ldr r9, [r5, #48]
	ldr r10, [r8, #48]
	mla r9, r7, r10, r9
	str r9, [r5, #48]
	ldr r9, [r5, #52]
	ldr r10, [r8, #52]
	mla r9, r7, r10, r9
	str r9, [r5, #52]
	ldr r9, [r5, #56]
	ldr r10, [r8, #56]
	mla r9, r7, r10, r9
	str r9, [r5, #56]
	ldr r9, [r5, #60]
	ldr r8, [r8, #60]
	mla r8, r7, r8, r9
	str r8, [r5, #60]
	add r8, r4, #16
	ldr r5, [sp, #0]
	cmp r8, r5
	bge label711
	mov r9, r4
	mov r4, r8
	b label67
label711:
	mov r8, r4
	ldr r4, [r6, r0, lsl #2]
	add r6, r8, #16
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label61
	b label60
label1547:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	b label1581
label114:
	add r4, r4, #1
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label126
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label114
	ldr r3, [sp, #8]
	add r6, r3, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	b label1547
label1581:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
label1615:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	b label1615
label1583:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	b label1547
label1584:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
label1543:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
label1611:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	b label1611
label109:
	add r4, r4, #1
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label6
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label109
	ldr r3, [sp, #4]
	add r6, r3, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	b label1543
label75:
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label77
label82:
	add r4, r2, r1, lsl #2
	mov r5, #0
	str r5, [r2, r1, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	str r5, [r4, #16]
	str r5, [r4, #20]
	str r5, [r4, #24]
	str r5, [r4, #28]
	str r5, [r4, #32]
	str r5, [r4, #36]
	str r5, [r4, #40]
	str r5, [r4, #44]
	str r5, [r4, #48]
	str r5, [r4, #52]
	str r5, [r4, #56]
	str r5, [r4, #60]
	mov r1, r3
	add r3, r3, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label77
	b label82
label77:
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label79
label81:
	add r4, r2, r1, lsl #2
	mov r5, #0
	str r5, [r2, r1, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	str r5, [r4, #16]
	str r5, [r4, #20]
	str r5, [r4, #24]
	str r5, [r4, #28]
	str r5, [r4, #32]
	str r5, [r4, #36]
	str r5, [r4, #40]
	str r5, [r4, #44]
	str r5, [r4, #48]
	str r5, [r4, #52]
	str r5, [r4, #56]
	str r5, [r4, #60]
	mov r1, r3
	add r3, r3, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label79
	b label81
label79:
	mov r3, #0
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label72
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label72
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label72
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label72
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label72
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label72
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label72
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label72
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label72
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label72
label1599:
	mov r3, #0
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label72
	b label1599
label72:
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label223
	ldr r3, [sp, #4]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label72
	mov r1, #0
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label75
label83:
	add r4, r2, r1, lsl #2
	mov r5, #0
	str r5, [r2, r1, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	str r5, [r4, #16]
	str r5, [r4, #20]
	str r5, [r4, #24]
	str r5, [r4, #28]
	str r5, [r4, #32]
	str r5, [r4, #36]
	str r5, [r4, #40]
	str r5, [r4, #44]
	str r5, [r4, #48]
	str r5, [r4, #52]
	str r5, [r4, #56]
	str r5, [r4, #60]
	mov r1, r3
	add r3, r3, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label75
	b label83
label16:
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label18
label23:
	add r4, r2, r1, lsl #2
	mov r5, #0
	str r5, [r2, r1, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	str r5, [r4, #16]
	str r5, [r4, #20]
	str r5, [r4, #24]
	str r5, [r4, #28]
	str r5, [r4, #32]
	str r5, [r4, #36]
	str r5, [r4, #40]
	str r5, [r4, #44]
	str r5, [r4, #48]
	str r5, [r4, #52]
	str r5, [r4, #56]
	str r5, [r4, #60]
	mov r1, r3
	add r3, r3, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label18
	b label23
label18:
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label20
label22:
	add r4, r2, r1, lsl #2
	mov r5, #0
	str r5, [r2, r1, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	str r5, [r4, #16]
	str r5, [r4, #20]
	str r5, [r4, #24]
	str r5, [r4, #28]
	str r5, [r4, #32]
	str r5, [r4, #36]
	str r5, [r4, #40]
	str r5, [r4, #44]
	str r5, [r4, #48]
	str r5, [r4, #52]
	str r5, [r4, #56]
	str r5, [r4, #60]
	mov r1, r3
	add r3, r3, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label20
	b label22
label20:
	mov r3, #0
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label12
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label12
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label12
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label12
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label12
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label12
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label12
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label12
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label12
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label12
label1586:
	mov r3, #0
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label12
	b label1586
label12:
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label134
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label12
	mov r1, #0
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label16
	b label15
label42:
	add r4, r0, #16
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label45
label48:
	add r5, r3, r0, lsl #2
	ldr r6, [r3, r0, lsl #2]
	ldr r0, [r5, #4]
	add r1, r1, r6
	add r0, r1, r0
	ldr r1, [r5, #8]
	add r0, r0, r1
	ldr r1, [r5, #12]
	add r0, r0, r1
	ldr r1, [r5, #16]
	add r0, r0, r1
	ldr r1, [r5, #20]
	add r0, r0, r1
	ldr r1, [r5, #24]
	add r0, r0, r1
	ldr r1, [r5, #28]
	add r0, r0, r1
	ldr r1, [r5, #32]
	add r0, r0, r1
	ldr r1, [r5, #36]
	add r0, r0, r1
	ldr r1, [r5, #40]
	add r0, r0, r1
	ldr r1, [r5, #44]
	add r0, r0, r1
	ldr r1, [r5, #48]
	add r0, r0, r1
	ldr r1, [r5, #52]
	add r0, r0, r1
	ldr r1, [r5, #56]
	add r0, r0, r1
	ldr r1, [r5, #60]
	add r1, r0, r1
	mov r0, r4
	add r4, r4, #16
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label45
	b label48
label45:
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label263
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label263
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label263
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label263
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label263
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label263
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label263
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label263
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label263
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label263
label1589:
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label263
	b label1589
label263:
	mov r4, r1
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label34
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label36
	ldr r3, [sp, #4]
	add r3, r3, r2, lsl #12
	mov r0, #0
	add r4, r0, #16
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label42
label49:
	add r5, r3, r0, lsl #2
	ldr r6, [r3, r0, lsl #2]
	ldr r0, [r5, #4]
	add r1, r1, r6
	add r0, r1, r0
	ldr r1, [r5, #8]
	add r0, r0, r1
	ldr r1, [r5, #12]
	add r0, r0, r1
	ldr r1, [r5, #16]
	add r0, r0, r1
	ldr r1, [r5, #20]
	add r0, r0, r1
	ldr r1, [r5, #24]
	add r0, r0, r1
	ldr r1, [r5, #28]
	add r0, r0, r1
	ldr r1, [r5, #32]
	add r0, r0, r1
	ldr r1, [r5, #36]
	add r0, r0, r1
	ldr r1, [r5, #40]
	add r0, r0, r1
	ldr r1, [r5, #44]
	add r0, r0, r1
	ldr r1, [r5, #48]
	add r0, r0, r1
	ldr r1, [r5, #52]
	add r0, r0, r1
	ldr r1, [r5, #56]
	add r0, r0, r1
	ldr r1, [r5, #60]
	add r1, r0, r1
	mov r0, r4
	add r4, r4, #16
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label42
	b label49
label36:
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label34
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label36
	ldr r3, [sp, #4]
	add r3, r3, r2, lsl #12
	mov r1, r4
	mov r0, #0
	add r4, r0, #16
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label42
	b label49
label34:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
