.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
QuickSort:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r5, r2
	mov r3, r0
	sub sp, sp, #28
	mov r0, r1
	str r3, [sp, #12]
	mov r3, #0
	str r2, [sp, #16]
	mov r1, r3
label2:
	cmp r3, #0
	mov r2, #0
	str r2, [sp, #8]
	movne r2, r1
	str r2, [sp, #8]
	ldr r5, [sp, #16]
	cmp r5, r0
	bgt label7
	b label6
label28:
	ldr r6, [sp, #4]
	mov r3, #1
	ldr r2, [sp, #8]
	add r0, r6, #1
	mov r1, r2
	b label2
label7:
	ldr r3, [sp, #12]
	mov r6, r0
	ldr r1, [r3, r0, lsl #2]
	ldr r5, [sp, #16]
	str r0, [sp, #4]
	sub r2, r1, #1
label8:
	ldr r6, [sp, #4]
	cmp r5, r6
	bgt label11
label105:
	ldr r3, [sp, #12]
	ldr r6, [sp, #4]
	str r1, [r3, r6, lsl #2]
	sub r6, r6, #1
	str r6, [sp, #0]
	b label26
.p2align 4
label11:
	ldr r3, [sp, #12]
	add r4, r3, r5, lsl #2
	ldr r6, [sp, #4]
	cmp r6, r5
	blt label21
	add r3, r3, r6, lsl #2
.p2align 4
label15:
	cmp r5, r6
	ble label115
.p2align 4
label18:
	ldr r7, [r3, #0]
	cmp r1, r7
	ble label120
	add r6, r6, #1
	add r3, r3, #4
	cmp r5, r6
	bgt label18
	str r6, [sp, #4]
	b label105
.p2align 4
label21:
	ldr r7, [r4, #0]
	cmp r2, r7
	bge label128
	sub r5, r5, #1
	sub r4, r4, #4
	ldr r6, [sp, #4]
	cmp r6, r5
	blt label21
	ldr r3, [sp, #12]
	cmp r5, r6
	add r3, r3, r6, lsl #2
	bgt label18
	str r6, [sp, #4]
	b label105
label26:
	ldr r6, [sp, #0]
	cmp r6, r0
	bgt label29
	b label28
label36:
	add r0, r4, #1
	b label26
label29:
	ldr r3, [sp, #12]
	mov r4, r0
	ldr r1, [r3, r0, lsl #2]
	ldr r6, [sp, #0]
	sub r2, r1, #1
label30:
	cmp r6, r4
	bgt label78
label33:
	ldr r3, [sp, #12]
	sub r5, r4, #1
	str r1, [r3, r4, lsl #2]
	mov r1, r0
	b label34
.p2align 4
label78:
	ldr r3, [sp, #12]
	add r5, r3, r6, lsl #2
	cmp r4, r6
	blt label82
	cmp r6, r4
	add r3, r3, r4, lsl #2
	bgt label89
	b label337
.p2align 4
label82:
	ldr r7, [r5, #0]
	cmp r2, r7
	bge label265
	sub r6, r6, #1
	sub r5, r5, #4
	cmp r4, r6
	blt label82
	ldr r3, [sp, #12]
	cmp r6, r4
	add r3, r3, r4, lsl #2
	ble label338
.p2align 4
label89:
	ldr r7, [r3, #0]
	cmp r1, r7
	ble label90
	add r4, r4, #1
	add r3, r3, #4
	cmp r6, r4
	bgt label89
	b label33
label34:
	cmp r5, r1
	bgt label37
	b label36
label58:
	add r1, r6, #1
	b label34
label37:
	ldr r3, [sp, #12]
	mov r8, r5
	mov r6, r1
	ldr r0, [r3, r1, lsl #2]
	sub r2, r0, #1
label38:
	cmp r8, r6
	bgt label41
label169:
	ldr r3, [sp, #12]
	sub r7, r6, #1
	str r0, [r3, r6, lsl #2]
	b label56
.p2align 4
label41:
	ldr r3, [sp, #12]
	add r7, r3, r8, lsl #2
	cmp r6, r8
	blt label45
	cmp r8, r6
	add r3, r3, r6, lsl #2
	bgt label51
	b label333
.p2align 4
label45:
	ldr r9, [r7, #0]
	cmp r2, r9
	bge label180
	sub r8, r8, #1
	sub r7, r7, #4
	cmp r6, r8
	blt label45
	ldr r3, [sp, #12]
	cmp r8, r6
	add r3, r3, r6, lsl #2
	ble label334
.p2align 4
label51:
	ldr r9, [r3, #0]
	cmp r0, r9
	ble label196
	add r6, r6, #1
	add r3, r3, #4
	cmp r8, r6
	bgt label51
	b label169
label56:
	cmp r7, r1
	bgt label59
	b label58
label63:
	ldr r3, [sp, #12]
	sub r2, r8, #1
	str r0, [r3, r8, lsl #2]
	mov r0, r3
	bl QuickSort
	add r1, r8, #1
	b label56
label59:
	ldr r3, [sp, #12]
	mov r10, r7
	mov r8, r1
	ldr r0, [r3, r1, lsl #2]
	sub r2, r0, #1
label60:
	cmp r10, r8
	ble label63
	ldr r3, [sp, #12]
	add r9, r3, r10, lsl #2
	cmp r8, r10
	blt label75
	b label68
.p2align 4
label72:
	ldr r11, [r3, #0]
	cmp r0, r11
	ble label73
	add r8, r8, #1
	add r3, r3, #4
	cmp r10, r8
	bgt label72
	b label63
.p2align 4
label75:
	ldr r11, [r9, #0]
	cmp r2, r11
	bge label247
	sub r10, r10, #1
	sub r9, r9, #4
	cmp r8, r10
	blt label75
	ldr r3, [sp, #12]
	cmp r10, r8
	add r3, r3, r8, lsl #2
	bgt label72
	b label63
.p2align 4
label68:
	ldr r3, [sp, #12]
	add r3, r3, r8, lsl #2
.p2align 4
label69:
	cmp r10, r8
	bgt label72
	b label63
label6:
	ldr r2, [sp, #8]
	add sp, sp, #28
	mov r0, r2
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label73:
	str r11, [r9, #0]
	sub r10, r10, #1
	b label60
label180:
	ldr r3, [sp, #12]
	str r9, [r3, r6, lsl #2]
	add r6, r6, #1
	add r3, r3, r6, lsl #2
	cmp r8, r6
	bgt label51
	b label169
label265:
	ldr r3, [sp, #12]
	str r7, [r3, r4, lsl #2]
	add r4, r4, #1
	add r3, r3, r4, lsl #2
	cmp r6, r4
	bgt label89
	b label33
label90:
	str r7, [r5, #0]
	sub r6, r6, #1
	b label30
.p2align 4
label115:
	str r6, [sp, #4]
	cmp r5, r6
	bgt label11
	b label105
.p2align 4
label333:
	cmp r8, r6
	bgt label41
	b label169
.p2align 4
label337:
	cmp r6, r4
	bgt label78
	b label33
.p2align 4
label334:
	cmp r8, r6
	bgt label41
	b label169
.p2align 4
label338:
	cmp r6, r4
	bgt label78
	b label33
label247:
	ldr r3, [sp, #12]
	str r11, [r3, r8, lsl #2]
	add r8, r8, #1
	add r3, r3, r8, lsl #2
	b label69
label120:
	str r7, [r4, #0]
	sub r5, r5, #1
	str r6, [sp, #4]
	b label8
label196:
	str r9, [r7, #0]
	sub r8, r8, #1
	b label38
label128:
	ldr r3, [sp, #12]
	ldr r6, [sp, #4]
	str r7, [r3, r6, lsl #2]
	add r6, r6, #1
	add r3, r3, r6, lsl #2
	b label15
.p2align 4
.globl main
main:
	push { r4, r5, r6, lr }
	sub sp, sp, #40
	mov r2, #9
	mov r0, #4
	mov r4, #0
	mov r5, sp
	str r0, [sp, #0]
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
	bge label373
	add r5, r5, r0, lsl #2
	mov r6, r0
.p2align 4
label369:
	ldr r0, [r5, #0]
	bl putint
	mov r0, #10
	bl putch
	add r6, r6, #1
	cmp r6, #10
	bge label373
	add r5, r5, #4
	b label369
label373:
	mov r0, r4
	add sp, sp, #40
	pop { r4, r5, r6, pc }
