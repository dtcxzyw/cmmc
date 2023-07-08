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
	bge label5
	b label4
label49:
	mov r0, #1065353216
	vmov s0, r0
label2:
	add sp, sp, #4
	pop { pc }
label4:
	mvn r1, #0
	sub r0, r1, r0
	bl newPow
	mov r0, #1065353216
	vadd.f32 s0, s0, s0
	vmov s1, r0
	vdiv.f32 s0, s1, s0
	b label2
label5:
	cmp r0, #0
	bne label6
	b label49
label6:
	subs r1, r0, #1
	bge label10
	b label7
label50:
	mov r0, #1065353216
	vmov s0, r0
	vadd.f32 s0, s0, s0
	b label2
label7:
	mov r0, #1
	bl newPow
	mov r0, #1065353216
	vmov s1, r0
	vdiv.f32 s0, s1, s0
	vadd.f32 s0, s0, s0
	b label2
label10:
	cmp r1, #0
	bne label11
	b label50
label11:
	sub r0, r0, #2
	bl newPow
	vadd.f32 s0, s0, s0
	vadd.f32 s0, s0, s0
	b label2
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
	mov r6, #0
	movw r1, #:lower16:my_y2
	movw r0, #:lower16:my_y1
	movw r4, #:lower16:imgOut
	movt r1, #:upper16:my_y2
	movt r0, #:upper16:my_y1
	movt r4, #:upper16:imgOut
	cmp r6, #512
	bge label147
	b label146
label147:
	mov r6, #0
	cmp r6, #512
	bge label235
	movw r3, #1080
	mov r7, #0
	movw r8, #269
	mla r2, r6, r3, r1
	vmov s3, r7
	mla r3, r6, r3, r5
	vmov.f32 s2, s3
	vmov.f32 s6, s3
	vmov.f32 s4, s3
	sub r7, r8, #4
	cmn r7, #1
	ble label246
	b label85
label235:
	mov r5, #0
	cmp r5, #512
	bge label324
	movw r6, #1080
	mov r10, #0
	mla r3, r5, r6, r0
	mla r2, r5, r6, r4
	mla r6, r5, r6, r1
	add r7, r10, #4
	movw r8, #270
	cmp r7, r8
	bge label601
	b label134
label324:
	mov r2, #0
	movw r3, #270
	cmp r2, r3
	bge label328
	mov r6, #0
	vmov s5, r6
	vmov.f32 s1, s5
	vmov.f32 s4, s5
	add r3, r6, #4
	cmp r3, #512
	bge label497
	b label127
label328:
	mov r2, #0
	movw r3, #270
	cmp r2, r3
	bge label334
	mov r3, #0
	movw r6, #511
	vmov s6, r3
	vmov.f32 s2, s6
	vmov.f32 s5, s6
	vmov.f32 s4, s6
	sub r3, r6, #4
	cmn r3, #1
	ble label341
	b label98
label334:
	mov r5, #0
	cmp r5, #512
	bge label115
	movw r6, #1080
	mov r10, #0
	mla r3, r5, r6, r0
	mla r2, r5, r6, r4
	mla r6, r5, r6, r1
	add r7, r10, #4
	movw r8, #270
	cmp r7, r8
	bge label450
	b label114
label98:
	movw r5, #51281
	movw r7, #1080
	movt r5, #48700
	vmov s1, r5
	movw r5, #9998
	movt r5, #15851
	vmov s3, r5
	movw r5, #12860
	vmul.f32 s7, s4, s1
	movt r5, #48923
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s4, s3
	vadd.f32 s5, s7, s5
	vmul.f32 s7, s0, s2
	vadd.f32 s7, s5, s7
	vmov s5, r5
	mla r5, r6, r7, r1
	mla r6, r6, r7, r4
	add r8, r5, r2, lsl #2
	vmul.f32 s6, s6, s5
	vmul.f32 s2, s2, s5
	add r7, r6, r2, lsl #2
	vadd.f32 s6, s7, s6
	vmul.f32 s8, s0, s6
	vstr s6, [r8, #0]
	vmul.f32 s6, s6, s5
	vldr s7, [r7, #0]
	movw r7, #64456
	movt r7, #65535
	add r8, r5, r7
	vmul.f32 s9, s7, s1
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	vmul.f32 s7, s7, s3
	add r7, r7, r2, lsl #2
	vadd.f32 s4, s9, s4
	vadd.f32 s4, s4, s8
	vadd.f32 s2, s4, s2
	vmul.f32 s8, s0, s2
	vstr s2, [r8, #0]
	vmul.f32 s2, s2, s5
	vldr s4, [r7, #0]
	sub r7, r5, #2160
	add r7, r7, r2, lsl #2
	vmul.f32 s9, s4, s1
	vmul.f32 s3, s4, s3
	vadd.f32 s7, s9, s7
	vadd.f32 s7, s7, s8
	vadd.f32 s6, s7, s6
	vmul.f32 s8, s0, s6
	vstr s6, [r7, #0]
	sub r7, r6, #2160
	add r7, r7, r2, lsl #2
	vldr s7, [r7, #0]
	movw r7, #62296
	movt r7, #65535
	add r5, r5, r7
	vmov.f32 s5, s7
	vmul.f32 s1, s7, s1
	add r5, r5, r2, lsl #2
	vadd.f32 s1, s1, s3
	vadd.f32 s1, s1, s8
	vadd.f32 s2, s1, s2
	vstr s2, [r5, #0]
	add r5, r6, r7
	mov r6, r3
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	sub r3, r3, #4
	cmn r3, #1
	ble label341
	b label98
label127:
	movw r7, #1080
	mla r5, r6, r7, r4
	mla r6, r6, r7, r0
	add r8, r5, r2, lsl #2
	vldr s6, [r8, #0]
	movw r8, #61929
	movt r8, #48705
	vmov s2, r8
	movw r8, #35322
	movt r8, #15842
	vmov s3, r8
	movw r8, #12860
	vmul.f32 s7, s6, s2
	movt r8, #48923
	vmul.f32 s4, s4, s3
	vmul.f32 s6, s6, s3
	vadd.f32 s4, s7, s4
	vmul.f32 s7, s0, s1
	vadd.f32 s7, s4, s7
	vmov s4, r8
	add r8, r6, r2, lsl #2
	vmul.f32 s5, s5, s4
	vmul.f32 s1, s1, s4
	vadd.f32 s5, s7, s5
	vmul.f32 s8, s0, s5
	vstr s5, [r8, #0]
	vmul.f32 s5, s5, s4
	add r8, r5, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	add r7, r7, r2, lsl #2
	vldr s7, [r8, #0]
	vmul.f32 s9, s7, s2
	vmul.f32 s7, s7, s3
	vadd.f32 s6, s9, s6
	vadd.f32 s6, s6, s8
	vadd.f32 s1, s6, s1
	vmul.f32 s8, s0, s1
	vstr s1, [r7, #0]
	vmul.f32 s1, s1, s4
	add r7, r5, #2160
	add r7, r7, r2, lsl #2
	vldr s6, [r7, #0]
	add r7, r6, #2160
	add r7, r7, r2, lsl #2
	vmul.f32 s9, s6, s2
	vmul.f32 s3, s6, s3
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
	vmov.f32 s4, s7
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s2, s3
	vadd.f32 s2, s2, s8
	vadd.f32 s1, s2, s1
	vstr s1, [r5, #0]
	add r3, r3, #4
	cmp r3, #512
	bge label497
	b label127
label341:
	mov r3, r6
	vmov.f32 s1, s4
	vmov.f32 s3, s6
	vmov.f32 s4, s5
label99:
	movw r5, #51281
	movt r5, #48700
	vmov s5, r5
	movw r5, #9998
	movt r5, #15851
	vmov s6, r5
	movw r5, #12860
	vmul.f32 s5, s1, s5
	movt r5, #48923
	vmul.f32 s4, s4, s6
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r5
	movw r5, #1080
	mla r6, r3, r5, r1
	mla r5, r3, r5, r4
	sub r3, r3, #1
	vmul.f32 s3, s3, s5
	cmn r3, #1
	add r6, r6, r2, lsl #2
	add r5, r5, r2, lsl #2
	vadd.f32 s5, s4, s3
	vstr s5, [r6, #0]
	vldr s6, [r5, #0]
	ble label105
	vmov.f32 s4, s1
	vmov.f32 s3, s2
	vmov.f32 s1, s6
	vmov.f32 s2, s5
	b label99
label105:
	add r2, r2, #1
	movw r3, #270
	cmp r2, r3
	bge label334
	mov r3, #0
	movw r6, #511
	vmov s6, r3
	vmov.f32 s2, s6
	vmov.f32 s5, s6
	vmov.f32 s4, s6
	sub r3, r6, #4
	cmn r3, #1
	ble label341
	b label98
label450:
	mov r7, r10
label111:
	add r8, r3, r7, lsl #2
	vldr s0, [r8, #0]
	add r8, r6, r7, lsl #2
	vldr s1, [r8, #0]
	add r8, r2, r7, lsl #2
	add r7, r7, #1
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #0]
	movw r8, #270
	cmp r7, r8
	bge label113
	b label111
label146:
	movw r3, #1080
	mov r9, #0
	mla r2, r6, r3, r0
	vmov s3, r9
	mla r3, r6, r3, r5
	vmov.f32 s1, s3
	vmov.f32 s5, s3
	add r7, r9, #4
	movw r8, #270
	cmp r7, r8
	bge label158
label62:
	add r8, r3, r9, lsl #2
	movw r10, #61929
	add r9, r2, r9, lsl #2
	movt r10, #48705
	vldr s6, [r8, #0]
	vmov s2, r10
	movw r10, #35322
	movt r10, #15842
	vmov s4, r10
	movw r10, #12860
	vmul.f32 s7, s6, s2
	movt r10, #48923
	vmul.f32 s5, s5, s4
	vmul.f32 s6, s6, s4
	vadd.f32 s5, s7, s5
	vmul.f32 s7, s0, s1
	vadd.f32 s7, s5, s7
	vmov s5, r10
	vmul.f32 s1, s1, s5
	vmul.f32 s3, s3, s5
	vadd.f32 s3, s7, s3
	vmul.f32 s8, s0, s3
	vstr s3, [r9, #0]
	vmul.f32 s3, s3, s5
	vldr s7, [r8, #4]
	vmul.f32 s9, s7, s2
	vmul.f32 s7, s7, s4
	vadd.f32 s6, s9, s6
	vadd.f32 s6, s6, s8
	vadd.f32 s1, s6, s1
	vmul.f32 s8, s0, s1
	vstr s1, [r9, #4]
	vmul.f32 s1, s1, s5
	vldr s6, [r8, #8]
	vmul.f32 s4, s6, s4
	vmul.f32 s9, s6, s2
	vadd.f32 s7, s9, s7
	vadd.f32 s7, s7, s8
	vadd.f32 s3, s7, s3
	vmul.f32 s8, s0, s3
	vstr s3, [r9, #8]
	vldr s7, [r8, #12]
	vmov.f32 s5, s7
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s2, s4
	vadd.f32 s2, s2, s8
	vadd.f32 s1, s2, s1
	vstr s1, [r9, #12]
	mov r9, r7
	add r7, r7, #4
	movw r8, #270
	cmp r7, r8
	bge label158
	b label62
label63:
	add r8, r3, r7, lsl #2
	vldr s2, [r8, #0]
	movw r8, #61929
	movt r8, #48705
	vmov s5, r8
	movw r8, #35322
	movt r8, #15842
	vmov s6, r8
	movw r8, #12860
	vmul.f32 s5, s2, s5
	movt r8, #48923
	vmul.f32 s4, s4, s6
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	vmov s5, r8
	add r8, r2, r7, lsl #2
	add r7, r7, #1
	vmul.f32 s3, s3, s5
	vadd.f32 s5, s4, s3
	vstr s5, [r8, #0]
	movw r8, #270
	cmp r7, r8
	bge label68
	vmov.f32 s4, s2
	vmov.f32 s3, s1
	vmov.f32 s1, s5
	b label63
label68:
	add r6, r6, #1
	cmp r6, #512
	bge label147
	b label146
label601:
	mov r7, r10
label131:
	add r8, r3, r7, lsl #2
	vldr s1, [r8, #0]
	add r8, r6, r7, lsl #2
	vldr s2, [r8, #0]
	add r8, r2, r7, lsl #2
	add r7, r7, #1
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #0]
	movw r8, #270
	cmp r7, r8
	bge label133
	b label131
label134:
	add r8, r3, r10, lsl #2
	add r9, r6, r10, lsl #2
	vldr s1, [r8, #0]
	add r10, r2, r10, lsl #2
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
	bge label601
	b label134
label85:
	movw r9, #51281
	movt r9, #48700
	vmov s1, r9
	movw r9, #9998
	movt r9, #15851
	vmov s5, r9
	movw r9, #12860
	vmul.f32 s7, s4, s1
	movt r9, #48923
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s4, s5
	vadd.f32 s6, s7, s6
	vmul.f32 s7, s0, s2
	vadd.f32 s7, s6, s7
	vmov s6, r9
	add r9, r2, r8, lsl #2
	add r8, r3, r8, lsl #2
	vmul.f32 s3, s3, s6
	vmul.f32 s2, s2, s6
	vadd.f32 s3, s7, s3
	vmul.f32 s8, s0, s3
	vstr s3, [r9, #0]
	vmul.f32 s3, s3, s6
	vldr s7, [r8, #0]
	vmul.f32 s9, s7, s1
	vmul.f32 s7, s7, s5
	vadd.f32 s4, s9, s4
	vadd.f32 s4, s4, s8
	vadd.f32 s2, s4, s2
	vmul.f32 s8, s0, s2
	vstr s2, [r9, #-4]
	vmul.f32 s2, s2, s6
	vldr s4, [r8, #-4]
	vmul.f32 s9, s4, s1
	vmul.f32 s4, s4, s5
	vadd.f32 s7, s9, s7
	vadd.f32 s7, s7, s8
	vadd.f32 s3, s7, s3
	vmul.f32 s8, s0, s3
	vstr s3, [r9, #-8]
	vldr s7, [r8, #-8]
	vmov.f32 s6, s7
	vmul.f32 s1, s7, s1
	vadd.f32 s1, s1, s4
	vadd.f32 s1, s1, s8
	vadd.f32 s2, s1, s2
	vstr s2, [r9, #-12]
	vldr s4, [r8, #-12]
	mov r8, r7
	sub r7, r7, #4
	cmn r7, #1
	ble label246
	b label85
label114:
	add r8, r3, r10, lsl #2
	add r9, r6, r10, lsl #2
	vldr s0, [r8, #0]
	add r10, r2, r10, lsl #2
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
	bge label450
	b label114
label497:
	mov r3, r6
	vmov.f32 s3, s5
	b label121
label126:
	add r2, r2, #1
	movw r3, #270
	cmp r2, r3
	bge label328
	mov r6, #0
	vmov s5, r6
	vmov.f32 s1, s5
	vmov.f32 s4, s5
	add r3, r6, #4
	cmp r3, #512
	bge label497
	b label127
label121:
	movw r5, #1080
	mla r6, r3, r5, r4
	mla r5, r3, r5, r0
	add r3, r3, #1
	cmp r3, #512
	add r6, r6, r2, lsl #2
	add r5, r5, r2, lsl #2
	vldr s2, [r6, #0]
	movw r6, #61929
	movt r6, #48705
	vmov s5, r6
	movw r6, #35322
	movt r6, #15842
	vmov s6, r6
	movw r6, #12860
	vmul.f32 s5, s2, s5
	movt r6, #48923
	vmul.f32 s4, s4, s6
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	vmov s5, r6
	vmul.f32 s3, s3, s5
	vadd.f32 s5, s4, s3
	vstr s5, [r5, #0]
	bge label126
	vmov.f32 s4, s2
	vmov.f32 s3, s1
	vmov.f32 s1, s5
	b label121
label158:
	mov r7, r9
	vmov.f32 s4, s5
	b label63
label246:
	mov r7, r8
	vmov.f32 s1, s4
	vmov.f32 s4, s6
label78:
	movw r8, #51281
	movt r8, #48700
	vmov s5, r8
	movw r8, #9998
	movt r8, #15851
	vmov s6, r8
	movw r8, #12860
	vmul.f32 s5, s1, s5
	movt r8, #48923
	vmul.f32 s4, s4, s6
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r8
	add r8, r2, r7, lsl #2
	vmul.f32 s3, s3, s5
	vadd.f32 s5, s4, s3
	vstr s5, [r8, #0]
	add r8, r3, r7, lsl #2
	sub r7, r7, #1
	vldr s6, [r8, #0]
	cmn r7, #1
	ble label84
	vmov.f32 s4, s1
	vmov.f32 s3, s2
	vmov.f32 s1, s6
	vmov.f32 s2, s5
	b label78
label113:
	add r5, r5, #1
	cmp r5, #512
	bge label115
	movw r6, #1080
	mov r10, #0
	mla r3, r5, r6, r0
	mla r2, r5, r6, r4
	mla r6, r5, r6, r1
	add r7, r10, #4
	movw r8, #270
	cmp r7, r8
	bge label450
	b label114
label133:
	add r5, r5, #1
	cmp r5, #512
	bge label324
	movw r6, #1080
	mov r10, #0
	mla r3, r5, r6, r0
	mla r2, r5, r6, r4
	mla r6, r5, r6, r1
	add r7, r10, #4
	movw r8, #270
	cmp r7, r8
	bge label601
	b label134
label84:
	add r6, r6, #1
	cmp r6, #512
	bge label235
	movw r3, #1080
	mov r7, #0
	movw r8, #269
	mla r2, r6, r3, r1
	vmov s3, r7
	mla r3, r6, r3, r5
	vmov.f32 s2, s3
	vmov.f32 s6, s3
	vmov.f32 s4, s3
	sub r7, r8, #4
	cmn r7, #1
	ble label246
	b label85
label115:
	mov r0, #158
	bl _sysy_stoptime
	mov r1, r4
	mov r0, #138240
	bl putfarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
