.arch armv7ve
.data
.section .rodata
.bss
.align 4
A:
	.zero	16160400
.align 4
B:
	.zero	8040
.align 4
C:
	.zero	8040
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	bl getint
	mov r5, r0
	movw r6, #:lower16:A
	movt r6, #:upper16:A
	movw r7, #:lower16:B
	movt r7, #:upper16:B
	movw r4, #:lower16:C
	movt r4, #:upper16:C
	mov r8, #0
	cmp r8, r0
	bge label9
	cmp r0, #0
	ble label8
	movw r0, #8040
	mla r10, r8, r0, r6
	mov r9, #0
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	b label635
label9:
	cmp r5, #0
	ble label10
	mov r8, #0
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	b label641
label583:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	b label611
label8:
	add r8, r8, #1
	cmp r8, r5
	bge label9
	cmp r5, #0
	ble label8
	movw r0, #8040
	mla r10, r8, r0, r6
	mov r9, #0
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	b label583
label635:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	b label583
label611:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
label639:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	b label639
label10:
	mov r0, #59
	bl _sysy_starttime
	mov r0, #0
	cmp r5, #0
	ble label86
	mov r1, #0
	add r2, r1, #16
	cmp r2, r5
	bge label46
	b label45
label86:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label21
	mov r3, #0
	cmp r3, r5
	bge label20
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label19
	add r3, r3, #1
	cmp r3, r5
	bge label20
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label19
	add r3, r3, #1
	cmp r3, r5
	bge label20
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label19
	add r3, r3, #1
	cmp r3, r5
	bge label20
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label19
	b label642
label35:
	add r0, r0, #1
	cmp r0, #50
	bge label36
	cmp r5, #0
	ble label86
	mov r1, #0
	add r2, r1, #16
	cmp r2, r5
	bge label46
	b label45
label36:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label598:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	b label626
label41:
	ldr r9, [r7, r1, lsl #2]
	ldr r10, [r4, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r7, r1, lsl #2]
	add r3, r3, #1
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	b label626
label42:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label35
	mov r3, #0
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r3, r5
	bge label42
	b label598
label21:
	cmp r5, #0
	ble label116
	mov r1, #0
	add r2, r1, #16
	cmp r2, r5
	bge label24
	b label32
label116:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label35
	mov r3, #0
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	b label570
label50:
	mov r2, #0
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label260
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label260
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label260
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label260
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label260
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label260
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label260
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label260
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label260
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label260
	b label660
label260:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label21
	mov r3, #0
	cmp r3, r5
	bge label20
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label19
	add r3, r3, #1
	cmp r3, r5
	bge label20
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label19
	add r3, r3, #1
	cmp r3, r5
	bge label20
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label19
	add r3, r3, #1
	cmp r3, r5
	bge label20
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label19
	add r3, r3, #1
	cmp r3, r5
	bge label20
	b label587
label24:
	add r2, r1, #16
	cmp r2, r5
	bge label27
	b label26
label27:
	add r2, r1, #16
	cmp r2, r5
	bge label30
	b label29
label30:
	mov r2, #0
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label172
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label172
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label172
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label172
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label172
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label172
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label172
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label172
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label172
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label172
	b label651
label172:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label35
	mov r3, #0
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	add r3, r3, #1
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
label570:
	add r3, r3, #1
	cmp r3, r5
	bge label42
	b label598
label626:
	add r3, r3, #1
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label41
	b label626
label587:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label19
	b label615
label20:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label21
	mov r3, #0
	cmp r3, r5
	bge label20
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label19
	add r3, r3, #1
	cmp r3, r5
	bge label20
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label19
	add r3, r3, #1
	cmp r3, r5
	bge label20
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label19
	add r3, r3, #1
	cmp r3, r5
	bge label20
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label19
	add r3, r3, #1
	cmp r3, r5
	bge label20
	b label587
label642:
	add r3, r3, #1
	cmp r3, r5
	bge label20
	b label587
label615:
	add r3, r3, #1
	cmp r3, r5
	bge label20
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label19
	b label615
label19:
	ldr r9, [r4, r1, lsl #2]
	ldr r10, [r7, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r4, r1, lsl #2]
	add r3, r3, #1
	cmp r3, r5
	bge label20
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label19
	add r3, r3, #1
	cmp r3, r5
	bge label20
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label19
	add r3, r3, #1
	cmp r3, r5
	bge label20
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label19
	add r3, r3, #1
	cmp r3, r5
	bge label20
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label19
	add r3, r3, #1
	cmp r3, r5
	bge label20
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label19
	b label615
label651:
	mov r2, #0
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label172
	b label651
label660:
	mov r2, #0
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label260
	b label660
label32:
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	str r8, [r3, #16]
	str r8, [r3, #20]
	str r8, [r3, #24]
	str r8, [r3, #28]
	str r8, [r3, #32]
	str r8, [r3, #36]
	str r8, [r3, #40]
	str r8, [r3, #44]
	str r8, [r3, #48]
	str r8, [r3, #52]
	str r8, [r3, #56]
	str r8, [r3, #60]
	mov r1, r2
	add r2, r2, #16
	cmp r2, r5
	bge label24
	b label32
label29:
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	str r8, [r3, #16]
	str r8, [r3, #20]
	str r8, [r3, #24]
	str r8, [r3, #28]
	str r8, [r3, #32]
	str r8, [r3, #36]
	str r8, [r3, #40]
	str r8, [r3, #44]
	str r8, [r3, #48]
	str r8, [r3, #52]
	str r8, [r3, #56]
	str r8, [r3, #60]
	mov r1, r2
	add r2, r2, #16
	cmp r2, r5
	bge label30
	b label29
label26:
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	str r8, [r3, #16]
	str r8, [r3, #20]
	str r8, [r3, #24]
	str r8, [r3, #28]
	str r8, [r3, #32]
	str r8, [r3, #36]
	str r8, [r3, #40]
	str r8, [r3, #44]
	str r8, [r3, #48]
	str r8, [r3, #52]
	str r8, [r3, #56]
	str r8, [r3, #60]
	mov r1, r2
	add r2, r2, #16
	cmp r2, r5
	bge label27
	b label26
label45:
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	str r8, [r3, #16]
	str r8, [r3, #20]
	str r8, [r3, #24]
	str r8, [r3, #28]
	str r8, [r3, #32]
	str r8, [r3, #36]
	str r8, [r3, #40]
	str r8, [r3, #44]
	str r8, [r3, #48]
	str r8, [r3, #52]
	str r8, [r3, #56]
	str r8, [r3, #60]
	mov r1, r2
	add r2, r2, #16
	cmp r2, r5
	bge label46
	b label45
label46:
	add r2, r1, #16
	cmp r2, r5
	bge label48
	b label53
label48:
	add r2, r1, #16
	cmp r2, r5
	bge label50
label52:
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	str r8, [r3, #16]
	str r8, [r3, #20]
	str r8, [r3, #24]
	str r8, [r3, #28]
	str r8, [r3, #32]
	str r8, [r3, #36]
	str r8, [r3, #40]
	str r8, [r3, #44]
	str r8, [r3, #48]
	str r8, [r3, #52]
	str r8, [r3, #56]
	str r8, [r3, #60]
	mov r1, r2
	add r2, r2, #16
	cmp r2, r5
	bge label50
	b label52
label53:
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	str r8, [r3, #16]
	str r8, [r3, #20]
	str r8, [r3, #24]
	str r8, [r3, #28]
	str r8, [r3, #32]
	str r8, [r3, #36]
	str r8, [r3, #40]
	str r8, [r3, #44]
	str r8, [r3, #48]
	str r8, [r3, #52]
	str r8, [r3, #56]
	str r8, [r3, #60]
	mov r1, r2
	add r2, r2, #16
	cmp r2, r5
	bge label48
	b label53
label641:
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
label662:
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	b label662