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
	cmp r0, r4
	ble label126
	cmp r0, #0
	ble label5
	add r6, r1, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label5
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label5
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label5
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label5
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label5
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label5
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label5
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label5
	b label875
label126:
	mov r4, #0
	ldr r5, [sp, #0]
	cmp r5, r4
	ble label16
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
	cmp r5, r0
	ble label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	b label880
label16:
	mov r0, #65
	bl _sysy_starttime
	mov r0, #0
	str r0, [sp, #16]
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r5, r1
	ble label162
	ldr r5, [sp, #12]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label22
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label26
label689:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label26
	b label172
label162:
	mov r2, #0
	ldr r5, [sp, #4]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label211
	mov r3, #0
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label96
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label96
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label96
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label96
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
	b label864
label211:
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r5, r1
	ble label215
	ldr r5, [sp, #4]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label82
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label85
label698:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label85
	b label427
label215:
	mov r2, #0
	ldr r5, [sp, #12]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label61
	mov r3, #0
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label42
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label44
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label42
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label44
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label42
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label44
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label42
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label44
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label42
label886:
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label44
	b label918
label42:
	add r2, r2, #1
	ldr r5, [sp, #12]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label61
	mov r3, #0
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label42
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label44
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label42
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label44
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label42
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label44
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label42
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label44
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label42
	b label886
label61:
	ldr r0, [sp, #16]
	add r0, r0, #1
	cmp r0, #5
	bge label362
	str r0, [sp, #16]
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r5, r1
	ble label162
	ldr r5, [sp, #12]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label22
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label26
	b label689
label427:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label85
	b label427
label864:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label96
label896:
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
label928:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label96
	b label960
label96:
	add r2, r2, #1
	ldr r5, [sp, #4]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label211
	mov r3, #0
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label96
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label96
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label96
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label96
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label96
	b label896
label98:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label114
	ldr r5, [sp, #12]
	add r1, r5, r3, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #4
	ble label482
	ldr r6, [r4, r2, lsl #2]
	mov r7, #4
	mov r9, #0
	b label111
label482:
	mov r8, #0
	ldr r4, [r4, r2, lsl #2]
	add r6, r8, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label490
	b label109
label490:
	mov r7, r8
	add r6, r8, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label495
	b label108
label495:
	mov r5, r7
	ldr r6, [r1, r7, lsl #2]
	ldr r7, [r0, r7, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label114
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label114
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label114
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label114
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label114
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label114
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label114
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label114
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label114
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label114
	b label964
label114:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label96
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label96
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label96
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label96
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label96
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
	b label928
label964:
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label114
	b label964
label44:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label60
	ldr r5, [sp, #4]
	add r1, r5, r3, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #4
	ble label243
	ldr r6, [r4, r2, lsl #2]
	mov r7, #4
	mov r9, #0
	b label57
label243:
	mov r8, #0
	ldr r4, [r4, r2, lsl #2]
	add r6, r8, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label251
	b label55
label251:
	mov r7, r8
	add r6, r8, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label256
	b label54
label256:
	mov r5, r7
	ldr r6, [r1, r7, lsl #2]
	ldr r7, [r0, r7, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label60
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label60
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label60
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label60
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label60
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label60
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label60
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label60
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label60
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label60
	b label954
label60:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label42
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label44
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label42
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label44
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label42
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label44
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label42
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label44
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label42
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label44
	b label918
label954:
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label60
	b label954
label108:
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
	cmp r5, r6
	ble label495
	b label108
label109:
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
	cmp r5, r6
	ble label490
	b label109
label111:
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
	cmp r5, r8
	ble label594
	mov r9, r7
	mov r7, r8
	b label111
label594:
	mov r8, r7
	ldr r4, [r4, r2, lsl #2]
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label490
	b label109
label54:
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
	cmp r5, r6
	ble label256
	b label54
label55:
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
	cmp r5, r6
	ble label251
	b label55
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
	cmp r5, r8
	ble label355
	mov r9, r7
	mov r7, r8
	b label57
label355:
	mov r8, r7
	ldr r4, [r4, r2, lsl #2]
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label251
	b label55
label960:
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
	b label928
label918:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label42
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label44
	b label918
label85:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label87
label432:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label87
	b label432
label87:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label90
	b label437
label90:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label82
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label82
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label82
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label82
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label82
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label82
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label82
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label82
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label82
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label82
label959:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label82
	b label959
label437:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label90
	b label437
label82:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r5, r1
	ble label215
	ldr r5, [sp, #4]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label82
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label85
	b label698
label172:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label26
	b label172
label362:
	mov r0, #0
	mov r6, r0
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label65
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label67
	ldr r5, [sp, #4]
	add r1, r5, r0, lsl #12
	mov r4, #0
	mov r3, r0
	add r2, r4, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label73
	b label80
label22:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r5, r1
	ble label162
	ldr r5, [sp, #12]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label22
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label26
	b label689
label26:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label29
	b label182
label29:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label31
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
	cmp r5, r3
	ble label31
	b label192
label31:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label22
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label22
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label22
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label22
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label22
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label22
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label22
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label22
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label22
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label22
label947:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label22
	b label947
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
	cmp r5, r3
	ble label29
	b label182
label875:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label5
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label5
label939:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label5
	b label939
label880:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	b label912
label15:
	add r4, r4, #1
	ldr r5, [sp, #0]
	cmp r5, r4
	ble label16
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
	cmp r5, r0
	ble label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	b label880
label912:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
label944:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	b label944
label73:
	add r2, r4, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label382
	b label79
label382:
	mov r2, r4
	ldr r4, [r1, r4, lsl #2]
	add r3, r3, r4
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label391
	ldr r4, [r1, r2, lsl #2]
	add r3, r3, r4
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label391
	ldr r4, [r1, r2, lsl #2]
	add r3, r3, r4
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label391
	ldr r4, [r1, r2, lsl #2]
	add r3, r3, r4
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label391
	ldr r4, [r1, r2, lsl #2]
	add r3, r3, r4
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label391
	ldr r4, [r1, r2, lsl #2]
	add r3, r3, r4
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label391
	ldr r4, [r1, r2, lsl #2]
	add r3, r3, r4
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label391
	ldr r4, [r1, r2, lsl #2]
	add r3, r3, r4
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label391
	ldr r4, [r1, r2, lsl #2]
	add r3, r3, r4
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label391
	ldr r4, [r1, r2, lsl #2]
	add r3, r3, r4
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label391
	b label957
label391:
	mov r6, r3
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label65
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label67
	ldr r5, [sp, #4]
	add r1, r5, r0, lsl #12
	mov r4, #0
	add r2, r4, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label73
	b label80
label79:
	add r5, r1, r4, lsl #2
	ldr r4, [r1, r4, lsl #2]
	add r3, r3, r4
	ldr r4, [r5, #4]
	add r3, r3, r4
	ldr r4, [r5, #8]
	add r3, r3, r4
	ldr r4, [r5, #12]
	add r3, r3, r4
	mov r4, r2
	add r2, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label382
	b label79
label80:
	add r5, r1, r4, lsl #2
	ldr r4, [r1, r4, lsl #2]
	add r3, r3, r4
	ldr r4, [r5, #4]
	add r3, r3, r4
	ldr r4, [r5, #8]
	add r3, r3, r4
	ldr r4, [r5, #12]
	add r3, r3, r4
	mov r4, r2
	add r2, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label73
	b label80
label957:
	ldr r4, [r1, r2, lsl #2]
	add r3, r3, r4
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label391
	b label957
label5:
	add r4, r4, #1
	ldr r5, [sp, #0]
	cmp r5, r4
	ble label126
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label5
	ldr r1, [sp, #8]
	add r6, r1, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label5
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label5
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label5
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label5
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label5
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label5
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label5
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label5
	b label875
label67:
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label65
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label67
	ldr r5, [sp, #4]
	add r1, r5, r0, lsl #12
	mov r4, #0
	mov r3, r6
	add r2, r4, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label73
	b label80
label65:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r6
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
