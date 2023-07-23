.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl beqz
beqz:
	cmp r0, #0
	beq label2
label3:
	bx lr
label2:
	mov r0, #0
	str r0, [r1, #0]
	b label3
.globl beqi
beqi:
	cmp r0, #1
	beq label13
label14:
	bx lr
label13:
	mov r0, #0
	str r0, [r1, #0]
	b label14
.globl beq
beq:
	cmp r0, r1
	beq label25
label26:
	bx lr
label25:
	mov r0, #0
	str r0, [r2, #0]
	b label26
.globl bnez
bnez:
	cmp r0, #0
	bne label38
label39:
	bx lr
label38:
	mov r0, #0
	str r0, [r1, #0]
	b label39
.globl bnei
bnei:
	cmp r0, #1
	bne label48
label49:
	bx lr
label48:
	mov r0, #0
	str r0, [r1, #0]
	b label49
.globl bne
bne:
	cmp r0, r1
	bne label58
label59:
	bx lr
label58:
	mov r0, #0
	str r0, [r2, #0]
	b label59
.globl bltz
bltz:
	cmp r0, #0
	blt label69
label70:
	bx lr
label69:
	mov r0, #0
	str r0, [r1, #0]
	b label70
.globl blti1
blti1:
	cmp r0, #1
	blt label79
label80:
	bx lr
label79:
	mov r0, #0
	str r0, [r1, #0]
	b label80
.globl blti2
blti2:
	cmp r0, #10
	blt label89
label90:
	bx lr
label89:
	mov r0, #0
	str r0, [r1, #0]
	b label90
.globl blt
blt:
	cmp r0, r1
	blt label99
label100:
	bx lr
label99:
	mov r0, #0
	str r0, [r2, #0]
	b label100
.globl bgez
bgez:
	cmn r0, #1
	bgt label110
label111:
	bx lr
label110:
	mov r0, #0
	str r0, [r1, #0]
	b label111
.globl bgei1
bgei1:
	cmp r0, #0
	bgt label120
label121:
	bx lr
label120:
	mov r0, #0
	str r0, [r1, #0]
	b label121
.globl bgei2
bgei2:
	cmp r0, #9
	bgt label130
label131:
	bx lr
label130:
	mov r0, #0
	str r0, [r1, #0]
	b label131
.globl bge
bge:
	cmp r0, r1
	bge label140
label141:
	bx lr
label140:
	mov r0, #0
	str r0, [r2, #0]
	b label141
.globl bgtz
bgtz:
	cmp r0, #0
	bgt label151
label152:
	bx lr
label151:
	mov r0, #0
	str r0, [r1, #0]
	b label152
.globl bgti1
bgti1:
	cmn r0, #1
	bgt label161
label162:
	bx lr
label161:
	mov r0, #0
	str r0, [r1, #0]
	b label162
.globl bgti2
bgti2:
	cmp r0, #10
	bgt label171
label172:
	bx lr
label171:
	mov r0, #0
	str r0, [r1, #0]
	b label172
.globl bgt
bgt:
	cmp r0, r1
	bgt label181
label182:
	bx lr
label181:
	mov r0, #0
	str r0, [r2, #0]
	b label182
.globl blez
blez:
	cmp r0, #1
	blt label192
label193:
	bx lr
label192:
	mov r0, #0
	str r0, [r1, #0]
	b label193
.globl blei1
blei1:
	cmp r0, #0
	blt label202
label203:
	bx lr
label202:
	mov r0, #0
	str r0, [r1, #0]
	b label203
.globl blei2
blei2:
	cmp r0, #11
	blt label212
label213:
	bx lr
label212:
	mov r0, #0
	str r0, [r1, #0]
	b label213
.globl ble
ble:
	cmp r0, r1
	ble label222
label223:
	bx lr
label222:
	mov r0, #0
	str r0, [r2, #0]
	b label223
.globl bfeq
bfeq:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	beq label233
label234:
	bx lr
label233:
	mov r1, #0
	str r1, [r0, #0]
	b label234
.globl bfne
bfne:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bne label244
label245:
	bx lr
label244:
	mov r1, #0
	str r1, [r0, #0]
	b label245
.globl bflt
bflt:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bmi label255
label256:
	bx lr
label255:
	mov r1, #0
	str r1, [r0, #0]
	b label256
.globl bfle
bfle:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bls label266
label267:
	bx lr
label266:
	mov r1, #0
	str r1, [r0, #0]
	b label267
.globl bfge
bfge:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bge label277
label278:
	bx lr
label277:
	mov r1, #0
	str r1, [r0, #0]
	b label278
.globl bfgt
bfgt:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bgt label288
label289:
	bx lr
label288:
	mov r1, #0
	str r1, [r0, #0]
	b label289
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
