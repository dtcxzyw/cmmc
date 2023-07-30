.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl beqz
beqz:
.p2align 4
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
.p2align 4
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
.p2align 4
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
.p2align 4
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
.p2align 4
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
.p2align 4
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
.p2align 4
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
.p2align 4
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
.p2align 4
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
.p2align 4
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
.p2align 4
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
.p2align 4
	cmp r0, #0
	bgt label121
label122:
	bx lr
label121:
	mov r0, #0
	str r0, [r1, #0]
	b label122
.globl bgei2
bgei2:
.p2align 4
	cmp r0, #9
	bgt label131
label132:
	bx lr
label131:
	mov r0, #0
	str r0, [r1, #0]
	b label132
.globl bge
bge:
.p2align 4
	cmp r0, r1
	bge label141
label142:
	bx lr
label141:
	mov r0, #0
	str r0, [r2, #0]
	b label142
.globl bgtz
bgtz:
.p2align 4
	cmp r0, #0
	bgt label152
label153:
	bx lr
label152:
	mov r0, #0
	str r0, [r1, #0]
	b label153
.globl bgti1
bgti1:
.p2align 4
	cmn r0, #1
	bgt label162
label163:
	bx lr
label162:
	mov r0, #0
	str r0, [r1, #0]
	b label163
.globl bgti2
bgti2:
.p2align 4
	cmp r0, #10
	bgt label173
label174:
	bx lr
label173:
	mov r0, #0
	str r0, [r1, #0]
	b label174
.globl bgt
bgt:
.p2align 4
	cmp r0, r1
	bgt label183
label184:
	bx lr
label183:
	mov r0, #0
	str r0, [r2, #0]
	b label184
.globl blez
blez:
.p2align 4
	cmp r0, #1
	blt label194
label195:
	bx lr
label194:
	mov r0, #0
	str r0, [r1, #0]
	b label195
.globl blei1
blei1:
.p2align 4
	cmp r0, #0
	blt label204
label205:
	bx lr
label204:
	mov r0, #0
	str r0, [r1, #0]
	b label205
.globl blei2
blei2:
.p2align 4
	cmp r0, #11
	blt label214
label215:
	bx lr
label214:
	mov r0, #0
	str r0, [r1, #0]
	b label215
.globl ble
ble:
.p2align 4
	cmp r0, r1
	ble label224
label225:
	bx lr
label224:
	mov r0, #0
	str r0, [r2, #0]
	b label225
.globl bfeq
bfeq:
.p2align 4
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	beq label235
label236:
	bx lr
label235:
	mov r1, #0
	str r1, [r0, #0]
	b label236
.globl bfne
bfne:
.p2align 4
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bne label246
label247:
	bx lr
label246:
	mov r1, #0
	str r1, [r0, #0]
	b label247
.globl bflt
bflt:
.p2align 4
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bmi label257
label258:
	bx lr
label257:
	mov r1, #0
	str r1, [r0, #0]
	b label258
.globl bfle
bfle:
.p2align 4
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bls label268
label269:
	bx lr
label268:
	mov r1, #0
	str r1, [r0, #0]
	b label269
.globl bfge
bfge:
.p2align 4
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bge label279
label280:
	bx lr
label279:
	mov r1, #0
	str r1, [r0, #0]
	b label280
.globl bfgt
bfgt:
.p2align 4
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bgt label290
label291:
	bx lr
label290:
	mov r1, #0
	str r1, [r0, #0]
	b label291
.globl normal_srem
normal_srem:
.p2align 4
	movw r1, #12185
	movt r1, #17592
	smmul r1, r0, r1
	asr r2, r1, #28
	add r2, r2, r1, lsr #31
	movw r1, #51719
	movt r1, #15258
	mls r0, r2, r1, r0
	add r1, r0, r1
	cmp r0, #0
	movlt r0, r1
	bx lr
