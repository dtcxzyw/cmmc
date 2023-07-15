.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #156
	mov r1, #1065353216
	mov r7, #0
	add r2, sp, #8
	add r11, sp, #32
	add r9, sp, #124
	vmov s0, r7
	add r5, sp, #56
	add r8, sp, #44
	str r11, [sp, #104]
	add r0, sp, #80
	add r6, sp, #92
	str r8, [sp, #4]
	add r3, sp, #108
	str r5, [sp, #120]
	add r5, sp, #140
	str r6, [sp, #24]
	str r3, [sp, #20]
	str r9, [sp, #28]
	str r5, [sp, #136]
	str r2, [sp, #0]
	vstr s0, [sp, #8]
	vstr s0, [sp, #140]
	vstr s0, [sp, #124]
	vstr s0, [sp, #108]
	vstr s0, [sp, #92]
	vstr s0, [sp, #80]
	vmov s0, r1
	mov r1, #1073741824
	vstr s0, [r2, #4]
	vstr s0, [r5, #4]
	vstr s0, [r9, #4]
	vstr s0, [r3, #4]
	vstr s0, [r6, #4]
	vstr s0, [r0, #4]
	vmov s0, r1
	vstr s0, [r2, #8]
	vstr s0, [r5, #8]
	vstr s0, [r9, #8]
	vstr s0, [r3, #8]
	vstr s0, [r6, #8]
	vstr s0, [r0, #8]
	add r1, r7, #4
	cmp r1, #3
	bge label4
label15:
	ldr r2, [sp, #0]
	add r10, r0, r7, lsl #2
	add r2, r2, r7, lsl #2
	vldr s0, [r2, #0]
	ldr r3, [sp, #20]
	add r3, r3, r7, lsl #2
	vldr s1, [r3, #0]
	ldr r5, [sp, #120]
	vadd.f32 s0, s0, s1
	add r4, r5, r7, lsl #2
	vstr s0, [r4, #0]
	ldr r5, [sp, #136]
	add r5, r5, r7, lsl #2
	vldr s0, [r5, #0]
	ldr r6, [sp, #24]
	add r6, r6, r7, lsl #2
	vldr s1, [r6, #0]
	ldr r8, [sp, #4]
	vadd.f32 s0, s0, s1
	add r8, r8, r7, lsl #2
	vstr s0, [r8, #0]
	ldr r9, [sp, #28]
	add r9, r9, r7, lsl #2
	vldr s0, [r9, #0]
	vldr s1, [r10, #0]
	ldr r11, [sp, #104]
	vadd.f32 s0, s0, s1
	add r7, r11, r7, lsl #2
	vstr s0, [r7, #0]
	vldr s0, [r2, #4]
	vldr s1, [r3, #4]
	vadd.f32 s0, s0, s1
	vstr s0, [r4, #4]
	vldr s0, [r5, #4]
	vldr s1, [r6, #4]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #4]
	vldr s0, [r9, #4]
	vldr s1, [r10, #4]
	vadd.f32 s0, s0, s1
	vstr s0, [r7, #4]
	vldr s0, [r2, #8]
	vldr s1, [r3, #8]
	vadd.f32 s0, s0, s1
	vstr s0, [r4, #8]
	vldr s0, [r5, #8]
	vldr s1, [r6, #8]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #8]
	vldr s0, [r9, #8]
	vldr s1, [r10, #8]
	vadd.f32 s0, s0, s1
	vstr s0, [r7, #8]
	vldr s0, [r2, #12]
	vldr s1, [r3, #12]
	vadd.f32 s0, s0, s1
	vstr s0, [r4, #12]
	vldr s0, [r5, #12]
	vldr s1, [r6, #12]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #12]
	vldr s0, [r9, #12]
	vldr s1, [r10, #12]
	vadd.f32 s0, s0, s1
	vstr s0, [r7, #12]
	mov r7, r1
	add r1, r1, #4
	cmp r1, #3
	bge label4
	b label15
label4:
	ldr r2, [sp, #0]
	add r1, r2, r7, lsl #2
	vldr s0, [r1, #0]
	ldr r3, [sp, #20]
	add r1, r3, r7, lsl #2
	vldr s1, [r1, #0]
	ldr r5, [sp, #120]
	vadd.f32 s0, s0, s1
	add r1, r5, r7, lsl #2
	vstr s0, [r1, #0]
	ldr r5, [sp, #136]
	add r1, r5, r7, lsl #2
	vldr s0, [r1, #0]
	ldr r6, [sp, #24]
	add r1, r6, r7, lsl #2
	vldr s1, [r1, #0]
	ldr r8, [sp, #4]
	vadd.f32 s0, s0, s1
	add r1, r8, r7, lsl #2
	vstr s0, [r1, #0]
	ldr r9, [sp, #28]
	add r1, r9, r7, lsl #2
	vldr s0, [r1, #0]
	add r1, r0, r7, lsl #2
	vldr s1, [r1, #0]
	ldr r11, [sp, #104]
	vadd.f32 s0, s0, s1
	add r1, r11, r7, lsl #2
	add r7, r7, #1
	cmp r7, #3
	vstr s0, [r1, #0]
	bge label87
	b label4
label87:
	mov r4, #0
label6:
	ldr r5, [sp, #120]
	add r0, r5, r4, lsl #2
	vldr s0, [r0, #0]
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	bl putint
	add r4, r4, #1
	cmp r4, #3
	bge label8
	b label6
label8:
	mov r0, #10
	bl putch
	mov r4, #0
label9:
	ldr r8, [sp, #4]
	add r0, r8, r4, lsl #2
	vldr s0, [r0, #0]
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	bl putint
	add r4, r4, #1
	cmp r4, #3
	bge label11
	b label9
label11:
	mov r0, #10
	bl putch
	mov r4, #0
label12:
	ldr r11, [sp, #104]
	add r0, r11, r4, lsl #2
	vldr s0, [r0, #0]
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	bl putint
	add r4, r4, #1
	cmp r4, #3
	bge label14
	b label12
label14:
	mov r0, #10
	bl putch
	add sp, sp, #156
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
