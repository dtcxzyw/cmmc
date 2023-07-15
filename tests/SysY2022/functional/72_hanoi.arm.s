.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
hanoi:
	push { r4, r5, r6, r7, lr }
	cmp r0, #1
	mov r6, r3
	sub sp, sp, #4
	bne label14
	b label2
label14:
	mov r7, r0
	mov r4, r1
	mov r5, r2
	b label4
label2:
	mov r0, r1
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
label4:
	sub r7, r7, #1
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
	bne label19
	mov r1, r5
	b label2
label19:
	mov r0, r4
	mov r4, r5
	mov r5, r0
	b label4
.globl main
main:
	push { r4, lr }
	bl getint
	cmp r0, #0
	mov r4, r0
	ble label26
label24:
	bl getint
	mov r3, #3
	mov r2, #2
	mov r1, #1
	bl hanoi
	mov r0, #10
	bl putch
	subs r4, r4, #1
	ble label26
	b label24
label26:
	mov r0, #0
	pop { r4, pc }
