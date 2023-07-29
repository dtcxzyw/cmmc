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
.p2align 4
	push { lr }
	cmp r0, #0
	sub sp, sp, #4
	blt label2
	bne label6
	mov r0, #1065353216
	vmov s0, r0
	b label3
label6:
	subs r1, r0, #1
	blt label9
	bne label11
	mov r0, #1065353216
	vmov s0, r0
	vadd.f32 s0, s0, s0
	b label3
label11:
	sub r0, r0, #2
	bl newPow
	vadd.f32 s0, s0, s0
	vadd.f32 s0, s0, s0
	b label3
label2:
	mvn r1, #0
	sub r0, r1, r0
	bl newPow
	mov r0, #1065353216
	vadd.f32 s0, s0, s0
	vmov s1, r0
	vdiv.f32 s0, s1, s0
label3:
	add sp, sp, #4
	pop { pc }
label9:
	mov r0, #1
	bl newPow
	mov r0, #1065353216
	vmov s1, r0
	vdiv.f32 s0, s1, s0
	vadd.f32 s0, s0, s0
	b label3
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	movw r5, #:lower16:imgIn
	movt r5, #:upper16:imgIn
	mov r0, r5
	bl getfarray
	mov r0, #156
	bl _sysy_starttime
	mov r0, #0
	bl newPow
	mov r6, #0
	movw r1, #:lower16:my_y2
	movw r0, #:lower16:my_y1
	movw r4, #:lower16:imgOut
	movt r1, #:upper16:my_y2
	movt r0, #:upper16:my_y1
	movt r4, #:upper16:imgOut
	cmp r6, #512
	blt label54
	mov r2, #0
	cmp r2, #512
	blt label233
	movw r3, #270
	cmp r2, r3
	blt label237
	cmp r2, #512
	blt label89
	b label96
.p2align 4
label237:
	mov r3, #0
	vmov s5, r3
	vmov.f32 s7, s5
	vmov.f32 s4, s5
	b label97
.p2align 4
label243:
	mov r3, #0
	vmov s4, r3
	movw r3, #511
	vmov.f32 s3, s4
	vmov.f32 s5, s4
	vmov.f32 s6, s4
.p2align 4
label74:
	movw r5, #51281
	movw r6, #1080
	movt r5, #48700
	vmov s1, r5
	movw r5, #9998
	movt r5, #15851
	vmov s2, r5
	movw r5, #12860
	vmul.f32 s7, s6, s1
	movt r5, #48923
	vmul.f32 s3, s3, s2
	vmul.f32 s6, s6, s2
	vadd.f32 s3, s7, s3
	vmul.f32 s7, s0, s5
	vadd.f32 s7, s3, s7
	vmov s3, r5
	mla r5, r3, r6, r1
	mla r6, r3, r6, r4
	sub r3, r3, #4
	cmp r3, #3
	add r7, r5, r2, lsl #2
	vmul.f32 s4, s4, s3
	vmul.f32 s5, s5, s3
	vadd.f32 s4, s7, s4
	vmul.f32 s8, s0, s4
	vstr s4, [r7, #0]
	vmul.f32 s4, s4, s3
	add r7, r6, r2, lsl #2
	vldr s7, [r7, #0]
	movw r7, #64456
	movt r7, #65535
	add r8, r5, r7
	vmul.f32 s9, s7, s1
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	vmul.f32 s7, s7, s2
	add r7, r7, r2, lsl #2
	vadd.f32 s6, s9, s6
	vadd.f32 s6, s6, s8
	vadd.f32 s5, s6, s5
	vmul.f32 s6, s0, s5
	vstr s5, [r8, #0]
	vldr s8, [r7, #0]
	sub r7, r5, #2160
	add r7, r7, r2, lsl #2
	vmul.f32 s9, s8, s1
	vmul.f32 s2, s8, s2
	vadd.f32 s7, s9, s7
	vadd.f32 s6, s7, s6
	vadd.f32 s4, s6, s4
	vmul.f32 s7, s0, s4
	vstr s4, [r7, #0]
	sub r7, r6, #2160
	add r7, r7, r2, lsl #2
	vldr s6, [r7, #0]
	movw r7, #62296
	movt r7, #65535
	add r5, r5, r7
	vmul.f32 s1, s6, s1
	add r5, r5, r2, lsl #2
	vadd.f32 s1, s1, s2
	vmul.f32 s2, s5, s3
	vadd.f32 s1, s1, s7
	vadd.f32 s5, s1, s2
	vstr s5, [r5, #0]
	add r5, r6, r7
	add r5, r5, r2, lsl #2
	vldr s1, [r5, #0]
	ble label80
	vmov.f32 s3, s6
	vmov.f32 s6, s1
	b label74
.p2align 4
label80:
	movw r5, #51281
	movt r5, #48700
	vmov s2, r5
	movw r5, #9998
	movt r5, #15851
	vmov s3, r5
	movw r5, #12860
	vmul.f32 s2, s1, s2
	movt r5, #48923
	vmul.f32 s3, s6, s3
	vadd.f32 s2, s2, s3
	vmul.f32 s3, s0, s5
	vadd.f32 s2, s2, s3
	vmov s3, r5
	movw r5, #1080
	mla r6, r3, r5, r1
	mla r5, r3, r5, r4
	sub r3, r3, #1
	vmul.f32 s3, s4, s3
	cmn r3, #1
	add r6, r6, r2, lsl #2
	add r5, r5, r2, lsl #2
	vadd.f32 s2, s2, s3
	vstr s2, [r6, #0]
	vldr s3, [r5, #0]
	bgt label341
	add r2, r2, #1
	movw r3, #270
	cmp r2, r3
	blt label243
	mov r2, #0
	cmp r2, #512
	blt label89
	b label96
.p2align 4
label341:
	vmov.f32 s6, s1
	vmov.f32 s4, s5
	vmov.f32 s1, s3
	vmov.f32 s5, s2
	b label80
.p2align 4
label89:
	movw r6, #1080
	mov r7, #0
	mla r5, r2, r6, r0
	mla r3, r2, r6, r4
	mla r6, r2, r6, r1
.p2align 4
label90:
	add r8, r5, r7, lsl #2
	add r9, r6, r7, lsl #2
	add r10, r3, r7, lsl #2
	vldr s0, [r8, #0]
	vldr s1, [r9, #0]
	vadd.f32 s0, s0, s1
	vstr s0, [r10, #0]
	vldr s0, [r8, #4]
	vldr s1, [r9, #4]
	vadd.f32 s0, s0, s1
	vstr s0, [r10, #4]
	vldr s0, [r8, #8]
	vldr s1, [r9, #8]
	vadd.f32 s0, s0, s1
	vstr s0, [r10, #8]
	vldr s0, [r8, #12]
	vldr s1, [r9, #12]
	vadd.f32 s0, s0, s1
	vstr s0, [r10, #12]
	vldr s0, [r8, #16]
	vldr s1, [r9, #16]
	vadd.f32 s0, s0, s1
	vstr s0, [r10, #16]
	vldr s0, [r8, #20]
	vldr s1, [r9, #20]
	vadd.f32 s0, s0, s1
	vstr s0, [r10, #20]
	vldr s0, [r8, #24]
	vldr s1, [r9, #24]
	vadd.f32 s0, s0, s1
	vstr s0, [r10, #24]
	vldr s0, [r8, #28]
	vldr s1, [r9, #28]
	vadd.f32 s0, s0, s1
	vstr s0, [r10, #28]
	vldr s0, [r8, #32]
	vldr s1, [r9, #32]
	vadd.f32 s0, s0, s1
	vstr s0, [r10, #32]
	vldr s0, [r8, #36]
	vldr s1, [r9, #36]
	vadd.f32 s0, s0, s1
	vstr s0, [r10, #36]
	vldr s0, [r8, #40]
	vldr s1, [r9, #40]
	vadd.f32 s0, s0, s1
	vstr s0, [r10, #40]
	vldr s0, [r8, #44]
	vldr s1, [r9, #44]
	vadd.f32 s0, s0, s1
	vstr s0, [r10, #44]
	vldr s0, [r8, #48]
	vldr s1, [r9, #48]
	vadd.f32 s0, s0, s1
	vstr s0, [r10, #48]
	vldr s0, [r8, #52]
	vldr s1, [r9, #52]
	vadd.f32 s0, s0, s1
	vstr s0, [r10, #52]
	vldr s0, [r8, #56]
	vldr s1, [r9, #56]
	vadd.f32 s0, s0, s1
	vstr s0, [r10, #56]
	vldr s0, [r8, #60]
	add r8, r7, #16
	vldr s1, [r9, #60]
	cmp r8, #256
	vadd.f32 s0, s0, s1
	vstr s0, [r10, #60]
	bge label92
	mov r7, r8
	b label90
.p2align 4
label92:
	add r9, r5, r8, lsl #2
	add r7, r7, #28
	add r10, r6, r8, lsl #2
	vldr s0, [r9, #0]
	add r8, r3, r8, lsl #2
	vldr s1, [r10, #0]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #0]
	vldr s0, [r9, #4]
	vldr s1, [r10, #4]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #4]
	vldr s0, [r9, #8]
	vldr s1, [r10, #8]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #8]
	vldr s0, [r9, #12]
	vldr s1, [r10, #12]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #12]
	vldr s0, [r9, #16]
	vldr s1, [r10, #16]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #16]
	vldr s0, [r9, #20]
	vldr s1, [r10, #20]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #20]
	vldr s0, [r9, #24]
	vldr s1, [r10, #24]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #24]
	vldr s0, [r9, #28]
	vldr s1, [r10, #28]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #28]
	vldr s0, [r9, #32]
	vldr s1, [r10, #32]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #32]
	vldr s0, [r9, #36]
	vldr s1, [r10, #36]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #36]
	vldr s0, [r9, #40]
	vldr s1, [r10, #40]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #40]
	vldr s0, [r9, #44]
	vldr s1, [r10, #44]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #44]
	b label93
.p2align 4
label97:
	movw r7, #1080
	mla r5, r3, r7, r4
	add r6, r5, r2, lsl #2
	vldr s6, [r6, #0]
	movw r6, #61929
	movt r6, #48705
	vmov s1, r6
	movw r6, #35322
	movt r6, #15842
	vmov s2, r6
	movw r6, #12860
	vmul.f32 s3, s6, s1
	movt r6, #48923
	vmul.f32 s7, s7, s2
	vmul.f32 s6, s6, s2
	vadd.f32 s3, s3, s7
	vmul.f32 s7, s0, s4
	vadd.f32 s7, s3, s7
	vmov s3, r6
	mla r6, r3, r7, r0
	add r3, r3, #4
	cmp r3, #508
	add r8, r6, r2, lsl #2
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s4, s3
	vadd.f32 s5, s7, s5
	vmul.f32 s8, s0, s5
	vstr s5, [r8, #0]
	vmul.f32 s5, s5, s3
	add r8, r5, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	add r7, r7, r2, lsl #2
	vldr s7, [r8, #0]
	vmul.f32 s9, s7, s1
	vmul.f32 s7, s7, s2
	vadd.f32 s6, s9, s6
	vadd.f32 s6, s6, s8
	vadd.f32 s4, s6, s4
	vmul.f32 s8, s0, s4
	vstr s4, [r7, #0]
	add r7, r5, #2160
	add r7, r7, r2, lsl #2
	vldr s6, [r7, #0]
	add r7, r6, #2160
	add r7, r7, r2, lsl #2
	vmul.f32 s9, s6, s1
	vmul.f32 s2, s6, s2
	vadd.f32 s7, s9, s7
	vadd.f32 s7, s7, s8
	vadd.f32 s5, s7, s5
	vmul.f32 s8, s0, s5
	vstr s5, [r7, #0]
	movw r7, #3240
	add r5, r5, r7
	add r5, r5, r2, lsl #2
	vldr s7, [r5, #0]
	add r5, r6, r7
	add r5, r5, r2, lsl #2
	vmul.f32 s1, s7, s1
	vadd.f32 s1, s1, s2
	vmul.f32 s2, s4, s3
	vadd.f32 s1, s1, s8
	vadd.f32 s4, s1, s2
	vstr s4, [r5, #0]
	blt label97
.p2align 4
label102:
	movw r5, #1080
	mla r6, r3, r5, r4
	mla r5, r3, r5, r0
	add r3, r3, #1
	cmp r3, #512
	add r6, r6, r2, lsl #2
	add r5, r5, r2, lsl #2
	vldr s1, [r6, #0]
	movw r6, #61929
	movt r6, #48705
	vmov s2, r6
	movw r6, #35322
	movt r6, #15842
	vmov s3, r6
	movw r6, #12860
	vmul.f32 s2, s1, s2
	movt r6, #48923
	vmul.f32 s3, s7, s3
	vadd.f32 s2, s2, s3
	vmul.f32 s3, s0, s4
	vadd.f32 s2, s2, s3
	vmov s3, r6
	vmul.f32 s3, s5, s3
	vadd.f32 s2, s2, s3
	vstr s2, [r5, #0]
	blt label645
	add r2, r2, #1
	movw r3, #270
	cmp r2, r3
	blt label237
	mov r2, #0
	cmp r2, r3
	blt label243
	cmp r2, #512
	blt label89
	b label96
.p2align 4
label645:
	vmov.f32 s7, s1
	vmov.f32 s5, s4
	vmov.f32 s4, s2
	b label102
.p2align 4
label229:
	movw r3, #1080
	mov r7, #0
	mla r2, r6, r3, r1
	vmov s6, r7
	mla r3, r6, r3, r5
	movw r7, #269
	vmov.f32 s7, s6
	vmov.f32 s4, s6
	vmov.f32 s5, s6
	b label116
label96:
	mov r0, #158
	bl _sysy_stoptime
	mov r1, r4
	mov r0, #138240
	bl putfarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
.p2align 4
label116:
	movw r8, #51281
	add r9, r3, r7, lsl #2
	movt r8, #48700
	vmov s1, r8
	movw r8, #9998
	movt r8, #15851
	vmov s2, r8
	movw r8, #12860
	vmul.f32 s3, s5, s1
	movt r8, #48923
	vmul.f32 s7, s7, s2
	vmul.f32 s5, s5, s2
	vadd.f32 s3, s3, s7
	vmul.f32 s7, s0, s4
	vadd.f32 s7, s3, s7
	vmov s3, r8
	add r8, r2, r7, lsl #2
	sub r7, r7, #4
	cmp r7, #3
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s4, s3
	vadd.f32 s6, s7, s6
	vmul.f32 s8, s0, s6
	vstr s6, [r8, #0]
	vmul.f32 s6, s6, s3
	vldr s7, [r9, #0]
	vmul.f32 s9, s7, s1
	vmul.f32 s7, s7, s2
	vadd.f32 s5, s9, s5
	vadd.f32 s5, s5, s8
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s0, s5
	vstr s5, [r8, #-4]
	vldr s8, [r9, #-4]
	vmul.f32 s2, s8, s2
	vmul.f32 s9, s8, s1
	vadd.f32 s7, s9, s7
	vadd.f32 s4, s7, s4
	vadd.f32 s4, s4, s6
	vmul.f32 s6, s0, s4
	vstr s4, [r8, #-8]
	vldr s7, [r9, #-8]
	vmul.f32 s1, s7, s1
	vadd.f32 s1, s1, s2
	vmul.f32 s2, s5, s3
	vadd.f32 s1, s1, s6
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #-12]
	vldr s2, [r9, #-12]
	ble label122
	vmov.f32 s6, s4
	vmov.f32 s5, s2
	vmov.f32 s4, s1
	b label116
.p2align 4
label122:
	movw r8, #51281
	movt r8, #48700
	vmov s3, r8
	movw r8, #9998
	movt r8, #15851
	vmov s5, r8
	movw r8, #12860
	vmul.f32 s3, s2, s3
	movt r8, #48923
	vmul.f32 s5, s7, s5
	vadd.f32 s3, s3, s5
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	vmov s5, r8
	add r8, r2, r7, lsl #2
	vmul.f32 s4, s4, s5
	vadd.f32 s3, s3, s4
	vstr s3, [r8, #0]
	add r8, r3, r7, lsl #2
	sub r7, r7, #1
	vldr s5, [r8, #0]
	cmn r7, #1
	bgt label930
	add r6, r6, #1
	cmp r6, #512
	blt label229
	mov r2, #0
	cmp r2, #512
	blt label233
	movw r3, #270
	cmp r2, r3
	blt label237
	cmp r2, #512
	blt label89
	b label96
.p2align 4
label930:
	vmov.f32 s7, s2
	vmov.f32 s4, s1
	vmov.f32 s2, s5
	vmov.f32 s1, s3
	b label122
.p2align 4
label54:
	movw r3, #1080
	mov r7, #0
	mla r2, r6, r3, r0
	vmov s6, r7
	mla r3, r6, r3, r5
	vmov.f32 s7, s6
	vmov.f32 s4, s6
.p2align 4
label55:
	add r8, r3, r7, lsl #2
	movw r9, #61929
	movt r9, #48705
	vldr s5, [r8, #0]
	vmov s1, r9
	movw r9, #35322
	movt r9, #15842
	vmov s2, r9
	movw r9, #12860
	vmul.f32 s3, s5, s1
	movt r9, #48923
	vmul.f32 s7, s7, s2
	vmul.f32 s5, s5, s2
	vadd.f32 s3, s3, s7
	vmul.f32 s7, s0, s4
	vadd.f32 s7, s3, s7
	vmov s3, r9
	add r9, r2, r7, lsl #2
	add r7, r7, #4
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s4, s3
	vadd.f32 s6, s7, s6
	vmul.f32 s8, s0, s6
	vstr s6, [r9, #0]
	vmul.f32 s6, s6, s3
	vldr s7, [r8, #4]
	vmul.f32 s9, s7, s1
	vmul.f32 s7, s7, s2
	vadd.f32 s5, s9, s5
	vadd.f32 s5, s5, s8
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s0, s5
	vstr s5, [r9, #4]
	vldr s8, [r8, #8]
	vmul.f32 s2, s8, s2
	vmul.f32 s9, s8, s1
	vadd.f32 s7, s9, s7
	vadd.f32 s4, s7, s4
	vadd.f32 s4, s4, s6
	vmul.f32 s6, s0, s4
	vstr s4, [r9, #8]
	vldr s7, [r8, #12]
	movw r8, #266
	cmp r7, r8
	vmul.f32 s1, s7, s1
	vadd.f32 s1, s1, s2
	vmul.f32 s2, s5, s3
	vadd.f32 s1, s1, s6
	vadd.f32 s1, s1, s2
	vstr s1, [r9, #12]
	bge label60
	vmov.f32 s6, s4
	vmov.f32 s4, s1
	b label55
.p2align 4
label60:
	add r8, r3, r7, lsl #2
	vldr s2, [r8, #0]
	movw r8, #61929
	movt r8, #48705
	vmov s3, r8
	movw r8, #35322
	movt r8, #15842
	vmov s5, r8
	movw r8, #12860
	vmul.f32 s3, s2, s3
	movt r8, #48923
	vmul.f32 s5, s7, s5
	vadd.f32 s3, s3, s5
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	vmov s5, r8
	add r8, r2, r7, lsl #2
	add r7, r7, #1
	vmul.f32 s4, s4, s5
	vadd.f32 s3, s3, s4
	vstr s3, [r8, #0]
	movw r8, #270
	cmp r7, r8
	blt label223
	add r6, r6, #1
	cmp r6, #512
	blt label54
	mov r6, #0
	cmp r6, #512
	blt label229
	mov r2, #0
	cmp r2, #512
	blt label233
	movw r3, #270
	cmp r2, r3
	blt label237
	cmp r2, #512
	blt label89
	b label96
.p2align 4
label223:
	vmov.f32 s7, s2
	vmov.f32 s4, s1
	vmov.f32 s1, s3
	b label60
.p2align 4
label233:
	movw r6, #1080
	mov r7, #0
	mla r5, r2, r6, r0
	mla r3, r2, r6, r4
	mla r6, r2, r6, r1
.p2align 4
label109:
	add r8, r5, r7, lsl #2
	add r9, r6, r7, lsl #2
	add r10, r3, r7, lsl #2
	vldr s1, [r8, #0]
	vldr s2, [r9, #0]
	vadd.f32 s1, s1, s2
	vstr s1, [r10, #0]
	vldr s1, [r8, #4]
	vldr s2, [r9, #4]
	vadd.f32 s1, s1, s2
	vstr s1, [r10, #4]
	vldr s1, [r8, #8]
	vldr s2, [r9, #8]
	vadd.f32 s1, s1, s2
	vstr s1, [r10, #8]
	vldr s1, [r8, #12]
	vldr s2, [r9, #12]
	vadd.f32 s1, s1, s2
	vstr s1, [r10, #12]
	vldr s1, [r8, #16]
	vldr s2, [r9, #16]
	vadd.f32 s1, s1, s2
	vstr s1, [r10, #16]
	vldr s1, [r8, #20]
	vldr s2, [r9, #20]
	vadd.f32 s1, s1, s2
	vstr s1, [r10, #20]
	vldr s1, [r8, #24]
	vldr s2, [r9, #24]
	vadd.f32 s1, s1, s2
	vstr s1, [r10, #24]
	vldr s1, [r8, #28]
	vldr s2, [r9, #28]
	vadd.f32 s1, s1, s2
	vstr s1, [r10, #28]
	vldr s1, [r8, #32]
	vldr s2, [r9, #32]
	vadd.f32 s1, s1, s2
	vstr s1, [r10, #32]
	vldr s1, [r8, #36]
	vldr s2, [r9, #36]
	vadd.f32 s1, s1, s2
	vstr s1, [r10, #36]
	vldr s1, [r8, #40]
	vldr s2, [r9, #40]
	vadd.f32 s1, s1, s2
	vstr s1, [r10, #40]
	vldr s1, [r8, #44]
	vldr s2, [r9, #44]
	vadd.f32 s1, s1, s2
	vstr s1, [r10, #44]
	vldr s1, [r8, #48]
	vldr s2, [r9, #48]
	vadd.f32 s1, s1, s2
	vstr s1, [r10, #48]
	vldr s1, [r8, #52]
	vldr s2, [r9, #52]
	vadd.f32 s1, s1, s2
	vstr s1, [r10, #52]
	vldr s1, [r8, #56]
	vldr s2, [r9, #56]
	vadd.f32 s1, s1, s2
	vstr s1, [r10, #56]
	vldr s1, [r8, #60]
	add r8, r7, #16
	vldr s2, [r9, #60]
	cmp r8, #256
	vadd.f32 s1, s1, s2
	vstr s1, [r10, #60]
	bge label111
	mov r7, r8
	b label109
.p2align 4
label111:
	add r9, r5, r8, lsl #2
	add r7, r7, #28
	add r10, r6, r8, lsl #2
	vldr s1, [r9, #0]
	add r8, r3, r8, lsl #2
	vldr s2, [r10, #0]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #0]
	vldr s1, [r9, #4]
	vldr s2, [r10, #4]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #4]
	vldr s1, [r9, #8]
	vldr s2, [r10, #8]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #8]
	vldr s1, [r9, #12]
	vldr s2, [r10, #12]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #12]
	vldr s1, [r9, #16]
	vldr s2, [r10, #16]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #16]
	vldr s1, [r9, #20]
	vldr s2, [r10, #20]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #20]
	vldr s1, [r9, #24]
	vldr s2, [r10, #24]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #24]
	vldr s1, [r9, #28]
	vldr s2, [r10, #28]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #28]
	vldr s1, [r9, #32]
	vldr s2, [r10, #32]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #32]
	vldr s1, [r9, #36]
	vldr s2, [r10, #36]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #36]
	vldr s1, [r9, #40]
	vldr s2, [r10, #40]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #40]
	vldr s1, [r9, #44]
	vldr s2, [r10, #44]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #44]
.p2align 4
label112:
	add r8, r5, r7, lsl #2
	vldr s1, [r8, #0]
	add r8, r6, r7, lsl #2
	vldr s2, [r8, #0]
	add r8, r3, r7, lsl #2
	add r7, r7, #1
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #0]
	movw r8, #270
	cmp r7, r8
	blt label112
	add r2, r2, #1
	cmp r2, #512
	blt label233
	mov r2, #0
	movw r3, #270
	cmp r2, r3
	blt label237
	cmp r2, #512
	blt label89
	b label96
.p2align 4
label93:
	add r8, r5, r7, lsl #2
	vldr s0, [r8, #0]
	add r8, r6, r7, lsl #2
	vldr s1, [r8, #0]
	add r8, r3, r7, lsl #2
	add r7, r7, #1
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #0]
	movw r8, #270
	cmp r7, r8
	blt label93
	add r2, r2, #1
	cmp r2, #512
	blt label89
	b label96
