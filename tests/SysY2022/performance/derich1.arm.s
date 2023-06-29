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
	bge label158
	b label176
label191:
	mov r2, #0
	cmp r2, #512
	bge label195
	b label194
label195:
	mov r3, #0
	cmp r3, #512
	bge label450
	movw r2, #1080
	mla r4, r3, r2, r1
	mla r6, r3, r2, r0
	ldr r5, [sp, #0]
	mla r5, r3, r2, r5
	mov r2, #0
	add r7, r2, #4
	movw r8, #270
	cmp r7, r8
	bge label71
	b label70
label450:
	mov r2, #0
	movw r3, #270
	cmp r2, r3
	bge label571
	mov r3, #0
	vmov s1, r3
	vmov s3, r3
	vmov s2, r3
	add r4, r3, #4
	cmp r4, #512
	bge label134
	b label133
label571:
	mov r2, #0
	movw r3, #270
	cmp r2, r3
	bge label581
	mov r3, #0
	vmov s1, r3
	vmov s2, r3
	vmov s3, r3
	vmov s4, r3
	movw r3, #511
	sub r4, r3, #4
	cmn r4, #1
	ble label106
	b label127
label581:
	mov r3, #0
	cmp r3, #512
	bge label99
	movw r2, #1080
	mla r4, r3, r2, r1
	mla r6, r3, r2, r0
	ldr r5, [sp, #0]
	mla r5, r3, r2, r5
	mov r2, #0
	add r7, r2, #4
	movw r8, #270
	cmp r7, r8
	bge label90
	b label89
label134:
	add r4, r3, #4
	cmp r4, #512
	bge label139
	b label151
label119:
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
	ble label125
	vmov.f32 s3, s1
	vmov.f32 s4, s2
	vmov.f32 s1, s5
	vmov.f32 s2, s6
	b label119
label125:
	add r2, r2, #1
	movw r3, #270
	cmp r2, r3
	bge label581
	mov r3, #0
	vmov s1, r3
	vmov s2, r3
	vmov s3, r3
	vmov s4, r3
	movw r3, #511
	sub r4, r3, #4
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
	ble label106
	b label127
label106:
	sub r4, r3, #4
	cmn r4, #1
	ble label112
	b label126
label158:
	add r7, r6, #4
	movw r8, #270
	cmp r7, r8
	bge label164
label163:
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
	bge label164
	b label163
label164:
	add r7, r6, #4
	movw r8, #270
	cmp r7, r8
	bge label170
	b label169
label170:
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
	bge label175
	vmov.f32 s3, s4
	vmov.f32 s2, s1
	vmov.f32 s1, s5
	b label170
label112:
	sub r4, r3, #4
	cmn r4, #1
	ble label119
	b label118
label139:
	add r4, r3, #4
	cmp r4, #512
	bge label144
	b label150
label144:
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
	bge label149
	vmov.f32 s3, s4
	vmov.f32 s2, s1
	vmov.f32 s1, s5
	b label144
label149:
	add r2, r2, #1
	movw r3, #270
	cmp r2, r3
	bge label571
	mov r3, #0
	vmov s1, r3
	vmov s3, r3
	vmov s2, r3
	add r4, r3, #4
	cmp r4, #512
	bge label134
	b label133
label118:
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
	ble label119
	b label118
label71:
	add r7, r2, #4
	movw r8, #270
	cmp r7, r8
	bge label73
	b label79
label73:
	add r7, r2, #4
	movw r8, #270
	cmp r7, r8
	bge label76
	b label75
label76:
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
	bge label78
	b label76
label78:
	add r3, r3, #1
	cmp r3, #512
	bge label450
	movw r2, #1080
	mla r4, r3, r2, r1
	mla r6, r3, r2, r0
	ldr r5, [sp, #0]
	mla r5, r3, r2, r5
	mov r2, #0
	add r7, r2, #4
	movw r8, #270
	cmp r7, r8
	bge label71
	b label70
label75:
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
	bge label76
	b label75
label79:
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
	bge label73
	b label79
label70:
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
	bge label71
	b label70
label126:
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
	ble label112
	b label126
label89:
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
	bge label90
	b label89
label90:
	add r7, r2, #4
	movw r8, #270
	cmp r7, r8
	bge label92
	b label98
label92:
	add r7, r2, #4
	movw r8, #270
	cmp r7, r8
	bge label95
label94:
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
	bge label95
	b label94
label95:
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
	bge label97
	b label95
label98:
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
	bge label92
	b label98
label133:
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
	bge label134
	b label133
label151:
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
	bge label139
	b label151
label176:
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
	bge label158
	b label176
label169:
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
	bge label170
	b label169
label150:
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
	bge label144
	b label150
label194:
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
	ble label43
	b label64
label63:
	add r2, r2, #1
	cmp r2, #512
	bge label195
	b label194
label43:
	sub r7, r6, #4
	cmn r7, #1
	ble label50
	b label49
label50:
	sub r7, r6, #4
	cmn r7, #1
	ble label57
label56:
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
	ble label57
	b label56
label57:
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
	ble label63
	vmov.f32 s3, s1
	vmov.f32 s4, s2
	vmov.f32 s1, s5
	vmov.f32 s2, s6
	b label57
label49:
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
	ble label50
	b label49
label64:
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
	ble label43
	b label64
label175:
	add r2, r2, #1
	cmp r2, #512
	bge label191
	b label190
label97:
	add r3, r3, #1
	cmp r3, #512
	bge label99
	movw r2, #1080
	mla r4, r3, r2, r1
	mla r6, r3, r2, r0
	ldr r5, [sp, #0]
	mla r5, r3, r2, r5
	mov r2, #0
	add r7, r2, #4
	movw r8, #270
	cmp r7, r8
	bge label90
	b label89
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
