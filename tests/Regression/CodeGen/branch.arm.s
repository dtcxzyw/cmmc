.arch armv7-a
.data
.text
.syntax unified
.arm
.fpu neon
.globl beqz
beqz:
	sub sp, sp, #4
	cmp r0, #0
	str r1, [sp, #0]
	bne label3
	mov r0, #0
	str r0, [r1, #0]
label3:
	add sp, sp, #4
	bx lr
.globl beqi
beqi:
	sub sp, sp, #4
	cmp r0, #1
	str r1, [sp, #0]
	bne label16
	mov r0, #0
	str r0, [r1, #0]
label16:
	add sp, sp, #4
	bx lr
.globl beq
beq:
	sub sp, sp, #4
	cmp r0, r1
	str r2, [sp, #0]
	bne label29
	mov r0, #0
	str r0, [r2, #0]
label29:
	add sp, sp, #4
	bx lr
.globl bnez
bnez:
	sub sp, sp, #4
	cmp r0, #0
	str r1, [sp, #0]
	beq label44
	mov r0, #0
	str r0, [r1, #0]
label44:
	add sp, sp, #4
	bx lr
.globl bnei
bnei:
	sub sp, sp, #4
	cmp r0, #1
	str r1, [sp, #0]
	beq label57
	mov r0, #0
	str r0, [r1, #0]
label57:
	add sp, sp, #4
	bx lr
.globl bne
bne:
	sub sp, sp, #4
	cmp r0, r1
	str r2, [sp, #0]
	beq label70
	mov r0, #0
	str r0, [r2, #0]
label70:
	add sp, sp, #4
	bx lr
.globl bltz
bltz:
	sub sp, sp, #4
	cmp r0, #0
	str r1, [sp, #0]
	bge label85
	mov r0, #0
	str r0, [r1, #0]
label85:
	add sp, sp, #4
	bx lr
.globl blti1
blti1:
	sub sp, sp, #4
	cmp r0, #1
	str r1, [sp, #0]
	bge label98
	mov r0, #0
	str r0, [r1, #0]
label98:
	add sp, sp, #4
	bx lr
.globl blti2
blti2:
	sub sp, sp, #4
	cmp r0, #10
	str r1, [sp, #0]
	bge label111
	mov r0, #0
	str r0, [r1, #0]
label111:
	add sp, sp, #4
	bx lr
.globl blt
blt:
	sub sp, sp, #4
	cmp r0, r1
	str r2, [sp, #0]
	bge label124
	mov r0, #0
	str r0, [r2, #0]
label124:
	add sp, sp, #4
	bx lr
.globl bgez
bgez:
	sub sp, sp, #4
	mvn r2, #0
	cmp r0, r2
	str r1, [sp, #0]
	ble label139
	mov r0, #0
	str r0, [r1, #0]
label139:
	add sp, sp, #4
	bx lr
.globl bgei1
bgei1:
	sub sp, sp, #4
	cmp r0, #0
	str r1, [sp, #0]
	ble label154
	mov r0, #0
	str r0, [r1, #0]
label154:
	add sp, sp, #4
	bx lr
.globl bgei2
bgei2:
	sub sp, sp, #4
	cmp r0, #9
	str r1, [sp, #0]
	ble label167
	mov r0, #0
	str r0, [r1, #0]
label167:
	add sp, sp, #4
	bx lr
.globl bge
bge:
	sub sp, sp, #4
	cmp r0, r1
	str r2, [sp, #0]
	blt label180
	mov r0, #0
	str r0, [r2, #0]
label180:
	add sp, sp, #4
	bx lr
.globl bgtz
bgtz:
	sub sp, sp, #4
	cmp r0, #0
	str r1, [sp, #0]
	ble label195
	mov r0, #0
	str r0, [r1, #0]
label195:
	add sp, sp, #4
	bx lr
.globl bgti1
bgti1:
	sub sp, sp, #4
	mvn r2, #0
	cmp r0, r2
	str r1, [sp, #0]
	ble label208
	mov r0, #0
	str r0, [r1, #0]
label208:
	add sp, sp, #4
	bx lr
.globl bgti2
bgti2:
	sub sp, sp, #4
	cmp r0, #10
	str r1, [sp, #0]
	ble label223
	mov r0, #0
	str r0, [r1, #0]
label223:
	add sp, sp, #4
	bx lr
.globl bgt
bgt:
	sub sp, sp, #4
	cmp r0, r1
	str r2, [sp, #0]
	ble label236
	mov r0, #0
	str r0, [r2, #0]
label236:
	add sp, sp, #4
	bx lr
.globl blez
blez:
	sub sp, sp, #4
	cmp r0, #1
	str r1, [sp, #0]
	bge label251
	mov r0, #0
	str r0, [r1, #0]
label251:
	add sp, sp, #4
	bx lr
.globl blei1
blei1:
	sub sp, sp, #4
	cmp r0, #0
	str r1, [sp, #0]
	bge label264
	mov r0, #0
	str r0, [r1, #0]
label264:
	add sp, sp, #4
	bx lr
.globl blei2
blei2:
	sub sp, sp, #4
	cmp r0, #11
	str r1, [sp, #0]
	bge label277
	mov r0, #0
	str r0, [r1, #0]
label277:
	add sp, sp, #4
	bx lr
.globl ble
ble:
	sub sp, sp, #4
	cmp r0, r1
	str r2, [sp, #0]
	bgt label290
	mov r0, #0
	str r0, [r2, #0]
label290:
	add sp, sp, #4
	bx lr
.globl bfeq
bfeq:
	sub sp, sp, #4
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	str r2, [sp, #0]
	bne label305
	mov r0, #0
	str r0, [r2, #0]
label305:
	add sp, sp, #4
	bx lr
.globl bfne
bfne:
	sub sp, sp, #4
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	str r2, [sp, #0]
	beq label320
	mov r0, #0
	str r0, [r2, #0]
label320:
	add sp, sp, #4
	bx lr
.globl bflt
bflt:
	sub sp, sp, #4
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	str r2, [sp, #0]
	bge label335
	mov r0, #0
	str r0, [r2, #0]
label335:
	add sp, sp, #4
	bx lr
.globl bfle
bfle:
	sub sp, sp, #4
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	str r2, [sp, #0]
	bgt label350
	mov r0, #0
	str r0, [r2, #0]
label350:
	add sp, sp, #4
	bx lr
.globl bfge
bfge:
	sub sp, sp, #4
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	str r2, [sp, #0]
	bmi label365
	mov r0, #0
	str r0, [r2, #0]
label365:
	add sp, sp, #4
	bx lr
.globl bfgt
bfgt:
	sub sp, sp, #4
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	str r2, [sp, #0]
	bls label380
	mov r0, #0
	str r0, [r2, #0]
label380:
	add sp, sp, #4
	bx lr
