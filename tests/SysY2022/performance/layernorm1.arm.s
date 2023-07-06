.arch armv7ve
.data
.bss
.align 4
a:
	.zero	4000000
.align 4
var:
	.zero	4000
.align 4
mean:
	.zero	4000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, lr }
	vpush { s16 }
	movw r6, #:lower16:var
	movw r5, #:lower16:mean
	mov r7, #0
	movw r4, #:lower16:a
	movt r6, #:upper16:var
	movt r5, #:upper16:mean
	movt r4, #:upper16:a
	cmp r7, #1000
	bge label6
	mov r0, #4000
	mla r0, r7, r0, r4
	bl getfarray
	cmp r0, #1000
	beq label5
	b label50
label6:
	mov r0, #42
	bl _sysy_starttime
	mov r0, #0
	vmov s0, r0
	cmp r0, #100
	bge label74
	mov r1, #0
	cmp r1, #1000
	bge label78
	b label617
label74:
	mov r0, #0
	vmov.f32 s16, s0
	cmp r0, #1000
	bge label44
	b label605
label78:
	mov r1, #0
	cmp r1, #1000
	bge label82
	b label81
label82:
	vmov.f32 s2, s0
	mov r2, #0
	cmp r2, #1000
	bge label30
	b label606
label50:
	vpop { s16 }
	pop { r4, r5, r6, r7, pc }
label81:
	add r2, r5, r1, lsl #2
	mov r3, #0
	vmov s2, r3
	vldr s1, [r2, #0]
	mov r2, #4000
	mla r2, r1, r2, r4
label15:
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
	add r7, r6, r1, lsl #2
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vstr s2, [r7, #0]
	bge label18
	b label15
label18:
	add r2, r2, r3, lsl #2
	add r3, r5, r1, lsl #2
	vldr s3, [r2, #0]
	vldr s1, [r3, #0]
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
	vadd.f32 s1, s1, s2
	vmov s2, r2
	mov r2, #0
	vmov s3, r2
	vmov.f32 s4, s1
	vmul.f32 s2, s1, s2
label19:
	vmul.f32 s5, s2, s2
	movw r2, #4719
	movt r2, #14979
	vsub.f32 s6, s5, s1
	vneg.f32 s7, s6
	vcmp.f32 s6, #0
	vmrs APSR_nzcv, FPSCR
	vmovmi.f32 s6, s7
	vmov s7, r2
	vcmp.f32 s6, s7
	vmrs APSR_nzcv, FPSCR
	ble label26
	vcmp.f32 s5, s1
	vmrs APSR_nzcv, FPSCR
	ble label251
	vadd.f32 s4, s2, s3
	mov r2, #1056964608
	vmov s5, r2
	vmul.f32 s5, s4, s5
	vmov.f32 s4, s2
	vmov.f32 s2, s5
	b label19
label251:
	vadd.f32 s3, s2, s4
	mov r2, #1056964608
	vmov s5, r2
	vmul.f32 s5, s3, s5
	vmov.f32 s3, s2
	vmov.f32 s2, s5
	b label19
label26:
	add r2, r6, r1, lsl #2
	add r1, r1, #1
	vstr s2, [r2, #0]
	cmp r1, #1000
	bge label82
	b label81
label606:
	add r1, r5, r2, lsl #2
	mov r7, #0
	vldr s0, [r1, #0]
	add r1, r6, r2, lsl #2
	vldr s1, [r1, #0]
	mov r1, #4000
	mla r3, r2, r1, r4
	b label32
label35:
	add r1, r3, r7, lsl #2
	add r3, r5, r2, lsl #2
	vldr s1, [r1, #0]
	vldr s0, [r3, #0]
	add r3, r6, r2, lsl #2
	add r2, r2, #1
	vsub.f32 s3, s1, s0
	vldr s1, [r3, #0]
	vdiv.f32 s3, s3, s1
	vadd.f32 s2, s2, s3
	vstr s3, [r1, #0]
	vldr s3, [r1, #4]
	vsub.f32 s3, s3, s0
	vdiv.f32 s3, s3, s1
	vstr s3, [r1, #4]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #8]
	vsub.f32 s3, s3, s0
	vdiv.f32 s3, s3, s1
	vstr s3, [r1, #8]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #12]
	vsub.f32 s3, s3, s0
	vdiv.f32 s3, s3, s1
	vstr s3, [r1, #12]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #16]
	vsub.f32 s3, s3, s0
	vdiv.f32 s3, s3, s1
	vstr s3, [r1, #16]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #20]
	vsub.f32 s3, s3, s0
	vdiv.f32 s3, s3, s1
	vstr s3, [r1, #20]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #24]
	vsub.f32 s3, s3, s0
	vdiv.f32 s3, s3, s1
	vstr s3, [r1, #24]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #28]
	vsub.f32 s0, s3, s0
	vdiv.f32 s0, s0, s1
	vstr s0, [r1, #28]
	vadd.f32 s2, s2, s0
	cmp r2, #1000
	bge label30
	b label606
label32:
	add r1, r3, r7, lsl #2
	add r7, r7, #16
	vldr s3, [r1, #0]
	cmp r7, #992
	vsub.f32 s3, s3, s0
	vdiv.f32 s3, s3, s1
	vadd.f32 s2, s2, s3
	vstr s3, [r1, #0]
	vldr s3, [r1, #4]
	vsub.f32 s3, s3, s0
	vdiv.f32 s3, s3, s1
	vstr s3, [r1, #4]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #8]
	vsub.f32 s3, s3, s0
	vdiv.f32 s3, s3, s1
	vstr s3, [r1, #8]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #12]
	vsub.f32 s3, s3, s0
	vdiv.f32 s3, s3, s1
	vstr s3, [r1, #12]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #16]
	vsub.f32 s3, s3, s0
	vdiv.f32 s3, s3, s1
	vstr s3, [r1, #16]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #20]
	vsub.f32 s3, s3, s0
	vdiv.f32 s3, s3, s1
	vstr s3, [r1, #20]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #24]
	vsub.f32 s3, s3, s0
	vdiv.f32 s3, s3, s1
	vstr s3, [r1, #24]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #28]
	vsub.f32 s3, s3, s0
	vdiv.f32 s3, s3, s1
	vstr s3, [r1, #28]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #32]
	vsub.f32 s3, s3, s0
	vdiv.f32 s3, s3, s1
	vstr s3, [r1, #32]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #36]
	vsub.f32 s3, s3, s0
	vdiv.f32 s3, s3, s1
	vstr s3, [r1, #36]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #40]
	vsub.f32 s3, s3, s0
	vdiv.f32 s3, s3, s1
	vstr s3, [r1, #40]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #44]
	vsub.f32 s3, s3, s0
	vdiv.f32 s3, s3, s1
	vstr s3, [r1, #44]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #48]
	vsub.f32 s3, s3, s0
	vdiv.f32 s3, s3, s1
	vstr s3, [r1, #48]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #52]
	vsub.f32 s3, s3, s0
	vdiv.f32 s3, s3, s1
	vstr s3, [r1, #52]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #56]
	vsub.f32 s3, s3, s0
	vdiv.f32 s3, s3, s1
	vstr s3, [r1, #56]
	vadd.f32 s2, s2, s3
	vldr s3, [r1, #60]
	vsub.f32 s3, s3, s0
	vdiv.f32 s3, s3, s1
	vstr s3, [r1, #60]
	vadd.f32 s2, s2, s3
	bge label35
	b label32
label617:
	mov r2, #4000
	mov r3, #0
	mla r2, r1, r2, r4
	vmov s1, r3
	b label37
label30:
	add r0, r0, #1
	vmov.f32 s0, s2
	cmp r0, #100
	bge label74
	mov r1, #0
	cmp r1, #1000
	bge label78
	b label617
label37:
	add r7, r2, r3, lsl #2
	add r3, r3, #16
	vldr s2, [r7, #0]
	cmp r3, #992
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #4]
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #8]
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #12]
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #16]
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #20]
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #24]
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #28]
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #32]
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #36]
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #40]
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #44]
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #48]
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #52]
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #56]
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #60]
	add r7, r5, r1, lsl #2
	vadd.f32 s1, s1, s2
	vstr s1, [r7, #0]
	bge label40
	b label37
label40:
	add r2, r2, r3, lsl #2
	vldr s2, [r2, #0]
	vadd.f32 s1, s1, s2
	vldr s2, [r2, #4]
	vadd.f32 s1, s1, s2
	vldr s2, [r2, #8]
	vadd.f32 s1, s1, s2
	vldr s2, [r2, #12]
	vadd.f32 s1, s1, s2
	vldr s2, [r2, #16]
	vadd.f32 s1, s1, s2
	vldr s2, [r2, #20]
	vadd.f32 s1, s1, s2
	vldr s2, [r2, #24]
	vadd.f32 s1, s1, s2
	vldr s2, [r2, #28]
	movw r2, #0
	movt r2, #17530
	vadd.f32 s1, s1, s2
	vmov s2, r2
	add r2, r5, r1, lsl #2
	add r1, r1, #1
	vdiv.f32 s1, s1, s2
	vstr s1, [r2, #0]
	cmp r1, #1000
	bge label78
	b label617
label605:
	mov r1, #4000
	mov r2, #0
	vmov.f32 s0, s16
	mla r1, r0, r1, r4
	b label46
label49:
	add r1, r1, r2, lsl #2
	add r0, r0, #1
	vldr s1, [r1, #0]
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #4]
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #8]
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #12]
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #16]
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #20]
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #24]
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #28]
	vadd.f32 s16, s0, s1
	cmp r0, #1000
	bge label44
	b label605
label46:
	add r3, r1, r2, lsl #2
	add r2, r2, #16
	vldr s1, [r3, #0]
	cmp r2, #992
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #4]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #8]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #12]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #16]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #20]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #24]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #28]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #32]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #36]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #40]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #44]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #48]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #52]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #56]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #60]
	vadd.f32 s0, s0, s1
	bge label49
	b label46
label5:
	add r7, r7, #1
	cmp r7, #1000
	bge label6
	mov r0, #4000
	mla r0, r7, r0, r4
	bl getfarray
	cmp r0, #1000
	beq label5
	b label50
label44:
	mov r0, #95
	bl _sysy_stoptime
	vmov.f32 s0, s16
	bl putfloat
	mov r0, #0
	b label50
