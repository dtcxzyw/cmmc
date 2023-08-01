.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4 }
	mov r0, #5
	mov r1, #6
	mov r3, #7
	mov r2, #10
	cmp r0, #20
	blt label8
label7:
	add r2, r2, r3
	add r1, r1, r2
	add r0, r0, r1
	pop { r4 }
	bx lr
.p2align 4
label8:
	add r0, r0, #3
	cmp r1, #10
	bge label54
.p2align 4
label13:
	add r1, r1, #1
	cmp r3, #7
	bne label59
.p2align 4
label17:
	cmp r2, #20
	bge label63
	add r3, r2, #12
	cmp r3, #20
	bge label68
	add r3, r2, #48
	cmp r3, #8
	bge label73
	add r3, r2, #192
	cmn r3, #40
	bge label78
	add r3, r2, #768
	cmn r3, #232
	bge label83
	add r3, r2, #3072
	cmn r3, #1000
	bge label88
	add r3, r2, #12288
	movw r4, #61464
	movt r4, #65535
	cmp r3, r4
	bge label93
	add r3, r2, #49152
	movw r4, #49176
	movt r4, #65535
	cmp r3, r4
	blt label27
.p2align 4
label25:
	add r2, r2, #12288
	movw r3, #49176
	movt r3, #65535
	cmp r2, r3
	blt label25
	add r2, r2, #3072
	movw r3, #61464
	movt r3, #65535
	cmp r2, r3
	blt label29
	b label158
.p2align 4
label27:
	add r3, r2, #98304
	movw r4, #49176
	movt r4, #65535
	add r2, r2, #49152
	cmp r3, r4
	blt label27
	add r2, r2, #12288
	movw r3, #49176
	movt r3, #65535
	cmp r2, r3
	blt label25
	add r2, r2, #3072
	movw r3, #61464
	movt r3, #65535
	cmp r2, r3
	bge label173
.p2align 4
label29:
	add r2, r2, #3072
	movw r3, #61464
	movt r3, #65535
	cmp r2, r3
	blt label29
.p2align 4
label31:
	add r2, r2, #768
	cmn r2, #1000
	blt label31
.p2align 4
label33:
	add r2, r2, #192
	cmn r2, #232
	blt label33
.p2align 4
label35:
	add r2, r2, #48
	cmn r2, #40
	blt label35
.p2align 4
label37:
	add r2, r2, #12
	cmp r2, #8
	blt label37
.p2align 4
label39:
	add r2, r2, #3
	cmp r2, #20
	blt label39
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label17
.p2align 4
label160:
	add r3, r3, #1
	cmp r1, #10
	blt label13
.p2align 4
label174:
	sub r1, r1, #2
	cmp r0, #20
	blt label8
	b label7
.p2align 4
label158:
	add r2, r2, #768
	cmn r2, #1000
	blt label31
	add r2, r2, #192
	cmn r2, #232
	blt label33
	add r2, r2, #48
	cmn r2, #40
	blt label35
	add r2, r2, #12
	cmp r2, #8
	blt label37
	add r2, r2, #3
	cmp r2, #20
	blt label39
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label17
	b label160
.p2align 4
label68:
	add r2, r2, #3
	cmp r2, #20
	blt label39
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label17
	add r3, r3, #1
	cmp r1, #10
	blt label13
	b label174
.p2align 4
label73:
	add r2, r2, #12
	cmp r2, #8
	blt label37
	add r2, r2, #3
	cmp r2, #20
	blt label39
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label17
	add r3, r3, #1
	cmp r1, #10
	blt label13
	b label174
.p2align 4
label78:
	add r2, r2, #48
	cmn r2, #40
	blt label35
	add r2, r2, #12
	cmp r2, #8
	blt label37
	add r2, r2, #3
	cmp r2, #20
	blt label39
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label17
	add r3, r3, #1
	cmp r1, #10
	blt label13
	b label174
.p2align 4
label83:
	add r2, r2, #192
	cmn r2, #232
	blt label33
	add r2, r2, #48
	cmn r2, #40
	blt label35
	add r2, r2, #12
	cmp r2, #8
	blt label37
	add r2, r2, #3
	cmp r2, #20
	blt label39
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label17
	b label160
.p2align 4
label88:
	add r2, r2, #768
	cmn r2, #1000
	blt label31
	add r2, r2, #192
	cmn r2, #232
	blt label33
	add r2, r2, #48
	cmn r2, #40
	blt label35
	add r2, r2, #12
	cmp r2, #8
	blt label37
	add r2, r2, #3
	cmp r2, #20
	blt label39
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label17
	b label160
.p2align 4
label93:
	add r2, r2, #3072
	movw r3, #61464
	movt r3, #65535
	cmp r2, r3
	blt label29
	add r2, r2, #768
	cmn r2, #1000
	blt label31
	add r2, r2, #192
	cmn r2, #232
	blt label33
	add r2, r2, #48
	cmn r2, #40
	blt label35
	add r2, r2, #12
	cmp r2, #8
	blt label37
	add r2, r2, #3
	cmp r2, #20
	blt label39
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label17
	b label160
.p2align 4
label173:
	add r2, r2, #768
	cmn r2, #1000
	blt label31
	add r2, r2, #192
	cmn r2, #232
	blt label33
	add r2, r2, #48
	cmn r2, #40
	blt label35
	add r2, r2, #12
	cmp r2, #8
	blt label37
	add r2, r2, #3
	cmp r2, #20
	blt label39
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label17
	b label160
.p2align 4
label63:
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label17
	add r3, r3, #1
	cmp r1, #10
	blt label13
label54:
	sub r1, r1, #2
	cmp r0, #20
	blt label8
	b label7
.p2align 4
label59:
	add r3, r3, #1
	cmp r1, #10
	blt label13
	b label54
