.arch armv7ve
.data
.bss
.align 4
y:
	.zero	16384
.align 4
x:
	.zero	16384
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
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	movw r1, #:lower16:y
	movt r1, #:upper16:y
	mov r2, #0
	vmov s16, r2
	mov r3, #1065353216
	vmov s0, r3
	vmov s1, r2
	mov r5, r2
	movw r3, #41248
	movt r3, #7
	cmp r2, r3
	bge label36
	b label8
label36:
	mov r0, #39
	bl _sysy_stoptime
	movw r0, #39768
	movt r0, #23074
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
	orrs r0, r0, r1
	beq label37
	mov r0, #0
	bl putint
	mov r0, #0
	b label39
label37:
	mov r0, #1
	bl putint
	mov r0, #1
label39:
	add sp, sp, #4
	vpop { s16 }
	pop { r4, r5, r6, r7, r8, pc }
label8:
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
	vadd.f32 s0, s0, s2
	mov r3, #1065353216
	vmov s2, r3
	vmovne.f32 s0, s2
	movw r3, #52429
	movt r3, #15820
	vmov s2, r3
	vadd.f32 s1, s1, s2
	mov r3, #0
	vmov s2, r3
	vmovne.f32 s1, s2
	cmp r4, r5
	ble label73
	add r3, r5, #4
	cmp r4, r3
	ble label31
	b label30
label73:
	mov r3, r5
label9:
	cmp r4, #0
	ble label76
	mov r7, #0
	vmov s2, r7
	add r5, r7, #4
	cmp r4, r5
	ble label15
	b label14
label76:
	mov r5, #0
	vmov s2, r5
	vadd.f32 s16, s16, s2
	add r2, r2, #1
	mov r5, r3
	movw r3, #41248
	movt r3, #7
	cmp r2, r3
	bge label36
	b label8
label15:
	add r5, r7, #4
	cmp r4, r5
	ble label116
label25:
	add r6, r0, r7, lsl #2
	vldr s3, [r6, #0]
	add r7, r1, r7, lsl #2
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
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	mov r7, r5
	add r5, r5, #4
	cmp r4, r5
	ble label116
	b label25
label30:
	vmov s2, r5
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	add r6, r0, r5, lsl #2
	vstr s3, [r6, #0]
	vadd.f32 s2, s0, s2
	add r7, r1, r5, lsl #2
	vstr s2, [r7, #0]
	add r8, r5, #1
	vmov s2, r8
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	vstr s3, [r6, #4]
	vadd.f32 s2, s0, s2
	vstr s2, [r7, #4]
	add r8, r5, #2
	vmov s2, r8
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	vstr s3, [r6, #8]
	vadd.f32 s2, s0, s2
	vstr s2, [r7, #8]
	add r5, r5, #3
	vmov s2, r5
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	vstr s3, [r6, #12]
	vadd.f32 s2, s0, s2
	vstr s2, [r7, #12]
	mov r5, r3
	add r3, r3, #4
	cmp r4, r3
	ble label31
	b label30
label31:
	add r3, r5, #4
	cmp r4, r3
	ble label223
	b label33
label223:
	mov r3, r5
label34:
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	add r5, r0, r3, lsl #2
	vstr s3, [r5, #0]
	vadd.f32 s2, s0, s2
	add r5, r1, r3, lsl #2
	vstr s2, [r5, #0]
	add r3, r3, #1
	cmp r4, r3
	ble label9
	b label34
label116:
	mov r6, r7
	add r5, r7, #4
	cmp r4, r5
	ble label121
	b label21
label121:
	mov r5, r6
	add r6, r0, r6, lsl #2
	vldr s3, [r6, #0]
	add r6, r1, r5, lsl #2
	vldr s4, [r6, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	add r5, r5, #1
	cmp r4, r5
	ble label26
	add r6, r0, r5, lsl #2
	vldr s3, [r6, #0]
	add r6, r1, r5, lsl #2
	vldr s4, [r6, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	add r5, r5, #1
	cmp r4, r5
	ble label26
	add r6, r0, r5, lsl #2
	vldr s3, [r6, #0]
	add r6, r1, r5, lsl #2
	vldr s4, [r6, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	add r5, r5, #1
	cmp r4, r5
	ble label26
	add r6, r0, r5, lsl #2
	vldr s3, [r6, #0]
	add r6, r1, r5, lsl #2
	vldr s4, [r6, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	add r5, r5, #1
	cmp r4, r5
	ble label26
	add r6, r0, r5, lsl #2
	vldr s3, [r6, #0]
	add r6, r1, r5, lsl #2
	vldr s4, [r6, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	add r5, r5, #1
	cmp r4, r5
	ble label26
	add r6, r0, r5, lsl #2
	vldr s3, [r6, #0]
	add r6, r1, r5, lsl #2
	vldr s4, [r6, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	add r5, r5, #1
	cmp r4, r5
	ble label26
	add r6, r0, r5, lsl #2
	vldr s3, [r6, #0]
	add r6, r1, r5, lsl #2
	vldr s4, [r6, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	add r5, r5, #1
	cmp r4, r5
	ble label26
	add r6, r0, r5, lsl #2
	vldr s3, [r6, #0]
	add r6, r1, r5, lsl #2
	vldr s4, [r6, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	add r5, r5, #1
	cmp r4, r5
	ble label26
	add r6, r0, r5, lsl #2
	vldr s3, [r6, #0]
	add r6, r1, r5, lsl #2
	vldr s4, [r6, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	add r5, r5, #1
	cmp r4, r5
	ble label26
	add r6, r0, r5, lsl #2
	vldr s3, [r6, #0]
	add r6, r1, r5, lsl #2
	vldr s4, [r6, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	add r5, r5, #1
	cmp r4, r5
	ble label26
label322:
	add r6, r0, r5, lsl #2
	vldr s3, [r6, #0]
	add r6, r1, r5, lsl #2
	vldr s4, [r6, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	add r5, r5, #1
	cmp r4, r5
	ble label26
	b label322
label26:
	vadd.f32 s16, s16, s2
	add r2, r2, #1
	mov r5, r3
	movw r3, #41248
	movt r3, #7
	cmp r2, r3
	bge label36
	b label8
label33:
	vmov s2, r5
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	add r6, r0, r5, lsl #2
	vstr s3, [r6, #0]
	vadd.f32 s2, s0, s2
	add r7, r1, r5, lsl #2
	vstr s2, [r7, #0]
	add r8, r5, #1
	vmov s2, r8
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	vstr s3, [r6, #4]
	vadd.f32 s2, s0, s2
	vstr s2, [r7, #4]
	add r8, r5, #2
	vmov s2, r8
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	vstr s3, [r6, #8]
	vadd.f32 s2, s0, s2
	vstr s2, [r7, #8]
	add r5, r5, #3
	vmov s2, r5
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	vstr s3, [r6, #12]
	vadd.f32 s2, s0, s2
	vstr s2, [r7, #12]
	mov r5, r3
	add r3, r3, #4
	cmp r4, r3
	ble label223
	b label33
label14:
	add r6, r0, r7, lsl #2
	vldr s3, [r6, #0]
	add r7, r1, r7, lsl #2
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
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	mov r7, r5
	add r5, r5, #4
	cmp r4, r5
	ble label15
	b label14
label21:
	add r7, r0, r6, lsl #2
	vldr s3, [r7, #0]
	add r6, r1, r6, lsl #2
	vldr s4, [r6, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #4]
	vldr s4, [r6, #4]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #8]
	vldr s4, [r6, #8]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #12]
	vldr s4, [r6, #12]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	mov r6, r5
	add r5, r5, #4
	cmp r4, r5
	ble label121
	b label21
