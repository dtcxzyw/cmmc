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
	bge label16
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label15
	b label884
label16:
	mov r0, #65
	bl _sysy_starttime
	mov r0, #0
	str r0, [sp, #16]
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label162
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label33
	mov r1, #0
	add r3, r1, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label24
	b label32
label162:
	mov r0, #0
	ldr r3, [sp, #4]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label223
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label97
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	b label583
label223:
	mov r0, #0
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label227
	ldr r3, [sp, #4]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label50
	mov r1, #0
	add r3, r1, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label41
	b label49
label227:
	mov r0, #0
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label53
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label93
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label76
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label93
	b label375
label583:
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label97
	b label877
label114:
	add r0, r0, #1
	ldr r3, [sp, #4]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label223
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label97
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label97
	b label877
label97:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label113
	ldr r3, [sp, #12]
	add r3, r3, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #8
	ble label601
	ldr r7, [r6, r0, lsl #2]
	mov r4, #8
	mov r9, #0
	b label110
label601:
	mov r8, #0
	ldr r4, [r6, r0, lsl #2]
	add r6, r8, #8
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label104
label103:
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
	bge label104
	b label103
label104:
	add r6, r8, #8
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label664
	b label108
label106:
	ldr r6, [r3, r5, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label113
	mov r5, r6
	b label106
label113:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label97
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label97
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	b label942
label110:
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
	bge label785
	mov r9, r4
	mov r4, r8
	b label110
label785:
	mov r8, r4
	ldr r4, [r6, r0, lsl #2]
	add r6, r8, #8
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label104
	b label103
label664:
	mov r5, r8
	b label106
label108:
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
	bge label664
	b label108
label28:
	mov r3, #0
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label33
	b label28
label33:
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label162
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label33
	mov r1, #0
	add r3, r1, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label24
	b label32
label942:
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label97
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	b label942
label877:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	b label942
label45:
	mov r3, #0
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label50
	b label45
label50:
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label227
	ldr r3, [sp, #4]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label50
	mov r1, #0
	add r3, r1, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label41
	b label49
label871:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label93
	b label935
label93:
	add r0, r0, #1
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label53
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label93
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label76
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label93
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label76
	b label871
label375:
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label76
	b label871
label935:
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label76
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label93
	b label935
label76:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label92
	ldr r3, [sp, #4]
	add r3, r3, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #8
	ble label393
	b label872
label89:
	ldr r6, [r3, r5, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label92
	mov r5, r6
	b label89
label92:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label93
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label76
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label93
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label76
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label93
	b label935
label872:
	ldr r7, [r6, r0, lsl #2]
	mov r4, #8
	mov r9, #0
	b label79
label393:
	mov r8, #0
	ldr r4, [r6, r0, lsl #2]
	add r6, r8, #8
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label86
	b label91
label86:
	add r6, r8, #8
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label465
	b label88
label465:
	mov r5, r8
	b label89
label79:
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
	bge label451
	mov r9, r4
	mov r4, r8
	b label79
label451:
	mov r8, r4
	ldr r4, [r6, r0, lsl #2]
	add r6, r8, #8
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label86
label91:
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
	bge label86
	b label91
label88:
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
	bge label465
	b label88
label24:
	add r3, r1, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label26
label31:
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
	bge label26
	b label31
label26:
	add r3, r1, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label28
label30:
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
	bge label28
	b label30
label41:
	add r3, r1, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label43
label48:
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
	bge label43
	b label48
label43:
	add r3, r1, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label45
	b label47
label32:
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
	bge label24
	b label32
label53:
	ldr r0, [sp, #16]
	add r0, r0, #1
	cmp r0, #5
	bge label293
	str r0, [sp, #16]
	mov r0, #0
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label162
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label33
	mov r1, #0
	add r3, r1, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label24
	b label32
label293:
	mov r2, #0
	mov r4, r2
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label57
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label71
	b label866
label49:
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
	b label49
label47:
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
	bge label45
	b label47
label8:
	add r4, r4, #1
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label126
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label8
	b label845
label15:
	add r4, r4, #1
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label16
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label15
	b label884
label845:
	ldr r3, [sp, #8]
	add r6, r3, r4, lsl #12
	mov r5, #0
label6:
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	mov r5, r0
	b label6
label884:
	ldr r3, [sp, #4]
	add r6, r3, r4, lsl #12
	mov r5, #0
label13:
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label15
	mov r5, r0
	b label13
label866:
	ldr r3, [sp, #4]
	add r3, r3, r2, lsl #12
	mov r1, r4
	mov r0, #0
	add r4, r0, #8
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label64
	b label63
label64:
	add r4, r0, #8
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label67
label70:
	add r5, r3, r0, lsl #2
	ldr r6, [r3, r0, lsl #2]
	ldr r0, [r5, #4]
	add r1, r1, r6
	add r0, r1, r0
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
	bge label67
	b label70
label67:
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label346
	b label67
label346:
	mov r4, r1
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label57
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label71
	b label866
label63:
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
	bge label64
	b label63
label71:
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label57
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label71
	b label866
label57:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
