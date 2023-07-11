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
	ble label94
	cmp r0, #0
	ble label84
	b label390
label94:
	mov r4, #0
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label6
	cmp r6, #0
	ble label79
label391:
	ldr r5, [sp, #4]
	mov r6, #0
	add r5, r5, r4, lsl #12
	b label77
label6:
	mov r0, #65
	bl _sysy_starttime
	mov r0, #0
	movw r5, #:lower16:C
	movt r5, #:upper16:C
	str r5, [sp, #12]
	mov r1, #0
	ldr r6, [sp, #0]
	cmp r6, r1
	ble label104
	cmp r6, #0
	ble label12
	mov r4, #0
	add r2, r5, r1, lsl #12
	add r3, r4, #4
	cmp r6, r3
	ble label17
	b label460
label104:
	mov r2, #0
	ldr r5, [sp, #4]
	ldr r6, [sp, #0]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	ble label133
	mov r3, #0
	cmp r6, r3
	ble label33
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label25
	add r3, r3, #1
	cmp r6, r3
	ble label33
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label25
	add r3, r3, #1
	cmp r6, r3
	ble label33
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label25
	add r3, r3, #1
	cmp r6, r3
	ble label33
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label25
	b label556
label133:
	mov r1, #0
	ldr r6, [sp, #0]
	cmp r6, r1
	ble label206
	cmp r6, #0
	ble label74
	ldr r5, [sp, #4]
	mov r4, #0
	add r2, r5, r1, lsl #12
	add r3, r4, #4
	cmp r6, r3
	ble label71
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
	ble label71
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
	ble label71
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
	ble label71
label644:
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
	ble label71
	b label644
label25:
	ldr r6, [sp, #0]
	cmp r6, #0
	ble label32
	ldr r5, [sp, #12]
	add r5, r5, r3, lsl #12
	cmp r6, #4
	ble label155
	b label433
label155:
	mov r7, #0
label27:
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label32
	b label27
label433:
	mov r7, #4
	mov r9, #0
label29:
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
	ble label27
	mov r9, r7
	mov r7, r8
	b label29
label32:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label33
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label25
	add r3, r3, #1
	cmp r6, r3
	ble label33
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label25
	add r3, r3, #1
	cmp r6, r3
	ble label33
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label25
	add r3, r3, #1
	cmp r6, r3
	ble label33
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label25
	add r3, r3, #1
	cmp r6, r3
	ble label33
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label25
	b label609
label460:
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
	ble label17
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
	ble label17
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
	ble label17
	b label628
label206:
	mov r2, #0
	ldr r5, [sp, #12]
	ldr r6, [sp, #0]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	ble label38
	mov r3, #0
	cmp r6, r3
	ble label66
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label57
	add r3, r3, #1
	cmp r6, r3
	ble label66
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label57
	add r3, r3, #1
	cmp r6, r3
	ble label66
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label57
	add r3, r3, #1
	cmp r6, r3
	ble label66
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label57
	add r3, r3, #1
	cmp r6, r3
	ble label66
	b label594
label38:
	add r0, r0, #1
	cmp r0, #5
	bge label217
	mov r1, #0
	ldr r6, [sp, #0]
	cmp r6, r1
	ble label104
	cmp r6, #0
	ble label12
	ldr r5, [sp, #12]
	mov r4, #0
	add r2, r5, r1, lsl #12
	add r3, r4, #4
	cmp r6, r3
	ble label17
	b label460
label217:
	mov r4, #0
	mov r0, r4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label42
	cmp r6, #0
	ble label52
	ldr r5, [sp, #4]
	mov r3, #0
	add r1, r5, r4, lsl #12
	add r2, r3, #4
	cmp r6, r2
	ble label49
	b label48
label594:
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label57
	b label619
label66:
	add r2, r2, #1
	ldr r5, [sp, #12]
	ldr r6, [sp, #0]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	ble label38
	mov r3, #0
	cmp r6, r3
	ble label66
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label57
	add r3, r3, #1
	cmp r6, r3
	ble label66
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label57
	add r3, r3, #1
	cmp r6, r3
	ble label66
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label57
	add r3, r3, #1
	cmp r6, r3
	ble label66
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label57
	add r3, r3, #1
	cmp r6, r3
	ble label66
	b label594
label556:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label33
label582:
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label25
label609:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label33
	b label635
label33:
	add r2, r2, #1
	ldr r5, [sp, #4]
	ldr r6, [sp, #0]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	ble label133
	mov r3, #0
	cmp r6, r3
	ble label33
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label25
	add r3, r3, #1
	cmp r6, r3
	ble label33
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label25
	add r3, r3, #1
	cmp r6, r3
	ble label33
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label25
	add r3, r3, #1
	cmp r6, r3
	ble label33
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label25
	add r3, r3, #1
	cmp r6, r3
	ble label33
	b label582
label635:
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label25
	b label609
label619:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label66
	b label647
label57:
	ldr r6, [sp, #0]
	cmp r6, #0
	ble label58
	ldr r5, [sp, #4]
	add r5, r5, r3, lsl #12
	cmp r6, #4
	ble label276
	mov r7, #4
	mov r9, #0
	b label60
label276:
	mov r7, #0
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label58
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label58
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label58
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label58
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label58
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label58
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label58
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label58
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label58
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label58
	b label63
label60:
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
	ble label63
	mov r9, r7
	mov r7, r8
	b label60
label63:
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label58
	b label63
label647:
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label57
	b label619
label58:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label66
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label57
	add r3, r3, #1
	cmp r6, r3
	ble label66
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label57
	add r3, r3, #1
	cmp r6, r3
	ble label66
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label57
	add r3, r3, #1
	cmp r6, r3
	ble label66
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label57
	add r3, r3, #1
	cmp r6, r3
	ble label66
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label57
	b label619
label628:
	add r5, r2, r4, lsl #2
	mov r6, #0
	str r6, [r2, r4, lsl #2]
	mov r4, r3
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	b label14
label12:
	add r1, r1, #1
	ldr r6, [sp, #0]
	cmp r6, r1
	ble label104
	cmp r6, #0
	ble label12
	ldr r5, [sp, #12]
	mov r4, #0
	add r2, r5, r1, lsl #12
	add r3, r4, #4
	cmp r6, r3
	ble label17
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
	ble label17
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
	ble label17
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
	ble label17
	b label628
label14:
	add r3, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label17
	b label628
label71:
	mov r3, #0
	str r3, [r2, r4, lsl #2]
	ldr r6, [sp, #0]
	add r4, r4, #1
	cmp r6, r4
	ble label74
	b label71
label74:
	add r1, r1, #1
	ldr r6, [sp, #0]
	cmp r6, r1
	ble label206
	cmp r6, #0
	ble label74
	ldr r5, [sp, #4]
	mov r4, #0
	add r2, r5, r1, lsl #12
	add r3, r4, #4
	cmp r6, r3
	ble label71
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
	ble label71
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
	ble label71
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
	ble label71
	b label644
label77:
	bl getint
	str r0, [r5, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label79
	mov r6, r0
	b label77
label17:
	mov r3, #0
	str r3, [r2, r4, lsl #2]
	ldr r6, [sp, #0]
	add r4, r4, #1
	cmp r6, r4
	ble label12
	b label17
label48:
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
	ble label49
	b label48
label253:
	mov r4, r2
label52:
	add r0, r0, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label42
	cmp r6, #0
	ble label52
	ldr r5, [sp, #4]
	mov r3, #0
	add r1, r5, r0, lsl #12
	add r2, r3, #4
	cmp r6, r2
	ble label49
	b label48
label646:
	mov r4, r2
label49:
	ldr r2, [r1, r3, lsl #2]
	ldr r6, [sp, #0]
	add r3, r3, #1
	add r2, r4, r2
	cmp r6, r3
	ble label253
	b label646
label84:
	add r5, r5, #1
	ldr r6, [sp, #0]
	cmp r6, r5
	ble label94
	cmp r6, #0
	ble label84
	b label390
label79:
	add r4, r4, #1
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label6
	cmp r6, #0
	ble label79
	b label391
label390:
	ldr r4, [sp, #8]
	mov r6, #0
	add r4, r4, r5, lsl #12
label82:
	bl getint
	str r0, [r4, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label84
	mov r6, r0
	b label82
label42:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #20
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
