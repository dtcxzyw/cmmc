.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, lr }
	sub sp, sp, #44
	mov r1, #4
	mov r4, #0
	mov r0, sp
	str r1, [sp, #0]
	mov r1, #3
	str r1, [sp, #4]
	mov r1, #9
	str r1, [sp, #8]
	mov r1, #2
	str r1, [sp, #12]
	mov r1, #1
	str r4, [sp, #16]
	str r1, [sp, #20]
	mov r1, #6
	str r1, [sp, #24]
	mov r1, #5
	str r1, [sp, #28]
	mov r1, #7
	str r1, [sp, #32]
	mov r1, #8
	str r1, [sp, #36]
	mov r1, r4
	cmp r4, #9
	blt label4
label45:
	mov r5, r0
	mov r6, r4
	b label28
.p2align 4
label4:
	rsb r3, r1, #10
	sub r2, r3, #1
	cmp r2, #4
	sub r3, r3, #5
	ble label52
	mov r5, r0
	mov r6, r4
	ldr r7, [r0, #0]
	ldr r8, [r0, #4]
	cmp r7, r8
	bgt label9
	b label59
.p2align 4
label24:
	add r3, r3, #4
	ldr r6, [r3, #0]
	ldr r7, [r3, #4]
	cmp r6, r7
	bgt label25
	add r5, r5, #1
	cmp r2, r5
	bgt label24
	b label166
.p2align 4
label25:
	str r6, [r3, #4]
	add r5, r5, #1
	str r7, [r3, #0]
	cmp r2, r5
	bgt label24
	add r1, r1, #1
	cmp r1, #9
	blt label4
	b label45
.p2align 4
label9:
	str r7, [r5, #4]
	str r8, [r5, #0]
	add r7, r6, #1
	add r9, r0, r7, lsl #2
	ldr r8, [r9, #0]
	ldr r9, [r9, #4]
	cmp r8, r9
	bgt label18
	add r7, r6, #2
	add r9, r0, r7, lsl #2
	ldr r8, [r9, #0]
	ldr r9, [r9, #4]
	cmp r8, r9
	bgt label12
	add r7, r6, #3
	add r9, r0, r7, lsl #2
	ldr r8, [r9, #0]
	ldr r9, [r9, #4]
	cmp r8, r9
	bgt label17
	add r6, r6, #4
	cmp r3, r6
	bgt label15
	add r3, r0, r6, lsl #2
	mov r5, r6
	ldr r6, [r3, #0]
	ldr r7, [r3, #4]
	cmp r6, r7
	bgt label25
	b label170
.p2align 4
label12:
	add r7, r0, r7, lsl #2
	str r8, [r7, #4]
	str r9, [r7, #0]
	add r7, r6, #3
	add r9, r0, r7, lsl #2
	ldr r8, [r9, #0]
	ldr r9, [r9, #4]
	cmp r8, r9
	bgt label17
	b label14
.p2align 4
label18:
	add r7, r0, r7, lsl #2
	str r8, [r7, #4]
	str r9, [r7, #0]
	add r7, r6, #2
	add r9, r0, r7, lsl #2
	ldr r8, [r9, #0]
	ldr r9, [r9, #4]
	cmp r8, r9
	bgt label12
	add r7, r6, #3
	add r9, r0, r7, lsl #2
	ldr r8, [r9, #0]
	ldr r9, [r9, #4]
	cmp r8, r9
	bgt label17
	add r6, r6, #4
	cmp r3, r6
	bgt label15
	add r3, r0, r6, lsl #2
	mov r5, r6
	ldr r6, [r3, #0]
	ldr r7, [r3, #4]
	cmp r6, r7
	bgt label25
	add r5, r5, #1
	cmp r2, r5
	bgt label24
	b label171
.p2align 4
label15:
	add r5, r5, #16
	ldr r7, [r5, #0]
	ldr r8, [r5, #4]
	cmp r7, r8
	bgt label9
	b label151
.p2align 4
label17:
	add r7, r0, r7, lsl #2
	add r6, r6, #4
	cmp r3, r6
	str r8, [r7, #4]
	str r9, [r7, #0]
	bgt label15
	add r3, r0, r6, lsl #2
	mov r5, r6
	ldr r6, [r3, #0]
	ldr r7, [r3, #4]
	cmp r6, r7
	bgt label25
	add r5, r5, #1
	cmp r2, r5
	bgt label24
	add r1, r1, #1
	cmp r1, #9
	blt label4
	b label45
.p2align 4
label14:
	add r6, r6, #4
	cmp r3, r6
	bgt label15
	add r3, r0, r6, lsl #2
	mov r5, r6
	ldr r6, [r3, #0]
	ldr r7, [r3, #4]
	cmp r6, r7
	bgt label25
	add r5, r5, #1
	cmp r2, r5
	bgt label24
label171:
	add r1, r1, #1
	cmp r1, #9
	blt label4
	b label45
label177:
	add r3, r0, r6, lsl #2
	mov r5, r6
	ldr r6, [r3, #0]
	ldr r7, [r3, #4]
	cmp r6, r7
	bgt label25
	b label170
.p2align 4
label151:
	add r7, r6, #1
	add r9, r0, r7, lsl #2
	ldr r8, [r9, #0]
	ldr r9, [r9, #4]
	cmp r8, r9
	bgt label18
	add r7, r6, #2
	add r9, r0, r7, lsl #2
	ldr r8, [r9, #0]
	ldr r9, [r9, #4]
	cmp r8, r9
	bgt label12
	add r7, r6, #3
	add r9, r0, r7, lsl #2
	ldr r8, [r9, #0]
	ldr r9, [r9, #4]
	cmp r8, r9
	bgt label17
	add r6, r6, #4
	cmp r3, r6
	bgt label15
	b label177
.p2align 4
label59:
	add r7, r6, #1
	add r9, r0, r7, lsl #2
	ldr r8, [r9, #0]
	ldr r9, [r9, #4]
	cmp r8, r9
	bgt label18
	add r7, r6, #2
	add r9, r0, r7, lsl #2
	ldr r8, [r9, #0]
	ldr r9, [r9, #4]
	cmp r8, r9
	bgt label12
	add r7, r6, #3
	add r9, r0, r7, lsl #2
	ldr r8, [r9, #0]
	ldr r9, [r9, #4]
	cmp r8, r9
	bgt label17
	add r6, r6, #4
	cmp r3, r6
	bgt label15
	b label177
.p2align 4
label52:
	mov r3, r0
	mov r5, r4
	ldr r6, [r0, #0]
	ldr r7, [r0, #4]
	cmp r6, r7
	bgt label25
	add r5, r4, #1
	cmp r2, r5
	bgt label24
	add r1, r1, #1
	cmp r1, #9
	blt label4
	b label45
.p2align 4
label28:
	ldr r0, [r5, #0]
	bl putint
	mov r0, #10
	bl putch
	add r6, r6, #1
	cmp r6, #10
	bge label31
	add r5, r5, #4
	b label28
label170:
	add r5, r5, #1
	cmp r2, r5
	bgt label24
	b label171
label31:
	mov r0, r4
	add sp, sp, #44
	pop { r4, r5, r6, r7, r8, r9, pc }
.p2align 4
label166:
	add r1, r1, #1
	cmp r1, #9
	blt label4
	b label45
