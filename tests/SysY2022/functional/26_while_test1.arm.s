.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	mov r1, #7
	mov r0, #5
	cmp r0, #100
	bge label31
.p2align 4
label5:
	add r0, r0, #30
	cmp r1, #100
	blt label6
	b label38
.p2align 4
label68:
	add r1, r1, #1536
	movw r2, #63596
	movt r2, #65535
	cmp r1, r2
	blt label21
	add r1, r1, #384
	cmn r1, #404
	blt label23
	add r1, r1, #96
	cmn r1, #20
	blt label25
	add r1, r1, #24
	cmp r1, #76
	blt label27
	add r1, r1, #6
	cmp r1, #100
	blt label7
	sub r1, r1, #100
	cmp r0, #100
	blt label5
label31:
	mov r0, r1
	bx lr
.p2align 4
label15:
	add r1, r1, #24576
	movw r2, #32876
	movt r2, #65535
	cmp r1, r2
	blt label15
	add r1, r1, #6144
	movw r2, #57452
	movt r2, #65535
	cmp r1, r2
	bge label130
.p2align 4
label19:
	add r1, r1, #6144
	movw r2, #57452
	movt r2, #65535
	cmp r1, r2
	blt label19
.p2align 4
label21:
	add r1, r1, #1536
	movw r2, #63596
	movt r2, #65535
	cmp r1, r2
	blt label21
.p2align 4
label23:
	add r1, r1, #384
	cmn r1, #404
	blt label23
.p2align 4
label25:
	add r1, r1, #96
	cmn r1, #20
	blt label25
.p2align 4
label27:
	add r1, r1, #24
	cmp r1, #76
	blt label27
	add r1, r1, #6
	cmp r1, #100
	blt label7
	sub r1, r1, #100
	cmp r0, #100
	blt label5
	b label31
.p2align 4
label7:
	add r1, r1, #6
	cmp r1, #100
	blt label7
	b label48
.p2align 4
label130:
	add r1, r1, #1536
	movw r2, #63596
	movt r2, #65535
	cmp r1, r2
	blt label21
	add r1, r1, #384
	cmn r1, #404
	blt label23
	add r1, r1, #96
	cmn r1, #20
	blt label25
	add r1, r1, #24
	cmp r1, #76
	blt label27
	add r1, r1, #6
	cmp r1, #100
	blt label7
	sub r1, r1, #100
	cmp r0, #100
	blt label5
	b label31
.p2align 4
label6:
	add r2, r1, #24
	cmp r2, #100
	bge label7
	add r2, r1, #96
	cmp r2, #76
	bge label53
	add r2, r1, #384
	cmn r2, #20
	bge label58
	add r2, r1, #1536
	cmn r2, #404
	bge label63
	add r2, r1, #6144
	movw r3, #63596
	movt r3, #65535
	cmp r2, r3
	bge label68
	add r2, r1, #24576
	movw r3, #57452
	movt r3, #65535
	cmp r2, r3
	bge label73
	add r2, r1, #98304
	movw r3, #32876
	movt r3, #65535
	cmp r2, r3
	bge label15
.p2align 4
label17:
	add r2, r1, #196608
	movw r3, #32876
	add r1, r1, #98304
	movt r3, #65535
	cmp r2, r3
	blt label17
	add r1, r1, #24576
	movw r2, #32876
	movt r2, #65535
	cmp r1, r2
	blt label15
	add r1, r1, #6144
	movw r2, #57452
	movt r2, #65535
	cmp r1, r2
	blt label19
	add r1, r1, #1536
	movw r2, #63596
	movt r2, #65535
	cmp r1, r2
	blt label21
	add r1, r1, #384
	cmn r1, #404
	blt label23
	add r1, r1, #96
	cmn r1, #20
	blt label25
	add r1, r1, #24
	cmp r1, #76
	blt label27
	add r1, r1, #6
	cmp r1, #100
	blt label7
	sub r1, r1, #100
	cmp r0, #100
	blt label5
	b label31
.p2align 4
label53:
	add r1, r1, #24
	cmp r1, #76
	blt label27
	add r1, r1, #6
	cmp r1, #100
	blt label7
	sub r1, r1, #100
	cmp r0, #100
	blt label5
	b label31
.p2align 4
label58:
	add r1, r1, #96
	cmn r1, #20
	blt label25
	add r1, r1, #24
	cmp r1, #76
	blt label27
	add r1, r1, #6
	cmp r1, #100
	blt label7
	sub r1, r1, #100
	cmp r0, #100
	blt label5
	b label31
.p2align 4
label63:
	add r1, r1, #384
	cmn r1, #404
	blt label23
	add r1, r1, #96
	cmn r1, #20
	blt label25
	add r1, r1, #24
	cmp r1, #76
	blt label27
	add r1, r1, #6
	cmp r1, #100
	blt label7
	sub r1, r1, #100
	cmp r0, #100
	blt label5
	b label31
.p2align 4
label73:
	add r1, r1, #6144
	movw r2, #57452
	movt r2, #65535
	cmp r1, r2
	blt label19
	add r1, r1, #1536
	movw r2, #63596
	movt r2, #65535
	cmp r1, r2
	blt label21
	add r1, r1, #384
	cmn r1, #404
	blt label23
	add r1, r1, #96
	cmn r1, #20
	blt label25
	add r1, r1, #24
	cmp r1, #76
	blt label27
	add r1, r1, #6
	cmp r1, #100
	blt label7
	sub r1, r1, #100
	cmp r0, #100
	blt label5
	b label31
.p2align 4
label48:
	sub r1, r1, #100
	cmp r0, #100
	blt label5
	b label31
.p2align 4
label38:
	sub r1, r1, #100
	cmp r0, #100
	blt label5
	b label31
