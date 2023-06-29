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
	bge label4
	cmp r0, #0
	ble label52
	movw r0, #8040
	mla r10, r8, r0, r6
	mov r9, #0
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label52
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label52
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label52
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label52
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label52
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label52
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label52
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label52
	b label547
label52:
	add r8, r8, #1
	cmp r8, r5
	bge label4
	cmp r5, #0
	ble label52
	movw r0, #8040
	mla r10, r8, r0, r6
	mov r9, #0
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label52
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label52
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label52
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label52
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label52
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label52
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label52
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label52
label547:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label52
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label52
label635:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label52
	b label635
label4:
	cmp r5, #0
	ble label7
	mov r8, #0
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label7
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label7
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label7
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label7
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label7
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label7
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label7
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label7
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label7
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label7
	b label596
label7:
	mov r0, #59
	bl _sysy_starttime
	mov r0, #0
	cmp r5, #0
	ble label80
	mov r1, #0
	add r2, r1, #4
	cmp r2, r5
	bge label43
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label43
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label43
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label43
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label43
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label43
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label43
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label43
	b label597
label43:
	add r2, r1, #4
	cmp r2, r5
	bge label45
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label45
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label45
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label45
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label45
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label45
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label45
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label45
	b label583
label80:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label12
	mov r3, #0
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	b label598
label12:
	cmp r5, #0
	ble label89
	mov r1, #0
	add r2, r1, #4
	cmp r2, r5
	bge label15
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label15
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label15
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label15
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label15
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label15
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label15
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label15
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label15
	b label557
label89:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label32
	mov r3, #0
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	b label480
label557:
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label15
	b label601
label480:
	add r3, r3, #1
	cmp r3, r5
	bge label31
	b label524
label32:
	add r0, r0, #1
	cmp r0, #50
	bge label33
	cmp r5, #0
	ble label80
	mov r1, #0
	add r2, r1, #4
	cmp r2, r5
	bge label43
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label43
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label43
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label43
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label43
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label43
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label43
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label43
	b label618
label531:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	b label575
label39:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label12
	mov r3, #0
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label39
	b label531
label47:
	mov r2, #0
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label206
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label206
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label206
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label206
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label206
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label206
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label206
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label206
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label206
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label206
	b label629
label206:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label12
	mov r3, #0
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label39
	b label531
label524:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	b label568
label31:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label32
	mov r3, #0
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r5
	bge label31
	b label524
label568:
	add r3, r3, #1
	cmp r3, r5
	bge label31
	b label612
label30:
	ldr r9, [r7, r1, lsl #2]
	ldr r10, [r4, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r7, r1, lsl #2]
	add r3, r3, #1
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	b label568
label612:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	b label568
label575:
	add r3, r3, #1
	cmp r3, r5
	bge label39
	b label619
label37:
	ldr r9, [r4, r1, lsl #2]
	ldr r10, [r7, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r4, r1, lsl #2]
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	b label575
label619:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	b label575
label598:
	add r3, r3, #1
	cmp r3, r5
	bge label39
	b label531
label629:
	mov r2, #0
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label206
	b label629
label15:
	add r2, r1, #4
	cmp r2, r5
	bge label18
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label18
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label18
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label18
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label18
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label18
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label18
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label18
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label18
	b label602
label18:
	add r2, r1, #4
	cmp r2, r5
	bge label20
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label20
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label20
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label20
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label20
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label20
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label20
	add r3, r7, r1, lsl #2
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label20
	b label561
label20:
	mov r2, #0
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label116
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label116
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label116
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label116
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label116
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label116
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label116
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label116
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label116
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label116
	b label606
label116:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label32
	mov r3, #0
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	b label480
label606:
	mov r2, #0
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label116
	b label606
label45:
	add r2, r1, #4
	cmp r2, r5
	bge label47
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label47
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label47
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label47
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label47
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label47
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label47
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label47
	add r3, r4, r1, lsl #2
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label47
	b label628
label602:
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label18
	b label602
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
	bge label20
	b label605
label601:
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label15
	b label601
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
	bge label20
	b label605
label618:
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label43
	b label580
label33:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label580:
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label43
label624:
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label43
	b label624
label628:
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label47
	b label628
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
	bge label45
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
	bge label45
	b label627
label597:
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r5
	bge label43
	b label580
label596:
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label7
	b label596
