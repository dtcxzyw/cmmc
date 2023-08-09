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
	bge label7
	mov r0, r7
	bl getfarray
	cmp r0, #1000
	bne label72
	add r8, r8, #1
	add r7, r7, #4000
	b label2
label71:
	mov r0, #95
	bl _sysy_stoptime
	vmov.f32 s0, s16
	bl putfloat
	mov r0, #0
label72:
	vpop { s16 }
	pop { r4, r5, r6, r7, r8, r9, pc }
label7:
	mov r0, #42
	bl _sysy_starttime
	mov r0, #0
	vmov s0, r0
	b label8
label106:
	add r0, r0, #1
	vmov.f32 s0, s2
label8:
	cmp r0, #100
	bge label94
	mov r2, r4
	mov r3, r5
	mov r7, #0
	cmp r7, #1000
	blt label52
	b label16
.p2align 4
label58:
	add r1, r1, #256
.p2align 4
label53:
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
	blt label58
	vldr s2, [r1, #256]
	add r7, r7, #1
	add r2, r2, #4000
	cmp r7, #1000
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #260]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #264]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #268]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #272]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #276]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #280]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #284]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #288]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #292]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #296]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #300]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #304]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #308]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #312]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #316]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #320]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #324]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #328]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #332]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #336]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #340]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #344]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #348]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #352]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #356]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #360]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #364]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #368]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #372]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #376]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #380]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #384]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #388]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #392]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #396]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #400]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #404]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #408]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #412]
	movw r1, #0
	movt r1, #17530
	vadd.f32 s1, s1, s2
	vmov s2, r1
	vdiv.f32 s1, s1, s2
	vstr s1, [r3, #0]
	add r3, r3, #4
	bge label16
.p2align 4
label52:
	mov r8, #0
	mov r1, r2
	vmov s1, r8
	b label53
label16:
	mov r1, r6
	mov r2, r4
	mov r3, r5
	mov r7, #0
	cmp r7, #1000
	blt label37
	b label22
.p2align 4
label394:
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
	ble label1060
.p2align 4
label49:
	vcmp.f32 s5, s1
	vmrs APSR_nzcv, FPSCR
	ble label394
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
	bgt label49
	vstr s2, [r1, #0]
	add r7, r7, #1
	add r3, r3, #4
	add r2, r2, #4000
	add r1, r1, #4
	cmp r7, #1000
	bge label22
.p2align 4
label37:
	vldr s1, [r3, #0]
	mov r9, #0
	mov r8, r2
	vmov s2, r9
.p2align 4
label38:
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
	bge label43
	add r8, r8, #64
	b label38
.p2align 4
label43:
	vldr s3, [r8, #64]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #68]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #72]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #76]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #80]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #84]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #88]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #92]
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
	bgt label49
	vstr s2, [r1, #0]
	add r7, r7, #1
	add r3, r3, #4
	add r2, r2, #4000
	add r1, r1, #4
	cmp r7, #1000
	blt label37
	b label22
.p2align 4
label1060:
	vstr s2, [r1, #0]
	add r7, r7, #1
	add r3, r3, #4
	add r2, r2, #4000
	add r1, r1, #4
	cmp r7, #1000
	blt label37
label22:
	mov r2, r4
	mov r3, r5
	vmov.f32 s2, s0
	mov r8, #0
	mov r7, r6
	cmp r8, #1000
	blt label29
	b label106
.p2align 4
label34:
	add r1, r1, #64
.p2align 4
label30:
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
	blt label34
	vldr s3, [r1, #64]
	add r8, r8, #1
	add r7, r7, #4
	add r3, r3, #4
	add r2, r2, #4000
	cmp r8, #1000
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vadd.f32 s2, s2, s3
	vstr s3, [r1, #64]
	vldr s3, [r1, #68]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r1, #68]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #72]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r1, #72]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #76]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r1, #76]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #80]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r1, #80]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #84]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r1, #84]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #88]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r1, #88]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #92]
	vsub.f32 s1, s3, s1
	vdiv.f32 s1, s1, s0
	vstr s1, [r1, #92]
	vadd.f32 s0, s2, s1
	vmov.f32 s2, s0
	bge label106
.p2align 4
label29:
	vldr s0, [r7, #0]
	mov r1, r2
	mov r9, #0
	vldr s1, [r3, #0]
	b label30
label94:
	vmov.f32 s16, s0
	mov r1, #0
	b label60
label70:
	vldr s1, [r0, #256]
	add r1, r1, #1
	add r4, r4, #4000
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #260]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #264]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #268]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #272]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #276]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #280]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #284]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #288]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #292]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #296]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #300]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #304]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #308]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #312]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #316]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #320]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #324]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #328]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #332]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #336]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #340]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #344]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #348]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #352]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #356]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #360]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #364]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #368]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #372]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #376]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #380]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #384]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #388]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #392]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #396]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #400]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #404]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #408]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #412]
	vadd.f32 s16, s0, s1
label60:
	cmp r1, #1000
	bge label71
	mov r0, r4
	mov r2, #0
	vmov.f32 s0, s16
.p2align 4
label65:
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
	bge label70
	add r0, r0, #256
	b label65
