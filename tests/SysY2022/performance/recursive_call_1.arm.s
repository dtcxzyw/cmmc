.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
func:
	push { r4, r5, r6, r7, lr }
	vpush { s16, s17, s18, s19 }
	cmp r0, #0
	vmov.f32 s16, s0
	sub sp, sp, #4
	blt label51
	subs r7, r0, #1
	sub r6, r0, #2
	sub r5, r0, #3
	sub r4, r0, #4
	blt label63
	cmp r6, #0
	bge label17
	mov r0, #0
	vmov s0, r0
label6:
	vadd.f32 s17, s16, s0
	cmp r6, #0
	bge label10
	mov r0, #0
	vmov s0, r0
	vsub.f32 s0, s17, s0
	b label24
label51:
	mov r0, #0
	vmov s0, r0
label2:
	add sp, sp, #4
	vpop { s16, s17, s18, s19 }
	pop { r4, r5, r6, r7, pc }
label63:
	mov r0, #0
	vmov s0, r0
label24:
	vadd.f32 s16, s16, s0
	cmp r7, #0
	bge label28
	mov r0, #0
	vmov s0, r0
	vsub.f32 s0, s16, s0
	b label2
label28:
	cmp r6, #0
	blt label127
	cmp r5, #0
	bge label41
	mov r0, #0
	vmov s0, r0
label42:
	vadd.f32 s17, s16, s0
	cmp r5, #0
	blt label169
	vmov.f32 s0, s17
	mov r0, r4
	bl func
	vadd.f32 s18, s17, s0
	vmov.f32 s0, s18
	mov r0, r4
	bl func
	vsub.f32 s0, s18, s0
	vsub.f32 s0, s17, s0
	b label29
label127:
	mov r0, #0
	vmov s0, r0
label29:
	vadd.f32 s17, s16, s0
	cmp r6, #0
	blt label133
	cmp r5, #0
	blt label139
	vmov.f32 s0, s17
	mov r0, r4
	bl func
	vadd.f32 s18, s17, s0
	vmov.f32 s0, s18
	mov r0, r4
	bl func
	vsub.f32 s0, s18, s0
	b label35
label133:
	mov r0, #0
	vmov s0, r0
	vsub.f32 s0, s17, s0
	vsub.f32 s0, s16, s0
	b label2
label17:
	cmp r5, #0
	bge label23
	mov r0, #0
	vmov s0, r0
	b label18
label10:
	cmp r5, #0
	bge label16
	mov r0, #0
	vmov s0, r0
	b label11
label169:
	mov r0, #0
	vmov s0, r0
	vsub.f32 s0, s17, s0
	b label29
label139:
	mov r0, #0
	vmov s0, r0
label35:
	vadd.f32 s18, s17, s0
	cmp r5, #0
	bge label39
	mov r0, #0
	vmov s0, r0
	vsub.f32 s0, s18, s0
	vsub.f32 s0, s17, s0
	vsub.f32 s0, s16, s0
	b label2
label39:
	vmov.f32 s0, s18
	mov r0, r4
	bl func
	vadd.f32 s19, s18, s0
	vmov.f32 s0, s19
	mov r0, r4
	bl func
	vsub.f32 s0, s19, s0
	vsub.f32 s0, s18, s0
	vsub.f32 s0, s17, s0
	vsub.f32 s0, s16, s0
	b label2
label41:
	vmov.f32 s0, s16
	mov r0, r4
	bl func
	vadd.f32 s17, s16, s0
	vmov.f32 s0, s17
	mov r0, r4
	bl func
	vsub.f32 s0, s17, s0
	b label42
label11:
	vadd.f32 s18, s17, s0
	cmp r5, #0
	blt label86
	b label15
label16:
	vmov.f32 s0, s17
	mov r0, r4
	bl func
	vadd.f32 s18, s17, s0
	vmov.f32 s0, s18
	mov r0, r4
	bl func
	vsub.f32 s0, s18, s0
	b label11
label15:
	vmov.f32 s0, s18
	mov r0, r4
	bl func
	vadd.f32 s19, s18, s0
	vmov.f32 s0, s19
	mov r0, r4
	bl func
	vsub.f32 s0, s19, s0
	vsub.f32 s0, s18, s0
	vsub.f32 s0, s17, s0
	b label24
label86:
	mov r0, #0
	vmov s0, r0
	vsub.f32 s0, s18, s0
	vsub.f32 s0, s17, s0
	b label24
label18:
	vadd.f32 s17, s16, s0
	cmp r5, #0
	blt label106
	b label20
label23:
	vmov.f32 s0, s16
	mov r0, r4
	bl func
	vadd.f32 s17, s16, s0
	vmov.f32 s0, s17
	mov r0, r4
	bl func
	vsub.f32 s0, s17, s0
	b label18
label20:
	vmov.f32 s0, s17
	mov r0, r4
	bl func
	vadd.f32 s18, s17, s0
	vmov.f32 s0, s18
	mov r0, r4
	bl func
	vsub.f32 s0, s18, s0
	vsub.f32 s0, s17, s0
	b label6
label106:
	mov r0, #0
	vmov s0, r0
	vsub.f32 s0, s17, s0
	b label6
.p2align 4
.globl main
main:
	push { lr }
	mov r0, #21
	sub sp, sp, #4
	bl _sysy_starttime
	bl getint
	movw r1, #8389
	movt r1, #16256
	vmov s0, r1
	bl func
	vcmp.f32 s0, #0
	vmrs APSR_nzcv, FPSCR
	bne label189
	mov r0, #112
	bl putch
label189:
	mov r0, #32
	bl _sysy_stoptime
	add sp, sp, #4
	mov r0, #0
	pop { pc }
