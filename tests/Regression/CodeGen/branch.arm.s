.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
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
.p2align 4
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
.p2align 4
.globl beq
beq:
	cmp r0, r1
	bne label25
	mov r0, #0
	str r0, [r2, #0]
label25:
	bx lr
.p2align 4
.globl bnez
bnez:
	cmp r0, #0
	beq label39
	mov r0, #0
	str r0, [r1, #0]
label39:
	bx lr
.p2align 4
.globl bnei
bnei:
	cmp r0, #1
	beq label50
	mov r0, #0
	str r0, [r1, #0]
label50:
	bx lr
.p2align 4
.globl bne
bne:
	cmp r0, r1
	beq label61
	mov r0, #0
	str r0, [r2, #0]
label61:
	bx lr
.p2align 4
.globl bltz
bltz:
	cmp r0, #0
	bge label73
	mov r0, #0
	str r0, [r1, #0]
label73:
	bx lr
.p2align 4
.globl blti1
blti1:
	cmp r0, #1
	bge label84
	mov r0, #0
	str r0, [r1, #0]
label84:
	bx lr
.p2align 4
.globl blti2
blti2:
	cmp r0, #10
	bge label95
	mov r0, #0
	str r0, [r1, #0]
label95:
	bx lr
.p2align 4
.globl blt
blt:
	cmp r0, r1
	bge label106
	mov r0, #0
	str r0, [r2, #0]
label106:
	bx lr
.p2align 4
.globl bgez
bgez:
	cmn r0, #1
	ble label118
	mov r0, #0
	str r0, [r1, #0]
label118:
	bx lr
.p2align 4
.globl bgei1
bgei1:
	cmp r0, #0
	ble label130
	mov r0, #0
	str r0, [r1, #0]
label130:
	bx lr
.p2align 4
.globl bgei2
bgei2:
	cmp r0, #9
	ble label141
	mov r0, #0
	str r0, [r1, #0]
label141:
	bx lr
.p2align 4
.globl bge
bge:
	cmp r0, r1
	blt label152
	mov r0, #0
	str r0, [r2, #0]
label152:
	bx lr
.p2align 4
.globl bgtz
bgtz:
	cmp r0, #0
	ble label164
	mov r0, #0
	str r0, [r1, #0]
label164:
	bx lr
.p2align 4
.globl bgti1
bgti1:
	cmn r0, #1
	ble label175
	mov r0, #0
	str r0, [r1, #0]
label175:
	bx lr
.p2align 4
.globl bgti2
bgti2:
	cmp r0, #10
	ble label187
	mov r0, #0
	str r0, [r1, #0]
label187:
	bx lr
.p2align 4
.globl bgt
bgt:
	cmp r0, r1
	ble label198
	mov r0, #0
	str r0, [r2, #0]
label198:
	bx lr
.p2align 4
.globl blez
blez:
	cmp r0, #1
	bge label210
	mov r0, #0
	str r0, [r1, #0]
label210:
	bx lr
.p2align 4
.globl blei1
blei1:
	cmp r0, #0
	bge label221
	mov r0, #0
	str r0, [r1, #0]
label221:
	bx lr
.p2align 4
.globl blei2
blei2:
	cmp r0, #11
	bge label232
	mov r0, #0
	str r0, [r1, #0]
label232:
	bx lr
.p2align 4
.globl ble
ble:
	cmp r0, r1
	bgt label243
	mov r0, #0
	str r0, [r2, #0]
label243:
	bx lr
.p2align 4
.globl bfeq
bfeq:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bne label255
	mov r1, #0
	str r1, [r0, #0]
label255:
	bx lr
.p2align 4
.globl bfne
bfne:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	beq label267
	mov r1, #0
	str r1, [r0, #0]
label267:
	bx lr
.p2align 4
.globl bflt
bflt:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bpl label279
	mov r1, #0
	str r1, [r0, #0]
label279:
	bx lr
.p2align 4
.globl bfle
bfle:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bhi label291
	mov r1, #0
	str r1, [r0, #0]
label291:
	bx lr
.p2align 4
.globl bfge
bfge:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	blt label303
	mov r1, #0
	str r1, [r0, #0]
label303:
	bx lr
.p2align 4
.globl bfgt
bfgt:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	ble label315
	mov r1, #0
	str r1, [r0, #0]
label315:
	bx lr
.p2align 4
.globl normal_srem
normal_srem:
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
