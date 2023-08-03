.arch armv7ve
.data
.bss
.align 8
imgIn:
	.zero	552960
.align 8
imgOut:
	.zero	552960
.align 8
my_y1:
	.zero	552960
.align 8
my_y2:
	.zero	552960
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	movw r5, #:lower16:imgIn
	movt r5, #:upper16:imgIn
	mov r0, r5
	bl getfarray
	mov r0, #156
	bl _sysy_starttime
	mov r6, #0
	mov r3, r5
	movw r1, #:lower16:my_y2
	movt r1, #:upper16:my_y2
	movw r0, #:lower16:my_y1
	movt r0, #:upper16:my_y1
	movw r4, #:lower16:imgOut
	movt r4, #:upper16:imgOut
	mov r2, r0
	cmp r6, #512
	blt label6
label132:
	mov r2, r5
	mov r3, r1
	mov r5, #0
	b label24
.p2align 4
label6:
	mov r8, #0
	mov r7, r3
	vmov s5, r8
	vmov.f32 s6, s5
	vmov.f32 s3, s5
.p2align 4
label7:
	vldr s4, [r7, #0]
	movw r9, #61929
	movt r9, #48705
	vmov s0, r9
	movw r9, #35322
	movt r9, #15842
	vmov s1, r9
	movw r9, #12860
	movt r9, #48923
	vmul.f32 s2, s4, s0
	vmul.f32 s6, s6, s1
	vmul.f32 s4, s4, s1
	vadd.f32 s2, s2, s6
	vadd.f32 s6, s2, s3
	vmov s2, r9
	add r9, r2, r8, lsl #2
	vmul.f32 s3, s3, s2
	vmul.f32 s5, s5, s2
	vadd.f32 s5, s6, s5
	vstr s5, [r9, #0]
	vldr s7, [r7, #4]
	vmul.f32 s6, s7, s0
	vmul.f32 s7, s7, s1
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s5, s2
	vadd.f32 s4, s4, s3
	vstr s4, [r9, #4]
	vldr s6, [r7, #8]
	vmul.f32 s3, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s3, s3, s7
	vadd.f32 s3, s3, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s3, s5
	vstr s3, [r9, #8]
	vldr s5, [r7, #12]
	vmul.f32 s7, s5, s0
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s6, s4
	vstr s4, [r9, #12]
	vldr s6, [r7, #16]
	vmul.f32 s7, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s5, s3
	vstr s3, [r9, #16]
	vldr s7, [r7, #20]
	vmul.f32 s5, s7, s0
	vmul.f32 s7, s7, s1
	vadd.f32 s5, s5, s6
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s5, s4
	vstr s4, [r9, #20]
	vldr s5, [r7, #24]
	vmul.f32 s6, s5, s0
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s6, s7
	vadd.f32 s6, s6, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s6, s3
	vstr s3, [r9, #24]
	vldr s6, [r7, #28]
	vmul.f32 s7, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s5, s5, s4
	vstr s5, [r9, #28]
	vldr s7, [r7, #32]
	vmul.f32 s4, s7, s0
	vmul.f32 s7, s7, s1
	vadd.f32 s4, s4, s6
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s5, s2
	vadd.f32 s4, s4, s3
	vstr s4, [r9, #32]
	vldr s6, [r7, #36]
	vmul.f32 s3, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s3, s3, s7
	vadd.f32 s3, s3, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s3, s5
	vstr s3, [r9, #36]
	vldr s5, [r7, #40]
	vmul.f32 s7, s5, s0
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s6, s4
	vstr s4, [r9, #40]
	vldr s6, [r7, #44]
	vmul.f32 s7, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s5, s3
	vstr s3, [r9, #44]
	vldr s7, [r7, #48]
	vmul.f32 s5, s7, s0
	vmul.f32 s7, s7, s1
	vadd.f32 s5, s5, s6
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s5, s5, s4
	vstr s5, [r9, #48]
	vldr s6, [r7, #52]
	vmul.f32 s4, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s4, s4, s7
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s5, s2
	vadd.f32 s4, s4, s3
	vstr s4, [r9, #52]
	vldr s7, [r7, #56]
	vmul.f32 s1, s7, s1
	vmul.f32 s3, s7, s0
	vadd.f32 s3, s3, s6
	vadd.f32 s3, s3, s4
	vadd.f32 s3, s3, s5
	vstr s3, [r9, #56]
	vldr s6, [r7, #60]
	vmul.f32 s0, s6, s0
	vadd.f32 s0, s0, s1
	vmul.f32 s1, s4, s2
	vadd.f32 s0, s0, s3
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #60]
	add r9, r8, #16
	cmp r9, #256
	bge label14
	add r7, r7, #64
	vmov.f32 s5, s3
	mov r8, r9
	vmov.f32 s3, s0
	b label7
.p2align 4
label21:
	add r6, r6, #1
	movw r7, #1080
	cmp r6, #512
	add r3, r3, r7
	add r2, r2, r7
	blt label6
	b label132
label24:
	cmp r5, #512
	bge label438
.p2align 4
label28:
	movw r6, #1076
	mov r7, #0
	add r6, r3, r6
	vmov s5, r7
	movw r7, #269
	vmov.f32 s2, s5
	vmov.f32 s3, s5
	vmov.f32 s4, s5
.p2align 4
label29:
	movw r8, #51281
	movt r8, #48700
	vmov s0, r8
	movw r8, #9998
	movt r8, #15851
	vmov s1, r8
	movw r8, #12860
	movt r8, #48923
	vmul.f32 s6, s4, s0
	vmul.f32 s2, s2, s1
	vmul.f32 s4, s4, s1
	vadd.f32 s2, s6, s2
	vadd.f32 s6, s2, s3
	vmov s2, r8
	add r8, r2, r7, lsl #2
	vmul.f32 s3, s3, s2
	vmul.f32 s5, s5, s2
	vadd.f32 s5, s6, s5
	vstr s5, [r6, #0]
	vldr s6, [r8, #0]
	vmul.f32 s7, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s4, s7, s4
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s5, s2
	vadd.f32 s4, s4, s3
	vstr s4, [r6, #-4]
	vldr s7, [r8, #-4]
	vmul.f32 s3, s7, s0
	vmul.f32 s7, s7, s1
	vadd.f32 s3, s3, s6
	vadd.f32 s3, s3, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s3, s5
	vstr s3, [r6, #-8]
	vldr s5, [r8, #-8]
	vmul.f32 s6, s5, s0
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s6, s7
	vadd.f32 s6, s6, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s6, s4
	vstr s4, [r6, #-12]
	vldr s7, [r8, #-12]
	vmul.f32 s6, s7, s0
	vmul.f32 s7, s7, s1
	vadd.f32 s5, s6, s5
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s5, s5, s3
	vstr s5, [r6, #-16]
	vldr s6, [r8, #-16]
	vmul.f32 s3, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s3, s3, s7
	vadd.f32 s3, s3, s5
	vmul.f32 s5, s5, s2
	vadd.f32 s3, s3, s4
	vstr s3, [r6, #-20]
	vldr s7, [r8, #-20]
	vmul.f32 s4, s7, s0
	vmul.f32 s7, s7, s1
	vadd.f32 s4, s4, s6
	vadd.f32 s4, s4, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s4, s5
	vstr s4, [r6, #-24]
	vldr s5, [r8, #-24]
	vmul.f32 s6, s5, s0
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s6, s7
	vadd.f32 s6, s6, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s6, s3
	vstr s3, [r6, #-28]
	vldr s6, [r8, #-28]
	vmul.f32 s7, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s5, s4
	vstr s4, [r6, #-32]
	vldr s7, [r8, #-32]
	vmul.f32 s5, s7, s0
	vmul.f32 s7, s7, s1
	vadd.f32 s5, s5, s6
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s5, s3
	vstr s3, [r6, #-36]
	vldr s5, [r8, #-36]
	vmul.f32 s6, s5, s0
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s6, s7
	vadd.f32 s6, s6, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s6, s4
	vstr s4, [r6, #-40]
	vldr s6, [r8, #-40]
	vmul.f32 s7, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s5, s5, s3
	vstr s5, [r6, #-44]
	vldr s7, [r8, #-44]
	vmul.f32 s3, s7, s0
	vmul.f32 s7, s7, s1
	vadd.f32 s3, s3, s6
	vadd.f32 s3, s3, s5
	vmul.f32 s5, s5, s2
	vadd.f32 s3, s3, s4
	vstr s3, [r6, #-48]
	vldr s4, [r8, #-48]
	vmul.f32 s6, s4, s0
	vmul.f32 s4, s4, s1
	vadd.f32 s6, s6, s7
	vadd.f32 s6, s6, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s5, s6, s5
	vstr s5, [r6, #-52]
	vldr s6, [r8, #-52]
	vmul.f32 s1, s6, s1
	vmul.f32 s7, s6, s0
	vadd.f32 s4, s7, s4
	vadd.f32 s4, s4, s5
	vadd.f32 s3, s4, s3
	vstr s3, [r6, #-56]
	vldr s4, [r8, #-56]
	vmul.f32 s0, s4, s0
	vadd.f32 s0, s0, s1
	vmul.f32 s1, s5, s2
	vadd.f32 s0, s0, s3
	vadd.f32 s0, s0, s1
	vstr s0, [r6, #-60]
	vldr s1, [r8, #-60]
	sub r8, r7, #16
	cmp r8, #13
	bgt label46
	b label36
.p2align 4
label735:
	add r5, r5, #1
	movw r6, #1080
	cmp r5, #512
	add r2, r2, r6
	add r3, r3, r6
	blt label28
	b label438
.p2align 4
label46:
	sub r6, r6, #64
	vmov.f32 s5, s3
	vmov.f32 s2, s4
	mov r7, r8
	vmov.f32 s3, s0
	vmov.f32 s4, s1
	b label29
.p2align 4
label14:
	add r7, r3, r9, lsl #2
	movw r10, #61929
	movt r10, #48705
	add r8, r8, #28
	add r9, r2, r9, lsl #2
	vmov s1, r10
	vldr s5, [r7, #0]
	movw r10, #35322
	movt r10, #15842
	vmov s2, r10
	movw r10, #12860
	movt r10, #48923
	vmul.f32 s4, s5, s1
	vmul.f32 s6, s6, s2
	vmul.f32 s5, s5, s2
	vadd.f32 s4, s4, s6
	vadd.f32 s6, s4, s0
	vmov s4, r10
	vmul.f32 s3, s3, s4
	vmul.f32 s0, s0, s4
	vadd.f32 s3, s6, s3
	vstr s3, [r9, #0]
	vldr s7, [r7, #4]
	vmul.f32 s6, s7, s1
	vmul.f32 s7, s7, s2
	vadd.f32 s5, s6, s5
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s4
	vadd.f32 s0, s5, s0
	vstr s0, [r9, #4]
	vldr s6, [r7, #8]
	vmul.f32 s5, s6, s1
	vmul.f32 s6, s6, s2
	vadd.f32 s5, s5, s7
	vadd.f32 s5, s5, s0
	vmul.f32 s0, s0, s4
	vadd.f32 s3, s5, s3
	vstr s3, [r9, #8]
	vldr s5, [r7, #12]
	vmul.f32 s7, s5, s1
	vmul.f32 s5, s5, s2
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s3
	vmul.f32 s3, s3, s4
	vadd.f32 s0, s6, s0
	vstr s0, [r9, #12]
	vldr s6, [r7, #16]
	vmul.f32 s7, s6, s1
	vmul.f32 s6, s6, s2
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s0
	vmul.f32 s0, s0, s4
	vadd.f32 s3, s5, s3
	vstr s3, [r9, #16]
	vldr s5, [r7, #20]
	vmul.f32 s7, s5, s1
	vmul.f32 s5, s5, s2
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s3
	vmul.f32 s3, s3, s4
	vadd.f32 s0, s6, s0
	vstr s0, [r9, #20]
	vldr s6, [r7, #24]
	vmul.f32 s7, s6, s1
	vmul.f32 s6, s6, s2
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s0
	vmul.f32 s0, s0, s4
	vadd.f32 s3, s5, s3
	vstr s3, [r9, #24]
	vldr s5, [r7, #28]
	vmul.f32 s7, s5, s1
	vmul.f32 s5, s5, s2
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s3
	vmul.f32 s3, s3, s4
	vadd.f32 s0, s6, s0
	vstr s0, [r9, #28]
	vldr s6, [r7, #32]
	vmul.f32 s7, s6, s1
	vmul.f32 s6, s6, s2
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s0
	vmul.f32 s0, s0, s4
	vadd.f32 s3, s5, s3
	vstr s3, [r9, #32]
	vldr s5, [r7, #36]
	vmul.f32 s7, s5, s1
	vmul.f32 s5, s5, s2
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s3
	vmul.f32 s3, s3, s4
	vadd.f32 s0, s6, s0
	vstr s0, [r9, #36]
	vldr s6, [r7, #40]
	vmul.f32 s2, s6, s2
	vmul.f32 s7, s6, s1
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s0
	vmul.f32 s0, s0, s4
	vadd.f32 s3, s5, s3
	vstr s3, [r9, #40]
	vldr s5, [r7, #44]
	add r7, r3, r8, lsl #2
	vmul.f32 s1, s5, s1
	vmov.f32 s4, s5
	vadd.f32 s1, s1, s2
	vmov.f32 s2, s3
	vadd.f32 s1, s1, s3
	vadd.f32 s0, s1, s0
	vstr s0, [r9, #44]
.p2align 4
label15:
	vldr s1, [r7, #0]
	movw r9, #61929
	movt r9, #48705
	vmov s3, r9
	movw r9, #35322
	movt r9, #15842
	vmov s5, r9
	movw r9, #12860
	movt r9, #48923
	vmul.f32 s3, s1, s3
	vmul.f32 s4, s4, s5
	vadd.f32 s3, s3, s4
	vmov s4, r9
	add r9, r2, r8, lsl #2
	add r8, r8, #1
	vadd.f32 s3, s3, s0
	vmul.f32 s2, s2, s4
	vadd.f32 s3, s3, s2
	vstr s3, [r9, #0]
	movw r9, #270
	cmp r8, r9
	bge label21
	add r7, r7, #4
	vmov.f32 s4, s1
	vmov.f32 s2, s0
	vmov.f32 s0, s3
	b label15
.p2align 4
label36:
	movw r6, #51281
	movt r6, #48700
	sub r7, r7, #28
	vmov s2, r6
	movw r6, #9998
	movt r6, #15851
	vmov s5, r6
	movw r6, #12860
	movt r6, #48923
	vmul.f32 s6, s1, s2
	vmul.f32 s4, s4, s5
	vmul.f32 s1, s1, s5
	vadd.f32 s4, s6, s4
	vadd.f32 s6, s4, s0
	vmov s4, r6
	add r6, r3, r8, lsl #2
	add r8, r2, r8, lsl #2
	vmul.f32 s3, s3, s4
	vmul.f32 s0, s0, s4
	vadd.f32 s3, s6, s3
	vstr s3, [r6, #0]
	vldr s6, [r8, #0]
	vmul.f32 s7, s6, s2
	vmul.f32 s6, s6, s5
	vadd.f32 s1, s7, s1
	vadd.f32 s1, s1, s3
	vmul.f32 s3, s3, s4
	vadd.f32 s0, s1, s0
	vstr s0, [r6, #-4]
	vldr s7, [r8, #-4]
	vmul.f32 s1, s7, s2
	vmul.f32 s7, s7, s5
	vadd.f32 s1, s1, s6
	vadd.f32 s1, s1, s0
	vmul.f32 s0, s0, s4
	vadd.f32 s1, s1, s3
	vstr s1, [r6, #-8]
	vldr s3, [r8, #-8]
	vmul.f32 s6, s3, s2
	vmul.f32 s3, s3, s5
	vadd.f32 s6, s6, s7
	vadd.f32 s6, s6, s1
	vmul.f32 s1, s1, s4
	vadd.f32 s0, s6, s0
	vstr s0, [r6, #-12]
	vldr s6, [r8, #-12]
	vmul.f32 s7, s6, s2
	vmul.f32 s6, s6, s5
	vadd.f32 s3, s7, s3
	vadd.f32 s3, s3, s0
	vmul.f32 s0, s0, s4
	vadd.f32 s1, s3, s1
	vstr s1, [r6, #-16]
	vldr s7, [r8, #-16]
	vmul.f32 s3, s7, s2
	vadd.f32 s3, s3, s6
	vmul.f32 s6, s7, s5
	vadd.f32 s3, s3, s1
	vmul.f32 s1, s1, s4
	vadd.f32 s3, s3, s0
	vstr s3, [r6, #-20]
	vldr s8, [r8, #-20]
	vmul.f32 s7, s8, s5
	vmul.f32 s0, s8, s2
	vadd.f32 s0, s0, s6
	vadd.f32 s0, s0, s3
	vmul.f32 s3, s3, s4
	vadd.f32 s0, s0, s1
	vstr s0, [r6, #-24]
	vldr s6, [r8, #-24]
	vmul.f32 s1, s6, s2
	vmul.f32 s6, s6, s5
	vadd.f32 s1, s1, s7
	vadd.f32 s1, s1, s0
	vmul.f32 s0, s0, s4
	vadd.f32 s1, s1, s3
	vstr s1, [r6, #-28]
	vldr s3, [r8, #-28]
	vmul.f32 s7, s3, s2
	vmul.f32 s3, s3, s5
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s1
	vmul.f32 s1, s1, s4
	vadd.f32 s0, s6, s0
	vstr s0, [r6, #-32]
	vldr s6, [r8, #-32]
	vmul.f32 s7, s6, s2
	vmul.f32 s6, s6, s5
	vadd.f32 s3, s7, s3
	vadd.f32 s3, s3, s0
	vmul.f32 s0, s0, s4
	vadd.f32 s1, s3, s1
	vstr s1, [r6, #-36]
	vldr s7, [r8, #-36]
	vmul.f32 s3, s7, s2
	vadd.f32 s3, s3, s6
	vadd.f32 s3, s3, s1
	vmul.f32 s1, s1, s4
	vadd.f32 s3, s3, s0
	vstr s3, [r6, #-40]
	vldr s6, [r8, #-40]
	vmov.f32 s4, s6
	vmul.f32 s0, s6, s2
	vmul.f32 s2, s7, s5
	vadd.f32 s0, s0, s2
	vmov.f32 s2, s3
	vadd.f32 s0, s0, s3
	vadd.f32 s1, s0, s1
	vstr s1, [r6, #-44]
	add r6, r3, r7, lsl #2
	vldr s0, [r8, #-44]
.p2align 4
label37:
	movw r8, #51281
	movt r8, #48700
	vmov s3, r8
	movw r8, #9998
	movt r8, #15851
	vmov s5, r8
	movw r8, #12860
	movt r8, #48923
	vmul.f32 s3, s0, s3
	vmul.f32 s4, s4, s5
	vadd.f32 s3, s3, s4
	vmov s4, r8
	add r8, r2, r7, lsl #2
	sub r7, r7, #1
	vadd.f32 s3, s3, s1
	cmn r7, #1
	vmul.f32 s2, s2, s4
	vadd.f32 s3, s3, s2
	vstr s3, [r6, #0]
	vldr s5, [r8, #0]
	ble label735
	sub r6, r6, #4
	vmov.f32 s4, s0
	vmov.f32 s2, s1
	vmov.f32 s0, s5
	vmov.f32 s1, s3
	b label37
label438:
	mov r2, r1
	mov r5, r0
	mov r3, r4
	mov r6, #0
	cmp r6, #512
	blt label53
label746:
	mov r2, #0
	b label64
.p2align 4
label53:
	mov r7, r5
	mov r8, #0
	b label54
.p2align 4
label939:
	add r6, r6, #1
	movw r7, #1080
	cmp r6, #512
	add r2, r2, r7
	add r5, r5, r7
	add r3, r3, r7
	blt label53
	b label746
label64:
	movw r3, #270
	cmp r2, r3
	blt label105
	b label948
.p2align 4
label54:
	vldr s0, [r7, #0]
	add r9, r2, r8, lsl #2
	add r10, r3, r8, lsl #2
	vldr s1, [r9, #0]
	vadd.f32 s0, s0, s1
	vstr s0, [r10, #0]
	vldr s0, [r7, #4]
	vldr s1, [r9, #4]
	vadd.f32 s0, s0, s1
	vstr s0, [r10, #4]
	vldr s0, [r7, #8]
	vldr s1, [r9, #8]
	vadd.f32 s0, s0, s1
	vstr s0, [r10, #8]
	vldr s0, [r7, #12]
	vldr s1, [r9, #12]
	vadd.f32 s0, s0, s1
	vstr s0, [r10, #12]
	vldr s0, [r7, #16]
	vldr s1, [r9, #16]
	vadd.f32 s0, s0, s1
	vstr s0, [r10, #16]
	vldr s0, [r7, #20]
	vldr s1, [r9, #20]
	vadd.f32 s0, s0, s1
	vstr s0, [r10, #20]
	vldr s0, [r7, #24]
	vldr s1, [r9, #24]
	vadd.f32 s0, s0, s1
	vstr s0, [r10, #24]
	vldr s0, [r7, #28]
	vldr s1, [r9, #28]
	vadd.f32 s0, s0, s1
	vstr s0, [r10, #28]
	vldr s0, [r7, #32]
	vldr s1, [r9, #32]
	vadd.f32 s0, s0, s1
	vstr s0, [r10, #32]
	vldr s0, [r7, #36]
	vldr s1, [r9, #36]
	vadd.f32 s0, s0, s1
	vstr s0, [r10, #36]
	vldr s0, [r7, #40]
	vldr s1, [r9, #40]
	vadd.f32 s0, s0, s1
	vstr s0, [r10, #40]
	vldr s0, [r7, #44]
	vldr s1, [r9, #44]
	vadd.f32 s0, s0, s1
	vstr s0, [r10, #44]
	vldr s0, [r7, #48]
	vldr s1, [r9, #48]
	vadd.f32 s0, s0, s1
	vstr s0, [r10, #48]
	vldr s0, [r7, #52]
	vldr s1, [r9, #52]
	vadd.f32 s0, s0, s1
	vstr s0, [r10, #52]
	vldr s0, [r7, #56]
	vldr s1, [r9, #56]
	vadd.f32 s0, s0, s1
	vstr s0, [r10, #56]
	vldr s0, [r7, #60]
	vldr s1, [r9, #60]
	add r9, r8, #16
	cmp r9, #256
	vadd.f32 s0, s0, s1
	vstr s0, [r10, #60]
	bge label58
	add r7, r7, #64
	mov r8, r9
	b label54
.p2align 4
label58:
	add r7, r5, r9, lsl #2
	add r8, r8, #28
	add r10, r2, r9, lsl #2
	vldr s0, [r7, #0]
	add r9, r3, r9, lsl #2
	vldr s1, [r10, #0]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #0]
	vldr s0, [r7, #4]
	vldr s1, [r10, #4]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #4]
	vldr s0, [r7, #8]
	vldr s1, [r10, #8]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #8]
	vldr s0, [r7, #12]
	vldr s1, [r10, #12]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #12]
	vldr s0, [r7, #16]
	vldr s1, [r10, #16]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #16]
	vldr s0, [r7, #20]
	vldr s1, [r10, #20]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #20]
	vldr s0, [r7, #24]
	vldr s1, [r10, #24]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #24]
	vldr s0, [r7, #28]
	vldr s1, [r10, #28]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #28]
	vldr s0, [r7, #32]
	vldr s1, [r10, #32]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #32]
	vldr s0, [r7, #36]
	vldr s1, [r10, #36]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #36]
	vldr s0, [r7, #40]
	vldr s1, [r10, #40]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #40]
	vldr s0, [r7, #44]
	add r7, r5, r8, lsl #2
	vldr s1, [r10, #44]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #44]
.p2align 4
label59:
	vldr s0, [r7, #0]
	add r9, r2, r8, lsl #2
	vldr s1, [r9, #0]
	add r9, r3, r8, lsl #2
	add r8, r8, #1
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #0]
	movw r9, #270
	cmp r8, r9
	bge label939
	add r7, r7, #4
	b label59
label948:
	mov r2, #0
	movw r3, #270
	cmp r2, r3
	blt label86
	b label68
.p2align 4
label105:
	mov r5, #0
	mov r3, r4
	vmov s6, r5
	vmov.f32 s5, s6
	vmov.f32 s3, s6
	b label106
.p2align 4
label119:
	add r2, r2, #1
	movw r3, #270
	cmp r2, r3
	blt label105
	b label948
label68:
	mov r2, r0
	mov r3, #0
	mov r0, r4
	cmp r3, #512
	blt label74
	b label85
.p2align 4
label86:
	movw r3, #27592
	movt r3, #8
	mov r5, #0
	add r3, r1, r3
	vmov s4, r5
	movw r5, #511
	vmov.f32 s2, s4
	vmov.f32 s3, s4
	vmov.f32 s5, s4
.p2align 4
label87:
	movw r6, #51281
	movt r6, #48700
	vmov s0, r6
	movw r6, #9998
	movt r6, #15851
	vmov s1, r6
	movw r6, #12860
	movt r6, #48923
	vmul.f32 s6, s5, s0
	vmul.f32 s2, s2, s1
	vmul.f32 s5, s5, s1
	vadd.f32 s2, s6, s2
	vadd.f32 s6, s2, s3
	vmov s2, r6
	add r6, r3, r2, lsl #2
	vmul.f32 s4, s4, s2
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s6, s4
	vstr s4, [r6, #0]
	movw r6, #1080
	mla r6, r5, r6, r4
	add r7, r6, r2, lsl #2
	vldr s6, [r7, #0]
	movw r7, #64456
	movt r7, #65535
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	vmul.f32 s7, s6, s0
	add r7, r7, r2, lsl #2
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s5, s3
	vstr s3, [r8, #0]
	vldr s7, [r7, #0]
	sub r7, r3, #2160
	add r7, r7, r2, lsl #2
	vmul.f32 s5, s7, s0
	vmul.f32 s7, s7, s1
	vadd.f32 s5, s5, s6
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s5, s4
	vstr s4, [r7, #0]
	sub r7, r6, #2160
	add r7, r7, r2, lsl #2
	vldr s5, [r7, #0]
	movw r7, #62296
	movt r7, #65535
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	vmul.f32 s6, s5, s0
	add r7, r7, r2, lsl #2
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s6, s7
	vadd.f32 s6, s6, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s6, s3
	vstr s3, [r8, #0]
	vldr s7, [r7, #0]
	movw r7, #61216
	movt r7, #65535
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	vmul.f32 s6, s7, s0
	add r7, r7, r2, lsl #2
	vmul.f32 s7, s7, s1
	vadd.f32 s5, s6, s5
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s5, s4
	vstr s4, [r8, #0]
	vldr s6, [r7, #0]
	movw r7, #60136
	movt r7, #65535
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	vmul.f32 s5, s6, s0
	add r7, r7, r2, lsl #2
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s5, s7
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s5, s5, s3
	vstr s5, [r8, #0]
	vldr s7, [r7, #0]
	movw r7, #59056
	movt r7, #65535
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	vmul.f32 s3, s7, s0
	add r7, r7, r2, lsl #2
	vmul.f32 s7, s7, s1
	vadd.f32 s3, s3, s6
	vadd.f32 s3, s3, s5
	vmul.f32 s5, s5, s2
	vadd.f32 s3, s3, s4
	vstr s3, [r8, #0]
	vldr s6, [r7, #0]
	movw r7, #57976
	movt r7, #65535
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	vmul.f32 s4, s6, s0
	add r7, r7, r2, lsl #2
	vmul.f32 s6, s6, s1
	vadd.f32 s4, s4, s7
	vadd.f32 s4, s4, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s4, s5
	vstr s4, [r8, #0]
	vldr s7, [r7, #0]
	sub r7, r3, #8640
	add r7, r7, r2, lsl #2
	vmul.f32 s5, s7, s0
	vmul.f32 s7, s7, s1
	vadd.f32 s5, s5, s6
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s5, s3
	vstr s3, [r7, #0]
	sub r7, r6, #8640
	add r7, r7, r2, lsl #2
	vldr s5, [r7, #0]
	movw r7, #55816
	movt r7, #65535
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	vmul.f32 s6, s5, s0
	add r7, r7, r2, lsl #2
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s6, s7
	vadd.f32 s6, s6, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s6, s4
	vstr s4, [r8, #0]
	vldr s6, [r7, #0]
	movw r7, #54736
	movt r7, #65535
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	vmul.f32 s7, s6, s0
	add r7, r7, r2, lsl #2
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s5, s3
	vstr s3, [r8, #0]
	vldr s5, [r7, #0]
	movw r7, #53656
	movt r7, #65535
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	vmul.f32 s7, s5, s0
	add r7, r7, r2, lsl #2
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s6, s4
	vstr s4, [r8, #0]
	vldr s6, [r7, #0]
	movw r7, #52576
	movt r7, #65535
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	vmul.f32 s7, s6, s0
	add r7, r7, r2, lsl #2
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s5, s3
	vstr s3, [r8, #0]
	vldr s5, [r7, #0]
	movw r7, #51496
	movt r7, #65535
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	vmul.f32 s7, s5, s0
	add r7, r7, r2, lsl #2
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s6, s4
	vstr s4, [r8, #0]
	vldr s6, [r7, #0]
	movw r7, #50416
	movt r7, #65535
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	vmul.f32 s7, s6, s0
	vmul.f32 s1, s6, s1
	add r7, r7, r2, lsl #2
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s4
	vadd.f32 s3, s5, s3
	vstr s3, [r8, #0]
	vldr s5, [r7, #0]
	movw r7, #49336
	movt r7, #65535
	add r6, r6, r7
	add r8, r3, r7
	add r6, r6, r2, lsl #2
	add r8, r8, r2, lsl #2
	vmul.f32 s0, s5, s0
	vadd.f32 s0, s0, s1
	vmul.f32 s1, s4, s2
	vadd.f32 s0, s0, s3
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #0]
	vldr s1, [r6, #0]
	sub r6, r5, #16
	cmp r6, #15
	ble label95
	movw r5, #48256
	movt r5, #65535
	vmov.f32 s4, s3
	vmov.f32 s2, s5
	add r3, r3, r5
	vmov.f32 s3, s0
	vmov.f32 s5, s1
	mov r5, r6
	b label87
.p2align 4
label1568:
	add r2, r2, #1
	movw r3, #270
	cmp r2, r3
	blt label86
	b label68
.p2align 4
label106:
	add r6, r3, r2, lsl #2
	movw r7, #1080
	vldr s4, [r6, #0]
	movw r6, #61929
	movt r6, #48705
	vmov s0, r6
	movw r6, #35322
	movt r6, #15842
	vmov s1, r6
	movw r6, #12860
	movt r6, #48923
	vmul.f32 s2, s4, s0
	vmul.f32 s5, s5, s1
	vmul.f32 s4, s4, s1
	vadd.f32 s2, s2, s5
	vadd.f32 s5, s2, s3
	vmov s2, r6
	mla r6, r5, r7, r0
	vmul.f32 s3, s3, s2
	vmul.f32 s6, s6, s2
	add r8, r6, r2, lsl #2
	vadd.f32 s5, s5, s6
	vstr s5, [r8, #0]
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	add r7, r7, r2, lsl #2
	vldr s7, [r8, #0]
	vmul.f32 s6, s7, s0
	vmul.f32 s7, s7, s1
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s5, s2
	vadd.f32 s4, s4, s3
	vstr s4, [r7, #0]
	add r7, r3, #2160
	add r7, r7, r2, lsl #2
	vldr s6, [r7, #0]
	add r7, r6, #2160
	add r7, r7, r2, lsl #2
	vmul.f32 s3, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s3, s3, s7
	vadd.f32 s3, s3, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s3, s5
	vstr s3, [r7, #0]
	movw r7, #3240
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	add r7, r7, r2, lsl #2
	vldr s5, [r8, #0]
	vmul.f32 s7, s5, s0
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s6, s4
	vstr s4, [r7, #0]
	movw r7, #4320
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	add r7, r7, r2, lsl #2
	vldr s6, [r8, #0]
	vmul.f32 s7, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s5, s3
	vstr s3, [r7, #0]
	movw r7, #5400
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	add r7, r7, r2, lsl #2
	vldr s7, [r8, #0]
	vmul.f32 s5, s7, s0
	vmul.f32 s7, s7, s1
	vadd.f32 s5, s5, s6
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s5, s4
	vstr s4, [r7, #0]
	movw r7, #6480
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	add r7, r7, r2, lsl #2
	vldr s5, [r8, #0]
	vmul.f32 s6, s5, s0
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s6, s7
	vadd.f32 s6, s6, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s6, s3
	vstr s3, [r7, #0]
	movw r7, #7560
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	add r7, r7, r2, lsl #2
	vldr s6, [r8, #0]
	vmul.f32 s7, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s5, s4
	vstr s4, [r7, #0]
	add r7, r3, #8640
	add r7, r7, r2, lsl #2
	vldr s5, [r7, #0]
	add r7, r6, #8640
	add r7, r7, r2, lsl #2
	vmul.f32 s7, s5, s0
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s6, s3
	vstr s3, [r7, #0]
	movw r7, #9720
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	add r7, r7, r2, lsl #2
	vldr s6, [r8, #0]
	vmul.f32 s7, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s5, s5, s4
	vstr s5, [r7, #0]
	movw r7, #10800
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	add r7, r7, r2, lsl #2
	vldr s7, [r8, #0]
	vmul.f32 s4, s7, s0
	vmul.f32 s7, s7, s1
	vadd.f32 s4, s4, s6
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s5, s2
	vadd.f32 s4, s4, s3
	vstr s4, [r7, #0]
	movw r7, #11880
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	add r7, r7, r2, lsl #2
	vldr s6, [r8, #0]
	vmul.f32 s3, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s3, s3, s7
	vadd.f32 s3, s3, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s3, s5
	vstr s3, [r7, #0]
	movw r7, #12960
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	add r7, r7, r2, lsl #2
	vldr s7, [r8, #0]
	vmul.f32 s5, s7, s0
	vmul.f32 s7, s7, s1
	vadd.f32 s5, s5, s6
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s5, s4
	vstr s4, [r7, #0]
	movw r7, #14040
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	add r7, r7, r2, lsl #2
	vldr s5, [r8, #0]
	vmul.f32 s6, s5, s0
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s6, s7
	vadd.f32 s6, s6, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s6, s3
	vstr s3, [r7, #0]
	movw r7, #15120
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	add r7, r7, r2, lsl #2
	vldr s6, [r8, #0]
	vmul.f32 s1, s6, s1
	vmul.f32 s7, s6, s0
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s3
	vadd.f32 s4, s5, s4
	vstr s4, [r7, #0]
	movw r7, #16200
	add r6, r6, r7
	add r8, r3, r7
	add r6, r6, r2, lsl #2
	add r8, r8, r2, lsl #2
	vldr s5, [r8, #0]
	vmul.f32 s0, s5, s0
	vadd.f32 s0, s0, s1
	vmul.f32 s1, s3, s2
	vadd.f32 s0, s0, s4
	vadd.f32 s3, s0, s1
	vstr s3, [r6, #0]
	add r6, r5, #16
	cmp r6, #496
	bge label112
	movw r5, #17280
	vmov.f32 s6, s4
	add r3, r3, r5
	mov r5, r6
	b label106
.p2align 4
label74:
	mov r5, r2
	mov r6, #0
	b label75
.p2align 4
label83:
	add r3, r3, #1
	movw r5, #1080
	cmp r3, #512
	add r1, r1, r5
	add r2, r2, r5
	add r0, r0, r5
	blt label74
label85:
	mov r0, #158
	bl _sysy_stoptime
	mov r1, r4
	mov r0, #138240
	bl putfarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
.p2align 4
label75:
	vldr s0, [r5, #0]
	add r7, r1, r6, lsl #2
	add r8, r0, r6, lsl #2
	vldr s1, [r7, #0]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #0]
	vldr s0, [r5, #4]
	vldr s1, [r7, #4]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #4]
	vldr s0, [r5, #8]
	vldr s1, [r7, #8]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #8]
	vldr s0, [r5, #12]
	vldr s1, [r7, #12]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #12]
	vldr s0, [r5, #16]
	vldr s1, [r7, #16]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #16]
	vldr s0, [r5, #20]
	vldr s1, [r7, #20]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #20]
	vldr s0, [r5, #24]
	vldr s1, [r7, #24]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #24]
	vldr s0, [r5, #28]
	vldr s1, [r7, #28]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #28]
	vldr s0, [r5, #32]
	vldr s1, [r7, #32]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #32]
	vldr s0, [r5, #36]
	vldr s1, [r7, #36]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #36]
	vldr s0, [r5, #40]
	vldr s1, [r7, #40]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #40]
	vldr s0, [r5, #44]
	vldr s1, [r7, #44]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #44]
	vldr s0, [r5, #48]
	vldr s1, [r7, #48]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #48]
	vldr s0, [r5, #52]
	vldr s1, [r7, #52]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #52]
	vldr s0, [r5, #56]
	vldr s1, [r7, #56]
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #56]
	vldr s0, [r5, #60]
	vldr s1, [r7, #60]
	add r7, r6, #16
	cmp r7, #256
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #60]
	bge label79
	add r5, r5, #64
	mov r6, r7
	b label75
.p2align 4
label79:
	add r5, r2, r7, lsl #2
	add r6, r6, #28
	add r8, r1, r7, lsl #2
	vldr s0, [r5, #0]
	add r7, r0, r7, lsl #2
	vldr s1, [r8, #0]
	vadd.f32 s0, s0, s1
	vstr s0, [r7, #0]
	vldr s0, [r5, #4]
	vldr s1, [r8, #4]
	vadd.f32 s0, s0, s1
	vstr s0, [r7, #4]
	vldr s0, [r5, #8]
	vldr s1, [r8, #8]
	vadd.f32 s0, s0, s1
	vstr s0, [r7, #8]
	vldr s0, [r5, #12]
	vldr s1, [r8, #12]
	vadd.f32 s0, s0, s1
	vstr s0, [r7, #12]
	vldr s0, [r5, #16]
	vldr s1, [r8, #16]
	vadd.f32 s0, s0, s1
	vstr s0, [r7, #16]
	vldr s0, [r5, #20]
	vldr s1, [r8, #20]
	vadd.f32 s0, s0, s1
	vstr s0, [r7, #20]
	vldr s0, [r5, #24]
	vldr s1, [r8, #24]
	vadd.f32 s0, s0, s1
	vstr s0, [r7, #24]
	vldr s0, [r5, #28]
	vldr s1, [r8, #28]
	vadd.f32 s0, s0, s1
	vstr s0, [r7, #28]
	vldr s0, [r5, #32]
	vldr s1, [r8, #32]
	vadd.f32 s0, s0, s1
	vstr s0, [r7, #32]
	vldr s0, [r5, #36]
	vldr s1, [r8, #36]
	vadd.f32 s0, s0, s1
	vstr s0, [r7, #36]
	vldr s0, [r5, #40]
	vldr s1, [r8, #40]
	vadd.f32 s0, s0, s1
	vstr s0, [r7, #40]
	vldr s0, [r5, #44]
	add r5, r2, r6, lsl #2
	vldr s1, [r8, #44]
	vadd.f32 s0, s0, s1
	vstr s0, [r7, #44]
.p2align 4
label80:
	vldr s0, [r5, #0]
	add r7, r1, r6, lsl #2
	vldr s1, [r7, #0]
	add r7, r0, r6, lsl #2
	add r6, r6, #1
	vadd.f32 s0, s0, s1
	vstr s0, [r7, #0]
	movw r7, #270
	cmp r6, r7
	bge label83
	add r5, r5, #4
	b label80
.p2align 4
label95:
	movw r3, #51281
	movt r3, #48700
	sub r5, r5, #28
	vmov s2, r3
	movw r3, #9998
	movt r3, #15851
	vmov s4, r3
	movw r3, #12860
	movt r3, #48923
	vmul.f32 s6, s1, s2
	vmul.f32 s5, s5, s4
	vmul.f32 s1, s1, s4
	vadd.f32 s5, s6, s5
	vadd.f32 s6, s5, s0
	vmov s5, r3
	movw r3, #1080
	mla r7, r6, r3, r1
	mla r6, r6, r3, r4
	mla r3, r5, r3, r1
	vmul.f32 s3, s3, s5
	vmul.f32 s0, s0, s5
	add r8, r7, r2, lsl #2
	vadd.f32 s3, s6, s3
	vstr s3, [r8, #0]
	add r8, r6, r2, lsl #2
	vldr s6, [r8, #0]
	movw r8, #64456
	movt r8, #65535
	add r9, r7, r8
	add r8, r6, r8
	add r9, r9, r2, lsl #2
	vmul.f32 s7, s6, s2
	add r8, r8, r2, lsl #2
	vmul.f32 s6, s6, s4
	vadd.f32 s1, s7, s1
	vadd.f32 s1, s1, s3
	vmul.f32 s3, s3, s5
	vadd.f32 s0, s1, s0
	vstr s0, [r9, #0]
	vldr s7, [r8, #0]
	sub r8, r7, #2160
	add r8, r8, r2, lsl #2
	vmul.f32 s1, s7, s2
	vmul.f32 s7, s7, s4
	vadd.f32 s1, s1, s6
	vadd.f32 s1, s1, s0
	vmul.f32 s0, s0, s5
	vadd.f32 s1, s1, s3
	vstr s1, [r8, #0]
	sub r8, r6, #2160
	add r8, r8, r2, lsl #2
	vldr s3, [r8, #0]
	movw r8, #62296
	movt r8, #65535
	add r9, r7, r8
	add r8, r6, r8
	add r9, r9, r2, lsl #2
	vmul.f32 s6, s3, s2
	add r8, r8, r2, lsl #2
	vmul.f32 s3, s3, s4
	vadd.f32 s6, s6, s7
	vadd.f32 s6, s6, s1
	vmul.f32 s1, s1, s5
	vadd.f32 s0, s6, s0
	vstr s0, [r9, #0]
	vldr s7, [r8, #0]
	movw r8, #61216
	movt r8, #65535
	add r9, r7, r8
	add r8, r6, r8
	add r9, r9, r2, lsl #2
	vmul.f32 s6, s7, s2
	add r8, r8, r2, lsl #2
	vmul.f32 s7, s7, s4
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s0
	vmul.f32 s0, s0, s5
	vadd.f32 s3, s3, s1
	vstr s3, [r9, #0]
	vldr s6, [r8, #0]
	movw r8, #60136
	movt r8, #65535
	add r9, r7, r8
	add r8, r6, r8
	add r9, r9, r2, lsl #2
	vmul.f32 s1, s6, s2
	add r8, r8, r2, lsl #2
	vmul.f32 s6, s6, s4
	vadd.f32 s1, s1, s7
	vadd.f32 s1, s1, s3
	vmul.f32 s3, s3, s5
	vadd.f32 s1, s1, s0
	vstr s1, [r9, #0]
	vldr s7, [r8, #0]
	movw r8, #59056
	movt r8, #65535
	add r9, r7, r8
	add r8, r6, r8
	add r9, r9, r2, lsl #2
	vmul.f32 s0, s7, s2
	add r8, r8, r2, lsl #2
	vmul.f32 s7, s7, s4
	vadd.f32 s0, s0, s6
	vadd.f32 s0, s0, s1
	vmul.f32 s1, s1, s5
	vadd.f32 s0, s0, s3
	vstr s0, [r9, #0]
	vldr s6, [r8, #0]
	movw r8, #57976
	movt r8, #65535
	add r9, r7, r8
	add r8, r6, r8
	add r9, r9, r2, lsl #2
	vmul.f32 s3, s6, s2
	add r8, r8, r2, lsl #2
	vmul.f32 s6, s6, s4
	vadd.f32 s3, s3, s7
	vadd.f32 s3, s3, s0
	vmul.f32 s0, s0, s5
	vadd.f32 s3, s3, s1
	vstr s3, [r9, #0]
	vldr s7, [r8, #0]
	sub r8, r7, #8640
	add r8, r8, r2, lsl #2
	vmul.f32 s1, s7, s2
	vmul.f32 s7, s7, s4
	vadd.f32 s1, s1, s6
	vadd.f32 s1, s1, s3
	vmul.f32 s3, s3, s5
	vadd.f32 s1, s1, s0
	vstr s1, [r8, #0]
	sub r8, r6, #8640
	add r8, r8, r2, lsl #2
	vldr s6, [r8, #0]
	movw r8, #55816
	movt r8, #65535
	add r9, r7, r8
	add r8, r6, r8
	add r9, r9, r2, lsl #2
	vmul.f32 s0, s6, s2
	add r8, r8, r2, lsl #2
	vmul.f32 s6, s6, s4
	vadd.f32 s0, s0, s7
	vadd.f32 s0, s0, s1
	vmul.f32 s1, s1, s5
	vadd.f32 s0, s0, s3
	vstr s0, [r9, #0]
	vldr s7, [r8, #0]
	movw r8, #54736
	movt r8, #65535
	add r9, r7, r8
	add r8, r6, r8
	add r9, r9, r2, lsl #2
	vmul.f32 s3, s7, s2
	vmul.f32 s4, s7, s4
	add r8, r8, r2, lsl #2
	vadd.f32 s3, s3, s6
	vadd.f32 s3, s3, s0
	vmul.f32 s0, s0, s5
	vadd.f32 s3, s3, s1
	vstr s3, [r9, #0]
	vldr s1, [r8, #0]
	movw r8, #53656
	movt r8, #65535
	add r6, r6, r8
	add r7, r7, r8
	add r6, r6, r2, lsl #2
	add r7, r7, r2, lsl #2
	vmul.f32 s2, s1, s2
	vadd.f32 s2, s2, s4
	vmov.f32 s4, s1
	vadd.f32 s2, s2, s3
	vadd.f32 s2, s2, s0
	vmov.f32 s1, s2
	vstr s2, [r7, #0]
	vldr s0, [r6, #0]
.p2align 4
label96:
	movw r6, #51281
	movt r6, #48700
	vmov s2, r6
	movw r6, #9998
	movt r6, #15851
	vmov s5, r6
	movw r6, #12860
	movt r6, #48923
	vmul.f32 s2, s0, s2
	vmul.f32 s4, s4, s5
	vadd.f32 s2, s2, s4
	vmov s4, r6
	add r6, r3, r2, lsl #2
	vadd.f32 s2, s2, s1
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	vstr s2, [r6, #0]
	movw r6, #1080
	mla r6, r5, r6, r4
	sub r5, r5, #1
	cmn r5, #1
	add r6, r6, r2, lsl #2
	vldr s5, [r6, #0]
	ble label1568
	movw r6, #64456
	movt r6, #65535
	vmov.f32 s4, s0
	vmov.f32 s3, s1
	add r3, r3, r6
	vmov.f32 s0, s5
	vmov.f32 s1, s2
	b label96
.p2align 4
label112:
	movw r3, #1080
	add r5, r5, #28
	mla r7, r6, r3, r4
	mla r6, r6, r3, r0
	add r8, r7, r2, lsl #2
	vldr s6, [r8, #0]
	movw r8, #61929
	movt r8, #48705
	vmov s0, r8
	movw r8, #35322
	movt r8, #15842
	vmov s1, r8
	movw r8, #12860
	movt r8, #48923
	vmul.f32 s2, s6, s0
	vmul.f32 s5, s5, s1
	vmul.f32 s6, s6, s1
	vadd.f32 s2, s2, s5
	vadd.f32 s5, s2, s3
	vmov s2, r8
	add r8, r6, r2, lsl #2
	vmul.f32 s3, s3, s2
	vmul.f32 s4, s4, s2
	vadd.f32 s5, s5, s4
	vstr s5, [r8, #0]
	add r8, r7, r3
	add r8, r8, r2, lsl #2
	vldr s8, [r8, #0]
	add r8, r6, r3
	mla r3, r5, r3, r4
	add r8, r8, r2, lsl #2
	vmul.f32 s4, s8, s0
	vadd.f32 s4, s4, s6
	vmul.f32 s6, s8, s1
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s5, s2
	vadd.f32 s4, s4, s3
	vstr s4, [r8, #0]
	add r8, r7, #2160
	add r8, r8, r2, lsl #2
	vldr s7, [r8, #0]
	add r8, r6, #2160
	add r8, r8, r2, lsl #2
	vmul.f32 s3, s7, s0
	vmul.f32 s7, s7, s1
	vadd.f32 s3, s3, s6
	vadd.f32 s3, s3, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s3, s5
	vstr s3, [r8, #0]
	movw r8, #3240
	add r9, r7, r8
	add r8, r6, r8
	add r9, r9, r2, lsl #2
	add r8, r8, r2, lsl #2
	vldr s6, [r9, #0]
	vmul.f32 s5, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s5, s7
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s5, s4
	vstr s4, [r8, #0]
	movw r8, #4320
	add r9, r7, r8
	add r8, r6, r8
	add r9, r9, r2, lsl #2
	add r8, r8, r2, lsl #2
	vldr s5, [r9, #0]
	vmul.f32 s7, s5, s0
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s6, s3
	vstr s3, [r8, #0]
	movw r8, #5400
	add r9, r7, r8
	add r8, r6, r8
	add r9, r9, r2, lsl #2
	add r8, r8, r2, lsl #2
	vldr s6, [r9, #0]
	vmul.f32 s7, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s5, s4
	vstr s4, [r8, #0]
	movw r8, #6480
	add r9, r7, r8
	add r8, r6, r8
	add r9, r9, r2, lsl #2
	add r8, r8, r2, lsl #2
	vldr s7, [r9, #0]
	vmul.f32 s5, s7, s0
	vadd.f32 s5, s5, s6
	vmul.f32 s6, s7, s1
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s5, s5, s3
	vstr s5, [r8, #0]
	movw r8, #7560
	add r9, r7, r8
	add r8, r6, r8
	add r9, r9, r2, lsl #2
	add r8, r8, r2, lsl #2
	vldr s8, [r9, #0]
	vmul.f32 s7, s8, s1
	vmul.f32 s3, s8, s0
	vadd.f32 s3, s3, s6
	vadd.f32 s3, s3, s5
	vmul.f32 s5, s5, s2
	vadd.f32 s3, s3, s4
	vstr s3, [r8, #0]
	add r8, r7, #8640
	add r8, r8, r2, lsl #2
	vldr s6, [r8, #0]
	add r8, r6, #8640
	add r8, r8, r2, lsl #2
	vmul.f32 s4, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s4, s4, s7
	vadd.f32 s4, s4, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s4, s5
	vstr s4, [r8, #0]
	movw r8, #9720
	add r9, r7, r8
	add r8, r6, r8
	add r9, r9, r2, lsl #2
	add r8, r8, r2, lsl #2
	vldr s5, [r9, #0]
	vmul.f32 s7, s5, s0
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s6, s3
	vstr s3, [r8, #0]
	movw r8, #10800
	add r9, r7, r8
	add r8, r6, r8
	add r9, r9, r2, lsl #2
	add r8, r8, r2, lsl #2
	vldr s6, [r9, #0]
	vmul.f32 s1, s6, s1
	vmul.f32 s7, s6, s0
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s3
	vadd.f32 s5, s5, s4
	vstr s5, [r8, #0]
	movw r8, #11880
	add r6, r6, r8
	add r7, r7, r8
	add r6, r6, r2, lsl #2
	add r7, r7, r2, lsl #2
	vldr s4, [r7, #0]
	vmul.f32 s0, s4, s0
	vadd.f32 s0, s0, s1
	vmul.f32 s1, s3, s2
	vmov.f32 s2, s5
	vadd.f32 s0, s0, s5
	vadd.f32 s0, s0, s1
	vstr s0, [r6, #0]
.p2align 4
label113:
	add r6, r3, r2, lsl #2
	vldr s1, [r6, #0]
	movw r6, #61929
	movt r6, #48705
	vmov s3, r6
	movw r6, #35322
	movt r6, #15842
	vmov s5, r6
	movw r6, #12860
	movt r6, #48923
	vmul.f32 s3, s1, s3
	vmul.f32 s4, s4, s5
	vadd.f32 s3, s3, s4
	vmov s4, r6
	movw r6, #1080
	mla r6, r5, r6, r0
	vadd.f32 s3, s3, s0
	add r5, r5, #1
	cmp r5, #512
	vmul.f32 s2, s2, s4
	add r6, r6, r2, lsl #2
	vadd.f32 s3, s3, s2
	vstr s3, [r6, #0]
	bge label119
	movw r6, #1080
	vmov.f32 s4, s1
	vmov.f32 s2, s0
	add r3, r3, r6
	vmov.f32 s0, s3
	b label113
