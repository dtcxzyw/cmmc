.arch armv7-a
.data
.text
.syntax unified
.arm
.fpu neon
.globl beqz
beqz:
	push { r4, r5 }
	sub sp, sp, #4
	mov r4, r1
	cmp r0, #0
	str r1, [sp, #0]
	bne label3
	mov r4, #0
	mov r5, r1
	str r4, [r1, #0]
label3:
	add sp, sp, #4
	pop { r4, r5 }
	bx lr
.globl beqi
beqi:
	push { r4, r5 }
	sub sp, sp, #4
	mov r4, r1
	cmp r0, #1
	str r1, [sp, #0]
	bne label15
	mov r4, #0
	mov r5, r1
	str r4, [r1, #0]
label15:
	add sp, sp, #4
	pop { r4, r5 }
	bx lr
.globl beq
beq:
	push { r4, r5 }
	sub sp, sp, #4
	mov r4, r2
	cmp r0, r1
	str r2, [sp, #0]
	bne label27
	mov r4, #0
	mov r5, r2
	str r4, [r2, #0]
label27:
	add sp, sp, #4
	pop { r4, r5 }
	bx lr
.globl bnez
bnez:
	push { r4, r5 }
	sub sp, sp, #4
	mov r4, r1
	cmp r0, #0
	str r1, [sp, #0]
	beq label40
	mov r4, #0
	mov r5, r1
	str r4, [r1, #0]
label40:
	add sp, sp, #4
	pop { r4, r5 }
	bx lr
.globl bnei
bnei:
	push { r4, r5 }
	sub sp, sp, #4
	mov r4, r1
	cmp r0, #1
	str r1, [sp, #0]
	beq label52
	mov r4, #0
	mov r5, r1
	str r4, [r1, #0]
label52:
	add sp, sp, #4
	pop { r4, r5 }
	bx lr
.globl bne
bne:
	push { r4, r5 }
	sub sp, sp, #4
	mov r4, r2
	cmp r0, r1
	str r2, [sp, #0]
	beq label64
	mov r4, #0
	mov r5, r2
	str r4, [r2, #0]
label64:
	add sp, sp, #4
	pop { r4, r5 }
	bx lr
.globl bltz
bltz:
	push { r4, r5 }
	sub sp, sp, #4
	mov r4, r1
	cmp r0, #0
	str r1, [sp, #0]
	bge label77
	mov r4, #0
	mov r5, r1
	str r4, [r1, #0]
label77:
	add sp, sp, #4
	pop { r4, r5 }
	bx lr
.globl blti1
blti1:
	push { r4, r5 }
	sub sp, sp, #4
	mov r4, r1
	cmp r0, #1
	str r1, [sp, #0]
	bge label89
	mov r4, #0
	mov r5, r1
	str r4, [r1, #0]
label89:
	add sp, sp, #4
	pop { r4, r5 }
	bx lr
.globl blti2
blti2:
	push { r4, r5 }
	sub sp, sp, #4
	mov r4, r1
	cmp r0, #10
	str r1, [sp, #0]
	bge label101
	mov r4, #0
	mov r5, r1
	str r4, [r1, #0]
label101:
	add sp, sp, #4
	pop { r4, r5 }
	bx lr
.globl blt
blt:
	push { r4, r5 }
	sub sp, sp, #4
	mov r4, r2
	cmp r0, r1
	str r2, [sp, #0]
	bge label113
	mov r4, #0
	mov r5, r2
	str r4, [r2, #0]
label113:
	add sp, sp, #4
	pop { r4, r5 }
	bx lr
.globl bgez
bgez:
	push { r4, r5 }
	sub sp, sp, #4
	mov r4, r1
	mvn r5, #0
	cmp r0, r5
	str r1, [sp, #0]
	ble label126
	mov r4, #0
	mov r5, r1
	str r4, [r1, #0]
label126:
	add sp, sp, #4
	pop { r4, r5 }
	bx lr
.globl bgei1
bgei1:
	push { r4, r5 }
	sub sp, sp, #4
	mov r4, r1
	cmp r0, #0
	str r1, [sp, #0]
	ble label140
	mov r4, #0
	mov r5, r1
	str r4, [r1, #0]
label140:
	add sp, sp, #4
	pop { r4, r5 }
	bx lr
.globl bgei2
bgei2:
	push { r4, r5 }
	sub sp, sp, #4
	mov r4, r1
	cmp r0, #9
	str r1, [sp, #0]
	ble label152
	mov r4, #0
	mov r5, r1
	str r4, [r1, #0]
label152:
	add sp, sp, #4
	pop { r4, r5 }
	bx lr
.globl bge
bge:
	push { r4, r5 }
	sub sp, sp, #4
	mov r4, r2
	cmp r0, r1
	str r2, [sp, #0]
	blt label164
	mov r4, #0
	mov r5, r2
	str r4, [r2, #0]
label164:
	add sp, sp, #4
	pop { r4, r5 }
	bx lr
.globl bgtz
bgtz:
	push { r4, r5 }
	sub sp, sp, #4
	mov r4, r1
	cmp r0, #0
	str r1, [sp, #0]
	ble label177
	mov r4, #0
	mov r5, r1
	str r4, [r1, #0]
label177:
	add sp, sp, #4
	pop { r4, r5 }
	bx lr
.globl bgti1
bgti1:
	push { r4, r5 }
	sub sp, sp, #4
	mov r4, r1
	mvn r5, #0
	cmp r0, r5
	str r1, [sp, #0]
	ble label189
	mov r4, #0
	mov r5, r1
	str r4, [r1, #0]
label189:
	add sp, sp, #4
	pop { r4, r5 }
	bx lr
.globl bgti2
bgti2:
	push { r4, r5 }
	sub sp, sp, #4
	mov r4, r1
	cmp r0, #10
	str r1, [sp, #0]
	ble label203
	mov r4, #0
	mov r5, r1
	str r4, [r1, #0]
label203:
	add sp, sp, #4
	pop { r4, r5 }
	bx lr
.globl bgt
bgt:
	push { r4, r5 }
	sub sp, sp, #4
	mov r4, r2
	cmp r0, r1
	str r2, [sp, #0]
	ble label215
	mov r4, #0
	mov r5, r2
	str r4, [r2, #0]
label215:
	add sp, sp, #4
	pop { r4, r5 }
	bx lr
.globl blez
blez:
	push { r4, r5 }
	sub sp, sp, #4
	mov r4, r1
	cmp r0, #1
	str r1, [sp, #0]
	bge label228
	mov r4, #0
	mov r5, r1
	str r4, [r1, #0]
label228:
	add sp, sp, #4
	pop { r4, r5 }
	bx lr
.globl blei1
blei1:
	push { r4, r5 }
	sub sp, sp, #4
	mov r4, r1
	cmp r0, #0
	str r1, [sp, #0]
	bge label240
	mov r4, #0
	mov r5, r1
	str r4, [r1, #0]
label240:
	add sp, sp, #4
	pop { r4, r5 }
	bx lr
.globl blei2
blei2:
	push { r4, r5 }
	sub sp, sp, #4
	mov r4, r1
	cmp r0, #11
	str r1, [sp, #0]
	bge label252
	mov r4, #0
	mov r5, r1
	str r4, [r1, #0]
label252:
	add sp, sp, #4
	pop { r4, r5 }
	bx lr
.globl ble
ble:
	push { r4, r5 }
	sub sp, sp, #4
	mov r4, r2
	cmp r0, r1
	str r2, [sp, #0]
	bgt label264
	mov r4, #0
	mov r5, r2
	str r4, [r2, #0]
label264:
	add sp, sp, #4
	pop { r4, r5 }
	bx lr
.globl bfeq
bfeq:
	push { r4, r5 }
	sub sp, sp, #4
	vmov s0, r0
	vmov s1, r1
	mov r4, r2
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	str r2, [sp, #0]
	bne label277
	mov r4, #0
	mov r5, r2
	str r4, [r2, #0]
label277:
	add sp, sp, #4
	pop { r4, r5 }
	bx lr
.globl bfne
bfne:
	push { r4, r5 }
	sub sp, sp, #4
	vmov s0, r0
	vmov s1, r1
	mov r4, r2
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	str r2, [sp, #0]
	beq label292
	mov r4, #0
	mov r5, r2
	str r4, [r2, #0]
label292:
	add sp, sp, #4
	pop { r4, r5 }
	bx lr
.globl bflt
bflt:
	push { r4, r5 }
	sub sp, sp, #4
	vmov s0, r0
	vmov s1, r1
	mov r4, r2
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	str r2, [sp, #0]
	bge label307
	mov r4, #0
	mov r5, r2
	str r4, [r2, #0]
label307:
	add sp, sp, #4
	pop { r4, r5 }
	bx lr
.globl bfle
bfle:
	push { r4, r5 }
	sub sp, sp, #4
	vmov s0, r0
	vmov s1, r1
	mov r4, r2
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	str r2, [sp, #0]
	bgt label322
	mov r4, #0
	mov r5, r2
	str r4, [r2, #0]
label322:
	add sp, sp, #4
	pop { r4, r5 }
	bx lr
.globl bfge
bfge:
	push { r4, r5 }
	sub sp, sp, #4
	vmov s0, r0
	vmov s1, r1
	mov r4, r2
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	str r2, [sp, #0]
	bmi label337
	mov r4, #0
	mov r5, r2
	str r4, [r2, #0]
label337:
	add sp, sp, #4
	pop { r4, r5 }
	bx lr
.globl bfgt
bfgt:
	push { r4, r5 }
	sub sp, sp, #4
	vmov s0, r0
	vmov s1, r1
	mov r4, r2
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	str r2, [sp, #0]
	bls label352
	mov r4, #0
	mov r5, r2
	str r4, [r2, #0]
label352:
	add sp, sp, #4
	pop { r4, r5 }
	bx lr
