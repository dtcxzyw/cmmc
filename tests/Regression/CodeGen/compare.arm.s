.arch armv7-a
.data
.text
.syntax unified
.arm
.fpu neon
.globl seqz
seqz:
	sub sp, sp, #8
	str r4, [sp, #0]
	cmp r0, #0
	mov r4, #0
	movweq r4, #1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl seqi
seqi:
	sub sp, sp, #8
	str r4, [sp, #0]
	cmp r0, #1
	mov r4, #0
	movweq r4, #1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl seq
seq:
	sub sp, sp, #8
	str r4, [sp, #0]
	cmp r0, r1
	mov r4, #0
	movweq r4, #1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl snei
snei:
	sub sp, sp, #8
	str r4, [sp, #0]
	cmp r0, #1
	mov r4, #0
	movwne r4, #1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl sne
sne:
	sub sp, sp, #8
	str r4, [sp, #0]
	cmp r0, r1
	mov r4, #0
	movwne r4, #1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl snez
snez:
	sub sp, sp, #8
	str r4, [sp, #0]
	cmp r0, #0
	mov r4, #0
	movwne r4, #1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl slti
slti:
	sub sp, sp, #8
	str r4, [sp, #0]
	cmp r0, #1
	mov r4, #0
	movwlt r4, #1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl slt
slt:
	sub sp, sp, #8
	str r4, [sp, #0]
	cmp r0, r1
	mov r4, #0
	movwlt r4, #1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl sgti
sgti:
	sub sp, sp, #8
	str r4, [sp, #0]
	cmp r0, #1
	mov r4, #0
	movwgt r4, #1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl sgt
sgt:
	sub sp, sp, #8
	str r4, [sp, #0]
	cmp r0, r1
	mov r4, #0
	movwgt r4, #1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl slei
slei:
	sub sp, sp, #8
	str r4, [sp, #0]
	cmp r0, #1
	mov r4, #0
	movwle r4, #1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl sle
sle:
	sub sp, sp, #8
	str r4, [sp, #0]
	cmp r0, r1
	mov r4, #0
	movwle r4, #1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl sgei
sgei:
	sub sp, sp, #8
	str r4, [sp, #0]
	cmp r0, #1
	mov r4, #0
	movwge r4, #1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl sge
sge:
	sub sp, sp, #8
	str r4, [sp, #0]
	cmp r0, r1
	mov r4, #0
	movwge r4, #1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl feq
feq:
	sub sp, sp, #8
	str r4, [sp, #0]
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r4, #0
	movweq r4, #1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl fne
fne:
	sub sp, sp, #8
	str r4, [sp, #0]
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r4, #0
	movwne r4, #1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl flt
flt:
	sub sp, sp, #8
	str r4, [sp, #0]
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r4, #0
	movwmi r4, #1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl fgt
fgt:
	sub sp, sp, #8
	str r4, [sp, #0]
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r4, #0
	movwgt r4, #1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl fle
fle:
	sub sp, sp, #8
	str r4, [sp, #0]
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r4, #0
	movwls r4, #1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl fge
fge:
	sub sp, sp, #8
	str r4, [sp, #0]
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r4, #0
	movwge r4, #1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
