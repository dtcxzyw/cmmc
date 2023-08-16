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
	bne label3
	mov r0, #0
	str r0, [r1, #0]
label3:
	bx lr
.p2align 4
.globl beqi
beqi:
	cmp r0, #1
	bne label15
	mov r0, #0
	str r0, [r1, #0]
label15:
	bx lr
.p2align 4
.globl beq
beq:
	cmp r0, r1
	bne label28
	mov r0, #0
	str r0, [r2, #0]
label28:
	bx lr
.p2align 4
.globl bnez
bnez:
	cmp r0, #0
	beq label42
	mov r0, #0
	str r0, [r1, #0]
label42:
	bx lr
.p2align 4
.globl bnei
bnei:
	cmp r0, #1
	beq label53
	mov r0, #0
	str r0, [r1, #0]
label53:
	bx lr
.p2align 4
.globl bne
bne:
	cmp r0, r1
	beq label64
	mov r0, #0
	str r0, [r2, #0]
label64:
	bx lr
.p2align 4
.globl bltz
bltz:
	cmp r0, #0
	bge label76
	mov r0, #0
	str r0, [r1, #0]
label76:
	bx lr
.p2align 4
.globl blti1
blti1:
	cmp r0, #1
	bge label87
	mov r0, #0
	str r0, [r1, #0]
label87:
	bx lr
.p2align 4
.globl blti2
blti2:
	cmp r0, #10
	bge label98
	mov r0, #0
	str r0, [r1, #0]
label98:
	bx lr
.p2align 4
.globl blt
blt:
	cmp r0, r1
	bge label109
	mov r0, #0
	str r0, [r2, #0]
label109:
	bx lr
.p2align 4
.globl bgez
bgez:
	cmn r0, #1
	ble label121
	mov r0, #0
	str r0, [r1, #0]
label121:
	bx lr
.p2align 4
.globl bgei1
bgei1:
	cmp r0, #0
	ble label133
	mov r0, #0
	str r0, [r1, #0]
label133:
	bx lr
.p2align 4
.globl bgei2
bgei2:
	cmp r0, #9
	ble label144
	mov r0, #0
	str r0, [r1, #0]
label144:
	bx lr
.p2align 4
.globl bge
bge:
	cmp r0, r1
	blt label155
	mov r0, #0
	str r0, [r2, #0]
label155:
	bx lr
.p2align 4
.globl bgtz
bgtz:
	cmp r0, #0
	ble label167
	mov r0, #0
	str r0, [r1, #0]
label167:
	bx lr
.p2align 4
.globl bgti1
bgti1:
	cmn r0, #1
	ble label178
	mov r0, #0
	str r0, [r1, #0]
label178:
	bx lr
.p2align 4
.globl bgti2
bgti2:
	cmp r0, #10
	ble label190
	mov r0, #0
	str r0, [r1, #0]
label190:
	bx lr
.p2align 4
.globl bgt
bgt:
	cmp r0, r1
	ble label201
	mov r0, #0
	str r0, [r2, #0]
label201:
	bx lr
.p2align 4
.globl blez
blez:
	cmp r0, #1
	bge label213
	mov r0, #0
	str r0, [r1, #0]
label213:
	bx lr
.p2align 4
.globl blei1
blei1:
	cmp r0, #0
	bge label224
	mov r0, #0
	str r0, [r1, #0]
label224:
	bx lr
.p2align 4
.globl blei2
blei2:
	cmp r0, #11
	bge label235
	mov r0, #0
	str r0, [r1, #0]
label235:
	bx lr
.p2align 4
.globl ble
ble:
	cmp r0, r1
	bgt label246
	mov r0, #0
	str r0, [r2, #0]
label246:
	bx lr
.p2align 4
.globl bfeq
bfeq:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bne label258
	mov r1, #0
	str r1, [r0, #0]
label258:
	bx lr
.p2align 4
.globl bfne
bfne:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	beq label270
	mov r1, #0
	str r1, [r0, #0]
label270:
	bx lr
.p2align 4
.globl bflt
bflt:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bpl label282
	mov r1, #0
	str r1, [r0, #0]
label282:
	bx lr
.p2align 4
.globl bfle
bfle:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bhi label294
	mov r1, #0
	str r1, [r0, #0]
label294:
	bx lr
.p2align 4
.globl bfge
bfge:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	blt label306
	mov r1, #0
	str r1, [r0, #0]
label306:
	bx lr
.p2align 4
.globl bfgt
bfgt:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	ble label318
	mov r1, #0
	str r1, [r0, #0]
label318:
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
