.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5 }
	movw r1, #63596
	movt r1, #65535
	movw r0, #32876
	movt r0, #65535
	mov r2, #5
	mov r3, #7
label2:
	cmp r2, #100
	bge label31
.p2align 4
label5:
	add r2, r2, #30
	cmp r3, #100
	bge label38
	add r4, r3, #24
	cmp r4, #100
	blt label9
.p2align 4
label7:
	add r3, r3, #6
	cmp r3, #100
	blt label7
	sub r3, r3, #100
	cmp r2, #100
	blt label5
	b label31
.p2align 4
label9:
	add r4, r3, #96
	cmp r4, #76
	bge label53
	add r4, r3, #384
	cmn r4, #20
	bge label58
	add r4, r3, #1536
	cmn r4, #404
	bge label63
	add r4, r3, #6144
	cmp r4, r1
	bge label68
	add r4, r3, #24576
	movw r5, #57452
	movt r5, #65535
	cmp r4, r5
	bge label73
	add r4, r3, #98304
	cmp r4, r0
	blt label17
.p2align 4
label15:
	add r3, r3, #24576
	cmp r3, r0
	blt label15
	add r3, r3, #6144
	movw r4, #57452
	movt r4, #65535
	cmp r3, r4
	blt label19
	b label132
.p2align 4
label17:
	add r4, r3, #196608
	cmp r4, r0
	add r3, r3, #98304
	blt label17
	add r3, r3, #24576
	cmp r3, r0
	blt label15
	add r3, r3, #6144
	movw r4, #57452
	movt r4, #65535
	cmp r3, r4
	bge label138
.p2align 4
label19:
	add r3, r3, #6144
	movw r4, #57452
	movt r4, #65535
	cmp r3, r4
	blt label19
.p2align 4
label21:
	add r3, r3, #1536
	cmp r3, r1
	blt label21
.p2align 4
label23:
	add r3, r3, #384
	cmn r3, #404
	blt label23
.p2align 4
label25:
	add r3, r3, #96
	cmn r3, #20
	blt label25
.p2align 4
label27:
	add r3, r3, #24
	cmp r3, #76
	blt label27
.p2align 4
label114:
	add r3, r3, #6
	cmp r3, #100
	blt label7
	sub r3, r3, #100
	cmp r2, #100
	blt label5
	b label31
.p2align 4
label132:
	add r3, r3, #1536
	cmp r3, r1
	blt label21
label137:
	add r3, r3, #384
	cmn r3, #404
	blt label23
	b label25
label53:
	add r3, r3, #24
	cmp r3, #76
	blt label27
	b label114
label58:
	add r3, r3, #96
	cmn r3, #20
	blt label25
	b label27
label63:
	add r3, r3, #384
	cmn r3, #404
	blt label23
	b label25
label31:
	mov r0, r3
	pop { r4, r5 }
	bx lr
label68:
	add r3, r3, #1536
	cmp r3, r1
	blt label21
	b label23
label73:
	add r3, r3, #6144
	movw r4, #57452
	movt r4, #65535
	cmp r3, r4
	blt label19
	b label21
label138:
	add r3, r3, #1536
	cmp r3, r1
	blt label21
	b label137
label38:
	sub r3, r3, #100
	b label2
