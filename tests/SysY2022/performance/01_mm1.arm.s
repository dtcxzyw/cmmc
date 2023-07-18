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
	ble label92
	cmp r0, #0
	ble label82
	b label386
label92:
	mov r4, #0
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label11
	cmp r6, #0
	ble label10
	b label387
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
	ble label116
	cmp r6, #0
	ble label17
	mov r4, #0
	add r2, r5, r1, lsl #12
	add r3, r4, #4
	cmp r6, r3
	ble label21
label454:
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
	ble label21
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
	ble label21
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
	ble label21
	b label601
label116:
	mov r2, #0
	ldr r5, [sp, #4]
	ldr r6, [sp, #0]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	ble label145
	mov r3, #0
	cmp r6, r3
	ble label37
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label30
	add r3, r3, #1
	cmp r6, r3
	ble label37
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label30
	add r3, r3, #1
	cmp r6, r3
	ble label37
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label30
	add r3, r3, #1
	cmp r6, r3
	ble label37
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label30
	b label536
label145:
	mov r1, #0
	ldr r6, [sp, #0]
	cmp r6, r1
	ble label217
	cmp r6, #0
	ble label71
	ldr r5, [sp, #4]
	mov r4, #0
	add r2, r5, r1, lsl #12
	add r3, r4, #4
	cmp r6, r3
	ble label76
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
	ble label76
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
	ble label76
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
	ble label76
	b label615
label536:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label37
	b label559
label217:
	mov r2, #0
	ldr r5, [sp, #12]
	ldr r6, [sp, #0]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	ble label42
	mov r3, #0
	cmp r6, r3
	ble label60
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label62
	add r3, r3, #1
	cmp r6, r3
	ble label60
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label62
	add r3, r3, #1
	cmp r6, r3
	ble label60
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label62
	add r3, r3, #1
	cmp r6, r3
	ble label60
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label62
	add r3, r3, #1
	cmp r6, r3
	ble label60
	b label570
label42:
	add r0, r0, #1
	cmp r0, #5
	bge label228
	mov r1, #0
	ldr r6, [sp, #0]
	cmp r6, r1
	ble label116
	cmp r6, #0
	ble label17
	ldr r5, [sp, #12]
	mov r4, #0
	add r2, r5, r1, lsl #12
	add r3, r4, #4
	cmp r6, r3
	ble label21
	b label454
label228:
	mov r4, #0
	mov r0, r4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label46
	cmp r6, #0
	ble label48
	ldr r5, [sp, #4]
	mov r3, #0
	add r1, r5, r4, lsl #12
	add r2, r3, #4
	cmp r6, r2
	ble label55
	b label54
label570:
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label62
	b label593
label60:
	add r2, r2, #1
	ldr r5, [sp, #12]
	ldr r6, [sp, #0]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	ble label42
	mov r3, #0
	cmp r6, r3
	ble label60
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label62
	add r3, r3, #1
	cmp r6, r3
	ble label60
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label62
	add r3, r3, #1
	cmp r6, r3
	ble label60
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label62
	add r3, r3, #1
	cmp r6, r3
	ble label60
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label62
	add r3, r3, #1
	cmp r6, r3
	ble label60
	b label570
label593:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label60
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label62
	b label593
label559:
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label30
	b label584
label37:
	add r2, r2, #1
	ldr r5, [sp, #4]
	ldr r6, [sp, #0]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	ble label145
	mov r3, #0
	cmp r6, r3
	ble label37
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label30
	add r3, r3, #1
	cmp r6, r3
	ble label37
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label30
	add r3, r3, #1
	cmp r6, r3
	ble label37
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label30
	add r3, r3, #1
	cmp r6, r3
	ble label37
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label30
	add r3, r3, #1
	cmp r6, r3
	ble label37
	b label559
label584:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label37
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label30
	b label584
label30:
	ldr r6, [sp, #0]
	cmp r6, #0
	ble label29
	ldr r5, [sp, #12]
	add r5, r5, r3, lsl #12
	cmp r6, #4
	ble label167
	mov r7, #4
	mov r9, #0
	b label32
label167:
	mov r7, #0
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label29
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label29
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label29
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label29
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label29
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label29
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label29
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label29
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label29
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label29
	b label35
label32:
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
	ble label35
	mov r9, r7
	mov r7, r8
	b label32
label29:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label37
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label30
	add r3, r3, #1
	cmp r6, r3
	ble label37
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label30
	add r3, r3, #1
	cmp r6, r3
	ble label37
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label30
	add r3, r3, #1
	cmp r6, r3
	ble label37
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label30
	add r3, r3, #1
	cmp r6, r3
	ble label37
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label30
	b label584
label35:
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label29
	b label35
label62:
	ldr r6, [sp, #0]
	cmp r6, #0
	ble label69
	ldr r5, [sp, #4]
	add r5, r5, r3, lsl #12
	cmp r6, #4
	ble label287
	mov r7, #4
	mov r9, #0
	b label64
label287:
	mov r7, #0
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label69
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label69
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label69
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label69
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label69
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label69
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label69
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label69
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label69
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label69
	b label67
label64:
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
	ble label67
	mov r9, r7
	mov r7, r8
	b label64
label67:
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	ble label69
	b label67
label69:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label60
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label62
	add r3, r3, #1
	cmp r6, r3
	ble label60
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label62
	add r3, r3, #1
	cmp r6, r3
	ble label60
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label62
	add r3, r3, #1
	cmp r6, r3
	ble label60
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label62
	add r3, r3, #1
	cmp r6, r3
	ble label60
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label62
	b label593
label615:
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
	ble label76
	b label615
label601:
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
	ble label21
	b label601
label71:
	add r1, r1, #1
	ldr r6, [sp, #0]
	cmp r6, r1
	ble label217
	cmp r6, #0
	ble label71
	ldr r5, [sp, #4]
	mov r4, #0
	add r2, r5, r1, lsl #12
	add r3, r4, #4
	cmp r6, r3
	ble label76
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
	ble label76
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
	ble label76
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
	ble label76
	b label615
label17:
	add r1, r1, #1
	ldr r6, [sp, #0]
	cmp r6, r1
	ble label116
	cmp r6, #0
	ble label17
	ldr r5, [sp, #12]
	mov r4, #0
	add r2, r5, r1, lsl #12
	add r3, r4, #4
	cmp r6, r3
	ble label21
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
	ble label21
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
	ble label21
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
	ble label21
	b label601
label76:
	mov r3, #0
	str r3, [r2, r4, lsl #2]
	ldr r6, [sp, #0]
	add r4, r4, #1
	cmp r6, r4
	ble label71
	b label76
label21:
	mov r3, #0
	str r3, [r2, r4, lsl #2]
	ldr r6, [sp, #0]
	add r4, r4, #1
	cmp r6, r4
	ble label17
	b label21
label54:
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
	ble label55
	b label54
label617:
	mov r4, r2
label55:
	ldr r2, [r1, r3, lsl #2]
	ldr r6, [sp, #0]
	add r3, r3, #1
	add r2, r4, r2
	cmp r6, r3
	ble label265
	b label617
label265:
	mov r4, r2
	add r0, r0, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label46
	cmp r6, #0
	ble label48
	ldr r5, [sp, #4]
	mov r3, #0
	add r1, r5, r0, lsl #12
	add r2, r3, #4
	cmp r6, r2
	ble label55
	b label54
label48:
	add r0, r0, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label46
	cmp r6, #0
	ble label48
	ldr r5, [sp, #4]
	mov r3, #0
	add r1, r5, r0, lsl #12
	add r2, r3, #4
	cmp r6, r2
	ble label55
	b label54
label82:
	add r5, r5, #1
	ldr r6, [sp, #0]
	cmp r6, r5
	ble label92
	cmp r6, #0
	ble label82
	b label386
label387:
	ldr r5, [sp, #4]
	mov r6, #0
	add r5, r5, r4, lsl #12
	b label8
label10:
	add r4, r4, #1
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label11
	cmp r6, #0
	ble label10
	b label387
label8:
	bl getint
	str r0, [r5, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label10
	mov r6, r0
	b label8
label386:
	ldr r4, [sp, #8]
	mov r6, #0
	add r4, r4, r5, lsl #12
label80:
	bl getint
	str r0, [r4, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label82
	mov r6, r0
	b label80
label46:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #20
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
