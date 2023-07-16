.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, lr }
	sub sp, sp, #52
	mov r6, #0
	mov r0, #1065353216
	add r7, sp, #24
	vmov s2, r6
	add r5, sp, #12
	mov r4, sp
	vmov s0, r0
	mov r0, #1073741824
	vmov s1, r0
	vstr s0, [r5, #8]
	vstr s1, [r4, #4]
	vstr s2, [r7, #4]
	vstr s2, [r7, #8]
	vstr s0, [sp, #12]
	vstr s1, [sp, #0]
	vstr s0, [r5, #4]
	vstr s1, [r4, #8]
	vstr s2, [sp, #24]
label2:
	add r0, r7, r6, lsl #2
	vldr s0, [r0, #0]
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	bl putint
	add r6, r6, #1
	cmp r6, #3
	bge label4
	b label2
label4:
	mov r0, #10
	bl putch
	mov r6, #0
label5:
	add r0, r5, r6, lsl #2
	vldr s0, [r0, #0]
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	bl putint
	add r6, r6, #1
	cmp r6, #3
	bge label7
	b label5
label7:
	mov r0, #10
	bl putch
	mov r5, #0
label8:
	add r0, r4, r5, lsl #2
	vldr s0, [r0, #0]
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	bl putint
	add r5, r5, #1
	cmp r5, #3
	bge label10
	b label8
label10:
	mov r0, #10
	bl putch
	add sp, sp, #52
	mov r0, #0
	pop { r4, r5, r6, r7, pc }
