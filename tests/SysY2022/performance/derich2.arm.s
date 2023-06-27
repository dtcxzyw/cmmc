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
	mov r0, #1073741824
	vmov s0, r0
	mov r1, #0
	bl newPow
	movw r5, #:lower16:imgOut
	movt r5, #:upper16:imgOut
	str r5, [sp, #0]
	movw r0, #:lower16:my_y1
	movt r0, #:upper16:my_y1
	movw r1, #:lower16:my_y2
	movt r1, #:upper16:my_y2
	mov r2, #0
	cmp r2, #512
	bge label191
label190:
	movw r3, #1080
	mul r5, r2, r3
	add r5, r4, r5
	mul r3, r2, r3
	add r6, r0, r3
	mov r3, #0
	vmov s1, r3
	vmov s3, r3
	vmov s2, r3
	add r7, r3, #16
	movw r8, #270
	cmp r7, r8
	bge label158
	b label176
label191:
	mov r2, #0
	cmp r2, #512
	bge label195
	b label36
label195:
	mov r3, #0
	cmp r3, #512
	bge label1026
	movw r2, #1080
	mul r4, r3, r2
	add r6, r1, r4
	add r7, r0, r4
	mul r2, r3, r2
	ldr r5, [sp, #0]
	add r5, r5, r2
	mov r2, #0
	add r4, r2, #16
	movw r8, #270
	cmp r4, r8
	bge label71
	b label70
label1026:
	mov r2, #0
	movw r3, #270
	cmp r2, r3
	bge label1363
	mov r3, #0
	vmov s1, r3
	vmov s3, r3
	vmov s2, r3
	add r4, r3, #16
	cmp r4, #512
	bge label134
	b label133
label1363:
	mov r2, #0
	movw r3, #270
	cmp r2, r3
	bge label1373
	mov r3, #0
	vmov s1, r3
	vmov s2, r3
	vmov s4, r3
	vmov s3, r3
	movw r3, #511
	sub r4, r3, #16
	cmn r4, #1
	ble label106
	b label127
label1373:
	mov r3, #0
	cmp r3, #512
	bge label99
	b label1384
label134:
	add r4, r3, #16
	cmp r4, #512
	bge label139
	b label151
label36:
	movw r3, #1080
	mul r5, r2, r3
	add r5, r4, r5
	mul r3, r2, r3
	add r6, r1, r3
	mov r3, #0
	vmov s1, r3
	vmov s2, r3
	vmov s4, r3
	vmov s3, r3
	movw r3, #269
	sub r7, r3, #16
	cmn r7, #1
	ble label44
	b label43
label44:
	sub r7, r3, #16
	cmn r7, #1
	ble label51
label50:
	movw r8, #51281
	movt r8, #48700
	vmov s5, r8
	vmul.f32 s5, s5, s2
	movw r9, #9998
	movt r9, #15851
	vmov s6, r9
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r10, #12860
	movt r10, #48923
	vmov s5, r10
	vmul.f32 s4, s5, s4
	vadd.f32 s3, s3, s4
	add r11, r6, r3, lsl #2
	vstr s3, [r11, #0]
	vmul.f32 s5, s0, s3
	add r3, r5, r3, lsl #2
	vldr s4, [r3, #0]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmov s7, r9
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	vstr s1, [r11, #-4]
	vmul.f32 s2, s0, s1
	vldr s6, [r3, #-4]
	vmov s5, r8
	vmul.f32 s5, s5, s6
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s5, s4
	vadd.f32 s2, s4, s2
	vmov s4, r10
	vmul.f32 s3, s4, s3
	vadd.f32 s2, s2, s3
	vstr s2, [r11, #-8]
	vmul.f32 s3, s0, s2
	vldr s5, [r3, #-8]
	vmov s4, r8
	vmul.f32 s4, s4, s5
	vmul.f32 s6, s7, s6
	vadd.f32 s4, s4, s6
	vadd.f32 s3, s4, s3
	vmov s4, r10
	vmul.f32 s1, s4, s1
	vadd.f32 s3, s3, s1
	vstr s3, [r11, #-12]
	vmul.f32 s1, s0, s3
	vldr s4, [r3, #-12]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s1, s5, s1
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s1, s1, s2
	vstr s1, [r11, #-16]
	vmul.f32 s2, s0, s1
	vldr s5, [r3, #-16]
	vmov s6, r8
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s2, s4, s2
	vmov s4, r10
	vmul.f32 s3, s4, s3
	vadd.f32 s2, s2, s3
	vstr s2, [r11, #-20]
	vmul.f32 s3, s0, s2
	vldr s4, [r3, #-20]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s3, s5, s3
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r11, #-24]
	vmul.f32 s5, s0, s1
	vldr s3, [r3, #-24]
	vmov s6, r8
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r11, #-28]
	vmul.f32 s4, s0, s2
	vldr s5, [r3, #-28]
	vmov s6, r8
	vmul.f32 s6, s6, s5
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s4
	vmov s4, r10
	vmul.f32 s1, s4, s1
	vadd.f32 s3, s3, s1
	vstr s3, [r11, #-32]
	vmul.f32 s1, s0, s3
	vldr s4, [r3, #-32]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s1, s5, s1
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s1, s1, s2
	vstr s1, [r11, #-36]
	vmul.f32 s2, s0, s1
	vldr s5, [r3, #-36]
	vmov s6, r8
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s2, s4, s2
	vmov s4, r10
	vmul.f32 s3, s4, s3
	vadd.f32 s2, s2, s3
	vstr s2, [r11, #-40]
	vmul.f32 s4, s0, s2
	vldr s3, [r3, #-40]
	vmov s6, r8
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s4, s5, s4
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r11, #-44]
	vmul.f32 s5, s0, s1
	vldr s4, [r3, #-44]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r11, #-48]
	vmul.f32 s5, s0, s2
	vldr s3, [r3, #-48]
	vmov s6, r8
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r11, #-52]
	vmul.f32 s4, s0, s1
	vldr s5, [r3, #-52]
	vmov s6, r8
	vmul.f32 s6, s6, s5
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s4
	vmov s4, r10
	vmul.f32 s2, s4, s2
	vadd.f32 s4, s3, s2
	vstr s4, [r11, #-56]
	vmul.f32 s2, s0, s4
	vldr s3, [r3, #-56]
	vmov s6, r8
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s2, s5, s2
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	vstr s1, [r11, #-60]
	vldr s2, [r3, #-60]
	mov r3, r7
	sub r7, r7, #16
	cmn r7, #1
	ble label51
	b label50
label58:
	movw r7, #51281
	movt r7, #48700
	vmov s5, r7
	vmul.f32 s5, s5, s2
	movw r7, #9998
	movt r7, #15851
	vmov s6, r7
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r7, #12860
	movt r7, #48923
	vmov s5, r7
	vmul.f32 s4, s5, s4
	vadd.f32 s5, s3, s4
	add r7, r6, r3, lsl #2
	vstr s5, [r7, #0]
	add r7, r5, r3, lsl #2
	vldr s6, [r7, #0]
	sub r3, r3, #1
	cmn r3, #1
	ble label64
	vmov.f32 s4, s1
	vmov.f32 s3, s2
	vmov.f32 s1, s5
	vmov.f32 s2, s6
	b label58
label64:
	add r2, r2, #1
	cmp r2, #512
	bge label195
	b label36
label106:
	sub r4, r3, #16
	cmn r4, #1
	ble label112
	b label126
label139:
	add r4, r3, #16
	cmp r4, #512
	bge label144
label150:
	movw r9, #1080
	mul r6, r3, r9
	ldr r5, [sp, #0]
	add r6, r5, r6
	add r5, r6, r2, lsl #2
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
	movw r8, #12860
	movt r8, #48923
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	mul r3, r3, r9
	add r3, r0, r3
	add r10, r3, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s3, s0, s2
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s5, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s5
	vmov s7, r7
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s3, s4, s3
	vmov s4, r8
	vmul.f32 s1, s4, s1
	vadd.f32 s3, s3, s1
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s3, [r9, #0]
	vmul.f32 s1, s0, s3
	add r9, r6, #2160
	add r9, r9, r2, lsl #2
	vldr s4, [r9, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s1, s5, s1
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s1, s1, s2
	add r9, r3, #2160
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s2, s0, s1
	movw r9, #3240
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s5, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s2, s4, s2
	vmov s4, r8
	vmul.f32 s3, s4, s3
	vadd.f32 s2, s2, s3
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s4, s0, s2
	movw r9, #4320
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s3, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s4, s5, s4
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s5, s0, s1
	movw r9, #5400
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s4, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s3, s0, s2
	movw r9, #6480
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s5, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s3, s4, s3
	vmov s4, r8
	vmul.f32 s1, s4, s1
	vadd.f32 s3, s3, s1
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s3, [r9, #0]
	vmul.f32 s1, s0, s3
	movw r9, #7560
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s6, [r10, #0]
	vmov s4, r5
	vmul.f32 s4, s4, s6
	vmul.f32 s5, s7, s5
	vadd.f32 s4, s4, s5
	vadd.f32 s1, s4, s1
	vmov s4, r8
	vmul.f32 s2, s4, s2
	vadd.f32 s1, s1, s2
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s2, s0, s1
	add r9, r6, #8640
	add r9, r9, r2, lsl #2
	vldr s4, [r9, #0]
	vmov s5, r5
	vmul.f32 s5, s5, s4
	vmul.f32 s6, s7, s6
	vadd.f32 s5, s5, s6
	vadd.f32 s2, s5, s2
	vmov s5, r8
	vmul.f32 s3, s5, s3
	vadd.f32 s2, s2, s3
	add r9, r3, #8640
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s3, s0, s2
	movw r9, #9720
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s5, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s3, s4, s3
	vmov s4, r8
	vmul.f32 s1, s4, s1
	vadd.f32 s1, s3, s1
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s4, s0, s1
	movw r9, #10800
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s3, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s4, s5, s4
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s4, s0, s2
	movw r9, #11880
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s5, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s5
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s4
	vmov s4, r8
	vmul.f32 s1, s4, s1
	vadd.f32 s1, s3, s1
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s3, s0, s1
	movw r9, #12960
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s4, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s3, s5, s3
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s5, s0, s2
	movw r9, #14040
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s3, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s5, s0, s1
	movw r9, #15120
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s4, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s5, s0, s2
	movw r9, #16200
	add r6, r6, r9
	add r6, r6, r2, lsl #2
	vldr s3, [r6, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	add r3, r3, r9
	add r3, r3, r2, lsl #2
	vstr s1, [r3, #0]
	mov r3, r4
	add r4, r4, #16
	cmp r4, #512
	bge label144
	b label150
label144:
	movw r4, #1080
	mul r6, r3, r4
	ldr r5, [sp, #0]
	add r5, r5, r6
	add r5, r5, r2, lsl #2
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
	mul r4, r3, r4
	add r4, r0, r4
	add r4, r4, r2, lsl #2
	vstr s5, [r4, #0]
	add r3, r3, #1
	cmp r3, #512
	bge label149
	vmov.f32 s3, s4
	vmov.f32 s2, s1
	vmov.f32 s1, s5
	b label144
label149:
	add r2, r2, #1
	movw r3, #270
	cmp r2, r3
	bge label1363
	mov r3, #0
	vmov s1, r3
	vmov s3, r3
	vmov s2, r3
	add r4, r3, #16
	cmp r4, #512
	bge label134
	b label133
label112:
	sub r4, r3, #16
	cmn r4, #1
	ble label118
	b label125
label118:
	movw r4, #51281
	movt r4, #48700
	vmov s5, r4
	vmul.f32 s5, s5, s2
	movw r4, #9998
	movt r4, #15851
	vmov s6, r4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r4, #12860
	movt r4, #48923
	vmov s5, r4
	vmul.f32 s4, s5, s4
	vadd.f32 s5, s3, s4
	movw r4, #1080
	mul r5, r3, r4
	add r5, r1, r5
	add r5, r5, r2, lsl #2
	vstr s5, [r5, #0]
	mul r4, r3, r4
	ldr r5, [sp, #0]
	add r4, r5, r4
	add r4, r4, r2, lsl #2
	vldr s6, [r4, #0]
	sub r3, r3, #1
	cmn r3, #1
	ble label124
	vmov.f32 s4, s1
	vmov.f32 s3, s2
	vmov.f32 s1, s5
	vmov.f32 s2, s6
	b label118
label158:
	add r7, r3, #16
	movw r8, #270
	cmp r7, r8
	bge label164
label163:
	add r8, r5, r3, lsl #2
	vldr s4, [r8, #0]
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
	add r3, r6, r3, lsl #2
	vstr s2, [r3, #0]
	vmul.f32 s5, s0, s2
	vldr s3, [r8, #4]
	vmov s6, r9
	vmul.f32 s6, s6, s3
	vmov s7, r10
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r3, #4]
	vmul.f32 s5, s0, s1
	vldr s4, [r8, #8]
	vmov s6, r9
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r3, #8]
	vmul.f32 s5, s0, s2
	vldr s3, [r8, #12]
	vmov s6, r9
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r3, #12]
	vmul.f32 s4, s0, s1
	vldr s5, [r8, #16]
	vmov s6, r9
	vmul.f32 s6, s6, s5
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s4
	vmov s4, r11
	vmul.f32 s2, s4, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r3, #16]
	vmul.f32 s3, s0, s2
	vldr s4, [r8, #20]
	vmov s6, r9
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s3, s5, s3
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r3, #20]
	vmul.f32 s5, s0, s1
	vldr s3, [r8, #24]
	vmov s6, r9
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r3, #24]
	vmul.f32 s4, s0, s2
	vldr s5, [r8, #28]
	vmov s6, r9
	vmul.f32 s6, s6, s5
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s4
	vmov s4, r11
	vmul.f32 s1, s4, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r3, #28]
	vmul.f32 s3, s0, s1
	vldr s4, [r8, #32]
	vmov s6, r9
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s3, s5, s3
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r3, #32]
	vmul.f32 s5, s0, s2
	vldr s3, [r8, #36]
	vmov s6, r9
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r3, #36]
	vmul.f32 s5, s0, s1
	vldr s4, [r8, #40]
	vmov s6, r9
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r3, #40]
	vmul.f32 s5, s0, s2
	vldr s3, [r8, #44]
	vmov s6, r9
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r3, #44]
	vmul.f32 s5, s0, s1
	vldr s4, [r8, #48]
	vmov s6, r9
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r3, #48]
	vmul.f32 s5, s0, s2
	vldr s3, [r8, #52]
	vmov s6, r9
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r3, #52]
	vmul.f32 s5, s0, s1
	vldr s4, [r8, #56]
	vmov s6, r9
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r3, #56]
	vmul.f32 s5, s0, s2
	vldr s3, [r8, #60]
	vmov s6, r9
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r3, #60]
	mov r3, r7
	add r7, r7, #16
	movw r8, #270
	cmp r7, r8
	bge label164
	b label163
label164:
	add r7, r3, #16
	movw r8, #270
	cmp r7, r8
	bge label170
	b label169
label170:
	add r7, r5, r3, lsl #2
	vldr s4, [r7, #0]
	movw r7, #61929
	movt r7, #48705
	vmov s5, r7
	vmul.f32 s5, s5, s4
	movw r7, #35322
	movt r7, #15842
	vmov s6, r7
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r7, #12860
	movt r7, #48923
	vmov s5, r7
	vmul.f32 s2, s5, s2
	vadd.f32 s5, s3, s2
	add r7, r6, r3, lsl #2
	vstr s5, [r7, #0]
	add r3, r3, #1
	movw r7, #270
	cmp r3, r7
	bge label175
	vmov.f32 s3, s4
	vmov.f32 s2, s1
	vmov.f32 s1, s5
	b label170
label133:
	movw r9, #1080
	mul r6, r3, r9
	ldr r5, [sp, #0]
	add r5, r5, r6
	add r6, r5, r2, lsl #2
	vldr s4, [r6, #0]
	movw r6, #61929
	movt r6, #48705
	vmov s5, r6
	vmul.f32 s5, s5, s4
	movw r7, #35322
	movt r7, #15842
	vmov s6, r7
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r8, #12860
	movt r8, #48923
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	mul r3, r3, r9
	add r3, r0, r3
	add r10, r3, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s3, s0, s2
	add r10, r5, r9
	add r10, r10, r2, lsl #2
	vldr s5, [r10, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s5
	vmov s7, r7
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s3, s4, s3
	vmov s4, r8
	vmul.f32 s1, s4, s1
	vadd.f32 s3, s3, s1
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s3, [r9, #0]
	vmul.f32 s1, s0, s3
	add r9, r5, #2160
	add r9, r9, r2, lsl #2
	vldr s4, [r9, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s1, s5, s1
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s1, s1, s2
	add r9, r3, #2160
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s5, s0, s1
	movw r9, #3240
	add r10, r5, r9
	add r10, r10, r2, lsl #2
	vldr s2, [r10, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s2
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s3, s5, s3
	vadd.f32 s3, s4, s3
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s3, [r9, #0]
	vmul.f32 s4, s0, s3
	movw r9, #4320
	add r10, r5, r9
	add r10, r10, r2, lsl #2
	vldr s5, [r10, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s5
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s4
	vmov s4, r8
	vmul.f32 s1, s4, s1
	vadd.f32 s2, s2, s1
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s1, s0, s2
	movw r9, #5400
	add r10, r5, r9
	add r10, r10, r2, lsl #2
	vldr s4, [r10, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s1, s5, s1
	vmov s5, r8
	vmul.f32 s3, s5, s3
	vadd.f32 s1, s1, s3
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s5, s0, s1
	movw r9, #6480
	add r10, r5, r9
	add r10, r10, r2, lsl #2
	vldr s3, [r10, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s4, s0, s2
	movw r9, #7560
	add r10, r5, r9
	add r10, r10, r2, lsl #2
	vldr s5, [r10, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s5
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s4
	vmov s4, r8
	vmul.f32 s1, s4, s1
	vadd.f32 s3, s3, s1
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s3, [r9, #0]
	vmul.f32 s1, s0, s3
	add r9, r5, #8640
	add r9, r9, r2, lsl #2
	vldr s4, [r9, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s1, s5, s1
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s1, s1, s2
	add r9, r3, #8640
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s2, s0, s1
	movw r9, #9720
	add r10, r5, r9
	add r10, r10, r2, lsl #2
	vldr s5, [r10, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s2, s4, s2
	vmov s4, r8
	vmul.f32 s3, s4, s3
	vadd.f32 s2, s2, s3
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s3, s0, s2
	movw r9, #10800
	add r10, r5, r9
	add r10, r10, r2, lsl #2
	vldr s4, [r10, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s3, s5, s3
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s3, s3, s1
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s3, [r9, #0]
	vmul.f32 s1, s0, s3
	movw r9, #11880
	add r10, r5, r9
	add r10, r10, r2, lsl #2
	vldr s5, [r10, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s1, s4, s1
	vmov s4, r8
	vmul.f32 s2, s4, s2
	vadd.f32 s1, s1, s2
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s2, s0, s1
	movw r9, #12960
	add r10, r5, r9
	add r10, r10, r2, lsl #2
	vldr s4, [r10, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s2, s5, s2
	vmov s5, r8
	vmul.f32 s3, s5, s3
	vadd.f32 s2, s2, s3
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s5, s0, s2
	movw r9, #14040
	add r10, r5, r9
	add r10, r10, r2, lsl #2
	vldr s3, [r10, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s5, s0, s1
	movw r9, #15120
	add r10, r5, r9
	add r10, r10, r2, lsl #2
	vldr s4, [r10, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s5, s0, s2
	movw r9, #16200
	add r5, r5, r9
	add r5, r5, r2, lsl #2
	vldr s3, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	add r3, r3, r9
	add r3, r3, r2, lsl #2
	vstr s1, [r3, #0]
	mov r3, r4
	add r4, r4, #16
	cmp r4, #512
	bge label134
	b label133
label124:
	add r2, r2, #1
	movw r3, #270
	cmp r2, r3
	bge label1373
	mov r3, #0
	vmov s1, r3
	vmov s2, r3
	vmov s4, r3
	vmov s3, r3
	movw r3, #511
	sub r4, r3, #16
	cmn r4, #1
	ble label106
label127:
	movw r6, #51281
	movt r6, #48700
	vmov s5, r6
	vmul.f32 s5, s5, s2
	movw r7, #9998
	movt r7, #15851
	vmov s6, r7
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r8, #12860
	movt r8, #48923
	vmov s5, r8
	vmul.f32 s4, s5, s4
	vadd.f32 s3, s3, s4
	movw r5, #1080
	mul r9, r3, r5
	add r9, r1, r9
	add r10, r9, r2, lsl #2
	vstr s3, [r10, #0]
	vmul.f32 s5, s0, s3
	mul r3, r3, r5
	ldr r5, [sp, #0]
	add r3, r5, r3
	add r5, r3, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmov s7, r7
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	movw r5, #64456
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s2, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s5, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s2, s4, s2
	vmov s4, r8
	vmul.f32 s3, s4, s3
	vadd.f32 s2, s2, s3
	sub r5, r9, #2160
	add r5, r5, r2, lsl #2
	vstr s2, [r5, #0]
	vmul.f32 s4, s0, s2
	sub r5, r3, #2160
	add r5, r5, r2, lsl #2
	vldr s3, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s4, s5, s4
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	movw r5, #62296
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s5, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	movw r5, #61216
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s5, s0, s2
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s3, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	movw r5, #60136
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s5, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	movw r5, #59056
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s5, s0, s2
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s3, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	movw r5, #57976
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s4, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s5, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s5
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s4
	vmov s4, r8
	vmul.f32 s2, s4, s2
	vadd.f32 s2, s3, s2
	sub r5, r9, #8640
	add r5, r5, r2, lsl #2
	vstr s2, [r5, #0]
	vmul.f32 s3, s0, s2
	sub r5, r3, #8640
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s3, s5, s3
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	movw r5, #55816
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s5, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s3, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	movw r5, #54736
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s4, s0, s2
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s5, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s5
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s4
	vmov s4, r8
	vmul.f32 s1, s4, s1
	vadd.f32 s3, s3, s1
	movw r5, #53656
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s3, [r10, #0]
	vmul.f32 s1, s0, s3
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s1, s5, s1
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s1, s1, s2
	movw r5, #52576
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s2, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s5, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s2, s4, s2
	vmov s4, r8
	vmul.f32 s3, s4, s3
	vadd.f32 s2, s2, s3
	movw r5, #51496
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s3, s0, s2
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s6, [r5, #0]
	vmov s4, r6
	vmul.f32 s4, s4, s6
	vmul.f32 s5, s7, s5
	vadd.f32 s4, s4, s5
	vadd.f32 s3, s4, s3
	vmov s4, r8
	vmul.f32 s1, s4, s1
	vadd.f32 s4, s3, s1
	movw r5, #50416
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s4, [r10, #0]
	vmul.f32 s1, s0, s4
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s3, [r5, #0]
	vmov s5, r6
	vmul.f32 s5, s5, s3
	vmul.f32 s6, s7, s6
	vadd.f32 s5, s5, s6
	vadd.f32 s1, s5, s1
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s1, s1, s2
	movw r5, #49336
	movt r5, #65535
	add r6, r9, r5
	add r6, r6, r2, lsl #2
	vstr s1, [r6, #0]
	add r3, r3, r5
	add r3, r3, r2, lsl #2
	vldr s2, [r3, #0]
	mov r3, r4
	sub r4, r4, #16
	cmn r4, #1
	ble label106
	b label127
label71:
	add r4, r2, #16
	movw r8, #270
	cmp r4, r8
	bge label74
label73:
	add r8, r7, r2, lsl #2
	vldr s1, [r8, #0]
	add r9, r6, r2, lsl #2
	vldr s2, [r9, #0]
	vadd.f32 s1, s1, s2
	add r2, r5, r2, lsl #2
	vstr s1, [r2, #0]
	vldr s1, [r8, #4]
	vldr s2, [r9, #4]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #4]
	vldr s1, [r8, #8]
	vldr s2, [r9, #8]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #8]
	vldr s1, [r8, #12]
	vldr s2, [r9, #12]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #12]
	vldr s1, [r8, #16]
	vldr s2, [r9, #16]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #16]
	vldr s1, [r8, #20]
	vldr s2, [r9, #20]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #20]
	vldr s1, [r8, #24]
	vldr s2, [r9, #24]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #24]
	vldr s1, [r8, #28]
	vldr s2, [r9, #28]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #28]
	vldr s1, [r8, #32]
	vldr s2, [r9, #32]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #32]
	vldr s1, [r8, #36]
	vldr s2, [r9, #36]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #36]
	vldr s1, [r8, #40]
	vldr s2, [r9, #40]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #40]
	vldr s1, [r8, #44]
	vldr s2, [r9, #44]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #44]
	vldr s1, [r8, #48]
	vldr s2, [r9, #48]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #48]
	vldr s1, [r8, #52]
	vldr s2, [r9, #52]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #52]
	vldr s1, [r8, #56]
	vldr s2, [r9, #56]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #56]
	vldr s1, [r8, #60]
	vldr s2, [r9, #60]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #60]
	mov r2, r4
	add r4, r4, #16
	movw r8, #270
	cmp r4, r8
	bge label74
	b label73
label74:
	add r4, r2, #16
	movw r8, #270
	cmp r4, r8
	bge label77
label76:
	add r8, r7, r2, lsl #2
	vldr s1, [r8, #0]
	add r9, r6, r2, lsl #2
	vldr s2, [r9, #0]
	vadd.f32 s1, s1, s2
	add r2, r5, r2, lsl #2
	vstr s1, [r2, #0]
	vldr s1, [r8, #4]
	vldr s2, [r9, #4]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #4]
	vldr s1, [r8, #8]
	vldr s2, [r9, #8]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #8]
	vldr s1, [r8, #12]
	vldr s2, [r9, #12]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #12]
	vldr s1, [r8, #16]
	vldr s2, [r9, #16]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #16]
	vldr s1, [r8, #20]
	vldr s2, [r9, #20]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #20]
	vldr s1, [r8, #24]
	vldr s2, [r9, #24]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #24]
	vldr s1, [r8, #28]
	vldr s2, [r9, #28]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #28]
	vldr s1, [r8, #32]
	vldr s2, [r9, #32]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #32]
	vldr s1, [r8, #36]
	vldr s2, [r9, #36]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #36]
	vldr s1, [r8, #40]
	vldr s2, [r9, #40]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #40]
	vldr s1, [r8, #44]
	vldr s2, [r9, #44]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #44]
	vldr s1, [r8, #48]
	vldr s2, [r9, #48]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #48]
	vldr s1, [r8, #52]
	vldr s2, [r9, #52]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #52]
	vldr s1, [r8, #56]
	vldr s2, [r9, #56]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #56]
	vldr s1, [r8, #60]
	vldr s2, [r9, #60]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #60]
	mov r2, r4
	add r4, r4, #16
	movw r8, #270
	cmp r4, r8
	bge label77
	b label76
label77:
	add r4, r7, r2, lsl #2
	vldr s1, [r4, #0]
	add r4, r6, r2, lsl #2
	vldr s2, [r4, #0]
	vadd.f32 s1, s1, s2
	add r4, r5, r2, lsl #2
	vstr s1, [r4, #0]
	add r2, r2, #1
	movw r4, #270
	cmp r2, r4
	bge label79
	b label77
label79:
	add r3, r3, #1
	cmp r3, #512
	bge label1026
	b label1025
label70:
	add r8, r7, r2, lsl #2
	vldr s1, [r8, #0]
	add r9, r6, r2, lsl #2
	vldr s2, [r9, #0]
	vadd.f32 s1, s1, s2
	add r2, r5, r2, lsl #2
	vstr s1, [r2, #0]
	vldr s1, [r8, #4]
	vldr s2, [r9, #4]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #4]
	vldr s1, [r8, #8]
	vldr s2, [r9, #8]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #8]
	vldr s1, [r8, #12]
	vldr s2, [r9, #12]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #12]
	vldr s1, [r8, #16]
	vldr s2, [r9, #16]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #16]
	vldr s1, [r8, #20]
	vldr s2, [r9, #20]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #20]
	vldr s1, [r8, #24]
	vldr s2, [r9, #24]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #24]
	vldr s1, [r8, #28]
	vldr s2, [r9, #28]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #28]
	vldr s1, [r8, #32]
	vldr s2, [r9, #32]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #32]
	vldr s1, [r8, #36]
	vldr s2, [r9, #36]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #36]
	vldr s1, [r8, #40]
	vldr s2, [r9, #40]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #40]
	vldr s1, [r8, #44]
	vldr s2, [r9, #44]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #44]
	vldr s1, [r8, #48]
	vldr s2, [r9, #48]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #48]
	vldr s1, [r8, #52]
	vldr s2, [r9, #52]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #52]
	vldr s1, [r8, #56]
	vldr s2, [r9, #56]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #56]
	vldr s1, [r8, #60]
	vldr s2, [r9, #60]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #60]
	mov r2, r4
	add r4, r4, #16
	movw r8, #270
	cmp r4, r8
	bge label71
	b label70
label125:
	movw r6, #51281
	movt r6, #48700
	vmov s5, r6
	vmul.f32 s5, s5, s2
	movw r7, #9998
	movt r7, #15851
	vmov s6, r7
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r8, #12860
	movt r8, #48923
	vmov s5, r8
	vmul.f32 s4, s5, s4
	vadd.f32 s3, s3, s4
	movw r5, #1080
	mul r9, r3, r5
	add r9, r1, r9
	add r10, r9, r2, lsl #2
	vstr s3, [r10, #0]
	vmul.f32 s5, s0, s3
	mul r3, r3, r5
	ldr r5, [sp, #0]
	add r3, r5, r3
	add r5, r3, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmov s7, r7
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	movw r5, #64456
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s2, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s5, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s2, s4, s2
	vmov s4, r8
	vmul.f32 s3, s4, s3
	vadd.f32 s2, s2, s3
	sub r5, r9, #2160
	add r5, r5, r2, lsl #2
	vstr s2, [r5, #0]
	vmul.f32 s4, s0, s2
	sub r5, r3, #2160
	add r5, r5, r2, lsl #2
	vldr s3, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s4, s5, s4
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	movw r5, #62296
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s5, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	movw r5, #61216
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s5, s0, s2
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s3, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	movw r5, #60136
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s5, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	movw r5, #59056
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s5, s0, s2
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s3, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	movw r5, #57976
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s4, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s5, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s5
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s4
	vmov s4, r8
	vmul.f32 s2, s4, s2
	vadd.f32 s3, s3, s2
	sub r5, r9, #8640
	add r5, r5, r2, lsl #2
	vstr s3, [r5, #0]
	vmul.f32 s2, s0, s3
	sub r5, r3, #8640
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s2, s5, s2
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s2, s2, s1
	movw r5, #55816
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s1, s0, s2
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s5, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s1, s4, s1
	vmov s4, r8
	vmul.f32 s3, s4, s3
	vadd.f32 s1, s1, s3
	movw r5, #54736
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s4, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s3, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s4, s5, s4
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	movw r5, #53656
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s5, s0, s2
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	movw r5, #52576
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s5, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s3, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	movw r5, #51496
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s4, s0, s2
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s5, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s5
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s4
	vmov s4, r8
	vmul.f32 s1, s4, s1
	vadd.f32 s4, s3, s1
	movw r5, #50416
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s4, [r10, #0]
	vmul.f32 s1, s0, s4
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s3, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s1, s5, s1
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s1, s1, s2
	movw r5, #49336
	movt r5, #65535
	add r6, r9, r5
	add r6, r6, r2, lsl #2
	vstr s1, [r6, #0]
	add r3, r3, r5
	add r3, r3, r2, lsl #2
	vldr s2, [r3, #0]
	mov r3, r4
	sub r4, r4, #16
	cmn r4, #1
	ble label118
	b label125
label126:
	movw r6, #51281
	movt r6, #48700
	vmov s5, r6
	vmul.f32 s5, s5, s2
	movw r7, #9998
	movt r7, #15851
	vmov s6, r7
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r8, #12860
	movt r8, #48923
	vmov s5, r8
	vmul.f32 s4, s5, s4
	vadd.f32 s3, s3, s4
	movw r5, #1080
	mul r9, r3, r5
	add r9, r1, r9
	add r10, r9, r2, lsl #2
	vstr s3, [r10, #0]
	vmul.f32 s5, s0, s3
	mul r3, r3, r5
	ldr r5, [sp, #0]
	add r3, r5, r3
	add r5, r3, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmov s7, r7
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s2, s2, s1
	movw r5, #64456
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s1, s0, s2
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s5, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s1, s4, s1
	vmov s4, r8
	vmul.f32 s3, s4, s3
	vadd.f32 s1, s1, s3
	sub r5, r9, #2160
	add r5, r5, r2, lsl #2
	vstr s1, [r5, #0]
	vmul.f32 s4, s0, s1
	sub r5, r3, #2160
	add r5, r5, r2, lsl #2
	vldr s3, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s4, s5, s4
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	movw r5, #62296
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s5, s0, s2
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	movw r5, #61216
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s5, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s3, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	movw r5, #60136
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s5, s0, s2
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	movw r5, #59056
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s5, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s3, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	movw r5, #57976
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s5, s0, s2
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	sub r5, r9, #8640
	add r5, r5, r2, lsl #2
	vstr s1, [r5, #0]
	vmul.f32 s5, s0, s1
	sub r5, r3, #8640
	add r5, r5, r2, lsl #2
	vldr s3, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	movw r5, #55816
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s5, s0, s2
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	movw r5, #54736
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s3, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s5, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s3, s4, s3
	vmov s4, r8
	vmul.f32 s2, s4, s2
	vadd.f32 s2, s3, s2
	movw r5, #53656
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s4, s0, s2
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s3, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s4, s5, s4
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	movw r5, #52576
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s5, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	movw r5, #51496
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s3, s0, s2
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s5, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s3, s4, s3
	vmov s4, r8
	vmul.f32 s1, s4, s1
	vadd.f32 s4, s3, s1
	movw r5, #50416
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s4, [r10, #0]
	vmul.f32 s1, s0, s4
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s3, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s1, s5, s1
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s1, s1, s2
	movw r5, #49336
	movt r5, #65535
	add r6, r9, r5
	add r6, r6, r2, lsl #2
	vstr s1, [r6, #0]
	add r3, r3, r5
	add r3, r3, r2, lsl #2
	vldr s2, [r3, #0]
	mov r3, r4
	sub r4, r4, #16
	cmn r4, #1
	ble label112
	b label126
label151:
	movw r9, #1080
	mul r6, r3, r9
	ldr r5, [sp, #0]
	add r6, r5, r6
	add r5, r6, r2, lsl #2
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
	movw r8, #12860
	movt r8, #48923
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	mul r3, r3, r9
	add r3, r0, r3
	add r10, r3, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s3, s0, s2
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s5, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s5
	vmov s7, r7
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s3, s4, s3
	vmov s4, r8
	vmul.f32 s1, s4, s1
	vadd.f32 s3, s3, s1
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s3, [r9, #0]
	vmul.f32 s1, s0, s3
	add r9, r6, #2160
	add r9, r9, r2, lsl #2
	vldr s4, [r9, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s1, s5, s1
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s1, s1, s2
	add r9, r3, #2160
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s5, s0, s1
	movw r9, #3240
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s2, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s2
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s3, s5, s3
	vadd.f32 s3, s4, s3
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s3, [r9, #0]
	vmul.f32 s5, s0, s3
	movw r9, #4320
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s4, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s4
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s2, s2, s1
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s1, s0, s2
	movw r9, #5400
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s5, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s1, s4, s1
	vmov s4, r8
	vmul.f32 s3, s4, s3
	vadd.f32 s1, s1, s3
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s3, s0, s1
	movw r9, #6480
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s4, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s3, s5, s3
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s3, s3, s2
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s3, [r9, #0]
	vmul.f32 s2, s0, s3
	movw r9, #7560
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s5, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s2, s4, s2
	vmov s4, r8
	vmul.f32 s1, s4, s1
	vadd.f32 s2, s2, s1
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s1, s0, s2
	add r9, r6, #8640
	add r9, r9, r2, lsl #2
	vldr s4, [r9, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s1, s5, s1
	vmov s5, r8
	vmul.f32 s3, s5, s3
	vadd.f32 s1, s1, s3
	add r9, r3, #8640
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s5, s0, s1
	movw r9, #9720
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s3, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s5, s0, s2
	movw r9, #10800
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s4, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s5, s0, s1
	movw r9, #11880
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s3, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s5, s0, s2
	movw r9, #12960
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s4, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s5, s0, s1
	movw r9, #14040
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s3, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s4, s4, s2
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s4, [r9, #0]
	vmul.f32 s2, s0, s4
	movw r9, #15120
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s5, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s5
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s2, s3, s2
	vmov s3, r8
	vmul.f32 s1, s3, s1
	vadd.f32 s2, s2, s1
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s1, s0, s2
	movw r9, #16200
	add r6, r6, r9
	add r6, r6, r2, lsl #2
	vldr s3, [r6, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s1, s5, s1
	vmov s5, r8
	vmul.f32 s4, s5, s4
	vadd.f32 s1, s1, s4
	add r3, r3, r9
	add r3, r3, r2, lsl #2
	vstr s1, [r3, #0]
	mov r3, r4
	add r4, r4, #16
	cmp r4, #512
	bge label139
	b label151
label176:
	add r8, r5, r3, lsl #2
	vldr s4, [r8, #0]
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
	add r3, r6, r3, lsl #2
	vstr s2, [r3, #0]
	vmul.f32 s3, s0, s2
	vldr s5, [r8, #4]
	vmov s6, r9
	vmul.f32 s6, s6, s5
	vmov s7, r10
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s3, s4, s3
	vmov s4, r11
	vmul.f32 s1, s4, s1
	vadd.f32 s3, s3, s1
	vstr s3, [r3, #4]
	vmul.f32 s1, s0, s3
	vldr s4, [r8, #8]
	vmov s6, r9
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s1, s5, s1
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s1, s1, s2
	vstr s1, [r3, #8]
	vmul.f32 s2, s0, s1
	vldr s5, [r8, #12]
	vmov s6, r9
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s2, s4, s2
	vmov s4, r11
	vmul.f32 s3, s4, s3
	vadd.f32 s2, s2, s3
	vstr s2, [r3, #12]
	vmul.f32 s3, s0, s2
	vldr s4, [r8, #16]
	vmov s6, r9
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s3, s5, s3
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r3, #16]
	vmul.f32 s5, s0, s1
	vldr s3, [r8, #20]
	vmov s6, r9
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r3, #20]
	vmul.f32 s5, s0, s2
	vldr s4, [r8, #24]
	vmov s6, r9
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r3, #24]
	vmul.f32 s3, s0, s1
	vldr s5, [r8, #28]
	vmov s6, r9
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s3, s4, s3
	vmov s4, r11
	vmul.f32 s2, s4, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r3, #28]
	vmul.f32 s4, s0, s2
	vldr s3, [r8, #32]
	vmov s6, r9
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s4, s5, s4
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r3, #32]
	vmul.f32 s5, s0, s1
	vldr s4, [r8, #36]
	vmov s6, r9
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r3, #36]
	vmul.f32 s5, s0, s2
	vldr s3, [r8, #40]
	vmov s6, r9
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r3, #40]
	vmul.f32 s5, s0, s1
	vldr s4, [r8, #44]
	vmov s6, r9
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s3, s3, s2
	vstr s3, [r3, #44]
	vmul.f32 s2, s0, s3
	vldr s5, [r8, #48]
	vmov s6, r9
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s2, s4, s2
	vmov s4, r11
	vmul.f32 s1, s4, s1
	vadd.f32 s2, s2, s1
	vstr s2, [r3, #48]
	vmul.f32 s1, s0, s2
	vldr s6, [r8, #52]
	vmov s4, r9
	vmul.f32 s4, s4, s6
	vmul.f32 s5, s7, s5
	vadd.f32 s4, s4, s5
	vadd.f32 s1, s4, s1
	vmov s4, r11
	vmul.f32 s3, s4, s3
	vadd.f32 s1, s1, s3
	vstr s1, [r3, #52]
	vmul.f32 s3, s0, s1
	vldr s4, [r8, #56]
	vmov s5, r9
	vmul.f32 s5, s5, s4
	vmul.f32 s6, s7, s6
	vadd.f32 s5, s5, s6
	vadd.f32 s3, s5, s3
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r3, #56]
	vmul.f32 s5, s0, s2
	vldr s3, [r8, #60]
	vmov s6, r9
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r3, #60]
	mov r3, r7
	add r7, r7, #16
	movw r8, #270
	cmp r7, r8
	bge label158
	b label176
label43:
	movw r8, #51281
	movt r8, #48700
	vmov s5, r8
	vmul.f32 s5, s5, s2
	movw r9, #9998
	movt r9, #15851
	vmov s6, r9
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r10, #12860
	movt r10, #48923
	vmov s5, r10
	vmul.f32 s4, s5, s4
	vadd.f32 s3, s3, s4
	add r11, r6, r3, lsl #2
	vstr s3, [r11, #0]
	vmul.f32 s5, s0, s3
	add r3, r5, r3, lsl #2
	vldr s4, [r3, #0]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmov s7, r9
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	vstr s1, [r11, #-4]
	vmul.f32 s5, s0, s1
	vldr s2, [r3, #-4]
	vmov s6, r8
	vmul.f32 s6, s6, s2
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s3, s5, s3
	vadd.f32 s3, s4, s3
	vstr s3, [r11, #-8]
	vmul.f32 s4, s0, s3
	vldr s5, [r3, #-8]
	vmov s6, r8
	vmul.f32 s6, s6, s5
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s4
	vmov s4, r10
	vmul.f32 s1, s4, s1
	vadd.f32 s2, s2, s1
	vstr s2, [r11, #-12]
	vmul.f32 s1, s0, s2
	vldr s4, [r3, #-12]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s1, s5, s1
	vmov s5, r10
	vmul.f32 s3, s5, s3
	vadd.f32 s1, s1, s3
	vstr s1, [r11, #-16]
	vmul.f32 s3, s0, s1
	vldr s5, [r3, #-16]
	vmov s6, r8
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s3, s4, s3
	vmov s4, r10
	vmul.f32 s2, s4, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r11, #-20]
	vmul.f32 s4, s0, s2
	vldr s3, [r3, #-20]
	vmov s6, r8
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s4, s5, s4
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r11, #-24]
	vmul.f32 s5, s0, s1
	vldr s4, [r3, #-24]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r11, #-28]
	vmul.f32 s5, s0, s2
	vldr s3, [r3, #-28]
	vmov s6, r8
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r11, #-32]
	vmul.f32 s4, s0, s1
	vldr s5, [r3, #-32]
	vmov s6, r8
	vmul.f32 s6, s6, s5
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s4
	vmov s4, r10
	vmul.f32 s2, s4, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r11, #-36]
	vmul.f32 s3, s0, s2
	vldr s4, [r3, #-36]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s3, s5, s3
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r11, #-40]
	vmul.f32 s5, s0, s1
	vldr s3, [r3, #-40]
	vmov s6, r8
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r11, #-44]
	vmul.f32 s5, s0, s2
	vldr s4, [r3, #-44]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r11, #-48]
	vmul.f32 s5, s0, s1
	vldr s3, [r3, #-48]
	vmov s6, r8
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r11, #-52]
	vmul.f32 s4, s0, s2
	vldr s5, [r3, #-52]
	vmov s6, r8
	vmul.f32 s6, s6, s5
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s4
	vmov s4, r10
	vmul.f32 s1, s4, s1
	vadd.f32 s4, s3, s1
	vstr s4, [r11, #-56]
	vmul.f32 s1, s0, s4
	vldr s3, [r3, #-56]
	vmov s6, r8
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s1, s5, s1
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s1, s1, s2
	vstr s1, [r11, #-60]
	vldr s2, [r3, #-60]
	mov r3, r7
	sub r7, r7, #16
	cmn r7, #1
	ble label44
	b label43
label51:
	sub r7, r3, #16
	cmn r7, #1
	ble label58
	b label57
label169:
	add r8, r5, r3, lsl #2
	vldr s4, [r8, #0]
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
	add r3, r6, r3, lsl #2
	vstr s2, [r3, #0]
	vmul.f32 s5, s0, s2
	vldr s3, [r8, #4]
	vmov s6, r9
	vmul.f32 s6, s6, s3
	vmov s7, r10
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r3, #4]
	vmul.f32 s5, s0, s1
	vldr s4, [r8, #8]
	vmov s6, r9
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r3, #8]
	vmul.f32 s3, s0, s2
	vldr s5, [r8, #12]
	vmov s6, r9
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s3, s4, s3
	vmov s4, r11
	vmul.f32 s1, s4, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r3, #12]
	vmul.f32 s4, s0, s1
	vldr s3, [r8, #16]
	vmov s6, r9
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s4, s5, s4
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r3, #16]
	vmul.f32 s5, s0, s2
	vldr s4, [r8, #20]
	vmov s6, r9
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r3, #20]
	vmul.f32 s5, s0, s1
	vldr s3, [r8, #24]
	vmov s6, r9
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r3, #24]
	vmul.f32 s4, s0, s2
	vldr s5, [r8, #28]
	vmov s6, r9
	vmul.f32 s6, s6, s5
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s4
	vmov s4, r11
	vmul.f32 s1, s4, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r3, #28]
	vmul.f32 s3, s0, s1
	vldr s4, [r8, #32]
	vmov s6, r9
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s3, s5, s3
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r3, #32]
	vmul.f32 s5, s0, s2
	vldr s3, [r8, #36]
	vmov s6, r9
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r3, #36]
	vmul.f32 s5, s0, s1
	vldr s4, [r8, #40]
	vmov s6, r9
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r3, #40]
	vmul.f32 s5, s0, s2
	vldr s3, [r8, #44]
	vmov s6, r9
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r3, #44]
	vmul.f32 s5, s0, s1
	vldr s4, [r8, #48]
	vmov s6, r9
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r3, #48]
	vmul.f32 s5, s0, s2
	vldr s3, [r8, #52]
	vmov s6, r9
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r3, #52]
	vmul.f32 s5, s0, s1
	vldr s4, [r8, #56]
	vmov s6, r9
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r3, #56]
	vmul.f32 s5, s0, s2
	vldr s3, [r8, #60]
	vmov s6, r9
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r3, #60]
	mov r3, r7
	add r7, r7, #16
	movw r8, #270
	cmp r7, r8
	bge label170
	b label169
label57:
	movw r8, #51281
	movt r8, #48700
	vmov s5, r8
	vmul.f32 s5, s5, s2
	movw r9, #9998
	movt r9, #15851
	vmov s6, r9
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r10, #12860
	movt r10, #48923
	vmov s5, r10
	vmul.f32 s4, s5, s4
	vadd.f32 s3, s3, s4
	add r11, r6, r3, lsl #2
	vstr s3, [r11, #0]
	vmul.f32 s5, s0, s3
	add r3, r5, r3, lsl #2
	vldr s4, [r3, #0]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmov s7, r9
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s2, s2, s1
	vstr s2, [r11, #-4]
	vmul.f32 s1, s0, s2
	vldr s5, [r3, #-4]
	vmov s6, r8
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s1, s4, s1
	vmov s4, r10
	vmul.f32 s3, s4, s3
	vadd.f32 s1, s1, s3
	vstr s1, [r11, #-8]
	vmul.f32 s3, s0, s1
	vldr s6, [r3, #-8]
	vmov s4, r8
	vmul.f32 s4, s4, s6
	vmul.f32 s5, s7, s5
	vadd.f32 s4, s4, s5
	vadd.f32 s3, s4, s3
	vmov s4, r10
	vmul.f32 s2, s4, s2
	vadd.f32 s3, s3, s2
	vstr s3, [r11, #-12]
	vmul.f32 s2, s0, s3
	vldr s4, [r3, #-12]
	vmov s5, r8
	vmul.f32 s5, s5, s4
	vmul.f32 s6, s7, s6
	vadd.f32 s5, s5, s6
	vadd.f32 s2, s5, s2
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s2, s2, s1
	vstr s2, [r11, #-16]
	vmul.f32 s1, s0, s2
	vldr s5, [r3, #-16]
	vmov s6, r8
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s1, s4, s1
	vmov s4, r10
	vmul.f32 s3, s4, s3
	vadd.f32 s1, s1, s3
	vstr s1, [r11, #-20]
	vmul.f32 s4, s0, s1
	vldr s3, [r3, #-20]
	vmov s6, r8
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s4, s5, s4
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r11, #-24]
	vmul.f32 s4, s0, s2
	vldr s5, [r3, #-24]
	vmov s6, r8
	vmul.f32 s6, s6, s5
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s4
	vmov s4, r10
	vmul.f32 s1, s4, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r11, #-28]
	vmul.f32 s3, s0, s1
	vldr s4, [r3, #-28]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s3, s5, s3
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s3, s3, s2
	vstr s3, [r11, #-32]
	vmul.f32 s2, s0, s3
	vldr s5, [r3, #-32]
	vmov s6, r8
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s2, s4, s2
	vmov s4, r10
	vmul.f32 s1, s4, s1
	vadd.f32 s2, s2, s1
	vstr s2, [r11, #-36]
	vmul.f32 s1, s0, s2
	vldr s4, [r3, #-36]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s1, s5, s1
	vmov s5, r10
	vmul.f32 s3, s5, s3
	vadd.f32 s1, s1, s3
	vstr s1, [r11, #-40]
	vmul.f32 s3, s0, s1
	vldr s5, [r3, #-40]
	vmov s6, r8
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s3, s4, s3
	vmov s4, r10
	vmul.f32 s2, s4, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r11, #-44]
	vmul.f32 s4, s0, s2
	vldr s3, [r3, #-44]
	vmov s6, r8
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s4, s5, s4
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r11, #-48]
	vmul.f32 s5, s0, s1
	vldr s4, [r3, #-48]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r11, #-52]
	vmul.f32 s3, s0, s2
	vldr s5, [r3, #-52]
	vmov s6, r8
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s3, s4, s3
	vmov s4, r10
	vmul.f32 s1, s4, s1
	vadd.f32 s4, s3, s1
	vstr s4, [r11, #-56]
	vmul.f32 s1, s0, s4
	vldr s3, [r3, #-56]
	vmov s6, r8
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s1, s5, s1
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s1, s1, s2
	vstr s1, [r11, #-60]
	vldr s2, [r3, #-60]
	mov r3, r7
	sub r7, r7, #16
	cmn r7, #1
	ble label58
	b label57
label1025:
	movw r2, #1080
	mul r4, r3, r2
	add r6, r1, r4
	add r7, r0, r4
	mul r2, r3, r2
	ldr r5, [sp, #0]
	add r5, r5, r2
	mov r2, #0
	add r4, r2, #16
	movw r8, #270
	cmp r4, r8
	bge label71
	b label70
label175:
	add r2, r2, #1
	cmp r2, #512
	bge label191
	b label190
label1384:
	movw r2, #1080
	mul r4, r3, r2
	add r6, r1, r4
	add r7, r0, r4
	mul r2, r3, r2
	ldr r5, [sp, #0]
	add r5, r5, r2
	mov r2, #0
	add r4, r2, #16
	movw r8, #270
	cmp r4, r8
	bge label90
	b label89
label97:
	add r3, r3, #1
	cmp r3, #512
	bge label99
	b label1384
label90:
	add r4, r2, #16
	movw r8, #270
	cmp r4, r8
	bge label93
	b label92
label93:
	add r4, r2, #16
	movw r8, #270
	cmp r4, r8
	bge label95
	b label98
label95:
	add r4, r7, r2, lsl #2
	vldr s0, [r4, #0]
	add r4, r6, r2, lsl #2
	vldr s1, [r4, #0]
	vadd.f32 s0, s0, s1
	add r4, r5, r2, lsl #2
	vstr s0, [r4, #0]
	add r2, r2, #1
	movw r4, #270
	cmp r2, r4
	bge label97
	b label95
label89:
	add r8, r7, r2, lsl #2
	vldr s0, [r8, #0]
	add r9, r6, r2, lsl #2
	vldr s1, [r9, #0]
	vadd.f32 s0, s0, s1
	add r2, r5, r2, lsl #2
	vstr s0, [r2, #0]
	vldr s0, [r8, #4]
	vldr s1, [r9, #4]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #4]
	vldr s0, [r8, #8]
	vldr s1, [r9, #8]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #8]
	vldr s0, [r8, #12]
	vldr s1, [r9, #12]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #12]
	vldr s0, [r8, #16]
	vldr s1, [r9, #16]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #16]
	vldr s0, [r8, #20]
	vldr s1, [r9, #20]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #20]
	vldr s0, [r8, #24]
	vldr s1, [r9, #24]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #24]
	vldr s0, [r8, #28]
	vldr s1, [r9, #28]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #28]
	vldr s0, [r8, #32]
	vldr s1, [r9, #32]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #32]
	vldr s0, [r8, #36]
	vldr s1, [r9, #36]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #36]
	vldr s0, [r8, #40]
	vldr s1, [r9, #40]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #40]
	vldr s0, [r8, #44]
	vldr s1, [r9, #44]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #44]
	vldr s0, [r8, #48]
	vldr s1, [r9, #48]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #48]
	vldr s0, [r8, #52]
	vldr s1, [r9, #52]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #52]
	vldr s0, [r8, #56]
	vldr s1, [r9, #56]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #56]
	vldr s0, [r8, #60]
	vldr s1, [r9, #60]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #60]
	mov r2, r4
	add r4, r4, #16
	movw r8, #270
	cmp r4, r8
	bge label90
	b label89
label92:
	add r8, r7, r2, lsl #2
	vldr s0, [r8, #0]
	add r9, r6, r2, lsl #2
	vldr s1, [r9, #0]
	vadd.f32 s0, s0, s1
	add r2, r5, r2, lsl #2
	vstr s0, [r2, #0]
	vldr s0, [r8, #4]
	vldr s1, [r9, #4]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #4]
	vldr s0, [r8, #8]
	vldr s1, [r9, #8]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #8]
	vldr s0, [r8, #12]
	vldr s1, [r9, #12]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #12]
	vldr s0, [r8, #16]
	vldr s1, [r9, #16]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #16]
	vldr s0, [r8, #20]
	vldr s1, [r9, #20]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #20]
	vldr s0, [r8, #24]
	vldr s1, [r9, #24]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #24]
	vldr s0, [r8, #28]
	vldr s1, [r9, #28]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #28]
	vldr s0, [r8, #32]
	vldr s1, [r9, #32]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #32]
	vldr s0, [r8, #36]
	vldr s1, [r9, #36]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #36]
	vldr s0, [r8, #40]
	vldr s1, [r9, #40]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #40]
	vldr s0, [r8, #44]
	vldr s1, [r9, #44]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #44]
	vldr s0, [r8, #48]
	vldr s1, [r9, #48]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #48]
	vldr s0, [r8, #52]
	vldr s1, [r9, #52]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #52]
	vldr s0, [r8, #56]
	vldr s1, [r9, #56]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #56]
	vldr s0, [r8, #60]
	vldr s1, [r9, #60]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #60]
	mov r2, r4
	add r4, r4, #16
	movw r8, #270
	cmp r4, r8
	bge label93
	b label92
label98:
	add r8, r7, r2, lsl #2
	vldr s0, [r8, #0]
	add r9, r6, r2, lsl #2
	vldr s1, [r9, #0]
	vadd.f32 s0, s0, s1
	add r2, r5, r2, lsl #2
	vstr s0, [r2, #0]
	vldr s0, [r8, #4]
	vldr s1, [r9, #4]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #4]
	vldr s0, [r8, #8]
	vldr s1, [r9, #8]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #8]
	vldr s0, [r8, #12]
	vldr s1, [r9, #12]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #12]
	vldr s0, [r8, #16]
	vldr s1, [r9, #16]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #16]
	vldr s0, [r8, #20]
	vldr s1, [r9, #20]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #20]
	vldr s0, [r8, #24]
	vldr s1, [r9, #24]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #24]
	vldr s0, [r8, #28]
	vldr s1, [r9, #28]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #28]
	vldr s0, [r8, #32]
	vldr s1, [r9, #32]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #32]
	vldr s0, [r8, #36]
	vldr s1, [r9, #36]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #36]
	vldr s0, [r8, #40]
	vldr s1, [r9, #40]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #40]
	vldr s0, [r8, #44]
	vldr s1, [r9, #44]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #44]
	vldr s0, [r8, #48]
	vldr s1, [r9, #48]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #48]
	vldr s0, [r8, #52]
	vldr s1, [r9, #52]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #52]
	vldr s0, [r8, #56]
	vldr s1, [r9, #56]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #56]
	vldr s0, [r8, #60]
	vldr s1, [r9, #60]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #60]
	mov r2, r4
	add r4, r4, #16
	movw r8, #270
	cmp r4, r8
	bge label95
	b label98
label99:
	mov r0, #158
	bl _sysy_stoptime
	mov r0, #138240
	ldr r5, [sp, #0]
	mov r1, r5
	bl putfarray
	mov r0, #0
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
