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
	mov r5, r0
	movw r6, #:lower16:A
	movt r6, #:upper16:A
	movw r7, #:lower16:B
	movt r7, #:upper16:B
	movw r4, #:lower16:C
	movt r4, #:upper16:C
	mov r8, #0
	cmp r8, r0
	bge label9
	cmp r0, #0
	ble label5
	movw r0, #8040
	mla r10, r8, r0, r6
	mov r9, #0
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label5
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label5
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label5
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label5
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label5
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label5
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label5
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label5
	b label510
label9:
	cmp r5, #0
	ble label10
	mov r8, #0
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	b label600
label10:
	mov r0, #59
	bl _sysy_starttime
	mov r0, #0
	cmp r5, #0
	ble label86
	mov r1, #0
	add r2, r1, #4
	cmp r2, r5
	bge label46
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label46
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label46
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label46
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label46
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label46
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label46
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label46
	b label601
label86:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label15
	mov r3, #0
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r3, r5
	bge label39
label535:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
label579:
	add r3, r3, #1
	cmp r3, r5
	bge label39
	b label623
label39:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label15
	mov r3, #0
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r3, r5
	bge label39
	b label535
label41:
	ldr r9, [r4, r1, lsl #2]
	ldr r10, [r7, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r4, r1, lsl #2]
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	b label579
label15:
	cmp r5, #0
	ble label95
	mov r1, #0
	add r2, r1, #4
	cmp r2, r5
	bge label19
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label19
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label19
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label19
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label19
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label19
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label19
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label19
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label19
	b label561
label95:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label35
	mov r3, #0
	cmp r3, r5
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	add r3, r3, #1
	cmp r3, r5
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	add r3, r3, #1
	cmp r3, r5
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	add r3, r3, #1
	cmp r3, r5
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	b label484
label561:
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label19
	b label605
label19:
	add r2, r1, #4
	cmp r2, r5
	bge label21
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label21
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label21
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label21
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label21
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label21
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label21
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label21
	b label564
label34:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label35
	mov r3, #0
	cmp r3, r5
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	add r3, r3, #1
	cmp r3, r5
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	add r3, r3, #1
	cmp r3, r5
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	add r3, r3, #1
	cmp r3, r5
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	add r3, r3, #1
	cmp r3, r5
	bge label34
	b label528
label50:
	mov r2, #0
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label212
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label212
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label212
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label212
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label212
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label212
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label212
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label212
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label212
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label212
	b label632
label212:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label15
	mov r3, #0
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r3, r5
	bge label39
	b label535
label528:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
label572:
	add r3, r3, #1
	cmp r3, r5
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	b label572
label23:
	mov r2, #0
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label122
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label122
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label122
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label122
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label122
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label122
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label122
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label122
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label122
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label122
	b label610
label122:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label35
	mov r3, #0
	cmp r3, r5
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	add r3, r3, #1
	cmp r3, r5
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	add r3, r3, #1
	cmp r3, r5
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	add r3, r3, #1
	cmp r3, r5
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
label484:
	add r3, r3, #1
	cmp r3, r5
	bge label34
	b label528
label35:
	add r0, r0, #1
	cmp r0, #50
	bge label36
	cmp r5, #0
	ble label86
	mov r1, #0
	add r2, r1, #4
	cmp r2, r5
	bge label46
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label46
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label46
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label46
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label46
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label46
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label46
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label46
	b label622
label36:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label623:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	b label579
label33:
	ldr r9, [r7, r1, lsl #2]
	ldr r10, [r4, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r7, r1, lsl #2]
	add r3, r3, #1
	cmp r3, r5
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	add r3, r3, #1
	cmp r3, r5
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	add r3, r3, #1
	cmp r3, r5
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	add r3, r3, #1
	cmp r3, r5
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	add r3, r3, #1
	cmp r3, r5
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	b label572
label610:
	mov r2, #0
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label122
	b label610
label632:
	mov r2, #0
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label212
	b label632
label510:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label5
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label5
label598:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label5
	b label598
label5:
	add r8, r8, #1
	cmp r8, r5
	bge label9
	cmp r5, #0
	ble label5
	movw r0, #8040
	mla r10, r8, r0, r6
	mov r9, #0
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label5
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label5
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label5
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label5
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label5
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label5
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label5
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label5
	b label510
label21:
	add r2, r1, #4
	cmp r2, r5
	bge label23
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label23
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label23
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label23
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label23
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label23
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label23
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label23
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label23
	b label609
label605:
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label19
	b label605
label564:
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label21
label608:
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label21
	b label608
label609:
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label23
	b label609
label622:
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label46
label583:
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label46
	b label627
label601:
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label46
	b label583
label46:
	add r2, r1, #4
	cmp r2, r5
	bge label48
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label48
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label48
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label48
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label48
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label48
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label48
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label48
	b label586
label48:
	add r2, r1, #4
	cmp r2, r5
	bge label50
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label50
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label50
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label50
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label50
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label50
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label50
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label50
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label50
label631:
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label50
	b label631
label627:
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label46
	b label627
label586:
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label48
label630:
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label48
	b label630
label600:
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
label636:
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	b label636
