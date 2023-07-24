.arch armv7ve
.data
.bss
.align 4
parent:
	.zero	4020
.text
.syntax unified
.arm
.fpu vfpv4
find:
	push { r4, r5, r6, r7, r8, lr }
	movw r5, #:lower16:parent
	mov r4, r0
	movt r5, #:upper16:parent
	ldr r6, [r5, r0, lsl #2]
	cmp r0, r6
	beq label22
	ldr r7, [r5, r6, lsl #2]
	cmp r6, r7
	beq label29
	b label28
label22:
	mov r0, r4
label2:
	pop { r4, r5, r6, r7, r8, pc }
label28:
	ldr r8, [r5, r7, lsl #2]
	cmp r7, r8
	beq label38
	b label37
label29:
	mov r0, r6
label5:
	str r0, [r5, r4, lsl #2]
	b label2
label37:
	ldr r0, [r5, r8, lsl #2]
	cmp r8, r0
	beq label47
	b label13
label38:
	mov r0, r7
label8:
	str r0, [r5, r6, lsl #2]
	b label5
label47:
	mov r0, r8
label11:
	str r0, [r5, r7, lsl #2]
	b label8
label13:
	bl find
	str r0, [r5, r8, lsl #2]
	b label11
.globl main
main:
	push { r4, r5, r6, r7, r8, lr }
	bl getint
	mov r5, r0
	bl getint
	cmp r5, #0
	movw r4, #:lower16:parent
	mov r6, r0
	movt r4, #:upper16:parent
	bgt label87
	cmp r0, #0
	bgt label111
	b label110
label87:
	mov r0, #0
	b label66
label110:
	mov r0, #0
	mov r1, r0
	b label76
label111:
	mov r7, #0
label72:
	bl getint
	mov r8, r0
	bl getint
	mov r2, r0
	mov r0, r8
	bl find
	mov r1, r0
	mov r0, r2
	bl find
	cmp r1, r0
	bne label74
label75:
	add r7, r7, #1
	cmp r6, r7
	bgt label72
	b label110
label76:
	cmp r5, r1
	ble label80
	ldr r2, [r4, r1, lsl #2]
	sub r2, r1, r2
	add r1, r1, #1
	clz r2, r2
	lsr r2, r2, #5
	add r0, r0, r2
	b label76
label80:
	bl putint
	mov r0, #0
	pop { r4, r5, r6, r7, r8, pc }
label74:
	str r1, [r4, r0, lsl #2]
	b label75
label66:
	add r1, r0, #4
	cmp r5, r1
	bgt label68
	str r0, [r4, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	bgt label69
	b label106
label68:
	add r2, r4, r0, lsl #2
	str r0, [r4, r0, lsl #2]
	add r3, r0, #1
	str r3, [r2, #4]
	add r3, r0, #2
	add r0, r0, #3
	str r3, [r2, #8]
	str r0, [r2, #12]
	mov r0, r1
	b label66
label69:
	str r0, [r4, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	bgt label69
label106:
	cmp r6, #0
	bgt label111
	b label110
