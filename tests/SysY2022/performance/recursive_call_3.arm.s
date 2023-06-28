.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
func:
	push { r4, lr }
	vpush { s16 }
	sub sp, sp, #4
	vmov.f32 s16, s0
	cmp r1, #0
	bge label9
	mov r0, #0
	vmov s0, r0
	b label2
label9:
	sub r4, r1, #1
	vmov.f32 s0, s16
	mov r1, r4
	bl func
	vadd.f32 s16, s16, s0
	vmov.f32 s0, s16
	mov r1, r4
	bl func
	vsub.f32 s0, s16, s0
label2:
	add sp, sp, #4
	vpop { s16 }
	pop { r4, pc }
.globl main
main:
	push { lr }
	sub sp, sp, #4
	mov r0, #21
	bl _sysy_starttime
	bl getint
	movw r2, #8389
	movt r2, #16256
	vmov s0, r2
	mov r1, r0
	bl func
	vmov s1, r2
	vsub.f32 s0, s0, s1
	vcmp.f32 s0, #0
	vmrs APSR_nzcv, FPSCR
	beq label19
label20:
	mov r0, #32
	bl _sysy_stoptime
	mov r0, #0
	add sp, sp, #4
	pop { pc }
label19:
	mov r0, #112
	bl putch
	b label20
