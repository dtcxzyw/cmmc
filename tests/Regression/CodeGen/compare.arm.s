.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl seqz
seqz:
.p2align 4
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.globl seqi
seqi:
.p2align 4
	sub r0, r0, #1
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.globl seq
seq:
.p2align 4
	sub r0, r0, r1
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.globl snei
snei:
.p2align 4
	cmp r0, #1
	mov r0, #0
	movwne r0, #1
	bx lr
.globl sne
sne:
.p2align 4
	cmp r0, r1
	mov r0, #0
	movwne r0, #1
	bx lr
.globl snez
snez:
.p2align 4
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	bx lr
.globl slti
slti:
.p2align 4
	cmp r0, #1
	mov r0, #0
	movwlt r0, #1
	bx lr
.globl slt
slt:
.p2align 4
	cmp r0, r1
	mov r0, #0
	movwlt r0, #1
	bx lr
.globl sgti
sgti:
.p2align 4
	cmp r0, #1
	mov r0, #0
	movwgt r0, #1
	bx lr
.globl sgt
sgt:
.p2align 4
	cmp r0, r1
	mov r0, #0
	movwgt r0, #1
	bx lr
.globl slei
slei:
.p2align 4
	cmp r0, #2
	mov r0, #0
	movwlt r0, #1
	bx lr
.globl sle
sle:
.p2align 4
	cmp r0, r1
	mov r0, #0
	movwle r0, #1
	bx lr
.globl sgei
sgei:
.p2align 4
	cmp r0, #0
	mov r0, #0
	movwgt r0, #1
	bx lr
.globl sge
sge:
.p2align 4
	cmp r0, r1
	mov r0, #0
	movwge r0, #1
	bx lr
.globl seq_all_one
seq_all_one:
.p2align 4
	add r0, r0, #1
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.globl sne_all_one
sne_all_one:
.p2align 4
	cmn r0, #1
	mov r0, #0
	movwne r0, #1
	bx lr
.globl slt_all_one
slt_all_one:
.p2align 4
	cmn r0, #1
	mov r0, #0
	movwlt r0, #1
	bx lr
.globl sgt_all_one
sgt_all_one:
.p2align 4
	mvn r0, r0
	lsr r0, r0, #31
	bx lr
.globl sle_all_one
sle_all_one:
.p2align 4
	lsr r0, r0, #31
	bx lr
.globl sge_all_one
sge_all_one:
.p2align 4
	cmn r0, #2
	mov r0, #0
	movwgt r0, #1
	bx lr
.globl feq
feq:
.p2align 4
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movweq r0, #1
	bx lr
.globl fne
fne:
.p2align 4
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwne r0, #1
	bx lr
.globl flt
flt:
.p2align 4
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwmi r0, #1
	bx lr
.globl fgt
fgt:
.p2align 4
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	bx lr
.globl fle
fle:
.p2align 4
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwls r0, #1
	bx lr
.globl fge
fge:
.p2align 4
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwge r0, #1
	bx lr
.globl fltz
fltz:
.p2align 4
	vcmp.f32 s0, #0
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwmi r0, #1
	bx lr
.globl sgez
sgez:
.p2align 4
	mvn r0, r0
	lsr r0, r0, #31
	bx lr
