.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl beqz
beqz:
	cmp r0, #0
	bne label3
	mov r0, #0
	str r0, [r1, #0]
label3:
	bx lr
.globl beqi
beqi:
	cmp r0, #1
	bne label13
	mov r0, #0
	str r0, [r1, #0]
label13:
	bx lr
.globl beq
beq:
	cmp r0, r1
	bne label23
	mov r0, #0
	str r0, [r2, #0]
label23:
	bx lr
.globl bnez
bnez:
	cmp r0, #0
	beq label34
	mov r0, #0
	str r0, [r1, #0]
label34:
	bx lr
.globl bnei
bnei:
	cmp r0, #1
	beq label45
	mov r0, #0
	str r0, [r1, #0]
label45:
	bx lr
.globl bne
bne:
	cmp r0, r1
	beq label57
	mov r0, #0
	str r0, [r2, #0]
label57:
	bx lr
.globl bltz
bltz:
	cmp r0, #0
	bge label70
	mov r0, #0
	str r0, [r1, #0]
label70:
	bx lr
.globl blti1
blti1:
	cmp r0, #1
	bge label80
	mov r0, #0
	str r0, [r1, #0]
label80:
	bx lr
.globl blti2
blti2:
	cmp r0, #10
	bge label90
	mov r0, #0
	str r0, [r1, #0]
label90:
	bx lr
.globl blt
blt:
	cmp r0, r1
	bge label100
	mov r0, #0
	str r0, [r2, #0]
label100:
	bx lr
.globl bgez
bgez:
	cmn r0, #1
	ble label111
	mov r0, #0
	str r0, [r1, #0]
label111:
	bx lr
.globl bgei1
bgei1:
	cmp r0, #0
	ble label121
	mov r0, #0
	str r0, [r1, #0]
label121:
	bx lr
.globl bgei2
bgei2:
	cmp r0, #9
	ble label131
	mov r0, #0
	str r0, [r1, #0]
label131:
	bx lr
.globl bge
bge:
	cmp r0, r1
	blt label141
	mov r0, #0
	str r0, [r2, #0]
label141:
	bx lr
.globl bgtz
bgtz:
	cmp r0, #0
	ble label152
	mov r0, #0
	str r0, [r1, #0]
label152:
	bx lr
.globl bgti1
bgti1:
	cmn r0, #1
	ble label162
	mov r0, #0
	str r0, [r1, #0]
label162:
	bx lr
.globl bgti2
bgti2:
	cmp r0, #10
	ble label172
	mov r0, #0
	str r0, [r1, #0]
label172:
	bx lr
.globl bgt
bgt:
	cmp r0, r1
	ble label182
	mov r0, #0
	str r0, [r2, #0]
label182:
	bx lr
.globl blez
blez:
	cmp r0, #1
	bge label193
	mov r0, #0
	str r0, [r1, #0]
label193:
	bx lr
.globl blei1
blei1:
	cmp r0, #0
	bge label203
	mov r0, #0
	str r0, [r1, #0]
label203:
	bx lr
.globl blei2
blei2:
	cmp r0, #11
	bge label213
	mov r0, #0
	str r0, [r1, #0]
label213:
	bx lr
.globl ble
ble:
	cmp r0, r1
	bgt label223
	mov r0, #0
	str r0, [r2, #0]
label223:
	bx lr
.globl bfeq
bfeq:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bne label234
	mov r1, #0
	str r1, [r0, #0]
label234:
	bx lr
.globl bfne
bfne:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	beq label245
	mov r1, #0
	str r1, [r0, #0]
label245:
	bx lr
.globl bflt
bflt:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bhs label256
	mov r1, #0
	str r1, [r0, #0]
label256:
	bx lr
.globl bfle
bfle:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bhi label267
	mov r1, #0
	str r1, [r0, #0]
label267:
	bx lr
.globl bfge
bfge:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	blt label278
	mov r1, #0
	str r1, [r0, #0]
label278:
	bx lr
.globl bfgt
bfgt:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	ble label289
	mov r1, #0
	str r1, [r0, #0]
label289:
	bx lr
.globl normal_srem
normal_srem:
	movw r1, #51719
	movw r2, #12185
	movt r1, #15258
	movt r2, #17592
	smmul r2, r0, r2
	asr r3, r2, #28
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	add r1, r0, r1
	cmp r0, #0
	movlt r0, r1
	bx lr
