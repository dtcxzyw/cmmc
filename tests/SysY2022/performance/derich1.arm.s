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
	cmp r0, #0
	sub sp, sp, #4
	bge label2
	mvn r1, #0
	sub r0, r1, r0
	bl newPow
	mov r0, #1065353216
	vadd.f32 s0, s0, s0
	vmov s1, r0
	vdiv.f32 s0, s1, s0
	b label9
label2:
	cmp r0, #0
	bne label3
	mov r0, #1065353216
	vmov s0, r0
	b label9
label3:
	subs r1, r0, #1
	bge label7
	b label4
label49:
	mov r0, #1065353216
	vmov s0, r0
	vadd.f32 s0, s0, s0
	b label9
label4:
	mov r0, #1
	bl newPow
	mov r0, #1065353216
	vmov s1, r0
	vdiv.f32 s0, s1, s0
	vadd.f32 s0, s0, s0
	b label9
label7:
	cmp r1, #0
	bne label8
	b label49
label9:
	add sp, sp, #4
	pop { pc }
label8:
	sub r0, r0, #2
	bl newPow
	vadd.f32 s0, s0, s0
	vadd.f32 s0, s0, s0
	b label9
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	movw r0, #:lower16:imgIn
	movt r0, #:upper16:imgIn
	mov r5, r0
	bl getfarray
	mov r0, #156
	bl _sysy_starttime
	mov r0, #0
	bl newPow
	mov r2, #0
	movw r0, #:lower16:my_y1
	movw r1, #:lower16:my_y2
	movw r4, #:lower16:imgOut
	movt r0, #:upper16:my_y1
	movt r1, #:upper16:my_y2
	movt r4, #:upper16:imgOut
	cmp r2, #512
	bge label145
	b label144
label145:
	mov r2, #0
	cmp r2, #512
	bge label233
	movw r6, #1080
	mov r7, #0
	movw r9, #269
	mla r3, r2, r6, r1
	vmov s6, r7
	mla r6, r2, r6, r5
	vmov.f32 s3, s6
	vmov.f32 s5, s6
	vmov.f32 s4, s6
	sub r7, r9, #4
	cmn r7, #1
	ble label125
	b label132
label233:
	mov r2, #0
	cmp r2, #512
	bge label237
	movw r6, #1080
	mov r10, #0
	mla r5, r2, r6, r0
	mla r3, r2, r6, r4
	mla r6, r2, r6, r1
	add r7, r10, #4
	movw r8, #270
	cmp r7, r8
	bge label74
	b label77
label237:
	mov r2, #0
	movw r3, #270
	cmp r2, r3
	bge label294
	mov r6, #0
	vmov s5, r6
	vmov.f32 s4, s5
	vmov.f32 s3, s5
	add r3, r6, #4
	cmp r3, #512
	bge label111
	b label117
label294:
	mov r2, #0
	movw r3, #270
	cmp r2, r3
	bge label300
	mov r3, #0
	movw r6, #511
	vmov s6, r3
	vmov.f32 s5, s6
	vmov.f32 s3, s6
	vmov.f32 s4, s6
	sub r3, r6, #4
	cmn r3, #1
	ble label89
	b label88
label300:
	mov r2, #0
	cmp r2, #512
	bge label98
	movw r6, #1080
	mov r10, #0
	mla r5, r2, r6, r0
	mla r3, r2, r6, r4
	mla r6, r2, r6, r1
	add r7, r10, #4
	movw r8, #270
	cmp r7, r8
	bge label102
	b label105
label98:
	mov r0, #158
	bl _sysy_stoptime
	mov r1, r4
	mov r0, #138240
	bl putfarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label105:
	add r8, r5, r10, lsl #2
	add r9, r6, r10, lsl #2
	vldr s0, [r8, #0]
	add r10, r3, r10, lsl #2
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
	mov r10, r7
	add r7, r7, #4
	movw r8, #270
	cmp r7, r8
	bge label102
	b label105
label117:
	movw r7, #1080
	mla r5, r6, r7, r4
	mla r6, r6, r7, r0
	add r8, r5, r2, lsl #2
	vldr s6, [r8, #0]
	movw r8, #61929
	movt r8, #48705
	vmov s1, r8
	movw r8, #35322
	movt r8, #15842
	vmov s2, r8
	movw r8, #12860
	vmul.f32 s7, s6, s1
	movt r8, #48923
	vmul.f32 s3, s3, s2
	vmul.f32 s6, s6, s2
	vadd.f32 s3, s7, s3
	vmul.f32 s7, s0, s4
	vadd.f32 s7, s3, s7
	vmov s3, r8
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
	mov r6, r3
	add r5, r5, r2, lsl #2
	vmul.f32 s1, s7, s1
	vadd.f32 s1, s1, s2
	vmul.f32 s2, s4, s3
	vmov.f32 s3, s7
	vadd.f32 s1, s1, s8
	vadd.f32 s4, s1, s2
	vstr s4, [r5, #0]
	add r3, r3, #4
	cmp r3, #512
	bge label111
	b label117
label88:
	movw r5, #51281
	movw r7, #1080
	movt r5, #48700
	vmov s1, r5
	movw r5, #9998
	movt r5, #15851
	vmov s2, r5
	movw r5, #12860
	vmul.f32 s7, s4, s1
	movt r5, #48923
	vmul.f32 s3, s3, s2
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s7, s3
	vmul.f32 s7, s0, s5
	vadd.f32 s7, s3, s7
	vmov s3, r5
	mla r5, r6, r7, r1
	mla r6, r6, r7, r4
	add r8, r5, r2, lsl #2
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s5, s3
	add r7, r6, r2, lsl #2
	vadd.f32 s6, s7, s6
	vmul.f32 s8, s0, s6
	vstr s6, [r8, #0]
	vmul.f32 s6, s6, s3
	vldr s7, [r7, #0]
	movw r7, #64456
	movt r7, #65535
	add r8, r5, r7
	vmul.f32 s9, s7, s1
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	vmul.f32 s7, s7, s2
	add r7, r7, r2, lsl #2
	vadd.f32 s4, s9, s4
	vadd.f32 s4, s4, s8
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s0, s4
	vstr s4, [r8, #0]
	vldr s8, [r7, #0]
	sub r7, r5, #2160
	add r7, r7, r2, lsl #2
	vmul.f32 s9, s8, s1
	vmul.f32 s2, s8, s2
	vadd.f32 s7, s9, s7
	vadd.f32 s5, s7, s5
	vadd.f32 s6, s5, s6
	vmul.f32 s7, s0, s6
	vstr s6, [r7, #0]
	sub r7, r6, #2160
	add r7, r7, r2, lsl #2
	vldr s5, [r7, #0]
	movw r7, #62296
	movt r7, #65535
	add r5, r5, r7
	vmul.f32 s1, s5, s1
	add r5, r5, r2, lsl #2
	vadd.f32 s1, s1, s2
	vmul.f32 s2, s4, s3
	vmov.f32 s3, s5
	vadd.f32 s1, s1, s7
	vadd.f32 s1, s1, s2
	vmov.f32 s5, s1
	vstr s1, [r5, #0]
	add r5, r6, r7
	mov r6, r3
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	sub r3, r3, #4
	cmn r3, #1
	ble label89
	b label88
label95:
	add r2, r2, #1
	movw r3, #270
	cmp r2, r3
	bge label300
	mov r3, #0
	movw r6, #511
	vmov s6, r3
	vmov.f32 s5, s6
	vmov.f32 s3, s6
	vmov.f32 s4, s6
	sub r3, r6, #4
	cmn r3, #1
	ble label89
	b label88
label77:
	add r8, r5, r10, lsl #2
	add r9, r6, r10, lsl #2
	vldr s1, [r8, #0]
	add r10, r3, r10, lsl #2
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
	mov r10, r7
	add r7, r7, #4
	movw r8, #270
	cmp r7, r8
	bge label74
	b label77
label232:
	movw r6, #1080
	mov r7, #0
	movw r9, #269
	mla r3, r2, r6, r1
	vmov s6, r7
	mla r6, r2, r6, r5
	vmov.f32 s3, s6
	vmov.f32 s5, s6
	vmov.f32 s4, s6
	sub r7, r9, #4
	cmn r7, #1
	ble label125
	b label132
label125:
	movw r7, #51281
	movt r7, #48700
	vmov s1, r7
	movw r7, #9998
	movt r7, #15851
	vmov s2, r7
	movw r7, #12860
	vmul.f32 s1, s4, s1
	movt r7, #48923
	vmul.f32 s2, s5, s2
	vadd.f32 s1, s1, s2
	vmul.f32 s2, s0, s3
	vadd.f32 s1, s1, s2
	vmov s2, r7
	add r7, r3, r9, lsl #2
	vmul.f32 s2, s6, s2
	vadd.f32 s1, s1, s2
	vstr s1, [r7, #0]
	add r7, r6, r9, lsl #2
	sub r9, r9, #1
	vldr s2, [r7, #0]
	cmn r9, #1
	ble label131
	vmov.f32 s5, s4
	vmov.f32 s6, s3
	vmov.f32 s4, s2
	vmov.f32 s3, s1
	b label125
label131:
	add r2, r2, #1
	cmp r2, #512
	bge label233
	b label232
label132:
	movw r8, #51281
	movt r8, #48700
	vmov s1, r8
	movw r8, #9998
	movt r8, #15851
	vmov s2, r8
	movw r8, #12860
	vmul.f32 s7, s4, s1
	movt r8, #48923
	vmul.f32 s5, s5, s2
	vmul.f32 s4, s4, s2
	vadd.f32 s5, s7, s5
	vmul.f32 s7, s0, s3
	vadd.f32 s7, s5, s7
	vmov s5, r8
	add r8, r3, r9, lsl #2
	add r9, r6, r9, lsl #2
	vmul.f32 s3, s3, s5
	vmul.f32 s6, s6, s5
	vadd.f32 s6, s7, s6
	vmul.f32 s8, s0, s6
	vstr s6, [r8, #0]
	vmul.f32 s6, s6, s5
	vldr s7, [r9, #0]
	vmul.f32 s9, s7, s1
	vmul.f32 s7, s7, s2
	vadd.f32 s4, s9, s4
	vadd.f32 s4, s4, s8
	vadd.f32 s3, s4, s3
	vmul.f32 s8, s0, s3
	vstr s3, [r8, #-4]
	vldr s4, [r9, #-4]
	vmul.f32 s2, s4, s2
	vmul.f32 s9, s4, s1
	vadd.f32 s7, s9, s7
	vadd.f32 s7, s7, s8
	vadd.f32 s6, s7, s6
	vmul.f32 s8, s0, s6
	vstr s6, [r8, #-8]
	vldr s7, [r9, #-8]
	vmul.f32 s1, s7, s1
	vadd.f32 s1, s1, s2
	vmul.f32 s2, s3, s5
	vmov.f32 s5, s7
	vadd.f32 s1, s1, s8
	vadd.f32 s3, s1, s2
	vstr s3, [r8, #-12]
	vldr s4, [r9, #-12]
	mov r9, r7
	sub r7, r7, #4
	cmn r7, #1
	ble label125
	b label132
label111:
	movw r3, #1080
	mla r5, r6, r3, r4
	mla r3, r6, r3, r0
	add r6, r6, #1
	cmp r6, #512
	add r5, r5, r2, lsl #2
	add r3, r3, r2, lsl #2
	vldr s1, [r5, #0]
	movw r5, #61929
	movt r5, #48705
	vmov s2, r5
	movw r5, #35322
	movt r5, #15842
	vmov s6, r5
	movw r5, #12860
	vmul.f32 s2, s1, s2
	movt r5, #48923
	vmul.f32 s3, s3, s6
	vadd.f32 s2, s2, s3
	vmul.f32 s3, s0, s4
	vadd.f32 s2, s2, s3
	vmov s3, r5
	vmul.f32 s3, s5, s3
	vadd.f32 s2, s2, s3
	vstr s2, [r3, #0]
	bge label116
	vmov.f32 s3, s1
	vmov.f32 s5, s4
	vmov.f32 s4, s2
	b label111
label116:
	add r2, r2, #1
	movw r3, #270
	cmp r2, r3
	bge label294
	mov r6, #0
	vmov s5, r6
	vmov.f32 s4, s5
	vmov.f32 s3, s5
	add r3, r6, #4
	cmp r3, #512
	bge label111
	b label117
label89:
	movw r3, #51281
	movt r3, #48700
	vmov s1, r3
	movw r3, #9998
	movt r3, #15851
	vmov s2, r3
	movw r3, #12860
	vmul.f32 s1, s4, s1
	movt r3, #48923
	vmul.f32 s2, s3, s2
	vadd.f32 s1, s1, s2
	vmul.f32 s2, s0, s5
	vadd.f32 s1, s1, s2
	vmov s2, r3
	movw r3, #1080
	mla r5, r6, r3, r1
	mla r3, r6, r3, r4
	sub r6, r6, #1
	vmul.f32 s2, s6, s2
	cmn r6, #1
	add r5, r5, r2, lsl #2
	add r3, r3, r2, lsl #2
	vadd.f32 s1, s1, s2
	vstr s1, [r5, #0]
	vldr s2, [r3, #0]
	ble label95
	vmov.f32 s3, s4
	vmov.f32 s6, s5
	vmov.f32 s4, s2
	vmov.f32 s5, s1
	b label89
label102:
	add r7, r5, r10, lsl #2
	vldr s0, [r7, #0]
	add r7, r6, r10, lsl #2
	vldr s1, [r7, #0]
	add r7, r3, r10, lsl #2
	add r10, r10, #1
	vadd.f32 s0, s0, s1
	vstr s0, [r7, #0]
	movw r7, #270
	cmp r10, r7
	bge label104
	b label102
label74:
	add r7, r5, r10, lsl #2
	vldr s1, [r7, #0]
	add r7, r6, r10, lsl #2
	vldr s2, [r7, #0]
	add r7, r3, r10, lsl #2
	add r10, r10, #1
	vadd.f32 s1, s1, s2
	vstr s1, [r7, #0]
	movw r7, #270
	cmp r10, r7
	bge label76
	b label74
label76:
	add r2, r2, #1
	cmp r2, #512
	bge label237
	movw r6, #1080
	mov r10, #0
	mla r5, r2, r6, r0
	mla r3, r2, r6, r4
	mla r6, r2, r6, r1
	add r7, r10, #4
	movw r8, #270
	cmp r7, r8
	bge label74
	b label77
label144:
	movw r6, #1080
	mov r9, #0
	mla r3, r2, r6, r0
	vmov s5, r9
	mla r6, r2, r6, r5
	vmov.f32 s2, s5
	vmov.f32 s4, s5
	add r7, r9, #4
	movw r8, #270
	cmp r7, r8
	bge label60
	b label66
label65:
	add r2, r2, #1
	cmp r2, #512
	bge label145
	b label144
label66:
	add r8, r6, r9, lsl #2
	movw r10, #61929
	add r9, r3, r9, lsl #2
	movt r10, #48705
	vldr s6, [r8, #0]
	vmov s1, r10
	movw r10, #35322
	movt r10, #15842
	vmov s3, r10
	movw r10, #12860
	vmul.f32 s7, s6, s1
	movt r10, #48923
	vmul.f32 s4, s4, s3
	vmul.f32 s6, s6, s3
	vadd.f32 s4, s7, s4
	vmul.f32 s7, s0, s2
	vadd.f32 s7, s4, s7
	vmov s4, r10
	vmul.f32 s2, s2, s4
	vmul.f32 s5, s5, s4
	vadd.f32 s5, s7, s5
	vmul.f32 s8, s0, s5
	vstr s5, [r9, #0]
	vmul.f32 s5, s5, s4
	vldr s7, [r8, #4]
	vmul.f32 s9, s7, s1
	vmul.f32 s7, s7, s3
	vadd.f32 s6, s9, s6
	vadd.f32 s6, s6, s8
	vadd.f32 s2, s6, s2
	vmul.f32 s8, s0, s2
	vstr s2, [r9, #4]
	vmul.f32 s2, s2, s4
	vldr s6, [r8, #8]
	vmul.f32 s3, s6, s3
	vmul.f32 s9, s6, s1
	vadd.f32 s7, s9, s7
	vadd.f32 s7, s7, s8
	vadd.f32 s5, s7, s5
	vmul.f32 s8, s0, s5
	vstr s5, [r9, #8]
	vldr s7, [r8, #12]
	vmov.f32 s4, s7
	vmul.f32 s1, s7, s1
	vadd.f32 s1, s1, s3
	vadd.f32 s1, s1, s8
	vadd.f32 s2, s1, s2
	vstr s2, [r9, #12]
	mov r9, r7
	add r7, r7, #4
	movw r8, #270
	cmp r7, r8
	bge label60
	b label66
label60:
	add r7, r6, r9, lsl #2
	vldr s1, [r7, #0]
	movw r7, #61929
	movt r7, #48705
	vmov s3, r7
	movw r7, #35322
	movt r7, #15842
	vmov s6, r7
	movw r7, #12860
	vmul.f32 s3, s1, s3
	movt r7, #48923
	vmul.f32 s4, s4, s6
	vadd.f32 s3, s3, s4
	vmul.f32 s4, s0, s2
	vadd.f32 s3, s3, s4
	vmov s4, r7
	add r7, r3, r9, lsl #2
	add r9, r9, #1
	vmul.f32 s4, s5, s4
	vadd.f32 s3, s3, s4
	vstr s3, [r7, #0]
	movw r7, #270
	cmp r9, r7
	bge label65
	vmov.f32 s4, s1
	vmov.f32 s5, s2
	vmov.f32 s2, s3
	b label60
label104:
	add r2, r2, #1
	cmp r2, #512
	bge label98
	movw r6, #1080
	mov r10, #0
	mla r5, r2, r6, r0
	mla r3, r2, r6, r4
	mla r6, r2, r6, r1
	add r7, r10, #4
	movw r8, #270
	cmp r7, r8
	bge label102
	b label105
