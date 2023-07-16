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
	sub sp, sp, #20
	bl getint
	movw r5, #:lower16:B
	movw r4, #:lower16:A
	str r0, [sp, #0]
	mov r6, r0
	movt r5, #:upper16:B
	movt r4, #:upper16:A
	str r4, [sp, #8]
	str r5, [sp, #4]
	mov r5, #0
	cmp r0, r5
	ble label92
	cmp r0, #0
	ble label5
	b label386
label92:
	mov r4, #0
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label16
	cmp r6, #0
	ble label15
label420:
	ldr r5, [sp, #4]
	mov r6, #0
	add r5, r5, r4, lsl #12
	b label13
label16:
	mov r0, #65
	bl _sysy_starttime
	mov r0, #0
	movw r5, #:lower16:C
	movt r5, #:upper16:C
	str r5, [sp, #12]
	mov r1, #0
	ldr r6, [sp, #0]
	cmp r6, r1
	ble label130
	cmp r6, #0
	ble label22
	mov r4, #0
	add r2, r5, r1, lsl #12
	add r3, r4, #4
	cmp r6, r3
	ble label27
	b label458
label130:
	mov r2, #0
	ldr r5, [sp, #4]
	ldr r6, [sp, #0]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	ble label159
	mov r3, #0
	cmp r6, r3
	ble label42
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label35
	add r3, r3, #1
	cmp r6, r3
	ble label42
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label35
	add r3, r3, #1
	cmp r6, r3
	ble label42
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label35
	add r3, r3, #1
	cmp r6, r3
	ble label42
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label35
	add r3, r3, #1
	cmp r6, r3
	ble label42
	b label574
label42:
	add r2, r2, #1
	ldr r5, [sp, #4]
	ldr r6, [sp, #0]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	ble label159
	mov r3, #0
	cmp r6, r3
	ble label42
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label35
	add r3, r3, #1
	cmp r6, r3
	ble label42
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label35
	add r3, r3, #1
	cmp r6, r3
	ble label42
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label35
	add r3, r3, #1
	cmp r6, r3
	ble label42
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label35
	add r3, r3, #1
	cmp r6, r3
	ble label42
	b label574
label599:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label42
	b label624
label434:
	mov r7, #4
	mov r9, #0
	b label37
label35:
	ldr r6, [sp, #0]
	cmp r6, #0
	ble label34
	ldr r5, [sp, #12]
	add r5, r5, r3, lsl #12
	cmp r6, #4
	ble label181
	b label434
label37:
	add r6, r5, r9, lsl #2
	ldr r10, [r5, r9, lsl #2]
	add r8, r1, r9, lsl #2
	ldr r11, [r1, r9, lsl #2]
	mla r10, r4, r11, r10
	str r10, [r5, r9, lsl #2]
	ldr r9, [r6, #4]
	ldr r10, [r8, #4]
	mla r9, r4, r10, r9
	str r9, [r6, #4]
	ldr r9, [r6, #8]
	ldr r10, [r8, #8]
	mla r9, r4, r10, r9
	str r9, [r6, #8]
	ldr r9, [r6, #12]
	ldr r8, [r8, #12]
	mla r8, r4, r8, r9
	str r8, [r6, #12]
	ldr r6, [sp, #0]
	add r8, r7, #4
	cmp r6, r8
	ble label40
	mov r9, r7
	mov r7, r8
	b label37
label40:
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label34
	b label40
label34:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label42
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label35
	add r3, r3, #1
	cmp r6, r3
	ble label42
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label35
	add r3, r3, #1
	cmp r6, r3
	ble label42
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label35
	add r3, r3, #1
	cmp r6, r3
	ble label42
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label35
	add r3, r3, #1
	cmp r6, r3
	ble label42
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label35
	b label599
label181:
	mov r7, #0
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label34
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label34
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label34
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label34
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label34
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label34
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label34
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label34
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label34
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label34
	b label40
label458:
	add r5, r2, r4, lsl #2
	mov r6, #0
	str r6, [r2, r4, lsl #2]
	mov r4, r3
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r3, r3, #4
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label27
	add r5, r2, r4, lsl #2
	mov r6, #0
	str r6, [r2, r4, lsl #2]
	mov r4, r3
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r3, r3, #4
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label27
	add r5, r2, r4, lsl #2
	mov r6, #0
	str r6, [r2, r4, lsl #2]
	mov r4, r3
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r3, r3, #4
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label27
	b label617
label159:
	mov r1, #0
	ldr r6, [sp, #0]
	cmp r6, r1
	ble label231
	cmp r6, #0
	ble label82
	ldr r5, [sp, #4]
	mov r4, #0
	add r2, r5, r1, lsl #12
	add r3, r4, #4
	cmp r6, r3
	ble label79
	add r5, r2, r4, lsl #2
	mov r6, #0
	str r6, [r2, r4, lsl #2]
	mov r4, r3
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r3, r3, #4
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label79
	add r5, r2, r4, lsl #2
	mov r6, #0
	str r6, [r2, r4, lsl #2]
	mov r4, r3
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r3, r3, #4
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label79
	add r5, r2, r4, lsl #2
	mov r6, #0
	str r6, [r2, r4, lsl #2]
	mov r4, r3
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r3, r3, #4
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label79
	b label632
label231:
	mov r2, #0
	ldr r5, [sp, #12]
	ldr r6, [sp, #0]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	ble label47
	mov r3, #0
	cmp r6, r3
	ble label74
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label66
	add r3, r3, #1
	cmp r6, r3
	ble label74
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label66
	add r3, r3, #1
	cmp r6, r3
	ble label74
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label66
	add r3, r3, #1
	cmp r6, r3
	ble label74
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label66
	b label633
label47:
	add r0, r0, #1
	cmp r0, #5
	bge label242
	mov r1, #0
	ldr r6, [sp, #0]
	cmp r6, r1
	ble label130
	cmp r6, #0
	ble label22
	ldr r5, [sp, #12]
	mov r4, #0
	add r2, r5, r1, lsl #12
	add r3, r4, #4
	cmp r6, r3
	ble label27
	b label458
label242:
	mov r4, #0
	mov r0, r4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label62
	cmp r6, #0
	ble label60
	ldr r5, [sp, #4]
	mov r3, #0
	add r1, r5, r4, lsl #12
	add r2, r3, #4
	cmp r6, r2
	ble label56
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
	ldr r6, [sp, #0]
	cmp r6, r2
	ble label56
	b label59
label633:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label74
label584:
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label66
	b label608
label74:
	add r2, r2, #1
	ldr r5, [sp, #12]
	ldr r6, [sp, #0]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	ble label47
	mov r3, #0
	cmp r6, r3
	ble label74
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label66
	add r3, r3, #1
	cmp r6, r3
	ble label74
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label66
	add r3, r3, #1
	cmp r6, r3
	ble label74
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label66
	add r3, r3, #1
	cmp r6, r3
	ble label74
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label66
	add r3, r3, #1
	cmp r6, r3
	ble label74
	b label584
label608:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label74
	b label634
label68:
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label73
	b label68
label73:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label74
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label66
	add r3, r3, #1
	cmp r6, r3
	ble label74
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label66
	add r3, r3, #1
	cmp r6, r3
	ble label74
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label66
	add r3, r3, #1
	cmp r6, r3
	ble label74
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label66
	add r3, r3, #1
	cmp r6, r3
	ble label74
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label66
	b label608
label634:
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label66
	b label608
label574:
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label35
	b label599
label624:
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label35
	b label599
label66:
	ldr r6, [sp, #0]
	cmp r6, #0
	ble label73
	ldr r5, [sp, #4]
	add r5, r5, r3, lsl #12
	cmp r6, #4
	ble label300
	mov r7, #4
	mov r9, #0
	b label70
label300:
	mov r7, #0
	b label68
label70:
	add r6, r5, r9, lsl #2
	ldr r10, [r5, r9, lsl #2]
	add r8, r1, r9, lsl #2
	ldr r11, [r1, r9, lsl #2]
	mla r10, r4, r11, r10
	str r10, [r5, r9, lsl #2]
	ldr r9, [r6, #4]
	ldr r10, [r8, #4]
	mla r9, r4, r10, r9
	str r9, [r6, #4]
	ldr r9, [r6, #8]
	ldr r10, [r8, #8]
	mla r9, r4, r10, r9
	str r9, [r6, #8]
	ldr r9, [r6, #12]
	ldr r8, [r8, #12]
	mla r8, r4, r8, r9
	str r8, [r6, #12]
	ldr r6, [sp, #0]
	add r8, r7, #4
	cmp r6, r8
	ble label68
	mov r9, r7
	mov r7, r8
	b label70
label632:
	add r5, r2, r4, lsl #2
	mov r6, #0
	str r6, [r2, r4, lsl #2]
	mov r4, r3
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r3, r3, #4
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label79
	b label632
label79:
	mov r3, #0
	str r3, [r2, r4, lsl #2]
	ldr r6, [sp, #0]
	add r4, r4, #1
	cmp r6, r4
	ble label82
	b label79
label82:
	add r1, r1, #1
	ldr r6, [sp, #0]
	cmp r6, r1
	ble label231
	cmp r6, #0
	ble label82
	ldr r5, [sp, #4]
	mov r4, #0
	add r2, r5, r1, lsl #12
	add r3, r4, #4
	cmp r6, r3
	ble label79
	add r5, r2, r4, lsl #2
	mov r6, #0
	str r6, [r2, r4, lsl #2]
	mov r4, r3
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r3, r3, #4
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label79
	add r5, r2, r4, lsl #2
	mov r6, #0
	str r6, [r2, r4, lsl #2]
	mov r4, r3
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r3, r3, #4
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label79
	add r5, r2, r4, lsl #2
	mov r6, #0
	str r6, [r2, r4, lsl #2]
	mov r4, r3
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r3, r3, #4
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label79
	b label632
label617:
	add r5, r2, r4, lsl #2
	mov r6, #0
	str r6, [r2, r4, lsl #2]
	mov r4, r3
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r3, r3, #4
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label27
	b label617
label22:
	add r1, r1, #1
	ldr r6, [sp, #0]
	cmp r6, r1
	ble label130
	cmp r6, #0
	ble label22
	ldr r5, [sp, #12]
	mov r4, #0
	add r2, r5, r1, lsl #12
	add r3, r4, #4
	cmp r6, r3
	ble label27
	add r5, r2, r4, lsl #2
	mov r6, #0
	str r6, [r2, r4, lsl #2]
	mov r4, r3
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r3, r3, #4
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label27
	add r5, r2, r4, lsl #2
	mov r6, #0
	str r6, [r2, r4, lsl #2]
	mov r4, r3
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r3, r3, #4
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label27
	add r5, r2, r4, lsl #2
	mov r6, #0
	str r6, [r2, r4, lsl #2]
	mov r4, r3
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r3, r3, #4
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label27
	b label617
label13:
	bl getint
	str r0, [r5, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label15
	mov r6, r0
	b label13
label27:
	mov r3, #0
	str r3, [r2, r4, lsl #2]
	ldr r6, [sp, #0]
	add r4, r4, #1
	cmp r6, r4
	ble label22
	b label27
label56:
	ldr r2, [r1, r3, lsl #2]
	ldr r6, [sp, #0]
	add r3, r3, #1
	add r2, r4, r2
	cmp r6, r3
	ble label265
	mov r4, r2
	b label56
label265:
	mov r4, r2
	add r0, r0, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label62
	cmp r6, #0
	ble label60
	ldr r5, [sp, #4]
	mov r3, #0
	add r1, r5, r0, lsl #12
	add r2, r3, #4
	cmp r6, r2
	ble label56
	b label59
label5:
	add r5, r5, #1
	ldr r6, [sp, #0]
	cmp r6, r5
	ble label92
	cmp r6, #0
	ble label5
	b label386
label15:
	add r4, r4, #1
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label16
	cmp r6, #0
	ble label15
	b label420
label60:
	add r0, r0, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label62
	cmp r6, #0
	ble label60
	ldr r5, [sp, #4]
	mov r3, #0
	add r1, r5, r0, lsl #12
	add r2, r3, #4
	cmp r6, r2
	ble label56
	b label59
label386:
	ldr r4, [sp, #8]
	mov r6, #0
	add r4, r4, r5, lsl #12
label7:
	bl getint
	str r0, [r4, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label5
	mov r6, r0
	b label7
label62:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #20
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
