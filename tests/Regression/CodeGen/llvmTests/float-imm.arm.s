.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl float_imm
float_imm:
	movw r0, #4059
	movt r0, #16457
	vmov s0, r0
	bx lr
.globl float_imm_op
float_imm_op:
	mov r0, #1065353216
	vmov s1, r0
	vadd.f32 s0, s0, s1
	bx lr
