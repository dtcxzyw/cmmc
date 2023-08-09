.arch armv7ve
.data
.bss
.align 8
y:
	.zero	16384
.align 8
x:
	.zero	16384
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	bl getint
	mov r4, r0
	mov r0, #22
	bl _sysy_starttime
	mov r5, #0
	mov r3, #1065353216
	movw r0, #:lower16:y
	movt r0, #:upper16:y
	movw r2, #:lower16:x
	movt r2, #:upper16:x
	vmov s2, r5
	vmov s0, r3
	sub r1, r4, #3
	mov r6, r5
	mov r8, r5
	vmov.f32 s1, s2
	movw r7, #41248
	movt r7, #7
	cmp r5, r7
	blt label8
	b label43
.p2align 4
label110:
	vadd.f32 s1, s1, s3
	add r6, r6, #1
	mov r8, r7
	movw r7, #41248
	movt r7, #7
	cmp r6, r7
	bge label43
.p2align 4
label8:
	movw r7, #26215
	movt r7, #26214
	smmul r7, r6, r7
	asr r9, r7, #2
	add r7, r9, r7, lsr #31
	add r7, r7, r7, lsl #2
	sub r7, r6, r7, lsl #1
	cmp r7, #0
	movw r7, #52429
	movt r7, #15948
	vmov s3, r7
	movw r7, #52429
	movt r7, #15820
	vadd.f32 s0, s0, s3
	vmov s3, r3
	vmovne.f32 s0, s3
	vmov s3, r7
	vadd.f32 s2, s2, s3
	vmov s3, r5
	vmovne.f32 s2, s3
	cmp r4, r8
	ble label77
	add r7, r8, #3
	cmp r4, r7
	ble label148
	add r7, r2, r8, lsl #2
	b label32
.p2align 4
label35:
	add r7, r7, #16
.p2align 4
label32:
	vmov s3, r8
	add r9, r0, r8, lsl #2
	add r10, r8, #1
	vcvt.f32.s32 s3, s3
	vadd.f32 s4, s2, s3
	vadd.f32 s3, s0, s3
	vstr s4, [r7, #0]
	vstr s3, [r9, #0]
	vmov s3, r10
	add r10, r8, #2
	vcvt.f32.s32 s3, s3
	vadd.f32 s4, s2, s3
	vadd.f32 s3, s0, s3
	vstr s4, [r7, #4]
	vstr s3, [r9, #4]
	vmov s3, r10
	add r10, r8, #3
	add r8, r8, #4
	cmp r1, r8
	vcvt.f32.s32 s3, s3
	vadd.f32 s4, s2, s3
	vadd.f32 s3, s0, s3
	vstr s4, [r7, #8]
	vstr s3, [r9, #8]
	vmov s3, r10
	vcvt.f32.s32 s3, s3
	vadd.f32 s4, s2, s3
	vadd.f32 s3, s0, s3
	vstr s4, [r7, #12]
	vstr s3, [r9, #12]
	bgt label35
	cmp r4, r8
	ble label238
.p2align 4
label38:
	add r7, r2, r8, lsl #2
.p2align 4
label39:
	vmov s3, r8
	add r9, r0, r8, lsl #2
	add r8, r8, #1
	cmp r4, r8
	vcvt.f32.s32 s3, s3
	vadd.f32 s4, s2, s3
	vadd.f32 s3, s0, s3
	vstr s4, [r7, #0]
	vstr s3, [r9, #0]
	ble label195
	add r7, r7, #4
	b label39
.p2align 4
label195:
	movs r7, r4
	ble label81
.p2align 4
label13:
	cmp r4, #3
	ble label89
	vmov s3, r5
	mov r8, r2
	mov r9, r5
	b label25
.p2align 4
label29:
	add r8, r8, #16
.p2align 4
label25:
	add r10, r0, r9, lsl #2
	vldr s4, [r8, #0]
	add r9, r9, #4
	vldr s5, [r10, #0]
	cmp r1, r9
	vmul.f32 s4, s4, s5
	vadd.f32 s3, s3, s4
	vldr s4, [r8, #4]
	vldr s5, [r10, #4]
	vmul.f32 s4, s4, s5
	vadd.f32 s3, s3, s4
	vldr s4, [r8, #8]
	vldr s5, [r10, #8]
	vmul.f32 s4, s4, s5
	vadd.f32 s3, s3, s4
	vldr s4, [r8, #12]
	vldr s5, [r10, #12]
	vmul.f32 s4, s4, s5
	vadd.f32 s3, s3, s4
	bgt label29
	vmov.f32 s4, s3
	cmp r4, r9
	ble label236
.p2align 4
label18:
	add r8, r2, r9, lsl #2
	vmov.f32 s3, s4
.p2align 4
label19:
	add r10, r0, r9, lsl #2
	vldr s4, [r8, #0]
	add r9, r9, #1
	vldr s5, [r10, #0]
	cmp r4, r9
	vmul.f32 s4, s4, s5
	vadd.f32 s3, s3, s4
	ble label110
	add r8, r8, #4
	b label19
label89:
	vmov s4, r5
	mov r9, r5
	vmov.f32 s3, s4
	cmp r4, r5
	bgt label18
	vadd.f32 s1, s1, s4
	add r6, r6, #1
	mov r8, r7
	movw r7, #41248
	movt r7, #7
	cmp r6, r7
	blt label8
	b label43
label77:
	mov r7, r8
	cmp r4, #0
	bgt label13
label81:
	vmov s3, r5
	vadd.f32 s1, s1, s3
	add r6, r6, #1
	mov r8, r7
	movw r7, #41248
	movt r7, #7
	cmp r6, r7
	blt label8
	b label43
label148:
	cmp r4, r8
	bgt label38
	movs r7, r4
	bgt label13
	b label81
label43:
	movw r0, #39768
	movt r0, #23074
	movw r1, #14269
	movt r1, #46470
	vmov s0, r0
	movw r0, #14269
	movt r0, #13702
	vsub.f32 s0, s1, s0
	vmov s1, r0
	mov r0, #0
	vcmp.f32 s0, s1
	vmov s1, r1
	vmrs APSR_nzcv, FPSCR
	movwls r0, #1
	vcmp.f32 s0, s1
	mov r4, r0
	vmrs APSR_nzcv, FPSCR
	orrge r4, r0, #1
	mov r0, #39
	bl _sysy_stoptime
	cmp r4, #0
	bne label47
	mov r0, #1
	bl putint
	mov r0, #1
label44:
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
.p2align 4
label238:
	movs r7, r4
	bgt label13
	b label81
.p2align 4
label236:
	vadd.f32 s1, s1, s3
	add r6, r6, #1
	mov r8, r7
	movw r7, #41248
	movt r7, #7
	cmp r6, r7
	blt label8
	b label43
label47:
	mov r0, r5
	bl putint
	mov r0, r5
	b label44
