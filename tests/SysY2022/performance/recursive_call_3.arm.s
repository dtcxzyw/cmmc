.arch armv7ve
.data
.bss
.align 8
lut_func:
	.zero	16336
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
func:
	push { r4, r5, lr }
	vpush { s16 }
	vmov r1, s0
	mov r4, r0
	vmov.f32 s16, s0
	mov r2, r0
	movw r0, #:lower16:lut_func
	movt r0, #:upper16:lut_func
	bl cmmcCacheLookup
	mov r5, r0
	ldr r0, [r0, #12]
	cmp r0, #0
	beq label5
	vldr s0, [r5, #8]
label3:
	vpop { s16 }
	pop { r4, r5, pc }
label5:
	cmp r4, #0
	bge label7
	mov r0, #1
	str r0, [r5, #12]
	mov r0, #0
	vmov s0, r0
	vstr s0, [r5, #8]
	b label3
label7:
	sub r4, r4, #1
	vmov.f32 s0, s16
	mov r0, r4
	bl func
	vadd.f32 s16, s16, s0
	vmov.f32 s0, s16
	mov r0, r4
	bl func
	mov r0, #1
	vsub.f32 s0, s16, s0
	str r0, [r5, #12]
	vstr s0, [r5, #8]
	b label3
.p2align 4
.globl main
main:
	push { lr }
	vpush { s16 }
	mov r0, #21
	bl _sysy_starttime
	bl getint
	movw r1, #8389
	movt r1, #16256
	vmov s16, r1
	vmov.f32 s0, s16
	bl func
	vsub.f32 s0, s0, s16
	vcmp.f32 s0, #0
	vmrs APSR_nzcv, FPSCR
	bne label46
	mov r0, #112
	bl putch
label46:
	mov r0, #32
	bl _sysy_stoptime
	mov r0, #0
	vpop { s16 }
	pop { pc }
