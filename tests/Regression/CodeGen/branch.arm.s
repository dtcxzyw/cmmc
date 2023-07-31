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
	bne label3
	mov r0, #0
	str r0, [r1, #0]
label3:
	bx lr
.globl beqi
beqi:
.p2align 4
	cmp r0, #1
	bne label15
	mov r0, #0
	str r0, [r1, #0]
label15:
	bx lr
.globl beq
beq:
.p2align 4
	cmp r0, r1
	bne label28
	mov r0, #0
	str r0, [r2, #0]
label28:
	bx lr
.globl bnez
bnez:
.p2align 4
	cmp r0, #0
	beq label42
	mov r0, #0
	str r0, [r1, #0]
label42:
	bx lr
.globl bnei
bnei:
.p2align 4
	cmp r0, #1
	beq label53
	mov r0, #0
	str r0, [r1, #0]
label53:
	bx lr
.globl bne
bne:
.p2align 4
	cmp r0, r1
	beq label64
	mov r0, #0
	str r0, [r2, #0]
label64:
	bx lr
.globl bltz
bltz:
.p2align 4
	cmp r0, #0
	bge label76
	mov r0, #0
	str r0, [r1, #0]
label76:
	bx lr
.globl blti1
blti1:
.p2align 4
	cmp r0, #1
	bge label87
	mov r0, #0
	str r0, [r1, #0]
label87:
	bx lr
.globl blti2
blti2:
.p2align 4
	cmp r0, #10
	bge label98
	mov r0, #0
	str r0, [r1, #0]
label98:
	bx lr
.globl blt
blt:
.p2align 4
	cmp r0, r1
	bge label109
	mov r0, #0
	str r0, [r2, #0]
label109:
	bx lr
.globl bgez
bgez:
.p2align 4
	cmn r0, #1
	ble label121
	mov r0, #0
	str r0, [r1, #0]
label121:
	bx lr
.globl bgei1
bgei1:
.p2align 4
	cmp r0, #0
	ble label133
	mov r0, #0
	str r0, [r1, #0]
label133:
	bx lr
.globl bgei2
bgei2:
.p2align 4
	cmp r0, #9
	ble label144
	mov r0, #0
	str r0, [r1, #0]
label144:
	bx lr
.globl bge
bge:
.p2align 4
	cmp r0, r1
	blt label155
	mov r0, #0
	str r0, [r2, #0]
label155:
	bx lr
.globl bgtz
bgtz:
.p2align 4
	cmp r0, #0
	ble label167
	mov r0, #0
	str r0, [r1, #0]
label167:
	bx lr
.globl bgti1
bgti1:
.p2align 4
	cmn r0, #1
	ble label178
	mov r0, #0
	str r0, [r1, #0]
label178:
	bx lr
.globl bgti2
bgti2:
.p2align 4
	cmp r0, #10
	ble label190
	mov r0, #0
	str r0, [r1, #0]
label190:
	bx lr
.globl bgt
bgt:
.p2align 4
	cmp r0, r1
	ble label201
	mov r0, #0
	str r0, [r2, #0]
label201:
	bx lr
.globl blez
blez:
.p2align 4
	cmp r0, #1
	bge label213
	mov r0, #0
	str r0, [r1, #0]
label213:
	bx lr
.globl blei1
blei1:
.p2align 4
	cmp r0, #0
	bge label224
	mov r0, #0
	str r0, [r1, #0]
label224:
	bx lr
.globl blei2
blei2:
.p2align 4
	cmp r0, #11
	bge label235
	mov r0, #0
	str r0, [r1, #0]
label235:
	bx lr
.globl ble
ble:
.p2align 4
	cmp r0, r1
	bgt label246
	mov r0, #0
	str r0, [r2, #0]
label246:
	bx lr
.globl bfeq
bfeq:
.p2align 4
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bne label258
	mov r1, #0
	str r1, [r0, #0]
label258:
	bx lr
.globl bfne
bfne:
.p2align 4
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	beq label270
	mov r1, #0
	str r1, [r0, #0]
label270:
	bx lr
.globl bflt
bflt:
.p2align 4
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bpl label282
	mov r1, #0
	str r1, [r0, #0]
label282:
	bx lr
.globl bfle
bfle:
.p2align 4
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bhi label294
	mov r1, #0
	str r1, [r0, #0]
label294:
	bx lr
.globl bfge
bfge:
.p2align 4
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	blt label306
	mov r1, #0
	str r1, [r0, #0]
label306:
	bx lr
.globl bfgt
bfgt:
.p2align 4
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	ble label318
	mov r1, #0
	str r1, [r0, #0]
label318:
	bx lr
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
