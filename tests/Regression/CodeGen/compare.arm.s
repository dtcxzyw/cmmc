.arch armv7-a
.data
.text
.syntax unified
.arm
.fpu neon
.globl seqz
seqz:
	push { r4 }
	cmp r0, #0
	mov r4, #0
	movweq r4, #1
	mov r0, r4
	pop { r4 }
	bx lr
.globl seqi
seqi:
	push { r4 }
	cmp r0, #1
	mov r4, #0
	movweq r4, #1
	mov r0, r4
	pop { r4 }
	bx lr
.globl seq
seq:
	push { r4 }
	cmp r0, r1
	mov r4, #0
	movweq r4, #1
	mov r0, r4
	pop { r4 }
	bx lr
.globl snei
snei:
	push { r4 }
	cmp r0, #1
	mov r4, #0
	movwne r4, #1
	mov r0, r4
	pop { r4 }
	bx lr
.globl sne
sne:
	push { r4 }
	cmp r0, r1
	mov r4, #0
	movwne r4, #1
	mov r0, r4
	pop { r4 }
	bx lr
.globl snez
snez:
	push { r4 }
	cmp r0, #0
	mov r4, #0
	movwne r4, #1
	mov r0, r4
	pop { r4 }
	bx lr
.globl slti
slti:
	push { r4 }
	cmp r0, #1
	mov r4, #0
	movwlt r4, #1
	mov r0, r4
	pop { r4 }
	bx lr
.globl slt
slt:
	push { r4 }
	cmp r0, r1
	mov r4, #0
	movwlt r4, #1
	mov r0, r4
	pop { r4 }
	bx lr
.globl sgti
sgti:
	push { r4 }
	cmp r0, #1
	mov r4, #0
	movwgt r4, #1
	mov r0, r4
	pop { r4 }
	bx lr
.globl sgt
sgt:
	push { r4 }
	cmp r0, r1
	mov r4, #0
	movwgt r4, #1
	mov r0, r4
	pop { r4 }
	bx lr
.globl slei
slei:
	push { r4 }
	cmp r0, #1
	mov r4, #0
	movwle r4, #1
	mov r0, r4
	pop { r4 }
	bx lr
.globl sle
sle:
	push { r4 }
	cmp r0, r1
	mov r4, #0
	movwle r4, #1
	mov r0, r4
	pop { r4 }
	bx lr
.globl sgei
sgei:
	push { r4 }
	cmp r0, #1
	mov r4, #0
	movwge r4, #1
	mov r0, r4
	pop { r4 }
	bx lr
.globl sge
sge:
	push { r4 }
	cmp r0, r1
	mov r4, #0
	movwge r4, #1
	mov r0, r4
	pop { r4 }
	bx lr
.globl feq
feq:
	push { r4 }
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r4, #0
	movweq r4, #1
	mov r0, r4
	pop { r4 }
	bx lr
.globl fne
fne:
	push { r4 }
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r4, #0
	movwne r4, #1
	mov r0, r4
	pop { r4 }
	bx lr
.globl flt
flt:
	push { r4 }
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r4, #0
	movwmi r4, #1
	mov r0, r4
	pop { r4 }
	bx lr
.globl fgt
fgt:
	push { r4 }
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r4, #0
	movwgt r4, #1
	mov r0, r4
	pop { r4 }
	bx lr
.globl fle
fle:
	push { r4 }
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r4, #0
	movwls r4, #1
	mov r0, r4
	pop { r4 }
	bx lr
.globl fge
fge:
	push { r4 }
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r4, #0
	movwge r4, #1
	mov r0, r4
	pop { r4 }
	bx lr
