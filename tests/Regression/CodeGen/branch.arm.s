.arch armv7-a
.data
.text
.syntax unified
.arm
.fpu neon
.globl beqz
beqz:
	sub sp, sp, #16
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r4, r1
	cmp r0, #0
	str r1, [sp, #0]
	bne label3
	mov r4, #0
	mov r5, r1
	str r4, [r1, #0]
label3:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #16
	bx lr
.globl beqi
beqi:
	sub sp, sp, #16
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r4, r1
	cmp r0, #1
	str r1, [sp, #0]
	bne label17
	mov r4, #0
	mov r5, r1
	str r4, [r1, #0]
label17:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #16
	bx lr
.globl beq
beq:
	sub sp, sp, #16
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r4, r2
	cmp r0, r1
	str r2, [sp, #0]
	bne label31
	mov r4, #0
	mov r5, r2
	str r4, [r2, #0]
label31:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #16
	bx lr
.globl bnez
bnez:
	sub sp, sp, #16
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r4, r1
	cmp r0, #0
	str r1, [sp, #0]
	beq label46
	mov r4, #0
	mov r5, r1
	str r4, [r1, #0]
label46:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #16
	bx lr
.globl bnei
bnei:
	sub sp, sp, #16
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r4, r1
	cmp r0, #1
	str r1, [sp, #0]
	beq label60
	mov r4, #0
	mov r5, r1
	str r4, [r1, #0]
label60:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #16
	bx lr
.globl bne
bne:
	sub sp, sp, #16
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r4, r2
	cmp r0, r1
	str r2, [sp, #0]
	beq label74
	mov r4, #0
	mov r5, r2
	str r4, [r2, #0]
label74:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #16
	bx lr
.globl bltz
bltz:
	sub sp, sp, #16
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r4, r1
	cmp r0, #0
	str r1, [sp, #0]
	bge label89
	mov r4, #0
	mov r5, r1
	str r4, [r1, #0]
label89:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #16
	bx lr
.globl blti1
blti1:
	sub sp, sp, #16
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r4, r1
	cmp r0, #1
	str r1, [sp, #0]
	bge label103
	mov r4, #0
	mov r5, r1
	str r4, [r1, #0]
label103:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #16
	bx lr
.globl blti2
blti2:
	sub sp, sp, #16
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r4, r1
	cmp r0, #10
	str r1, [sp, #0]
	bge label117
	mov r4, #0
	mov r5, r1
	str r4, [r1, #0]
label117:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #16
	bx lr
.globl blt
blt:
	sub sp, sp, #16
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r4, r2
	cmp r0, r1
	str r2, [sp, #0]
	bge label131
	mov r4, #0
	mov r5, r2
	str r4, [r2, #0]
label131:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #16
	bx lr
.globl bgez
bgez:
	sub sp, sp, #16
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r4, r1
	mvn r5, #0
	cmp r0, r5
	str r1, [sp, #0]
	ble label146
	mov r4, #0
	mov r5, r1
	str r4, [r1, #0]
label146:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #16
	bx lr
.globl bgei1
bgei1:
	sub sp, sp, #16
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r4, r1
	cmp r0, #0
	str r1, [sp, #0]
	ble label162
	mov r4, #0
	mov r5, r1
	str r4, [r1, #0]
label162:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #16
	bx lr
.globl bgei2
bgei2:
	sub sp, sp, #16
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r4, r1
	cmp r0, #9
	str r1, [sp, #0]
	ble label176
	mov r4, #0
	mov r5, r1
	str r4, [r1, #0]
label176:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #16
	bx lr
.globl bge
bge:
	sub sp, sp, #16
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r4, r2
	cmp r0, r1
	str r2, [sp, #0]
	blt label190
	mov r4, #0
	mov r5, r2
	str r4, [r2, #0]
label190:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #16
	bx lr
.globl bgtz
bgtz:
	sub sp, sp, #16
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r4, r1
	cmp r0, #0
	str r1, [sp, #0]
	ble label205
	mov r4, #0
	mov r5, r1
	str r4, [r1, #0]
label205:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #16
	bx lr
.globl bgti1
bgti1:
	sub sp, sp, #16
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r4, r1
	mvn r5, #0
	cmp r0, r5
	str r1, [sp, #0]
	ble label219
	mov r4, #0
	mov r5, r1
	str r4, [r1, #0]
label219:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #16
	bx lr
.globl bgti2
bgti2:
	sub sp, sp, #16
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r4, r1
	cmp r0, #10
	str r1, [sp, #0]
	ble label235
	mov r4, #0
	mov r5, r1
	str r4, [r1, #0]
label235:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #16
	bx lr
.globl bgt
bgt:
	sub sp, sp, #16
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r4, r2
	cmp r0, r1
	str r2, [sp, #0]
	ble label249
	mov r4, #0
	mov r5, r2
	str r4, [r2, #0]
label249:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #16
	bx lr
.globl blez
blez:
	sub sp, sp, #16
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r4, r1
	cmp r0, #1
	str r1, [sp, #0]
	bge label264
	mov r4, #0
	mov r5, r1
	str r4, [r1, #0]
label264:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #16
	bx lr
.globl blei1
blei1:
	sub sp, sp, #16
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r4, r1
	cmp r0, #0
	str r1, [sp, #0]
	bge label278
	mov r4, #0
	mov r5, r1
	str r4, [r1, #0]
label278:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #16
	bx lr
.globl blei2
blei2:
	sub sp, sp, #16
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r4, r1
	cmp r0, #11
	str r1, [sp, #0]
	bge label292
	mov r4, #0
	mov r5, r1
	str r4, [r1, #0]
label292:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #16
	bx lr
.globl ble
ble:
	sub sp, sp, #16
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r4, r2
	cmp r0, r1
	str r2, [sp, #0]
	bgt label306
	mov r4, #0
	mov r5, r2
	str r4, [r2, #0]
label306:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #16
	bx lr
.globl bfeq
bfeq:
	sub sp, sp, #16
	str r4, [sp, #4]
	str r5, [sp, #8]
	vmov s0, r0
	vmov s1, r1
	mov r4, r2
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	str r2, [sp, #0]
	bne label321
	mov r4, #0
	mov r5, r2
	str r4, [r2, #0]
label321:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #16
	bx lr
.globl bfne
bfne:
	sub sp, sp, #16
	str r4, [sp, #4]
	str r5, [sp, #8]
	vmov s0, r0
	vmov s1, r1
	mov r4, r2
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	str r2, [sp, #0]
	beq label338
	mov r4, #0
	mov r5, r2
	str r4, [r2, #0]
label338:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #16
	bx lr
.globl bflt
bflt:
	sub sp, sp, #16
	str r4, [sp, #4]
	str r5, [sp, #8]
	vmov s0, r0
	vmov s1, r1
	mov r4, r2
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	str r2, [sp, #0]
	bge label355
	mov r4, #0
	mov r5, r2
	str r4, [r2, #0]
label355:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #16
	bx lr
.globl bfle
bfle:
	sub sp, sp, #16
	str r4, [sp, #4]
	str r5, [sp, #8]
	vmov s0, r0
	vmov s1, r1
	mov r4, r2
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	str r2, [sp, #0]
	bgt label372
	mov r4, #0
	mov r5, r2
	str r4, [r2, #0]
label372:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #16
	bx lr
.globl bfge
bfge:
	sub sp, sp, #16
	str r4, [sp, #4]
	str r5, [sp, #8]
	vmov s0, r0
	vmov s1, r1
	mov r4, r2
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	str r2, [sp, #0]
	bmi label389
	mov r4, #0
	mov r5, r2
	str r4, [r2, #0]
label389:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #16
	bx lr
.globl bfgt
bfgt:
	sub sp, sp, #16
	str r4, [sp, #4]
	str r5, [sp, #8]
	vmov s0, r0
	vmov s1, r1
	mov r4, r2
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	str r2, [sp, #0]
	bls label406
	mov r4, #0
	mov r5, r2
	str r4, [r2, #0]
label406:
	ldr r5, [sp, #8]
	ldr r4, [sp, #4]
	add sp, sp, #16
	bx lr
