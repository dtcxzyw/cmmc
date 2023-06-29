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
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	str r3, [sp, #8]
	movw r3, #:lower16:B
	movt r3, #:upper16:B
	str r3, [sp, #4]
	movw r3, #:lower16:C
	movt r3, #:upper16:C
	str r3, [sp, #12]
	mov r4, #0
	cmp r4, r0
	bge label126
	cmp r0, #0
	ble label8
	b label845
label126:
	mov r4, #0
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label11
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label114
	b label892
label11:
	mov r0, #65
	bl _sysy_starttime
	mov r0, #0
	str r0, [sp, #16]
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label148
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label17
	mov r1, #0
	add r3, r1, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label20
	b label28
label148:
	mov r0, #0
	ldr r3, [sp, #4]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label209
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label109
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label93
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label109
	b label569
label209:
	mov r0, #0
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label213
	ldr r3, [sp, #4]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label34
	mov r1, #0
	add r3, r1, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label37
	b label45
label213:
	mov r0, #0
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label48
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label88
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label72
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label88
	b label361
label45:
	add r4, r2, r1, lsl #2
	mov r5, #0
	str r5, [r2, r1, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	str r5, [r4, #16]
	str r5, [r4, #20]
	str r5, [r4, #24]
	str r5, [r4, #28]
	mov r1, r3
	add r3, r3, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label37
	b label45
label872:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label88
	b label939
label88:
	add r0, r0, #1
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label48
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label88
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label72
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label88
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label72
	b label872
label569:
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label93
	b label882
label939:
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label72
	b label957
label72:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label71
	ldr r3, [sp, #4]
	add r3, r3, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #8
	ble label380
	b label912
label380:
	mov r8, #0
	ldr r4, [r6, r0, lsl #2]
	add r6, r8, #8
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label79
	b label78
label79:
	add r6, r8, #8
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label443
	b label81
label443:
	mov r5, r8
	b label82
label71:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label88
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label72
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label88
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label72
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label88
	b label939
label82:
	ldr r6, [r3, r5, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label71
	mov r5, r6
	b label82
label78:
	add r5, r3, r8, lsl #2
	ldr r9, [r3, r8, lsl #2]
	add r7, r2, r8, lsl #2
	ldr r10, [r2, r8, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r3, r8, lsl #2]
	ldr r8, [r5, #4]
	ldr r9, [r7, #4]
	mla r8, r4, r9, r8
	str r8, [r5, #4]
	ldr r8, [r5, #8]
	ldr r9, [r7, #8]
	mla r8, r4, r9, r8
	str r8, [r5, #8]
	ldr r8, [r5, #12]
	ldr r9, [r7, #12]
	mla r8, r4, r9, r8
	str r8, [r5, #12]
	ldr r8, [r5, #16]
	ldr r9, [r7, #16]
	mla r8, r4, r9, r8
	str r8, [r5, #16]
	ldr r8, [r5, #20]
	ldr r9, [r7, #20]
	mla r8, r4, r9, r8
	str r8, [r5, #20]
	ldr r8, [r5, #24]
	ldr r9, [r7, #24]
	mla r8, r4, r9, r8
	str r8, [r5, #24]
	ldr r8, [r5, #28]
	ldr r7, [r7, #28]
	mla r7, r4, r7, r8
	str r7, [r5, #28]
	mov r8, r6
	add r6, r6, #8
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label79
	b label78
label85:
	add r5, r3, r9, lsl #2
	ldr r10, [r3, r9, lsl #2]
	add r8, r2, r9, lsl #2
	ldr r11, [r2, r9, lsl #2]
	mla r10, r7, r11, r10
	str r10, [r3, r9, lsl #2]
	ldr r9, [r5, #4]
	ldr r10, [r8, #4]
	mla r9, r7, r10, r9
	str r9, [r5, #4]
	ldr r9, [r5, #8]
	ldr r10, [r8, #8]
	mla r9, r7, r10, r9
	str r9, [r5, #8]
	ldr r9, [r5, #12]
	ldr r10, [r8, #12]
	mla r9, r7, r10, r9
	str r9, [r5, #12]
	ldr r9, [r5, #16]
	ldr r10, [r8, #16]
	mla r9, r7, r10, r9
	str r9, [r5, #16]
	ldr r9, [r5, #20]
	ldr r10, [r8, #20]
	mla r9, r7, r10, r9
	str r9, [r5, #20]
	ldr r9, [r5, #24]
	ldr r10, [r8, #24]
	mla r9, r7, r10, r9
	str r9, [r5, #24]
	ldr r9, [r5, #28]
	ldr r8, [r8, #28]
	mla r8, r7, r8, r9
	str r8, [r5, #28]
	add r8, r4, #8
	ldr r5, [sp, #0]
	cmp r8, r5
	bge label564
	mov r9, r4
	mov r4, r8
	b label85
label564:
	mov r8, r4
	ldr r4, [r6, r0, lsl #2]
	add r6, r8, #8
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label79
	b label78
label81:
	add r5, r3, r8, lsl #2
	ldr r9, [r3, r8, lsl #2]
	add r7, r2, r8, lsl #2
	ldr r10, [r2, r8, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r3, r8, lsl #2]
	ldr r8, [r5, #4]
	ldr r9, [r7, #4]
	mla r8, r4, r9, r8
	str r8, [r5, #4]
	ldr r8, [r5, #8]
	ldr r9, [r7, #8]
	mla r8, r4, r9, r8
	str r8, [r5, #8]
	ldr r8, [r5, #12]
	ldr r9, [r7, #12]
	mla r8, r4, r9, r8
	str r8, [r5, #12]
	ldr r8, [r5, #16]
	ldr r9, [r7, #16]
	mla r8, r4, r9, r8
	str r8, [r5, #16]
	ldr r8, [r5, #20]
	ldr r9, [r7, #20]
	mla r8, r4, r9, r8
	str r8, [r5, #20]
	ldr r8, [r5, #24]
	ldr r9, [r7, #24]
	mla r8, r4, r9, r8
	str r8, [r5, #24]
	ldr r8, [r5, #28]
	ldr r7, [r7, #28]
	mla r7, r4, r7, r8
	str r7, [r5, #28]
	mov r8, r6
	add r6, r6, #8
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label443
	b label81
label882:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label109
label946:
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label93
	b label964
label93:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label92
	ldr r3, [sp, #12]
	add r3, r3, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #8
	ble label588
	b label920
label92:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label109
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label93
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label109
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label93
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label109
	b label946
label102:
	ldr r6, [r3, r5, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label92
	mov r5, r6
	b label102
label588:
	mov r8, #0
	ldr r4, [r6, r0, lsl #2]
	add r6, r8, #8
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label99
label104:
	add r5, r3, r8, lsl #2
	ldr r9, [r3, r8, lsl #2]
	add r7, r2, r8, lsl #2
	ldr r10, [r2, r8, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r3, r8, lsl #2]
	ldr r8, [r5, #4]
	ldr r9, [r7, #4]
	mla r8, r4, r9, r8
	str r8, [r5, #4]
	ldr r8, [r5, #8]
	ldr r9, [r7, #8]
	mla r8, r4, r9, r8
	str r8, [r5, #8]
	ldr r8, [r5, #12]
	ldr r9, [r7, #12]
	mla r8, r4, r9, r8
	str r8, [r5, #12]
	ldr r8, [r5, #16]
	ldr r9, [r7, #16]
	mla r8, r4, r9, r8
	str r8, [r5, #16]
	ldr r8, [r5, #20]
	ldr r9, [r7, #20]
	mla r8, r4, r9, r8
	str r8, [r5, #20]
	ldr r8, [r5, #24]
	ldr r9, [r7, #24]
	mla r8, r4, r9, r8
	str r8, [r5, #24]
	ldr r8, [r5, #28]
	ldr r7, [r7, #28]
	mla r7, r4, r7, r8
	str r7, [r5, #28]
	mov r8, r6
	add r6, r6, #8
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label99
	b label104
label99:
	add r6, r8, #8
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label601
	b label101
label601:
	mov r5, r8
	b label102
label101:
	add r5, r3, r8, lsl #2
	ldr r9, [r3, r8, lsl #2]
	add r7, r2, r8, lsl #2
	ldr r10, [r2, r8, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r3, r8, lsl #2]
	ldr r8, [r5, #4]
	ldr r9, [r7, #4]
	mla r8, r4, r9, r8
	str r8, [r5, #4]
	ldr r8, [r5, #8]
	ldr r9, [r7, #8]
	mla r8, r4, r9, r8
	str r8, [r5, #8]
	ldr r8, [r5, #12]
	ldr r9, [r7, #12]
	mla r8, r4, r9, r8
	str r8, [r5, #12]
	ldr r8, [r5, #16]
	ldr r9, [r7, #16]
	mla r8, r4, r9, r8
	str r8, [r5, #16]
	ldr r8, [r5, #20]
	ldr r9, [r7, #20]
	mla r8, r4, r9, r8
	str r8, [r5, #20]
	ldr r8, [r5, #24]
	ldr r9, [r7, #24]
	mla r8, r4, r9, r8
	str r8, [r5, #24]
	ldr r8, [r5, #28]
	ldr r7, [r7, #28]
	mla r7, r4, r7, r8
	str r7, [r5, #28]
	mov r8, r6
	add r6, r6, #8
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label601
	b label101
label964:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label109
	b label946
label109:
	add r0, r0, #1
	ldr r3, [sp, #4]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label209
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label109
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label93
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label109
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label93
	b label882
label48:
	ldr r0, [sp, #16]
	add r0, r0, #1
	cmp r0, #5
	bge label279
	str r0, [sp, #16]
	mov r0, #0
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label148
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label17
	mov r1, #0
	add r3, r1, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label20
	b label28
label279:
	mov r2, #0
	mov r4, r2
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label52
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label66
	b label867
label361:
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label72
	b label872
label957:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label88
	b label939
label920:
	ldr r7, [r6, r0, lsl #2]
	mov r4, #8
	mov r9, #0
label106:
	add r5, r3, r9, lsl #2
	ldr r10, [r3, r9, lsl #2]
	add r8, r2, r9, lsl #2
	ldr r11, [r2, r9, lsl #2]
	mla r10, r7, r11, r10
	str r10, [r3, r9, lsl #2]
	ldr r9, [r5, #4]
	ldr r10, [r8, #4]
	mla r9, r7, r10, r9
	str r9, [r5, #4]
	ldr r9, [r5, #8]
	ldr r10, [r8, #8]
	mla r9, r7, r10, r9
	str r9, [r5, #8]
	ldr r9, [r5, #12]
	ldr r10, [r8, #12]
	mla r9, r7, r10, r9
	str r9, [r5, #12]
	ldr r9, [r5, #16]
	ldr r10, [r8, #16]
	mla r9, r7, r10, r9
	str r9, [r5, #16]
	ldr r9, [r5, #20]
	ldr r10, [r8, #20]
	mla r9, r7, r10, r9
	str r9, [r5, #20]
	ldr r9, [r5, #24]
	ldr r10, [r8, #24]
	mla r9, r7, r10, r9
	str r9, [r5, #24]
	ldr r9, [r5, #28]
	ldr r8, [r8, #28]
	mla r8, r7, r8, r9
	str r8, [r5, #28]
	add r8, r4, #8
	ldr r5, [sp, #0]
	cmp r8, r5
	bge label772
	mov r9, r4
	mov r4, r8
	b label106
label772:
	mov r8, r4
	ldr r4, [r6, r0, lsl #2]
	add r6, r8, #8
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label99
	b label104
label912:
	ldr r7, [r6, r0, lsl #2]
	mov r4, #8
	mov r9, #0
	b label85
label867:
	ldr r3, [sp, #4]
	add r3, r3, r2, lsl #12
	mov r1, r4
	mov r0, #0
	add r4, r0, #8
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label59
	b label58
label62:
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label332
	b label62
label332:
	mov r4, r1
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label52
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label66
	b label867
label66:
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label52
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label66
	b label867
label20:
	add r3, r1, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label22
label27:
	add r4, r2, r1, lsl #2
	mov r5, #0
	str r5, [r2, r1, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	str r5, [r4, #16]
	str r5, [r4, #20]
	str r5, [r4, #24]
	str r5, [r4, #28]
	mov r1, r3
	add r3, r3, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label22
	b label27
label22:
	add r3, r1, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label25
	b label24
label25:
	mov r3, #0
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label17
	b label25
label37:
	add r3, r1, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label39
	b label44
label39:
	add r3, r1, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label41
label43:
	add r4, r2, r1, lsl #2
	mov r5, #0
	str r5, [r2, r1, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	str r5, [r4, #16]
	str r5, [r4, #20]
	str r5, [r4, #24]
	str r5, [r4, #28]
	mov r1, r3
	add r3, r3, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label41
	b label43
label41:
	mov r3, #0
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label34
	b label41
label17:
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label148
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label17
	mov r1, #0
	add r3, r1, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label20
label28:
	add r4, r2, r1, lsl #2
	mov r5, #0
	str r5, [r2, r1, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	str r5, [r4, #16]
	str r5, [r4, #20]
	str r5, [r4, #24]
	str r5, [r4, #28]
	mov r1, r3
	add r3, r3, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label20
	b label28
label24:
	add r4, r2, r1, lsl #2
	mov r5, #0
	str r5, [r2, r1, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	str r5, [r4, #16]
	str r5, [r4, #20]
	str r5, [r4, #24]
	str r5, [r4, #28]
	mov r1, r3
	add r3, r3, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label25
	b label24
label34:
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label213
	ldr r3, [sp, #4]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label34
	mov r1, #0
	add r3, r1, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label37
	b label45
label44:
	add r4, r2, r1, lsl #2
	mov r5, #0
	str r5, [r2, r1, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	str r5, [r4, #16]
	str r5, [r4, #20]
	str r5, [r4, #24]
	str r5, [r4, #28]
	mov r1, r3
	add r3, r3, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label39
	b label44
label59:
	add r4, r0, #8
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label62
label65:
	add r5, r3, r0, lsl #2
	ldr r0, [r3, r0, lsl #2]
	ldr r6, [r5, #4]
	add r0, r1, r0
	add r0, r0, r6
	ldr r1, [r5, #8]
	add r0, r0, r1
	ldr r1, [r5, #12]
	add r0, r0, r1
	ldr r1, [r5, #16]
	add r0, r0, r1
	ldr r1, [r5, #20]
	add r0, r0, r1
	ldr r1, [r5, #24]
	add r0, r0, r1
	ldr r1, [r5, #28]
	add r1, r0, r1
	mov r0, r4
	add r4, r4, #8
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label62
	b label65
label58:
	add r5, r3, r0, lsl #2
	ldr r0, [r3, r0, lsl #2]
	ldr r6, [r5, #4]
	add r0, r1, r0
	add r0, r0, r6
	ldr r1, [r5, #8]
	add r0, r0, r1
	ldr r1, [r5, #12]
	add r0, r0, r1
	ldr r1, [r5, #16]
	add r0, r0, r1
	ldr r1, [r5, #20]
	add r0, r0, r1
	ldr r1, [r5, #24]
	add r0, r0, r1
	ldr r1, [r5, #28]
	add r1, r0, r1
	mov r0, r4
	add r4, r4, #8
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label59
	b label58
label845:
	ldr r3, [sp, #8]
	add r6, r3, r4, lsl #12
	mov r5, #0
	b label6
label8:
	add r4, r4, #1
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label126
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label8
	b label845
label6:
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	mov r5, r0
	b label6
label114:
	add r4, r4, #1
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label11
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label114
label892:
	ldr r3, [sp, #4]
	add r6, r3, r4, lsl #12
	mov r5, #0
label112:
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	mov r5, r0
	b label112
label52:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
