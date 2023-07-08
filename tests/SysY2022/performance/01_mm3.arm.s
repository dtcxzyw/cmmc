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
	ble label8
	b label390
label94:
	mov r4, #0
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label11
	cmp r6, #0
	ble label81
	b label428
label11:
	mov r0, #65
	bl _sysy_starttime
	mov r0, #0
	movw r5, #:lower16:C
	movt r5, #:upper16:C
	str r5, [sp, #12]
	mov r2, #0
	ldr r6, [sp, #0]
	cmp r6, r2
	ble label118
	cmp r6, #0
	ble label23
	mov r3, #0
	add r1, r5, r2, lsl #12
	add r4, r3, #4
	cmp r6, r4
	ble label21
	b label466
label118:
	mov r2, #0
	ldr r5, [sp, #4]
	ldr r6, [sp, #0]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	ble label147
	mov r3, #0
	cmp r6, r3
	ble label38
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label30
	add r3, r3, #1
	cmp r6, r3
	ble label38
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label30
	add r3, r3, #1
	cmp r6, r3
	ble label38
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label30
	add r3, r3, #1
	cmp r6, r3
	ble label38
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label30
	add r3, r3, #1
	cmp r6, r3
	ble label38
	b label584
label466:
	add r5, r1, r3, lsl #2
	mov r6, #0
	str r6, [r1, r3, lsl #2]
	mov r3, r4
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label21
	add r5, r1, r3, lsl #2
	mov r6, #0
	str r6, [r1, r3, lsl #2]
	mov r3, r4
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label21
	add r5, r1, r3, lsl #2
	mov r6, #0
	str r6, [r1, r3, lsl #2]
	mov r3, r4
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label21
	b label632
label147:
	mov r1, #0
	ldr r6, [sp, #0]
	cmp r6, r1
	ble label220
	cmp r6, #0
	ble label42
	ldr r5, [sp, #4]
	mov r3, #0
	add r2, r5, r1, lsl #12
	add r4, r3, #4
	cmp r6, r4
	ble label46
	add r5, r2, r3, lsl #2
	mov r6, #0
	str r6, [r2, r3, lsl #2]
	mov r3, r4
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label46
	add r5, r2, r3, lsl #2
	mov r6, #0
	str r6, [r2, r3, lsl #2]
	mov r3, r4
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label46
	add r5, r2, r3, lsl #2
	mov r6, #0
	str r6, [r2, r3, lsl #2]
	mov r3, r4
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label46
	b label647
label38:
	add r2, r2, #1
	ldr r5, [sp, #4]
	ldr r6, [sp, #0]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	ble label147
	mov r3, #0
	cmp r6, r3
	ble label38
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label30
	add r3, r3, #1
	cmp r6, r3
	ble label38
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label30
	add r3, r3, #1
	cmp r6, r3
	ble label38
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label30
	add r3, r3, #1
	cmp r6, r3
	ble label38
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label30
	add r3, r3, #1
	cmp r6, r3
	ble label38
	b label584
label220:
	mov r2, #0
	ldr r5, [sp, #12]
	ldr r6, [sp, #0]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	ble label51
	mov r3, #0
	cmp r6, r3
	ble label79
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label71
	add r3, r3, #1
	cmp r6, r3
	ble label79
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label71
	add r3, r3, #1
	cmp r6, r3
	ble label79
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label71
	add r3, r3, #1
	cmp r6, r3
	ble label79
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label71
	b label571
label51:
	add r0, r0, #1
	cmp r0, #5
	bge label254
	mov r2, #0
	ldr r6, [sp, #0]
	cmp r6, r2
	ble label118
	cmp r6, #0
	ble label23
	ldr r5, [sp, #12]
	mov r3, #0
	add r1, r5, r2, lsl #12
	add r4, r3, #4
	cmp r6, r4
	ble label21
	b label466
label254:
	mov r7, #0
	mov r0, r7
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label55
	cmp r6, #0
	ble label65
	ldr r5, [sp, #4]
	mov r4, #0
	mov r3, r7
	add r1, r5, r7, lsl #12
	add r2, r4, #4
	cmp r6, r2
	ble label268
	b label61
label55:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r7
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #20
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label571:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label79
label600:
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label71
	b label625
label458:
	mov r7, #4
	mov r9, #0
	b label76
label71:
	ldr r6, [sp, #0]
	cmp r6, #0
	ble label72
	ldr r5, [sp, #4]
	add r5, r5, r3, lsl #12
	cmp r6, #4
	ble label314
	b label458
label314:
	mov r6, #0
label74:
	ldr r7, [r5, r6, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label72
label326:
	mov r6, r7
	b label74
label76:
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
	ble label358
	mov r9, r7
	mov r7, r8
	b label76
label358:
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label72
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label72
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label72
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label72
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label72
	b label326
label79:
	add r2, r2, #1
	ldr r5, [sp, #12]
	ldr r6, [sp, #0]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	ble label51
	mov r3, #0
	cmp r6, r3
	ble label79
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label71
	add r3, r3, #1
	cmp r6, r3
	ble label79
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label71
	add r3, r3, #1
	cmp r6, r3
	ble label79
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label71
	add r3, r3, #1
	cmp r6, r3
	ble label79
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label71
	add r3, r3, #1
	cmp r6, r3
	ble label79
	b label600
label584:
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label30
	b label613
label46:
	mov r4, #0
	str r4, [r2, r3, lsl #2]
	ldr r6, [sp, #0]
	add r3, r3, #1
	cmp r6, r3
	ble label42
	b label46
label21:
	mov r4, #0
	str r4, [r1, r3, lsl #2]
	ldr r6, [sp, #0]
	add r3, r3, #1
	cmp r6, r3
	ble label23
	b label21
label625:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label79
	b label654
label72:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label79
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label71
	add r3, r3, #1
	cmp r6, r3
	ble label79
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label71
	add r3, r3, #1
	cmp r6, r3
	ble label79
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label71
	add r3, r3, #1
	cmp r6, r3
	ble label79
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label71
	add r3, r3, #1
	cmp r6, r3
	ble label79
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label71
	b label625
label654:
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label71
	b label625
label613:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label38
	b label638
label30:
	ldr r6, [sp, #0]
	cmp r6, #0
	ble label37
	ldr r5, [sp, #12]
	add r5, r5, r3, lsl #12
	cmp r6, #4
	ble label169
	b label440
label32:
	ldr r7, [r5, r6, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label37
label181:
	mov r6, r7
	b label32
label34:
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
	ble label213
	mov r9, r7
	mov r7, r8
	b label34
label213:
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label37
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label37
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label37
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label37
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label37
	b label181
label37:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label38
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label30
	add r3, r3, #1
	cmp r6, r3
	ble label38
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label30
	add r3, r3, #1
	cmp r6, r3
	ble label38
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label30
	add r3, r3, #1
	cmp r6, r3
	ble label38
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label30
	add r3, r3, #1
	cmp r6, r3
	ble label38
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label30
	b label613
label440:
	mov r7, #4
	mov r9, #0
	b label34
label638:
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label30
	b label613
label169:
	mov r6, #0
	b label32
label647:
	add r5, r2, r3, lsl #2
	mov r6, #0
	str r6, [r2, r3, lsl #2]
	mov r3, r4
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label46
	b label647
label632:
	add r5, r1, r3, lsl #2
	mov r6, #0
	str r6, [r1, r3, lsl #2]
	mov r3, r4
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label21
	b label632
label42:
	add r1, r1, #1
	ldr r6, [sp, #0]
	cmp r6, r1
	ble label220
	cmp r6, #0
	ble label42
	ldr r5, [sp, #4]
	mov r3, #0
	add r2, r5, r1, lsl #12
	add r4, r3, #4
	cmp r6, r4
	ble label46
	add r5, r2, r3, lsl #2
	mov r6, #0
	str r6, [r2, r3, lsl #2]
	mov r3, r4
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label46
	add r5, r2, r3, lsl #2
	mov r6, #0
	str r6, [r2, r3, lsl #2]
	mov r3, r4
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label46
	add r5, r2, r3, lsl #2
	mov r6, #0
	str r6, [r2, r3, lsl #2]
	mov r3, r4
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label46
	b label647
label23:
	add r2, r2, #1
	ldr r6, [sp, #0]
	cmp r6, r2
	ble label118
	cmp r6, #0
	ble label23
	ldr r5, [sp, #12]
	mov r3, #0
	add r1, r5, r2, lsl #12
	add r4, r3, #4
	cmp r6, r4
	ble label21
	add r5, r1, r3, lsl #2
	mov r6, #0
	str r6, [r1, r3, lsl #2]
	mov r3, r4
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label21
	add r5, r1, r3, lsl #2
	mov r6, #0
	str r6, [r1, r3, lsl #2]
	mov r3, r4
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label21
	add r5, r1, r3, lsl #2
	mov r6, #0
	str r6, [r1, r3, lsl #2]
	mov r3, r4
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label21
	b label632
label268:
	mov r2, r4
	ldr r4, [r1, r4, lsl #2]
	ldr r6, [sp, #0]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label290
	ldr r4, [r1, r2, lsl #2]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label290
	ldr r4, [r1, r2, lsl #2]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label290
	ldr r4, [r1, r2, lsl #2]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label290
	ldr r4, [r1, r2, lsl #2]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label290
	ldr r4, [r1, r2, lsl #2]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label290
	ldr r4, [r1, r2, lsl #2]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label290
	ldr r4, [r1, r2, lsl #2]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label290
	ldr r4, [r1, r2, lsl #2]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label290
	ldr r4, [r1, r2, lsl #2]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label290
	b label62
label61:
	add r5, r1, r4, lsl #2
	ldr r4, [r1, r4, lsl #2]
	add r3, r3, r4
	ldr r4, [r5, #4]
	add r3, r3, r4
	ldr r4, [r5, #8]
	add r3, r3, r4
	ldr r4, [r5, #12]
	add r3, r3, r4
	mov r4, r2
	add r2, r2, #4
	ldr r6, [sp, #0]
	cmp r6, r2
	ble label268
	b label61
label290:
	mov r7, r3
label65:
	add r0, r0, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label55
	cmp r6, #0
	ble label65
	ldr r5, [sp, #4]
	mov r4, #0
	mov r3, r7
	add r1, r5, r0, lsl #12
	add r2, r4, #4
	cmp r6, r2
	ble label268
	b label61
label62:
	ldr r4, [r1, r2, lsl #2]
	ldr r6, [sp, #0]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label290
	b label62
label8:
	add r5, r5, #1
	ldr r6, [sp, #0]
	cmp r6, r5
	ble label94
	cmp r6, #0
	ble label8
	b label390
label81:
	add r4, r4, #1
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label11
	cmp r6, #0
	ble label81
	b label428
label390:
	ldr r4, [sp, #8]
	mov r6, #0
	add r4, r4, r5, lsl #12
label6:
	bl getint
	str r0, [r4, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label8
	mov r6, r0
	b label6
label428:
	ldr r5, [sp, #4]
	mov r6, #0
	add r5, r5, r4, lsl #12
label83:
	bl getint
	str r0, [r5, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label81
	mov r6, r0
	b label83
