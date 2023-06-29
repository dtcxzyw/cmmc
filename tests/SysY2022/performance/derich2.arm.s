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
	bge label3
	rsb r1, r1, #0
	bl newPow
	mov r0, #1065353216
	vmov s1, r0
	vdiv.f32 s0, s1, s0
	b label7
label29:
	mov r0, #1065353216
	vmov s0, r0
	b label7
label3:
	cmp r1, #0
	bne label22
	b label29
label7:
	vpop { s16 }
	pop { pc }
label22:
	sub r1, r1, #1
	vmov.f32 s0, s16
	bl newPow
	vmul.f32 s0, s16, s0
	b label7
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
	b label190
label191:
	mov r2, #0
	cmp r2, #512
	bge label443
	movw r5, #1080
	mla r3, r2, r5, r4
	mla r5, r2, r5, r1
	mov r6, #0
	vmov s1, r6
	vmov s2, r6
	vmov s3, r6
	vmov s4, r6
	movw r6, #269
	sub r7, r6, #4
	cmn r7, #1
	ble label68
	b label89
label443:
	mov r3, #0
	cmp r3, #512
	bge label698
	movw r2, #1080
	mla r4, r3, r2, r1
	mla r6, r3, r2, r0
	ldr r5, [sp, #0]
	mla r5, r3, r2, r5
	mov r2, #0
	add r7, r2, #4
	movw r8, #270
	cmp r7, r8
	bge label96
	b label95
label698:
	mov r2, #0
	movw r3, #270
	cmp r2, r3
	bge label819
	mov r3, #0
	vmov s1, r3
	vmov s3, r3
	vmov s2, r3
	add r4, r3, #4
	cmp r4, #512
	bge label113
	b label112
label113:
	add r4, r3, #4
	cmp r4, #512
	bge label119
	b label118
label119:
	add r4, r3, #4
	cmp r4, #512
	bge label125
	b label124
label125:
	movw r4, #1080
	ldr r5, [sp, #0]
	mla r5, r3, r4, r5
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
	mla r4, r3, r4, r0
	add r4, r4, r2, lsl #2
	vstr s5, [r4, #0]
	add r3, r3, #1
	cmp r3, #512
	bge label130
	vmov.f32 s3, s4
	vmov.f32 s2, s1
	vmov.f32 s1, s5
	b label125
label130:
	add r2, r2, #1
	movw r3, #270
	cmp r2, r3
	bge label819
	mov r3, #0
	vmov s1, r3
	vmov s3, r3
	vmov s2, r3
	add r4, r3, #4
	cmp r4, #512
	bge label113
	b label112
label190:
	movw r5, #1080
	mla r3, r2, r5, r4
	mla r5, r2, r5, r0
	mov r6, #0
	vmov s1, r6
	vmov s3, r6
	vmov s2, r6
	add r7, r6, #4
	movw r8, #270
	cmp r7, r8
	bge label41
	b label40
label51:
	add r7, r3, r6, lsl #2
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
	add r7, r5, r6, lsl #2
	vstr s5, [r7, #0]
	add r6, r6, #1
	movw r7, #270
	cmp r6, r7
	bge label56
	vmov.f32 s3, s4
	vmov.f32 s2, s1
	vmov.f32 s1, s5
	b label51
label56:
	add r2, r2, #1
	cmp r2, #512
	bge label191
	b label190
label68:
	sub r7, r6, #4
	cmn r7, #1
	ble label75
	b label74
label75:
	sub r7, r6, #4
	cmn r7, #1
	ble label82
label81:
	movw r8, #51281
	movt r8, #48700
	vmov s5, r8
	vmul.f32 s5, s5, s2
	movw r9, #9998
	movt r9, #15851
	vmov s6, r9
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	movw r10, #12860
	movt r10, #48923
	vmov s5, r10
	vmul.f32 s3, s5, s3
	vadd.f32 s3, s4, s3
	add r11, r5, r6, lsl #2
	vstr s3, [r11, #0]
	vmul.f32 s5, s0, s3
	add r6, r3, r6, lsl #2
	vldr s4, [r6, #0]
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
	vldr s2, [r6, #-4]
	vmov s6, r8
	vmul.f32 s6, s6, s2
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s3, s5, s3
	vadd.f32 s3, s4, s3
	vstr s3, [r11, #-8]
	vmul.f32 s5, s0, s3
	vldr s4, [r6, #-8]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	vstr s1, [r11, #-12]
	vldr s2, [r6, #-12]
	mov r6, r7
	sub r7, r7, #4
	cmn r7, #1
	ble label82
	b label81
label82:
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
	add r7, r5, r6, lsl #2
	vstr s5, [r7, #0]
	add r7, r3, r6, lsl #2
	vldr s6, [r7, #0]
	sub r6, r6, #1
	cmn r6, #1
	ble label88
	vmov.f32 s3, s1
	vmov.f32 s4, s2
	vmov.f32 s1, s5
	vmov.f32 s2, s6
	b label82
label74:
	movw r8, #51281
	movt r8, #48700
	vmov s5, r8
	vmul.f32 s5, s5, s2
	movw r9, #9998
	movt r9, #15851
	vmov s6, r9
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	movw r10, #12860
	movt r10, #48923
	vmov s5, r10
	vmul.f32 s3, s5, s3
	vadd.f32 s3, s4, s3
	add r11, r5, r6, lsl #2
	vstr s3, [r11, #0]
	vmul.f32 s5, s0, s3
	add r6, r3, r6, lsl #2
	vldr s4, [r6, #0]
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
	vldr s2, [r6, #-4]
	vmov s6, r8
	vmul.f32 s6, s6, s2
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s3, s5, s3
	vadd.f32 s3, s4, s3
	vstr s3, [r11, #-8]
	vmul.f32 s5, s0, s3
	vldr s4, [r6, #-8]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	vstr s1, [r11, #-12]
	vldr s2, [r6, #-12]
	mov r6, r7
	sub r7, r7, #4
	cmn r7, #1
	ble label75
	b label74
label118:
	movw r9, #1080
	ldr r5, [sp, #0]
	mla r5, r3, r9, r5
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
	mla r3, r3, r9, r0
	add r10, r3, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s5, s0, s2
	add r10, r5, r9
	add r10, r10, r2, lsl #2
	vldr s3, [r10, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s3
	vmov s7, r7
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
	add r9, r5, #2160
	add r9, r9, r2, lsl #2
	vldr s4, [r9, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	add r9, r3, #2160
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s5, s0, s2
	movw r9, #3240
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
	add r4, r4, #4
	cmp r4, #512
	bge label119
	b label118
label89:
	movw r8, #51281
	movt r8, #48700
	vmov s5, r8
	vmul.f32 s5, s5, s2
	movw r9, #9998
	movt r9, #15851
	vmov s6, r9
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	movw r10, #12860
	movt r10, #48923
	vmov s5, r10
	vmul.f32 s3, s5, s3
	vadd.f32 s3, s4, s3
	add r11, r5, r6, lsl #2
	vstr s3, [r11, #0]
	vmul.f32 s5, s0, s3
	add r6, r3, r6, lsl #2
	vldr s4, [r6, #0]
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
	vldr s2, [r6, #-4]
	vmov s6, r8
	vmul.f32 s6, s6, s2
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s3, s5, s3
	vadd.f32 s3, s4, s3
	vstr s3, [r11, #-8]
	vmul.f32 s5, s0, s3
	vldr s4, [r6, #-8]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	vstr s1, [r11, #-12]
	vldr s2, [r6, #-12]
	mov r6, r7
	sub r7, r7, #4
	cmn r7, #1
	ble label68
	b label89
label124:
	movw r9, #1080
	ldr r5, [sp, #0]
	mla r6, r3, r9, r5
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
	mla r3, r3, r9, r0
	add r10, r3, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s5, s0, s2
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s3, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s3
	vmov s7, r7
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
	add r9, r6, #2160
	add r9, r9, r2, lsl #2
	vldr s4, [r9, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	add r9, r3, #2160
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s5, s0, s2
	movw r9, #3240
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
	add r4, r4, #4
	cmp r4, #512
	bge label125
	b label124
label112:
	movw r9, #1080
	ldr r5, [sp, #0]
	mla r6, r3, r9, r5
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
	mla r3, r3, r9, r0
	add r10, r3, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s5, s0, s2
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s3, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s3
	vmov s7, r7
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
	add r9, r6, #2160
	add r9, r9, r2, lsl #2
	vldr s4, [r9, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	add r9, r3, #2160
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s5, s0, s2
	movw r9, #3240
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
	add r4, r4, #4
	cmp r4, #512
	bge label113
	b label112
label95:
	add r8, r6, r2, lsl #2
	vldr s1, [r8, #0]
	add r9, r4, r2, lsl #2
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
	mov r2, r7
	add r7, r7, #4
	movw r8, #270
	cmp r7, r8
	bge label96
	b label95
label103:
	add r3, r3, #1
	cmp r3, #512
	bge label698
	movw r2, #1080
	mla r4, r3, r2, r1
	mla r6, r3, r2, r0
	ldr r5, [sp, #0]
	mla r5, r3, r2, r5
	mov r2, #0
	add r7, r2, #4
	movw r8, #270
	cmp r7, r8
	bge label96
	b label95
label96:
	add r7, r2, #4
	movw r8, #270
	cmp r7, r8
	bge label98
label104:
	add r8, r6, r2, lsl #2
	vldr s1, [r8, #0]
	add r9, r4, r2, lsl #2
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
	mov r2, r7
	add r7, r7, #4
	movw r8, #270
	cmp r7, r8
	bge label98
	b label104
label98:
	add r7, r2, #4
	movw r8, #270
	cmp r7, r8
	bge label101
	b label100
label101:
	add r7, r6, r2, lsl #2
	vldr s1, [r7, #0]
	add r7, r4, r2, lsl #2
	vldr s2, [r7, #0]
	vadd.f32 s1, s1, s2
	add r7, r5, r2, lsl #2
	vstr s1, [r7, #0]
	add r2, r2, #1
	movw r7, #270
	cmp r2, r7
	bge label103
	b label101
label100:
	add r8, r6, r2, lsl #2
	vldr s1, [r8, #0]
	add r9, r4, r2, lsl #2
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
	mov r2, r7
	add r7, r7, #4
	movw r8, #270
	cmp r7, r8
	bge label101
	b label100
label819:
	mov r2, #0
	movw r3, #270
	cmp r2, r3
	bge label1119
	mov r3, #0
	vmov s1, r3
	vmov s2, r3
	vmov s3, r3
	vmov s4, r3
	movw r3, #511
	sub r4, r3, #4
	cmn r4, #1
	ble label155
	b label176
label155:
	sub r4, r3, #4
	cmn r4, #1
	ble label161
label175:
	movw r6, #51281
	movt r6, #48700
	vmov s5, r6
	vmul.f32 s5, s5, s2
	movw r7, #9998
	movt r7, #15851
	vmov s6, r7
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	movw r8, #12860
	movt r8, #48923
	vmov s5, r8
	vmul.f32 s3, s5, s3
	vadd.f32 s3, s4, s3
	movw r10, #1080
	mla r9, r3, r10, r1
	add r5, r9, r2, lsl #2
	vstr s3, [r5, #0]
	vmul.f32 s5, s0, s3
	ldr r5, [sp, #0]
	mla r3, r3, r10, r5
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
	vmul.f32 s5, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s2, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s2
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s3, s5, s3
	vadd.f32 s3, s4, s3
	sub r5, r9, #2160
	add r5, r5, r2, lsl #2
	vstr s3, [r5, #0]
	vmul.f32 s5, s0, s3
	sub r5, r3, #2160
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	movw r5, #62296
	movt r5, #65535
	add r6, r9, r5
	add r6, r6, r2, lsl #2
	vstr s1, [r6, #0]
	add r3, r3, r5
	add r3, r3, r2, lsl #2
	vldr s2, [r3, #0]
	mov r3, r4
	sub r4, r4, #4
	cmn r4, #1
	ble label161
	b label175
label161:
	sub r4, r3, #4
	cmn r4, #1
	ble label167
label174:
	movw r6, #51281
	movt r6, #48700
	vmov s5, r6
	vmul.f32 s5, s5, s2
	movw r7, #9998
	movt r7, #15851
	vmov s6, r7
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	movw r8, #12860
	movt r8, #48923
	vmov s5, r8
	vmul.f32 s3, s5, s3
	vadd.f32 s3, s4, s3
	movw r10, #1080
	mla r9, r3, r10, r1
	add r5, r9, r2, lsl #2
	vstr s3, [r5, #0]
	vmul.f32 s5, s0, s3
	ldr r5, [sp, #0]
	mla r3, r3, r10, r5
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
	vmul.f32 s5, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s2, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s2
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s3, s5, s3
	vadd.f32 s3, s4, s3
	sub r5, r9, #2160
	add r5, r5, r2, lsl #2
	vstr s3, [r5, #0]
	vmul.f32 s5, s0, s3
	sub r5, r3, #2160
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	movw r5, #62296
	movt r5, #65535
	add r6, r9, r5
	add r6, r6, r2, lsl #2
	vstr s1, [r6, #0]
	add r3, r3, r5
	add r3, r3, r2, lsl #2
	vldr s2, [r3, #0]
	mov r3, r4
	sub r4, r4, #4
	cmn r4, #1
	ble label167
	b label174
label167:
	movw r4, #51281
	movt r4, #48700
	vmov s5, r4
	vmul.f32 s5, s5, s2
	movw r4, #9998
	movt r4, #15851
	vmov s6, r4
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	movw r4, #12860
	movt r4, #48923
	vmov s5, r4
	vmul.f32 s3, s5, s3
	vadd.f32 s5, s4, s3
	movw r4, #1080
	mla r5, r3, r4, r1
	add r5, r5, r2, lsl #2
	vstr s5, [r5, #0]
	ldr r5, [sp, #0]
	mla r4, r3, r4, r5
	add r4, r4, r2, lsl #2
	vldr s6, [r4, #0]
	sub r3, r3, #1
	cmn r3, #1
	ble label173
	vmov.f32 s3, s1
	vmov.f32 s4, s2
	vmov.f32 s1, s5
	vmov.f32 s2, s6
	b label167
label176:
	movw r6, #51281
	movt r6, #48700
	vmov s5, r6
	vmul.f32 s5, s5, s2
	movw r7, #9998
	movt r7, #15851
	vmov s6, r7
	vmul.f32 s4, s6, s4
	vadd.f32 s4, s5, s4
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	movw r8, #12860
	movt r8, #48923
	vmov s5, r8
	vmul.f32 s3, s5, s3
	vadd.f32 s3, s4, s3
	movw r10, #1080
	mla r9, r3, r10, r1
	add r5, r9, r2, lsl #2
	vstr s3, [r5, #0]
	vmul.f32 s5, s0, s3
	ldr r5, [sp, #0]
	mla r3, r3, r10, r5
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
	vmul.f32 s5, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s2, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s2
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s3, s5, s3
	vadd.f32 s3, s4, s3
	sub r5, r9, #2160
	add r5, r5, r2, lsl #2
	vstr s3, [r5, #0]
	vmul.f32 s5, s0, s3
	sub r5, r3, #2160
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	movw r5, #62296
	movt r5, #65535
	add r6, r9, r5
	add r6, r6, r2, lsl #2
	vstr s1, [r6, #0]
	add r3, r3, r5
	add r3, r3, r2, lsl #2
	vldr s2, [r3, #0]
	mov r3, r4
	sub r4, r4, #4
	cmn r4, #1
	ble label155
	b label176
label40:
	add r8, r3, r6, lsl #2
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
	add r6, r5, r6, lsl #2
	vstr s2, [r6, #0]
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
	vstr s1, [r6, #4]
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
	vstr s2, [r6, #8]
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
	vstr s1, [r6, #12]
	mov r6, r7
	add r7, r7, #4
	movw r8, #270
	cmp r7, r8
	bge label41
	b label40
label41:
	add r7, r6, #4
	movw r8, #270
	cmp r7, r8
	bge label46
label58:
	add r8, r3, r6, lsl #2
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
	add r6, r5, r6, lsl #2
	vstr s2, [r6, #0]
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
	vstr s1, [r6, #4]
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
	vstr s2, [r6, #8]
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
	vstr s1, [r6, #12]
	mov r6, r7
	add r7, r7, #4
	movw r8, #270
	cmp r7, r8
	bge label46
	b label58
label46:
	add r7, r6, #4
	movw r8, #270
	cmp r7, r8
	bge label51
label57:
	add r8, r3, r6, lsl #2
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
	add r6, r5, r6, lsl #2
	vstr s2, [r6, #0]
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
	vstr s1, [r6, #4]
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
	vstr s2, [r6, #8]
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
	vstr s1, [r6, #12]
	mov r6, r7
	add r7, r7, #4
	movw r8, #270
	cmp r7, r8
	bge label51
	b label57
label1119:
	mov r3, #0
	cmp r3, #512
	bge label148
	movw r2, #1080
	mla r4, r3, r2, r1
	mla r6, r3, r2, r0
	ldr r5, [sp, #0]
	mla r5, r3, r2, r5
	mov r2, #0
	add r7, r2, #4
	movw r8, #270
	cmp r7, r8
	bge label139
	b label138
label148:
	mov r0, #158
	bl _sysy_stoptime
	mov r0, #138240
	ldr r5, [sp, #0]
	mov r1, r5
	bl putfarray
	mov r0, #0
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label138:
	add r8, r6, r2, lsl #2
	vldr s0, [r8, #0]
	add r9, r4, r2, lsl #2
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
	mov r2, r7
	add r7, r7, #4
	movw r8, #270
	cmp r7, r8
	bge label139
	b label138
label144:
	add r7, r6, r2, lsl #2
	vldr s0, [r7, #0]
	add r7, r4, r2, lsl #2
	vldr s1, [r7, #0]
	vadd.f32 s0, s0, s1
	add r7, r5, r2, lsl #2
	vstr s0, [r7, #0]
	add r2, r2, #1
	movw r7, #270
	cmp r2, r7
	bge label146
	b label144
label146:
	add r3, r3, #1
	cmp r3, #512
	bge label148
	movw r2, #1080
	mla r4, r3, r2, r1
	mla r6, r3, r2, r0
	ldr r5, [sp, #0]
	mla r5, r3, r2, r5
	mov r2, #0
	add r7, r2, #4
	movw r8, #270
	cmp r7, r8
	bge label139
	b label138
label139:
	add r7, r2, #4
	movw r8, #270
	cmp r7, r8
	bge label142
label141:
	add r8, r6, r2, lsl #2
	vldr s0, [r8, #0]
	add r9, r4, r2, lsl #2
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
	mov r2, r7
	add r7, r7, #4
	movw r8, #270
	cmp r7, r8
	bge label142
	b label141
label142:
	add r7, r2, #4
	movw r8, #270
	cmp r7, r8
	bge label144
label147:
	add r8, r6, r2, lsl #2
	vldr s0, [r8, #0]
	add r9, r4, r2, lsl #2
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
	mov r2, r7
	add r7, r7, #4
	movw r8, #270
	cmp r7, r8
	bge label144
	b label147
label173:
	add r2, r2, #1
	movw r3, #270
	cmp r2, r3
	bge label1119
	mov r3, #0
	vmov s1, r3
	vmov s2, r3
	vmov s3, r3
	vmov s4, r3
	movw r3, #511
	sub r4, r3, #4
	cmn r4, #1
	ble label155
	b label176
label88:
	add r2, r2, #1
	cmp r2, #512
	bge label443
	movw r5, #1080
	mla r3, r2, r5, r4
	mla r5, r2, r5, r1
	mov r6, #0
	vmov s1, r6
	vmov s2, r6
	vmov s3, r6
	vmov s4, r6
	movw r6, #269
	sub r7, r6, #4
	cmn r7, #1
	ble label68
	b label89
