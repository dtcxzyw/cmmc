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
	ble label8
	add r6, r1, r4, lsl #12
	mov r5, #0
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
	b label958
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
	b label897
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
	ble label25
	b label693
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
	b label881
label211:
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r5, r1
	ble label215
	ldr r5, [sp, #4]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label39
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label42
	b label702
label215:
	mov r2, #0
	ldr r5, [sp, #12]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label74
	mov r3, #0
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label73
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label56
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label73
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label56
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label73
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label56
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label73
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label56
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label73
	b label906
label74:
	ldr r0, [sp, #16]
	add r0, r0, #1
	cmp r0, #5
	bge label405
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
	ble label25
	b label693
label881:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label96
label916:
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
	b label951
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
	b label916
label951:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label96
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
	b label951
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
	b label101
label482:
	mov r7, #0
	ldr r4, [r4, r2, lsl #2]
	mov r8, r7
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label525
	b label108
label556:
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
	b label990
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
	b label951
label990:
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label114
	b label990
label104:
	ldr r4, [r4, r2, lsl #2]
	mov r8, r7
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label525
	b label108
label525:
	mov r7, r8
	add r6, r8, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label556
	b label113
label108:
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
	ble label525
	b label108
label113:
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
	ble label556
	b label113
label101:
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
	ble label104
	mov r9, r7
	mov r7, r8
	b label101
label906:
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label56
	b label941
label73:
	add r2, r2, #1
	ldr r5, [sp, #12]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label74
	mov r3, #0
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label73
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label56
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label73
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label56
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label73
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label56
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label73
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label56
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label73
	b label906
label941:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label73
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label56
	b label941
label56:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label72
	ldr r5, [sp, #4]
	add r1, r5, r3, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #4
	ble label285
	ldr r6, [r4, r2, lsl #2]
	mov r7, #4
	mov r9, #0
	b label59
label285:
	mov r7, #0
	ldr r4, [r4, r2, lsl #2]
	mov r8, r7
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label328
label66:
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
	ble label328
	b label66
label62:
	ldr r4, [r4, r2, lsl #2]
	mov r8, r7
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label328
	b label66
label328:
	mov r7, r8
	add r6, r8, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label359
	b label69
label359:
	mov r5, r7
	ldr r6, [r1, r7, lsl #2]
	ldr r7, [r0, r7, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label72
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label72
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label72
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label72
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label72
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label72
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label72
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label72
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label72
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label72
label981:
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label72
	b label981
label69:
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
	ble label359
	b label69
label59:
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
	ble label62
	mov r9, r7
	mov r7, r8
	b label59
label72:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label73
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label56
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label73
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label56
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label73
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label56
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label73
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label56
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label73
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label56
	b label941
label42:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label44
	b label230
label44:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label47
	b label235
label47:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label39
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label39
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label39
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label39
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label39
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label39
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label39
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label39
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label39
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label39
label974:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label39
	b label974
label25:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label28
label177:
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
	ble label28
	b label177
label28:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label30
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
	cmp r5, r3
	ble label30
	b label187
label30:
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
label970:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label22
	b label970
label235:
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
	ble label47
	b label235
label230:
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
	ble label44
	b label230
label702:
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
	ble label42
	b label225
label39:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r5, r1
	ble label215
	ldr r5, [sp, #4]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label39
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label42
	b label702
label225:
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
	ble label42
	b label225
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
	cmp r5, r3
	ble label25
	b label172
label405:
	mov r0, #0
	mov r4, r0
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label93
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label79
	ldr r5, [sp, #4]
	add r1, r5, r0, lsl #12
	mov r3, #0
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label86
	b label85
label93:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
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
	ble label25
	b label172
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
	ble label25
	b label693
label892:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	b label927
label8:
	add r4, r4, #1
	ldr r5, [sp, #0]
	cmp r5, r4
	ble label126
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
	b label892
label958:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	b label892
label927:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
label962:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	b label962
label897:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	b label932
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
	b label897
label932:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
label967:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	b label967
label85:
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
	ble label86
	b label85
label86:
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label438
	b label89
label438:
	mov r2, r4
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label460
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label460
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label460
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label460
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label460
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label460
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label460
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label460
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label460
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label460
	b label985
label89:
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
	ble label438
	b label89
label985:
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label460
	b label985
label460:
	mov r4, r2
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label93
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label79
	ldr r5, [sp, #4]
	add r1, r5, r0, lsl #12
	mov r3, #0
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label86
	b label85
label79:
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label93
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label79
	ldr r5, [sp, #4]
	add r1, r5, r0, lsl #12
	mov r3, #0
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label86
	b label85
