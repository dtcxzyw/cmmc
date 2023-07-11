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
	ble label84
	b label428
label11:
	mov r0, #65
	bl _sysy_starttime
	mov r0, #0
	movw r5, #:lower16:C
	movt r5, #:upper16:C
	str r5, [sp, #12]
	mov r1, #0
	ldr r6, [sp, #0]
	cmp r6, r1
	ble label118
	cmp r6, #0
	ble label17
	mov r4, #0
	add r2, r5, r1, lsl #12
	add r3, r4, #4
	cmp r6, r3
	ble label22
label464:
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
	ble label22
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
	ble label22
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
	ble label22
	b label623
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
	b label553
label147:
	mov r1, #0
	ldr r6, [sp, #0]
	cmp r6, r1
	ble label220
	cmp r6, #0
	ble label42
	ldr r5, [sp, #4]
	mov r4, #0
	add r2, r5, r1, lsl #12
	add r3, r4, #4
	cmp r6, r3
	ble label46
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
	ble label46
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
	ble label46
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
	ble label46
	b label638
label220:
	mov r2, #0
	ldr r5, [sp, #12]
	ldr r6, [sp, #0]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	ble label51
	mov r3, #0
	cmp r6, r3
	ble label69
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label71
	add r3, r3, #1
	cmp r6, r3
	ble label69
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label71
	add r3, r3, #1
	cmp r6, r3
	ble label69
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label71
	add r3, r3, #1
	cmp r6, r3
	ble label69
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label71
	b label564
label51:
	add r0, r0, #1
	cmp r0, #5
	bge label254
	mov r1, #0
	ldr r6, [sp, #0]
	cmp r6, r1
	ble label118
	cmp r6, #0
	ble label17
	ldr r5, [sp, #12]
	mov r4, #0
	add r2, r5, r1, lsl #12
	add r3, r4, #4
	cmp r6, r3
	ble label22
	b label464
label254:
	mov r4, #0
	mov r0, r4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label66
	cmp r6, #0
	ble label64
	ldr r5, [sp, #4]
	mov r3, #0
	add r1, r5, r4, lsl #12
	add r2, r3, #4
	cmp r6, r2
	ble label61
	b label60
label564:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label69
	b label593
label69:
	add r2, r2, #1
	ldr r5, [sp, #12]
	ldr r6, [sp, #0]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	ble label51
	mov r3, #0
	cmp r6, r3
	ble label69
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label71
	add r3, r3, #1
	cmp r6, r3
	ble label69
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label71
	add r3, r3, #1
	cmp r6, r3
	ble label69
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label71
	add r3, r3, #1
	cmp r6, r3
	ble label69
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label71
	add r3, r3, #1
	cmp r6, r3
	ble label69
label593:
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label71
	b label616
label71:
	ldr r6, [sp, #0]
	cmp r6, #0
	ble label72
	ldr r5, [sp, #4]
	add r5, r5, r3, lsl #12
	cmp r6, #4
	ble label314
	mov r7, #4
	mov r9, #0
	b label74
label314:
	mov r7, #0
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label72
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label72
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label72
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label72
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label72
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label72
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label72
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label72
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label72
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label72
	b label77
label74:
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
	ble label77
	mov r9, r7
	mov r7, r8
	b label74
label77:
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label72
	b label77
label578:
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label30
label605:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label38
	b label630
label30:
	ldr r6, [sp, #0]
	cmp r6, #0
	ble label31
	ldr r5, [sp, #12]
	add r5, r5, r3, lsl #12
	cmp r6, #4
	ble label170
	b label440
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
	b label578
label440:
	mov r7, #4
	mov r9, #0
	b label35
label170:
	mov r7, #0
label33:
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label31
	b label33
label35:
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
	ble label33
	mov r9, r7
	mov r7, r8
	b label35
label630:
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label30
	b label605
label553:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label38
	b label578
label616:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label69
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label71
	b label616
label72:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label69
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label71
	add r3, r3, #1
	cmp r6, r3
	ble label69
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label71
	add r3, r3, #1
	cmp r6, r3
	ble label69
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label71
	add r3, r3, #1
	cmp r6, r3
	ble label69
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label71
	add r3, r3, #1
	cmp r6, r3
	ble label69
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label71
	b label616
label31:
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
	b label605
label638:
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
	ble label46
	b label638
label623:
	add r5, r2, r4, lsl #2
	mov r6, #0
	str r6, [r2, r4, lsl #2]
	mov r4, r3
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	b label19
label17:
	add r1, r1, #1
	ldr r6, [sp, #0]
	cmp r6, r1
	ble label118
	cmp r6, #0
	ble label17
	ldr r5, [sp, #12]
	mov r4, #0
	add r2, r5, r1, lsl #12
	add r3, r4, #4
	cmp r6, r3
	ble label22
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
	ble label22
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
	ble label22
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
	ble label22
	b label623
label19:
	add r3, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label22
	b label623
label42:
	add r1, r1, #1
	ldr r6, [sp, #0]
	cmp r6, r1
	ble label220
	cmp r6, #0
	ble label42
	ldr r5, [sp, #4]
	mov r4, #0
	add r2, r5, r1, lsl #12
	add r3, r4, #4
	cmp r6, r3
	ble label46
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
	ble label46
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
	ble label46
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
	ble label46
	b label638
label46:
	mov r3, #0
	str r3, [r2, r4, lsl #2]
	ldr r6, [sp, #0]
	add r4, r4, #1
	cmp r6, r4
	ble label42
	b label46
label22:
	mov r3, #0
	str r3, [r2, r4, lsl #2]
	ldr r6, [sp, #0]
	add r4, r4, #1
	cmp r6, r4
	ble label17
	b label22
label60:
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
	ble label61
	b label60
label644:
	mov r4, r2
label61:
	ldr r2, [r1, r3, lsl #2]
	ldr r6, [sp, #0]
	add r3, r3, #1
	add r2, r4, r2
	cmp r6, r3
	ble label290
	b label644
label290:
	mov r4, r2
label64:
	add r0, r0, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label66
	cmp r6, #0
	ble label64
	ldr r5, [sp, #4]
	mov r3, #0
	add r1, r5, r0, lsl #12
	add r2, r3, #4
	cmp r6, r2
	ble label61
	b label60
label8:
	add r5, r5, #1
	ldr r6, [sp, #0]
	cmp r6, r5
	ble label94
	cmp r6, #0
	ble label8
	b label390
label84:
	add r4, r4, #1
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label11
	cmp r6, #0
	ble label84
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
label82:
	bl getint
	str r0, [r5, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label84
	mov r6, r0
	b label82
label66:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #20
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
