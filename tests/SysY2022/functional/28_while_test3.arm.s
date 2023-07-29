.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6 }
	mov r0, #7
	mov r6, #10
	mov r2, #4
	mov r4, #6
	mov r5, #2
	mov r3, #1
	sub sp, sp, #36
	mov r1, r4
	str r5, [sp, #24]
	mov r5, #5
label2:
	cmp r5, #20
	blt label11
	add r0, r6, r0
	add r0, r1, r0
	add r1, r2, r6
	add r0, r5, r0
	sub r1, r1, r3
	ldr r5, [sp, #24]
	add sp, sp, #36
	add r1, r5, r1
	sub r0, r0, r1
	pop { r4, r5, r6 }
	bx lr
label11:
	add r5, r5, #3
	str r5, [sp, #0]
	ldr r5, [sp, #24]
	str r5, [sp, #28]
	str r6, [sp, #32]
label12:
	cmp r1, #10
	blt label20
	b label85
label90:
	add r0, r0, #1
	str r5, [sp, #28]
	mov r6, r1
	str r1, [sp, #32]
	ldr r1, [sp, #4]
	b label12
label85:
	sub r1, r1, #2
	ldr r5, [sp, #28]
	str r5, [sp, #24]
	ldr r6, [sp, #32]
	ldr r5, [sp, #0]
	b label2
label20:
	add r1, r1, #1
	str r1, [sp, #4]
	ldr r5, [sp, #28]
	ldr r6, [sp, #32]
	mov r1, r6
label21:
	cmp r0, #7
	bne label90
	mov r0, r2
label28:
	cmp r1, #20
	blt label95
	b label94
label100:
	add r0, r0, #1
	mov r4, r1
	ldr r1, [sp, #8]
	b label28
label95:
	add r1, r1, #3
	str r1, [sp, #8]
	mov r1, r4
label36:
	cmp r0, #1
	bgt label101
	b label100
label94:
	sub r1, r1, #1
	mov r2, r0
	mov r0, #6
	b label21
label101:
	sub r0, r0, #1
	mov r2, r3
	str r0, [sp, #12]
label43:
	cmp r1, #2
	bgt label107
	b label106
label112:
	sub r2, r2, #8
	mov r5, r0
	ldr r1, [sp, #16]
	b label43
label106:
	add r1, r1, #1
	mov r3, r2
	ldr r0, [sp, #12]
	b label36
label107:
	sub r1, r1, #2
	mov r0, r5
	str r1, [sp, #16]
label49:
	cmp r2, #3
	blt label53
	b label112
label118:
	sub r0, r0, #1
	ldr r2, [sp, #20]
	b label49
label53:
	add r2, r2, #10
	cmp r0, #10
	str r2, [sp, #20]
	bge label118
	add r1, r0, #32
	cmp r1, #10
	blt label55
label72:
	add r0, r0, #8
	cmp r0, #10
	blt label72
	b label118
label55:
	add r1, r0, #128
	cmn r1, #22
	bge label70
	add r1, r0, #512
	cmn r1, #150
	blt label59
label57:
	add r0, r0, #128
	cmn r0, #150
	blt label57
	b label70
label60:
	add r0, r0, #512
	movw r1, #64874
	movt r1, #65535
	cmp r0, r1
	blt label60
	b label57
label70:
	add r0, r0, #32
	cmn r0, #22
	blt label70
	b label72
label59:
	add r1, r0, #2048
	movw r2, #64874
	movt r2, #65535
	cmp r1, r2
	bge label60
	add r1, r0, #8192
	movw r2, #62826
	movt r2, #65535
	cmp r1, r2
	blt label65
label63:
	add r0, r0, #2048
	movw r1, #62826
	movt r1, #65535
	cmp r0, r1
	blt label63
	b label60
label65:
	add r1, r0, #32768
	movw r2, #54634
	movt r2, #65535
	cmp r1, r2
	blt label66
label68:
	add r0, r0, #8192
	movw r1, #54634
	movt r1, #65535
	cmp r0, r1
	blt label68
	b label63
label66:
	add r1, r0, #65536
	movw r2, #54634
	add r0, r0, #32768
	movt r2, #65535
	cmp r1, r2
	blt label66
	b label68
