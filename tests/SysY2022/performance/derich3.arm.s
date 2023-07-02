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
	sub sp, sp, #4
	cmp r0, #0
	bge label5
	rsb r0, r0, #0
	bl newPow
	mov r0, #1065353216
	vmov s1, r0
	vdiv.f32 s0, s1, s0
	b label3
label28:
	mov r0, #1065353216
	vmov s0, r0
label3:
	add sp, sp, #4
	pop { pc }
label5:
	cmp r0, #0
	bne label21
	b label28
label21:
	sub r0, r0, #1
	bl newPow
	vadd.f32 s0, s0, s0
	b label3
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	movw r0, #:lower16:imgIn
	movt r0, #:upper16:imgIn
	mov r4, r0
	bl getfarray
	mov r0, #156
	bl _sysy_starttime
	mov r0, #0
	bl newPow
	movw r5, #:lower16:imgOut
	movt r5, #:upper16:imgOut
	str r5, [sp, #0]
	movw r0, #:lower16:my_y1
	movt r0, #:upper16:my_y1
	movw r1, #:lower16:my_y2
	movt r1, #:upper16:my_y2
	mov r5, #0
	cmp r5, #512
	bge label188
	b label187
label188:
	mov r5, #0
	cmp r5, #512
	bge label440
	movw r3, #1080
	mla r2, r5, r3, r4
	mla r3, r5, r3, r1
	mov r6, #0
	vmov s1, r6
	vmov s2, r6
	vmov s3, r6
	vmov s4, r6
	movw r11, #269
	sub r6, r11, #4
	cmn r6, #1
	ble label67
	b label88
label440:
	mov r6, #0
	cmp r6, #512
	bge label695
	movw r4, #1080
	mla r2, r6, r4, r1
	mla r3, r6, r4, r0
	ldr r5, [sp, #0]
	mla r4, r6, r4, r5
	mov r9, #0
	add r5, r9, #4
	movw r7, #270
	cmp r5, r7
	bge label95
	b label94
label88:
	movw r7, #51281
	movt r7, #48700
	vmov s5, r7
	vmul.f32 s5, s5, s2
	movw r8, #9998
	movt r8, #15851
	vmov s6, r8
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	movw r9, #12860
	movt r9, #48923
	vmov s5, r9
	vmul.f32 s3, s5, s3
	vadd.f32 s3, s4, s3
	add r10, r3, r11, lsl #2
	vstr s3, [r10, #0]
	vmul.f32 s5, s0, s3
	add r11, r2, r11, lsl #2
	vldr s4, [r11, #0]
	vmov s6, r7
	vmul.f32 s6, s6, s4
	vmov s7, r8
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r9
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	vstr s1, [r10, #-4]
	vmul.f32 s5, s0, s1
	vldr s2, [r11, #-4]
	vmov s6, r7
	vmul.f32 s6, s6, s2
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r9
	vmul.f32 s3, s5, s3
	vadd.f32 s3, s4, s3
	vstr s3, [r10, #-8]
	vmul.f32 s5, s0, s3
	vldr s4, [r11, #-8]
	vmov s6, r7
	vmul.f32 s6, s6, s4
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r9
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	vstr s1, [r10, #-12]
	vldr s2, [r11, #-12]
	mov r11, r6
	sub r6, r6, #4
	cmn r6, #1
	ble label67
	b label88
label187:
	movw r3, #1080
	mla r2, r5, r3, r4
	mla r3, r5, r3, r0
	mov r11, #0
	vmov s1, r11
	vmov s2, r11
	vmov s3, r11
	add r6, r11, #4
	movw r7, #270
	cmp r6, r7
	bge label39
	b label57
label39:
	add r6, r11, #4
	movw r7, #270
	cmp r6, r7
	bge label208
	b label56
label208:
	vmov.f32 s4, s2
	add r6, r11, #4
	movw r7, #270
	cmp r6, r7
	bge label213
	b label49
label213:
	mov r6, r11
label50:
	add r7, r2, r6, lsl #2
	vldr s2, [r7, #0]
	movw r7, #61929
	movt r7, #48705
	vmov s5, r7
	vmul.f32 s5, s5, s2
	movw r7, #35322
	movt r7, #15842
	vmov s6, r7
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	movw r7, #12860
	movt r7, #48923
	vmov s5, r7
	vmul.f32 s3, s5, s3
	vadd.f32 s5, s4, s3
	add r7, r3, r6, lsl #2
	vstr s5, [r7, #0]
	add r6, r6, #1
	movw r7, #270
	cmp r6, r7
	bge label55
	vmov.f32 s4, s2
	vmov.f32 s3, s1
	vmov.f32 s1, s5
	b label50
label55:
	add r5, r5, #1
	cmp r5, #512
	bge label188
	b label187
label67:
	sub r6, r11, #4
	cmn r6, #1
	ble label462
	b label73
label462:
	mov r10, r11
	sub r6, r11, #4
	cmn r6, #1
	ble label533
	b label80
label533:
	mov r6, r10
	b label81
label80:
	movw r7, #51281
	movt r7, #48700
	vmov s5, r7
	vmul.f32 s5, s5, s2
	movw r8, #9998
	movt r8, #15851
	vmov s6, r8
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	movw r9, #12860
	movt r9, #48923
	vmov s5, r9
	vmul.f32 s3, s5, s3
	vadd.f32 s3, s4, s3
	add r11, r3, r10, lsl #2
	vstr s3, [r11, #0]
	vmul.f32 s5, s0, s3
	add r10, r2, r10, lsl #2
	vldr s4, [r10, #0]
	vmov s6, r7
	vmul.f32 s6, s6, s4
	vmov s7, r8
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r9
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	vstr s1, [r11, #-4]
	vmul.f32 s5, s0, s1
	vldr s2, [r10, #-4]
	vmov s6, r7
	vmul.f32 s6, s6, s2
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r9
	vmul.f32 s3, s5, s3
	vadd.f32 s3, s4, s3
	vstr s3, [r11, #-8]
	vmul.f32 s5, s0, s3
	vldr s4, [r10, #-8]
	vmov s6, r7
	vmul.f32 s6, s6, s4
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r9
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	vstr s1, [r11, #-12]
	vldr s2, [r10, #-12]
	mov r10, r6
	sub r6, r6, #4
	cmn r6, #1
	ble label533
	b label80
label81:
	movw r7, #51281
	movt r7, #48700
	vmov s5, r7
	vmul.f32 s5, s5, s2
	movw r7, #9998
	movt r7, #15851
	vmov s6, r7
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	movw r7, #12860
	movt r7, #48923
	vmov s5, r7
	vmul.f32 s3, s5, s3
	vadd.f32 s5, s4, s3
	add r7, r3, r6, lsl #2
	vstr s5, [r7, #0]
	add r7, r2, r6, lsl #2
	vldr s6, [r7, #0]
	sub r6, r6, #1
	cmn r6, #1
	ble label87
	vmov.f32 s3, s1
	vmov.f32 s4, s2
	vmov.f32 s1, s5
	vmov.f32 s2, s6
	b label81
label87:
	add r5, r5, #1
	cmp r5, #512
	bge label440
	b label439
label695:
	mov r2, #0
	movw r3, #270
	cmp r2, r3
	bge label816
	mov r8, #0
	vmov s1, r8
	vmov s2, r8
	vmov s3, r8
	add r3, r8, #4
	cmp r3, #512
	bge label158
	b label157
label94:
	add r7, r3, r9, lsl #2
	vldr s1, [r7, #0]
	add r8, r2, r9, lsl #2
	vldr s2, [r8, #0]
	vadd.f32 s1, s1, s2
	add r9, r4, r9, lsl #2
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
	mov r9, r5
	add r5, r5, #4
	movw r7, #270
	cmp r5, r7
	bge label95
	b label94
label816:
	mov r2, #0
	movw r3, #270
	cmp r2, r3
	bge label826
	mov r3, #0
	vmov s1, r3
	vmov s2, r3
	vmov s3, r3
	vmov s4, r3
	movw r9, #511
	sub r3, r9, #4
	cmn r3, #1
	ble label130
	b label151
label826:
	mov r6, #0
	cmp r6, #512
	bge label123
	movw r4, #1080
	mla r2, r6, r4, r1
	mla r3, r6, r4, r0
	ldr r5, [sp, #0]
	mla r4, r6, r4, r5
	mov r9, #0
	add r5, r9, #4
	movw r7, #270
	cmp r5, r7
	bge label114
label113:
	add r7, r3, r9, lsl #2
	vldr s0, [r7, #0]
	add r8, r2, r9, lsl #2
	vldr s1, [r8, #0]
	vadd.f32 s0, s0, s1
	add r9, r4, r9, lsl #2
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
	mov r9, r5
	add r5, r5, #4
	movw r7, #270
	cmp r5, r7
	bge label114
	b label113
label123:
	mov r0, #158
	bl _sysy_stoptime
	ldr r5, [sp, #0]
	mov r0, #138240
	mov r1, r5
	bl putfarray
	mov r0, #0
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label151:
	movw r4, #51281
	movt r4, #48700
	vmov s5, r4
	vmul.f32 s5, s5, s2
	movw r6, #9998
	movt r6, #15851
	vmov s6, r6
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	movw r7, #12860
	movt r7, #48923
	vmov s5, r7
	vmul.f32 s3, s5, s3
	vadd.f32 s3, s4, s3
	movw r10, #1080
	mla r8, r9, r10, r1
	add r5, r8, r2, lsl #2
	vstr s3, [r5, #0]
	vmul.f32 s5, s0, s3
	ldr r5, [sp, #0]
	mla r5, r9, r10, r5
	add r9, r5, r2, lsl #2
	vldr s4, [r9, #0]
	vmov s6, r4
	vmul.f32 s6, s6, s4
	vmov s7, r6
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r7
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	movw r9, #64456
	movt r9, #65535
	add r10, r8, r9
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s5, s0, s1
	add r9, r5, r9
	add r9, r9, r2, lsl #2
	vldr s2, [r9, #0]
	vmov s6, r4
	vmul.f32 s6, s6, s2
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r7
	vmul.f32 s3, s5, s3
	vadd.f32 s3, s4, s3
	sub r9, r8, #2160
	add r9, r9, r2, lsl #2
	vstr s3, [r9, #0]
	vmul.f32 s5, s0, s3
	sub r9, r5, #2160
	add r9, r9, r2, lsl #2
	vldr s4, [r9, #0]
	vmov s6, r4
	vmul.f32 s6, s6, s4
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r7
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	movw r4, #62296
	movt r4, #65535
	add r6, r8, r4
	add r6, r6, r2, lsl #2
	vstr s1, [r6, #0]
	add r4, r5, r4
	add r4, r4, r2, lsl #2
	vldr s2, [r4, #0]
	mov r9, r3
	sub r3, r3, #4
	cmn r3, #1
	ble label130
	b label151
label157:
	movw r9, #1080
	ldr r5, [sp, #0]
	mla r5, r8, r9, r5
	add r4, r5, r2, lsl #2
	vldr s4, [r4, #0]
	movw r4, #61929
	movt r4, #48705
	vmov s5, r4
	vmul.f32 s5, s5, s4
	movw r6, #35322
	movt r6, #15842
	vmov s6, r6
	vmul.f32 s2, s6, s2
	vadd.f32 s2, s5, s2
	vmul.f32 s5, s0, s1
	vadd.f32 s2, s2, s5
	movw r7, #12860
	movt r7, #48923
	vmov s5, r7
	vmul.f32 s3, s5, s3
	vadd.f32 s2, s2, s3
	mla r8, r8, r9, r0
	add r10, r8, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s5, s0, s2
	add r10, r5, r9
	add r10, r10, r2, lsl #2
	vldr s3, [r10, #0]
	vmov s6, r4
	vmul.f32 s6, s6, s3
	vmov s7, r6
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r7
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	add r9, r8, r9
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s5, s0, s1
	add r9, r5, #2160
	add r9, r9, r2, lsl #2
	vldr s4, [r9, #0]
	vmov s6, r4
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r7
	vmul.f32 s2, s5, s2
	vadd.f32 s3, s3, s2
	add r9, r8, #2160
	add r9, r9, r2, lsl #2
	vstr s3, [r9, #0]
	vmul.f32 s5, s0, s3
	movw r9, #3240
	add r5, r5, r9
	add r5, r5, r2, lsl #2
	vldr s2, [r5, #0]
	vmov s6, r4
	vmul.f32 s6, s6, s2
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r7
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	add r4, r8, r9
	add r4, r4, r2, lsl #2
	vstr s1, [r4, #0]
	mov r8, r3
	add r3, r3, #4
	cmp r3, #512
	bge label158
	b label157
label114:
	add r5, r9, #4
	movw r7, #270
	cmp r5, r7
	bge label881
	b label116
label881:
	mov r7, r9
	add r5, r9, #4
	movw r8, #270
	cmp r5, r8
	bge label913
	b label122
label913:
	mov r5, r7
label119:
	add r7, r3, r5, lsl #2
	vldr s0, [r7, #0]
	add r7, r2, r5, lsl #2
	vldr s1, [r7, #0]
	vadd.f32 s0, s0, s1
	add r7, r4, r5, lsl #2
	vstr s0, [r7, #0]
	add r5, r5, #1
	movw r7, #270
	cmp r5, r7
	bge label121
	b label119
label122:
	add r8, r3, r7, lsl #2
	vldr s0, [r8, #0]
	add r9, r2, r7, lsl #2
	vldr s1, [r9, #0]
	vadd.f32 s0, s0, s1
	add r7, r4, r7, lsl #2
	vstr s0, [r7, #0]
	vldr s0, [r8, #4]
	vldr s1, [r9, #4]
	vadd.f32 s0, s0, s1
	vstr s0, [r7, #4]
	vldr s0, [r8, #8]
	vldr s1, [r9, #8]
	vadd.f32 s0, s0, s1
	vstr s0, [r7, #8]
	vldr s0, [r8, #12]
	vldr s1, [r9, #12]
	vadd.f32 s0, s0, s1
	vstr s0, [r7, #12]
	mov r7, r5
	add r5, r5, #4
	movw r8, #270
	cmp r5, r8
	bge label913
	b label122
label130:
	sub r3, r9, #4
	cmn r3, #1
	ble label965
	b label136
label965:
	vmov.f32 s5, s4
	sub r3, r9, #4
	cmn r3, #1
	ble label1052
	b label150
label136:
	movw r4, #51281
	movt r4, #48700
	vmov s5, r4
	vmul.f32 s5, s5, s2
	movw r6, #9998
	movt r6, #15851
	vmov s6, r6
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	movw r7, #12860
	movt r7, #48923
	vmov s5, r7
	vmul.f32 s3, s5, s3
	vadd.f32 s3, s4, s3
	movw r10, #1080
	mla r8, r9, r10, r1
	add r5, r8, r2, lsl #2
	vstr s3, [r5, #0]
	vmul.f32 s5, s0, s3
	ldr r5, [sp, #0]
	mla r5, r9, r10, r5
	add r9, r5, r2, lsl #2
	vldr s4, [r9, #0]
	vmov s6, r4
	vmul.f32 s6, s6, s4
	vmov s7, r6
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r7
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	movw r9, #64456
	movt r9, #65535
	add r10, r8, r9
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s5, s0, s1
	add r9, r5, r9
	add r9, r9, r2, lsl #2
	vldr s2, [r9, #0]
	vmov s6, r4
	vmul.f32 s6, s6, s2
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r7
	vmul.f32 s3, s5, s3
	vadd.f32 s3, s4, s3
	sub r9, r8, #2160
	add r9, r9, r2, lsl #2
	vstr s3, [r9, #0]
	vmul.f32 s5, s0, s3
	sub r9, r5, #2160
	add r9, r9, r2, lsl #2
	vldr s4, [r9, #0]
	vmov s6, r4
	vmul.f32 s6, s6, s4
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r7
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	movw r4, #62296
	movt r4, #65535
	add r6, r8, r4
	add r6, r6, r2, lsl #2
	vstr s1, [r6, #0]
	add r4, r5, r4
	add r4, r4, r2, lsl #2
	vldr s2, [r4, #0]
	mov r9, r3
	sub r3, r3, #4
	cmn r3, #1
	ble label965
	b label136
label116:
	add r7, r3, r9, lsl #2
	vldr s0, [r7, #0]
	add r8, r2, r9, lsl #2
	vldr s1, [r8, #0]
	vadd.f32 s0, s0, s1
	add r9, r4, r9, lsl #2
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
	mov r9, r5
	add r5, r5, #4
	movw r7, #270
	cmp r5, r7
	bge label881
	b label116
label95:
	add r5, r9, #4
	movw r7, #270
	cmp r5, r7
	bge label738
	b label103
label738:
	mov r7, r9
	add r5, r9, #4
	movw r8, #270
	cmp r5, r8
	bge label743
	b label99
label743:
	mov r5, r7
label100:
	add r7, r3, r5, lsl #2
	vldr s1, [r7, #0]
	add r7, r2, r5, lsl #2
	vldr s2, [r7, #0]
	vadd.f32 s1, s1, s2
	add r7, r4, r5, lsl #2
	vstr s1, [r7, #0]
	add r5, r5, #1
	movw r7, #270
	cmp r5, r7
	bge label102
	b label100
label102:
	add r6, r6, #1
	cmp r6, #512
	bge label695
	movw r4, #1080
	mla r2, r6, r4, r1
	mla r3, r6, r4, r0
	ldr r5, [sp, #0]
	mla r4, r6, r4, r5
	mov r9, #0
	add r5, r9, #4
	movw r7, #270
	cmp r5, r7
	bge label95
	b label94
label103:
	add r7, r3, r9, lsl #2
	vldr s1, [r7, #0]
	add r8, r2, r9, lsl #2
	vldr s2, [r8, #0]
	vadd.f32 s1, s1, s2
	add r9, r4, r9, lsl #2
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
	mov r9, r5
	add r5, r5, #4
	movw r7, #270
	cmp r5, r7
	bge label738
	b label103
label99:
	add r8, r3, r7, lsl #2
	vldr s1, [r8, #0]
	add r9, r2, r7, lsl #2
	vldr s2, [r9, #0]
	vadd.f32 s1, s1, s2
	add r7, r4, r7, lsl #2
	vstr s1, [r7, #0]
	vldr s1, [r8, #4]
	vldr s2, [r9, #4]
	vadd.f32 s1, s1, s2
	vstr s1, [r7, #4]
	vldr s1, [r8, #8]
	vldr s2, [r9, #8]
	vadd.f32 s1, s1, s2
	vstr s1, [r7, #8]
	vldr s1, [r8, #12]
	vldr s2, [r9, #12]
	vadd.f32 s1, s1, s2
	vstr s1, [r7, #12]
	mov r7, r5
	add r5, r5, #4
	movw r8, #270
	cmp r5, r8
	bge label743
	b label99
label158:
	add r3, r8, #4
	cmp r3, #512
	bge label1338
	b label175
label1338:
	vmov.f32 s4, s2
	add r3, r8, #4
	cmp r3, #512
	bge label1343
	b label174
label1343:
	mov r3, r8
	b label168
label174:
	movw r9, #1080
	ldr r5, [sp, #0]
	mla r5, r8, r9, r5
	add r4, r5, r2, lsl #2
	vldr s5, [r4, #0]
	movw r4, #61929
	movt r4, #48705
	vmov s2, r4
	vmul.f32 s2, s2, s5
	movw r6, #35322
	movt r6, #15842
	vmov s6, r6
	vmul.f32 s4, s6, s4
	vadd.f32 s2, s2, s4
	vmul.f32 s4, s0, s1
	vadd.f32 s2, s2, s4
	movw r7, #12860
	movt r7, #48923
	vmov s4, r7
	vmul.f32 s3, s4, s3
	vadd.f32 s2, s2, s3
	mla r8, r8, r9, r0
	add r10, r8, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s4, s0, s2
	add r10, r5, r9
	add r10, r10, r2, lsl #2
	vldr s3, [r10, #0]
	vmov s6, r4
	vmul.f32 s6, s6, s3
	vmov s7, r6
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s4, s5, s4
	vmov s5, r7
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	add r9, r8, r9
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s5, s0, s1
	add r9, r5, #2160
	add r9, r9, r2, lsl #2
	vldr s4, [r9, #0]
	vmov s6, r4
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r7
	vmul.f32 s2, s5, s2
	vadd.f32 s3, s3, s2
	add r9, r8, #2160
	add r9, r9, r2, lsl #2
	vstr s3, [r9, #0]
	vmul.f32 s5, s0, s3
	movw r9, #3240
	add r5, r5, r9
	add r5, r5, r2, lsl #2
	vldr s2, [r5, #0]
	vmov s6, r4
	vmul.f32 s6, s6, s2
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r7
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	add r4, r8, r9
	add r4, r4, r2, lsl #2
	vstr s1, [r4, #0]
	mov r8, r3
	vmov.f32 s4, s2
	add r3, r3, #4
	cmp r3, #512
	bge label1343
	b label174
label175:
	movw r9, #1080
	ldr r5, [sp, #0]
	mla r5, r8, r9, r5
	add r4, r5, r2, lsl #2
	vldr s4, [r4, #0]
	movw r4, #61929
	movt r4, #48705
	vmov s5, r4
	vmul.f32 s5, s5, s4
	movw r6, #35322
	movt r6, #15842
	vmov s6, r6
	vmul.f32 s2, s6, s2
	vadd.f32 s2, s5, s2
	vmul.f32 s5, s0, s1
	vadd.f32 s2, s2, s5
	movw r7, #12860
	movt r7, #48923
	vmov s5, r7
	vmul.f32 s3, s5, s3
	vadd.f32 s2, s2, s3
	mla r8, r8, r9, r0
	add r10, r8, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s5, s0, s2
	add r10, r5, r9
	add r10, r10, r2, lsl #2
	vldr s3, [r10, #0]
	vmov s6, r4
	vmul.f32 s6, s6, s3
	vmov s7, r6
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r7
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	add r9, r8, r9
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s5, s0, s1
	add r9, r5, #2160
	add r9, r9, r2, lsl #2
	vldr s4, [r9, #0]
	vmov s6, r4
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r7
	vmul.f32 s2, s5, s2
	vadd.f32 s3, s3, s2
	add r9, r8, #2160
	add r9, r9, r2, lsl #2
	vstr s3, [r9, #0]
	vmul.f32 s5, s0, s3
	movw r9, #3240
	add r5, r5, r9
	add r5, r5, r2, lsl #2
	vldr s2, [r5, #0]
	vmov s6, r4
	vmul.f32 s6, s6, s2
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r7
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	add r4, r8, r9
	add r4, r4, r2, lsl #2
	vstr s1, [r4, #0]
	mov r8, r3
	add r3, r3, #4
	cmp r3, #512
	bge label1338
	b label175
label168:
	movw r4, #1080
	ldr r5, [sp, #0]
	mla r5, r3, r4, r5
	add r5, r5, r2, lsl #2
	vldr s2, [r5, #0]
	movw r5, #61929
	movt r5, #48705
	vmov s5, r5
	vmul.f32 s5, s5, s2
	movw r5, #35322
	movt r5, #15842
	vmov s6, r5
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	movw r5, #12860
	movt r5, #48923
	vmov s5, r5
	vmul.f32 s3, s5, s3
	vadd.f32 s5, s4, s3
	mla r4, r3, r4, r0
	add r4, r4, r2, lsl #2
	vstr s5, [r4, #0]
	add r3, r3, #1
	cmp r3, #512
	bge label173
	vmov.f32 s4, s2
	vmov.f32 s3, s1
	vmov.f32 s1, s5
	b label168
label150:
	movw r4, #51281
	movt r4, #48700
	vmov s4, r4
	vmul.f32 s4, s4, s2
	movw r6, #9998
	movt r6, #15851
	vmov s6, r6
	vmul.f32 s5, s6, s5
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	movw r7, #12860
	movt r7, #48923
	vmov s5, r7
	vmul.f32 s3, s5, s3
	vadd.f32 s3, s4, s3
	movw r10, #1080
	mla r8, r9, r10, r1
	add r5, r8, r2, lsl #2
	vstr s3, [r5, #0]
	vmul.f32 s5, s0, s3
	ldr r5, [sp, #0]
	mla r5, r9, r10, r5
	add r9, r5, r2, lsl #2
	vldr s4, [r9, #0]
	vmov s6, r4
	vmul.f32 s6, s6, s4
	vmov s7, r6
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r7
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	movw r9, #64456
	movt r9, #65535
	add r10, r8, r9
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s5, s0, s1
	add r9, r5, r9
	add r9, r9, r2, lsl #2
	vldr s2, [r9, #0]
	vmov s6, r4
	vmul.f32 s6, s6, s2
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r7
	vmul.f32 s3, s5, s3
	vadd.f32 s3, s4, s3
	sub r9, r8, #2160
	add r9, r9, r2, lsl #2
	vstr s3, [r9, #0]
	vmul.f32 s4, s0, s3
	sub r9, r5, #2160
	add r9, r9, r2, lsl #2
	vldr s5, [r9, #0]
	vmov s6, r4
	vmul.f32 s6, s6, s5
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s4
	vmov s4, r7
	vmul.f32 s1, s4, s1
	vadd.f32 s1, s2, s1
	movw r4, #62296
	movt r4, #65535
	add r6, r8, r4
	add r6, r6, r2, lsl #2
	vstr s1, [r6, #0]
	add r4, r5, r4
	add r4, r4, r2, lsl #2
	vldr s2, [r4, #0]
	mov r9, r3
	sub r3, r3, #4
	cmn r3, #1
	ble label1052
	b label150
label173:
	add r2, r2, #1
	movw r3, #270
	cmp r2, r3
	bge label816
	mov r8, #0
	vmov s1, r8
	vmov s2, r8
	vmov s3, r8
	add r3, r8, #4
	cmp r3, #512
	bge label158
	b label157
label1052:
	mov r3, r9
label143:
	movw r4, #51281
	movt r4, #48700
	vmov s4, r4
	vmul.f32 s4, s4, s2
	movw r4, #9998
	movt r4, #15851
	vmov s6, r4
	vmul.f32 s5, s6, s5
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	movw r4, #12860
	movt r4, #48923
	vmov s5, r4
	vmul.f32 s3, s5, s3
	vadd.f32 s4, s4, s3
	movw r4, #1080
	mla r5, r3, r4, r1
	add r5, r5, r2, lsl #2
	vstr s4, [r5, #0]
	ldr r5, [sp, #0]
	mla r4, r3, r4, r5
	add r4, r4, r2, lsl #2
	vldr s6, [r4, #0]
	sub r3, r3, #1
	cmn r3, #1
	ble label149
	vmov.f32 s3, s1
	vmov.f32 s5, s2
	vmov.f32 s1, s4
	vmov.f32 s2, s6
	b label143
label149:
	add r2, r2, #1
	movw r3, #270
	cmp r2, r3
	bge label826
	mov r3, #0
	vmov s1, r3
	vmov s2, r3
	vmov s3, r3
	vmov s4, r3
	movw r9, #511
	sub r3, r9, #4
	cmn r3, #1
	ble label130
	b label151
label57:
	add r7, r2, r11, lsl #2
	vldr s4, [r7, #0]
	movw r8, #61929
	movt r8, #48705
	vmov s5, r8
	vmul.f32 s5, s5, s4
	movw r9, #35322
	movt r9, #15842
	vmov s6, r9
	vmul.f32 s2, s6, s2
	vadd.f32 s2, s5, s2
	vmul.f32 s5, s0, s1
	vadd.f32 s2, s2, s5
	movw r10, #12860
	movt r10, #48923
	vmov s5, r10
	vmul.f32 s3, s5, s3
	vadd.f32 s2, s2, s3
	add r11, r3, r11, lsl #2
	vstr s2, [r11, #0]
	vmul.f32 s5, s0, s2
	vldr s3, [r7, #4]
	vmov s6, r8
	vmul.f32 s6, s6, s3
	vmov s7, r9
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r11, #4]
	vmul.f32 s5, s0, s1
	vldr s4, [r7, #8]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s3, s3, s2
	vstr s3, [r11, #8]
	vmul.f32 s5, s0, s3
	vldr s2, [r7, #12]
	vmov s6, r8
	vmul.f32 s6, s6, s2
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r11, #12]
	mov r11, r6
	add r6, r6, #4
	movw r7, #270
	cmp r6, r7
	bge label39
	b label57
label56:
	add r7, r2, r11, lsl #2
	vldr s4, [r7, #0]
	movw r8, #61929
	movt r8, #48705
	vmov s5, r8
	vmul.f32 s5, s5, s4
	movw r9, #35322
	movt r9, #15842
	vmov s6, r9
	vmul.f32 s2, s6, s2
	vadd.f32 s2, s5, s2
	vmul.f32 s5, s0, s1
	vadd.f32 s2, s2, s5
	movw r10, #12860
	movt r10, #48923
	vmov s5, r10
	vmul.f32 s3, s5, s3
	vadd.f32 s2, s2, s3
	add r11, r3, r11, lsl #2
	vstr s2, [r11, #0]
	vmul.f32 s5, s0, s2
	vldr s3, [r7, #4]
	vmov s6, r8
	vmul.f32 s6, s6, s3
	vmov s7, r9
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r11, #4]
	vmul.f32 s5, s0, s1
	vldr s4, [r7, #8]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s3, s3, s2
	vstr s3, [r11, #8]
	vmul.f32 s5, s0, s3
	vldr s2, [r7, #12]
	vmov s6, r8
	vmul.f32 s6, s6, s2
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r11, #12]
	mov r11, r6
	add r6, r6, #4
	movw r7, #270
	cmp r6, r7
	bge label208
	b label56
label49:
	add r7, r2, r11, lsl #2
	vldr s5, [r7, #0]
	movw r8, #61929
	movt r8, #48705
	vmov s2, r8
	vmul.f32 s2, s2, s5
	movw r9, #35322
	movt r9, #15842
	vmov s6, r9
	vmul.f32 s4, s6, s4
	vadd.f32 s2, s2, s4
	vmul.f32 s4, s0, s1
	vadd.f32 s2, s2, s4
	movw r10, #12860
	movt r10, #48923
	vmov s4, r10
	vmul.f32 s3, s4, s3
	vadd.f32 s2, s2, s3
	add r11, r3, r11, lsl #2
	vstr s2, [r11, #0]
	vmul.f32 s4, s0, s2
	vldr s3, [r7, #4]
	vmov s6, r8
	vmul.f32 s6, s6, s3
	vmov s7, r9
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s4, s5, s4
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r11, #4]
	vmul.f32 s5, s0, s1
	vldr s4, [r7, #8]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s3, s3, s2
	vstr s3, [r11, #8]
	vmul.f32 s5, s0, s3
	vldr s2, [r7, #12]
	vmov s6, r8
	vmul.f32 s6, s6, s2
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r11, #12]
	mov r11, r6
	vmov.f32 s4, s2
	add r6, r6, #4
	movw r7, #270
	cmp r6, r7
	bge label213
	b label49
label73:
	movw r7, #51281
	movt r7, #48700
	vmov s5, r7
	vmul.f32 s5, s5, s2
	movw r8, #9998
	movt r8, #15851
	vmov s6, r8
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	movw r9, #12860
	movt r9, #48923
	vmov s5, r9
	vmul.f32 s3, s5, s3
	vadd.f32 s3, s4, s3
	add r10, r3, r11, lsl #2
	vstr s3, [r10, #0]
	vmul.f32 s5, s0, s3
	add r11, r2, r11, lsl #2
	vldr s4, [r11, #0]
	vmov s6, r7
	vmul.f32 s6, s6, s4
	vmov s7, r8
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r9
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	vstr s1, [r10, #-4]
	vmul.f32 s5, s0, s1
	vldr s2, [r11, #-4]
	vmov s6, r7
	vmul.f32 s6, s6, s2
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r9
	vmul.f32 s3, s5, s3
	vadd.f32 s3, s4, s3
	vstr s3, [r10, #-8]
	vmul.f32 s5, s0, s3
	vldr s4, [r11, #-8]
	vmov s6, r7
	vmul.f32 s6, s6, s4
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r9
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	vstr s1, [r10, #-12]
	vldr s2, [r11, #-12]
	mov r11, r6
	sub r6, r6, #4
	cmn r6, #1
	ble label462
	b label73
label439:
	movw r3, #1080
	mla r2, r5, r3, r4
	mla r3, r5, r3, r1
	mov r6, #0
	vmov s1, r6
	vmov s2, r6
	vmov s3, r6
	vmov s4, r6
	movw r11, #269
	sub r6, r11, #4
	cmn r6, #1
	ble label67
	b label88
label121:
	add r6, r6, #1
	cmp r6, #512
	bge label123
	movw r4, #1080
	mla r2, r6, r4, r1
	mla r3, r6, r4, r0
	ldr r5, [sp, #0]
	mla r4, r6, r4, r5
	mov r9, #0
	add r5, r9, #4
	movw r7, #270
	cmp r5, r7
	bge label114
	b label113
