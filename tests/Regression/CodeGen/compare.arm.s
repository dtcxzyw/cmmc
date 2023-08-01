.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl seqz
seqz:
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.p2align 4
.globl seqi
seqi:
	sub r0, r0, #1
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.p2align 4
.globl seq
seq:
	sub r0, r0, r1
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.p2align 4
.globl snei
snei:
	cmp r0, #1
	mov r0, #0
	movwne r0, #1
	bx lr
.p2align 4
.globl sne
sne:
	cmp r0, r1
	mov r0, #0
	movwne r0, #1
	bx lr
.p2align 4
.globl snez
snez:
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	bx lr
.p2align 4
.globl slti
slti:
	cmp r0, #1
	mov r0, #0
	movwlt r0, #1
	bx lr
.p2align 4
.globl slt
slt:
	cmp r0, r1
	mov r0, #0
	movwlt r0, #1
	bx lr
.p2align 4
.globl sgti
sgti:
	cmp r0, #1
	mov r0, #0
	movwgt r0, #1
	bx lr
.p2align 4
.globl sgt
sgt:
	cmp r0, r1
	mov r0, #0
	movwgt r0, #1
	bx lr
.p2align 4
.globl slei
slei:
	cmp r0, #2
	mov r0, #0
	movwlt r0, #1
	bx lr
.p2align 4
.globl sle
sle:
	cmp r0, r1
	mov r0, #0
	movwle r0, #1
	bx lr
.p2align 4
.globl sgei
sgei:
	cmp r0, #0
	mov r0, #0
	movwgt r0, #1
	bx lr
.p2align 4
.globl sge
sge:
	cmp r0, r1
	mov r0, #0
	movwge r0, #1
	bx lr
.p2align 4
.globl seq_all_one
seq_all_one:
	add r0, r0, #1
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.p2align 4
.globl sne_all_one
sne_all_one:
	cmn r0, #1
	mov r0, #0
	movwne r0, #1
	bx lr
.p2align 4
.globl slt_all_one
slt_all_one:
	cmn r0, #1
	mov r0, #0
	movwlt r0, #1
	bx lr
.p2align 4
.globl sgt_all_one
sgt_all_one:
	mvn r0, r0
	lsr r0, r0, #31
	bx lr
.p2align 4
.globl sle_all_one
sle_all_one:
	lsr r0, r0, #31
	bx lr
.p2align 4
.globl sge_all_one
sge_all_one:
	cmn r0, #2
	mov r0, #0
	movwgt r0, #1
	bx lr
.p2align 4
.globl feq
feq:
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movweq r0, #1
	bx lr
.p2align 4
.globl fne
fne:
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwne r0, #1
	bx lr
.p2align 4
.globl flt
flt:
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwmi r0, #1
	bx lr
.p2align 4
.globl fgt
fgt:
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	bx lr
.p2align 4
.globl fle
fle:
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwls r0, #1
	bx lr
.p2align 4
.globl fge
fge:
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwge r0, #1
	bx lr
.p2align 4
.globl fltz
fltz:
	vcmp.f32 s0, #0
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwmi r0, #1
	bx lr
.p2align 4
.globl sgez
sgez:
	mvn r0, r0
	lsr r0, r0, #31
	bx lr
