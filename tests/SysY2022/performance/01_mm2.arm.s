.arch armv7ve
.data
.bss
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
	movw r1, #:lower16:A
	movt r1, #:upper16:A
	str r1, [sp, #8]
	movw r5, #:lower16:B
	movt r5, #:upper16:B
	str r5, [sp, #4]
	movw r5, #:lower16:C
	movt r5, #:upper16:C
	str r5, [sp, #12]
	mov r4, #0
	mov r5, r0
	cmp r4, r0
	bge label126
	cmp r0, #0
	ble label8
	add r6, r1, r4, lsl #12
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
	b label960
label126:
	mov r4, #0
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label16
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label15
	ldr r5, [sp, #4]
	add r6, r5, r4, lsl #12
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
	b label899
label16:
	mov r0, #65
	bl _sysy_starttime
	mov r0, #0
	str r0, [sp, #16]
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label162
	ldr r5, [sp, #12]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label103
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label107
	b label693
label162:
	mov r2, #0
	ldr r5, [sp, #4]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label168
	mov r3, #0
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label83
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label85
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label83
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label85
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label83
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label85
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label83
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label85
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label83
	b label916
label168:
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label172
	ldr r5, [sp, #4]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label26
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label29
	b label695
label172:
	mov r2, #0
	ldr r5, [sp, #12]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label61
	mov r3, #0
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label60
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label44
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label60
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label44
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label60
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label44
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label60
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label44
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label60
	b label906
label916:
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label85
	b label951
label976:
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label44
	b label941
label44:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label43
	ldr r5, [sp, #4]
	add r1, r5, r3, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #4
	ble label243
	b label707
label243:
	mov r8, #0
	ldr r4, [r4, r2, lsl #2]
	add r6, r8, #4
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label251
	b label50
label251:
	mov r7, r8
	add r6, r8, #4
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label282
	b label53
label282:
	mov r5, r7
	ldr r6, [r1, r7, lsl #2]
	ldr r7, [r0, r7, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
label982:
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	b label982
label85:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label101
	ldr r5, [sp, #12]
	add r1, r5, r3, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #4
	ble label439
	ldr r6, [r4, r2, lsl #2]
	mov r7, #4
	mov r9, #0
	b label98
label439:
	mov r8, #0
	ldr r4, [r4, r2, lsl #2]
	add r6, r8, #4
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label447
	b label96
label447:
	mov r7, r8
	add r6, r8, #4
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label452
	b label93
label452:
	mov r5, r7
	ldr r6, [r1, r7, lsl #2]
	ldr r7, [r0, r7, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label101
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label101
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label101
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label101
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label101
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label101
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label101
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label101
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label101
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label101
	b label991
label93:
	add r5, r1, r7, lsl #2
	ldr r9, [r1, r7, lsl #2]
	add r8, r0, r7, lsl #2
	ldr r10, [r0, r7, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r1, r7, lsl #2]
	ldr r7, [r5, #4]
	ldr r9, [r8, #4]
	mla r7, r4, r9, r7
	str r7, [r5, #4]
	ldr r7, [r5, #8]
	ldr r9, [r8, #8]
	mla r7, r4, r9, r7
	str r7, [r5, #8]
	ldr r7, [r5, #12]
	ldr r8, [r8, #12]
	mla r7, r4, r8, r7
	str r7, [r5, #12]
	mov r7, r6
	add r6, r6, #4
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label452
	b label93
label96:
	add r5, r1, r8, lsl #2
	ldr r9, [r1, r8, lsl #2]
	add r7, r0, r8, lsl #2
	ldr r10, [r0, r8, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r1, r8, lsl #2]
	ldr r8, [r5, #4]
	ldr r9, [r7, #4]
	mla r8, r4, r9, r8
	str r8, [r5, #4]
	ldr r8, [r5, #8]
	ldr r9, [r7, #8]
	mla r8, r4, r9, r8
	str r8, [r5, #8]
	ldr r8, [r5, #12]
	ldr r7, [r7, #12]
	mla r7, r4, r7, r8
	str r7, [r5, #12]
	mov r8, r6
	add r6, r6, #4
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label447
	b label96
label101:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label83
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label85
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label83
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label85
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label83
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label85
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label83
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label85
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label83
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label85
	b label951
label991:
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label101
	b label991
label43:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label60
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label44
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label60
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label44
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label60
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label44
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label60
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label44
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label60
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label44
	b label941
label98:
	add r5, r1, r9, lsl #2
	ldr r10, [r1, r9, lsl #2]
	add r8, r0, r9, lsl #2
	ldr r11, [r0, r9, lsl #2]
	mla r10, r6, r11, r10
	str r10, [r1, r9, lsl #2]
	ldr r9, [r5, #4]
	ldr r10, [r8, #4]
	mla r9, r6, r10, r9
	str r9, [r5, #4]
	ldr r9, [r5, #8]
	ldr r10, [r8, #8]
	mla r9, r6, r10, r9
	str r9, [r5, #8]
	ldr r9, [r5, #12]
	ldr r8, [r8, #12]
	mla r8, r6, r8, r9
	str r8, [r5, #12]
	add r8, r7, #4
	ldr r5, [sp, #0]
	cmp r8, r5
	bge label551
	mov r9, r7
	mov r7, r8
	b label98
label551:
	mov r8, r7
	ldr r4, [r4, r2, lsl #2]
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label447
	b label96
label53:
	add r5, r1, r7, lsl #2
	ldr r9, [r1, r7, lsl #2]
	add r8, r0, r7, lsl #2
	ldr r10, [r0, r7, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r1, r7, lsl #2]
	ldr r7, [r5, #4]
	ldr r9, [r8, #4]
	mla r7, r4, r9, r7
	str r7, [r5, #4]
	ldr r7, [r5, #8]
	ldr r9, [r8, #8]
	mla r7, r4, r9, r7
	str r7, [r5, #8]
	ldr r7, [r5, #12]
	ldr r8, [r8, #12]
	mla r7, r4, r8, r7
	str r7, [r5, #12]
	mov r7, r6
	add r6, r6, #4
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label282
	b label53
label50:
	add r5, r1, r8, lsl #2
	ldr r9, [r1, r8, lsl #2]
	add r7, r0, r8, lsl #2
	ldr r10, [r0, r8, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r1, r8, lsl #2]
	ldr r8, [r5, #4]
	ldr r9, [r7, #4]
	mla r8, r4, r9, r8
	str r8, [r5, #4]
	ldr r8, [r5, #8]
	ldr r9, [r7, #8]
	mla r8, r4, r9, r8
	str r8, [r5, #8]
	ldr r8, [r5, #12]
	ldr r7, [r7, #12]
	mla r7, r4, r7, r8
	str r7, [r5, #12]
	mov r8, r6
	add r6, r6, #4
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label251
	b label50
label57:
	add r5, r1, r9, lsl #2
	ldr r10, [r1, r9, lsl #2]
	add r8, r0, r9, lsl #2
	ldr r11, [r0, r9, lsl #2]
	mla r10, r6, r11, r10
	str r10, [r1, r9, lsl #2]
	ldr r9, [r5, #4]
	ldr r10, [r8, #4]
	mla r9, r6, r10, r9
	str r9, [r5, #4]
	ldr r9, [r5, #8]
	ldr r10, [r8, #8]
	mla r9, r6, r10, r9
	str r9, [r5, #8]
	ldr r9, [r5, #12]
	ldr r8, [r8, #12]
	mla r8, r6, r8, r9
	str r8, [r5, #12]
	add r8, r7, #4
	ldr r5, [sp, #0]
	cmp r8, r5
	bge label355
	mov r9, r7
	mov r7, r8
	b label57
label355:
	mov r8, r7
	ldr r4, [r4, r2, lsl #2]
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label251
	b label50
label951:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label83
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label85
	b label951
label83:
	add r2, r2, #1
	ldr r5, [sp, #4]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label168
	mov r3, #0
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label83
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label85
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label83
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label85
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label83
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label85
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label83
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label85
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label83
	b label916
label906:
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label44
	b label941
label60:
	add r2, r2, #1
	ldr r5, [sp, #12]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label61
	mov r3, #0
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label60
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label44
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label60
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label44
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label60
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label44
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label60
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label44
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label60
	b label906
label61:
	ldr r0, [sp, #16]
	add r0, r0, #1
	cmp r0, #5
	bge label362
	str r0, [sp, #16]
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label162
	ldr r5, [sp, #12]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label103
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label107
	b label693
label941:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label60
	b label976
label707:
	ldr r6, [r4, r2, lsl #2]
	mov r7, #4
	mov r9, #0
	b label57
label29:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label31
	b label187
label31:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label34
	b label192
label34:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label26
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label26
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label26
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label26
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label26
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label26
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label26
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label26
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label26
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label26
label974:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label26
	b label974
label187:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label31
	b label187
label192:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label34
	b label192
label695:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label29
	b label182
label26:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label172
	ldr r5, [sp, #4]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label26
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label29
	b label695
label182:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label29
	b label182
label693:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label107
label563:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label107
	b label563
label103:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label162
	ldr r5, [sp, #12]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label103
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label107
	b label693
label107:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label109
	b label573
label109:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label111
label578:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label111
	b label578
label111:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label103
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label103
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label103
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label103
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label103
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label103
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label103
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label103
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label103
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label103
label994:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label103
	b label994
label573:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label109
	b label573
label362:
	mov r0, #0
	mov r4, r0
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label65
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label67
	ldr r5, [sp, #4]
	add r1, r5, r0, lsl #12
	mov r3, #0
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label73
label80:
	add r5, r1, r3, lsl #2
	ldr r3, [r1, r3, lsl #2]
	add r3, r4, r3
	ldr r4, [r5, #4]
	add r3, r3, r4
	ldr r4, [r5, #8]
	add r3, r3, r4
	ldr r4, [r5, #12]
	add r4, r3, r4
	mov r3, r2
	add r2, r2, #4
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label73
	b label80
label960:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
label894:
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
label964:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	b label964
label899:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label15
	b label934
label15:
	add r4, r4, #1
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label16
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label15
	ldr r5, [sp, #4]
	add r6, r5, r4, lsl #12
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
	b label899
label934:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label15
label969:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label15
	b label969
label73:
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label382
	b label79
label382:
	mov r2, r4
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label391
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label391
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label391
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label391
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label391
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label391
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label391
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label391
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label391
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label391
	b label985
label391:
	mov r4, r2
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label65
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label67
	ldr r5, [sp, #4]
	add r1, r5, r0, lsl #12
	mov r3, #0
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label73
	b label80
label79:
	add r5, r1, r3, lsl #2
	ldr r3, [r1, r3, lsl #2]
	add r3, r4, r3
	ldr r4, [r5, #4]
	add r3, r3, r4
	ldr r4, [r5, #8]
	add r3, r3, r4
	ldr r4, [r5, #12]
	add r4, r3, r4
	mov r3, r2
	add r2, r2, #4
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label382
	b label79
label985:
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label391
	b label985
label8:
	add r4, r4, #1
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label126
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label8
	ldr r1, [sp, #8]
	add r6, r1, r4, lsl #12
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
	b label894
label67:
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label65
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label67
	ldr r5, [sp, #4]
	add r1, r5, r0, lsl #12
	mov r3, #0
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label73
	b label80
label65:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
