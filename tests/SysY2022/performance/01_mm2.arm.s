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
label2:
	ldr r5, [sp, #0]
	cmp r5, r4
	ble label126
	b label4
label126:
	mov r4, #0
	b label9
label4:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label5
	b label128
label5:
	add r4, r4, #1
	b label2
label9:
	ldr r5, [sp, #0]
	cmp r5, r4
	ble label11
	b label110
label11:
	mov r0, #65
	bl _sysy_starttime
	mov r0, #0
	str r0, [sp, #16]
	mov r1, #0
	b label14
label110:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label585
	ldr r5, [sp, #4]
	add r6, r5, r4, lsl #12
	mov r5, #0
	b label112
label14:
	ldr r5, [sp, #0]
	cmp r5, r1
	ble label148
	b label16
label148:
	mov r2, #0
	b label29
label16:
	ldr r5, [sp, #12]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label153
	mov r2, #0
	b label17
label153:
	add r1, r1, #1
	b label14
label17:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label19
	b label157
label29:
	ldr r5, [sp, #4]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label197
	mov r3, #0
	b label89
label197:
	mov r1, #0
label31:
	ldr r5, [sp, #0]
	cmp r5, r1
	ble label201
	b label76
label201:
	mov r2, #0
label33:
	ldr r5, [sp, #12]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label56
	mov r3, #0
label35:
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label37
	b label38
label37:
	add r2, r2, #1
	b label33
label38:
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	b label220
label56:
	ldr r0, [sp, #16]
	add r0, r0, #1
	cmp r0, #5
	bge label348
	str r0, [sp, #16]
	mov r1, #0
	b label14
label348:
	mov r0, #0
	mov r4, r0
label57:
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label60
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label62
	b label354
label76:
	ldr r5, [sp, #4]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label408
	mov r2, #0
label77:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label79
	b label412
label89:
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label91
	b label92
label91:
	add r2, r2, #1
	b label29
label92:
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label93
label459:
	add r3, r3, #1
	b label89
label220:
	add r3, r3, #1
	b label35
label93:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label459
	ldr r5, [sp, #12]
	add r1, r5, r3, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #4
	ble label468
	ldr r6, [r4, r2, lsl #2]
	mov r7, #4
	mov r9, #0
	b label106
label468:
	mov r8, #0
	ldr r4, [r4, r2, lsl #2]
label97:
	add r6, r8, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label476
	b label104
label476:
	mov r7, r8
label99:
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label481
	b label101
label481:
	mov r5, r7
	b label102
label101:
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
	b label99
label104:
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
	b label97
label102:
	ldr r6, [r1, r5, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label459
	mov r5, r6
	b label102
label106:
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
	ble label580
	mov r9, r7
	mov r7, r8
	b label106
label580:
	mov r8, r7
	ldr r4, [r4, r2, lsl #2]
	b label97
label40:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label220
	ldr r5, [sp, #4]
	add r1, r5, r3, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #4
	ble label230
	b label229
label230:
	mov r7, #0
	ldr r4, [r4, r2, lsl #2]
	mov r8, r7
label48:
	add r6, r8, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label273
	b label50
label273:
	mov r7, r8
	b label51
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
	b label48
label51:
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label304
	b label53
label304:
	mov r5, r7
	b label54
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
	b label51
label54:
	ldr r6, [r1, r5, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label220
	mov r5, r6
	b label54
label229:
	ldr r6, [r4, r2, lsl #2]
	mov r7, #4
	mov r9, #0
label43:
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
	ble label46
	mov r9, r7
	mov r7, r8
	b label43
label46:
	ldr r4, [r4, r2, lsl #2]
	mov r8, r7
	b label48
label79:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label81
	b label417
label81:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label84
	b label422
label84:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label408
	b label84
label19:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label22
	b label162
label22:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label24
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	b label22
label24:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label153
	b label24
label417:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	b label79
label422:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	b label81
label412:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	b label77
label162:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	b label19
label157:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	b label17
label112:
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label585
	mov r5, r0
	b label112
label408:
	add r1, r1, #1
	b label31
label585:
	add r4, r4, #1
	b label9
label62:
	add r0, r0, #1
	b label57
label128:
	ldr r1, [sp, #8]
	add r6, r1, r4, lsl #12
	mov r5, #0
label7:
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label5
	mov r5, r0
	b label7
label354:
	ldr r5, [sp, #4]
	add r1, r5, r0, lsl #12
	mov r3, #0
label65:
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label68
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
	b label65
label68:
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label368
	b label74
label368:
	mov r2, r4
	b label71
label74:
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
	b label68
label71:
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label377
	b label71
label377:
	mov r4, r2
	add r0, r0, #1
	b label57
label60:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
