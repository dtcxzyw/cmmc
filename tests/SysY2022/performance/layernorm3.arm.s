.arch armv7ve
.data
.bss
.align 8
a:
	.zero	4000000
.align 8
var:
	.zero	4000
.align 8
mean:
	.zero	4000
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, lr }
	vpush { s16 }
	mov r8, #0
	movw r6, #:lower16:var
	movt r6, #:upper16:var
	movw r5, #:lower16:mean
	movt r5, #:upper16:mean
	movw r4, #:lower16:a
	movt r4, #:upper16:a
	mov r7, r4
label2:
	cmp r8, #1000
	bge label9
	mov r0, r7
	bl getfarray
	cmp r0, #1000
	bne label5
	add r8, r8, #1
	add r7, r7, #4000
	b label2
label5:
	vpop { s16 }
	pop { r4, r5, r6, r7, r8, r9, pc }
label73:
	mov r0, #95
	bl _sysy_stoptime
	vmov.f32 s0, s16
	bl putfloat
	mov r0, #0
	b label5
label9:
	mov r0, #42
	bl _sysy_starttime
	mov r0, #0
	vmov s0, r0
label10:
	cmp r0, #100
	blt label13
	b label94
label106:
	add r0, r0, #1
	vmov.f32 s0, s2
	b label10
.p2align 4
label31:
	vldr s0, [r7, #0]
	mov r1, r2
	mov r9, #0
	vldr s1, [r3, #0]
	b label32
.p2align 4
label37:
	add r1, r2, r9, lsl #2
	add r8, r8, #1
	add r7, r7, #4
	add r3, r3, #4
	add r2, r2, #4000
	vldr s3, [r1, #0]
	cmp r8, #1000
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vadd.f32 s2, s2, s3
	vstr s3, [r1, #0]
	vldr s3, [r1, #4]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r1, #4]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #8]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r1, #8]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #12]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r1, #12]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #16]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r1, #16]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #20]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r1, #20]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #24]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r1, #24]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #28]
	vsub.f32 s1, s3, s1
	vdiv.f32 s1, s1, s0
	vstr s1, [r1, #28]
	vadd.f32 s0, s2, s1
	vmov.f32 s2, s0
	blt label31
	b label106
.p2align 4
label32:
	vldr s3, [r1, #0]
	add r9, r9, #16
	cmp r9, #992
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vadd.f32 s2, s2, s3
	vstr s3, [r1, #0]
	vldr s3, [r1, #4]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r1, #4]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #8]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r1, #8]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #12]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r1, #12]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #16]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r1, #16]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #20]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r1, #20]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #24]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r1, #24]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #28]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r1, #28]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #32]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r1, #32]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #36]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r1, #36]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #40]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r1, #40]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #44]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r1, #44]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #48]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r1, #48]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #52]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r1, #52]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #56]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r1, #56]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #60]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r1, #60]
	vadd.f32 s2, s2, s3
	bge label37
	add r1, r1, #64
	b label32
label13:
	mov r2, r4
	mov r3, r5
	mov r7, #0
	cmp r7, #1000
	blt label54
label18:
	mov r1, r6
	mov r2, r4
	mov r3, r5
	mov r7, #0
	cmp r7, #1000
	blt label39
	b label24
.p2align 4
label54:
	mov r8, #0
	mov r1, r2
	vmov s1, r8
	b label55
.p2align 4
label60:
	add r1, r2, r8, lsl #2
	add r7, r7, #1
	add r2, r2, #4000
	cmp r7, #1000
	vldr s2, [r1, #0]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #4]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #8]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #12]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #16]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #20]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #24]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #28]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #32]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #36]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #40]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #44]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #48]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #52]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #56]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #60]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #64]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #68]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #72]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #76]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #80]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #84]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #88]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #92]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #96]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #100]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #104]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #108]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #112]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #116]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #120]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #124]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #128]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #132]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #136]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #140]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #144]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #148]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #152]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #156]
	movw r1, #0
	movt r1, #17530
	vadd.f32 s1, s1, s2
	vmov s2, r1
	vdiv.f32 s1, s1, s2
	vstr s1, [r3, #0]
	add r3, r3, #4
	blt label54
	b label18
.p2align 4
label39:
	vldr s1, [r3, #0]
	mov r9, #0
	mov r8, r2
	vmov s2, r9
	b label40
.p2align 4
label50:
	vcmp.f32 s5, s1
	vmrs APSR_nzcv, FPSCR
	bgt label52
	vadd.f32 s4, s2, s3
	mov r8, #1056964608
	vmov s5, r8
	movw r8, #4719
	movt r8, #14979
	vmov s7, r8
	vmul.f32 s5, s4, s5
	vmov.f32 s4, s2
	vmov.f32 s2, s5
	vmul.f32 s5, s5, s5
	vsub.f32 s6, s5, s1
	vabs.f32 s6, s6
	vcmp.f32 s6, s7
	vmrs APSR_nzcv, FPSCR
	bgt label50
	b label1065
.p2align 4
label52:
	vadd.f32 s3, s2, s4
	mov r8, #1056964608
	vmov s5, r8
	movw r8, #4719
	movt r8, #14979
	vmov s7, r8
	vmul.f32 s5, s3, s5
	vmov.f32 s3, s2
	vmov.f32 s2, s5
	vmul.f32 s5, s5, s5
	vsub.f32 s6, s5, s1
	vabs.f32 s6, s6
	vcmp.f32 s6, s7
	vmrs APSR_nzcv, FPSCR
	bgt label50
	vstr s2, [r1, #0]
	add r7, r7, #1
	add r3, r3, #4
	add r2, r2, #4000
	add r1, r1, #4
	cmp r7, #1000
	blt label39
	b label24
.p2align 4
label40:
	vldr s3, [r8, #0]
	add r9, r9, #16
	cmp r9, #992
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #4]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #8]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #12]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #16]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #20]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #24]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #28]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #32]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #36]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #40]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #44]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #48]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #52]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #56]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #60]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	bge label44
	add r8, r8, #64
	b label40
.p2align 4
label55:
	vldr s2, [r1, #0]
	add r8, r8, #64
	cmp r8, #960
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #4]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #8]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #12]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #16]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #20]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #24]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #28]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #32]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #36]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #40]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #44]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #48]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #52]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #56]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #60]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #64]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #68]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #72]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #76]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #80]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #84]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #88]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #92]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #96]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #100]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #104]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #108]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #112]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #116]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #120]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #124]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #128]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #132]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #136]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #140]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #144]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #148]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #152]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #156]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #160]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #164]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #168]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #172]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #176]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #180]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #184]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #188]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #192]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #196]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #200]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #204]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #208]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #212]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #216]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #220]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #224]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #228]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #232]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #236]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #240]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #244]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #248]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #252]
	vadd.f32 s1, s1, s2
	bge label60
	add r1, r1, #256
	b label55
.p2align 4
label44:
	add r8, r2, r9, lsl #2
	vldr s3, [r8, #0]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #4]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #8]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #12]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #16]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #20]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #24]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #28]
	movw r8, #0
	movt r8, #17530
	vsub.f32 s1, s3, s1
	vmul.f32 s1, s1, s1
	vadd.f32 s1, s2, s1
	vmov s2, r8
	movw r8, #55050
	movt r8, #15395
	vdiv.f32 s1, s1, s2
	vmov s2, r8
	mov r8, #1056964608
	vadd.f32 s1, s1, s2
	vmov s2, r8
	mov r8, #0
	vmov s4, r8
	vmov.f32 s3, s1
	vmul.f32 s2, s1, s2
	vmul.f32 s5, s2, s2
	movw r8, #4719
	movt r8, #14979
	vmov s7, r8
	vsub.f32 s6, s5, s1
	vabs.f32 s6, s6
	vcmp.f32 s6, s7
	vmrs APSR_nzcv, FPSCR
	bgt label50
	vstr s2, [r1, #0]
	add r7, r7, #1
	add r3, r3, #4
	add r2, r2, #4000
	add r1, r1, #4
	cmp r7, #1000
	blt label39
label24:
	mov r2, r4
	mov r3, r5
	vmov.f32 s2, s0
	mov r8, #0
	mov r7, r6
	cmp r8, #1000
	blt label31
	b label106
.p2align 4
label1065:
	vstr s2, [r1, #0]
	add r7, r7, #1
	add r3, r3, #4
	add r2, r2, #4000
	add r1, r1, #4
	cmp r7, #1000
	blt label39
	b label24
label94:
	vmov.f32 s16, s0
	mov r1, #0
label62:
	cmp r1, #1000
	bge label73
	mov r0, r4
	mov r2, #0
	vmov.f32 s0, s16
.p2align 4
label67:
	vldr s1, [r0, #0]
	add r2, r2, #64
	cmp r2, #960
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #4]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #8]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #12]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #16]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #20]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #24]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #28]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #32]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #36]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #40]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #44]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #48]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #52]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #56]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #60]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #64]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #68]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #72]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #76]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #80]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #84]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #88]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #92]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #96]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #100]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #104]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #108]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #112]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #116]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #120]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #124]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #128]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #132]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #136]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #140]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #144]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #148]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #152]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #156]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #160]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #164]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #168]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #172]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #176]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #180]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #184]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #188]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #192]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #196]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #200]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #204]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #208]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #212]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #216]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #220]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #224]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #228]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #232]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #236]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #240]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #244]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #248]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #252]
	vadd.f32 s0, s0, s1
	bge label72
	add r0, r0, #256
	b label67
label72:
	add r0, r4, r2, lsl #2
	add r1, r1, #1
	add r4, r4, #4000
	vldr s1, [r0, #0]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #4]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #8]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #12]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #16]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #20]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #24]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #28]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #32]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #36]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #40]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #44]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #48]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #52]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #56]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #60]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #64]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #68]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #72]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #76]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #80]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #84]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #88]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #92]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #96]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #100]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #104]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #108]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #112]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #116]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #120]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #124]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #128]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #132]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #136]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #140]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #144]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #148]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #152]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #156]
	vadd.f32 s16, s0, s1
	b label62
