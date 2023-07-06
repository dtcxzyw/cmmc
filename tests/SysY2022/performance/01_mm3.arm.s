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
	mov r4, #0
	movw r1, #:lower16:A
	str r0, [sp, #0]
	mov r5, r0
	movt r1, #:upper16:A
	movw r5, #:lower16:B
	str r1, [sp, #8]
	movt r5, #:upper16:B
	str r5, [sp, #4]
	movw r5, #:lower16:C
	movt r5, #:upper16:C
	str r5, [sp, #12]
	mov r5, r0
	cmp r0, r4
	ble label126
	cmp r0, #0
	ble label8
	mov r5, #0
	add r6, r1, r4, lsl #12
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	b label949
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
	b label890
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
	ble label33
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label24
	b label689
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
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label96
	b label908
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
	b label908
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
label700:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	mov r2, r3
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
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
	ble label40
	mov r3, #0
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label62
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label64
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label62
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label64
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label62
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label64
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label62
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label64
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label62
	b label899
label40:
	ldr r0, [sp, #16]
	add r0, r0, #1
	cmp r0, #5
	bge label226
	str r0, [sp, #16]
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r5, r1
	ble label162
	ldr r5, [sp, #12]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label33
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label24
	b label689
label226:
	mov r0, #0
	mov r4, r0
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label44
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label46
	ldr r5, [sp, #4]
	mov r3, #0
	add r1, r5, r0, lsl #12
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label52
label59:
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
	cmp r5, r2
	ble label52
	b label59
label899:
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label64
	b label933
label62:
	add r2, r2, #1
	ldr r5, [sp, #12]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label40
	mov r3, #0
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label62
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label64
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label62
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label64
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label62
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label64
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label62
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label64
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label62
	b label899
label908:
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
label942:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label96
	b label976
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
	b label980
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
	b label942
label980:
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label114
	b label980
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
	mov r8, r6
	str r7, [r5, #12]
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
	ldr r5, [sp, #0]
	add r8, r7, #4
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
label976:
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
	b label942
label962:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label33
	b label962
label33:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r5, r1
	ble label162
	ldr r5, [sp, #12]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label33
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label24
	b label689
label933:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label62
	b label967
label64:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label80
	ldr r5, [sp, #4]
	add r1, r5, r3, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #4
	ble label303
	ldr r6, [r4, r2, lsl #2]
	mov r7, #4
	mov r9, #0
	b label67
label80:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label62
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label64
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label62
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label64
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label62
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label64
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label62
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label64
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label62
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label64
	b label933
label303:
	mov r7, #0
	ldr r4, [r4, r2, lsl #2]
	mov r8, r7
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label346
label74:
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
	mov r8, r6
	str r7, [r5, #12]
	add r6, r6, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label346
	b label74
label70:
	ldr r4, [r4, r2, lsl #2]
	mov r8, r7
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label346
	b label74
label346:
	mov r7, r8
	add r6, r8, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label377
label77:
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
	ble label377
	b label77
label377:
	mov r5, r7
	ldr r6, [r1, r7, lsl #2]
	ldr r7, [r0, r7, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label80
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label80
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label80
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label80
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label80
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label80
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label80
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label80
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label80
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label80
label972:
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label80
	b label972
label67:
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
	ldr r5, [sp, #0]
	add r8, r7, #4
	cmp r5, r8
	ble label70
	mov r9, r7
	mov r7, r8
	b label67
label967:
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label64
	b label933
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
label85:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label87
label432:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	mov r2, r3
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
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
label437:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	mov r2, r3
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label90
	b label437
label90:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label82
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label82
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label82
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label82
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label82
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label82
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label82
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label82
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label82
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label82
label975:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label82
	b label975
label24:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label27
label176:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	mov r2, r3
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label27
	b label176
label27:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label30
label186:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	mov r2, r3
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label30
	b label186
label30:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label33
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label33
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label33
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label33
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label33
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label33
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label33
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label33
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label33
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label33
	b label962
label427:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	mov r2, r3
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label85
	b label427
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
	b label700
label689:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	mov r2, r3
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label24
label171:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	mov r2, r3
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label24
	b label171
label949:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
label885:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	b label919
label8:
	add r4, r4, #1
	ldr r5, [sp, #0]
	cmp r5, r4
	ble label126
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label8
	ldr r1, [sp, #8]
	mov r5, #0
	add r6, r1, r4, lsl #12
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	b label885
label919:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
label953:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	b label953
label890:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	b label924
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
	b label890
label924:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
label958:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	b label958
label52:
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label246
	b label55
label246:
	mov r2, r4
	ldr r4, [r1, r3, lsl #2]
	ldr r5, [sp, #0]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label268
	ldr r4, [r1, r3, lsl #2]
	ldr r5, [sp, #0]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label268
	ldr r4, [r1, r3, lsl #2]
	ldr r5, [sp, #0]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label268
	ldr r4, [r1, r3, lsl #2]
	ldr r5, [sp, #0]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label268
	ldr r4, [r1, r3, lsl #2]
	ldr r5, [sp, #0]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label268
	ldr r4, [r1, r3, lsl #2]
	ldr r5, [sp, #0]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label268
	ldr r4, [r1, r3, lsl #2]
	ldr r5, [sp, #0]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label268
	ldr r4, [r1, r3, lsl #2]
	ldr r5, [sp, #0]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label268
	ldr r4, [r1, r3, lsl #2]
	ldr r5, [sp, #0]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label268
	ldr r4, [r1, r3, lsl #2]
	ldr r5, [sp, #0]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label268
	b label966
label55:
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
	cmp r5, r2
	ble label246
	b label55
label268:
	mov r4, r2
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label44
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label46
	ldr r5, [sp, #4]
	mov r3, #0
	add r1, r5, r0, lsl #12
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label52
	b label59
label966:
	ldr r4, [r1, r3, lsl #2]
	ldr r5, [sp, #0]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label268
	b label966
label46:
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label44
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label46
	ldr r5, [sp, #4]
	mov r3, #0
	add r1, r5, r0, lsl #12
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label52
	b label59
label44:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #28
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
