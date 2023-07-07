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
	mvn r1, #0
	sub r0, r1, r0
	bl newPow
	mov r0, #1065353216
	vadd.f32 s0, s0, s0
	vmov s1, r0
	vdiv.f32 s0, s1, s0
	b label2
label49:
	mov r0, #1065353216
	vmov s0, r0
label2:
	add sp, sp, #4
	pop { pc }
label5:
	cmp r0, #0
	bne label6
	b label49
label6:
	subs r1, r0, #1
	bge label10
	mov r0, #1
	bl newPow
	mov r0, #1065353216
	vmov s1, r0
	vdiv.f32 s0, s1, s0
	vadd.f32 s0, s0, s0
	b label2
label50:
	mov r0, #1065353216
	vmov s0, r0
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
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r0, #:lower16:imgIn
	sub sp, sp, #12
	movt r0, #:upper16:imgIn
	mov r4, r0
	bl getfarray
	mov r0, #156
	bl _sysy_starttime
	mov r0, #0
	bl newPow
	movw r1, #:lower16:my_y2
	movw r0, #:lower16:my_y1
	movw r5, #:lower16:imgOut
	movt r1, #:upper16:my_y2
	movt r0, #:upper16:my_y1
	movt r5, #:upper16:imgOut
	str r5, [sp, #0]
	mov r5, #0
	cmp r5, #512
	bge label147
label146:
	movw r3, #1080
	mov r11, #0
	mla r2, r5, r3, r0
	vmov s3, r11
	vmov s1, r11
	mla r3, r5, r3, r4
	vmov s2, r11
	add r6, r11, #4
	movw r7, #270
	cmp r6, r7
	bge label644
	b label134
label147:
	mov r5, #0
	cmp r5, #512
	bge label151
label150:
	movw r3, #1080
	mov r6, #0
	movw r11, #269
	mla r2, r5, r3, r1
	vmov s3, r6
	vmov s2, r6
	mla r3, r5, r3, r4
	vmov s4, r6
	vmov s1, r6
	sub r6, r11, #4
	cmn r6, #1
	ble label168
	b label72
label151:
	mov r3, #0
	cmp r3, #512
	bge label264
	movw r6, #1080
	ldr r5, [sp, #0]
	mov r9, #0
	mla r4, r3, r6, r0
	mla r2, r3, r6, r5
	mla r5, r3, r6, r1
	add r6, r9, #4
	movw r7, #270
	cmp r6, r7
	bge label587
	b label121
label72:
	movw r7, #51281
	movw r8, #9998
	add r10, r2, r11, lsl #2
	movw r9, #12860
	movt r7, #48700
	add r11, r3, r11, lsl #2
	movt r8, #15851
	movt r9, #48923
	vmov s5, r7
	vmov s7, r8
	vmov s6, r8
	vmul.f32 s5, s1, s5
	vmul.f32 s1, s1, s7
	vmul.f32 s4, s4, s6
	vmov s6, r7
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r9
	vmul.f32 s3, s3, s5
	vadd.f32 s3, s4, s3
	vmul.f32 s5, s0, s3
	vstr s3, [r10, #0]
	vldr s4, [r11, #0]
	vmul.f32 s6, s4, s6
	vmul.f32 s4, s4, s7
	vadd.f32 s1, s6, s1
	vmov s6, r7
	vadd.f32 s1, s1, s5
	vmov s5, r9
	vmul.f32 s2, s2, s5
	vadd.f32 s1, s1, s2
	vmul.f32 s5, s0, s1
	vstr s1, [r10, #-4]
	vldr s2, [r11, #-4]
	vmul.f32 s6, s2, s6
	vmul.f32 s2, s2, s7
	vadd.f32 s4, s6, s4
	vmov s6, r7
	vadd.f32 s4, s4, s5
	vmov s5, r9
	vmul.f32 s3, s3, s5
	vadd.f32 s3, s4, s3
	vmul.f32 s5, s0, s3
	vstr s3, [r10, #-8]
	vldr s4, [r11, #-8]
	vmul.f32 s6, s4, s6
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r9
	vmul.f32 s1, s1, s5
	vadd.f32 s2, s2, s1
	vstr s2, [r10, #-12]
	vldr s1, [r11, #-12]
	mov r11, r6
	sub r6, r6, #4
	cmn r6, #1
	ble label168
	b label72
label168:
	mov r6, r11
label65:
	movw r7, #51281
	movt r7, #48700
	vmov s5, r7
	movw r7, #9998
	movt r7, #15851
	vmov s6, r7
	movw r7, #12860
	vmul.f32 s5, s1, s5
	movt r7, #48923
	vmul.f32 s4, s4, s6
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r7
	add r7, r2, r6, lsl #2
	vmul.f32 s3, s3, s5
	vadd.f32 s5, s4, s3
	vstr s5, [r7, #0]
	add r7, r3, r6, lsl #2
	sub r6, r6, #1
	vldr s6, [r7, #0]
	cmn r6, #1
	ble label71
	vmov.f32 s4, s1
	vmov.f32 s3, s2
	vmov.f32 s1, s6
	vmov.f32 s2, s5
	b label65
label71:
	add r5, r5, #1
	cmp r5, #512
	bge label151
	b label150
label264:
	mov r2, #0
	movw r3, #270
	cmp r2, r3
	bge label268
	mov r8, #0
	vmov s3, r8
	vmov s1, r8
	vmov s4, r8
	add r3, r8, #4
	cmp r3, #512
	bge label465
	b label114
label268:
	mov r2, #0
	movw r3, #270
	cmp r2, r3
	bge label278
	mov r3, #0
	movw r9, #511
	vmov s3, r3
	vmov s2, r3
	vmov s5, r3
	vmov s1, r3
	sub r3, r9, #4
	cmn r3, #1
	ble label291
	b label92
label278:
	mov r3, #0
	cmp r3, #512
	bge label102
	movw r6, #1080
	ldr r5, [sp, #0]
	mov r9, #0
	mla r4, r3, r6, r0
	mla r2, r3, r6, r5
	mla r5, r3, r6, r1
	add r6, r9, #4
	movw r7, #270
	cmp r6, r7
	bge label418
	b label101
label291:
	mov r3, r9
label85:
	movw r4, #51281
	movt r4, #48700
	vmov s4, r4
	movw r4, #9998
	movt r4, #15851
	vmov s6, r4
	movw r4, #12860
	vmul.f32 s4, s1, s4
	movt r4, #48923
	vmul.f32 s5, s5, s6
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r4
	movw r4, #1080
	mla r5, r3, r4, r1
	vmul.f32 s3, s3, s5
	add r5, r5, r2, lsl #2
	vadd.f32 s4, s4, s3
	vstr s4, [r5, #0]
	ldr r5, [sp, #0]
	mla r4, r3, r4, r5
	sub r3, r3, #1
	cmn r3, #1
	add r4, r4, r2, lsl #2
	vldr s6, [r4, #0]
	ble label91
	vmov.f32 s5, s1
	vmov.f32 s3, s2
	vmov.f32 s1, s6
	vmov.f32 s2, s4
	b label85
label91:
	add r2, r2, #1
	movw r3, #270
	cmp r2, r3
	bge label278
	mov r3, #0
	movw r9, #511
	vmov s3, r3
	vmov s2, r3
	vmov s5, r3
	vmov s1, r3
	sub r3, r9, #4
	cmn r3, #1
	ble label291
	b label92
label101:
	add r7, r4, r9, lsl #2
	add r8, r5, r9, lsl #2
	vldr s0, [r7, #0]
	add r9, r2, r9, lsl #2
	vldr s1, [r8, #0]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #0]
	vldr s0, [r7, #4]
	vldr s1, [r8, #4]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #4]
	vldr s0, [r7, #8]
	vldr s1, [r8, #8]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #8]
	vldr s0, [r7, #12]
	vldr s1, [r8, #12]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #12]
	mov r9, r6
	add r6, r6, #4
	movw r7, #270
	cmp r6, r7
	bge label418
	b label101
label418:
	mov r6, r9
label98:
	add r7, r4, r6, lsl #2
	vldr s0, [r7, #0]
	add r7, r5, r6, lsl #2
	vldr s1, [r7, #0]
	add r7, r2, r6, lsl #2
	add r6, r6, #1
	vadd.f32 s0, s0, s1
	vstr s0, [r7, #0]
	movw r7, #270
	cmp r6, r7
	bge label100
	b label98
label100:
	add r3, r3, #1
	cmp r3, #512
	bge label102
	movw r6, #1080
	ldr r5, [sp, #0]
	mov r9, #0
	mla r4, r3, r6, r0
	mla r2, r3, r6, r5
	mla r5, r3, r6, r1
	add r6, r9, #4
	movw r7, #270
	cmp r6, r7
	bge label418
	b label101
label465:
	mov r3, r8
label108:
	movw r4, #1080
	ldr r5, [sp, #0]
	mla r5, r3, r4, r5
	mla r4, r3, r4, r0
	add r3, r3, #1
	cmp r3, #512
	add r5, r5, r2, lsl #2
	add r4, r4, r2, lsl #2
	vldr s2, [r5, #0]
	movw r5, #61929
	movt r5, #48705
	vmov s5, r5
	movw r5, #35322
	movt r5, #15842
	vmov s6, r5
	movw r5, #12860
	vmul.f32 s5, s2, s5
	movt r5, #48923
	vmul.f32 s4, s4, s6
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	vmov s5, r5
	vmul.f32 s3, s3, s5
	vadd.f32 s5, s4, s3
	vstr s5, [r4, #0]
	bge label113
	vmov.f32 s4, s2
	vmov.f32 s3, s1
	vmov.f32 s1, s5
	b label108
label113:
	add r2, r2, #1
	movw r3, #270
	cmp r2, r3
	bge label268
	mov r8, #0
	vmov s3, r8
	vmov s1, r8
	vmov s4, r8
	add r3, r8, #4
	cmp r3, #512
	bge label465
	b label114
label587:
	mov r6, r9
label118:
	add r7, r4, r6, lsl #2
	vldr s1, [r7, #0]
	add r7, r5, r6, lsl #2
	vldr s2, [r7, #0]
	add r7, r2, r6, lsl #2
	add r6, r6, #1
	vadd.f32 s1, s1, s2
	vstr s1, [r7, #0]
	movw r7, #270
	cmp r6, r7
	bge label120
	b label118
label120:
	add r3, r3, #1
	cmp r3, #512
	bge label264
	movw r6, #1080
	ldr r5, [sp, #0]
	mov r9, #0
	mla r4, r3, r6, r0
	mla r2, r3, r6, r5
	mla r5, r3, r6, r1
	add r6, r9, #4
	movw r7, #270
	cmp r6, r7
	bge label587
label121:
	add r7, r4, r9, lsl #2
	add r8, r5, r9, lsl #2
	vldr s1, [r7, #0]
	add r9, r2, r9, lsl #2
	vldr s2, [r8, #0]
	vadd.f32 s1, s1, s2
	vstr s1, [r9, #0]
	vldr s1, [r7, #4]
	vldr s2, [r8, #4]
	vadd.f32 s1, s1, s2
	vstr s1, [r9, #4]
	vldr s1, [r7, #8]
	vldr s2, [r8, #8]
	vadd.f32 s1, s1, s2
	vstr s1, [r9, #8]
	vldr s1, [r7, #12]
	vldr s2, [r8, #12]
	vadd.f32 s1, s1, s2
	vstr s1, [r9, #12]
	mov r9, r6
	add r6, r6, #4
	movw r7, #270
	cmp r6, r7
	bge label587
	b label121
label92:
	movw r4, #51281
	movw r6, #9998
	movw r7, #12860
	movw r10, #1080
	movt r4, #48700
	movt r6, #15851
	mla r8, r9, r10, r1
	movt r7, #48923
	vmov s4, r4
	vmov s7, r6
	vmov s6, r6
	add r5, r8, r2, lsl #2
	vmul.f32 s4, s1, s4
	vmul.f32 s1, s1, s7
	vmul.f32 s5, s5, s6
	vmov s6, r4
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r7
	vmul.f32 s3, s3, s5
	vadd.f32 s3, s4, s3
	vmul.f32 s5, s0, s3
	vstr s3, [r5, #0]
	ldr r5, [sp, #0]
	mla r5, r9, r10, r5
	add r9, r5, r2, lsl #2
	vldr s4, [r9, #0]
	movw r9, #64456
	movt r9, #65535
	add r10, r8, r9
	vmul.f32 s6, s4, s6
	add r9, r5, r9
	add r10, r10, r2, lsl #2
	vmul.f32 s4, s4, s7
	add r9, r9, r2, lsl #2
	vadd.f32 s1, s6, s1
	vmov s6, r4
	vadd.f32 s1, s1, s5
	vmov s5, r7
	vmul.f32 s2, s2, s5
	vadd.f32 s1, s1, s2
	vmul.f32 s5, s0, s1
	vstr s1, [r10, #0]
	vldr s2, [r9, #0]
	sub r9, r8, #2160
	add r9, r9, r2, lsl #2
	vmul.f32 s6, s2, s6
	vmul.f32 s2, s2, s7
	vadd.f32 s4, s6, s4
	vmov s6, r4
	movw r4, #62296
	movt r4, #65535
	vadd.f32 s4, s4, s5
	add r6, r8, r4
	vmov s5, r7
	add r4, r5, r4
	add r6, r6, r2, lsl #2
	add r4, r4, r2, lsl #2
	vmul.f32 s3, s3, s5
	vadd.f32 s3, s4, s3
	vmul.f32 s4, s0, s3
	vstr s3, [r9, #0]
	sub r9, r5, #2160
	add r9, r9, r2, lsl #2
	vldr s5, [r9, #0]
	mov r9, r3
	vmul.f32 s6, s5, s6
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s4
	vmov s4, r7
	vmul.f32 s1, s1, s4
	vadd.f32 s2, s2, s1
	vstr s2, [r6, #0]
	vldr s1, [r4, #0]
	sub r3, r3, #4
	cmn r3, #1
	ble label291
	b label92
label644:
	mov r6, r11
	vmov.f32 s4, s2
	b label128
label134:
	add r7, r3, r11, lsl #2
	movw r8, #61929
	movw r9, #35322
	movw r10, #12860
	add r11, r2, r11, lsl #2
	movt r8, #48705
	movt r9, #15842
	vldr s4, [r7, #0]
	movt r10, #48923
	vmov s5, r8
	vmov s7, r9
	vmov s6, r9
	vmul.f32 s5, s4, s5
	vmul.f32 s4, s4, s7
	vmul.f32 s2, s2, s6
	vmov s6, r8
	vadd.f32 s2, s5, s2
	vmul.f32 s5, s0, s1
	vadd.f32 s2, s2, s5
	vmov s5, r10
	vmul.f32 s3, s3, s5
	vadd.f32 s2, s2, s3
	vmul.f32 s5, s0, s2
	vstr s2, [r11, #0]
	vldr s3, [r7, #4]
	vmul.f32 s6, s3, s6
	vmul.f32 s3, s3, s7
	vadd.f32 s4, s6, s4
	vmov s6, r8
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s1, s1, s5
	vadd.f32 s1, s4, s1
	vmul.f32 s5, s0, s1
	vstr s1, [r11, #4]
	vldr s4, [r7, #8]
	vmul.f32 s6, s4, s6
	vmul.f32 s4, s4, s7
	vadd.f32 s3, s6, s3
	vmov s6, r8
	vadd.f32 s3, s3, s5
	vmov s5, r10
	vmul.f32 s2, s2, s5
	vadd.f32 s3, s3, s2
	vmul.f32 s5, s0, s3
	vstr s3, [r11, #8]
	vldr s2, [r7, #12]
	vmul.f32 s6, s2, s6
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s1, s1, s5
	vadd.f32 s1, s4, s1
	vstr s1, [r11, #12]
	mov r11, r6
	add r6, r6, #4
	movw r7, #270
	cmp r6, r7
	bge label644
	b label134
label128:
	add r7, r3, r6, lsl #2
	vldr s2, [r7, #0]
	movw r7, #61929
	movt r7, #48705
	vmov s5, r7
	movw r7, #35322
	movt r7, #15842
	vmov s6, r7
	movw r7, #12860
	vmul.f32 s5, s2, s5
	movt r7, #48923
	vmul.f32 s4, s4, s6
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	vmov s5, r7
	add r7, r2, r6, lsl #2
	add r6, r6, #1
	vmul.f32 s3, s3, s5
	vadd.f32 s5, s4, s3
	vstr s5, [r7, #0]
	movw r7, #270
	cmp r6, r7
	bge label133
	vmov.f32 s4, s2
	vmov.f32 s3, s1
	vmov.f32 s1, s5
	b label128
label114:
	movw r9, #1080
	ldr r5, [sp, #0]
	movw r6, #35322
	movw r7, #12860
	mla r5, r8, r9, r5
	movt r6, #15842
	movt r7, #48923
	mla r8, r8, r9, r0
	vmov s7, r6
	vmov s6, r6
	add r4, r5, r2, lsl #2
	add r10, r8, r2, lsl #2
	vldr s5, [r4, #0]
	vmul.f32 s4, s4, s6
	movw r4, #61929
	movt r4, #48705
	vmov s6, r4
	vmov s2, r4
	vmul.f32 s2, s5, s2
	vmul.f32 s5, s5, s7
	vadd.f32 s2, s2, s4
	vmul.f32 s4, s0, s1
	vadd.f32 s2, s2, s4
	vmov s4, r7
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	vmul.f32 s4, s0, s2
	vstr s2, [r10, #0]
	add r10, r5, r9
	add r9, r8, r9
	add r10, r10, r2, lsl #2
	add r9, r9, r2, lsl #2
	vldr s3, [r10, #0]
	vmul.f32 s6, s3, s6
	vmul.f32 s3, s3, s7
	vadd.f32 s5, s6, s5
	vmov s6, r4
	vadd.f32 s4, s5, s4
	vmov s5, r7
	vmul.f32 s1, s1, s5
	vadd.f32 s1, s4, s1
	vmul.f32 s5, s0, s1
	vstr s1, [r9, #0]
	add r9, r5, #2160
	add r9, r9, r2, lsl #2
	vldr s4, [r9, #0]
	add r9, r8, #2160
	add r9, r9, r2, lsl #2
	vmul.f32 s6, s4, s6
	vmul.f32 s4, s4, s7
	vadd.f32 s3, s6, s3
	vmov s6, r4
	vadd.f32 s3, s3, s5
	vmov s5, r7
	vmul.f32 s2, s2, s5
	vadd.f32 s3, s3, s2
	vmul.f32 s5, s0, s3
	vstr s3, [r9, #0]
	movw r9, #3240
	add r4, r8, r9
	add r5, r5, r9
	mov r8, r3
	add r4, r4, r2, lsl #2
	add r5, r5, r2, lsl #2
	vldr s2, [r5, #0]
	vmul.f32 s6, s2, s6
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r7
	vmul.f32 s1, s1, s5
	vadd.f32 s1, s4, s1
	vmov.f32 s4, s2
	vstr s1, [r4, #0]
	add r3, r3, #4
	cmp r3, #512
	bge label465
	b label114
label133:
	add r5, r5, #1
	cmp r5, #512
	bge label147
	b label146
label102:
	mov r0, #158
	bl _sysy_stoptime
	mov r0, #138240
	ldr r5, [sp, #0]
	mov r1, r5
	bl putfarray
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
