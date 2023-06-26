.arch armv7ve
.data
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
	rsb r1, r1, #0
	bl newPow
	mov r0, #1065353216
	vmov s1, r0
	vdiv.f32 s0, s1, s0
	b label3
label29:
	mov r0, #1065353216
	vmov s0, r0
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
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	movw r0, #:lower16:imgIn
	movt r0, #:upper16:imgIn
	mov r4, r0
	bl getfarray
	mov r0, #156
	bl _sysy_starttime
	movw r5, #:lower16:imgOut
	movt r5, #:upper16:imgOut
	str r5, [sp, #0]
	movw r2, #:lower16:my_y1
	movt r2, #:upper16:my_y1
	movw r3, #:lower16:my_y2
	movt r3, #:upper16:my_y2
	mov r0, #1073741824
	vmov s0, r0
	mov r1, #0
	bl newPow
	mov r0, #0
	cmp r0, #512
	bge label191
label190:
	movw r1, #1080
	mul r5, r0, r1
	add r5, r4, r5
	mul r1, r0, r1
	add r6, r2, r1
	mov r1, #0
	vmov s1, r1
	vmov s3, r1
	vmov s2, r1
	add r7, r1, #16
	movw r8, #270
	cmp r7, r8
	bge label40
	b label58
label191:
	mov r0, #0
	cmp r0, #512
	bge label1019
	b label61
label1019:
	mov r1, #0
	cmp r1, #512
	bge label1850
	movw r0, #1080
	mul r4, r1, r0
	add r6, r3, r4
	add r7, r2, r4
	mul r0, r1, r0
	ldr r5, [sp, #0]
	add r5, r5, r0
	mov r0, #0
	add r4, r0, #16
	movw r8, #270
	cmp r4, r8
	bge label96
	b label95
label61:
	movw r1, #1080
	mul r5, r0, r1
	add r5, r4, r5
	mul r1, r0, r1
	add r6, r3, r1
	mov r1, #0
	vmov s1, r1
	vmov s2, r1
	vmov s4, r1
	vmov s3, r1
	movw r1, #269
	sub r7, r1, #16
	cmn r7, #1
	ble label68
label89:
	add r8, r6, r1, lsl #2
	movw r9, #51281
	movt r9, #48700
	vmov s5, r9
	vmul.f32 s5, s5, s2
	movw r10, #9998
	movt r10, #15851
	vmov s6, r10
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r11, #12860
	movt r11, #48923
	vmov s5, r11
	vmul.f32 s4, s5, s4
	vadd.f32 s3, s3, s4
	vstr s3, [r8, #0]
	add r1, r5, r1, lsl #2
	vldr s4, [r1, #0]
	vmov s5, r9
	vmul.f32 s5, s5, s4
	vmul.f32 s2, s6, s2
	vadd.f32 s2, s5, s2
	vmul.f32 s5, s0, s3
	vadd.f32 s2, s2, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	vstr s1, [r8, #-4]
	vldr s2, [r1, #-4]
	vmov s5, r9
	vmul.f32 s5, s5, s2
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s3, s5, s3
	vadd.f32 s3, s4, s3
	vstr s3, [r8, #-8]
	vldr s4, [r1, #-8]
	vmov s5, r9
	vmul.f32 s5, s5, s4
	vmul.f32 s2, s6, s2
	vadd.f32 s2, s5, s2
	vmul.f32 s5, s0, s3
	vadd.f32 s2, s2, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s2, s2, s1
	vstr s2, [r8, #-12]
	vldr s5, [r1, #-12]
	vmov s1, r9
	vmul.f32 s1, s1, s5
	vmul.f32 s4, s6, s4
	vadd.f32 s1, s1, s4
	vmul.f32 s4, s0, s2
	vadd.f32 s1, s1, s4
	vmov s4, r11
	vmul.f32 s3, s4, s3
	vadd.f32 s1, s1, s3
	vstr s1, [r8, #-16]
	vldr s3, [r1, #-16]
	vmov s4, r9
	vmul.f32 s4, s4, s3
	vmul.f32 s5, s6, s5
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r8, #-20]
	vldr s4, [r1, #-20]
	vmov s5, r9
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s2
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r8, #-24]
	vldr s3, [r1, #-24]
	vmov s5, r9
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r8, #-28]
	vldr s4, [r1, #-28]
	vmov s5, r9
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s2
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r8, #-32]
	vldr s3, [r1, #-32]
	vmov s5, r9
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r8, #-36]
	vldr s4, [r1, #-36]
	vmov s5, r9
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s2
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r8, #-40]
	vldr s3, [r1, #-40]
	vmov s5, r9
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r8, #-44]
	vldr s4, [r1, #-44]
	vmov s5, r9
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s2
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r8, #-48]
	vldr s3, [r1, #-48]
	vmov s5, r9
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r8, #-52]
	vldr s5, [r1, #-52]
	vmov s4, r9
	vmul.f32 s4, s4, s5
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s4, s3
	vmul.f32 s4, s0, s2
	vadd.f32 s3, s3, s4
	vmov s4, r11
	vmul.f32 s1, s4, s1
	vadd.f32 s4, s3, s1
	vstr s4, [r8, #-56]
	vldr s3, [r1, #-56]
	vmov s1, r9
	vmul.f32 s1, s1, s3
	vmul.f32 s5, s6, s5
	vadd.f32 s1, s1, s5
	vmul.f32 s5, s0, s4
	vadd.f32 s1, s1, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #-60]
	vldr s2, [r1, #-60]
	mov r1, r7
	sub r7, r7, #16
	cmn r7, #1
	ble label68
	b label89
label1850:
	mov r0, #0
	movw r1, #270
	cmp r0, r1
	bge label2187
	mov r1, #0
	vmov s1, r1
	vmov s3, r1
	vmov s2, r1
	add r4, r1, #16
	cmp r4, #512
	bge label158
	b label176
label2187:
	mov r0, #0
	movw r1, #270
	cmp r0, r1
	bge label2197
	mov r1, #0
	vmov s1, r1
	vmov s2, r1
	vmov s4, r1
	vmov s3, r1
	movw r1, #511
	sub r4, r1, #16
	cmn r4, #1
	ble label132
	b label131
label2197:
	mov r1, #0
	cmp r1, #512
	bge label124
	b label2208
label124:
	mov r0, #158
	bl _sysy_stoptime
	mov r0, #138240
	ldr r5, [sp, #0]
	mov r1, r5
	bl putfarray
	mov r0, #0
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label2208:
	movw r0, #1080
	mul r4, r1, r0
	add r6, r3, r4
	add r7, r2, r4
	mul r0, r1, r0
	ldr r5, [sp, #0]
	add r5, r5, r0
	mov r0, #0
	add r4, r0, #16
	movw r8, #270
	cmp r4, r8
	bge label115
	b label114
label121:
	add r4, r5, r0, lsl #2
	add r8, r7, r0, lsl #2
	vldr s0, [r8, #0]
	add r8, r6, r0, lsl #2
	vldr s1, [r8, #0]
	vadd.f32 s0, s0, s1
	vstr s0, [r4, #0]
	add r0, r0, #1
	movw r4, #270
	cmp r0, r4
	bge label123
	b label121
label123:
	add r1, r1, #1
	cmp r1, #512
	bge label124
	b label2208
label158:
	add r4, r1, #16
	cmp r4, #512
	bge label163
label175:
	movw r8, #1080
	mul r5, r1, r8
	add r6, r2, r5
	add r9, r6, r0, lsl #2
	mul r1, r1, r8
	ldr r5, [sp, #0]
	add r5, r5, r1
	add r1, r5, r0, lsl #2
	vldr s4, [r1, #0]
	movw r1, #61929
	movt r1, #48705
	vmov s5, r1
	vmul.f32 s5, s5, s4
	movw r7, #35322
	movt r7, #15842
	vmov s6, r7
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r10, #12860
	movt r10, #48923
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r9, #0]
	add r9, r6, r8
	add r9, r9, r0, lsl #2
	add r8, r5, r8
	add r8, r8, r0, lsl #2
	vldr s3, [r8, #0]
	vmov s5, r1
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r9, #0]
	add r8, r6, #2160
	add r8, r8, r0, lsl #2
	add r9, r5, #2160
	add r9, r9, r0, lsl #2
	vldr s4, [r9, #0]
	vmov s5, r1
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r8, #0]
	movw r9, #3240
	add r8, r6, r9
	add r8, r8, r0, lsl #2
	add r9, r5, r9
	add r9, r9, r0, lsl #2
	vldr s3, [r9, #0]
	vmov s5, r1
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r8, #0]
	movw r9, #4320
	add r8, r6, r9
	add r8, r8, r0, lsl #2
	add r9, r5, r9
	add r9, r9, r0, lsl #2
	vldr s5, [r9, #0]
	vmov s4, r1
	vmul.f32 s4, s4, s5
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s4, s3
	vmul.f32 s4, s0, s1
	vadd.f32 s3, s3, s4
	vmov s4, r10
	vmul.f32 s2, s4, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r8, #0]
	movw r9, #5400
	add r8, r6, r9
	add r8, r8, r0, lsl #2
	add r9, r5, r9
	add r9, r9, r0, lsl #2
	vldr s4, [r9, #0]
	vmov s3, r1
	vmul.f32 s3, s3, s4
	vmul.f32 s5, s6, s5
	vadd.f32 s3, s3, s5
	vmul.f32 s5, s0, s2
	vadd.f32 s3, s3, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r8, #0]
	movw r9, #6480
	add r8, r6, r9
	add r8, r8, r0, lsl #2
	add r9, r5, r9
	add r9, r9, r0, lsl #2
	vldr s3, [r9, #0]
	vmov s5, r1
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r8, #0]
	movw r9, #7560
	add r8, r6, r9
	add r8, r8, r0, lsl #2
	add r9, r5, r9
	add r9, r9, r0, lsl #2
	vldr s5, [r9, #0]
	vmov s4, r1
	vmul.f32 s4, s4, s5
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s4, s3
	vmul.f32 s4, s0, s2
	vadd.f32 s3, s3, s4
	vmov s4, r10
	vmul.f32 s1, s4, s1
	vadd.f32 s3, s3, s1
	vstr s3, [r8, #0]
	add r8, r6, #8640
	add r8, r8, r0, lsl #2
	add r9, r5, #8640
	add r9, r9, r0, lsl #2
	vldr s4, [r9, #0]
	vmov s1, r1
	vmul.f32 s1, s1, s4
	vmul.f32 s5, s6, s5
	vadd.f32 s1, s1, s5
	vmul.f32 s5, s0, s3
	vadd.f32 s1, s1, s5
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #0]
	movw r9, #9720
	add r8, r6, r9
	add r8, r8, r0, lsl #2
	add r9, r5, r9
	add r9, r9, r0, lsl #2
	vldr s5, [r9, #0]
	vmov s2, r1
	vmul.f32 s2, s2, s5
	vmul.f32 s4, s6, s4
	vadd.f32 s2, s2, s4
	vmul.f32 s4, s0, s1
	vadd.f32 s2, s2, s4
	vmov s4, r10
	vmul.f32 s3, s4, s3
	vadd.f32 s2, s2, s3
	vstr s2, [r8, #0]
	movw r9, #10800
	add r8, r6, r9
	add r8, r8, r0, lsl #2
	add r9, r5, r9
	add r9, r9, r0, lsl #2
	vldr s4, [r9, #0]
	vmov s3, r1
	vmul.f32 s3, s3, s4
	vmul.f32 s5, s6, s5
	vadd.f32 s3, s3, s5
	vmul.f32 s5, s0, s2
	vadd.f32 s3, s3, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r8, #0]
	movw r9, #11880
	add r8, r6, r9
	add r8, r8, r0, lsl #2
	add r9, r5, r9
	add r9, r9, r0, lsl #2
	vldr s3, [r9, #0]
	vmov s5, r1
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r8, #0]
	movw r9, #12960
	add r8, r6, r9
	add r8, r8, r0, lsl #2
	add r9, r5, r9
	add r9, r9, r0, lsl #2
	vldr s4, [r9, #0]
	vmov s5, r1
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s2
	vadd.f32 s3, s3, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r8, #0]
	movw r9, #14040
	add r8, r6, r9
	add r8, r8, r0, lsl #2
	add r9, r5, r9
	add r9, r9, r0, lsl #2
	vldr s3, [r9, #0]
	vmov s5, r1
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s4, s4, s2
	vstr s4, [r8, #0]
	movw r9, #15120
	add r8, r6, r9
	add r8, r8, r0, lsl #2
	add r9, r5, r9
	add r9, r9, r0, lsl #2
	vldr s5, [r9, #0]
	vmov s2, r1
	vmul.f32 s2, s2, s5
	vmul.f32 s3, s6, s3
	vadd.f32 s2, s2, s3
	vmul.f32 s3, s0, s4
	vadd.f32 s2, s2, s3
	vmov s3, r10
	vmul.f32 s1, s3, s1
	vadd.f32 s2, s2, s1
	vstr s2, [r8, #0]
	movw r8, #16200
	add r6, r6, r8
	add r6, r6, r0, lsl #2
	add r5, r5, r8
	add r5, r5, r0, lsl #2
	vldr s3, [r5, #0]
	vmov s1, r1
	vmul.f32 s1, s1, s3
	vmul.f32 s5, s6, s5
	vadd.f32 s1, s1, s5
	vmul.f32 s5, s0, s2
	vadd.f32 s1, s1, s5
	vmov s5, r10
	vmul.f32 s4, s5, s4
	vadd.f32 s1, s1, s4
	vstr s1, [r6, #0]
	mov r1, r4
	add r4, r4, #16
	cmp r4, #512
	bge label163
	b label175
label163:
	add r4, r1, #16
	cmp r4, #512
	bge label168
	b label174
label168:
	movw r5, #1080
	mul r4, r1, r5
	add r4, r2, r4
	add r4, r4, r0, lsl #2
	mul r6, r1, r5
	ldr r5, [sp, #0]
	add r5, r5, r6
	add r5, r5, r0, lsl #2
	vldr s4, [r5, #0]
	movw r5, #61929
	movt r5, #48705
	vmov s5, r5
	vmul.f32 s5, s5, s4
	movw r5, #35322
	movt r5, #15842
	vmov s6, r5
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r5, #12860
	movt r5, #48923
	vmov s5, r5
	vmul.f32 s2, s5, s2
	vadd.f32 s5, s3, s2
	vstr s5, [r4, #0]
	add r1, r1, #1
	cmp r1, #512
	bge label173
	vmov.f32 s3, s4
	vmov.f32 s2, s1
	vmov.f32 s1, s5
	b label168
label173:
	add r0, r0, #1
	movw r1, #270
	cmp r0, r1
	bge label2187
	mov r1, #0
	vmov s1, r1
	vmov s3, r1
	vmov s2, r1
	add r4, r1, #16
	cmp r4, #512
	bge label158
	b label176
label68:
	sub r7, r1, #16
	cmn r7, #1
	ble label74
label88:
	add r8, r6, r1, lsl #2
	movw r9, #51281
	movt r9, #48700
	vmov s5, r9
	vmul.f32 s5, s5, s2
	movw r10, #9998
	movt r10, #15851
	vmov s6, r10
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r11, #12860
	movt r11, #48923
	vmov s5, r11
	vmul.f32 s4, s5, s4
	vadd.f32 s3, s3, s4
	vstr s3, [r8, #0]
	add r1, r5, r1, lsl #2
	vldr s5, [r1, #0]
	vmov s4, r9
	vmul.f32 s4, s4, s5
	vmul.f32 s2, s6, s2
	vadd.f32 s2, s4, s2
	vmul.f32 s4, s0, s3
	vadd.f32 s2, s2, s4
	vmov s4, r11
	vmul.f32 s1, s4, s1
	vadd.f32 s1, s2, s1
	vstr s1, [r8, #-4]
	vldr s4, [r1, #-4]
	vmov s2, r9
	vmul.f32 s2, s2, s4
	vmul.f32 s5, s6, s5
	vadd.f32 s2, s2, s5
	vmul.f32 s5, s0, s1
	vadd.f32 s2, s2, s5
	vmov s5, r11
	vmul.f32 s3, s5, s3
	vadd.f32 s2, s2, s3
	vstr s2, [r8, #-8]
	vldr s3, [r1, #-8]
	vmov s5, r9
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r8, #-12]
	vldr s4, [r1, #-12]
	vmov s5, r9
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r8, #-16]
	vldr s3, [r1, #-16]
	vmov s5, r9
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r8, #-20]
	vldr s4, [r1, #-20]
	vmov s5, r9
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r8, #-24]
	vldr s5, [r1, #-24]
	vmov s3, r9
	vmul.f32 s3, s3, s5
	vmul.f32 s4, s6, s4
	vadd.f32 s3, s3, s4
	vmul.f32 s4, s0, s2
	vadd.f32 s3, s3, s4
	vmov s4, r11
	vmul.f32 s1, s4, s1
	vadd.f32 s3, s3, s1
	vstr s3, [r8, #-28]
	vldr s6, [r1, #-28]
	vmov s1, r9
	vmul.f32 s1, s1, s6
	vmov s4, r10
	vmul.f32 s4, s4, s5
	vadd.f32 s1, s1, s4
	vmul.f32 s4, s0, s3
	vadd.f32 s1, s1, s4
	vmov s4, r11
	vmul.f32 s2, s4, s2
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #-32]
	vldr s4, [r1, #-32]
	vmov s2, r9
	vmul.f32 s2, s2, s4
	vmov s5, r10
	vmul.f32 s5, s5, s6
	vadd.f32 s2, s2, s5
	vmul.f32 s5, s0, s1
	vadd.f32 s2, s2, s5
	vmov s5, r11
	vmul.f32 s3, s5, s3
	vadd.f32 s2, s2, s3
	vstr s2, [r8, #-36]
	vldr s3, [r1, #-36]
	vmov s5, r9
	vmul.f32 s5, s5, s3
	vmov s6, r10
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r8, #-40]
	vldr s5, [r1, #-40]
	vmov s4, r9
	vmul.f32 s4, s4, s5
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s4, s3
	vmul.f32 s4, s0, s1
	vadd.f32 s3, s3, s4
	vmov s4, r11
	vmul.f32 s2, s4, s2
	vadd.f32 s3, s3, s2
	vstr s3, [r8, #-44]
	vldr s4, [r1, #-44]
	vmov s2, r9
	vmul.f32 s2, s2, s4
	vmul.f32 s5, s6, s5
	vadd.f32 s2, s2, s5
	vmul.f32 s5, s0, s3
	vadd.f32 s2, s2, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s2, s2, s1
	vstr s2, [r8, #-48]
	vldr s6, [r1, #-48]
	vmov s1, r9
	vmul.f32 s1, s1, s6
	vmov s5, r10
	vmul.f32 s4, s5, s4
	vadd.f32 s1, s1, s4
	vmul.f32 s4, s0, s2
	vadd.f32 s1, s1, s4
	vmov s4, r11
	vmul.f32 s3, s4, s3
	vadd.f32 s1, s1, s3
	vstr s1, [r8, #-52]
	vldr s5, [r1, #-52]
	vmov s3, r9
	vmul.f32 s3, s3, s5
	vmov s4, r10
	vmul.f32 s4, s4, s6
	vadd.f32 s3, s3, s4
	vmul.f32 s4, s0, s1
	vadd.f32 s3, s3, s4
	vmov s4, r11
	vmul.f32 s2, s4, s2
	vadd.f32 s4, s3, s2
	vstr s4, [r8, #-56]
	vldr s3, [r1, #-56]
	vmov s2, r9
	vmul.f32 s2, s2, s3
	vmov s6, r10
	vmul.f32 s5, s6, s5
	vadd.f32 s2, s2, s5
	vmul.f32 s5, s0, s4
	vadd.f32 s2, s2, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	vstr s1, [r8, #-60]
	vldr s2, [r1, #-60]
	mov r1, r7
	sub r7, r7, #16
	cmn r7, #1
	ble label74
	b label88
label40:
	add r7, r1, #16
	movw r8, #270
	cmp r7, r8
	bge label45
label57:
	add r8, r6, r1, lsl #2
	add r1, r5, r1, lsl #2
	vldr s4, [r1, #0]
	movw r9, #61929
	movt r9, #48705
	vmov s5, r9
	vmul.f32 s5, s5, s4
	movw r10, #35322
	movt r10, #15842
	vmov s6, r10
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r11, #12860
	movt r11, #48923
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r8, #0]
	vldr s6, [r1, #4]
	vmov s3, r9
	vmul.f32 s3, s3, s6
	vmov s5, r10
	vmul.f32 s4, s5, s4
	vadd.f32 s3, s3, s4
	vmul.f32 s4, s0, s2
	vadd.f32 s3, s3, s4
	vmov s4, r11
	vmul.f32 s1, s4, s1
	vadd.f32 s3, s3, s1
	vstr s3, [r8, #4]
	vldr s5, [r1, #8]
	vmov s1, r9
	vmul.f32 s1, s1, s5
	vmov s4, r10
	vmul.f32 s4, s4, s6
	vadd.f32 s1, s1, s4
	vmul.f32 s4, s0, s3
	vadd.f32 s1, s1, s4
	vmov s4, r11
	vmul.f32 s2, s4, s2
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #8]
	vldr s4, [r1, #12]
	vmov s2, r9
	vmul.f32 s2, s2, s4
	vmov s6, r10
	vmul.f32 s5, s6, s5
	vadd.f32 s2, s2, s5
	vmul.f32 s5, s0, s1
	vadd.f32 s2, s2, s5
	vmov s5, r11
	vmul.f32 s3, s5, s3
	vadd.f32 s2, s2, s3
	vstr s2, [r8, #12]
	vldr s3, [r1, #16]
	vmov s5, r9
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r8, #16]
	vldr s4, [r1, #20]
	vmov s5, r9
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r8, #20]
	vldr s3, [r1, #24]
	vmov s5, r9
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r8, #24]
	vldr s4, [r1, #28]
	vmov s5, r9
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r8, #28]
	vldr s3, [r1, #32]
	vmov s5, r9
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r8, #32]
	vldr s4, [r1, #36]
	vmov s5, r9
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r8, #36]
	vldr s3, [r1, #40]
	vmov s5, r9
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r8, #40]
	vldr s4, [r1, #44]
	vmov s5, r9
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s3, s3, s2
	vstr s3, [r8, #44]
	vldr s5, [r1, #48]
	vmov s2, r9
	vmul.f32 s2, s2, s5
	vmul.f32 s4, s6, s4
	vadd.f32 s2, s2, s4
	vmul.f32 s4, s0, s3
	vadd.f32 s2, s2, s4
	vmov s4, r11
	vmul.f32 s1, s4, s1
	vadd.f32 s2, s2, s1
	vstr s2, [r8, #48]
	vldr s4, [r1, #52]
	vmov s1, r9
	vmul.f32 s1, s1, s4
	vmul.f32 s5, s6, s5
	vadd.f32 s1, s1, s5
	vmul.f32 s5, s0, s2
	vadd.f32 s1, s1, s5
	vmov s5, r11
	vmul.f32 s3, s5, s3
	vadd.f32 s1, s1, s3
	vstr s1, [r8, #52]
	vldr s5, [r1, #56]
	vmov s3, r9
	vmul.f32 s3, s3, s5
	vmul.f32 s4, s6, s4
	vadd.f32 s3, s3, s4
	vmul.f32 s4, s0, s1
	vadd.f32 s3, s3, s4
	vmov s4, r11
	vmul.f32 s2, s4, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r8, #56]
	vldr s3, [r1, #60]
	vmov s4, r9
	vmul.f32 s4, s4, s3
	vmul.f32 s5, s6, s5
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r8, #60]
	mov r1, r7
	add r7, r7, #16
	movw r8, #270
	cmp r7, r8
	bge label45
	b label57
label45:
	add r7, r1, #16
	movw r8, #270
	cmp r7, r8
	bge label50
label56:
	add r8, r6, r1, lsl #2
	add r1, r5, r1, lsl #2
	vldr s4, [r1, #0]
	movw r9, #61929
	movt r9, #48705
	vmov s5, r9
	vmul.f32 s5, s5, s4
	movw r10, #35322
	movt r10, #15842
	vmov s6, r10
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r11, #12860
	movt r11, #48923
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r8, #0]
	vldr s5, [r1, #4]
	vmov s3, r9
	vmul.f32 s3, s3, s5
	vmul.f32 s4, s6, s4
	vadd.f32 s3, s3, s4
	vmul.f32 s4, s0, s2
	vadd.f32 s3, s3, s4
	vmov s4, r11
	vmul.f32 s1, s4, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r8, #4]
	vldr s3, [r1, #8]
	vmov s4, r9
	vmul.f32 s4, s4, s3
	vmul.f32 s5, s6, s5
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r8, #8]
	vldr s4, [r1, #12]
	vmov s5, r9
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s2
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r8, #12]
	vldr s5, [r1, #16]
	vmov s3, r9
	vmul.f32 s3, s3, s5
	vmul.f32 s4, s6, s4
	vadd.f32 s3, s3, s4
	vmul.f32 s4, s0, s1
	vadd.f32 s3, s3, s4
	vmov s4, r11
	vmul.f32 s2, s4, s2
	vadd.f32 s3, s3, s2
	vstr s3, [r8, #16]
	vldr s4, [r1, #20]
	vmov s2, r9
	vmul.f32 s2, s2, s4
	vmul.f32 s5, s6, s5
	vadd.f32 s2, s2, s5
	vmul.f32 s5, s0, s3
	vadd.f32 s2, s2, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s2, s2, s1
	vstr s2, [r8, #20]
	vldr s5, [r1, #24]
	vmov s1, r9
	vmul.f32 s1, s1, s5
	vmul.f32 s4, s6, s4
	vadd.f32 s1, s1, s4
	vmul.f32 s4, s0, s2
	vadd.f32 s1, s1, s4
	vmov s4, r11
	vmul.f32 s3, s4, s3
	vadd.f32 s1, s1, s3
	vstr s1, [r8, #24]
	vldr s3, [r1, #28]
	vmov s4, r9
	vmul.f32 s4, s4, s3
	vmul.f32 s5, s6, s5
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r8, #28]
	vldr s4, [r1, #32]
	vmov s5, r9
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s2
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s3, s3, s1
	vstr s3, [r8, #32]
	vldr s5, [r1, #36]
	vmov s1, r9
	vmul.f32 s1, s1, s5
	vmul.f32 s4, s6, s4
	vadd.f32 s1, s1, s4
	vmul.f32 s4, s0, s3
	vadd.f32 s1, s1, s4
	vmov s4, r11
	vmul.f32 s2, s4, s2
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #36]
	vldr s4, [r1, #40]
	vmov s2, r9
	vmul.f32 s2, s2, s4
	vmul.f32 s5, s6, s5
	vadd.f32 s2, s2, s5
	vmul.f32 s5, s0, s1
	vadd.f32 s2, s2, s5
	vmov s5, r11
	vmul.f32 s3, s5, s3
	vadd.f32 s2, s2, s3
	vstr s2, [r8, #40]
	vldr s3, [r1, #44]
	vmov s5, r9
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r8, #44]
	vldr s4, [r1, #48]
	vmov s5, r9
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r8, #48]
	vldr s3, [r1, #52]
	vmov s5, r9
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r8, #52]
	vldr s4, [r1, #56]
	vmov s5, r9
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r8, #56]
	vldr s3, [r1, #60]
	vmov s5, r9
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r8, #60]
	mov r1, r7
	add r7, r7, #16
	movw r8, #270
	cmp r7, r8
	bge label50
	b label56
label50:
	add r7, r6, r1, lsl #2
	add r8, r5, r1, lsl #2
	vldr s4, [r8, #0]
	movw r8, #61929
	movt r8, #48705
	vmov s5, r8
	vmul.f32 s5, s5, s4
	movw r8, #35322
	movt r8, #15842
	vmov s6, r8
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r8, #12860
	movt r8, #48923
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s5, s3, s2
	vstr s5, [r7, #0]
	add r1, r1, #1
	movw r7, #270
	cmp r1, r7
	bge label55
	vmov.f32 s3, s4
	vmov.f32 s2, s1
	vmov.f32 s1, s5
	b label50
label74:
	sub r7, r1, #16
	cmn r7, #1
	ble label81
	b label80
label81:
	add r7, r6, r1, lsl #2
	movw r8, #51281
	movt r8, #48700
	vmov s5, r8
	vmul.f32 s5, s5, s2
	movw r8, #9998
	movt r8, #15851
	vmov s6, r8
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r8, #12860
	movt r8, #48923
	vmov s5, r8
	vmul.f32 s4, s5, s4
	vadd.f32 s5, s3, s4
	vstr s5, [r7, #0]
	add r7, r5, r1, lsl #2
	vldr s6, [r7, #0]
	sub r1, r1, #1
	cmn r1, #1
	ble label87
	vmov.f32 s4, s1
	vmov.f32 s3, s2
	vmov.f32 s1, s5
	vmov.f32 s2, s6
	b label81
label176:
	movw r8, #1080
	mul r5, r1, r8
	add r6, r2, r5
	add r9, r6, r0, lsl #2
	mul r1, r1, r8
	ldr r5, [sp, #0]
	add r5, r5, r1
	add r1, r5, r0, lsl #2
	vldr s4, [r1, #0]
	movw r1, #61929
	movt r1, #48705
	vmov s5, r1
	vmul.f32 s5, s5, s4
	movw r7, #35322
	movt r7, #15842
	vmov s6, r7
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r10, #12860
	movt r10, #48923
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s3, s3, s2
	vstr s3, [r9, #0]
	add r9, r6, r8
	add r9, r9, r0, lsl #2
	add r8, r5, r8
	add r8, r8, r0, lsl #2
	vldr s5, [r8, #0]
	vmov s2, r1
	vmul.f32 s2, s2, s5
	vmul.f32 s4, s6, s4
	vadd.f32 s2, s2, s4
	vmul.f32 s4, s0, s3
	vadd.f32 s2, s2, s4
	vmov s4, r10
	vmul.f32 s1, s4, s1
	vadd.f32 s2, s2, s1
	vstr s2, [r9, #0]
	add r8, r6, #2160
	add r8, r8, r0, lsl #2
	add r9, r5, #2160
	add r9, r9, r0, lsl #2
	vldr s4, [r9, #0]
	vmov s1, r1
	vmul.f32 s1, s1, s4
	vmul.f32 s5, s6, s5
	vadd.f32 s1, s1, s5
	vmul.f32 s5, s0, s2
	vadd.f32 s1, s1, s5
	vmov s5, r10
	vmul.f32 s3, s5, s3
	vadd.f32 s1, s1, s3
	vstr s1, [r8, #0]
	movw r9, #3240
	add r8, r6, r9
	add r8, r8, r0, lsl #2
	add r9, r5, r9
	add r9, r9, r0, lsl #2
	vldr s3, [r9, #0]
	vmov s5, r1
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r8, #0]
	movw r9, #4320
	add r8, r6, r9
	add r8, r8, r0, lsl #2
	add r9, r5, r9
	add r9, r9, r0, lsl #2
	vldr s4, [r9, #0]
	vmov s5, r1
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s2
	vadd.f32 s3, s3, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r8, #0]
	movw r9, #5400
	add r8, r6, r9
	add r8, r8, r0, lsl #2
	add r9, r5, r9
	add r9, r9, r0, lsl #2
	vldr s3, [r9, #0]
	vmov s5, r1
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r8, #0]
	movw r9, #6480
	add r8, r6, r9
	add r8, r8, r0, lsl #2
	add r9, r5, r9
	add r9, r9, r0, lsl #2
	vldr s4, [r9, #0]
	vmov s5, r1
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s2
	vadd.f32 s3, s3, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r8, #0]
	movw r9, #7560
	add r8, r6, r9
	add r8, r8, r0, lsl #2
	add r9, r5, r9
	add r9, r9, r0, lsl #2
	vldr s3, [r9, #0]
	vmov s5, r1
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r8, #0]
	add r8, r6, #8640
	add r8, r8, r0, lsl #2
	add r9, r5, #8640
	add r9, r9, r0, lsl #2
	vldr s4, [r9, #0]
	vmov s5, r1
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s2
	vadd.f32 s3, s3, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r8, #0]
	movw r9, #9720
	add r8, r6, r9
	add r8, r8, r0, lsl #2
	add r9, r5, r9
	add r9, r9, r0, lsl #2
	vldr s3, [r9, #0]
	vmov s5, r1
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r8, #0]
	movw r9, #10800
	add r8, r6, r9
	add r8, r8, r0, lsl #2
	add r9, r5, r9
	add r9, r9, r0, lsl #2
	vldr s5, [r9, #0]
	vmov s4, r1
	vmul.f32 s4, s4, s5
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s4, s3
	vmul.f32 s4, s0, s2
	vadd.f32 s3, s3, s4
	vmov s4, r10
	vmul.f32 s1, s4, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r8, #0]
	movw r9, #11880
	add r8, r6, r9
	add r8, r8, r0, lsl #2
	add r9, r5, r9
	add r9, r9, r0, lsl #2
	vldr s4, [r9, #0]
	vmov s3, r1
	vmul.f32 s3, s3, s4
	vmul.f32 s5, s6, s5
	vadd.f32 s3, s3, s5
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s3, s3, s2
	vstr s3, [r8, #0]
	movw r9, #12960
	add r8, r6, r9
	add r8, r8, r0, lsl #2
	add r9, r5, r9
	add r9, r9, r0, lsl #2
	vldr s5, [r9, #0]
	vmov s2, r1
	vmul.f32 s2, s2, s5
	vmul.f32 s4, s6, s4
	vadd.f32 s2, s2, s4
	vmul.f32 s4, s0, s3
	vadd.f32 s2, s2, s4
	vmov s4, r10
	vmul.f32 s1, s4, s1
	vadd.f32 s2, s2, s1
	vstr s2, [r8, #0]
	movw r9, #14040
	add r8, r6, r9
	add r8, r8, r0, lsl #2
	add r9, r5, r9
	add r9, r9, r0, lsl #2
	vldr s4, [r9, #0]
	vmov s1, r1
	vmul.f32 s1, s1, s4
	vmul.f32 s5, s6, s5
	vadd.f32 s1, s1, s5
	vmul.f32 s5, s0, s2
	vadd.f32 s1, s1, s5
	vmov s5, r10
	vmul.f32 s3, s5, s3
	vadd.f32 s1, s1, s3
	vstr s1, [r8, #0]
	movw r9, #15120
	add r8, r6, r9
	add r8, r8, r0, lsl #2
	add r9, r5, r9
	add r9, r9, r0, lsl #2
	vldr s5, [r9, #0]
	vmov s3, r1
	vmul.f32 s3, s3, s5
	vmul.f32 s4, s6, s4
	vadd.f32 s3, s3, s4
	vmul.f32 s4, s0, s1
	vadd.f32 s3, s3, s4
	vmov s4, r10
	vmul.f32 s2, s4, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r8, #0]
	movw r8, #16200
	add r6, r6, r8
	add r6, r6, r0, lsl #2
	add r5, r5, r8
	add r5, r5, r0, lsl #2
	vldr s3, [r5, #0]
	vmov s4, r1
	vmul.f32 s4, s4, s3
	vmul.f32 s5, s6, s5
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r6, #0]
	mov r1, r4
	add r4, r4, #16
	cmp r4, #512
	bge label158
	b label176
label96:
	add r4, r0, #16
	movw r8, #270
	cmp r4, r8
	bge label99
label98:
	add r8, r5, r0, lsl #2
	add r9, r7, r0, lsl #2
	vldr s1, [r9, #0]
	add r0, r6, r0, lsl #2
	vldr s2, [r0, #0]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #0]
	vldr s1, [r9, #4]
	vldr s2, [r0, #4]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #4]
	vldr s1, [r9, #8]
	vldr s2, [r0, #8]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #8]
	vldr s1, [r9, #12]
	vldr s2, [r0, #12]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #12]
	vldr s1, [r9, #16]
	vldr s2, [r0, #16]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #16]
	vldr s1, [r9, #20]
	vldr s2, [r0, #20]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #20]
	vldr s1, [r9, #24]
	vldr s2, [r0, #24]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #24]
	vldr s1, [r9, #28]
	vldr s2, [r0, #28]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #28]
	vldr s1, [r9, #32]
	vldr s2, [r0, #32]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #32]
	vldr s1, [r9, #36]
	vldr s2, [r0, #36]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #36]
	vldr s1, [r9, #40]
	vldr s2, [r0, #40]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #40]
	vldr s1, [r9, #44]
	vldr s2, [r0, #44]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #44]
	vldr s1, [r9, #48]
	vldr s2, [r0, #48]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #48]
	vldr s1, [r9, #52]
	vldr s2, [r0, #52]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #52]
	vldr s1, [r9, #56]
	vldr s2, [r0, #56]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #56]
	vldr s1, [r9, #60]
	vldr s2, [r0, #60]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #60]
	mov r0, r4
	add r4, r4, #16
	movw r8, #270
	cmp r4, r8
	bge label99
	b label98
label99:
	add r4, r0, #16
	movw r8, #270
	cmp r4, r8
	bge label102
	b label101
label102:
	add r4, r5, r0, lsl #2
	add r8, r7, r0, lsl #2
	vldr s1, [r8, #0]
	add r8, r6, r0, lsl #2
	vldr s2, [r8, #0]
	vadd.f32 s1, s1, s2
	vstr s1, [r4, #0]
	add r0, r0, #1
	movw r4, #270
	cmp r0, r4
	bge label104
	b label102
label114:
	add r8, r5, r0, lsl #2
	add r9, r7, r0, lsl #2
	vldr s0, [r9, #0]
	add r0, r6, r0, lsl #2
	vldr s1, [r0, #0]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #0]
	vldr s0, [r9, #4]
	vldr s1, [r0, #4]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #4]
	vldr s0, [r9, #8]
	vldr s1, [r0, #8]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #8]
	vldr s0, [r9, #12]
	vldr s1, [r0, #12]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #12]
	vldr s0, [r9, #16]
	vldr s1, [r0, #16]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #16]
	vldr s0, [r9, #20]
	vldr s1, [r0, #20]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #20]
	vldr s0, [r9, #24]
	vldr s1, [r0, #24]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #24]
	vldr s0, [r9, #28]
	vldr s1, [r0, #28]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #28]
	vldr s0, [r9, #32]
	vldr s1, [r0, #32]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #32]
	vldr s0, [r9, #36]
	vldr s1, [r0, #36]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #36]
	vldr s0, [r9, #40]
	vldr s1, [r0, #40]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #40]
	vldr s0, [r9, #44]
	vldr s1, [r0, #44]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #44]
	vldr s0, [r9, #48]
	vldr s1, [r0, #48]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #48]
	vldr s0, [r9, #52]
	vldr s1, [r0, #52]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #52]
	vldr s0, [r9, #56]
	vldr s1, [r0, #56]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #56]
	vldr s0, [r9, #60]
	vldr s1, [r0, #60]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #60]
	mov r0, r4
	add r4, r4, #16
	movw r8, #270
	cmp r4, r8
	bge label115
	b label114
label115:
	add r4, r0, #16
	movw r8, #270
	cmp r4, r8
	bge label118
	b label117
label118:
	add r4, r0, #16
	movw r8, #270
	cmp r4, r8
	bge label121
	b label120
label131:
	movw r5, #1080
	mul r6, r1, r5
	add r7, r3, r6
	add r10, r7, r0, lsl #2
	movw r6, #51281
	movt r6, #48700
	vmov s5, r6
	vmul.f32 s5, s5, s2
	movw r8, #9998
	movt r8, #15851
	vmov s6, r8
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r9, #12860
	movt r9, #48923
	vmov s5, r9
	vmul.f32 s4, s5, s4
	vadd.f32 s3, s3, s4
	vstr s3, [r10, #0]
	mul r1, r1, r5
	ldr r5, [sp, #0]
	add r1, r5, r1
	add r5, r1, r0, lsl #2
	vldr s5, [r5, #0]
	movw r5, #64456
	movt r5, #65535
	add r10, r7, r5
	add r10, r10, r0, lsl #2
	vmov s4, r6
	vmul.f32 s4, s4, s5
	vmul.f32 s2, s6, s2
	vadd.f32 s2, s4, s2
	vmul.f32 s4, s0, s3
	vadd.f32 s2, s2, s4
	vmov s4, r9
	vmul.f32 s1, s4, s1
	vadd.f32 s1, s2, s1
	vstr s1, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s4, [r5, #0]
	sub r5, r7, #2160
	add r5, r5, r0, lsl #2
	vmov s2, r6
	vmul.f32 s2, s2, s4
	vmul.f32 s5, s6, s5
	vadd.f32 s2, s2, s5
	vmul.f32 s5, s0, s1
	vadd.f32 s2, s2, s5
	vmov s5, r9
	vmul.f32 s3, s5, s3
	vadd.f32 s2, s2, s3
	vstr s2, [r5, #0]
	sub r5, r1, #2160
	add r5, r5, r0, lsl #2
	vldr s3, [r5, #0]
	movw r5, #62296
	movt r5, #65535
	add r10, r7, r5
	add r10, r10, r0, lsl #2
	vmov s5, r6
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r9
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s4, [r5, #0]
	movw r5, #61216
	movt r5, #65535
	add r10, r7, r5
	add r10, r10, r0, lsl #2
	vmov s5, r6
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	vmov s5, r9
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s3, [r5, #0]
	movw r5, #60136
	movt r5, #65535
	add r10, r7, r5
	add r10, r10, r0, lsl #2
	vmov s5, r6
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r9
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s4, [r5, #0]
	movw r5, #59056
	movt r5, #65535
	add r10, r7, r5
	add r10, r10, r0, lsl #2
	vmov s5, r6
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	vmov s5, r9
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s6, [r5, #0]
	movw r5, #57976
	movt r5, #65535
	add r10, r7, r5
	add r10, r10, r0, lsl #2
	vmov s3, r6
	vmul.f32 s3, s3, s6
	vmov s5, r8
	vmul.f32 s4, s5, s4
	vadd.f32 s3, s3, s4
	vmul.f32 s4, s0, s2
	vadd.f32 s3, s3, s4
	vmov s4, r9
	vmul.f32 s1, s4, s1
	vadd.f32 s3, s3, s1
	vstr s3, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s5, [r5, #0]
	sub r5, r7, #8640
	add r5, r5, r0, lsl #2
	vmov s1, r6
	vmul.f32 s1, s1, s5
	vmov s4, r8
	vmul.f32 s4, s4, s6
	vadd.f32 s1, s1, s4
	vmul.f32 s4, s0, s3
	vadd.f32 s1, s1, s4
	vmov s4, r9
	vmul.f32 s2, s4, s2
	vadd.f32 s1, s1, s2
	vstr s1, [r5, #0]
	sub r5, r1, #8640
	add r5, r5, r0, lsl #2
	vldr s4, [r5, #0]
	movw r5, #55816
	movt r5, #65535
	add r10, r7, r5
	add r10, r10, r0, lsl #2
	vmov s2, r6
	vmul.f32 s2, s2, s4
	vmov s6, r8
	vmul.f32 s5, s6, s5
	vadd.f32 s2, s2, s5
	vmul.f32 s5, s0, s1
	vadd.f32 s2, s2, s5
	vmov s5, r9
	vmul.f32 s3, s5, s3
	vadd.f32 s2, s2, s3
	vstr s2, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s5, [r5, #0]
	movw r5, #54736
	movt r5, #65535
	add r10, r7, r5
	add r10, r10, r0, lsl #2
	vmov s3, r6
	vmul.f32 s3, s3, s5
	vmul.f32 s4, s6, s4
	vadd.f32 s3, s3, s4
	vmul.f32 s4, s0, s2
	vadd.f32 s3, s3, s4
	vmov s4, r9
	vmul.f32 s1, s4, s1
	vadd.f32 s3, s3, s1
	vstr s3, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s6, [r5, #0]
	movw r5, #53656
	movt r5, #65535
	add r10, r7, r5
	add r10, r10, r0, lsl #2
	vmov s1, r6
	vmul.f32 s1, s1, s6
	vmov s4, r8
	vmul.f32 s4, s4, s5
	vadd.f32 s1, s1, s4
	vmul.f32 s4, s0, s3
	vadd.f32 s1, s1, s4
	vmov s4, r9
	vmul.f32 s2, s4, s2
	vadd.f32 s1, s1, s2
	vstr s1, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s4, [r5, #0]
	movw r5, #52576
	movt r5, #65535
	add r10, r7, r5
	add r10, r10, r0, lsl #2
	vmov s2, r6
	vmul.f32 s2, s2, s4
	vmov s5, r8
	vmul.f32 s5, s5, s6
	vadd.f32 s2, s2, s5
	vmul.f32 s5, s0, s1
	vadd.f32 s2, s2, s5
	vmov s5, r9
	vmul.f32 s3, s5, s3
	vadd.f32 s2, s2, s3
	vstr s2, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s3, [r5, #0]
	movw r5, #51496
	movt r5, #65535
	add r10, r7, r5
	add r10, r10, r0, lsl #2
	vmov s5, r6
	vmul.f32 s5, s5, s3
	vmov s6, r8
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r9
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s5, [r5, #0]
	movw r5, #50416
	movt r5, #65535
	add r10, r7, r5
	add r10, r10, r0, lsl #2
	vmov s4, r6
	vmul.f32 s4, s4, s5
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s4, s3
	vmul.f32 s4, s0, s1
	vadd.f32 s3, s3, s4
	vmov s4, r9
	vmul.f32 s2, s4, s2
	vadd.f32 s4, s3, s2
	vstr s4, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s3, [r5, #0]
	movw r5, #49336
	movt r5, #65535
	add r7, r7, r5
	add r7, r7, r0, lsl #2
	vmov s2, r6
	vmul.f32 s2, s2, s3
	vmul.f32 s5, s6, s5
	vadd.f32 s2, s2, s5
	vmul.f32 s5, s0, s4
	vadd.f32 s2, s2, s5
	vmov s5, r9
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	vstr s1, [r7, #0]
	add r1, r1, r5
	add r1, r1, r0, lsl #2
	vldr s2, [r1, #0]
	mov r1, r4
	sub r4, r4, #16
	cmn r4, #1
	ble label132
	b label131
label132:
	sub r4, r1, #16
	cmn r4, #1
	ble label139
	b label138
label139:
	sub r4, r1, #16
	cmn r4, #1
	ble label146
	b label145
label146:
	movw r4, #1080
	mul r5, r1, r4
	add r5, r3, r5
	add r5, r5, r0, lsl #2
	movw r6, #51281
	movt r6, #48700
	vmov s5, r6
	vmul.f32 s5, s5, s2
	movw r6, #9998
	movt r6, #15851
	vmov s6, r6
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r6, #12860
	movt r6, #48923
	vmov s5, r6
	vmul.f32 s4, s5, s4
	vadd.f32 s5, s3, s4
	vstr s5, [r5, #0]
	mul r4, r1, r4
	ldr r5, [sp, #0]
	add r4, r5, r4
	add r4, r4, r0, lsl #2
	vldr s6, [r4, #0]
	sub r1, r1, #1
	cmn r1, #1
	ble label152
	vmov.f32 s4, s1
	vmov.f32 s3, s2
	vmov.f32 s1, s5
	vmov.f32 s2, s6
	b label146
label152:
	add r0, r0, #1
	movw r1, #270
	cmp r0, r1
	bge label2197
	mov r1, #0
	vmov s1, r1
	vmov s2, r1
	vmov s4, r1
	vmov s3, r1
	movw r1, #511
	sub r4, r1, #16
	cmn r4, #1
	ble label132
	b label131
label138:
	movw r5, #1080
	mul r6, r1, r5
	add r7, r3, r6
	add r10, r7, r0, lsl #2
	movw r6, #51281
	movt r6, #48700
	vmov s5, r6
	vmul.f32 s5, s5, s2
	movw r8, #9998
	movt r8, #15851
	vmov s6, r8
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r9, #12860
	movt r9, #48923
	vmov s5, r9
	vmul.f32 s4, s5, s4
	vadd.f32 s3, s3, s4
	vstr s3, [r10, #0]
	mul r1, r1, r5
	ldr r5, [sp, #0]
	add r1, r5, r1
	add r5, r1, r0, lsl #2
	vldr s4, [r5, #0]
	movw r5, #64456
	movt r5, #65535
	add r10, r7, r5
	add r10, r10, r0, lsl #2
	vmov s5, r6
	vmul.f32 s5, s5, s4
	vmul.f32 s2, s6, s2
	vadd.f32 s2, s5, s2
	vmul.f32 s5, s0, s3
	vadd.f32 s2, s2, s5
	vmov s5, r9
	vmul.f32 s1, s5, s1
	vadd.f32 s2, s2, s1
	vstr s2, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s5, [r5, #0]
	sub r5, r7, #2160
	add r5, r5, r0, lsl #2
	vmov s1, r6
	vmul.f32 s1, s1, s5
	vmul.f32 s4, s6, s4
	vadd.f32 s1, s1, s4
	vmul.f32 s4, s0, s2
	vadd.f32 s1, s1, s4
	vmov s4, r9
	vmul.f32 s3, s4, s3
	vadd.f32 s1, s1, s3
	vstr s1, [r5, #0]
	sub r5, r1, #2160
	add r5, r5, r0, lsl #2
	vldr s4, [r5, #0]
	movw r5, #62296
	movt r5, #65535
	add r10, r7, r5
	add r10, r10, r0, lsl #2
	vmov s3, r6
	vmul.f32 s3, s3, s4
	vmul.f32 s5, s6, s5
	vadd.f32 s3, s3, s5
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	vmov s5, r9
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s3, [r5, #0]
	movw r5, #61216
	movt r5, #65535
	add r10, r7, r5
	add r10, r10, r0, lsl #2
	vmov s5, r6
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r9
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s4, [r5, #0]
	movw r5, #60136
	movt r5, #65535
	add r10, r7, r5
	add r10, r10, r0, lsl #2
	vmov s5, r6
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	vmov s5, r9
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s3, [r5, #0]
	movw r5, #59056
	movt r5, #65535
	add r10, r7, r5
	add r10, r10, r0, lsl #2
	vmov s5, r6
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r9
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s4, [r5, #0]
	movw r5, #57976
	movt r5, #65535
	add r10, r7, r5
	add r10, r10, r0, lsl #2
	vmov s5, r6
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	vmov s5, r9
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s3, [r5, #0]
	sub r5, r7, #8640
	add r5, r5, r0, lsl #2
	vmov s5, r6
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r9
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r5, #0]
	sub r5, r1, #8640
	add r5, r5, r0, lsl #2
	vldr s4, [r5, #0]
	movw r5, #55816
	movt r5, #65535
	add r10, r7, r5
	add r10, r10, r0, lsl #2
	vmov s5, r6
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	vmov s5, r9
	vmul.f32 s2, s5, s2
	vadd.f32 s3, s3, s2
	vstr s3, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s5, [r5, #0]
	movw r5, #54736
	movt r5, #65535
	add r10, r7, r5
	add r10, r10, r0, lsl #2
	vmov s2, r6
	vmul.f32 s2, s2, s5
	vmul.f32 s4, s6, s4
	vadd.f32 s2, s2, s4
	vmul.f32 s4, s0, s3
	vadd.f32 s2, s2, s4
	vmov s4, r9
	vmul.f32 s1, s4, s1
	vadd.f32 s2, s2, s1
	vstr s2, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s4, [r5, #0]
	movw r5, #53656
	movt r5, #65535
	add r10, r7, r5
	add r10, r10, r0, lsl #2
	vmov s1, r6
	vmul.f32 s1, s1, s4
	vmul.f32 s5, s6, s5
	vadd.f32 s1, s1, s5
	vmul.f32 s5, s0, s2
	vadd.f32 s1, s1, s5
	vmov s5, r9
	vmul.f32 s3, s5, s3
	vadd.f32 s1, s1, s3
	vstr s1, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s3, [r5, #0]
	movw r5, #52576
	movt r5, #65535
	add r10, r7, r5
	add r10, r10, r0, lsl #2
	vmov s5, r6
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	vmov s5, r9
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s4, [r5, #0]
	movw r5, #51496
	movt r5, #65535
	add r10, r7, r5
	add r10, r10, r0, lsl #2
	vmov s5, r6
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s2
	vadd.f32 s3, s3, s5
	vmov s5, r9
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s5, [r5, #0]
	movw r5, #50416
	movt r5, #65535
	add r10, r7, r5
	add r10, r10, r0, lsl #2
	vmov s3, r6
	vmul.f32 s3, s3, s5
	vmul.f32 s4, s6, s4
	vadd.f32 s3, s3, s4
	vmul.f32 s4, s0, s1
	vadd.f32 s3, s3, s4
	vmov s4, r9
	vmul.f32 s2, s4, s2
	vadd.f32 s4, s3, s2
	vstr s4, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s3, [r5, #0]
	movw r5, #49336
	movt r5, #65535
	add r7, r7, r5
	add r7, r7, r0, lsl #2
	vmov s2, r6
	vmul.f32 s2, s2, s3
	vmul.f32 s5, s6, s5
	vadd.f32 s2, s2, s5
	vmul.f32 s5, s0, s4
	vadd.f32 s2, s2, s5
	vmov s5, r9
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	vstr s1, [r7, #0]
	add r1, r1, r5
	add r1, r1, r0, lsl #2
	vldr s2, [r1, #0]
	mov r1, r4
	sub r4, r4, #16
	cmn r4, #1
	ble label139
	b label138
label101:
	add r8, r5, r0, lsl #2
	add r9, r7, r0, lsl #2
	vldr s1, [r9, #0]
	add r0, r6, r0, lsl #2
	vldr s2, [r0, #0]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #0]
	vldr s1, [r9, #4]
	vldr s2, [r0, #4]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #4]
	vldr s1, [r9, #8]
	vldr s2, [r0, #8]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #8]
	vldr s1, [r9, #12]
	vldr s2, [r0, #12]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #12]
	vldr s1, [r9, #16]
	vldr s2, [r0, #16]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #16]
	vldr s1, [r9, #20]
	vldr s2, [r0, #20]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #20]
	vldr s1, [r9, #24]
	vldr s2, [r0, #24]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #24]
	vldr s1, [r9, #28]
	vldr s2, [r0, #28]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #28]
	vldr s1, [r9, #32]
	vldr s2, [r0, #32]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #32]
	vldr s1, [r9, #36]
	vldr s2, [r0, #36]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #36]
	vldr s1, [r9, #40]
	vldr s2, [r0, #40]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #40]
	vldr s1, [r9, #44]
	vldr s2, [r0, #44]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #44]
	vldr s1, [r9, #48]
	vldr s2, [r0, #48]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #48]
	vldr s1, [r9, #52]
	vldr s2, [r0, #52]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #52]
	vldr s1, [r9, #56]
	vldr s2, [r0, #56]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #56]
	vldr s1, [r9, #60]
	vldr s2, [r0, #60]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #60]
	mov r0, r4
	add r4, r4, #16
	movw r8, #270
	cmp r4, r8
	bge label102
	b label101
label95:
	add r8, r5, r0, lsl #2
	add r9, r7, r0, lsl #2
	vldr s1, [r9, #0]
	add r0, r6, r0, lsl #2
	vldr s2, [r0, #0]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #0]
	vldr s1, [r9, #4]
	vldr s2, [r0, #4]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #4]
	vldr s1, [r9, #8]
	vldr s2, [r0, #8]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #8]
	vldr s1, [r9, #12]
	vldr s2, [r0, #12]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #12]
	vldr s1, [r9, #16]
	vldr s2, [r0, #16]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #16]
	vldr s1, [r9, #20]
	vldr s2, [r0, #20]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #20]
	vldr s1, [r9, #24]
	vldr s2, [r0, #24]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #24]
	vldr s1, [r9, #28]
	vldr s2, [r0, #28]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #28]
	vldr s1, [r9, #32]
	vldr s2, [r0, #32]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #32]
	vldr s1, [r9, #36]
	vldr s2, [r0, #36]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #36]
	vldr s1, [r9, #40]
	vldr s2, [r0, #40]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #40]
	vldr s1, [r9, #44]
	vldr s2, [r0, #44]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #44]
	vldr s1, [r9, #48]
	vldr s2, [r0, #48]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #48]
	vldr s1, [r9, #52]
	vldr s2, [r0, #52]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #52]
	vldr s1, [r9, #56]
	vldr s2, [r0, #56]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #56]
	vldr s1, [r9, #60]
	vldr s2, [r0, #60]
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #60]
	mov r0, r4
	add r4, r4, #16
	movw r8, #270
	cmp r4, r8
	bge label96
	b label95
label145:
	movw r5, #1080
	mul r6, r1, r5
	add r6, r3, r6
	add r10, r6, r0, lsl #2
	movw r7, #51281
	movt r7, #48700
	vmov s5, r7
	vmul.f32 s5, s5, s2
	movw r8, #9998
	movt r8, #15851
	vmov s6, r8
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r9, #12860
	movt r9, #48923
	vmov s5, r9
	vmul.f32 s4, s5, s4
	vadd.f32 s3, s3, s4
	vstr s3, [r10, #0]
	mul r1, r1, r5
	ldr r5, [sp, #0]
	add r1, r5, r1
	add r5, r1, r0, lsl #2
	vldr s5, [r5, #0]
	movw r5, #64456
	movt r5, #65535
	add r10, r6, r5
	add r10, r10, r0, lsl #2
	vmov s4, r7
	vmul.f32 s4, s4, s5
	vmul.f32 s2, s6, s2
	vadd.f32 s2, s4, s2
	vmul.f32 s4, s0, s3
	vadd.f32 s2, s2, s4
	vmov s4, r9
	vmul.f32 s1, s4, s1
	vadd.f32 s2, s2, s1
	vstr s2, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s4, [r5, #0]
	sub r5, r6, #2160
	add r5, r5, r0, lsl #2
	vmov s1, r7
	vmul.f32 s1, s1, s4
	vmul.f32 s5, s6, s5
	vadd.f32 s1, s1, s5
	vmul.f32 s5, s0, s2
	vadd.f32 s1, s1, s5
	vmov s5, r9
	vmul.f32 s3, s5, s3
	vadd.f32 s1, s1, s3
	vstr s1, [r5, #0]
	sub r5, r1, #2160
	add r5, r5, r0, lsl #2
	vldr s3, [r5, #0]
	movw r5, #62296
	movt r5, #65535
	add r10, r6, r5
	add r10, r10, r0, lsl #2
	vmov s5, r7
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	vmov s5, r9
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s4, [r5, #0]
	movw r5, #61216
	movt r5, #65535
	add r10, r6, r5
	add r10, r10, r0, lsl #2
	vmov s5, r7
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s2
	vadd.f32 s3, s3, s5
	vmov s5, r9
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s5, [r5, #0]
	movw r5, #60136
	movt r5, #65535
	add r10, r6, r5
	add r10, r10, r0, lsl #2
	vmov s3, r7
	vmul.f32 s3, s3, s5
	vmul.f32 s4, s6, s4
	vadd.f32 s3, s3, s4
	vmul.f32 s4, s0, s1
	vadd.f32 s3, s3, s4
	vmov s4, r9
	vmul.f32 s2, s4, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s3, [r5, #0]
	movw r5, #59056
	movt r5, #65535
	add r10, r6, r5
	add r10, r10, r0, lsl #2
	vmov s4, r7
	vmul.f32 s4, s4, s3
	vmul.f32 s5, s6, s5
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r9
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s4, [r5, #0]
	movw r5, #57976
	movt r5, #65535
	add r10, r6, r5
	add r10, r10, r0, lsl #2
	vmov s5, r7
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	vmov s5, r9
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s5, [r5, #0]
	sub r5, r6, #8640
	add r5, r5, r0, lsl #2
	vmov s3, r7
	vmul.f32 s3, s3, s5
	vmul.f32 s4, s6, s4
	vadd.f32 s3, s3, s4
	vmul.f32 s4, s0, s2
	vadd.f32 s3, s3, s4
	vmov s4, r9
	vmul.f32 s1, s4, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r5, #0]
	sub r5, r1, #8640
	add r5, r5, r0, lsl #2
	vldr s3, [r5, #0]
	movw r5, #55816
	movt r5, #65535
	add r10, r6, r5
	add r10, r10, r0, lsl #2
	vmov s4, r7
	vmul.f32 s4, s4, s3
	vmul.f32 s5, s6, s5
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	vmov s5, r9
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s5, [r5, #0]
	movw r5, #54736
	movt r5, #65535
	add r10, r6, r5
	add r10, r10, r0, lsl #2
	vmov s4, r7
	vmul.f32 s4, s4, s5
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s4, s3
	vmul.f32 s4, s0, s2
	vadd.f32 s3, s3, s4
	vmov s4, r9
	vmul.f32 s1, s4, s1
	vadd.f32 s3, s3, s1
	vstr s3, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s4, [r5, #0]
	movw r5, #53656
	movt r5, #65535
	add r10, r6, r5
	add r10, r10, r0, lsl #2
	vmov s1, r7
	vmul.f32 s1, s1, s4
	vmul.f32 s5, s6, s5
	vadd.f32 s1, s1, s5
	vmul.f32 s5, s0, s3
	vadd.f32 s1, s1, s5
	vmov s5, r9
	vmul.f32 s2, s5, s2
	vadd.f32 s1, s1, s2
	vstr s1, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s5, [r5, #0]
	movw r5, #52576
	movt r5, #65535
	add r10, r6, r5
	add r10, r10, r0, lsl #2
	vmov s2, r7
	vmul.f32 s2, s2, s5
	vmul.f32 s4, s6, s4
	vadd.f32 s2, s2, s4
	vmul.f32 s4, s0, s1
	vadd.f32 s2, s2, s4
	vmov s4, r9
	vmul.f32 s3, s4, s3
	vadd.f32 s2, s2, s3
	vstr s2, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s3, [r5, #0]
	movw r5, #51496
	movt r5, #65535
	add r10, r6, r5
	add r10, r10, r0, lsl #2
	vmov s4, r7
	vmul.f32 s4, s4, s3
	vmul.f32 s5, s6, s5
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r9
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s5, [r5, #0]
	movw r5, #50416
	movt r5, #65535
	add r10, r6, r5
	add r10, r10, r0, lsl #2
	vmov s4, r7
	vmul.f32 s4, s4, s5
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s4, s3
	vmul.f32 s4, s0, s1
	vadd.f32 s3, s3, s4
	vmov s4, r9
	vmul.f32 s2, s4, s2
	vadd.f32 s4, s3, s2
	vstr s4, [r10, #0]
	add r5, r1, r5
	add r5, r5, r0, lsl #2
	vldr s3, [r5, #0]
	movw r5, #49336
	movt r5, #65535
	add r6, r6, r5
	add r6, r6, r0, lsl #2
	vmov s2, r7
	vmul.f32 s2, s2, s3
	vmul.f32 s5, s6, s5
	vadd.f32 s2, s2, s5
	vmul.f32 s5, s0, s4
	vadd.f32 s2, s2, s5
	vmov s5, r9
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	vstr s1, [r6, #0]
	add r1, r1, r5
	add r1, r1, r0, lsl #2
	vldr s2, [r1, #0]
	mov r1, r4
	sub r4, r4, #16
	cmn r4, #1
	ble label146
	b label145
label117:
	add r8, r5, r0, lsl #2
	add r9, r7, r0, lsl #2
	vldr s0, [r9, #0]
	add r0, r6, r0, lsl #2
	vldr s1, [r0, #0]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #0]
	vldr s0, [r9, #4]
	vldr s1, [r0, #4]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #4]
	vldr s0, [r9, #8]
	vldr s1, [r0, #8]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #8]
	vldr s0, [r9, #12]
	vldr s1, [r0, #12]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #12]
	vldr s0, [r9, #16]
	vldr s1, [r0, #16]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #16]
	vldr s0, [r9, #20]
	vldr s1, [r0, #20]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #20]
	vldr s0, [r9, #24]
	vldr s1, [r0, #24]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #24]
	vldr s0, [r9, #28]
	vldr s1, [r0, #28]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #28]
	vldr s0, [r9, #32]
	vldr s1, [r0, #32]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #32]
	vldr s0, [r9, #36]
	vldr s1, [r0, #36]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #36]
	vldr s0, [r9, #40]
	vldr s1, [r0, #40]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #40]
	vldr s0, [r9, #44]
	vldr s1, [r0, #44]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #44]
	vldr s0, [r9, #48]
	vldr s1, [r0, #48]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #48]
	vldr s0, [r9, #52]
	vldr s1, [r0, #52]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #52]
	vldr s0, [r9, #56]
	vldr s1, [r0, #56]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #56]
	vldr s0, [r9, #60]
	vldr s1, [r0, #60]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #60]
	mov r0, r4
	add r4, r4, #16
	movw r8, #270
	cmp r4, r8
	bge label118
	b label117
label120:
	add r8, r5, r0, lsl #2
	add r9, r7, r0, lsl #2
	vldr s0, [r9, #0]
	add r0, r6, r0, lsl #2
	vldr s1, [r0, #0]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #0]
	vldr s0, [r9, #4]
	vldr s1, [r0, #4]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #4]
	vldr s0, [r9, #8]
	vldr s1, [r0, #8]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #8]
	vldr s0, [r9, #12]
	vldr s1, [r0, #12]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #12]
	vldr s0, [r9, #16]
	vldr s1, [r0, #16]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #16]
	vldr s0, [r9, #20]
	vldr s1, [r0, #20]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #20]
	vldr s0, [r9, #24]
	vldr s1, [r0, #24]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #24]
	vldr s0, [r9, #28]
	vldr s1, [r0, #28]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #28]
	vldr s0, [r9, #32]
	vldr s1, [r0, #32]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #32]
	vldr s0, [r9, #36]
	vldr s1, [r0, #36]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #36]
	vldr s0, [r9, #40]
	vldr s1, [r0, #40]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #40]
	vldr s0, [r9, #44]
	vldr s1, [r0, #44]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #44]
	vldr s0, [r9, #48]
	vldr s1, [r0, #48]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #48]
	vldr s0, [r9, #52]
	vldr s1, [r0, #52]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #52]
	vldr s0, [r9, #56]
	vldr s1, [r0, #56]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #56]
	vldr s0, [r9, #60]
	vldr s1, [r0, #60]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #60]
	mov r0, r4
	add r4, r4, #16
	movw r8, #270
	cmp r4, r8
	bge label121
	b label120
label80:
	add r8, r6, r1, lsl #2
	movw r9, #51281
	movt r9, #48700
	vmov s5, r9
	vmul.f32 s5, s5, s2
	movw r10, #9998
	movt r10, #15851
	vmov s6, r10
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r11, #12860
	movt r11, #48923
	vmov s5, r11
	vmul.f32 s4, s5, s4
	vadd.f32 s3, s3, s4
	vstr s3, [r8, #0]
	add r1, r5, r1, lsl #2
	vldr s5, [r1, #0]
	vmov s4, r9
	vmul.f32 s4, s4, s5
	vmul.f32 s2, s6, s2
	vadd.f32 s2, s4, s2
	vmul.f32 s4, s0, s3
	vadd.f32 s2, s2, s4
	vmov s4, r11
	vmul.f32 s1, s4, s1
	vadd.f32 s2, s2, s1
	vstr s2, [r8, #-4]
	vldr s4, [r1, #-4]
	vmov s1, r9
	vmul.f32 s1, s1, s4
	vmul.f32 s5, s6, s5
	vadd.f32 s1, s1, s5
	vmul.f32 s5, s0, s2
	vadd.f32 s1, s1, s5
	vmov s5, r11
	vmul.f32 s3, s5, s3
	vadd.f32 s1, s1, s3
	vstr s1, [r8, #-8]
	vldr s3, [r1, #-8]
	vmov s5, r9
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r8, #-12]
	vldr s4, [r1, #-12]
	vmov s5, r9
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s2
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r8, #-16]
	vldr s3, [r1, #-16]
	vmov s5, r9
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r8, #-20]
	vldr s5, [r1, #-20]
	vmov s4, r9
	vmul.f32 s4, s4, s5
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s4, s3
	vmul.f32 s4, s0, s2
	vadd.f32 s3, s3, s4
	vmov s4, r11
	vmul.f32 s1, s4, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r8, #-24]
	vldr s4, [r1, #-24]
	vmov s3, r9
	vmul.f32 s3, s3, s4
	vmul.f32 s5, s6, s5
	vadd.f32 s3, s3, s5
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r8, #-28]
	vldr s3, [r1, #-28]
	vmov s5, r9
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r8, #-32]
	vldr s5, [r1, #-32]
	vmov s4, r9
	vmul.f32 s4, s4, s5
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s4, s3
	vmul.f32 s4, s0, s1
	vadd.f32 s3, s3, s4
	vmov s4, r11
	vmul.f32 s2, s4, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r8, #-36]
	vldr s4, [r1, #-36]
	vmov s3, r9
	vmul.f32 s3, s3, s4
	vmul.f32 s5, s6, s5
	vadd.f32 s3, s3, s5
	vmul.f32 s5, s0, s2
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s3, s3, s1
	vstr s3, [r8, #-40]
	vldr s5, [r1, #-40]
	vmov s1, r9
	vmul.f32 s1, s1, s5
	vmul.f32 s4, s6, s4
	vadd.f32 s1, s1, s4
	vmul.f32 s4, s0, s3
	vadd.f32 s1, s1, s4
	vmov s4, r11
	vmul.f32 s2, s4, s2
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #-44]
	vldr s4, [r1, #-44]
	vmov s2, r9
	vmul.f32 s2, s2, s4
	vmul.f32 s5, s6, s5
	vadd.f32 s2, s2, s5
	vmul.f32 s5, s0, s1
	vadd.f32 s2, s2, s5
	vmov s5, r11
	vmul.f32 s3, s5, s3
	vadd.f32 s2, s2, s3
	vstr s2, [r8, #-48]
	vldr s3, [r1, #-48]
	vmov s5, r9
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r8, #-52]
	vldr s5, [r1, #-52]
	vmov s4, r9
	vmul.f32 s4, s4, s5
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s4, s3
	vmul.f32 s4, s0, s1
	vadd.f32 s3, s3, s4
	vmov s4, r11
	vmul.f32 s2, s4, s2
	vadd.f32 s4, s3, s2
	vstr s4, [r8, #-56]
	vldr s3, [r1, #-56]
	vmov s2, r9
	vmul.f32 s2, s2, s3
	vmul.f32 s5, s6, s5
	vadd.f32 s2, s2, s5
	vmul.f32 s5, s0, s4
	vadd.f32 s2, s2, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	vstr s1, [r8, #-60]
	vldr s2, [r1, #-60]
	mov r1, r7
	sub r7, r7, #16
	cmn r7, #1
	ble label81
	b label80
label58:
	add r8, r6, r1, lsl #2
	add r1, r5, r1, lsl #2
	vldr s4, [r1, #0]
	movw r9, #61929
	movt r9, #48705
	vmov s5, r9
	vmul.f32 s5, s5, s4
	movw r10, #35322
	movt r10, #15842
	vmov s6, r10
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r11, #12860
	movt r11, #48923
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r8, #0]
	vldr s3, [r1, #4]
	vmov s5, r9
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r8, #4]
	vldr s4, [r1, #8]
	vmov s5, r9
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r8, #8]
	vldr s3, [r1, #12]
	vmov s5, r9
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r8, #12]
	vldr s4, [r1, #16]
	vmov s5, r9
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r8, #16]
	vldr s3, [r1, #20]
	vmov s5, r9
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r8, #20]
	vldr s5, [r1, #24]
	vmov s4, r9
	vmul.f32 s4, s4, s5
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s4, s3
	vmul.f32 s4, s0, s1
	vadd.f32 s3, s3, s4
	vmov s4, r11
	vmul.f32 s2, s4, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r8, #24]
	vldr s4, [r1, #28]
	vmov s3, r9
	vmul.f32 s3, s3, s4
	vmul.f32 s5, s6, s5
	vadd.f32 s3, s3, s5
	vmul.f32 s5, s0, s2
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s3, s3, s1
	vstr s3, [r8, #28]
	vldr s5, [r1, #32]
	vmov s1, r9
	vmul.f32 s1, s1, s5
	vmul.f32 s4, s6, s4
	vadd.f32 s1, s1, s4
	vmul.f32 s4, s0, s3
	vadd.f32 s1, s1, s4
	vmov s4, r11
	vmul.f32 s2, s4, s2
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #32]
	vldr s4, [r1, #36]
	vmov s2, r9
	vmul.f32 s2, s2, s4
	vmul.f32 s5, s6, s5
	vadd.f32 s2, s2, s5
	vmul.f32 s5, s0, s1
	vadd.f32 s2, s2, s5
	vmov s5, r11
	vmul.f32 s3, s5, s3
	vadd.f32 s2, s2, s3
	vstr s2, [r8, #36]
	vldr s5, [r1, #40]
	vmov s3, r9
	vmul.f32 s3, s3, s5
	vmul.f32 s4, s6, s4
	vadd.f32 s3, s3, s4
	vmul.f32 s4, s0, s2
	vadd.f32 s3, s3, s4
	vmov s4, r11
	vmul.f32 s1, s4, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r8, #40]
	vldr s3, [r1, #44]
	vmov s4, r9
	vmul.f32 s4, s4, s3
	vmul.f32 s5, s6, s5
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r8, #44]
	vldr s4, [r1, #48]
	vmov s5, r9
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s2
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r8, #48]
	vldr s3, [r1, #52]
	vmov s5, r9
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s4, s4, s2
	vstr s4, [r8, #52]
	vldr s5, [r1, #56]
	vmov s2, r9
	vmul.f32 s2, s2, s5
	vmul.f32 s3, s6, s3
	vadd.f32 s2, s2, s3
	vmul.f32 s3, s0, s4
	vadd.f32 s2, s2, s3
	vmov s3, r11
	vmul.f32 s1, s3, s1
	vadd.f32 s2, s2, s1
	vstr s2, [r8, #56]
	vldr s3, [r1, #60]
	vmov s1, r9
	vmul.f32 s1, s1, s3
	vmul.f32 s5, s6, s5
	vadd.f32 s1, s1, s5
	vmul.f32 s5, s0, s2
	vadd.f32 s1, s1, s5
	vmov s5, r11
	vmul.f32 s4, s5, s4
	vadd.f32 s1, s1, s4
	vstr s1, [r8, #60]
	mov r1, r7
	add r7, r7, #16
	movw r8, #270
	cmp r7, r8
	bge label40
	b label58
label174:
	movw r8, #1080
	mul r5, r1, r8
	add r6, r2, r5
	add r9, r6, r0, lsl #2
	mul r1, r1, r8
	ldr r5, [sp, #0]
	add r1, r5, r1
	add r5, r1, r0, lsl #2
	vldr s4, [r5, #0]
	movw r5, #61929
	movt r5, #48705
	vmov s5, r5
	vmul.f32 s5, s5, s4
	movw r7, #35322
	movt r7, #15842
	vmov s6, r7
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r10, #12860
	movt r10, #48923
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r9, #0]
	add r9, r6, r8
	add r9, r9, r0, lsl #2
	add r8, r1, r8
	add r8, r8, r0, lsl #2
	vldr s3, [r8, #0]
	vmov s5, r5
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r9, #0]
	add r8, r6, #2160
	add r8, r8, r0, lsl #2
	add r9, r1, #2160
	add r9, r9, r0, lsl #2
	vldr s4, [r9, #0]
	vmov s5, r5
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r8, #0]
	movw r9, #3240
	add r8, r6, r9
	add r8, r8, r0, lsl #2
	add r9, r1, r9
	add r9, r9, r0, lsl #2
	vldr s3, [r9, #0]
	vmov s5, r5
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r8, #0]
	movw r9, #4320
	add r8, r6, r9
	add r8, r8, r0, lsl #2
	add r9, r1, r9
	add r9, r9, r0, lsl #2
	vldr s4, [r9, #0]
	vmov s5, r5
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r8, #0]
	movw r9, #5400
	add r8, r6, r9
	add r8, r8, r0, lsl #2
	add r9, r1, r9
	add r9, r9, r0, lsl #2
	vldr s3, [r9, #0]
	vmov s5, r5
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r8, #0]
	movw r9, #6480
	add r8, r6, r9
	add r8, r8, r0, lsl #2
	add r9, r1, r9
	add r9, r9, r0, lsl #2
	vldr s4, [r9, #0]
	vmov s5, r5
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r8, #0]
	movw r9, #7560
	add r8, r6, r9
	add r8, r8, r0, lsl #2
	add r9, r1, r9
	add r9, r9, r0, lsl #2
	vldr s5, [r9, #0]
	vmov s3, r5
	vmul.f32 s3, s3, s5
	vmul.f32 s4, s6, s4
	vadd.f32 s3, s3, s4
	vmul.f32 s4, s0, s2
	vadd.f32 s3, s3, s4
	vmov s4, r10
	vmul.f32 s1, s4, s1
	vadd.f32 s3, s3, s1
	vstr s3, [r8, #0]
	add r8, r6, #8640
	add r8, r8, r0, lsl #2
	add r9, r1, #8640
	add r9, r9, r0, lsl #2
	vldr s4, [r9, #0]
	vmov s1, r5
	vmul.f32 s1, s1, s4
	vmul.f32 s5, s6, s5
	vadd.f32 s1, s1, s5
	vmul.f32 s5, s0, s3
	vadd.f32 s1, s1, s5
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s1, s1, s2
	vstr s1, [r8, #0]
	movw r9, #9720
	add r8, r6, r9
	add r8, r8, r0, lsl #2
	add r9, r1, r9
	add r9, r9, r0, lsl #2
	vldr s5, [r9, #0]
	vmov s2, r5
	vmul.f32 s2, s2, s5
	vmul.f32 s4, s6, s4
	vadd.f32 s2, s2, s4
	vmul.f32 s4, s0, s1
	vadd.f32 s2, s2, s4
	vmov s4, r10
	vmul.f32 s3, s4, s3
	vadd.f32 s2, s2, s3
	vstr s2, [r8, #0]
	movw r9, #10800
	add r8, r6, r9
	add r8, r8, r0, lsl #2
	add r9, r1, r9
	add r9, r9, r0, lsl #2
	vldr s3, [r9, #0]
	vmov s4, r5
	vmul.f32 s4, s4, s3
	vmul.f32 s5, s6, s5
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r8, #0]
	movw r9, #11880
	add r8, r6, r9
	add r8, r8, r0, lsl #2
	add r9, r1, r9
	add r9, r9, r0, lsl #2
	vldr s4, [r9, #0]
	vmov s5, r5
	vmul.f32 s5, s5, s4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r8, #0]
	movw r9, #12960
	add r8, r6, r9
	add r8, r8, r0, lsl #2
	add r9, r1, r9
	add r9, r9, r0, lsl #2
	vldr s3, [r9, #0]
	vmov s5, r5
	vmul.f32 s5, s5, s3
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s2
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r8, #0]
	movw r9, #14040
	add r8, r6, r9
	add r8, r8, r0, lsl #2
	add r9, r1, r9
	add r9, r9, r0, lsl #2
	vldr s5, [r9, #0]
	vmov s4, r5
	vmul.f32 s4, s4, s5
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s4, s3
	vmul.f32 s4, s0, s1
	vadd.f32 s3, s3, s4
	vmov s4, r10
	vmul.f32 s2, s4, s2
	vadd.f32 s4, s3, s2
	vstr s4, [r8, #0]
	movw r9, #15120
	add r8, r6, r9
	add r8, r8, r0, lsl #2
	add r9, r1, r9
	add r9, r9, r0, lsl #2
	vldr s6, [r9, #0]
	vmov s2, r5
	vmul.f32 s2, s2, s6
	vmov s3, r7
	vmul.f32 s3, s3, s5
	vadd.f32 s2, s2, s3
	vmul.f32 s3, s0, s4
	vadd.f32 s2, s2, s3
	vmov s3, r10
	vmul.f32 s1, s3, s1
	vadd.f32 s2, s2, s1
	vstr s2, [r8, #0]
	movw r8, #16200
	add r6, r6, r8
	add r6, r6, r0, lsl #2
	add r1, r1, r8
	add r1, r1, r0, lsl #2
	vldr s3, [r1, #0]
	vmov s1, r5
	vmul.f32 s1, s1, s3
	vmov s5, r7
	vmul.f32 s5, s5, s6
	vadd.f32 s1, s1, s5
	vmul.f32 s5, s0, s2
	vadd.f32 s1, s1, s5
	vmov s5, r10
	vmul.f32 s4, s5, s4
	vadd.f32 s1, s1, s4
	vstr s1, [r6, #0]
	mov r1, r4
	add r4, r4, #16
	cmp r4, #512
	bge label168
	b label174
label55:
	add r0, r0, #1
	cmp r0, #512
	bge label191
	b label190
label87:
	add r0, r0, #1
	cmp r0, #512
	bge label1019
	b label61
label104:
	add r1, r1, #1
	cmp r1, #512
	bge label1850
	movw r0, #1080
	mul r4, r1, r0
	add r6, r3, r4
	add r7, r2, r4
	mul r0, r1, r0
	ldr r5, [sp, #0]
	add r5, r5, r0
	mov r0, #0
	add r4, r0, #16
	movw r8, #270
	cmp r4, r8
	bge label96
	b label95
