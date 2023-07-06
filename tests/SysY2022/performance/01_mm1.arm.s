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
	movw r1, #:lower16:A
	mov r4, #0
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
	b label939
label126:
	mov r4, #0
	ldr r5, [sp, #0]
	cmp r5, r4
	ble label11
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
	b label873
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
	cmp r5, r3
	ble label19
	b label687
label148:
	mov r2, #0
	ldr r5, [sp, #4]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label197
	mov r3, #0
	cmp r5, r3
	ble label91
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label93
	add r3, r3, #1
	cmp r5, r3
	ble label91
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label93
	add r3, r3, #1
	cmp r5, r3
	ble label91
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label93
	add r3, r3, #1
	cmp r5, r3
	ble label91
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label93
	add r3, r3, #1
	cmp r5, r3
	ble label91
	b label896
label91:
	add r2, r2, #1
	ldr r5, [sp, #4]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label197
	mov r3, #0
	cmp r5, r3
	ble label91
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label93
	add r3, r3, #1
	cmp r5, r3
	ble label91
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label93
	add r3, r3, #1
	cmp r5, r3
	ble label91
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label93
	add r3, r3, #1
	cmp r5, r3
	ble label91
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label93
	add r3, r3, #1
	cmp r5, r3
	ble label91
	b label896
label873:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label114
	b label905
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
	cmp r5, r3
	ble label80
	b label697
label201:
	mov r2, #0
	ldr r5, [sp, #12]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label56
	mov r3, #0
	cmp r5, r3
	ble label37
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	cmp r5, r3
	ble label37
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	cmp r5, r3
	ble label37
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	cmp r5, r3
	ble label37
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	cmp r5, r3
	ble label37
label886:
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	b label918
label37:
	add r2, r2, #1
	ldr r5, [sp, #12]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label56
	mov r3, #0
	cmp r5, r3
	ble label37
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	cmp r5, r3
	ble label37
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	cmp r5, r3
	ble label37
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	cmp r5, r3
	ble label37
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	cmp r5, r3
	ble label37
	b label886
label701:
	ldr r6, [r4, r2, lsl #2]
	mov r7, #4
	mov r9, #0
	b label43
label40:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label39
	ldr r5, [sp, #4]
	add r1, r5, r3, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #4
	ble label230
	b label701
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
	cmp r5, r3
	ble label19
	b label687
label348:
	mov r0, #0
	mov r4, r0
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label60
	cmp r5, #0
	ble label62
	ldr r5, [sp, #4]
	mov r3, #0
	add r1, r5, r0, lsl #12
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label68
	b label75
label896:
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label93
	b label928
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
label928:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label91
	b label960
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
	b label103
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
	b label964
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
	cmp r5, r3
	ble label91
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label93
	add r3, r3, #1
	cmp r5, r3
	ble label91
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label93
	add r3, r3, #1
	cmp r5, r3
	ble label91
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label93
	add r3, r3, #1
	cmp r5, r3
	ble label91
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label93
	b label928
label964:
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label109
	b label964
label918:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label37
	b label950
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
	cmp r5, r3
	ble label37
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	cmp r5, r3
	ble label37
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	cmp r5, r3
	ble label37
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	cmp r5, r3
	ble label37
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	b label918
label46:
	ldr r4, [r4, r2, lsl #2]
	mov r8, r7
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label273
	b label50
label273:
	mov r7, r8
	add r6, r8, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label304
	b label53
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
	mov r8, r6
	str r7, [r5, #12]
	add r6, r6, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label273
	b label50
label304:
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
label956:
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label39
	b label956
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
label103:
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
	b label103
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
	add r6, r6, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label304
	b label53
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
label960:
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label93
	b label928
label24:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label28
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label28
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label28
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label28
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label28
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label28
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label28
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label28
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label28
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label28
	b label947
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
	cmp r5, r3
	ble label19
	b label687
label947:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label28
	b label947
label950:
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	b label918
label230:
	mov r7, #0
	ldr r4, [r4, r2, lsl #2]
	mov r8, r7
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label273
	b label50
label80:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label83
	b label418
label83:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label85
label428:
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
	ble label85
	b label428
label85:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label77
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label77
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label77
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label77
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label77
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label77
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label77
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label77
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label77
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label77
label959:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label77
	b label959
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
	ble label83
	b label418
label697:
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
	cmp r5, r3
	ble label80
	b label697
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
label687:
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
label939:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
label879:
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
label943:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	b label943
label905:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label114
	b label937
label114:
	add r4, r4, #1
	ldr r5, [sp, #0]
	cmp r5, r4
	ble label11
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
	b label905
label937:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label114
label969:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label114
	b label969
label68:
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label368
	b label74
label368:
	mov r2, r4
	ldr r4, [r1, r3, lsl #2]
	ldr r5, [sp, #0]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label377
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label377
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label377
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label377
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label377
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label377
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label377
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label377
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label377
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label377
label958:
	ldr r4, [r1, r3, lsl #2]
	ldr r5, [sp, #0]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label377
	b label958
label377:
	mov r4, r2
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label60
	cmp r5, #0
	ble label62
	ldr r5, [sp, #4]
	mov r3, #0
	add r1, r5, r0, lsl #12
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label68
label75:
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
	b label75
label8:
	add r4, r4, #1
	ldr r5, [sp, #0]
	cmp r5, r4
	ble label126
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
	b label879
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
	add r2, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label368
	b label74
label62:
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label60
	cmp r5, #0
	ble label62
	ldr r5, [sp, #4]
	mov r3, #0
	add r1, r5, r0, lsl #12
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label68
	b label75
label60:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #28
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
