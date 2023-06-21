.arch armv7-a
.data
.text
.syntax unified
.arm
.fpu neon
.globl seqz
seqz:
	cmp r0, #0
	mov r1, #0
	movweq r1, #1
	mov r0, r1
	bx lr
.globl seqi
seqi:
	cmp r0, #1
	mov r1, #0
	movweq r1, #1
	mov r0, r1
	bx lr
.globl seq
seq:
	cmp r0, r1
	mov r2, #0
	movweq r2, #1
	mov r0, r2
	bx lr
.globl snei
snei:
	cmp r0, #1
	mov r1, #0
	movwne r1, #1
	mov r0, r1
	bx lr
.globl sne
sne:
	cmp r0, r1
	mov r2, #0
	movwne r2, #1
	mov r0, r2
	bx lr
.globl snez
snez:
	cmp r0, #0
	mov r1, #0
	movwne r1, #1
	mov r0, r1
	bx lr
.globl slti
slti:
	cmp r0, #1
	mov r1, #0
	movwlt r1, #1
	mov r0, r1
	bx lr
.globl slt
slt:
	cmp r0, r1
	mov r2, #0
	movwlt r2, #1
	mov r0, r2
	bx lr
.globl sgti
sgti:
	cmp r0, #1
	mov r1, #0
	movwgt r1, #1
	mov r0, r1
	bx lr
.globl sgt
sgt:
	cmp r0, r1
	mov r2, #0
	movwgt r2, #1
	mov r0, r2
	bx lr
.globl slei
slei:
	cmp r0, #1
	mov r1, #0
	movwle r1, #1
	mov r0, r1
	bx lr
.globl sle
sle:
	cmp r0, r1
	mov r2, #0
	movwle r2, #1
	mov r0, r2
	bx lr
.globl sgei
sgei:
	cmp r0, #1
	mov r1, #0
	movwge r1, #1
	mov r0, r1
	bx lr
.globl sge
sge:
	cmp r0, r1
	mov r2, #0
	movwge r2, #1
	mov r0, r2
	bx lr
.globl feq
feq:
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movweq r0, #1
	bx lr
.globl fne
fne:
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwne r0, #1
	bx lr
.globl flt
flt:
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwmi r0, #1
	bx lr
.globl fgt
fgt:
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwgt r0, #1
	bx lr
.globl fle
fle:
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwls r0, #1
	bx lr
.globl fge
fge:
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwge r0, #1
	bx lr
