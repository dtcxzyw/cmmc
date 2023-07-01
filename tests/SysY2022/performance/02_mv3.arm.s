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
	ble label4
	cmp r0, #0
	ble label52
	movw r0, #8040
	mla r9, r8, r0, r7
	mov r10, #0
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
label554:
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
label644:
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	b label644
label52:
	add r8, r8, #1
	cmp r4, r8
	ble label4
	cmp r4, #0
	ble label52
	movw r0, #8040
	mla r9, r8, r0, r7
	mov r10, #0
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	b label554
label4:
	cmp r4, #0
	ble label5
	mov r8, #0
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	b label640
label5:
	mov r0, #59
	bl _sysy_starttime
	mov r0, #0
	cmp r4, #0
	ble label72
	mov r1, #0
	add r2, r1, #4
	cmp r4, r2
	ble label11
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label11
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label11
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label11
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label11
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label11
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label11
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label11
	b label603
label72:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r4, r1
	ble label27
	mov r3, #0
	cmp r4, r3
	ble label26
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	add r3, r3, #1
	cmp r4, r3
	ble label26
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	add r3, r3, #1
	cmp r4, r3
	ble label26
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	add r3, r3, #1
	cmp r4, r3
	ble label26
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	b label482
label139:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r4, r1
	ble label30
	mov r3, #0
	cmp r4, r3
	ble label37
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	add r3, r3, #1
	cmp r4, r3
	ble label37
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	add r3, r3, #1
	cmp r4, r3
	ble label37
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	add r3, r3, #1
	cmp r4, r3
	ble label37
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	b label623
label30:
	add r0, r0, #1
	cmp r0, #50
	bge label31
	cmp r4, #0
	ble label72
	mov r1, #0
	add r2, r1, #4
	cmp r4, r2
	ble label11
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label11
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label11
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label11
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label11
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label11
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label11
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label11
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label11
	b label560
label31:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r5
	bl putarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label625:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	b label580
label36:
	ldr r9, [r6, r1, lsl #2]
	ldr r10, [r5, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r6, r1, lsl #2]
	add r3, r3, #1
	cmp r4, r3
	ble label37
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	add r3, r3, #1
	cmp r4, r3
	ble label37
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	add r3, r3, #1
	cmp r4, r3
	ble label37
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	add r3, r3, #1
	cmp r4, r3
	ble label37
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	add r3, r3, #1
	cmp r4, r3
	ble label37
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	b label580
label37:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r4, r1
	ble label30
	mov r3, #0
	cmp r4, r3
	ble label37
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	add r3, r3, #1
	cmp r4, r3
	ble label37
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	add r3, r3, #1
	cmp r4, r3
	ble label37
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	add r3, r3, #1
	cmp r4, r3
	ble label37
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	add r3, r3, #1
	cmp r4, r3
	ble label37
label535:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	b label580
label42:
	add r2, r1, #4
	cmp r4, r2
	ble label45
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label45
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label45
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label45
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label45
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label45
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label45
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label45
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label45
	b label633
label45:
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label198
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label198
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label198
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label198
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label198
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label198
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label198
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label198
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label198
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label198
	b label636
label198:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r4, r1
	ble label30
	mov r3, #0
	cmp r4, r3
	ble label37
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	add r3, r3, #1
	cmp r4, r3
	ble label37
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	add r3, r3, #1
	cmp r4, r3
	ble label37
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	add r3, r3, #1
	cmp r4, r3
	ble label37
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	add r3, r3, #1
	cmp r4, r3
	ble label37
	b label535
label580:
	add r3, r3, #1
	cmp r4, r3
	ble label37
	b label625
label623:
	add r3, r3, #1
	cmp r4, r3
	ble label37
	b label535
label26:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r4, r1
	ble label27
	mov r3, #0
	cmp r4, r3
	ble label26
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	add r3, r3, #1
	cmp r4, r3
	ble label26
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	add r3, r3, #1
	cmp r4, r3
	ble label26
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	add r3, r3, #1
	cmp r4, r3
	ble label26
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	add r3, r3, #1
	cmp r4, r3
	ble label26
	b label527
label13:
	add r2, r1, #4
	cmp r4, r2
	ble label16
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label16
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label16
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label16
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label16
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label16
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label16
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label16
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label16
	b label609
label16:
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label104
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label104
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label104
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label104
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label104
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label104
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label104
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label104
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label104
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label104
	b label612
label104:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r4, r1
	ble label27
	mov r3, #0
	cmp r4, r3
	ble label26
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	add r3, r3, #1
	cmp r4, r3
	ble label26
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	add r3, r3, #1
	cmp r4, r3
	ble label26
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	add r3, r3, #1
	cmp r4, r3
	ble label26
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
label482:
	add r3, r3, #1
	cmp r4, r3
	ble label26
	b label527
label572:
	add r3, r3, #1
	cmp r4, r3
	ble label26
	b label617
label24:
	ldr r9, [r5, r1, lsl #2]
	ldr r10, [r6, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r5, r1, lsl #2]
	add r3, r3, #1
	cmp r4, r3
	ble label26
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	add r3, r3, #1
	cmp r4, r3
	ble label26
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	add r3, r3, #1
	cmp r4, r3
	ble label26
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	add r3, r3, #1
	cmp r4, r3
	ble label26
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	add r3, r3, #1
	cmp r4, r3
	ble label26
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	b label572
label27:
	cmp r4, #0
	ble label139
	mov r1, #0
	add r2, r1, #4
	cmp r4, r2
	ble label40
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label40
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label40
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label40
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label40
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label40
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label40
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label40
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label40
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label40
	b label631
label617:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	b label572
label527:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label24
	b label572
label636:
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label198
	b label636
label612:
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label104
	b label612
label40:
	add r2, r1, #4
	cmp r4, r2
	ble label42
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label42
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label42
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label42
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label42
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label42
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label42
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label42
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label42
	b label632
label631:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label40
	b label631
label632:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label42
	b label632
label633:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label45
	b label633
label603:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label11
label560:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label11
	b label605
label11:
	add r2, r1, #4
	cmp r4, r2
	ble label13
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label13
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label13
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label13
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label13
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label13
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label13
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label13
	b label563
label609:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label16
	b label609
label605:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label11
	b label605
label563:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label13
label608:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label13
	b label608
label640:
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	b label640
