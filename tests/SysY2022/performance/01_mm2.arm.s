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
	b label953
label126:
	mov r4, #0
	ldr r5, [sp, #0]
	cmp r5, r4
	ble label11
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label114
	ldr r5, [sp, #4]
	add r6, r5, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label114
	b label917
label11:
	mov r0, #65
	bl _sysy_starttime
	mov r0, #0
	str r0, [sp, #16]
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r5, r1
	ble label148
	ldr r5, [sp, #12]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label28
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label19
label688:
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
	ble label19
	b label157
label148:
	mov r2, #0
	ldr r5, [sp, #4]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label197
	mov r3, #0
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label91
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label93
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label91
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label93
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label91
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label93
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label91
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label93
	b label873
label157:
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
	ble label19
	b label157
label197:
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r5, r1
	ble label201
	ldr r5, [sp, #4]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label77
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label80
	b label698
label201:
	mov r2, #0
	ldr r5, [sp, #12]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label56
	mov r3, #0
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label37
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label37
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label37
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label37
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label37
label896:
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	b label930
label40:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label39
	ldr r5, [sp, #4]
	add r1, r5, r3, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #4
	ble label230
	b label702
label56:
	ldr r0, [sp, #16]
	add r0, r0, #1
	cmp r0, #5
	bge label348
	str r0, [sp, #16]
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r5, r1
	ble label148
	ldr r5, [sp, #12]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label28
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label19
	b label688
label873:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label91
	b label907
label93:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label109
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
	add r6, r8, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label476
	b label104
label476:
	mov r7, r8
	add r6, r8, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label481
	b label101
label481:
	mov r5, r7
	ldr r6, [r1, r7, lsl #2]
	ldr r7, [r0, r7, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label109
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label109
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label109
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label109
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label109
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label109
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label109
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label109
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label109
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label109
	b label980
label109:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label91
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label93
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label91
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label93
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label91
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label93
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label91
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label93
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label91
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label93
	b label941
label980:
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label109
	b label980
label39:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label37
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label37
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label37
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label37
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label37
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	b label930
label46:
	ldr r4, [r4, r2, lsl #2]
	mov r8, r7
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label273
	b label55
label273:
	mov r7, r8
	add r6, r8, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label278
	b label52
label278:
	mov r5, r7
	ldr r6, [r1, r7, lsl #2]
	ldr r7, [r0, r7, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label39
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label39
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label39
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label39
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label39
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label39
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label39
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label39
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label39
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label39
	b label970
label52:
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
	ble label278
	b label52
label970:
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label39
	b label970
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
	add r6, r6, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label481
	b label101
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
	mov r8, r6
	str r7, [r5, #12]
	add r6, r6, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label476
	b label104
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
	ldr r5, [sp, #0]
	add r8, r7, #4
	cmp r5, r8
	ble label580
	mov r9, r7
	mov r7, r8
	b label106
label580:
	mov r8, r7
	ldr r4, [r4, r2, lsl #2]
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label476
	b label104
label230:
	mov r7, #0
	ldr r4, [r4, r2, lsl #2]
	mov r8, r7
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label273
label55:
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
	ble label273
	b label55
label907:
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label93
	b label941
label91:
	add r2, r2, #1
	ldr r5, [sp, #4]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label197
	mov r3, #0
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label91
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label93
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label91
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label93
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label91
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label93
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label91
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label93
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label91
	b label907
label941:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label91
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label93
	b label941
label24:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label28
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label28
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label28
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label28
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label28
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label28
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label28
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label28
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label28
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label28
	b label961
label28:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r5, r1
	ble label148
	ldr r5, [sp, #12]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label28
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label19
	b label688
label961:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label28
	b label961
label37:
	add r2, r2, #1
	ldr r5, [sp, #12]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label56
	mov r3, #0
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label37
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label37
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label37
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label37
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label37
	b label896
label930:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label37
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	b label930
label702:
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
	ldr r5, [sp, #0]
	add r8, r7, #4
	cmp r5, r8
	ble label46
	mov r9, r7
	mov r7, r8
	b label43
label80:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label82
	b label418
label82:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label84
	b label423
label84:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label77
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label77
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label77
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label77
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label77
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label77
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label77
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label77
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label77
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label77
label974:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label77
	b label974
label19:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label22
label162:
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
	ble label22
	b label162
label22:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label24
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
	ble label24
	b label172
label418:
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
	ble label82
	b label418
label423:
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
	ble label84
	b label423
label698:
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
	ble label80
	b label413
label77:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r5, r1
	ble label201
	ldr r5, [sp, #4]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label77
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label80
	b label698
label413:
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
	ble label80
	b label413
label348:
	mov r0, #0
	mov r4, r0
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label75
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label61
	ldr r5, [sp, #4]
	mov r3, #0
	add r1, r5, r0, lsl #12
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label68
	b label67
label953:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
label889:
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
label957:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	b label957
label917:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label114
	b label951
label114:
	add r4, r4, #1
	ldr r5, [sp, #0]
	cmp r5, r4
	ble label11
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label114
	ldr r5, [sp, #4]
	add r6, r5, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label114
	b label917
label951:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label114
label985:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label114
	b label985
label68:
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label381
	b label71
label381:
	mov r2, r4
	ldr r4, [r1, r3, lsl #2]
	ldr r5, [sp, #0]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label403
	ldr r4, [r1, r3, lsl #2]
	ldr r5, [sp, #0]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label403
	ldr r4, [r1, r3, lsl #2]
	ldr r5, [sp, #0]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label403
	ldr r4, [r1, r3, lsl #2]
	ldr r5, [sp, #0]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label403
	ldr r4, [r1, r3, lsl #2]
	ldr r5, [sp, #0]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label403
	ldr r4, [r1, r3, lsl #2]
	ldr r5, [sp, #0]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label403
	ldr r4, [r1, r3, lsl #2]
	ldr r5, [sp, #0]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label403
	ldr r4, [r1, r3, lsl #2]
	ldr r5, [sp, #0]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label403
	ldr r4, [r1, r3, lsl #2]
	ldr r5, [sp, #0]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label403
	ldr r4, [r1, r3, lsl #2]
	ldr r5, [sp, #0]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label403
label973:
	ldr r4, [r1, r3, lsl #2]
	ldr r5, [sp, #0]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label403
	b label973
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
	b label889
label67:
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
	ble label68
	b label67
label403:
	mov r4, r2
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label75
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label61
	ldr r5, [sp, #4]
	mov r3, #0
	add r1, r5, r0, lsl #12
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label68
	b label67
label71:
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
	ble label381
	b label71
label61:
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label75
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label61
	ldr r5, [sp, #4]
	mov r3, #0
	add r1, r5, r0, lsl #12
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label68
	b label67
label75:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #28
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
