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
	ble label111
	ldr r3, [sp, #8]
	add r6, r3, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label111
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label111
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label111
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label111
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label111
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label111
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label111
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label111
	b label920
label126:
	mov r4, #0
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label11
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label10
	ldr r3, [sp, #4]
	add r6, r3, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label10
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label10
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label10
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label10
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label10
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label10
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label10
	b label957
label11:
	mov r0, #65
	bl _sysy_starttime
	mov r0, #0
	str r0, [sp, #16]
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label148
	ldr r3, [sp, #12]
	add r1, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label28
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label19
	b label689
label148:
	mov r0, #0
	ldr r3, [sp, #4]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label197
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label91
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label93
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label91
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label93
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label91
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label93
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label91
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label93
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label91
label911:
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label93
	b label945
label91:
	add r0, r0, #1
	ldr r3, [sp, #4]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label197
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label91
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label93
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label91
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label93
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label91
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label93
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label91
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label93
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label91
	b label911
label945:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label91
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label93
	b label945
label93:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label109
	ldr r3, [sp, #12]
	add r3, r3, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #4
	ble label468
	ldr r7, [r6, r0, lsl #2]
	mov r4, #4
	mov r9, #0
	b label106
label468:
	mov r7, #0
	ldr r4, [r6, r0, lsl #2]
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label100
	b label99
label100:
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label507
	b label104
label507:
	mov r5, r7
	ldr r6, [r3, r7, lsl #2]
	ldr r7, [r2, r7, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label109
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label109
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label109
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label109
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label109
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label109
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label109
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label109
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label109
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label109
	b label983
label109:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label91
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label93
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label91
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label93
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label91
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label93
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label91
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label93
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label91
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label93
	b label945
label983:
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label109
	b label983
label104:
	add r5, r3, r7, lsl #2
	ldr r9, [r3, r7, lsl #2]
	add r8, r2, r7, lsl #2
	ldr r10, [r2, r7, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r3, r7, lsl #2]
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
	bge label507
	b label104
label99:
	add r5, r3, r7, lsl #2
	ldr r9, [r3, r7, lsl #2]
	add r8, r2, r7, lsl #2
	ldr r10, [r2, r7, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r3, r7, lsl #2]
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
	bge label100
	b label99
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
	ldr r8, [r8, #12]
	mla r8, r7, r8, r9
	str r8, [r5, #12]
	add r8, r4, #4
	ldr r5, [sp, #0]
	cmp r8, r5
	bge label580
	mov r9, r4
	mov r4, r8
	b label106
label580:
	mov r7, r4
	ldr r4, [r6, r0, lsl #2]
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label100
	b label99
label197:
	mov r0, #0
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label201
	ldr r3, [sp, #4]
	add r1, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label77
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label80
	b label700
label201:
	mov r0, #0
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label35
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label57
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label60
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label57
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label60
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label57
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label60
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label57
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label60
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label57
	b label901
label35:
	ldr r0, [sp, #16]
	add r0, r0, #1
	cmp r0, #5
	bge label212
	str r0, [sp, #16]
	mov r0, #0
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label148
	ldr r3, [sp, #12]
	add r1, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label28
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label19
	b label689
label212:
	mov r2, #0
	mov r4, r2
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label39
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label41
	ldr r3, [sp, #4]
	add r3, r3, r2, lsl #12
	mov r0, r2
	mov r1, #0
	add r4, r1, #4
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label48
	b label47
label39:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label901:
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label60
	b label935
label57:
	add r0, r0, #1
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label35
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label57
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label60
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label57
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label60
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label57
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label60
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label57
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label60
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label57
	b label901
label935:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label57
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label60
	b label935
label19:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label22
	b label162
label22:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label25
label172:
	add r4, r1, r2, lsl #2
	mov r5, #0
	str r5, [r1, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label25
	b label172
label25:
	mov r3, #0
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label28
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label28
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label28
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label28
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label28
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label28
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label28
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label28
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label28
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label28
	b label964
label28:
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label148
	ldr r3, [sp, #12]
	add r1, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label28
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label19
	b label689
label964:
	mov r3, #0
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label28
	b label964
label60:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label59
	ldr r3, [sp, #4]
	add r3, r3, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #4
	ble label290
	b label710
label290:
	mov r7, #0
	ldr r4, [r6, r0, lsl #2]
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label71
	b label70
label59:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label57
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label60
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label57
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label60
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label57
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label60
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label57
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label60
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label57
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label60
	b label935
label364:
	mov r5, r7
	ldr r6, [r3, r7, lsl #2]
	ldr r7, [r2, r7, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label59
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label59
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label59
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label59
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label59
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label59
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label59
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label59
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label59
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label59
label975:
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label59
	b label975
label63:
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
	ldr r8, [r8, #12]
	mla r8, r7, r8, r9
	str r8, [r5, #12]
	add r8, r4, #4
	ldr r5, [sp, #0]
	cmp r8, r5
	bge label324
	mov r9, r4
	mov r4, r8
	b label63
label324:
	mov r7, r4
	ldr r4, [r6, r0, lsl #2]
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label71
label70:
	add r5, r3, r7, lsl #2
	ldr r9, [r3, r7, lsl #2]
	add r8, r2, r7, lsl #2
	ldr r10, [r2, r7, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r3, r7, lsl #2]
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
	bge label71
	b label70
label71:
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label364
label73:
	add r5, r3, r7, lsl #2
	ldr r9, [r3, r7, lsl #2]
	add r8, r2, r7, lsl #2
	ldr r10, [r2, r7, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r3, r7, lsl #2]
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
	bge label364
	b label73
label710:
	ldr r7, [r6, r0, lsl #2]
	mov r4, #4
	mov r9, #0
	b label63
label80:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label82
	b label418
label82:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label85
label423:
	add r4, r1, r2, lsl #2
	mov r5, #0
	str r5, [r1, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label85
	b label423
label85:
	mov r3, #0
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label77
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label77
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label77
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label77
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label77
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label77
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label77
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label77
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label77
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label77
label978:
	mov r3, #0
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label77
	b label978
label418:
	add r4, r1, r2, lsl #2
	mov r5, #0
	str r5, [r1, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label82
	b label418
label700:
	add r4, r1, r2, lsl #2
	mov r5, #0
	str r5, [r1, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label80
	b label413
label77:
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label201
	ldr r3, [sp, #4]
	add r1, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label77
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label80
	b label700
label413:
	add r4, r1, r2, lsl #2
	mov r5, #0
	str r5, [r1, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label80
	b label413
label162:
	add r4, r1, r2, lsl #2
	mov r5, #0
	str r5, [r1, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label22
	b label162
label689:
	add r4, r1, r2, lsl #2
	mov r5, #0
	str r5, [r1, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label19
label157:
	add r4, r1, r2, lsl #2
	mov r5, #0
	str r5, [r1, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label19
	b label157
label920:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label111
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label111
label988:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label111
	b label988
label957:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label10
label892:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label10
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label10
label960:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label10
	b label960
label111:
	add r4, r4, #1
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label126
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label111
	ldr r3, [sp, #8]
	add r6, r3, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label111
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label111
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label111
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label111
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label111
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label111
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label111
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label111
	b label920
label10:
	add r4, r4, #1
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label11
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label10
	ldr r3, [sp, #4]
	add r6, r3, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label10
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label10
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label10
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label10
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label10
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label10
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label10
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label10
	b label892
label47:
	add r5, r3, r1, lsl #2
	ldr r1, [r3, r1, lsl #2]
	ldr r6, [r5, #4]
	add r0, r0, r1
	add r0, r0, r6
	ldr r1, [r5, #8]
	add r0, r0, r1
	ldr r1, [r5, #12]
	add r0, r0, r1
	mov r1, r4
	add r4, r4, #4
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label48
	b label47
label48:
	add r4, r1, #4
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label52
label51:
	add r5, r3, r1, lsl #2
	ldr r6, [r3, r1, lsl #2]
	ldr r1, [r5, #4]
	add r0, r0, r6
	add r0, r0, r1
	ldr r1, [r5, #8]
	add r0, r0, r1
	ldr r1, [r5, #12]
	add r0, r0, r1
	mov r1, r4
	add r4, r4, #4
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label52
	b label51
label52:
	ldr r4, [r3, r1, lsl #2]
	add r0, r0, r4
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label267
	ldr r4, [r3, r1, lsl #2]
	add r0, r0, r4
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label267
	ldr r4, [r3, r1, lsl #2]
	add r0, r0, r4
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label267
	ldr r4, [r3, r1, lsl #2]
	add r0, r0, r4
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label267
	ldr r4, [r3, r1, lsl #2]
	add r0, r0, r4
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label267
	ldr r4, [r3, r1, lsl #2]
	add r0, r0, r4
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label267
	ldr r4, [r3, r1, lsl #2]
	add r0, r0, r4
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label267
	ldr r4, [r3, r1, lsl #2]
	add r0, r0, r4
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label267
	ldr r4, [r3, r1, lsl #2]
	add r0, r0, r4
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label267
	ldr r4, [r3, r1, lsl #2]
	add r0, r0, r4
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label267
label968:
	ldr r4, [r3, r1, lsl #2]
	add r0, r0, r4
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label267
	b label968
label267:
	mov r4, r0
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label39
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label41
	ldr r3, [sp, #4]
	add r3, r3, r2, lsl #12
	mov r1, #0
	add r4, r1, #4
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label48
	b label47
label41:
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label39
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label41
	ldr r3, [sp, #4]
	add r3, r3, r2, lsl #12
	mov r0, r4
	mov r1, #0
	add r4, r1, #4
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label48
	b label47
