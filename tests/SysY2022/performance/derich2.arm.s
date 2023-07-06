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
	ble label14
	b label69
label2:
	cmp r0, #0
	bne label3
	mov r0, #1065353216
	vmov s0, r0
	b label9
label3:
	subs r1, r0, #1
	bge label7
	rsb r0, r1, #0
	bl newPow
	mov r0, #1065353216
	vmov s1, r0
	vdiv.f32 s0, s1, s0
	vadd.f32 s0, s0, s0
	b label9
label70:
	mov r0, #1065353216
	vmov s0, r0
	vadd.f32 s0, s0, s0
	b label9
label7:
	cmp r1, #0
	bne label8
	b label70
label9:
	add sp, sp, #4
	pop { pc }
label71:
	mov r0, #1065353216
	vmov s0, r0
	vmov s1, r0
	vdiv.f32 s0, s1, s0
	b label9
label14:
	cmp r0, #0
	bne label15
	b label71
label69:
	bl newPow
	mov r0, #1065353216
	vmov s1, r0
	vdiv.f32 s0, s1, s0
	vdiv.f32 s0, s1, s0
	b label9
label15:
	mvn r1, #0
	sub r0, r1, r0
	bl newPow
	vadd.f32 s0, s0, s0
	mov r0, #1065353216
	vmov s1, r0
	vdiv.f32 s0, s1, s0
	b label9
label8:
	sub r0, r0, #2
	bl newPow
	vadd.f32 s0, s0, s0
	vadd.f32 s0, s0, s0
	b label9
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
	bge label232
	b label231
label232:
	mov r5, #0
	cmp r5, #512
	bge label236
label235:
	movw r3, #1080
	mov r6, #0
	movw r11, #269
	mla r2, r5, r3, r4
	vmov s4, r6
	vmov s3, r6
	mla r3, r5, r3, r1
	vmov s2, r6
	vmov s1, r6
	sub r6, r11, #4
	cmn r6, #1
	ble label87
	b label86
label236:
	mov r6, #0
	cmp r6, #512
	bge label491
	movw r4, #1080
	ldr r5, [sp, #0]
	mov r9, #0
	mla r3, r6, r4, r0
	mla r2, r6, r4, r1
	mla r4, r6, r4, r5
	add r5, r9, #4
	movw r7, #270
	cmp r5, r7
	bge label186
	b label185
label86:
	movw r7, #51281
	movw r8, #9998
	add r10, r3, r11, lsl #2
	movw r9, #12860
	movt r7, #48700
	add r11, r2, r11, lsl #2
	movt r8, #15851
	movt r9, #48923
	vmov s5, r7
	vmov s7, r8
	vmov s6, r8
	vmul.f32 s5, s2, s5
	vmul.f32 s2, s2, s7
	vmul.f32 s4, s4, s6
	vmov s6, r7
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	vmov s5, r9
	vmul.f32 s3, s3, s5
	vadd.f32 s3, s4, s3
	vmul.f32 s5, s0, s3
	vstr s3, [r10, #0]
	vldr s4, [r11, #0]
	vmul.f32 s6, s4, s6
	vmul.f32 s4, s4, s7
	vadd.f32 s2, s6, s2
	vmov s6, r7
	vadd.f32 s2, s2, s5
	vmov s5, r9
	vmul.f32 s1, s1, s5
	vadd.f32 s1, s2, s1
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
	vadd.f32 s1, s2, s1
	vstr s1, [r10, #-12]
	vldr s2, [r11, #-12]
	mov r11, r6
	sub r6, r6, #4
	cmn r6, #1
	ble label87
	b label86
label185:
	add r7, r3, r9, lsl #2
	add r8, r2, r9, lsl #2
	vldr s1, [r7, #0]
	add r9, r4, r9, lsl #2
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
	mov r9, r5
	add r5, r5, #4
	movw r7, #270
	cmp r5, r7
	bge label186
	b label185
label193:
	add r6, r6, #1
	cmp r6, #512
	bge label491
	movw r4, #1080
	ldr r5, [sp, #0]
	mov r9, #0
	mla r3, r6, r4, r0
	mla r2, r6, r4, r1
	mla r4, r6, r4, r5
	add r5, r9, #4
	movw r7, #270
	cmp r5, r7
	bge label186
	b label185
label186:
	add r5, r9, #4
	movw r7, #270
	cmp r5, r7
	bge label1258
	b label194
label1258:
	mov r7, r9
	add r5, r9, #4
	movw r8, #270
	cmp r5, r8
	bge label1263
	b label190
label1263:
	mov r5, r7
	b label191
label190:
	add r8, r3, r7, lsl #2
	add r9, r2, r7, lsl #2
	vldr s1, [r8, #0]
	add r7, r4, r7, lsl #2
	vldr s2, [r9, #0]
	vadd.f32 s1, s1, s2
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
	bge label1263
	b label190
label191:
	add r7, r3, r5, lsl #2
	vldr s1, [r7, #0]
	add r7, r2, r5, lsl #2
	vldr s2, [r7, #0]
	add r7, r4, r5, lsl #2
	add r5, r5, #1
	vadd.f32 s1, s1, s2
	vstr s1, [r7, #0]
	movw r7, #270
	cmp r5, r7
	bge label193
	b label191
label194:
	add r7, r3, r9, lsl #2
	add r8, r2, r9, lsl #2
	vldr s1, [r7, #0]
	add r9, r4, r9, lsl #2
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
	mov r9, r5
	add r5, r5, #4
	movw r7, #270
	cmp r5, r7
	bge label1258
	b label194
label491:
	mov r2, #0
	movw r3, #270
	cmp r2, r3
	bge label495
	mov r8, #0
	vmov s2, r8
	vmov s4, r8
	vmov s1, r8
	add r3, r8, #4
	cmp r3, #512
	bge label118
	b label117
label495:
	mov r2, #0
	movw r3, #270
	cmp r2, r3
	bge label795
	mov r3, #0
	movw r9, #511
	vmov s5, r3
	vmov s3, r3
	vmov s2, r3
	vmov s1, r3
	sub r3, r9, #4
	cmn r3, #1
	ble label161
	b label160
label117:
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
	vldr s3, [r4, #0]
	vmul.f32 s4, s4, s6
	movw r4, #61929
	movt r4, #48705
	vmov s6, r4
	vmov s5, r4
	vmul.f32 s5, s3, s5
	vmul.f32 s3, s3, s7
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	vmov s5, r7
	vmul.f32 s2, s2, s5
	vadd.f32 s2, s4, s2
	vmul.f32 s5, s0, s2
	vstr s2, [r10, #0]
	add r10, r5, r9
	add r9, r8, r9
	add r10, r10, r2, lsl #2
	add r9, r9, r2, lsl #2
	vldr s4, [r10, #0]
	vmul.f32 s6, s4, s6
	vmul.f32 s4, s4, s7
	vadd.f32 s3, s6, s3
	vmov s6, r4
	vadd.f32 s3, s3, s5
	vmov s5, r7
	vmul.f32 s1, s1, s5
	vadd.f32 s1, s3, s1
	vmul.f32 s5, s0, s1
	vstr s1, [r9, #0]
	add r9, r5, #2160
	add r9, r9, r2, lsl #2
	vldr s3, [r9, #0]
	add r9, r8, #2160
	add r9, r9, r2, lsl #2
	vmul.f32 s6, s3, s6
	vmul.f32 s3, s3, s7
	vadd.f32 s4, s6, s4
	vmov s6, r4
	vadd.f32 s4, s4, s5
	vmov s5, r7
	vmul.f32 s2, s2, s5
	vadd.f32 s2, s4, s2
	vmul.f32 s5, s0, s2
	vstr s2, [r9, #0]
	movw r9, #3240
	add r4, r8, r9
	add r5, r5, r9
	mov r8, r3
	add r4, r4, r2, lsl #2
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	vmul.f32 s6, s4, s6
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r7
	vmul.f32 s1, s1, s5
	vadd.f32 s1, s3, s1
	vstr s1, [r4, #0]
	add r3, r3, #4
	cmp r3, #512
	bge label118
	b label117
label130:
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
	bge label135
	vmov.f32 s4, s2
	vmov.f32 s3, s1
	vmov.f32 s1, s5
	b label130
label135:
	add r2, r2, #1
	movw r3, #270
	cmp r2, r3
	bge label495
	mov r8, #0
	vmov s2, r8
	vmov s4, r8
	vmov s1, r8
	add r3, r8, #4
	cmp r3, #512
	bge label118
	b label117
label160:
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
	vmul.f32 s4, s2, s4
	vmul.f32 s2, s2, s7
	vmul.f32 s5, s5, s6
	vmov s6, r4
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s0, s1
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
	vadd.f32 s2, s6, s2
	vmov s6, r4
	vadd.f32 s2, s2, s5
	vmov s5, r7
	vmul.f32 s1, s1, s5
	vadd.f32 s1, s2, s1
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
	vmul.f32 s5, s0, s3
	vstr s3, [r9, #0]
	sub r9, r5, #2160
	add r9, r9, r2, lsl #2
	vldr s4, [r9, #0]
	mov r9, r3
	vmul.f32 s6, s4, s6
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r7
	vmul.f32 s1, s1, s5
	vmov.f32 s5, s4
	vadd.f32 s1, s2, s1
	vstr s1, [r6, #0]
	vldr s2, [r4, #0]
	sub r3, r3, #4
	cmn r3, #1
	ble label161
	b label160
label795:
	mov r6, #0
	cmp r6, #512
	bge label153
	movw r4, #1080
	ldr r5, [sp, #0]
	mov r9, #0
	mla r3, r6, r4, r0
	mla r2, r6, r4, r1
	mla r4, r6, r4, r5
	add r5, r9, #4
	movw r7, #270
	cmp r5, r7
	bge label143
	b label152
label153:
	mov r0, #158
	bl _sysy_stoptime
	mov r0, #138240
	ldr r5, [sp, #0]
	mov r1, r5
	bl putfarray
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label143:
	add r5, r9, #4
	movw r7, #270
	cmp r5, r7
	bge label823
	b label145
label823:
	mov r7, r9
	add r5, r9, #4
	movw r8, #270
	cmp r5, r8
	bge label855
	b label151
label145:
	add r7, r3, r9, lsl #2
	add r8, r2, r9, lsl #2
	vldr s0, [r7, #0]
	add r9, r4, r9, lsl #2
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
	mov r9, r5
	add r5, r5, #4
	movw r7, #270
	cmp r5, r7
	bge label823
	b label145
label855:
	mov r5, r7
label148:
	add r7, r3, r5, lsl #2
	vldr s0, [r7, #0]
	add r7, r2, r5, lsl #2
	vldr s1, [r7, #0]
	add r7, r4, r5, lsl #2
	add r5, r5, #1
	vadd.f32 s0, s0, s1
	vstr s0, [r7, #0]
	movw r7, #270
	cmp r5, r7
	bge label150
	b label148
label150:
	add r6, r6, #1
	cmp r6, #512
	bge label153
	movw r4, #1080
	ldr r5, [sp, #0]
	mov r9, #0
	mla r3, r6, r4, r0
	mla r2, r6, r4, r1
	mla r4, r6, r4, r5
	add r5, r9, #4
	movw r7, #270
	cmp r5, r7
	bge label143
label152:
	add r7, r3, r9, lsl #2
	add r8, r2, r9, lsl #2
	vldr s0, [r7, #0]
	add r9, r4, r9, lsl #2
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
	mov r9, r5
	add r5, r5, #4
	movw r7, #270
	cmp r5, r7
	bge label143
	b label152
label151:
	add r8, r3, r7, lsl #2
	add r9, r2, r7, lsl #2
	vldr s0, [r8, #0]
	add r7, r4, r7, lsl #2
	vldr s1, [r9, #0]
	vadd.f32 s0, s0, s1
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
	bge label855
	b label151
label161:
	sub r3, r9, #4
	cmn r3, #1
	ble label168
	b label167
label168:
	sub r3, r9, #4
	cmn r3, #1
	ble label1103
	b label181
label180:
	add r2, r2, #1
	movw r3, #270
	cmp r2, r3
	bge label795
	mov r3, #0
	movw r9, #511
	vmov s5, r3
	vmov s3, r3
	vmov s2, r3
	vmov s1, r3
	sub r3, r9, #4
	cmn r3, #1
	ble label161
	b label160
label167:
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
	vmul.f32 s4, s2, s4
	vmul.f32 s2, s2, s7
	vmul.f32 s5, s5, s6
	vmov s6, r4
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s0, s1
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
	vadd.f32 s2, s6, s2
	vmov s6, r4
	vadd.f32 s2, s2, s5
	vmov s5, r7
	vmul.f32 s1, s1, s5
	vadd.f32 s1, s2, s1
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
	vmul.f32 s5, s0, s3
	vstr s3, [r9, #0]
	sub r9, r5, #2160
	add r9, r9, r2, lsl #2
	vldr s4, [r9, #0]
	mov r9, r3
	vmul.f32 s6, s4, s6
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r7
	vmul.f32 s1, s1, s5
	vmov.f32 s5, s4
	vadd.f32 s1, s2, s1
	vstr s1, [r6, #0]
	vldr s2, [r4, #0]
	sub r3, r3, #4
	cmn r3, #1
	ble label168
	b label167
label181:
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
	vmul.f32 s4, s2, s4
	vmul.f32 s2, s2, s7
	vmul.f32 s5, s5, s6
	vmov s6, r4
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s0, s1
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
	vadd.f32 s2, s6, s2
	vmov s6, r4
	vadd.f32 s2, s2, s5
	vmov s5, r7
	vmul.f32 s1, s1, s5
	vadd.f32 s1, s2, s1
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
	vadd.f32 s1, s2, s1
	vstr s1, [r6, #0]
	vldr s2, [r4, #0]
	sub r3, r3, #4
	cmn r3, #1
	ble label1103
	b label181
label1103:
	mov r3, r9
label174:
	movw r4, #51281
	movt r4, #48700
	vmov s4, r4
	movw r4, #9998
	movt r4, #15851
	vmov s6, r4
	movw r4, #12860
	vmul.f32 s4, s2, s4
	movt r4, #48923
	vmul.f32 s5, s5, s6
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s0, s1
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
	ble label180
	vmov.f32 s3, s1
	vmov.f32 s5, s2
	vmov.f32 s1, s4
	vmov.f32 s2, s6
	b label174
label118:
	add r3, r8, #4
	cmp r3, #512
	bge label593
label123:
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
	vldr s3, [r4, #0]
	vmul.f32 s4, s4, s6
	movw r4, #61929
	movt r4, #48705
	vmov s6, r4
	vmov s5, r4
	vmul.f32 s5, s3, s5
	vmul.f32 s3, s3, s7
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	vmov s5, r7
	vmul.f32 s2, s2, s5
	vadd.f32 s2, s4, s2
	vmul.f32 s5, s0, s2
	vstr s2, [r10, #0]
	add r10, r5, r9
	add r9, r8, r9
	add r10, r10, r2, lsl #2
	add r9, r9, r2, lsl #2
	vldr s4, [r10, #0]
	vmul.f32 s6, s4, s6
	vmul.f32 s4, s4, s7
	vadd.f32 s3, s6, s3
	vmov s6, r4
	vadd.f32 s3, s3, s5
	vmov s5, r7
	vmul.f32 s1, s1, s5
	vadd.f32 s1, s3, s1
	vmul.f32 s5, s0, s1
	vstr s1, [r9, #0]
	add r9, r5, #2160
	add r9, r9, r2, lsl #2
	vldr s3, [r9, #0]
	add r9, r8, #2160
	add r9, r9, r2, lsl #2
	vmul.f32 s6, s3, s6
	vmul.f32 s3, s3, s7
	vadd.f32 s4, s6, s4
	vmov s6, r4
	vadd.f32 s4, s4, s5
	vmov s5, r7
	vmul.f32 s2, s2, s5
	vadd.f32 s2, s4, s2
	vmul.f32 s5, s0, s2
	vstr s2, [r9, #0]
	movw r9, #3240
	add r4, r8, r9
	add r5, r5, r9
	mov r8, r3
	add r4, r4, r2, lsl #2
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	vmul.f32 s6, s4, s6
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r7
	vmul.f32 s1, s1, s5
	vadd.f32 s1, s3, s1
	vstr s1, [r4, #0]
	add r3, r3, #4
	cmp r3, #512
	bge label593
	b label123
label87:
	sub r6, r11, #4
	cmn r6, #1
	ble label324
label93:
	movw r7, #51281
	movw r8, #9998
	add r10, r3, r11, lsl #2
	movw r9, #12860
	movt r7, #48700
	add r11, r2, r11, lsl #2
	movt r8, #15851
	movt r9, #48923
	vmov s5, r7
	vmov s7, r8
	vmov s6, r8
	vmul.f32 s5, s2, s5
	vmul.f32 s2, s2, s7
	vmul.f32 s4, s4, s6
	vmov s6, r7
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	vmov s5, r9
	vmul.f32 s3, s3, s5
	vadd.f32 s3, s4, s3
	vmul.f32 s5, s0, s3
	vstr s3, [r10, #0]
	vldr s4, [r11, #0]
	vmul.f32 s6, s4, s6
	vmul.f32 s4, s4, s7
	vadd.f32 s2, s6, s2
	vmov s6, r7
	vadd.f32 s2, s2, s5
	vmov s5, r9
	vmul.f32 s1, s1, s5
	vadd.f32 s1, s2, s1
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
	vadd.f32 s1, s2, s1
	vstr s1, [r10, #-12]
	vldr s2, [r11, #-12]
	mov r11, r6
	sub r6, r6, #4
	cmn r6, #1
	ble label324
	b label93
label324:
	mov r10, r11
	sub r6, r11, #4
	cmn r6, #1
	ble label395
	b label100
label395:
	mov r6, r10
	b label101
label100:
	movw r7, #51281
	movw r8, #9998
	add r11, r3, r10, lsl #2
	movw r9, #12860
	movt r7, #48700
	add r10, r2, r10, lsl #2
	movt r8, #15851
	movt r9, #48923
	vmov s5, r7
	vmov s7, r8
	vmov s6, r8
	vmul.f32 s5, s2, s5
	vmul.f32 s2, s2, s7
	vmul.f32 s4, s4, s6
	vmov s6, r7
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	vmov s5, r9
	vmul.f32 s3, s3, s5
	vadd.f32 s3, s4, s3
	vmul.f32 s5, s0, s3
	vstr s3, [r11, #0]
	vldr s4, [r10, #0]
	vmul.f32 s6, s4, s6
	vmul.f32 s4, s4, s7
	vadd.f32 s2, s6, s2
	vmov s6, r7
	vadd.f32 s2, s2, s5
	vmov s5, r9
	vmul.f32 s1, s1, s5
	vadd.f32 s1, s2, s1
	vmul.f32 s5, s0, s1
	vstr s1, [r11, #-4]
	vldr s2, [r10, #-4]
	vmul.f32 s6, s2, s6
	vmul.f32 s2, s2, s7
	vadd.f32 s4, s6, s4
	vmov s6, r7
	vadd.f32 s4, s4, s5
	vmov s5, r9
	vmul.f32 s3, s3, s5
	vadd.f32 s3, s4, s3
	vmul.f32 s5, s0, s3
	vstr s3, [r11, #-8]
	vldr s4, [r10, #-8]
	vmul.f32 s6, s4, s6
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r9
	vmul.f32 s1, s1, s5
	vadd.f32 s1, s2, s1
	vstr s1, [r11, #-12]
	vldr s2, [r10, #-12]
	mov r10, r6
	sub r6, r6, #4
	cmn r6, #1
	ble label395
	b label100
label101:
	movw r7, #51281
	movt r7, #48700
	vmov s5, r7
	movw r7, #9998
	movt r7, #15851
	vmov s6, r7
	movw r7, #12860
	vmul.f32 s5, s2, s5
	movt r7, #48923
	vmul.f32 s4, s4, s6
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	vmov s5, r7
	add r7, r3, r6, lsl #2
	vmul.f32 s3, s3, s5
	vadd.f32 s5, s4, s3
	vstr s5, [r7, #0]
	add r7, r2, r6, lsl #2
	sub r6, r6, #1
	vldr s6, [r7, #0]
	cmn r6, #1
	ble label107
	vmov.f32 s3, s1
	vmov.f32 s4, s2
	vmov.f32 s1, s5
	vmov.f32 s2, s6
	b label101
label593:
	vmov.f32 s3, s2
	add r3, r8, #4
	cmp r3, #512
	bge label680
	b label129
label680:
	mov r3, r8
	b label130
label129:
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
	bge label680
	b label129
label231:
	movw r3, #1080
	mov r11, #0
	mla r2, r5, r3, r4
	vmov s3, r11
	vmov s2, r11
	mla r3, r5, r3, r0
	vmov s1, r11
	add r6, r11, #4
	movw r7, #270
	cmp r6, r7
	bge label201
	b label219
label217:
	add r5, r5, #1
	cmp r5, #512
	bge label232
	b label231
label201:
	add r6, r11, #4
	movw r7, #270
	cmp r6, r7
	bge label1352
	b label206
label1352:
	vmov.f32 s4, s2
	add r6, r11, #4
	movw r7, #270
	cmp r6, r7
	bge label1423
	b label218
label206:
	add r7, r2, r11, lsl #2
	movw r8, #61929
	movw r9, #35322
	movw r10, #12860
	add r11, r3, r11, lsl #2
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
	bge label1352
	b label206
label1423:
	mov r6, r11
	b label212
label218:
	add r7, r2, r11, lsl #2
	movw r8, #61929
	movw r9, #35322
	movw r10, #12860
	add r11, r3, r11, lsl #2
	movt r8, #48705
	movt r9, #15842
	vldr s5, [r7, #0]
	movt r10, #48923
	vmov s2, r8
	vmov s7, r9
	vmov s6, r9
	vmul.f32 s2, s5, s2
	vmul.f32 s5, s5, s7
	vmul.f32 s4, s4, s6
	vmov s6, r8
	vadd.f32 s2, s2, s4
	vmul.f32 s4, s0, s1
	vadd.f32 s2, s2, s4
	vmov s4, r10
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	vmul.f32 s4, s0, s2
	vstr s2, [r11, #0]
	vldr s3, [r7, #4]
	vmul.f32 s6, s3, s6
	vmul.f32 s3, s3, s7
	vadd.f32 s5, s6, s5
	vmov s6, r8
	vadd.f32 s4, s5, s4
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
	vmov.f32 s4, s2
	vstr s1, [r11, #12]
	mov r11, r6
	add r6, r6, #4
	movw r7, #270
	cmp r6, r7
	bge label1423
	b label218
label212:
	add r7, r2, r6, lsl #2
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
	add r7, r3, r6, lsl #2
	add r6, r6, #1
	vmul.f32 s3, s3, s5
	vadd.f32 s5, s4, s3
	vstr s5, [r7, #0]
	movw r7, #270
	cmp r6, r7
	bge label217
	vmov.f32 s4, s2
	vmov.f32 s3, s1
	vmov.f32 s1, s5
	b label212
label219:
	add r7, r2, r11, lsl #2
	movw r8, #61929
	movw r9, #35322
	movw r10, #12860
	add r11, r3, r11, lsl #2
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
	bge label201
	b label219
label107:
	add r5, r5, #1
	cmp r5, #512
	bge label236
	b label235
