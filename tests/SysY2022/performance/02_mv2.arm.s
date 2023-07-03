.arch armv7ve
.data
.bss
.align 4
A:
	.zero	16160400
.align 4
B:
	.zero	8040
.align 4
C:
	.zero	8040
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	bl getint
	mov r4, r0
	movw r7, #:lower16:A
	movt r7, #:upper16:A
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	movw r5, #:lower16:C
	movt r5, #:upper16:C
	mov r8, #0
	cmp r0, r8
	ble label9
	cmp r0, #0
	ble label5
	movw r0, #8040
	mla r9, r8, r0, r7
	mov r10, #0
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	b label501
label9:
	cmp r4, #0
	ble label10
	mov r8, #0
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label10
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label10
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label10
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label10
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label10
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label10
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label10
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label10
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label10
	b label587
label10:
	mov r0, #59
	bl _sysy_starttime
	mov r0, #0
	cmp r4, #0
	ble label86
	mov r1, #0
	add r2, r1, #4
	cmp r4, r2
	ble label46
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	b label588
label86:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r4, r1
	ble label15
	mov r3, #0
	cmp r4, r3
	ble label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r4, r3
	ble label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r4, r3
	ble label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r4, r3
	ble label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	b label589
label15:
	cmp r4, #0
	ble label95
	mov r1, #0
	add r2, r1, #4
	cmp r4, r2
	ble label28
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label28
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label28
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label28
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label28
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label28
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label28
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label28
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label28
	b label555
label95:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r4, r1
	ble label18
	mov r3, #0
	cmp r4, r3
	ble label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	add r3, r3, #1
	cmp r4, r3
	ble label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	add r3, r3, #1
	cmp r4, r3
	ble label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	add r3, r3, #1
	cmp r4, r3
	ble label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	add r3, r3, #1
	cmp r4, r3
	ble label22
	b label509
label555:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label28
	b label597
label551:
	add r3, r3, #1
	cmp r4, r3
	ble label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	b label551
label24:
	ldr r9, [r6, r1, lsl #2]
	ldr r10, [r5, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r6, r1, lsl #2]
	add r3, r3, #1
	cmp r4, r3
	ble label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	add r3, r3, #1
	cmp r4, r3
	ble label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	add r3, r3, #1
	cmp r4, r3
	ble label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	add r3, r3, #1
	cmp r4, r3
	ble label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	add r3, r3, #1
	cmp r4, r3
	ble label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	b label551
label18:
	add r0, r0, #1
	cmp r0, #50
	bge label19
	cmp r4, #0
	ble label86
	mov r1, #0
	add r2, r1, #4
	cmp r4, r2
	ble label46
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	b label570
label19:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r5
	bl putarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label509:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	b label551
label30:
	add r2, r1, #4
	cmp r4, r2
	ble label33
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label33
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label33
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label33
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label33
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label33
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label33
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label33
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label33
	b label599
label33:
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label154
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label154
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label154
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label154
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label154
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label154
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label154
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label154
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label154
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label154
	b label602
label154:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r4, r1
	ble label18
	mov r3, #0
	cmp r4, r3
	ble label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	add r3, r3, #1
	cmp r4, r3
	ble label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	add r3, r3, #1
	cmp r4, r3
	ble label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	add r3, r3, #1
	cmp r4, r3
	ble label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	add r3, r3, #1
	cmp r4, r3
	ble label22
	b label509
label570:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	b label612
label22:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r4, r1
	ble label18
	mov r3, #0
	cmp r4, r3
	ble label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	add r3, r3, #1
	cmp r4, r3
	ble label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	add r3, r3, #1
	cmp r4, r3
	ble label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	add r3, r3, #1
	cmp r4, r3
	ble label22
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	add r3, r3, #1
	cmp r4, r3
	ble label22
	b label509
label589:
	add r3, r3, #1
	cmp r4, r3
	ble label42
label522:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
label564:
	add r3, r3, #1
	cmp r4, r3
	ble label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	b label564
label42:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r4, r1
	ble label15
	mov r3, #0
	cmp r4, r3
	ble label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r4, r3
	ble label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r4, r3
	ble label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r4, r3
	ble label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r4, r3
	ble label42
	b label522
label41:
	ldr r9, [r5, r1, lsl #2]
	ldr r10, [r6, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r5, r1, lsl #2]
	add r3, r3, #1
	cmp r4, r3
	ble label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r4, r3
	ble label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r4, r3
	ble label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r4, r3
	ble label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r4, r3
	ble label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	b label564
label602:
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label154
	b label602
label5:
	add r8, r8, #1
	cmp r4, r8
	ble label9
	cmp r4, #0
	ble label5
	movw r0, #8040
	mla r9, r8, r0, r7
	mov r10, #0
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
label501:
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
label585:
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	b label585
label28:
	add r2, r1, #4
	cmp r4, r2
	ble label30
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label30
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label30
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label30
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label30
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label30
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label30
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label30
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label30
label598:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label30
	b label598
label597:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label28
	b label597
label599:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label33
	b label599
label46:
	add r2, r1, #4
	cmp r4, r2
	ble label48
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label48
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label48
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label48
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label48
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label48
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label48
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label48
	b label573
label48:
	add r2, r1, #4
	cmp r4, r2
	ble label50
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label50
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label50
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label50
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label50
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label50
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label50
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label50
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label50
	b label616
label50:
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label212
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label212
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label212
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label212
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label212
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label212
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label212
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label212
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label212
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label212
label617:
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label212
	b label617
label212:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r4, r1
	ble label15
	mov r3, #0
	cmp r4, r3
	ble label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r4, r3
	ble label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r4, r3
	ble label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r4, r3
	ble label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r4, r3
	ble label42
	b label522
label616:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label50
	b label616
label612:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	b label612
label588:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	b label570
label573:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label48
label615:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label48
	b label615
label587:
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label10
label621:
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label10
	b label621
