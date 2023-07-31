.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
hanoi:
.p2align 4
	push { r4, r5, r6, r7, lr }
	cmp r0, #1
	mov r6, r3
	sub sp, sp, #4
	bne label13
	mov r0, r1
label2:
	bl putint
	mov r0, #32
	bl putch
	mov r0, r6
	bl putint
	mov r0, #44
	bl putch
	mov r0, #32
	bl putch
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
label13:
	mov r4, r1
	mov r5, r2
label4:
	sub r7, r0, #1
	mov r0, r7
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl hanoi
	mov r0, r4
	bl putint
	mov r0, #32
	bl putch
	mov r0, r6
	bl putint
	mov r0, #44
	bl putch
	mov r0, #32
	bl putch
	cmp r7, #1
	beq label18
	mov r0, r7
	mov r1, r4
	mov r4, r5
	mov r5, r1
	b label4
label18:
	mov r0, r5
	b label2
.globl main
main:
.p2align 4
	push { r4, lr }
	bl getint
	cmp r0, #0
	ble label30
	mov r4, r0
.p2align 4
label28:
	bl getint
	mov r3, #3
	mov r2, #2
	mov r1, #1
	bl hanoi
	mov r0, #10
	bl putch
	subs r4, r4, #1
	bgt label28
label30:
	mov r0, #0
	pop { r4, pc }
