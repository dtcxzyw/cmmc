.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl unfold1
unfold1:
	lsl r0, r0, #1
	movw r2, #510
	orr r0, r0, r2
	add r0, r0, r1
	bx lr
.globl unfold10
unfold10:
	lsl r0, r0, #10
	orr r0, r0, #4177920
	cmp r0, r1
	mov r0, #0
	movwgt r0, #1
	bx lr
.globl unfold11
unfold11:
	lsl r0, r0, #11
	add r0, r0, #16252928
	cmp r0, r1
	mov r0, #0
	movwgt r0, #1
	bx lr
.globl unfold2
unfold2:
	lsl r0, r0, #2
	orr r0, r0, #16320
	sub r0, r1, r0
	bx lr
.globl unfold3
unfold3:
	lsl r0, r0, #4
	orr r0, r0, #1044480
	and r0, r0, r1
	bx lr
.globl unfold4
unfold4:
	lsl r0, r0, #5
	movw r2, #0
	movt r2, #510
	orr r0, r0, r2
	eor r0, r0, r1
	bx lr
.globl unfold5
unfold5:
	lsl r0, r0, #6
	add r0, r0, #31744
	orr r0, r0, r1
	bx lr
.globl unfold6
unfold6:
	lsl r0, r0, #8
	add r0, r0, #2031616
	and r0, r0, r1
	bx lr
.globl unfold7
unfold7:
	lsl r0, r0, #1
	and r0, r0, #512
	add r0, r0, r1
	bx lr
.globl unfold8
unfold8:
	lsl r0, r0, #9
	add r0, r0, #65011712
	eor r0, r0, r1
	bx lr
.globl unfold9
unfold9:
	lsl r0, r0, #1
	movw r2, #510
	eor r0, r0, r2
	add r0, r0, r1
	bx lr
