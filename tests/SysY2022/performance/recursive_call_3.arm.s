.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
func:
	push { r4, r5, r6, lr }
	vpush { s16, s17 }
	cmp r0, #0
	mov r4, r0
	vmov.f32 s16, s0
	bge label4
	mov r0, #0
	vmov s0, r0
	b label2
label46:
	mov r0, #0
	vmov s0, r0
	vsub.f32 s0, s16, s0
label2:
	vpop { s16, s17 }
	pop { r4, r5, r6, pc }
label4:
	subs r6, r4, #1
	bge label10
	mov r0, #0
	vmov s0, r0
	vadd.f32 s16, s16, s0
	bge label9
	b label46
label9:
	sub r4, r4, #2
	vmov.f32 s0, s16
	mov r0, r4
	bl func
	vadd.f32 s17, s16, s0
	vmov.f32 s0, s17
	mov r0, r4
	bl func
	vsub.f32 s0, s17, s0
	vsub.f32 s0, s16, s0
	b label2
label10:
	sub r5, r4, #2
	vmov.f32 s0, s16
	mov r0, r5
	bl func
	vadd.f32 s17, s16, s0
	vmov.f32 s0, s17
	mov r0, r5
	bl func
	vsub.f32 s0, s17, s0
	vadd.f32 s16, s16, s0
	cmp r6, #0
	bge label9
	b label46
.globl main
main:
	push { lr }
	mov r0, #21
	sub sp, sp, #4
	bl _sysy_starttime
	bl getint
	movw r1, #8389
	movt r1, #16256
	vmov s1, r1
	vmov.f32 s0, s1
	bl func
	vsub.f32 s0, s0, s1
	vcmp.f32 s0, #0
	vmrs APSR_nzcv, FPSCR
	bne label49
	mov r0, #112
	bl putch
label49:
	mov r0, #32
	bl _sysy_stoptime
	add sp, sp, #4
	mov r0, #0
	pop { pc }
