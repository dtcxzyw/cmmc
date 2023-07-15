.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
my_sqrt:
	push { lr }
	movw r0, #0
	sub sp, sp, #4
	movt r0, #17096
	vmov s1, r0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	ble label5
	movw r0, #0
	movt r0, #17096
	vmov s1, r0
	vdiv.f32 s0, s0, s1
	bl my_sqrt
	movw r0, #0
	movt r0, #16672
	vmov s1, r0
	vmul.f32 s0, s0, s1
label3:
	add sp, sp, #4
	pop { pc }
label5:
	vadd.f32 s1, s0, s0
	movw r0, #0
	movt r0, #16512
	vmov s2, r0
	mov r0, #1040187392
	vadd.f32 s2, s0, s2
	vdiv.f32 s2, s1, s2
	vmov s1, r0
	mov r0, #1056964608
	vmul.f32 s3, s0, s1
	vmov s1, r0
	vadd.f32 s3, s3, s1
	vadd.f32 s2, s3, s2
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s0, s0, s2
	vadd.f32 s0, s2, s0
	vmul.f32 s0, s0, s1
	b label3
asr5:
	push { lr }
	vpush { s16, s17, s18, s19, s20 }
	mov r0, #1056964608
	vsub.f32 s4, s1, s0
	vmov.f32 s17, s1
	vmov s1, r0
	mov r0, #1065353216
	vmul.f32 s4, s4, s1
	vadd.f32 s16, s0, s4
	vsub.f32 s7, s17, s16
	vmul.f32 s4, s7, s1
	vadd.f32 s5, s16, s4
	vmov s4, r0
	movw r0, #0
	movt r0, #16512
	vmov s6, r0
	movw r0, #0
	vdiv.f32 s5, s4, s5
	movt r0, #16576
	vdiv.f32 s9, s4, s17
	vmul.f32 s8, s5, s6
	vdiv.f32 s5, s4, s16
	vadd.f32 s8, s5, s8
	vadd.f32 s8, s8, s9
	vmul.f32 s8, s8, s7
	vmov s7, r0
	movw r0, #0
	movt r0, #16752
	vdiv.f32 s18, s8, s7
	vsub.f32 s8, s16, s0
	vmul.f32 s1, s8, s1
	vadd.f32 s1, s0, s1
	vdiv.f32 s1, s4, s1
	vdiv.f32 s4, s4, s0
	vmul.f32 s1, s1, s6
	vmov s6, r0
	vadd.f32 s1, s4, s1
	vmul.f32 s6, s2, s6
	vadd.f32 s1, s1, s5
	vmul.f32 s1, s1, s8
	vdiv.f32 s4, s1, s7
	vadd.f32 s1, s4, s18
	vsub.f32 s3, s1, s3
	vabs.f32 s5, s3
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	bhi label66
	movw r0, #0
	movt r0, #16752
	vmov s0, r0
	vdiv.f32 s0, s3, s0
	vadd.f32 s0, s1, s0
label64:
	vpop { s16, s17, s18, s19, s20 }
	pop { pc }
label66:
	mov r0, #1056964608
	vmov s1, r0
	mov r0, #1
	vmul.f32 s19, s2, s1
	vmov.f32 s1, s16
	vmov.f32 s2, s19
	vmov.f32 s3, s4
	bl asr5
	mov r0, #1
	vmov.f32 s20, s0
	vmov.f32 s0, s16
	vmov.f32 s1, s17
	vmov.f32 s2, s19
	vmov.f32 s3, s18
	bl asr5
	vadd.f32 s0, s20, s0
	b label64
eee:
	push { lr }
	movw r0, #4719
	sub sp, sp, #4
	movt r0, #14979
	vmov s1, r0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	ble label126
	mov r0, #1056964608
	vmov s1, r0
	vmul.f32 s0, s0, s1
	bl eee
	vmul.f32 s0, s0, s0
	b label142
label126:
	vmul.f32 s1, s0, s0
	mov r0, #1056964608
	vmov s2, r0
	mov r0, #1065353216
	vmov s3, r0
	mov r0, #3
	vmul.f32 s1, s1, s2
	vadd.f32 s2, s0, s3
	vadd.f32 s1, s2, s1
	vmov.f32 s2, s0
label127:
	vmul.f32 s4, s3, s2
	ands r1, r0, #1
	vmul.f32 s2, s2, s2
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s3, s4
	cmp r0, #0
	beq label131
	b label127
label141:
	movw r0, #0
	movt r0, #17136
	vmov s0, r0
	vdiv.f32 s0, s2, s0
	vadd.f32 s0, s1, s0
label142:
	add sp, sp, #4
	pop { pc }
label131:
	movw r0, #0
	movt r0, #16576
	vmov s2, r0
	mov r0, #1065353216
	vdiv.f32 s2, s3, s2
	vmov s3, r0
	mov r0, #4
	vadd.f32 s1, s1, s2
	vmov.f32 s2, s0
label132:
	vmul.f32 s4, s3, s2
	ands r1, r0, #1
	vmul.f32 s2, s2, s2
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s3, s4
	cmp r0, #0
	beq label136
	b label132
label136:
	movw r0, #0
	movt r0, #16832
	vmov s2, r0
	mov r0, #1065353216
	vdiv.f32 s2, s3, s2
	vadd.f32 s1, s1, s2
	vmov s2, r0
	mov r0, #5
label137:
	vmul.f32 s3, s2, s0
	ands r1, r0, #1
	vmul.f32 s0, s0, s0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s3
	cmp r0, #0
	beq label141
	b label137
my_exp:
	push { lr }
	vcmp.f32 s0, #0
	sub sp, sp, #4
	vmrs APSR_nzcv, FPSCR
	bhs label217
	vneg.f32 s0, s0
	bl my_exp
	mov r0, #1065353216
	vmov s1, r0
	vdiv.f32 s0, s1, s0
	b label215
label217:
	vcvt.s32.f32 s1, s0
	vmov r0, s1
	vcvt.f32.s32 s1, s1
	vsub.f32 s0, s0, s1
	cmp r0, #0
	bge label226
	rsb r0, r0, #0
	mov r1, #1065353216
	vmov s2, r1
	movw r1, #63572
	movt r1, #16429
	vmov s1, r1
	vmul.f32 s3, s2, s1
	ands r1, r0, #1
	vmul.f32 s1, s1, s1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s3
	cmp r0, #0
	beq label223
	vmul.f32 s3, s2, s1
	ands r1, r0, #1
	vmul.f32 s1, s1, s1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s3
	cmp r0, #0
	beq label223
	vmul.f32 s3, s2, s1
	ands r1, r0, #1
	vmul.f32 s1, s1, s1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s3
	cmp r0, #0
	beq label223
	vmul.f32 s3, s2, s1
	ands r1, r0, #1
	vmul.f32 s1, s1, s1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s3
	cmp r0, #0
	beq label223
	vmul.f32 s3, s2, s1
	ands r1, r0, #1
	vmul.f32 s1, s1, s1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s3
	cmp r0, #0
	beq label223
	vmul.f32 s3, s2, s1
	ands r1, r0, #1
	vmul.f32 s1, s1, s1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s3
	cmp r0, #0
	beq label223
	vmul.f32 s3, s2, s1
	ands r1, r0, #1
	vmul.f32 s1, s1, s1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s3
	cmp r0, #0
	beq label223
	vmul.f32 s3, s2, s1
	ands r1, r0, #1
	vmul.f32 s1, s1, s1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s3
	cmp r0, #0
	beq label223
	vmul.f32 s3, s2, s1
	ands r1, r0, #1
	vmul.f32 s1, s1, s1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s3
	cmp r0, #0
	beq label223
label219:
	vmul.f32 s3, s2, s1
	ands r1, r0, #1
	vmul.f32 s1, s1, s1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s3
	cmp r0, #0
	beq label223
	b label219
label215:
	add sp, sp, #4
	pop { pc }
label223:
	mov r0, #1065353216
	vmov s1, r0
	vdiv.f32 s5, s1, s2
label224:
	bl eee
	vmul.f32 s0, s5, s0
	b label215
label226:
	cmp r0, #0
	beq label271
	b label270
label271:
	mov r0, #1065353216
	vmov s5, r0
	b label224
label270:
	mov r1, #1065353216
	vmov s2, r1
	movw r1, #63572
	movt r1, #16429
	vmov s1, r1
	vmul.f32 s3, s2, s1
	ands r1, r0, #1
	vmul.f32 s1, s1, s1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s3
	cmp r0, #0
	beq label286
	vmul.f32 s3, s2, s1
	ands r1, r0, #1
	vmul.f32 s1, s1, s1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s3
	cmp r0, #0
	beq label286
	vmul.f32 s3, s2, s1
	ands r1, r0, #1
	vmul.f32 s1, s1, s1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s3
	cmp r0, #0
	beq label286
	vmul.f32 s3, s2, s1
	ands r1, r0, #1
	vmul.f32 s1, s1, s1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s3
	cmp r0, #0
	beq label286
	vmul.f32 s3, s2, s1
	ands r1, r0, #1
	vmul.f32 s1, s1, s1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s3
	cmp r0, #0
	beq label286
	vmul.f32 s3, s2, s1
	ands r1, r0, #1
	vmul.f32 s1, s1, s1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s3
	cmp r0, #0
	beq label286
	vmul.f32 s3, s2, s1
	ands r1, r0, #1
	vmul.f32 s1, s1, s1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s3
	cmp r0, #0
	beq label286
	vmul.f32 s3, s2, s1
	ands r1, r0, #1
	vmul.f32 s1, s1, s1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s3
	cmp r0, #0
	beq label286
	vmul.f32 s3, s2, s1
	ands r1, r0, #1
	vmul.f32 s1, s1, s1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s3
	cmp r0, #0
	beq label286
	vmul.f32 s3, s2, s1
	ands r1, r0, #1
	vmul.f32 s1, s1, s1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s3
	cmp r0, #0
	beq label286
	b label227
label286:
	vmov.f32 s5, s2
	b label224
label227:
	vmul.f32 s3, s2, s1
	ands r1, r0, #1
	vmul.f32 s1, s1, s1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s3
	cmp r0, #0
	beq label286
	b label227
.globl main
main:
	push { r4, r5, lr }
	vpush { s16, s17, s18 }
	bl getint
	movs r4, r0
	beq label328
label329:
	bl getfloat
	vabs.f32 s18, s0
	vmov.f32 s16, s0
	bl getfloat
	vmov.f32 s17, s0
	vmov.f32 s0, s18
	bl putfloat
	mov r0, #32
	bl putch
	vmov.f32 s0, s16
	mov r0, #1065353216
	vmov s1, r0
	mov r0, #2
label330:
	vmul.f32 s2, s1, s0
	ands r1, r0, #1
	vmul.f32 s0, s0, s0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s1, s2
	cmp r0, #0
	beq label334
	b label330
label334:
	vmov.f32 s0, s1
	bl putfloat
	vmov.f32 s0, s16
	bl my_sqrt
	mov r0, #32
	vmov.f32 s18, s0
	bl putch
	vmov.f32 s0, s18
	bl putfloat
	vmov.f32 s0, s16
	bl my_exp
	mov r0, #32
	vmov.f32 s18, s0
	bl putch
	vmov.f32 s0, s18
	bl putfloat
	mov r0, #32
	bl putch
	mov r5, #0
	vcmp.f32 s16, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r5, #1
	ble label335
	mov r0, #1065353216
	vmov s0, r0
	mov r0, #1056964608
	vmov s2, r0
	movw r0, #0
	movt r0, #16512
	vsub.f32 s1, s16, s0
	vmov s3, r0
	movw r0, #0
	movt r0, #16576
	vmul.f32 s2, s1, s2
	vadd.f32 s2, s2, s0
	vdiv.f32 s2, s0, s2
	vmul.f32 s2, s2, s3
	vdiv.f32 s3, s0, s16
	vadd.f32 s2, s2, s0
	vadd.f32 s2, s2, s3
	vmul.f32 s1, s2, s1
	vmov s2, r0
	movw r0, #52343
	movt r0, #12843
	vdiv.f32 s3, s1, s2
	vmov.f32 s1, s16
	vmov s2, r0
	mov r0, #1
	bl asr5
	bl putfloat
label337:
	mov r0, #32
	bl putch
	mov r0, #0
	vcmp.f32 s17, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	ands r0, r5, r0
	beq label339
	mov r0, #1065353216
	vmov s10, r0
	mov r0, #1056964608
	vmov s11, r0
	movw r0, #0
	movt r0, #16512
	vdiv.f32 s2, s10, s17
	vsub.f32 s0, s17, s10
	vmov s12, r0
	movw r0, #0
	movt r0, #16576
	vmov s14, r0
	vmul.f32 s1, s0, s11
	movw r0, #52343
	movt r0, #12843
	vmov s13, r0
	mov r0, #1
	vadd.f32 s1, s1, s10
	vdiv.f32 s1, s10, s1
	vmul.f32 s1, s1, s12
	vadd.f32 s1, s1, s10
	vadd.f32 s1, s1, s2
	vmul.f32 s0, s1, s0
	vdiv.f32 s3, s0, s14
	vmov.f32 s0, s10
	vmov.f32 s1, s17
	vmov.f32 s2, s13
	bl asr5
	vmov.f32 s15, s0
	mov r0, #1
	vdiv.f32 s2, s10, s16
	vsub.f32 s0, s16, s10
	vmul.f32 s1, s0, s11
	vadd.f32 s1, s1, s10
	vdiv.f32 s1, s10, s1
	vmul.f32 s1, s1, s12
	vadd.f32 s1, s1, s10
	vadd.f32 s1, s1, s2
	vmul.f32 s0, s1, s0
	vdiv.f32 s3, s0, s14
	vmov.f32 s0, s10
	vmov.f32 s1, s16
	vmov.f32 s2, s13
	bl asr5
	vdiv.f32 s0, s15, s0
	bl putfloat
label340:
	mov r0, #32
	bl putch
	vcmp.f32 s16, #0
	vmrs APSR_nzcv, FPSCR
	ble label341
	b label343
label341:
	mov r0, #45
	bl putch
label342:
	mov r0, #10
	bl putch
	subs r4, r4, #1
	beq label328
	b label329
label343:
	mov r0, #1065353216
	vmov s0, r0
	mov r0, #1056964608
	vmov s2, r0
	movw r0, #0
	movt r0, #16512
	vsub.f32 s1, s16, s0
	vmov s3, r0
	movw r0, #0
	movt r0, #16576
	vmul.f32 s2, s1, s2
	vadd.f32 s2, s2, s0
	vdiv.f32 s2, s0, s2
	vmul.f32 s2, s2, s3
	vdiv.f32 s3, s0, s16
	vadd.f32 s2, s2, s0
	vadd.f32 s2, s2, s3
	vmul.f32 s1, s2, s1
	vmov s2, r0
	movw r0, #52343
	movt r0, #12843
	vdiv.f32 s3, s1, s2
	vmov.f32 s1, s16
	vmov s2, r0
	mov r0, #1
	bl asr5
	vmul.f32 s0, s17, s0
	bl my_exp
	bl putfloat
	b label342
label339:
	mov r0, #45
	bl putch
	b label340
label335:
	mov r0, #45
	bl putch
	b label337
label328:
	mov r0, #0
	vpop { s16, s17, s18 }
	pop { r4, r5, pc }
