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
	movw r6, #:lower16:imgIn
	movt r6, #:upper16:imgIn
	mov r0, r6
	bl getfarray
	mov r0, #156
	bl _sysy_starttime
	mov r7, #0
	mov r5, r6
	movw r1, #:lower16:my_y2
	movt r1, #:upper16:my_y2
	movw r4, #:lower16:imgOut
	movt r4, #:upper16:imgOut
	movw r0, #:lower16:my_y1
	movt r0, #:upper16:my_y1
	mov r3, r0
	cmp r7, #512
	blt label6
	b label90
.p2align 4
label14:
	add r2, r2, #64
	vmov.f32 s2, s5
	vmov.f32 s5, s4
.p2align 4
label7:
	vldr s4, [r2, #0]
	movw r9, #61929
	movt r9, #48705
	vmov s0, r9
	movw r9, #35322
	movt r9, #15842
	vmov s1, r9
	movw r9, #12860
	movt r9, #48923
	vmul.f32 s6, s4, s0
	vmul.f32 s2, s2, s1
	vmul.f32 s4, s4, s1
	vadd.f32 s2, s6, s2
	vadd.f32 s6, s2, s3
	vmov s2, r9
	add r9, r3, r8, lsl #2
	add r8, r8, #16
	cmp r8, #256
	vmul.f32 s5, s5, s2
	vmul.f32 s3, s3, s2
	vadd.f32 s5, s6, s5
	vstr s5, [r9, #0]
	vldr s7, [r2, #4]
	vmul.f32 s6, s7, s0
	vmul.f32 s7, s7, s1
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s5, s2
	vadd.f32 s3, s4, s3
	vstr s3, [r9, #4]
	vldr s6, [r2, #8]
	vmul.f32 s4, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s4, s4, s7
	vadd.f32 s4, s4, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s4, s5
	vstr s4, [r9, #8]
	vldr s5, [r2, #12]
	vmul.f32 s7, s5, s0
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s6, s3
	vstr s3, [r9, #12]
	vldr s7, [r2, #16]
	vmul.f32 s6, s7, s0
	vmul.f32 s7, s7, s1
	vadd.f32 s5, s6, s5
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s5, s5, s4
	vstr s5, [r9, #16]
	vldr s6, [r2, #20]
	vmul.f32 s4, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s4, s4, s7
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s5, s2
	vadd.f32 s4, s4, s3
	vstr s4, [r9, #20]
	vldr s7, [r2, #24]
	vmul.f32 s3, s7, s0
	vmul.f32 s7, s7, s1
	vadd.f32 s3, s3, s6
	vadd.f32 s3, s3, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s3, s5
	vstr s3, [r9, #24]
	vldr s5, [r2, #28]
	vmul.f32 s6, s5, s0
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s6, s7
	vadd.f32 s6, s6, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s6, s4
	vstr s4, [r9, #28]
	vldr s6, [r2, #32]
	vmul.f32 s7, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s5, s5, s3
	vstr s5, [r9, #32]
	vldr s7, [r2, #36]
	vmul.f32 s3, s7, s0
	vmul.f32 s7, s7, s1
	vadd.f32 s3, s3, s6
	vadd.f32 s3, s3, s5
	vmul.f32 s5, s5, s2
	vadd.f32 s3, s3, s4
	vstr s3, [r9, #36]
	vldr s6, [r2, #40]
	vmul.f32 s4, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s4, s4, s7
	vadd.f32 s4, s4, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s4, s5
	vstr s4, [r9, #40]
	vldr s5, [r2, #44]
	vmul.f32 s7, s5, s0
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s6, s3
	vstr s3, [r9, #44]
	vldr s6, [r2, #48]
	vmul.f32 s7, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s5, s4
	vstr s4, [r9, #48]
	vldr s5, [r2, #52]
	vmul.f32 s7, s5, s0
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s6, s3
	vstr s3, [r9, #52]
	vldr s6, [r2, #56]
	vmul.f32 s1, s6, s1
	vmul.f32 s7, s6, s0
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s3
	vadd.f32 s4, s5, s4
	vstr s4, [r9, #56]
	vldr s5, [r2, #60]
	vmul.f32 s0, s5, s0
	vadd.f32 s0, s0, s1
	vmul.f32 s1, s3, s2
	vadd.f32 s0, s0, s4
	vadd.f32 s3, s0, s1
	vstr s3, [r9, #60]
	blt label14
	vldr s6, [r2, #64]
	movw r8, #61929
	movt r8, #48705
	add r7, r7, #1
	vmov s0, r8
	cmp r7, #512
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
	vmul.f32 s4, s4, s2
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s5, s4
	vstr s4, [r9, #64]
	vldr s7, [r2, #68]
	vmul.f32 s5, s7, s0
	vmul.f32 s7, s7, s1
	vadd.f32 s5, s5, s6
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s5, s3
	vstr s3, [r9, #68]
	vldr s5, [r2, #72]
	vmul.f32 s6, s5, s0
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s6, s7
	vadd.f32 s6, s6, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s6, s4
	vstr s4, [r9, #72]
	vldr s6, [r2, #76]
	vmul.f32 s7, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s5, s3
	vstr s3, [r9, #76]
	vldr s5, [r2, #80]
	vmul.f32 s7, s5, s0
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s6, s4
	vstr s4, [r9, #80]
	vldr s6, [r2, #84]
	vmul.f32 s7, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s5, s3
	vstr s3, [r9, #84]
	vldr s5, [r2, #88]
	vmul.f32 s7, s5, s0
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s6, s4
	vstr s4, [r9, #88]
	vldr s6, [r2, #92]
	vmul.f32 s7, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s5, s3
	vstr s3, [r9, #92]
	vldr s5, [r2, #96]
	vmul.f32 s7, s5, s0
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s6, s4
	vstr s4, [r9, #96]
	vldr s6, [r2, #100]
	vmul.f32 s7, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s5, s3
	vstr s3, [r9, #100]
	vldr s5, [r2, #104]
	vmul.f32 s7, s5, s0
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s6, s4
	vstr s4, [r9, #104]
	vldr s6, [r2, #108]
	vmul.f32 s7, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s5, s3
	vstr s3, [r9, #108]
	vldr s5, [r2, #112]
	vmul.f32 s1, s5, s1
	vmul.f32 s7, s5, s0
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s3
	vadd.f32 s4, s6, s4
	vstr s4, [r9, #112]
	vldr s6, [r2, #116]
	movw r2, #1080
	add r5, r5, r2
	add r3, r3, r2
	vmul.f32 s0, s6, s0
	vadd.f32 s0, s0, s1
	vmul.f32 s1, s3, s2
	vadd.f32 s0, s0, s4
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #116]
	bge label90
.p2align 4
label6:
	mov r8, #0
	mov r2, r5
	vmov s2, r8
	vmov.f32 s5, s2
	vmov.f32 s3, s2
	b label7
label90:
	mov r5, r1
	mov r3, r6
	mov r6, #0
	cmp r6, #512
	blt label68
	b label20
.p2align 4
label77:
	sub r2, r2, #64
	vmov.f32 s2, s3
	vmov.f32 s3, s0
.p2align 4
label69:
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
	add r8, r3, r7, lsl #2
	sub r7, r7, #16
	cmp r7, #13
	vmul.f32 s3, s3, s2
	vmul.f32 s5, s5, s2
	vadd.f32 s5, s6, s5
	vstr s5, [r2, #0]
	vldr s6, [r8, #0]
	vmul.f32 s7, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s4, s7, s4
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s5, s2
	vadd.f32 s3, s4, s3
	vstr s3, [r2, #-4]
	vldr s7, [r8, #-4]
	vmul.f32 s4, s7, s0
	vmul.f32 s7, s7, s1
	vadd.f32 s4, s4, s6
	vadd.f32 s4, s4, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s4, s5
	vstr s4, [r2, #-8]
	vldr s6, [r8, #-8]
	vmul.f32 s5, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s5, s7
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s5, s5, s3
	vstr s5, [r2, #-12]
	vldr s7, [r8, #-12]
	vmul.f32 s3, s7, s0
	vmul.f32 s7, s7, s1
	vadd.f32 s3, s3, s6
	vadd.f32 s3, s3, s5
	vmul.f32 s5, s5, s2
	vadd.f32 s3, s3, s4
	vstr s3, [r2, #-16]
	vldr s6, [r8, #-16]
	vmul.f32 s4, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s4, s4, s7
	vadd.f32 s4, s4, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s4, s5
	vstr s4, [r2, #-20]
	vldr s7, [r8, #-20]
	vmul.f32 s5, s7, s0
	vmul.f32 s7, s7, s1
	vadd.f32 s5, s5, s6
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s5, s3
	vstr s3, [r2, #-24]
	vldr s5, [r8, #-24]
	vmul.f32 s6, s5, s0
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s6, s7
	vadd.f32 s6, s6, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s6, s4
	vstr s4, [r2, #-28]
	vldr s6, [r8, #-28]
	vmul.f32 s7, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s5, s3
	vstr s3, [r2, #-32]
	vldr s5, [r8, #-32]
	vmul.f32 s7, s5, s0
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s6, s4
	vstr s4, [r2, #-36]
	vldr s6, [r8, #-36]
	vmul.f32 s7, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s5, s3
	vstr s3, [r2, #-40]
	vldr s7, [r8, #-40]
	vmul.f32 s5, s7, s0
	vmul.f32 s7, s7, s1
	vadd.f32 s5, s5, s6
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s5, s4
	vstr s4, [r2, #-44]
	vldr s5, [r8, #-44]
	vmul.f32 s6, s5, s0
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s6, s7
	vadd.f32 s6, s6, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s6, s3
	vstr s3, [r2, #-48]
	vldr s7, [r8, #-48]
	vmul.f32 s6, s7, s0
	vmul.f32 s7, s7, s1
	vadd.f32 s5, s6, s5
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s5, s4
	vstr s4, [r2, #-52]
	vldr s6, [r8, #-52]
	vmul.f32 s1, s6, s1
	vmul.f32 s5, s6, s0
	vadd.f32 s5, s5, s7
	vadd.f32 s5, s5, s4
	vadd.f32 s5, s5, s3
	vstr s5, [r2, #-56]
	vldr s3, [r8, #-56]
	vmul.f32 s0, s3, s0
	vadd.f32 s0, s0, s1
	vmul.f32 s1, s4, s2
	vadd.f32 s0, s0, s5
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #-60]
	vldr s4, [r8, #-60]
	bgt label77
	movw r7, #51281
	movt r7, #48700
	add r6, r6, #1
	vmov s1, r7
	cmp r6, #512
	movw r7, #9998
	movt r7, #15851
	vmov s2, r7
	movw r7, #12860
	movt r7, #48923
	vmul.f32 s6, s4, s1
	vmul.f32 s3, s3, s2
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s6, s3
	vadd.f32 s6, s3, s0
	vmov s3, r7
	vmul.f32 s5, s5, s3
	vmul.f32 s0, s0, s3
	vadd.f32 s5, s6, s5
	vstr s5, [r2, #-64]
	vldr s7, [r8, #-64]
	vmul.f32 s6, s7, s1
	vmul.f32 s7, s7, s2
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s5, s3
	vadd.f32 s4, s4, s0
	vstr s4, [r2, #-68]
	vldr s6, [r8, #-68]
	vmul.f32 s0, s6, s1
	vmul.f32 s6, s6, s2
	vadd.f32 s0, s0, s7
	vadd.f32 s0, s0, s4
	vmul.f32 s4, s4, s3
	vadd.f32 s0, s0, s5
	vstr s0, [r2, #-72]
	vldr s8, [r8, #-72]
	vmul.f32 s5, s8, s1
	vadd.f32 s5, s5, s6
	vmul.f32 s6, s8, s2
	vadd.f32 s5, s5, s0
	vmul.f32 s0, s0, s3
	vadd.f32 s5, s5, s4
	vstr s5, [r2, #-76]
	vldr s7, [r8, #-76]
	vmul.f32 s4, s7, s1
	vmul.f32 s7, s7, s2
	vadd.f32 s4, s4, s6
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s5, s3
	vadd.f32 s4, s4, s0
	vstr s4, [r2, #-80]
	vldr s6, [r8, #-80]
	vmul.f32 s0, s6, s1
	vmul.f32 s6, s6, s2
	vadd.f32 s0, s0, s7
	vadd.f32 s0, s0, s4
	vmul.f32 s4, s4, s3
	vadd.f32 s0, s0, s5
	vstr s0, [r2, #-84]
	vldr s5, [r8, #-84]
	vmul.f32 s7, s5, s1
	vmul.f32 s5, s5, s2
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s0
	vmul.f32 s0, s0, s3
	vadd.f32 s4, s6, s4
	vstr s4, [r2, #-88]
	vldr s6, [r8, #-88]
	vmul.f32 s7, s6, s1
	vmul.f32 s6, s6, s2
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s4, s3
	vadd.f32 s0, s5, s0
	vstr s0, [r2, #-92]
	vldr s7, [r8, #-92]
	vmul.f32 s5, s7, s1
	vmul.f32 s7, s7, s2
	vadd.f32 s5, s5, s6
	vadd.f32 s5, s5, s0
	vmul.f32 s0, s0, s3
	vadd.f32 s5, s5, s4
	vstr s5, [r2, #-96]
	vldr s6, [r8, #-96]
	vmul.f32 s4, s6, s1
	vmul.f32 s6, s6, s2
	vadd.f32 s4, s4, s7
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s5, s3
	vadd.f32 s4, s4, s0
	vstr s4, [r2, #-100]
	vldr s7, [r8, #-100]
	vmul.f32 s0, s7, s1
	vmul.f32 s7, s7, s2
	vadd.f32 s0, s0, s6
	vadd.f32 s0, s0, s4
	vmul.f32 s4, s4, s3
	vadd.f32 s0, s0, s5
	vstr s0, [r2, #-104]
	vldr s6, [r8, #-104]
	vmul.f32 s5, s6, s1
	vmul.f32 s6, s6, s2
	vadd.f32 s5, s5, s7
	vadd.f32 s5, s5, s0
	vmul.f32 s0, s0, s3
	vadd.f32 s4, s5, s4
	vstr s4, [r2, #-108]
	vldr s5, [r8, #-108]
	vmul.f32 s2, s5, s2
	vmul.f32 s7, s5, s1
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s4
	vadd.f32 s0, s6, s0
	vstr s0, [r2, #-112]
	vldr s6, [r8, #-112]
	vmul.f32 s1, s6, s1
	vadd.f32 s1, s1, s2
	vadd.f32 s0, s1, s0
	vmul.f32 s1, s4, s3
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #-116]
	movw r2, #1080
	add r5, r5, r2
	add r3, r3, r2
	bge label20
.p2align 4
label68:
	movw r2, #1076
	mov r7, #0
	add r2, r5, r2
	vmov s4, r7
	movw r7, #269
	vmov.f32 s3, s4
	vmov.f32 s2, s4
	vmov.f32 s5, s4
	b label69
label20:
	mov r3, r4
	mov r6, r0
	mov r5, r1
	mov r7, #0
	cmp r7, #512
	blt label26
	b label391
.p2align 4
label30:
	vldr s0, [r2, #64]
	add r7, r7, #1
	vldr s1, [r8, #64]
	cmp r7, #512
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #64]
	vldr s0, [r2, #68]
	vldr s1, [r8, #68]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #68]
	vldr s0, [r2, #72]
	vldr s1, [r8, #72]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #72]
	vldr s0, [r2, #76]
	vldr s1, [r8, #76]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #76]
	vldr s0, [r2, #80]
	vldr s1, [r8, #80]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #80]
	vldr s0, [r2, #84]
	vldr s1, [r8, #84]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #84]
	vldr s0, [r2, #88]
	vldr s1, [r8, #88]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #88]
	vldr s0, [r2, #92]
	vldr s1, [r8, #92]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #92]
	vldr s0, [r2, #96]
	vldr s1, [r8, #96]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #96]
	vldr s0, [r2, #100]
	vldr s1, [r8, #100]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #100]
	vldr s0, [r2, #104]
	vldr s1, [r8, #104]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #104]
	vldr s0, [r2, #108]
	vldr s1, [r8, #108]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #108]
	vldr s0, [r2, #112]
	vldr s1, [r8, #112]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #112]
	vldr s0, [r2, #116]
	movw r2, #1080
	vldr s1, [r8, #116]
	add r3, r3, r2
	add r6, r6, r2
	add r5, r5, r2
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #116]
	bge label391
.p2align 4
label26:
	mov r2, r6
	mov r10, #0
.p2align 4
label27:
	add r8, r5, r10, lsl #2
	vldr s0, [r2, #0]
	add r9, r3, r10, lsl #2
	vldr s1, [r8, #0]
	add r10, r10, #16
	cmp r10, #256
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #0]
	vldr s0, [r2, #4]
	vldr s1, [r8, #4]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #4]
	vldr s0, [r2, #8]
	vldr s1, [r8, #8]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #8]
	vldr s0, [r2, #12]
	vldr s1, [r8, #12]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #12]
	vldr s0, [r2, #16]
	vldr s1, [r8, #16]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #16]
	vldr s0, [r2, #20]
	vldr s1, [r8, #20]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #20]
	vldr s0, [r2, #24]
	vldr s1, [r8, #24]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #24]
	vldr s0, [r2, #28]
	vldr s1, [r8, #28]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #28]
	vldr s0, [r2, #32]
	vldr s1, [r8, #32]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #32]
	vldr s0, [r2, #36]
	vldr s1, [r8, #36]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #36]
	vldr s0, [r2, #40]
	vldr s1, [r8, #40]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #40]
	vldr s0, [r2, #44]
	vldr s1, [r8, #44]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #44]
	vldr s0, [r2, #48]
	vldr s1, [r8, #48]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #48]
	vldr s0, [r2, #52]
	vldr s1, [r8, #52]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #52]
	vldr s0, [r2, #56]
	vldr s1, [r8, #56]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #56]
	vldr s0, [r2, #60]
	vldr s1, [r8, #60]
	vadd.f32 s0, s0, s1
	vstr s0, [r9, #60]
	bge label30
	add r2, r2, #64
	b label27
label391:
	mov r2, #0
	movw r3, #270
	cmp r2, r3
	blt label59
	b label586
.p2align 4
label66:
	add r2, r2, #1
	movw r3, #270
	cmp r2, r3
	bge label586
.p2align 4
label59:
	mov r5, #0
	mov r3, r4
	vmov s2, r5
	vmov.f32 s5, s2
	vmov.f32 s3, s2
.p2align 4
label60:
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
	vmul.f32 s6, s4, s0
	vmul.f32 s2, s2, s1
	vmul.f32 s4, s4, s1
	vadd.f32 s2, s6, s2
	vadd.f32 s6, s2, s3
	vmov s2, r6
	mla r6, r5, r7, r0
	add r5, r5, #16
	cmp r5, #512
	add r8, r6, r2, lsl #2
	vmul.f32 s3, s3, s2
	vmul.f32 s5, s5, s2
	vadd.f32 s5, s6, s5
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
	vldr s7, [r8, #0]
	vmul.f32 s5, s7, s0
	vmul.f32 s7, s7, s1
	vadd.f32 s5, s5, s6
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s5, s4
	vstr s4, [r7, #0]
	movw r7, #4320
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
	movw r7, #5400
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
	movw r7, #6480
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	add r7, r7, r2, lsl #2
	vldr s5, [r8, #0]
	vmul.f32 s7, s5, s0
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s6, s3
	vstr s3, [r7, #0]
	movw r7, #7560
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	add r7, r7, r2, lsl #2
	vldr s7, [r8, #0]
	vmul.f32 s6, s7, s0
	vmul.f32 s7, s7, s1
	vadd.f32 s5, s6, s5
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s5, s4
	vstr s4, [r7, #0]
	add r7, r3, #8640
	add r7, r7, r2, lsl #2
	vldr s6, [r7, #0]
	add r7, r6, #8640
	add r7, r7, r2, lsl #2
	vmul.f32 s5, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s5, s7
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s5, s3
	vstr s3, [r7, #0]
	movw r7, #9720
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
	movw r7, #10800
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	add r7, r7, r2, lsl #2
	vldr s7, [r8, #0]
	vmul.f32 s6, s7, s0
	vmul.f32 s7, s7, s1
	vadd.f32 s5, s6, s5
	vadd.f32 s5, s5, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s5, s5, s3
	vstr s5, [r7, #0]
	movw r7, #11880
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	add r7, r7, r2, lsl #2
	vldr s6, [r8, #0]
	vmul.f32 s3, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s3, s3, s7
	vadd.f32 s3, s3, s5
	vmul.f32 s5, s5, s2
	vadd.f32 s3, s3, s4
	vstr s3, [r7, #0]
	movw r7, #12960
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	add r7, r7, r2, lsl #2
	vldr s7, [r8, #0]
	vmul.f32 s4, s7, s0
	vmul.f32 s7, s7, s1
	vadd.f32 s4, s4, s6
	vadd.f32 s4, s4, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s4, s5
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
	bge label66
	movw r6, #17280
	vmov.f32 s2, s5
	add r3, r3, r6
	vmov.f32 s5, s4
	b label60
label586:
	mov r2, #0
	movw r3, #270
	cmp r2, r3
	blt label36
	b label590
.p2align 4
label44:
	movw r6, #48256
	movt r6, #65535
	add r3, r3, r6
.p2align 4
label37:
	movw r6, #51281
	movt r6, #48700
	vmov s0, r6
	movw r6, #9998
	movt r6, #15851
	vmov s1, r6
	movw r6, #12860
	movt r6, #48923
	vmul.f32 s2, s6, s0
	vmul.f32 s5, s5, s1
	vmul.f32 s6, s6, s1
	vadd.f32 s2, s2, s5
	vadd.f32 s5, s2, s4
	vmov s2, r6
	add r6, r3, r2, lsl #2
	vmul.f32 s3, s3, s2
	vmul.f32 s4, s4, s2
	vadd.f32 s5, s5, s3
	vstr s5, [r6, #0]
	movw r6, #1080
	mla r6, r5, r6, r4
	sub r5, r5, #16
	cmn r5, #1
	add r7, r6, r2, lsl #2
	vldr s7, [r7, #0]
	movw r7, #64456
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
	sub r7, r3, #2160
	add r7, r7, r2, lsl #2
	vmul.f32 s4, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s4, s4, s7
	vadd.f32 s4, s4, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s4, s5
	vstr s4, [r7, #0]
	sub r7, r6, #2160
	add r7, r7, r2, lsl #2
	vldr s5, [r7, #0]
	movw r7, #62296
	movt r7, #65535
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	vmul.f32 s7, s5, s0
	add r7, r7, r2, lsl #2
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s6, s3
	vstr s3, [r8, #0]
	vldr s6, [r7, #0]
	movw r7, #61216
	movt r7, #65535
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	vmul.f32 s7, s6, s0
	add r7, r7, r2, lsl #2
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s5, s4
	vstr s4, [r8, #0]
	vldr s5, [r7, #0]
	movw r7, #60136
	movt r7, #65535
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	vmul.f32 s7, s5, s0
	add r7, r7, r2, lsl #2
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s6, s3
	vstr s3, [r8, #0]
	vldr s6, [r7, #0]
	movw r7, #59056
	movt r7, #65535
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	vmul.f32 s7, s6, s0
	add r7, r7, r2, lsl #2
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s5, s4
	vstr s4, [r8, #0]
	vldr s5, [r7, #0]
	movw r7, #57976
	movt r7, #65535
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	vmul.f32 s7, s5, s0
	add r7, r7, r2, lsl #2
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s6, s3
	vstr s3, [r8, #0]
	vldr s6, [r7, #0]
	sub r7, r3, #8640
	add r7, r7, r2, lsl #2
	vmul.f32 s7, s6, s0
	vmul.f32 s6, s6, s1
	vadd.f32 s5, s7, s5
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s4, s5, s4
	vstr s4, [r7, #0]
	sub r7, r6, #8640
	add r7, r7, r2, lsl #2
	vldr s5, [r7, #0]
	movw r7, #55816
	movt r7, #65535
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	vmul.f32 s7, s5, s0
	add r7, r7, r2, lsl #2
	vmul.f32 s5, s5, s1
	vadd.f32 s6, s7, s6
	vadd.f32 s6, s6, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s6, s3
	vstr s3, [r8, #0]
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
	vadd.f32 s5, s5, s3
	vmul.f32 s3, s3, s2
	vadd.f32 s5, s5, s4
	vstr s5, [r8, #0]
	vldr s7, [r7, #0]
	movw r7, #53656
	movt r7, #65535
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	vmul.f32 s4, s7, s0
	add r7, r7, r2, lsl #2
	vmul.f32 s7, s7, s1
	vadd.f32 s4, s4, s6
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s5, s2
	vadd.f32 s4, s4, s3
	vstr s4, [r8, #0]
	vldr s6, [r7, #0]
	movw r7, #52576
	movt r7, #65535
	add r8, r3, r7
	add r7, r6, r7
	add r8, r8, r2, lsl #2
	vmul.f32 s3, s6, s0
	add r7, r7, r2, lsl #2
	vmul.f32 s6, s6, s1
	vadd.f32 s3, s3, s7
	vadd.f32 s3, s3, s4
	vmul.f32 s4, s4, s2
	vadd.f32 s3, s3, s5
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
	vadd.f32 s4, s0, s1
	vstr s4, [r8, #0]
	vldr s6, [r6, #0]
	bgt label44
	add r2, r2, #1
	movw r3, #270
	cmp r2, r3
	bge label590
.p2align 4
label36:
	movw r3, #27592
	movt r3, #8
	mov r5, #0
	add r3, r1, r3
	vmov s6, r5
	movw r5, #511
	vmov.f32 s5, s6
	vmov.f32 s4, s6
	vmov.f32 s3, s6
	b label37
label590:
	mov r3, r4
	mov r2, r0
	mov r5, #0
	cmp r5, #512
	blt label52
	b label58
.p2align 4
label57:
	vldr s0, [r6, #64]
	add r5, r5, #1
	vldr s1, [r7, #64]
	cmp r5, #512
	vadd.f32 s0, s0, s1
	vstr s0, [r0, #64]
	vldr s0, [r6, #68]
	vldr s1, [r7, #68]
	vadd.f32 s0, s0, s1
	vstr s0, [r0, #68]
	vldr s0, [r6, #72]
	vldr s1, [r7, #72]
	vadd.f32 s0, s0, s1
	vstr s0, [r0, #72]
	vldr s0, [r6, #76]
	vldr s1, [r7, #76]
	vadd.f32 s0, s0, s1
	vstr s0, [r0, #76]
	vldr s0, [r6, #80]
	vldr s1, [r7, #80]
	vadd.f32 s0, s0, s1
	vstr s0, [r0, #80]
	vldr s0, [r6, #84]
	vldr s1, [r7, #84]
	vadd.f32 s0, s0, s1
	vstr s0, [r0, #84]
	vldr s0, [r6, #88]
	vldr s1, [r7, #88]
	vadd.f32 s0, s0, s1
	vstr s0, [r0, #88]
	vldr s0, [r6, #92]
	vldr s1, [r7, #92]
	vadd.f32 s0, s0, s1
	vstr s0, [r0, #92]
	vldr s0, [r6, #96]
	vldr s1, [r7, #96]
	vadd.f32 s0, s0, s1
	vstr s0, [r0, #96]
	vldr s0, [r6, #100]
	vldr s1, [r7, #100]
	vadd.f32 s0, s0, s1
	vstr s0, [r0, #100]
	vldr s0, [r6, #104]
	vldr s1, [r7, #104]
	vadd.f32 s0, s0, s1
	vstr s0, [r0, #104]
	vldr s0, [r6, #108]
	vldr s1, [r7, #108]
	vadd.f32 s0, s0, s1
	vstr s0, [r0, #108]
	vldr s0, [r6, #112]
	vldr s1, [r7, #112]
	vadd.f32 s0, s0, s1
	vstr s0, [r0, #112]
	vldr s0, [r6, #116]
	vldr s1, [r7, #116]
	vadd.f32 s0, s0, s1
	vstr s0, [r0, #116]
	movw r0, #1080
	add r3, r3, r0
	add r2, r2, r0
	add r1, r1, r0
	bge label58
.p2align 4
label52:
	mov r0, r3
	mov r8, #0
.p2align 4
label53:
	add r6, r2, r8, lsl #2
	add r7, r1, r8, lsl #2
	vldr s0, [r6, #0]
	add r8, r8, #16
	vldr s1, [r7, #0]
	cmp r8, #256
	vadd.f32 s0, s0, s1
	vstr s0, [r0, #0]
	vldr s0, [r6, #4]
	vldr s1, [r7, #4]
	vadd.f32 s0, s0, s1
	vstr s0, [r0, #4]
	vldr s0, [r6, #8]
	vldr s1, [r7, #8]
	vadd.f32 s0, s0, s1
	vstr s0, [r0, #8]
	vldr s0, [r6, #12]
	vldr s1, [r7, #12]
	vadd.f32 s0, s0, s1
	vstr s0, [r0, #12]
	vldr s0, [r6, #16]
	vldr s1, [r7, #16]
	vadd.f32 s0, s0, s1
	vstr s0, [r0, #16]
	vldr s0, [r6, #20]
	vldr s1, [r7, #20]
	vadd.f32 s0, s0, s1
	vstr s0, [r0, #20]
	vldr s0, [r6, #24]
	vldr s1, [r7, #24]
	vadd.f32 s0, s0, s1
	vstr s0, [r0, #24]
	vldr s0, [r6, #28]
	vldr s1, [r7, #28]
	vadd.f32 s0, s0, s1
	vstr s0, [r0, #28]
	vldr s0, [r6, #32]
	vldr s1, [r7, #32]
	vadd.f32 s0, s0, s1
	vstr s0, [r0, #32]
	vldr s0, [r6, #36]
	vldr s1, [r7, #36]
	vadd.f32 s0, s0, s1
	vstr s0, [r0, #36]
	vldr s0, [r6, #40]
	vldr s1, [r7, #40]
	vadd.f32 s0, s0, s1
	vstr s0, [r0, #40]
	vldr s0, [r6, #44]
	vldr s1, [r7, #44]
	vadd.f32 s0, s0, s1
	vstr s0, [r0, #44]
	vldr s0, [r6, #48]
	vldr s1, [r7, #48]
	vadd.f32 s0, s0, s1
	vstr s0, [r0, #48]
	vldr s0, [r6, #52]
	vldr s1, [r7, #52]
	vadd.f32 s0, s0, s1
	vstr s0, [r0, #52]
	vldr s0, [r6, #56]
	vldr s1, [r7, #56]
	vadd.f32 s0, s0, s1
	vstr s0, [r0, #56]
	vldr s0, [r6, #60]
	vldr s1, [r7, #60]
	vadd.f32 s0, s0, s1
	vstr s0, [r0, #60]
	bge label57
	add r0, r0, #64
	b label53
label58:
	mov r0, #158
	bl _sysy_stoptime
	mov r1, r4
	mov r0, #138240
	bl putfarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
