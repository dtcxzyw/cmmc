.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
QuickSort:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r4, r2
	mov r3, r0
	sub sp, sp, #20
	mov r0, r1
	str r3, [sp, #8]
	mov r3, #0
	str r2, [sp, #12]
	mov r1, r3
label2:
	cmp r3, #0
	mov r2, #0
	str r2, [sp, #4]
	movne r2, r1
	str r2, [sp, #4]
	ldr r4, [sp, #12]
	cmp r4, r0
	ble label75
	ldr r3, [sp, #8]
	mov r5, r0
	ldr r1, [r3, r0, lsl #2]
	str r0, [sp, #0]
	sub r2, r1, #1
label7:
	ldr r5, [sp, #0]
	cmp r4, r5
	bgt label10
label89:
	ldr r3, [sp, #8]
	ldr r5, [sp, #0]
	sub r4, r5, #1
	str r1, [r3, r5, lsl #2]
	b label21
.p2align 4
label10:
	ldr r5, [sp, #0]
	cmp r5, r4
	blt label12
	cmp r4, r5
	bgt label17
	b label293
.p2align 4
label12:
	ldr r3, [sp, #8]
	ldr r6, [r3, r4, lsl #2]
	cmp r2, r6
	bge label13
	sub r4, r4, #1
	ldr r5, [sp, #0]
	cmp r5, r4
	blt label12
	cmp r4, r5
	ble label309
.p2align 4
label17:
	ldr r3, [sp, #8]
	ldr r6, [r3, r5, lsl #2]
	cmp r1, r6
	ble label18
	add r5, r5, #1
	cmp r4, r5
	bgt label17
	str r5, [sp, #0]
	b label89
label21:
	cmp r4, r0
	bgt label23
	ldr r5, [sp, #0]
	mov r3, #1
	ldr r2, [sp, #4]
	add r0, r5, #1
	mov r1, r2
	b label2
label75:
	ldr r2, [sp, #4]
	add sp, sp, #20
	mov r0, r2
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label23:
	ldr r3, [sp, #8]
	mov r6, r4
	mov r5, r0
	ldr r1, [r3, r0, lsl #2]
	sub r2, r1, #1
label24:
	cmp r6, r5
	bgt label64
label27:
	ldr r3, [sp, #8]
	sub r6, r5, #1
	str r1, [r3, r5, lsl #2]
	mov r1, r0
label28:
	cmp r6, r1
	ble label30
	ldr r3, [sp, #8]
	mov r8, r6
	mov r7, r1
	ldr r0, [r3, r1, lsl #2]
	sub r2, r0, #1
label32:
	cmp r8, r7
	bgt label54
	b label35
.p2align 4
label64:
	cmp r5, r6
	blt label66
	cmp r6, r5
	bgt label71
	b label304
.p2align 4
label66:
	ldr r3, [sp, #8]
	ldr r7, [r3, r6, lsl #2]
	cmp r2, r7
	bge label67
	sub r6, r6, #1
	cmp r5, r6
	blt label66
	cmp r6, r5
	ble label317
.p2align 4
label71:
	ldr r3, [sp, #8]
	ldr r7, [r3, r5, lsl #2]
	cmp r1, r7
	ble label257
	add r5, r5, #1
	cmp r6, r5
	bgt label71
	b label27
.p2align 4
label54:
	cmp r7, r8
	blt label61
.p2align 4
label56:
	cmp r8, r7
	ble label209
.p2align 4
label58:
	ldr r3, [sp, #8]
	ldr r9, [r3, r7, lsl #2]
	cmp r0, r9
	ble label59
	add r7, r7, #1
	cmp r8, r7
	bgt label58
	b label35
.p2align 4
label61:
	ldr r3, [sp, #8]
	ldr r9, [r3, r8, lsl #2]
	cmp r2, r9
	bge label62
	sub r8, r8, #1
	cmp r7, r8
	blt label61
	cmp r8, r7
	bgt label58
	b label35
label30:
	add r0, r5, #1
	b label21
label13:
	ldr r3, [sp, #8]
	ldr r5, [sp, #0]
	str r6, [r3, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	bgt label17
	str r5, [sp, #0]
	b label89
label18:
	ldr r3, [sp, #8]
	str r6, [r3, r4, lsl #2]
	str r5, [sp, #0]
	sub r4, r4, #1
	b label7
label67:
	ldr r3, [sp, #8]
	str r7, [r3, r5, lsl #2]
	add r5, r5, #1
	cmp r6, r5
	bgt label71
	b label27
label59:
	ldr r3, [sp, #8]
	str r9, [r3, r8, lsl #2]
	sub r8, r8, #1
	b label32
label62:
	ldr r3, [sp, #8]
	str r9, [r3, r7, lsl #2]
	add r7, r7, #1
	b label56
label35:
	ldr r3, [sp, #8]
	sub r8, r7, #1
	str r0, [r3, r7, lsl #2]
label36:
	cmp r8, r1
	bgt label39
	b label38
.p2align 4
label43:
	cmp r9, r10
	blt label45
	cmp r10, r9
	ble label297
.p2align 4
label50:
	ldr r3, [sp, #8]
	ldr r11, [r3, r9, lsl #2]
	cmp r0, r11
	ble label51
	add r9, r9, #1
	cmp r10, r9
	bgt label50
label53:
	ldr r3, [sp, #8]
	sub r2, r9, #1
	str r0, [r3, r9, lsl #2]
	mov r0, r3
	bl QuickSort
	add r1, r9, #1
	b label36
.p2align 4
label45:
	ldr r3, [sp, #8]
	ldr r11, [r3, r10, lsl #2]
	cmp r2, r11
	bge label46
	sub r10, r10, #1
	cmp r9, r10
	blt label45
	cmp r10, r9
	bgt label50
	b label53
label39:
	ldr r3, [sp, #8]
	mov r10, r8
	mov r9, r1
	ldr r0, [r3, r1, lsl #2]
	sub r2, r0, #1
label40:
	cmp r10, r9
	bgt label43
	b label53
label38:
	add r1, r7, #1
	b label28
label51:
	ldr r3, [sp, #8]
	str r11, [r3, r10, lsl #2]
	sub r10, r10, #1
	b label40
label46:
	ldr r3, [sp, #8]
	str r11, [r3, r9, lsl #2]
	add r9, r9, #1
	cmp r10, r9
	bgt label50
	b label53
.p2align 4
label209:
	cmp r8, r7
	bgt label54
	b label35
.p2align 4
label293:
	str r5, [sp, #0]
	cmp r4, r5
	bgt label10
	b label89
.p2align 4
label297:
	cmp r10, r9
	bgt label43
	b label53
.p2align 4
label304:
	cmp r6, r5
	bgt label64
	b label27
.p2align 4
label309:
	str r5, [sp, #0]
	cmp r4, r5
	bgt label10
	b label89
.p2align 4
label317:
	cmp r6, r5
	bgt label64
	b label27
label257:
	ldr r3, [sp, #8]
	str r7, [r3, r6, lsl #2]
	sub r6, r6, #1
	b label24
.p2align 4
.globl main
main:
	push { r4, r5, r6, lr }
	sub sp, sp, #40
	mov r0, #4
	mov r4, #0
	mov r2, #9
	str r0, [sp, #0]
	mov r5, sp
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #2
	str r2, [sp, #8]
	str r0, [sp, #12]
	mov r0, #1
	str r4, [sp, #16]
	str r0, [sp, #20]
	mov r0, #6
	str r0, [sp, #24]
	mov r0, #5
	str r0, [sp, #28]
	mov r0, #7
	str r0, [sp, #32]
	mov r0, #8
	str r0, [sp, #36]
	mov r0, r5
	mov r1, r4
	bl QuickSort
	cmp r0, #10
	bge label345
	mov r6, r0
.p2align 4
label343:
	ldr r0, [r5, r6, lsl #2]
	bl putint
	mov r0, #10
	bl putch
	add r6, r6, #1
	cmp r6, #10
	blt label343
label345:
	mov r0, r4
	add sp, sp, #40
	pop { r4, r5, r6, pc }
