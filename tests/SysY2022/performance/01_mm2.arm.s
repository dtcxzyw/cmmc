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
	ble label5
	mov r5, #0
	add r6, r1, r4, lsl #12
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
	b label917
label126:
	mov r4, #0
	ldr r5, [sp, #0]
	cmp r5, r4
	ble label16
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
	b label922
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
	cmp r5, r3
	ble label26
	b label700
label162:
	mov r2, #0
	ldr r5, [sp, #4]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label211
	mov r3, #0
	cmp r5, r3
	ble label114
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
	add r3, r3, #1
	cmp r5, r3
	ble label114
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
	add r3, r3, #1
	cmp r5, r3
	ble label114
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
	add r3, r3, #1
	cmp r5, r3
	ble label114
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
	b label905
label26:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label28
label182:
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
	ble label28
	b label182
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
	cmp r5, r3
	ble label42
label710:
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
	ble label42
	b label225
label215:
	mov r2, #0
	ldr r5, [sp, #12]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label74
	mov r3, #0
	cmp r5, r3
	ble label73
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label57
	add r3, r3, #1
	cmp r5, r3
	ble label73
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label57
	add r3, r3, #1
	cmp r5, r3
	ble label73
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label57
	add r3, r3, #1
	cmp r5, r3
	ble label73
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label57
	add r3, r3, #1
	cmp r5, r3
	ble label73
	b label932
label73:
	add r2, r2, #1
	ldr r5, [sp, #12]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label74
	mov r3, #0
	cmp r5, r3
	ble label73
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label57
	add r3, r3, #1
	cmp r5, r3
	ble label73
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label57
	add r3, r3, #1
	cmp r5, r3
	ble label73
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label57
	add r3, r3, #1
	cmp r5, r3
	ble label73
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label57
	add r3, r3, #1
	cmp r5, r3
	ble label73
	b label932
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
	cmp r5, r3
	ble label26
	b label700
label405:
	mov r0, #0
	mov r4, r0
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label78
	cmp r5, #0
	ble label80
	ldr r5, [sp, #4]
	mov r3, #0
	add r1, r5, r0, lsl #12
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label86
	b label93
label78:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #28
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label905:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label114
	b label943
label722:
	ldr r6, [r4, r2, lsl #2]
	mov r7, #4
	mov r9, #0
	b label60
label56:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label73
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label57
	add r3, r3, #1
	cmp r5, r3
	ble label73
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label57
	add r3, r3, #1
	cmp r5, r3
	ble label73
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label57
	add r3, r3, #1
	cmp r5, r3
	ble label73
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label57
	add r3, r3, #1
	cmp r5, r3
	ble label73
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label57
	b label970
label57:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label56
	ldr r5, [sp, #4]
	add r1, r5, r3, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #4
	ble label286
	b label722
label286:
	mov r7, #0
	ldr r4, [r4, r2, lsl #2]
	mov r8, r7
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label329
	b label67
label63:
	ldr r4, [r4, r2, lsl #2]
	mov r8, r7
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label329
	b label67
label329:
	mov r7, r8
	add r6, r8, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label360
	b label70
label360:
	mov r5, r7
	ldr r6, [r1, r7, lsl #2]
	ldr r7, [r0, r7, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label56
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label56
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label56
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label56
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label56
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label56
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label56
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label56
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label56
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label56
	b label1014
label70:
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
	ble label360
	b label70
label1014:
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label56
	b label1014
label67:
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
	ble label329
	b label67
label60:
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
	ble label63
	mov r9, r7
	mov r7, r8
	b label60
label943:
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
	b label981
label98:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label97
	ldr r5, [sp, #12]
	add r1, r5, r3, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #4
	ble label482
	b label738
label114:
	add r2, r2, #1
	ldr r5, [sp, #4]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label211
	mov r3, #0
	cmp r5, r3
	ble label114
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
	add r3, r3, #1
	cmp r5, r3
	ble label114
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
	add r3, r3, #1
	cmp r5, r3
	ble label114
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
	add r3, r3, #1
	cmp r5, r3
	ble label114
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
	add r3, r3, #1
	cmp r5, r3
	ble label114
	b label943
label97:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label114
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
	add r3, r3, #1
	cmp r5, r3
	ble label114
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
	add r3, r3, #1
	cmp r5, r3
	ble label114
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
	add r3, r3, #1
	cmp r5, r3
	ble label114
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
	add r3, r3, #1
	cmp r5, r3
	ble label114
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
	b label981
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
	ble label97
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label97
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label97
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label97
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label97
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label97
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label97
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label97
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label97
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label97
	b label1024
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
	mov r8, r6
	str r7, [r5, #12]
	add r6, r6, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label490
	b label109
label1024:
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label97
	b label1024
label981:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label114
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label98
	b label981
label932:
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label57
label970:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label73
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label57
	b label970
label28:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label31
label187:
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
	ble label31
	b label187
label31:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label22
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label22
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label22
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label22
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label22
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label22
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label22
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label22
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label22
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label22
label1002:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label22
	b label1002
label738:
	ldr r6, [r4, r2, lsl #2]
	mov r7, #4
	mov r9, #0
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
label42:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label45
	b label230
label45:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label48
label240:
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
	ble label48
	b label240
label48:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label39
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label39
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label39
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label39
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label39
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label39
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label39
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label39
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label39
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label39
label1006:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label39
	b label1006
label230:
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
	ble label45
	b label230
label225:
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
	cmp r5, r3
	ble label42
	b label710
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
	cmp r5, r3
	ble label26
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
	ble label26
label172:
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
	ble label26
	b label172
label5:
	add r4, r4, #1
	ldr r5, [sp, #0]
	cmp r5, r4
	ble label126
	cmp r5, #0
	ble label5
	ldr r1, [sp, #8]
	mov r5, #0
	add r6, r1, r4, lsl #12
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
label917:
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
label993:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label5
	b label993
label922:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	b label960
label15:
	add r4, r4, #1
	ldr r5, [sp, #0]
	cmp r5, r4
	ble label16
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
	b label922
label960:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
label998:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	b label998
label86:
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label425
	b label89
label425:
	mov r2, r4
	ldr r4, [r1, r3, lsl #2]
	ldr r5, [sp, #0]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label447
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label447
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label447
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label447
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label447
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label447
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label447
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label447
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label447
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label447
	b label1018
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
	ble label425
	b label89
label447:
	mov r4, r2
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label78
	cmp r5, #0
	ble label80
	ldr r5, [sp, #4]
	mov r3, #0
	add r1, r5, r0, lsl #12
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label86
	b label93
label1018:
	ldr r4, [r1, r3, lsl #2]
	ldr r5, [sp, #0]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label447
	b label1018
label93:
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
	b label93
label80:
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label78
	cmp r5, #0
	ble label80
	ldr r5, [sp, #4]
	mov r3, #0
	add r1, r5, r0, lsl #12
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label86
	b label93
