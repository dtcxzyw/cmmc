.arch armv7-a
.data
.text
.syntax unified
.arm
.fpu neon
.globl add_imm
add_imm:
	sub sp, sp, #8
	str r4, [sp, #0]
	add r4, r0, #1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl add_large_imm
add_large_imm:
	sub sp, sp, #8
	str r4, [sp, #0]
	add r4, r0, #262144
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl add_reg
add_reg:
	sub sp, sp, #8
	str r4, [sp, #0]
	add r4, r0, r1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl and_imm
and_imm:
	sub sp, sp, #8
	str r4, [sp, #0]
	and r4, r0, #1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl and_large_imm
and_large_imm:
	sub sp, sp, #8
	str r4, [sp, #0]
	and r4, r0, #262144
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl and_reg
and_reg:
	sub sp, sp, #8
	str r4, [sp, #0]
	and r4, r0, r1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl or_imm
or_imm:
	sub sp, sp, #8
	str r4, [sp, #0]
	orr r4, r0, #1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl or_large_imm
or_large_imm:
	sub sp, sp, #8
	str r4, [sp, #0]
	orr r4, r0, #262144
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl or_reg
or_reg:
	sub sp, sp, #8
	str r4, [sp, #0]
	orr r4, r0, r1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl xor_imm
xor_imm:
	sub sp, sp, #8
	str r4, [sp, #0]
	eor r4, r0, #1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl xor_large_imm
xor_large_imm:
	sub sp, sp, #8
	str r4, [sp, #0]
	eor r4, r0, #262144
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl xor_reg
xor_reg:
	sub sp, sp, #8
	str r4, [sp, #0]
	eor r4, r0, r1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl sub_imm
sub_imm:
	sub sp, sp, #8
	str r4, [sp, #0]
	sub r4, r0, #1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl sub_reg
sub_reg:
	sub sp, sp, #8
	str r4, [sp, #0]
	sub r4, r0, r1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl mul_imm
mul_imm:
	push { r4, r5 }
	mov r4, #3
	mul r5, r0, r4
	mov r0, r5
	pop { r4, r5 }
	bx lr
.globl mul_reg
mul_reg:
	sub sp, sp, #8
	str r4, [sp, #0]
	mul r4, r0, r1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl div_imm
div_imm:
	mov r1, #3
	bl __aeabi_idiv
	bx lr
.globl div_reg
div_reg:
	bl __aeabi_idiv
	bx lr
.globl mod_imm
mod_imm:
	mov r1, #3
	bl __aeabi_idivmod
	mov r0, r1
	bx lr
.globl mod_reg
mod_reg:
	bl __aeabi_idivmod
	mov r0, r1
	bx lr
.globl shl_imm
shl_imm:
	sub sp, sp, #8
	str r4, [sp, #0]
	lsl r4, r0, #3
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl shl_reg
shl_reg:
	sub sp, sp, #8
	str r4, [sp, #0]
	lsl r4, r0, r1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl ashr_imm
ashr_imm:
	sub sp, sp, #8
	str r4, [sp, #0]
	asr r4, r0, #3
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl ashr_reg
ashr_reg:
	sub sp, sp, #8
	str r4, [sp, #0]
	asr r4, r0, r1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl s2f
s2f:
	vmov s0, r0
	vcvt.f32.s32 s1, s0
	vmov r0, s1
	bx lr
.globl f2s
f2s:
	sub sp, sp, #8
	str r4, [sp, #0]
	vmov s0, r0
	vcvt.s32.f32 s1, s0
	vmov r4, s1
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl fadd
fadd:
	vmov s0, r0
	vmov s1, r1
	vadd.f32 s2, s0, s1
	vmov r0, s2
	bx lr
.globl fadd_imm
fadd_imm:
	sub sp, sp, #8
	str r4, [sp, #0]
	vmov s0, r0
	mov r4, #1065353216
	vmov s1, r4
	vadd.f32 s2, s0, s1
	vmov r0, s2
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl fadd_identity
fadd_identity:
	bx lr
.globl fsub
fsub:
	vmov s0, r0
	vmov s1, r1
	vsub.f32 s2, s0, s1
	vmov r0, s2
	bx lr
.globl fsub_imm
fsub_imm:
	sub sp, sp, #8
	str r4, [sp, #0]
	vmov s0, r0
	mov r4, #1065353216
	vmov s1, r4
	vsub.f32 s2, s0, s1
	vmov r0, s2
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl fmul
fmul:
	vmov s0, r0
	vmov s1, r1
	vmul.f32 s2, s0, s1
	vmov r0, s2
	bx lr
.globl fmul_imm
fmul_imm:
	vmov s0, r0
	vadd.f32 s1, s0, s0
	vmov r0, s1
	bx lr
.globl fdiv
fdiv:
	vmov s0, r0
	vmov s1, r1
	vdiv.f32 s2, s0, s1
	vmov r0, s2
	bx lr
.globl fdiv_imm
fdiv_imm:
	sub sp, sp, #8
	str r4, [sp, #0]
	vmov s0, r0
	mov r4, #1056964608
	vmov s1, r4
	vmul.f32 s2, s0, s1
	vmov r0, s2
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl fneg
fneg:
	vmov s0, r0
	vneg.f32 s1, s0
	vmov r0, s1
	bx lr
.globl zero
zero:
	mov r0, #0
	bx lr
.globl imm
imm:
	mov r0, #1
	bx lr
.globl large_imm0
large_imm0:
	mov r0, #1048576
	bx lr
.globl large_imm1
large_imm1:
	movw r0, #58769
	movt r0, #293
	bx lr
.globl fp_zero
fp_zero:
	sub sp, sp, #8
	str r4, [sp, #0]
	mov r4, #0
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl fp_imm0
fp_imm0:
	sub sp, sp, #8
	str r4, [sp, #0]
	mov r4, #1090519040
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl fp_imm1
fp_imm1:
	sub sp, sp, #8
	str r4, [sp, #0]
	movw r4, #4058
	movt r4, #16457
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
