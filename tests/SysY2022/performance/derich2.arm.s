.arch armv7ve
.data
.bss
.align 4
imgIn:
	.zero	552960
.align 4
imgOut:
	.zero	552960
.align 4
my_y1:
	.zero	552960
.align 4
my_y2:
	.zero	552960
.text
.syntax unified
.arm
.fpu vfpv4
newPow:
	push { lr }
	vpush { s16 }
	vmov.f32 s16, s0
	cmp r1, #0
	bge label5
	b label2
label29:
	mov r0, #1065353216
	vmov s0, r0
	b label3
label2:
	rsb r1, r1, #0
	vmov.f32 s0, s16
	bl newPow
	mov r0, #1065353216
	vmov s1, r0
	vdiv.f32 s0, s1, s0
label3:
	vpop { s16 }
	pop { pc }
label5:
	cmp r1, #0
	bne label22
	b label29
label22:
	sub r1, r1, #1
	vmov.f32 s0, s16
	bl newPow
	vmul.f32 s0, s16, s0
	b label3
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	movw r0, #:lower16:imgIn
	movt r0, #:upper16:imgIn
	mov r5, r0
	bl getfarray
	mov r0, #156
	bl _sysy_starttime
	mov r0, #1073741824
	vmov s0, r0
	mov r1, #0
	bl newPow
	movw r4, #:lower16:imgOut
	movt r4, #:upper16:imgOut
	movw r0, #:lower16:my_y1
	movt r0, #:upper16:my_y1
	movw r1, #:lower16:my_y2
	movt r1, #:upper16:my_y2
	mov r2, #0
	cmp r2, #512
	bge label113
	b label34
label113:
	mov r2, #0
	cmp r2, #512
	bge label152
	b label43
label152:
	mov r3, #0
	cmp r3, #512
	bge label194
	b label53
label194:
	mov r2, #0
	movw r3, #270
	cmp r2, r3
	bge label387
	b label702
label387:
	mov r2, #0
	movw r3, #270
	cmp r2, r3
	bge label397
	b label396
label397:
	mov r3, #0
	cmp r3, #512
	bge label92
	b label79
label92:
	mov r0, #158
	bl _sysy_stoptime
	mov r0, #138240
	mov r1, r4
	bl putfarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label702:
	mov r3, #0
	vmov s1, r3
	vmov s4, r3
	vmov s3, r3
label93:
	movw r5, #1080
	mla r6, r3, r5, r4
	add r6, r6, r2, lsl #2
	vldr s2, [r6, #0]
	movw r6, #61929
	movt r6, #48705
	vmov s5, r6
	vmul.f32 s5, s5, s2
	movw r6, #35322
	movt r6, #15842
	vmov s6, r6
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	movw r6, #12860
	movt r6, #48923
	vmov s5, r6
	vmul.f32 s3, s5, s3
	vadd.f32 s5, s4, s3
	mla r5, r3, r5, r0
	add r5, r5, r2, lsl #2
	vstr s5, [r5, #0]
	add r3, r3, #1
	cmp r3, #512
	bge label98
	vmov.f32 s4, s2
	vmov.f32 s3, s1
	vmov.f32 s1, s5
	b label93
label396:
	mov r3, #0
	vmov s1, r3
	vmov s2, r3
	vmov s3, r3
	vmov s5, r3
	movw r3, #511
	b label70
label76:
	add r2, r2, #1
	movw r3, #270
	cmp r2, r3
	bge label397
	b label396
label70:
	movw r5, #51281
	movt r5, #48700
	vmov s4, r5
	vmul.f32 s4, s4, s2
	movw r5, #9998
	movt r5, #15851
	vmov s6, r5
	vmul.f32 s5, s6, s5
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	movw r5, #12860
	movt r5, #48923
	vmov s5, r5
	vmul.f32 s3, s5, s3
	vadd.f32 s4, s4, s3
	movw r5, #1080
	mla r6, r3, r5, r1
	add r6, r6, r2, lsl #2
	vstr s4, [r6, #0]
	mla r5, r3, r5, r4
	add r5, r5, r2, lsl #2
	vldr s6, [r5, #0]
	sub r3, r3, #1
	cmn r3, #1
	ble label76
	vmov.f32 s3, s1
	vmov.f32 s5, s2
	vmov.f32 s1, s4
	vmov.f32 s2, s6
	b label70
label53:
	movw r2, #1080
	mla r5, r3, r2, r1
	mla r6, r3, r2, r0
	mla r7, r3, r2, r4
	mov r2, #0
	add r8, r2, #8
	movw r9, #270
	cmp r8, r9
	bge label57
	b label56
label57:
	add r8, r2, #8
	movw r9, #270
	cmp r8, r9
	bge label60
label59:
	add r9, r6, r2, lsl #2
	vldr s1, [r9, #0]
	add r10, r5, r2, lsl #2
	vldr s2, [r10, #0]
	vadd.f32 s1, s1, s2
	add r2, r7, r2, lsl #2
	vstr s1, [r2, #0]
	vldr s1, [r9, #4]
	vldr s2, [r10, #4]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #4]
	vldr s1, [r9, #8]
	vldr s2, [r10, #8]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #8]
	vldr s1, [r9, #12]
	vldr s2, [r10, #12]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #12]
	vldr s1, [r9, #16]
	vldr s2, [r10, #16]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #16]
	vldr s1, [r9, #20]
	vldr s2, [r10, #20]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #20]
	vldr s1, [r9, #24]
	vldr s2, [r10, #24]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #24]
	vldr s1, [r9, #28]
	vldr s2, [r10, #28]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #28]
	mov r2, r8
	add r8, r8, #8
	movw r9, #270
	cmp r8, r9
	bge label60
	b label59
label60:
	add r8, r2, #8
	movw r9, #270
	cmp r8, r9
	bge label62
label65:
	add r9, r6, r2, lsl #2
	vldr s1, [r9, #0]
	add r10, r5, r2, lsl #2
	vldr s2, [r10, #0]
	vadd.f32 s1, s1, s2
	add r2, r7, r2, lsl #2
	vstr s1, [r2, #0]
	vldr s1, [r9, #4]
	vldr s2, [r10, #4]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #4]
	vldr s1, [r9, #8]
	vldr s2, [r10, #8]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #8]
	vldr s1, [r9, #12]
	vldr s2, [r10, #12]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #12]
	vldr s1, [r9, #16]
	vldr s2, [r10, #16]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #16]
	vldr s1, [r9, #20]
	vldr s2, [r10, #20]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #20]
	vldr s1, [r9, #24]
	vldr s2, [r10, #24]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #24]
	vldr s1, [r9, #28]
	vldr s2, [r10, #28]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #28]
	mov r2, r8
	add r8, r8, #8
	movw r9, #270
	cmp r8, r9
	bge label62
	b label65
label62:
	add r8, r6, r2, lsl #2
	vldr s1, [r8, #0]
	add r8, r5, r2, lsl #2
	vldr s2, [r8, #0]
	vadd.f32 s1, s1, s2
	add r8, r7, r2, lsl #2
	vstr s1, [r8, #0]
	add r2, r2, #1
	movw r8, #270
	cmp r2, r8
	bge label64
	b label62
label64:
	add r3, r3, #1
	cmp r3, #512
	bge label194
	b label53
label56:
	add r9, r6, r2, lsl #2
	vldr s1, [r9, #0]
	add r10, r5, r2, lsl #2
	vldr s2, [r10, #0]
	vadd.f32 s1, s1, s2
	add r2, r7, r2, lsl #2
	vstr s1, [r2, #0]
	vldr s1, [r9, #4]
	vldr s2, [r10, #4]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #4]
	vldr s1, [r9, #8]
	vldr s2, [r10, #8]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #8]
	vldr s1, [r9, #12]
	vldr s2, [r10, #12]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #12]
	vldr s1, [r9, #16]
	vldr s2, [r10, #16]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #16]
	vldr s1, [r9, #20]
	vldr s2, [r10, #20]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #20]
	vldr s1, [r9, #24]
	vldr s2, [r10, #24]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #24]
	vldr s1, [r9, #28]
	vldr s2, [r10, #28]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #28]
	mov r2, r8
	add r8, r8, #8
	movw r9, #270
	cmp r8, r9
	bge label57
	b label56
label79:
	movw r2, #1080
	mla r5, r3, r2, r1
	mla r6, r3, r2, r0
	mla r7, r3, r2, r4
	mov r2, #0
	add r8, r2, #8
	movw r9, #270
	cmp r8, r9
	bge label83
	b label82
label83:
	add r8, r2, #8
	movw r9, #270
	cmp r8, r9
	bge label85
	b label91
label85:
	add r8, r2, #8
	movw r9, #270
	cmp r8, r9
	bge label88
	b label87
label88:
	add r8, r6, r2, lsl #2
	vldr s0, [r8, #0]
	add r8, r5, r2, lsl #2
	vldr s1, [r8, #0]
	vadd.f32 s0, s0, s1
	add r8, r7, r2, lsl #2
	vstr s0, [r8, #0]
	add r2, r2, #1
	movw r8, #270
	cmp r2, r8
	bge label90
	b label88
label82:
	add r9, r6, r2, lsl #2
	vldr s0, [r9, #0]
	add r10, r5, r2, lsl #2
	vldr s1, [r10, #0]
	vadd.f32 s0, s0, s1
	add r2, r7, r2, lsl #2
	vstr s0, [r2, #0]
	vldr s0, [r9, #4]
	vldr s1, [r10, #4]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #4]
	vldr s0, [r9, #8]
	vldr s1, [r10, #8]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #8]
	vldr s0, [r9, #12]
	vldr s1, [r10, #12]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #12]
	vldr s0, [r9, #16]
	vldr s1, [r10, #16]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #16]
	vldr s0, [r9, #20]
	vldr s1, [r10, #20]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #20]
	vldr s0, [r9, #24]
	vldr s1, [r10, #24]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #24]
	vldr s0, [r9, #28]
	vldr s1, [r10, #28]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #28]
	mov r2, r8
	add r8, r8, #8
	movw r9, #270
	cmp r8, r9
	bge label83
	b label82
label91:
	add r9, r6, r2, lsl #2
	vldr s0, [r9, #0]
	add r10, r5, r2, lsl #2
	vldr s1, [r10, #0]
	vadd.f32 s0, s0, s1
	add r2, r7, r2, lsl #2
	vstr s0, [r2, #0]
	vldr s0, [r9, #4]
	vldr s1, [r10, #4]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #4]
	vldr s0, [r9, #8]
	vldr s1, [r10, #8]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #8]
	vldr s0, [r9, #12]
	vldr s1, [r10, #12]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #12]
	vldr s0, [r9, #16]
	vldr s1, [r10, #16]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #16]
	vldr s0, [r9, #20]
	vldr s1, [r10, #20]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #20]
	vldr s0, [r9, #24]
	vldr s1, [r10, #24]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #24]
	vldr s0, [r9, #28]
	vldr s1, [r10, #28]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #28]
	mov r2, r8
	add r8, r8, #8
	movw r9, #270
	cmp r8, r9
	bge label85
	b label91
label87:
	add r9, r6, r2, lsl #2
	vldr s0, [r9, #0]
	add r10, r5, r2, lsl #2
	vldr s1, [r10, #0]
	vadd.f32 s0, s0, s1
	add r2, r7, r2, lsl #2
	vstr s0, [r2, #0]
	vldr s0, [r9, #4]
	vldr s1, [r10, #4]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #4]
	vldr s0, [r9, #8]
	vldr s1, [r10, #8]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #8]
	vldr s0, [r9, #12]
	vldr s1, [r10, #12]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #12]
	vldr s0, [r9, #16]
	vldr s1, [r10, #16]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #16]
	vldr s0, [r9, #20]
	vldr s1, [r10, #20]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #20]
	vldr s0, [r9, #24]
	vldr s1, [r10, #24]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #24]
	vldr s0, [r9, #28]
	vldr s1, [r10, #28]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #28]
	mov r2, r8
	add r8, r8, #8
	movw r9, #270
	cmp r8, r9
	bge label88
	b label87
label43:
	movw r3, #1080
	mla r6, r2, r3, r5
	mla r7, r2, r3, r1
	mov r3, #0
	vmov s1, r3
	vmov s2, r3
	vmov s3, r3
	vmov s4, r3
	movw r3, #269
label44:
	movw r8, #51281
	movt r8, #48700
	vmov s5, r8
	vmul.f32 s5, s5, s2
	movw r8, #9998
	movt r8, #15851
	vmov s6, r8
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	movw r8, #12860
	movt r8, #48923
	vmov s5, r8
	vmul.f32 s3, s5, s3
	vadd.f32 s5, s4, s3
	add r8, r7, r3, lsl #2
	vstr s5, [r8, #0]
	add r8, r6, r3, lsl #2
	vldr s6, [r8, #0]
	sub r3, r3, #1
	cmn r3, #1
	ble label50
	vmov.f32 s3, s1
	vmov.f32 s4, s2
	vmov.f32 s1, s5
	vmov.f32 s2, s6
	b label44
label50:
	add r2, r2, #1
	cmp r2, #512
	bge label152
	b label43
label34:
	movw r3, #1080
	mla r6, r2, r3, r5
	mla r7, r2, r3, r0
	mov r3, #0
	vmov s1, r3
	vmov s4, r3
	vmov s3, r3
	b label35
label40:
	add r2, r2, #1
	cmp r2, #512
	bge label113
	b label34
label35:
	add r8, r6, r3, lsl #2
	vldr s2, [r8, #0]
	movw r8, #61929
	movt r8, #48705
	vmov s5, r8
	vmul.f32 s5, s5, s2
	movw r8, #35322
	movt r8, #15842
	vmov s6, r8
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	movw r8, #12860
	movt r8, #48923
	vmov s5, r8
	vmul.f32 s3, s5, s3
	vadd.f32 s5, s4, s3
	add r8, r7, r3, lsl #2
	vstr s5, [r8, #0]
	add r3, r3, #1
	movw r8, #270
	cmp r3, r8
	bge label40
	vmov.f32 s4, s2
	vmov.f32 s3, s1
	vmov.f32 s1, s5
	b label35
label98:
	add r2, r2, #1
	movw r3, #270
	cmp r2, r3
	bge label387
	b label702
label90:
	add r3, r3, #1
	cmp r3, #512
	bge label92
	b label79
