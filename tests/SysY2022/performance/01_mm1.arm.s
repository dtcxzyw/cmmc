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
	b label110
label126:
	mov r4, #0
label4:
	ldr r5, [sp, #0]
	cmp r5, r4
	ble label6
	b label105
label6:
	mov r0, #65
	bl _sysy_starttime
	mov r0, #0
	str r0, [sp, #16]
	mov r1, #0
	b label9
label105:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label571
	b label570
label110:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label111
	b label584
label111:
	add r4, r4, #1
	b label2
label9:
	ldr r5, [sp, #0]
	cmp r5, r1
	ble label134
	b label11
label134:
	mov r2, #0
	b label24
label11:
	ldr r5, [sp, #12]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label139
	mov r2, #0
	b label12
label139:
	add r1, r1, #1
	b label9
label12:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label14
	b label143
label24:
	ldr r5, [sp, #4]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label183
	mov r3, #0
	b label84
label183:
	mov r1, #0
label26:
	ldr r5, [sp, #0]
	cmp r5, r1
	ble label187
	b label71
label187:
	mov r2, #0
label28:
	ldr r5, [sp, #12]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label51
	mov r3, #0
label30:
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label197
	b label32
label197:
	add r2, r2, #1
	b label28
label32:
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label34
	b label205
label34:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label205
	ldr r5, [sp, #4]
	add r1, r5, r3, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #4
	ble label215
	b label214
label215:
	mov r7, #0
	ldr r4, [r4, r2, lsl #2]
	mov r8, r7
	b label42
label51:
	ldr r0, [sp, #16]
	add r0, r0, #1
	cmp r0, #5
	bge label334
	str r0, [sp, #16]
	mov r1, #0
	b label9
label334:
	mov r0, #0
	mov r4, r0
label52:
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label55
	b label56
label55:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label56:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label341
	b label340
label71:
	ldr r5, [sp, #4]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label394
	mov r2, #0
label72:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label75
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	b label72
label84:
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label86
	b label87
label86:
	add r2, r2, #1
	b label24
label87:
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label89
	b label445
label89:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label445
	ldr r5, [sp, #12]
	add r1, r5, r3, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #4
	ble label455
	ldr r6, [r4, r2, lsl #2]
	mov r7, #4
	mov r9, #0
	b label102
label455:
	mov r8, #0
	ldr r4, [r4, r2, lsl #2]
	b label93
label42:
	add r6, r8, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label258
	b label44
label258:
	mov r7, r8
	b label45
label44:
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
	b label42
label45:
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label289
	b label47
label289:
	mov r5, r7
	b label48
label47:
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
	b label45
label48:
	ldr r6, [r1, r5, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label205
	mov r5, r6
	b label48
label93:
	add r6, r8, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label463
	b label95
label463:
	mov r7, r8
	b label96
label95:
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
	b label93
label96:
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label494
	b label100
label494:
	mov r5, r7
	b label98
label100:
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
	b label96
label98:
	ldr r6, [r1, r5, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label445
	mov r5, r6
	b label98
label102:
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
	ble label567
	mov r9, r7
	mov r7, r8
	b label102
label567:
	mov r8, r7
	ldr r4, [r4, r2, lsl #2]
	b label93
label445:
	add r3, r3, #1
	b label84
label205:
	add r3, r3, #1
	b label30
label214:
	ldr r6, [r4, r2, lsl #2]
	mov r7, #4
	mov r9, #0
label37:
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
	ble label40
	mov r9, r7
	mov r7, r8
	b label37
label40:
	ldr r4, [r4, r2, lsl #2]
	mov r8, r7
	b label42
label75:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label77
	b label408
label77:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label80
	b label413
label80:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label394
	b label80
label14:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label17
	b label148
label17:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label20
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	b label17
label20:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label139
	b label20
label408:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	b label75
label413:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	b label77
label143:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	b label12
label148:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	b label14
label394:
	add r1, r1, #1
	b label26
label571:
	add r4, r4, #1
	b label4
label341:
	add r0, r0, #1
	b label52
label584:
	ldr r1, [sp, #8]
	add r6, r1, r4, lsl #12
	mov r5, #0
label113:
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label111
	mov r5, r0
	b label113
label570:
	ldr r5, [sp, #4]
	add r6, r5, r4, lsl #12
	mov r5, #0
label107:
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label571
	mov r5, r0
	b label107
label340:
	ldr r5, [sp, #4]
	add r1, r5, r0, lsl #12
	mov r3, #0
label58:
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label62
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
	b label58
label62:
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label366
	b label68
label366:
	mov r2, r4
	b label65
label68:
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
	b label62
label65:
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label375
	b label65
label375:
	mov r4, r2
	add r0, r0, #1
	b label52
