.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, lr }
	vpush { s16 }
	movw r12, #16388
	sub sp, sp, r12
	mov r5, sp
	add r6, sp, #8192
	bl getint
	mov r4, r0
	mov r0, #22
	bl _sysy_starttime
	mov r0, #0
	vmov s16, r0
	mov r1, #1065353216
	vmov s0, r1
	vmov s1, r0
	mov r2, r0
	movw r1, #41248
	movt r1, #7
	cmp r0, r1
	bge label8
label13:
	mov r1, #10
	movw r3, #26215
	movt r3, #26214
	smmul r3, r0, r3
	asr r7, r3, #2
	add r3, r7, r3, lsr #31
	mls r1, r3, r1, r0
	cmp r1, #0
	movw r1, #52429
	movt r1, #15948
	vmov s2, r1
	vadd.f32 s0, s0, s2
	mov r1, #1065353216
	vmov s2, r1
	vmovne.f32 s0, s2
	movw r1, #52429
	movt r1, #15820
	vmov s2, r1
	vadd.f32 s1, s1, s2
	mov r1, #0
	vmov s2, r1
	vmovne.f32 s1, s2
	cmp r2, r4
	bge label86
	add r1, r2, #4
	cmp r1, r4
	bge label16
	b label21
label86:
	mov r1, r2
	cmp r4, #0
	ble label161
	mov r7, #0
	vmov s2, r7
	add r2, r7, #4
	cmp r2, r4
	bge label29
	b label40
label161:
	mov r2, #0
	vmov s2, r2
label24:
	vadd.f32 s16, s16, s2
	add r0, r0, #1
	mov r2, r1
	movw r1, #41248
	movt r1, #7
	cmp r0, r1
	bge label8
	b label13
label29:
	add r2, r7, #4
	cmp r2, r4
	bge label177
	b label39
label177:
	mov r3, r7
	add r2, r7, #4
	cmp r2, r4
	bge label182
	b label35
label182:
	mov r2, r3
	add r3, r6, r3, lsl #2
	vldr s3, [r3, #0]
	add r3, r5, r2, lsl #2
	vldr s4, [r3, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	add r2, r2, #1
	cmp r2, r4
	bge label24
	add r3, r6, r2, lsl #2
	vldr s3, [r3, #0]
	add r3, r5, r2, lsl #2
	vldr s4, [r3, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	add r2, r2, #1
	cmp r2, r4
	bge label24
	add r3, r6, r2, lsl #2
	vldr s3, [r3, #0]
	add r3, r5, r2, lsl #2
	vldr s4, [r3, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	add r2, r2, #1
	cmp r2, r4
	bge label24
	add r3, r6, r2, lsl #2
	vldr s3, [r3, #0]
	add r3, r5, r2, lsl #2
	vldr s4, [r3, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	add r2, r2, #1
	cmp r2, r4
	bge label24
	add r3, r6, r2, lsl #2
	vldr s3, [r3, #0]
	add r3, r5, r2, lsl #2
	vldr s4, [r3, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	add r2, r2, #1
	cmp r2, r4
	bge label24
	add r3, r6, r2, lsl #2
	vldr s3, [r3, #0]
	add r3, r5, r2, lsl #2
	vldr s4, [r3, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	add r2, r2, #1
	cmp r2, r4
	bge label24
	add r3, r6, r2, lsl #2
	vldr s3, [r3, #0]
	add r3, r5, r2, lsl #2
	vldr s4, [r3, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	add r2, r2, #1
	cmp r2, r4
	bge label24
	add r3, r6, r2, lsl #2
	vldr s3, [r3, #0]
	add r3, r5, r2, lsl #2
	vldr s4, [r3, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	add r2, r2, #1
	cmp r2, r4
	bge label24
	add r3, r6, r2, lsl #2
	vldr s3, [r3, #0]
	add r3, r5, r2, lsl #2
	vldr s4, [r3, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	add r2, r2, #1
	cmp r2, r4
	bge label24
	add r3, r6, r2, lsl #2
	vldr s3, [r3, #0]
	add r3, r5, r2, lsl #2
	vldr s4, [r3, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	add r2, r2, #1
	cmp r2, r4
	bge label24
label321:
	add r3, r6, r2, lsl #2
	vldr s3, [r3, #0]
	add r3, r5, r2, lsl #2
	vldr s4, [r3, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	add r2, r2, #1
	cmp r2, r4
	bge label24
	b label321
label16:
	add r1, r2, #4
	cmp r1, r4
	bge label96
	b label18
label96:
	mov r1, r2
	b label19
label18:
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	add r3, r6, r2, lsl #2
	vstr s3, [r3, #0]
	vadd.f32 s2, s0, s2
	add r7, r5, r2, lsl #2
	vstr s2, [r7, #0]
	add r8, r2, #1
	vmov s2, r8
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	vstr s3, [r3, #4]
	vadd.f32 s2, s0, s2
	vstr s2, [r7, #4]
	add r8, r2, #2
	vmov s2, r8
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	vstr s3, [r3, #8]
	vadd.f32 s2, s0, s2
	vstr s2, [r7, #8]
	add r2, r2, #3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	vstr s3, [r3, #12]
	vadd.f32 s2, s0, s2
	vstr s2, [r7, #12]
	mov r2, r1
	add r1, r1, #4
	cmp r1, r4
	bge label96
	b label18
label19:
	vmov s2, r1
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	add r2, r6, r1, lsl #2
	vstr s3, [r2, #0]
	vadd.f32 s2, s0, s2
	add r2, r5, r1, lsl #2
	vstr s2, [r2, #0]
	add r1, r1, #1
	cmp r1, r4
	bge label22
	b label19
label22:
	cmp r4, #0
	ble label161
	mov r7, #0
	vmov s2, r7
	add r2, r7, #4
	cmp r2, r4
	bge label29
label40:
	add r3, r6, r7, lsl #2
	vldr s3, [r3, #0]
	add r7, r5, r7, lsl #2
	vldr s4, [r7, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	vldr s3, [r3, #4]
	vldr s4, [r7, #4]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	vldr s3, [r3, #8]
	vldr s4, [r7, #8]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	vldr s3, [r3, #12]
	vldr s4, [r7, #12]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	mov r7, r2
	add r2, r2, #4
	cmp r2, r4
	bge label29
	b label40
label21:
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	add r3, r6, r2, lsl #2
	vstr s3, [r3, #0]
	vadd.f32 s2, s0, s2
	add r7, r5, r2, lsl #2
	vstr s2, [r7, #0]
	add r8, r2, #1
	vmov s2, r8
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	vstr s3, [r3, #4]
	vadd.f32 s2, s0, s2
	vstr s2, [r7, #4]
	add r8, r2, #2
	vmov s2, r8
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	vstr s3, [r3, #8]
	vadd.f32 s2, s0, s2
	vstr s2, [r7, #8]
	add r2, r2, #3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	vstr s3, [r3, #12]
	vadd.f32 s2, s0, s2
	vstr s2, [r7, #12]
	mov r2, r1
	add r1, r1, #4
	cmp r1, r4
	bge label16
	b label21
label35:
	add r7, r6, r3, lsl #2
	vldr s3, [r7, #0]
	add r3, r5, r3, lsl #2
	vldr s4, [r3, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #4]
	vldr s4, [r3, #4]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #8]
	vldr s4, [r3, #8]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #12]
	vldr s4, [r3, #12]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	mov r3, r2
	add r2, r2, #4
	cmp r2, r4
	bge label182
	b label35
label39:
	add r3, r6, r7, lsl #2
	vldr s3, [r3, #0]
	add r7, r5, r7, lsl #2
	vldr s4, [r7, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	vldr s3, [r3, #4]
	vldr s4, [r7, #4]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	vldr s3, [r3, #8]
	vldr s4, [r7, #8]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	vldr s3, [r3, #12]
	vldr s4, [r7, #12]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	mov r7, r2
	add r2, r2, #4
	cmp r2, r4
	bge label177
	b label39
label8:
	mov r0, #39
	bl _sysy_stoptime
	movw r0, #39872
	movt r0, #22690
	vmov s0, r0
	vsub.f32 s0, s16, s0
	movw r0, #14269
	movt r0, #13702
	vmov s1, r0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwls r0, #1
	movw r1, #14269
	movt r1, #46470
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r1, #0
	movwge r1, #1
	orr r0, r0, r1
	cmp r0, #0
	beq label9
	mov r0, #0
	bl putint
	mov r0, #0
	b label10
label9:
	mov r0, #1
	bl putint
	mov r0, #1
label10:
	movw r12, #16388
	add sp, sp, r12
	vpop { s16 }
	pop { r4, r5, r6, r7, r8, pc }
