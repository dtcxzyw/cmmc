.arch armv7-a
.data
.text
.syntax unified
.arm
.fpu neon
.globl beqz
beqz:
	sub sp, sp, #12
	str r4 [sp, #4]
	str r5 [sp, #8]
	mov r4, r1
	cmp r0, #0
	mov r5, #0
	movwne r5, #1
	str r1 [sp, #0]
	cbnz r5, label3
	mov r4, #0
	mov r5, r1
	str r4 [r1, #0]
label3:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #12
	bx lr
.globl beqi
beqi:
	sub sp, sp, #12
	str r4 [sp, #4]
	str r5 [sp, #8]
	mov r4, r1
	cmp r0, #1
	mov r5, #0
	movwne r5, #1
	str r1 [sp, #0]
	cbnz r5, label18
	mov r4, #0
	mov r5, r1
	str r4 [r1, #0]
label18:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #12
	bx lr
.globl beq
beq:
	sub sp, sp, #12
	str r4 [sp, #4]
	str r5 [sp, #8]
	mov r4, r2
	cmp r0, r1
	mov r5, #0
	movwne r5, #1
	str r2 [sp, #0]
	cbnz r5, label33
	mov r4, #0
	mov r5, r2
	str r4 [r2, #0]
label33:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #12
	bx lr
.globl bnez
bnez:
	sub sp, sp, #12
	str r4 [sp, #4]
	str r5 [sp, #8]
	mov r4, r1
	cmp r0, #0
	mov r5, #0
	movweq r5, #1
	str r1 [sp, #0]
	cbnz r5, label49
	mov r4, #0
	mov r5, r1
	str r4 [r1, #0]
label49:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #12
	bx lr
.globl bnei
bnei:
	sub sp, sp, #12
	str r4 [sp, #4]
	str r5 [sp, #8]
	mov r4, r1
	cmp r0, #1
	mov r5, #0
	movweq r5, #1
	str r1 [sp, #0]
	cbnz r5, label64
	mov r4, #0
	mov r5, r1
	str r4 [r1, #0]
label64:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #12
	bx lr
.globl bne
bne:
	sub sp, sp, #12
	str r4 [sp, #4]
	str r5 [sp, #8]
	mov r4, r2
	cmp r0, r1
	mov r5, #0
	movweq r5, #1
	str r2 [sp, #0]
	cbnz r5, label79
	mov r4, #0
	mov r5, r2
	str r4 [r2, #0]
label79:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #12
	bx lr
.globl bltz
bltz:
	sub sp, sp, #12
	str r4 [sp, #4]
	str r5 [sp, #8]
	mov r4, r1
	cmp r0, #0
	mov r5, #0
	movwge r5, #1
	str r1 [sp, #0]
	cbnz r5, label95
	mov r4, #0
	mov r5, r1
	str r4 [r1, #0]
label95:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #12
	bx lr
.globl blti1
blti1:
	sub sp, sp, #12
	str r4 [sp, #4]
	str r5 [sp, #8]
	mov r4, r1
	cmp r0, #1
	mov r5, #0
	movwge r5, #1
	str r1 [sp, #0]
	cbnz r5, label110
	mov r4, #0
	mov r5, r1
	str r4 [r1, #0]
label110:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #12
	bx lr
.globl blti2
blti2:
	sub sp, sp, #12
	str r4 [sp, #4]
	str r5 [sp, #8]
	mov r4, r1
	cmp r0, #10
	mov r5, #0
	movwge r5, #1
	str r1 [sp, #0]
	cbnz r5, label125
	mov r4, #0
	mov r5, r1
	str r4 [r1, #0]
label125:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #12
	bx lr
.globl blt
blt:
	sub sp, sp, #12
	str r4 [sp, #4]
	str r5 [sp, #8]
	mov r4, r2
	cmp r0, r1
	mov r5, #0
	movwge r5, #1
	str r2 [sp, #0]
	cbnz r5, label140
	mov r4, #0
	mov r5, r2
	str r4 [r2, #0]
label140:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #12
	bx lr
.globl bgez
bgez:
	sub sp, sp, #16
	str r4 [sp, #4]
	str r5 [sp, #8]
	str r6 [sp, #12]
	mov r4, r1
	mvn r5, #0
	cmp r0, r5
	mov r6, #0
	movwle r6, #1
	str r1 [sp, #0]
	cbnz r6, label156
	mov r4, #0
	mov r5, r1
	str r4 [r1, #0]
label156:
	ldr r6, [sp, #12]
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #16
	bx lr
.globl bgei1
bgei1:
	sub sp, sp, #12
	str r4 [sp, #4]
	str r5 [sp, #8]
	mov r4, r1
	cmp r0, #0
	mov r5, #0
	movwle r5, #1
	str r1 [sp, #0]
	cbnz r5, label174
	mov r4, #0
	mov r5, r1
	str r4 [r1, #0]
label174:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #12
	bx lr
.globl bgei2
bgei2:
	sub sp, sp, #12
	str r4 [sp, #4]
	str r5 [sp, #8]
	mov r4, r1
	cmp r0, #9
	mov r5, #0
	movwle r5, #1
	str r1 [sp, #0]
	cbnz r5, label189
	mov r4, #0
	mov r5, r1
	str r4 [r1, #0]
label189:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #12
	bx lr
.globl bge
bge:
	sub sp, sp, #12
	str r4 [sp, #4]
	str r5 [sp, #8]
	mov r4, r2
	cmp r0, r1
	mov r5, #0
	movwlt r5, #1
	str r2 [sp, #0]
	cbnz r5, label204
	mov r4, #0
	mov r5, r2
	str r4 [r2, #0]
label204:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #12
	bx lr
.globl bgtz
bgtz:
	sub sp, sp, #12
	str r4 [sp, #4]
	str r5 [sp, #8]
	mov r4, r1
	cmp r0, #0
	mov r5, #0
	movwle r5, #1
	str r1 [sp, #0]
	cbnz r5, label220
	mov r4, #0
	mov r5, r1
	str r4 [r1, #0]
label220:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #12
	bx lr
.globl bgti1
bgti1:
	sub sp, sp, #16
	str r4 [sp, #4]
	str r5 [sp, #8]
	str r6 [sp, #12]
	mov r4, r1
	mvn r5, #0
	cmp r0, r5
	mov r6, #0
	movwle r6, #1
	str r1 [sp, #0]
	cbnz r6, label235
	mov r4, #0
	mov r5, r1
	str r4 [r1, #0]
label235:
	ldr r6, [sp, #12]
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #16
	bx lr
.globl bgti2
bgti2:
	sub sp, sp, #12
	str r4 [sp, #4]
	str r5 [sp, #8]
	mov r4, r1
	cmp r0, #10
	mov r5, #0
	movwle r5, #1
	str r1 [sp, #0]
	cbnz r5, label253
	mov r4, #0
	mov r5, r1
	str r4 [r1, #0]
label253:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #12
	bx lr
.globl bgt
bgt:
	sub sp, sp, #12
	str r4 [sp, #4]
	str r5 [sp, #8]
	mov r4, r2
	cmp r0, r1
	mov r5, #0
	movwle r5, #1
	str r2 [sp, #0]
	cbnz r5, label268
	mov r4, #0
	mov r5, r2
	str r4 [r2, #0]
label268:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #12
	bx lr
.globl blez
blez:
	sub sp, sp, #12
	str r4 [sp, #4]
	str r5 [sp, #8]
	mov r4, r1
	cmp r0, #1
	mov r5, #0
	movwge r5, #1
	str r1 [sp, #0]
	cbnz r5, label284
	mov r4, #0
	mov r5, r1
	str r4 [r1, #0]
label284:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #12
	bx lr
.globl blei1
blei1:
	sub sp, sp, #12
	str r4 [sp, #4]
	str r5 [sp, #8]
	mov r4, r1
	cmp r0, #0
	mov r5, #0
	movwge r5, #1
	str r1 [sp, #0]
	cbnz r5, label299
	mov r4, #0
	mov r5, r1
	str r4 [r1, #0]
label299:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #12
	bx lr
.globl blei2
blei2:
	sub sp, sp, #12
	str r4 [sp, #4]
	str r5 [sp, #8]
	mov r4, r1
	cmp r0, #11
	mov r5, #0
	movwge r5, #1
	str r1 [sp, #0]
	cbnz r5, label314
	mov r4, #0
	mov r5, r1
	str r4 [r1, #0]
label314:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #12
	bx lr
.globl ble
ble:
	sub sp, sp, #12
	str r4 [sp, #4]
	str r5 [sp, #8]
	mov r4, r2
	cmp r0, r1
	mov r5, #0
	movwgt r5, #1
	str r2 [sp, #0]
	cbnz r5, label329
	mov r4, #0
	mov r5, r2
	str r4 [r2, #0]
label329:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #12
	bx lr
.globl bfeq
bfeq:
	sub sp, sp, #12
	str r4 [sp, #4]
	str r5 [sp, #8]
	vmov s0, r0
	vmov s1, r1
	mov r4, r2
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, fpcsr
	mov r5, #0
	movwne r5, #1
	str r2 [sp, #0]
	cbnz r5, label345
	mov r4, #0
	mov r5, r2
	str r4 [r2, #0]
label345:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #12
	bx lr
.globl bfne
bfne:
	sub sp, sp, #12
	str r4 [sp, #4]
	str r5 [sp, #8]
	vmov s0, r0
	vmov s1, r1
	mov r4, r2
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, fpcsr
	mov r5, #0
	movweq r5, #1
	str r2 [sp, #0]
	cbnz r5, label363
	mov r4, #0
	mov r5, r2
	str r4 [r2, #0]
label363:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #12
	bx lr
.globl bflt
bflt:
	sub sp, sp, #12
	str r4 [sp, #4]
	str r5 [sp, #8]
	vmov s0, r0
	vmov s1, r1
	mov r4, r2
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, fpcsr
	mov r5, #0
	movwge r5, #1
	str r2 [sp, #0]
	cbnz r5, label381
	mov r4, #0
	mov r5, r2
	str r4 [r2, #0]
label381:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #12
	bx lr
.globl bfle
bfle:
	sub sp, sp, #12
	str r4 [sp, #4]
	str r5 [sp, #8]
	vmov s0, r0
	vmov s1, r1
	mov r4, r2
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, fpcsr
	mov r5, #0
	movwgt r5, #1
	str r2 [sp, #0]
	cbnz r5, label399
	mov r4, #0
	mov r5, r2
	str r4 [r2, #0]
label399:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #12
	bx lr
.globl bfge
bfge:
	sub sp, sp, #12
	str r4 [sp, #4]
	str r5 [sp, #8]
	vmov s0, r0
	vmov s1, r1
	mov r4, r2
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, fpcsr
	mov r5, #0
	movwmi r5, #1
	str r2 [sp, #0]
	cbnz r5, label417
	mov r4, #0
	mov r5, r2
	str r4 [r2, #0]
label417:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #12
	bx lr
.globl bfgt
bfgt:
	sub sp, sp, #12
	str r4 [sp, #4]
	str r5 [sp, #8]
	vmov s0, r0
	vmov s1, r1
	mov r4, r2
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, fpcsr
	mov r5, #0
	movwls r5, #1
	str r2 [sp, #0]
	cbnz r5, label435
	mov r4, #0
	mov r5, r2
	str r4 [r2, #0]
label435:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #12
	bx lr
