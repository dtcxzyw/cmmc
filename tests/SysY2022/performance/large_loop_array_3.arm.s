.arch armv7ve
.data
.bss
.align 4
y:
	.zero	32768
.align 4
x:
	.zero	32768
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, lr }
	vpush { s16 }
	sub sp, sp, #4
	bl getint
	mov r4, r0
	mov r0, #22
	bl _sysy_starttime
	mov r2, #1065353216
	movw r1, #:lower16:y
	mov r5, #0
	movw r0, #:lower16:x
	vmov s0, r2
	movt r1, #:upper16:y
	vmov s16, r5
	movt r0, #:upper16:x
	mov r2, r5
	vmov.f32 s1, s16
	movw r3, #34464
	movt r3, #1
	cmp r5, r3
	bge label8
label13:
.p2align 4
	mov r3, #10
	movw r6, #26215
	movt r6, #26214
	smmul r6, r2, r6
	asr r7, r6, #2
	add r6, r7, r6, lsr #31
	mls r3, r6, r3, r2
	cmp r3, #0
	movw r3, #52429
	movt r3, #15948
	vmov s2, r3
	mov r3, #1065353216
	vadd.f32 s0, s0, s2
	vmov s2, r3
	movw r3, #52429
	movt r3, #15820
	vmovne.f32 s0, s2
	vmov s2, r3
	mov r3, #0
	vadd.f32 s1, s1, s2
	vmov s2, r3
	vmovne.f32 s1, s2
	cmp r4, r5
	bgt label25
	mov r3, r5
	cmp r4, #0
	bgt label77
	mov r5, #0
	vmov s2, r5
	vadd.f32 s16, s16, s2
	add r2, r2, #1
	mov r5, r3
	movw r3, #34464
	movt r3, #1
	cmp r2, r3
	blt label13
	b label8
label189:
.p2align 4
	mov r3, r5
	b label26
label25:
.p2align 4
	add r3, r5, #4
	cmp r4, r3
	bgt label28
	b label189
label77:
.p2align 4
	mov r7, #0
	vmov s2, r7
label16:
.p2align 4
	add r5, r7, #4
	cmp r4, r5
	bgt label22
	add r5, r0, r7, lsl #2
	vldr s3, [r5, #0]
	add r5, r1, r7, lsl #2
	add r7, r7, #1
	vldr s4, [r5, #0]
	cmp r4, r7
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	bgt label19
	vadd.f32 s16, s16, s2
	add r2, r2, #1
	mov r5, r3
	movw r3, #34464
	movt r3, #1
	cmp r2, r3
	blt label13
	b label8
label19:
.p2align 4
	add r5, r0, r7, lsl #2
	vldr s3, [r5, #0]
	add r5, r1, r7, lsl #2
	add r7, r7, #1
	vldr s4, [r5, #0]
	cmp r4, r7
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	bgt label19
	vadd.f32 s16, s16, s2
	add r2, r2, #1
	mov r5, r3
	movw r3, #34464
	movt r3, #1
	cmp r2, r3
	blt label13
	b label8
label22:
.p2align 4
	add r6, r0, r7, lsl #2
	add r7, r1, r7, lsl #2
	vldr s3, [r6, #0]
	vldr s4, [r7, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	vldr s3, [r6, #4]
	vldr s4, [r7, #4]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	vldr s3, [r6, #8]
	vldr s4, [r7, #8]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	vldr s3, [r6, #12]
	vldr s4, [r7, #12]
	mov r7, r5
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	b label16
label26:
.p2align 4
	vmov s2, r3
	add r5, r0, r3, lsl #2
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	vadd.f32 s2, s0, s2
	vstr s3, [r5, #0]
	add r5, r1, r3, lsl #2
	add r3, r3, #1
	vstr s2, [r5, #0]
	cmp r4, r3
	bgt label26
	movs r3, r4
	bgt label77
	mov r5, #0
	vmov s2, r5
	vadd.f32 s16, s16, s2
	add r2, r2, #1
	mov r5, r4
	movw r3, #34464
	movt r3, #1
	cmp r2, r3
	blt label13
	b label8
label28:
.p2align 4
	vmov s2, r5
	add r6, r0, r5, lsl #2
	add r8, r5, #1
	add r7, r1, r5, lsl #2
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	vadd.f32 s2, s0, s2
	vstr s3, [r6, #0]
	vstr s2, [r7, #0]
	vmov s2, r8
	add r8, r5, #2
	add r5, r5, #3
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	vadd.f32 s2, s0, s2
	vstr s3, [r6, #4]
	vstr s2, [r7, #4]
	vmov s2, r8
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	vadd.f32 s2, s0, s2
	vstr s3, [r6, #8]
	vstr s2, [r7, #8]
	vmov s2, r5
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	vadd.f32 s2, s0, s2
	vstr s3, [r6, #12]
	add r6, r3, #4
	vstr s2, [r7, #12]
	cmp r4, r6
	ble label26
	mov r5, r3
	mov r3, r6
	b label28
label8:
	mov r0, #39
	bl _sysy_stoptime
	movw r0, #19627
	movw r1, #14269
	movt r0, #23170
	movt r1, #46470
	vmov s0, r0
	movw r0, #14269
	movt r0, #13702
	vmov s1, r0
	mov r0, #0
	vsub.f32 s0, s16, s0
	vcmp.f32 s0, s1
	vmov s1, r1
	mov r1, #0
	vmrs APSR_nzcv, FPSCR
	movwls r0, #1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	movwge r1, #1
	orrs r0, r0, r1
	bne label11
	mov r0, #1
	bl putint
	mov r0, #1
label9:
	add sp, sp, #4
	vpop { s16 }
	pop { r4, r5, r6, r7, r8, pc }
label11:
	mov r0, #0
	bl putint
	mov r0, #0
	b label9
