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
	mov r5, #7
	mov r4, #10
	mov r3, #4
	mov r2, #6
	mov r1, #1
	mov r0, #2
	sub sp, sp, #36
	mov r6, r2
	str r0, [sp, #8]
	mov r0, #5
label2:
	cmp r0, #20
	bge label78
	add r0, r0, #3
	str r0, [sp, #32]
	ldr r0, [sp, #8]
	str r0, [sp, #4]
	mov r0, r6
	str r3, [sp, #0]
	cmp r6, #10
	bge label85
label20:
	add r0, r0, #1
	str r0, [sp, #28]
	ldr r0, [sp, #4]
	ldr r3, [sp, #0]
	cmp r5, #7
	bne label28
label29:
	cmp r4, #20
	bge label35
label36:
	add r4, r4, #3
	str r4, [sp, #24]
	cmp r3, #1
	bgt label43
	b label42
label85:
	sub r6, r0, #2
	ldr r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0]
	ldr r0, [sp, #32]
	b label2
label42:
	add r3, r3, #1
	ldr r4, [sp, #24]
	cmp r4, #20
	blt label36
	b label35
label43:
	sub r3, r3, #1
	str r3, [sp, #20]
label44:
	cmp r2, #2
	bgt label49
	add r2, r2, #1
	ldr r3, [sp, #20]
	cmp r3, #1
	bgt label43
	b label42
label28:
	add r5, r5, #1
	str r0, [sp, #4]
	str r3, [sp, #0]
	ldr r0, [sp, #28]
	cmp r0, #10
	blt label20
	b label85
label35:
	sub r4, r4, #1
	mov r5, #6
	cmp r5, #7
	beq label29
	b label28
label49:
	sub r2, r2, #2
	str r2, [sp, #16]
	cmp r1, #3
	bge label113
label53:
	add r1, r1, #10
	cmp r0, #10
	str r1, [sp, #12]
	bge label54
	add r1, r0, #32
	cmp r1, #10
	bge label57
	add r1, r0, #128
	cmn r1, #22
	bge label60
	add r1, r0, #512
	cmn r1, #150
	bge label63
	add r1, r0, #2048
	movw r2, #64874
	movt r2, #65535
	cmp r1, r2
	bge label154
	add r1, r0, #8192
	movw r2, #62826
	movt r2, #65535
	cmp r1, r2
	bge label159
	add r1, r0, #32768
	movw r2, #54634
	movt r2, #65535
	cmp r1, r2
	blt label70
	b label68
label169:
	add r0, r0, #2048
	movw r1, #62826
	movt r1, #65535
	cmp r0, r1
	blt label72
	b label74
label70:
	add r1, r0, #65536
	movw r2, #54634
	add r0, r0, #32768
	movt r2, #65535
	cmp r1, r2
	blt label70
	add r0, r0, #8192
	movw r1, #54634
	movt r1, #65535
	cmp r0, r1
	blt label68
	b label169
label159:
	add r0, r0, #2048
	movw r1, #62826
	movt r1, #65535
	cmp r0, r1
	bge label74
label72:
	add r0, r0, #2048
	movw r1, #62826
	movt r1, #65535
	cmp r0, r1
	blt label72
label74:
	add r0, r0, #512
	movw r1, #64874
	movt r1, #65535
	cmp r0, r1
	blt label74
	b label185
label60:
	add r0, r0, #32
	cmn r0, #22
	blt label60
	b label139
label149:
	add r0, r0, #32
	cmn r0, #22
	blt label60
	b label139
label154:
	add r0, r0, #512
	movw r1, #64874
	movt r1, #65535
	cmp r0, r1
	blt label74
label185:
	add r0, r0, #128
	cmn r0, #150
	blt label63
	b label149
label129:
	sub r0, r0, #1
	ldr r1, [sp, #12]
	cmp r1, #3
	blt label53
	b label113
label139:
	add r0, r0, #8
	cmp r0, #10
	blt label57
	b label129
label113:
	sub r1, r1, #8
	ldr r2, [sp, #16]
	b label44
label54:
	sub r0, r0, #1
	ldr r1, [sp, #12]
	cmp r1, #3
	blt label53
	b label113
label78:
	add r2, r4, r5
	add r2, r6, r2
	add r2, r0, r2
	add r0, r3, r4
	sub r1, r0, r1
	ldr r0, [sp, #8]
	add sp, sp, #36
	add r0, r0, r1
	sub r0, r2, r0
	pop { r4, r5, r6 }
	bx lr
label68:
	add r0, r0, #8192
	movw r1, #54634
	movt r1, #65535
	cmp r0, r1
	blt label68
	b label169
label63:
	add r0, r0, #128
	cmn r0, #150
	blt label63
	b label149
label57:
	add r0, r0, #8
	cmp r0, #10
	blt label57
	b label129
