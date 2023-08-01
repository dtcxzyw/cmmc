.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7 }
	mov r2, #7
	mov r7, #10
	mov r1, #6
	mov r4, #1
	mov r3, #2
	mov r6, #4
	sub sp, sp, #32
	mov r0, r1
	str r3, [sp, #4]
	mov r3, #5
label2:
	cmp r3, #20
	bge label78
	add r3, r3, #3
	mov r5, r1
	str r3, [sp, #28]
	ldr r3, [sp, #4]
	str r7, [sp, #0]
label12:
	cmp r0, #10
	blt label21
	sub r0, r0, #2
	str r3, [sp, #4]
	mov r1, r5
	ldr r7, [sp, #0]
	ldr r3, [sp, #28]
	b label2
label21:
	add r0, r0, #1
	str r0, [sp, #24]
	ldr r7, [sp, #0]
	mov r0, r6
	mov r1, r7
label22:
	cmp r2, #7
	bne label91
	mov r2, r4
label30:
	cmp r1, #20
	bge label36
	add r1, r1, #3
	str r1, [sp, #20]
	mov r1, r5
label38:
	cmp r0, #1
	bgt label44
	add r0, r0, #1
	mov r5, r1
	ldr r1, [sp, #20]
	b label30
label36:
	sub r1, r1, #1
	mov r4, r2
	mov r2, #6
	b label22
label78:
	add r1, r7, r2
	add r0, r0, r1
	add r1, r6, r7
	add r0, r3, r0
	sub r1, r1, r4
	ldr r3, [sp, #4]
	add sp, sp, #32
	add r1, r3, r1
	sub r0, r0, r1
	pop { r4, r5, r6, r7 }
	bx lr
label91:
	add r2, r2, #1
	mov r6, r0
	str r1, [sp, #0]
	mov r7, r1
	ldr r0, [sp, #24]
	b label12
label44:
	sub r0, r0, #1
	str r0, [sp, #16]
label45:
	cmp r1, #2
	bgt label50
	b label49
label114:
	sub r2, r2, #8
	mov r3, r0
	ldr r1, [sp, #12]
	b label45
label50:
	sub r1, r1, #2
	mov r0, r3
	str r1, [sp, #12]
label51:
	cmp r2, #3
	bge label114
	add r2, r2, #10
	cmp r0, #10
	str r2, [sp, #8]
	bge label55
	add r1, r0, #32
	cmp r1, #10
	bge label58
	add r1, r0, #128
	cmn r1, #22
	bge label61
	add r1, r0, #512
	cmn r1, #150
	bge label64
	add r1, r0, #2048
	movw r2, #64874
	movt r2, #65535
	cmp r1, r2
	bge label67
	add r1, r0, #8192
	movw r2, #62826
	movt r2, #65535
	cmp r1, r2
	bge label75
	add r1, r0, #32768
	movw r2, #54634
	movt r2, #65535
	cmp r1, r2
	bge label73
label71:
	add r1, r0, #65536
	movw r2, #54634
	movt r2, #65535
	add r0, r0, #32768
	cmp r1, r2
	blt label71
label73:
	add r0, r0, #8192
	movw r1, #54634
	movt r1, #65535
	cmp r0, r1
	blt label73
	b label75
label67:
	add r0, r0, #512
	movw r1, #64874
	movt r1, #65535
	cmp r0, r1
	blt label67
label64:
	add r0, r0, #128
	cmn r0, #150
	blt label64
	b label61
label75:
	add r0, r0, #2048
	movw r1, #62826
	movt r1, #65535
	cmp r0, r1
	blt label75
	b label67
label49:
	add r1, r1, #1
	ldr r0, [sp, #16]
	b label38
label55:
	sub r0, r0, #1
	ldr r2, [sp, #8]
	b label51
label58:
	add r0, r0, #8
	cmp r0, #10
	blt label58
	b label55
label61:
	add r0, r0, #32
	cmn r0, #22
	blt label61
	b label58
