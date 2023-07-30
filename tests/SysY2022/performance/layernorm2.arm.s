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
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, lr }
	vpush { s16 }
	mov r7, #0
	movw r6, #:lower16:var
	movw r5, #:lower16:mean
	movw r4, #:lower16:a
	movt r6, #:upper16:var
	movt r5, #:upper16:mean
	movt r4, #:upper16:a
label2:
	cmp r7, #1000
	bge label8
	mov r0, #4000
	mla r0, r7, r0, r4
	bl getfarray
	cmp r0, #1000
	bne label6
	add r7, r7, #1
	b label2
label6:
	vpop { s16 }
	pop { r4, r5, r6, r7, pc }
label8:
	mov r0, #42
	bl _sysy_starttime
	mov r0, #0
	vmov s0, r0
	cmp r0, #100
	blt label74
	vmov.f32 s16, s0
	mov r1, #0
	cmp r1, #1000
	blt label46
	b label51
label74:
	mov r2, #0
	cmp r2, #1000
	blt label78
	mov r1, #0
	cmp r1, #1000
	blt label16
	vmov.f32 s2, s0
	cmp r2, #1000
	blt label257
	add r0, r0, #1
	cmp r0, #100
	blt label74
	vmov.f32 s16, s0
	cmp r1, #1000
	blt label46
	b label51
.p2align 4
label16:
	add r2, r5, r1, lsl #2
	mov r3, #0
	vmov s2, r3
	vldr s1, [r2, #0]
	mov r2, #4000
	mla r2, r1, r2, r4
.p2align 4
label17:
	add r7, r2, r3, lsl #2
	add r3, r3, #16
	vldr s3, [r7, #0]
	cmp r3, #992
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #4]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #8]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #12]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #16]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #20]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #24]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #28]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #32]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #36]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #40]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #44]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #48]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #52]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #56]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #60]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	blt label17
	add r2, r2, r3, lsl #2
	vldr s3, [r2, #0]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r2, #4]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r2, #8]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r2, #12]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r2, #16]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r2, #20]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r2, #24]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r2, #28]
	movw r2, #0
	movt r2, #17530
	vsub.f32 s1, s3, s1
	vmul.f32 s1, s1, s1
	vadd.f32 s1, s2, s1
	vmov s2, r2
	movw r2, #55050
	movt r2, #15395
	vdiv.f32 s1, s1, s2
	vmov s2, r2
	mov r2, #1056964608
	vadd.f32 s2, s1, s2
	vmov s1, r2
	mov r2, #0
	vmov s4, r2
	vmov.f32 s3, s2
	vmul.f32 s1, s2, s1
	vmul.f32 s5, s1, s1
	movw r2, #4719
	movt r2, #14979
	vmov s7, r2
	vsub.f32 s6, s5, s2
	vabs.f32 s6, s6
	vcmp.f32 s6, s7
	vmrs APSR_nzcv, FPSCR
	bgt label25
	add r2, r6, r1, lsl #2
	add r1, r1, #1
	vstr s1, [r2, #0]
	cmp r1, #1000
	blt label16
	vmov.f32 s2, s0
	mov r2, #0
	cmp r2, #1000
	blt label257
	add r0, r0, #1
	cmp r0, #100
	blt label74
	vmov.f32 s16, s0
	mov r1, #0
	cmp r1, #1000
	blt label46
	b label51
.p2align 4
label25:
	vcmp.f32 s5, s2
	vmrs APSR_nzcv, FPSCR
	bgt label27
	vadd.f32 s4, s1, s3
	mov r2, #1056964608
	vmov s5, r2
	vmul.f32 s5, s4, s5
	vmov.f32 s4, s1
	vmov.f32 s1, s5
	vmul.f32 s5, s5, s5
	movw r2, #4719
	movt r2, #14979
	vmov s7, r2
	vsub.f32 s6, s5, s2
	vabs.f32 s6, s6
	vcmp.f32 s6, s7
	vmrs APSR_nzcv, FPSCR
	bgt label25
	add r2, r6, r1, lsl #2
	add r1, r1, #1
	vstr s1, [r2, #0]
	cmp r1, #1000
	blt label16
	vmov.f32 s2, s0
	mov r2, #0
	cmp r2, #1000
	blt label257
	add r0, r0, #1
	cmp r0, #100
	blt label74
	vmov.f32 s16, s0
	mov r1, #0
	cmp r1, #1000
	blt label46
	b label51
.p2align 4
label27:
	vadd.f32 s3, s1, s4
	mov r2, #1056964608
	vmov s5, r2
	vmul.f32 s5, s3, s5
	vmov.f32 s3, s1
	vmov.f32 s1, s5
	vmul.f32 s5, s5, s5
	movw r2, #4719
	movt r2, #14979
	vmov s7, r2
	vsub.f32 s6, s5, s2
	vabs.f32 s6, s6
	vcmp.f32 s6, s7
	vmrs APSR_nzcv, FPSCR
	bgt label25
	add r2, r6, r1, lsl #2
	add r1, r1, #1
	vstr s1, [r2, #0]
	cmp r1, #1000
	blt label16
	vmov.f32 s2, s0
	mov r2, #0
	cmp r2, #1000
	blt label257
	add r0, r0, #1
	cmp r0, #100
	blt label74
	vmov.f32 s16, s0
	mov r1, #0
	cmp r1, #1000
	blt label46
	b label51
.p2align 4
label78:
	mov r1, #4000
	mov r7, #0
	mla r3, r2, r1, r4
	vmov s1, r7
.p2align 4
label39:
	add r1, r3, r7, lsl #2
	add r7, r7, #64
	vldr s2, [r1, #0]
	cmp r7, #960
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
	blt label39
	add r1, r3, r7, lsl #2
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
	add r1, r5, r2, lsl #2
	add r2, r2, #1
	vdiv.f32 s1, s1, s2
	vstr s1, [r1, #0]
	cmp r2, #1000
	blt label78
	mov r1, #0
	cmp r1, #1000
	blt label16
	vmov.f32 s2, s0
	mov r2, #0
	cmp r2, #1000
	blt label257
	add r0, r0, #1
	cmp r0, #100
	blt label74
	vmov.f32 s16, s0
	cmp r1, #1000
	blt label46
	b label51
label257:
	add r1, r6, r2, lsl #2
	mov r7, #0
	vldr s0, [r1, #0]
	add r1, r5, r2, lsl #2
	vldr s1, [r1, #0]
	mov r1, #4000
	mla r3, r2, r1, r4
.p2align 4
label34:
	add r1, r3, r7, lsl #2
	add r7, r7, #16
	vldr s3, [r1, #0]
	cmp r7, #992
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
	blt label34
	add r1, r3, r7, lsl #2
	add r2, r2, #1
	vldr s3, [r1, #0]
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
	vdiv.f32 s0, s1, s0
	vstr s0, [r1, #28]
	vadd.f32 s2, s2, s0
	cmp r2, #1000
	blt label257
	add r0, r0, #1
	vmov.f32 s0, s2
	cmp r0, #100
	blt label74
	vmov.f32 s16, s2
	mov r1, #0
	cmp r1, #1000
	blt label46
	b label51
label43:
	cmp r1, #1000
	bge label51
label46:
	mov r0, #4000
	mov r3, #0
	mla r2, r1, r0, r4
.p2align 4
label47:
	add r0, r2, r3, lsl #2
	add r3, r3, #64
	vldr s0, [r0, #0]
	cmp r3, #960
	vldr s1, [r0, #4]
	vadd.f32 s0, s16, s0
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
	bge label50
	vmov.f32 s16, s0
	b label47
label50:
	add r0, r2, r3, lsl #2
	add r1, r1, #1
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
	b label43
label51:
	mov r0, #95
	bl _sysy_stoptime
	vmov.f32 s0, s16
	bl putfloat
	mov r0, #0
	b label6
