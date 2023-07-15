.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
reverse:
	push { r4, r5, lr }
	cmp r0, #2
	mov r4, r0
	sub sp, sp, #4
	bge label4
	bl getint
	bl putint
label3:
	add sp, sp, #4
	pop { r4, r5, pc }
label4:
	bl getint
	mov r5, r0
	sub r0, r4, #1
	bl reverse
	mov r0, r5
	bl putint
	b label3
.globl main
main:
	push { lr }
	mov r0, #200
	sub sp, sp, #4
	bl reverse
	add sp, sp, #4
	mov r0, #0
	pop { pc }
