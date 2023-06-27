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
	ble label8
	ldr r3, [sp, #8]
	add r6, r3, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	b label1603
label126:
	mov r4, #0
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label16
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label15
	ldr r3, [sp, #4]
	add r6, r3, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label15
	b label1540
label16:
	mov r0, #65
	bl _sysy_starttime
	mov r0, #0
	str r0, [sp, #16]
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label162
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label33
	mov r1, #0
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label24
	b label32
label162:
	mov r0, #0
	ldr r3, [sp, #4]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label247
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	ldr r3, [sp, #8]
	add r3, r3, r1, lsl #12
	add r6, r3, r0, lsl #2
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	bne label97
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	ldr r3, [sp, #8]
	add r3, r3, r1, lsl #12
	add r6, r3, r0, lsl #2
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	bne label97
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	ldr r3, [sp, #8]
	add r3, r3, r1, lsl #12
	add r6, r3, r0, lsl #2
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	bne label97
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	ldr r3, [sp, #8]
	add r3, r3, r1, lsl #12
	add r6, r3, r0, lsl #2
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	bne label97
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
label1558:
	ldr r3, [sp, #8]
	add r3, r3, r1, lsl #12
	add r6, r3, r0, lsl #2
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	bne label97
	b label1594
label114:
	add r0, r0, #1
	ldr r3, [sp, #4]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label247
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	ldr r3, [sp, #8]
	add r3, r3, r1, lsl #12
	add r6, r3, r0, lsl #2
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	bne label97
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	ldr r3, [sp, #8]
	add r3, r3, r1, lsl #12
	add r6, r3, r0, lsl #2
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	bne label97
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	ldr r3, [sp, #8]
	add r3, r3, r1, lsl #12
	add r6, r3, r0, lsl #2
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	bne label97
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	ldr r3, [sp, #8]
	add r3, r3, r1, lsl #12
	add r6, r3, r0, lsl #2
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	bne label97
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	b label1558
label1594:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	b label1630
label103:
	add r6, r8, #16
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label848
	b label105
label848:
	mov r5, r8
	ldr r6, [r3, r8, lsl #2]
	ldr r7, [r2, r8, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r8, lsl #2]
	add r6, r8, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label113
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label113
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label113
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label113
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label113
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label113
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label113
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label113
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label113
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label113
	b label1635
label105:
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
	bge label848
	b label105
label1635:
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label113
	b label1635
label113:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	ldr r3, [sp, #8]
	add r3, r3, r1, lsl #12
	add r6, r3, r0, lsl #2
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	bne label97
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	ldr r3, [sp, #8]
	add r3, r3, r1, lsl #12
	add r6, r3, r0, lsl #2
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	bne label97
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	ldr r3, [sp, #8]
	add r3, r3, r1, lsl #12
	add r6, r3, r0, lsl #2
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	bne label97
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	ldr r3, [sp, #8]
	add r3, r3, r1, lsl #12
	add r6, r3, r0, lsl #2
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	bne label97
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	ldr r3, [sp, #8]
	add r3, r3, r1, lsl #12
	add r6, r3, r0, lsl #2
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	bne label97
	b label1594
label1630:
	ldr r3, [sp, #8]
	add r3, r3, r1, lsl #12
	add r6, r3, r0, lsl #2
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	bne label97
	b label1594
label247:
	mov r0, #0
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label251
	ldr r3, [sp, #4]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label93
	mov r1, #0
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label84
	b label92
label251:
	mov r0, #0
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label61
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r3, r3, r1, lsl #12
	add r6, r3, r0, lsl #2
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	bne label44
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r3, r3, r1, lsl #12
	add r6, r3, r0, lsl #2
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	bne label44
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r3, r3, r1, lsl #12
	add r6, r3, r0, lsl #2
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	bne label44
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r3, r3, r1, lsl #12
	add r6, r3, r0, lsl #2
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	bne label44
	b label1617
label61:
	ldr r0, [sp, #16]
	add r0, r0, #1
	cmp r0, #5
	bge label610
	str r0, [sp, #16]
	mov r0, #0
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label162
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label33
	mov r1, #0
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label24
	b label32
label1617:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
label1546:
	ldr r3, [sp, #8]
	add r3, r3, r1, lsl #12
	add r6, r3, r0, lsl #2
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	bne label44
label1582:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	b label1618
label43:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r3, r3, r1, lsl #12
	add r6, r3, r0, lsl #2
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	bne label44
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r3, r3, r1, lsl #12
	add r6, r3, r0, lsl #2
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	bne label44
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r3, r3, r1, lsl #12
	add r6, r3, r0, lsl #2
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	bne label44
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r3, r3, r1, lsl #12
	add r6, r3, r0, lsl #2
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	bne label44
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r3, r3, r1, lsl #12
	add r6, r3, r0, lsl #2
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	bne label44
	b label1582
label1624:
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	b label1624
label1618:
	ldr r3, [sp, #8]
	add r3, r3, r1, lsl #12
	add r6, r3, r0, lsl #2
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	bne label44
	b label1582
label60:
	add r0, r0, #1
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label61
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r3, r3, r1, lsl #12
	add r6, r3, r0, lsl #2
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	bne label44
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r3, r3, r1, lsl #12
	add r6, r3, r0, lsl #2
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	bne label44
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r3, r3, r1, lsl #12
	add r6, r3, r0, lsl #2
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	bne label44
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r3, r3, r1, lsl #12
	add r6, r3, r0, lsl #2
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	bne label44
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	b label1546
label89:
	mov r3, #0
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label93
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label93
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label93
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label93
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label93
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label93
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label93
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label93
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label93
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label93
	b label1629
label93:
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label251
	ldr r3, [sp, #4]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label93
	mov r1, #0
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label84
	b label92
label1629:
	mov r3, #0
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label93
	b label1629
label29:
	mov r3, #0
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label33
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label33
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label33
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label33
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label33
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label33
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label33
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label33
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label33
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label33
	b label1615
label33:
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label162
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label33
	mov r1, #0
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label24
	b label32
label1615:
	mov r3, #0
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label33
	b label1615
label97:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label113
	ldr r3, [sp, #12]
	add r3, r3, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #16
	ble label837
	b label1316
label837:
	mov r8, #0
	ldr r4, [r6, #0]
	add r6, r8, #16
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label103
label108:
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
	bge label103
	b label108
label110:
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
	bge label1161
	mov r9, r4
	mov r4, r8
	b label110
label1161:
	mov r8, r4
	ldr r4, [r6, #0]
	add r6, r8, #16
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label103
	b label108
label44:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label43
	ldr r3, [sp, #4]
	add r3, r3, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #16
	ble label279
	b label1343
label279:
	mov r8, #0
	ldr r4, [r6, #0]
	add r6, r8, #16
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label55
label54:
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
	bge label55
	b label54
label47:
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
	bge label383
	mov r9, r4
	mov r4, r8
	b label47
label383:
	mov r8, r4
	ldr r4, [r6, #0]
	add r6, r8, #16
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label55
	b label54
label55:
	add r6, r8, #16
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label493
	b label57
label493:
	mov r5, r8
	ldr r6, [r3, r8, lsl #2]
	ldr r7, [r2, r8, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r8, lsl #2]
	add r6, r8, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	b label1624
label57:
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
	bge label493
	b label57
label1316:
	ldr r7, [r6, #0]
	mov r4, #16
	mov r9, #0
	b label110
label1343:
	ldr r7, [r6, #0]
	mov r4, #16
	mov r9, #0
	b label47
label1535:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	b label1571
label8:
	add r4, r4, #1
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label126
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label8
	ldr r3, [sp, #8]
	add r6, r3, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	b label1535
label1603:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	b label1535
label1571:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
label1607:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	b label1607
label1540:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label15
	b label1576
label15:
	add r4, r4, #1
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label16
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label15
	ldr r3, [sp, #4]
	add r6, r3, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label15
	b label1540
label1576:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label15
label1612:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label15
	b label1612
label84:
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label87
	b label86
label87:
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label89
	b label91
label24:
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label27
	b label26
label27:
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label29
	b label31
label92:
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
	bge label84
	b label92
label86:
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
	bge label87
	b label86
label91:
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
	bge label89
	b label91
label31:
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
	bge label29
	b label31
label32:
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
	bge label24
	b label32
label610:
	mov r2, #0
	mov r4, r2
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label80
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label66
	ldr r3, [sp, #4]
	add r3, r3, r2, lsl #12
	mov r1, r2
	mov r0, #0
	add r4, r0, #16
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label72
	b label79
label80:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label1628:
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label688
	b label1628
label688:
	mov r4, r1
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label80
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label66
	ldr r3, [sp, #4]
	add r3, r3, r2, lsl #12
	mov r0, #0
	add r4, r0, #16
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label72
label79:
	add r5, r3, r0, lsl #2
	ldr r0, [r3, r0, lsl #2]
	ldr r6, [r5, #4]
	add r0, r1, r0
	add r0, r0, r6
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
	bge label72
	b label79
label72:
	add r4, r0, #16
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label76
label75:
	add r5, r3, r0, lsl #2
	ldr r0, [r3, r0, lsl #2]
	ldr r6, [r5, #4]
	add r0, r1, r0
	add r0, r0, r6
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
	bge label76
	b label75
label76:
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label688
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label688
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label688
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label688
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label688
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label688
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label688
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label688
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label688
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label688
	b label1628
label26:
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
	bge label27
	b label26
label66:
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label80
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label66
	ldr r3, [sp, #4]
	add r3, r3, r2, lsl #12
	mov r1, r4
	mov r0, #0
	add r4, r0, #16
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label72
	b label79
