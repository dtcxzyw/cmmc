.arch armv7ve
.data
.bss
.align 4
y:
	.zero	8192
.align 4
x:
	.zero	8192
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, lr }
	vpush { s16 }
	sub sp, sp, #4
	bl getint
	mov r4, r0
	mov r0, #22
	bl _sysy_starttime
	movw r1, #:lower16:y
	mov r3, #1065353216
	mov r2, #0
	movw r0, #:lower16:x
	vmov s0, r3
	movt r1, #:upper16:y
	mov r5, r2
	vmov s1, r2
	movt r0, #:upper16:x
	vmov.f32 s16, s1
	movw r3, #41248
	movt r3, #7
	cmp r2, r3
	bge label8
label13:
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
	ble label74
	add r3, r5, #4
	cmp r4, r3
	ble label132
	b label28
label74:
	mov r3, r5
label14:
	cmp r4, #0
	ble label77
	mov r7, #0
	vmov s2, r7
	add r5, r7, #4
	cmp r4, r5
	ble label21
	b label24
label132:
	mov r3, r5
	b label26
label28:
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
label77:
	mov r5, #0
	vmov s2, r5
label16:
	vadd.f32 s16, s16, s2
	add r2, r2, #1
	mov r5, r3
	movw r3, #41248
	movt r3, #7
	cmp r2, r3
	bge label8
	b label13
label24:
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
	add r5, r5, #4
	cmp r4, r5
	ble label21
	b label24
label26:
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
	ble label14
	b label26
label21:
	add r5, r0, r7, lsl #2
	vldr s3, [r5, #0]
	add r5, r1, r7, lsl #2
	add r7, r7, #1
	vldr s4, [r5, #0]
	cmp r4, r7
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	ble label16
	b label21
label8:
	mov r0, #39
	bl _sysy_stoptime
	movw r0, #39872
	movw r1, #14269
	movt r0, #22690
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
	beq label9
	mov r0, #0
	bl putint
	mov r0, #0
	b label11
label9:
	mov r0, #1
	bl putint
	mov r0, #1
label11:
	add sp, sp, #4
	vpop { s16 }
	pop { r4, r5, r6, r7, r8, pc }
