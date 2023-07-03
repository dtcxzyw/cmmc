.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl seqz
seqz:
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.globl seqi
seqi:
	sub r0, r0, #1
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.globl seq
seq:
	sub r0, r0, r1
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.globl snei
snei:
	cmp r0, #1
	mov r0, #0
	movwne r0, #1
	bx lr
.globl sne
sne:
	cmp r0, r1
	mov r0, #0
	movwne r0, #1
	bx lr
.globl snez
snez:
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	bx lr
.globl slti
slti:
	cmp r0, #1
	mov r0, #0
	movwlt r0, #1
	bx lr
.globl slt
slt:
	cmp r0, r1
	mov r0, #0
	movwlt r0, #1
	bx lr
.globl sgti
sgti:
	cmp r0, #1
	mov r0, #0
	movwgt r0, #1
	bx lr
.globl sgt
sgt:
	cmp r0, r1
	mov r0, #0
	movwgt r0, #1
	bx lr
.globl slei
slei:
	cmp r0, #1
	mov r0, #0
	movwle r0, #1
	bx lr
.globl sle
sle:
	cmp r0, r1
	mov r0, #0
	movwle r0, #1
	bx lr
.globl sgei
sgei:
	cmp r0, #1
	mov r0, #0
	movwge r0, #1
	bx lr
.globl sge
sge:
	cmp r0, r1
	mov r0, #0
	movwge r0, #1
	bx lr
.globl seq_all_one
seq_all_one:
	add r0, r0, #1
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.globl sne_all_one
sne_all_one:
	cmn r0, #1
	mov r0, #0
	movwne r0, #1
	bx lr
.globl slt_all_one
slt_all_one:
	cmn r0, #1
	mov r0, #0
	movwlt r0, #1
	bx lr
.globl sgt_all_one
sgt_all_one:
	cmn r0, #1
	mov r0, #0
	movwgt r0, #1
	bx lr
.globl sle_all_one
sle_all_one:
	cmn r0, #1
	mov r0, #0
	movwle r0, #1
	bx lr
.globl sge_all_one
sge_all_one:
	cmn r0, #1
	mov r0, #0
	movwge r0, #1
	bx lr
.globl feq
feq:
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movweq r0, #1
	bx lr
.globl fne
fne:
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwne r0, #1
	bx lr
.globl flt
flt:
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwmi r0, #1
	bx lr
.globl fgt
fgt:
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	bx lr
.globl fle
fle:
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwls r0, #1
	bx lr
.globl fge
fge:
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwge r0, #1
	bx lr
.globl fltz
fltz:
	vcmp.f32 s0, #0
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwmi r0, #1
	bx lr
