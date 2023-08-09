.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, lr }
	bl getint
	mov r4, r0
	movw r0, #10015
	bl _sysy_starttime
	cmp r4, #0
	ble label7
	mov r0, r4
	movw r1, #49153
	movt r1, #8191
	bl cmmcAddRec3SRem
	mov r4, r0
label3:
	movw r0, #10030
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	pop { r4, pc }
label7:
	mov r4, #0
	b label3
