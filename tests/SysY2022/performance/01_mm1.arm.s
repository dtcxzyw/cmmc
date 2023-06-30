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
	b label947
label126:
	mov r4, #0
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label16
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label12
	ldr r5, [sp, #4]
	add r6, r5, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	b label892
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
	ble label33
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label24
	b label693
label162:
	mov r2, #0
	ldr r5, [sp, #4]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label211
	mov r3, #0
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label38
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label38
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label38
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label38
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label38
	b label897
label961:
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	b label929
label40:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label56
	ldr r5, [sp, #12]
	add r1, r5, r3, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #4
	ble label233
	ldr r6, [r4, r2, lsl #2]
	mov r7, #4
	mov r9, #0
	b label53
label233:
	mov r8, #0
	ldr r4, [r4, r2, lsl #2]
	add r6, r8, #4
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label241
	b label51
label241:
	mov r7, r8
	add r6, r8, #4
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label246
	b label50
label246:
	mov r5, r7
	ldr r6, [r1, r7, lsl #2]
	ldr r7, [r0, r7, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label56
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label56
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label56
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label56
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label56
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label56
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label56
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label56
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label56
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label56
	b label965
label50:
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
	bge label246
	b label50
label51:
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
	bge label241
	b label51
label929:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label38
	b label961
label965:
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label56
	b label965
label56:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label38
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label38
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label38
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label38
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label38
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	b label929
label53:
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
	bge label345
	mov r9, r7
	mov r7, r8
	b label53
label345:
	mov r8, r7
	ldr r4, [r4, r2, lsl #2]
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label241
	b label51
label211:
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label351
	ldr r5, [sp, #4]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label103
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label107
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
label897:
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	b label929
label38:
	add r2, r2, #1
	ldr r5, [sp, #4]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label211
	mov r3, #0
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label38
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label38
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label38
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label38
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label38
	b label897
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
label29:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label33
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label33
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label33
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label33
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label33
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label33
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label33
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label33
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label33
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label33
	b label959
label33:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label162
	ldr r5, [sp, #12]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label33
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label24
	b label693
label959:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label33
	b label959
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
	bge label24
	b label171
label351:
	mov r2, #0
	ldr r5, [sp, #12]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label82
	mov r3, #0
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label63
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label66
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label63
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label66
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label63
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label66
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label63
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label66
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label63
label905:
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label66
	b label937
label715:
	ldr r6, [r4, r2, lsl #2]
	mov r7, #4
	mov r9, #0
	b label69
label66:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label65
	ldr r5, [sp, #4]
	add r1, r5, r3, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #4
	ble label380
	b label715
label82:
	ldr r0, [sp, #16]
	add r0, r0, #1
	cmp r0, #5
	bge label498
	str r0, [sp, #16]
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label162
	ldr r5, [sp, #12]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label33
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label24
	b label693
label65:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label63
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label66
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label63
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label66
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label63
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label66
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label63
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label66
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label63
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label66
	b label937
label72:
	ldr r4, [r4, r2, lsl #2]
	mov r8, r7
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label423
	b label81
label423:
	mov r7, r8
	add r6, r8, #4
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label428
	b label78
label428:
	mov r5, r7
	ldr r6, [r1, r7, lsl #2]
	ldr r7, [r0, r7, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label65
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label65
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label65
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label65
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label65
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label65
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label65
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label65
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label65
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label65
	b label975
label78:
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
	bge label428
	b label78
label975:
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label65
	b label975
label81:
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
	bge label423
	b label81
label69:
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
	bge label72
	mov r9, r7
	mov r7, r8
	b label69
label937:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label63
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label66
	b label937
label63:
	add r2, r2, #1
	ldr r5, [sp, #12]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label82
	mov r3, #0
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label63
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label66
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label63
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label66
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label63
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label66
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label63
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label66
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label63
	b label905
label380:
	mov r7, #0
	ldr r4, [r4, r2, lsl #2]
	mov r8, r7
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label423
	b label81
label24:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label27
label176:
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
	bge label27
	b label176
label27:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label29
label186:
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
	b label186
label711:
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
	bge label351
	ldr r5, [sp, #4]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label103
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label107
	b label711
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
label978:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label103
	b label978
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
label171:
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
	bge label24
	b label171
label498:
	mov r0, #0
	mov r4, r0
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label86
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label88
	ldr r5, [sp, #4]
	add r1, r5, r0, lsl #12
	mov r3, #0
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label95
	b label94
label86:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label947:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
label887:
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
label951:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	b label951
label12:
	add r4, r4, #1
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label16
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label12
	ldr r5, [sp, #4]
	add r6, r5, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
label892:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
label956:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	b label956
label95:
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label531
	b label101
label531:
	mov r2, r4
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label540
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label540
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label540
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label540
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label540
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label540
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label540
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label540
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label540
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label540
	b label977
label540:
	mov r4, r2
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label86
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label88
	ldr r5, [sp, #4]
	add r1, r5, r0, lsl #12
	mov r3, #0
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label95
	b label94
label101:
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
	bge label531
	b label101
label977:
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label540
	b label977
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
	b label887
label88:
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label86
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label88
	ldr r5, [sp, #4]
	add r1, r5, r0, lsl #12
	mov r3, #0
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label95
label94:
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
	bge label95
	b label94
