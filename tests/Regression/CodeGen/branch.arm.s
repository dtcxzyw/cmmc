.arch armv7-a
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
	beq label44
	mov r0, #0
	str r0, [r1, #0]
label44:
	bx lr
.globl bne
bne:
	cmp r0, r1
	beq label54
	mov r0, #0
	str r0, [r2, #0]
label54:
	bx lr
.globl bltz
bltz:
	cmp r0, #0
	bge label65
	mov r0, #0
	str r0, [r1, #0]
label65:
	bx lr
.globl blti1
blti1:
	cmp r0, #1
	bge label75
	mov r0, #0
	str r0, [r1, #0]
label75:
	bx lr
.globl blti2
blti2:
	cmp r0, #10
	bge label85
	mov r0, #0
	str r0, [r1, #0]
label85:
	bx lr
.globl blt
blt:
	cmp r0, r1
	bge label95
	mov r0, #0
	str r0, [r2, #0]
label95:
	bx lr
.globl bgez
bgez:
	mvn r2, #0
	cmp r0, r2
	ble label106
	mov r0, #0
	str r0, [r1, #0]
label106:
	bx lr
.globl bgei1
bgei1:
	cmp r0, #0
	ble label117
	mov r0, #0
	str r0, [r1, #0]
label117:
	bx lr
.globl bgei2
bgei2:
	cmp r0, #9
	ble label127
	mov r0, #0
	str r0, [r1, #0]
label127:
	bx lr
.globl bge
bge:
	cmp r0, r1
	blt label137
	mov r0, #0
	str r0, [r2, #0]
label137:
	bx lr
.globl bgtz
bgtz:
	cmp r0, #0
	ble label148
	mov r0, #0
	str r0, [r1, #0]
label148:
	bx lr
.globl bgti1
bgti1:
	mvn r2, #0
	cmp r0, r2
	ble label158
	mov r0, #0
	str r0, [r1, #0]
label158:
	bx lr
.globl bgti2
bgti2:
	cmp r0, #10
	ble label169
	mov r0, #0
	str r0, [r1, #0]
label169:
	bx lr
.globl bgt
bgt:
	cmp r0, r1
	ble label179
	mov r0, #0
	str r0, [r2, #0]
label179:
	bx lr
.globl blez
blez:
	cmp r0, #1
	bge label190
	mov r0, #0
	str r0, [r1, #0]
label190:
	bx lr
.globl blei1
blei1:
	cmp r0, #0
	bge label200
	mov r0, #0
	str r0, [r1, #0]
label200:
	bx lr
.globl blei2
blei2:
	cmp r0, #11
	bge label210
	mov r0, #0
	str r0, [r1, #0]
label210:
	bx lr
.globl ble
ble:
	cmp r0, r1
	bgt label220
	mov r0, #0
	str r0, [r2, #0]
label220:
	bx lr
.globl bfeq
bfeq:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	beq label230
label231:
	bx lr
label230:
	mov r0, #0
	str r0, [r2, #0]
	b label231
.globl bfne
bfne:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bne label241
label242:
	bx lr
label241:
	mov r0, #0
	str r0, [r2, #0]
	b label242
.globl bflt
bflt:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bmi label252
label253:
	bx lr
label252:
	mov r0, #0
	str r0, [r2, #0]
	b label253
.globl bfle
bfle:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bls label263
label264:
	bx lr
label263:
	mov r0, #0
	str r0, [r2, #0]
	b label264
.globl bfge
bfge:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bge label274
label275:
	bx lr
label274:
	mov r0, #0
	str r0, [r2, #0]
	b label275
.globl bfgt
bfgt:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bgt label285
label286:
	bx lr
label285:
	mov r0, #0
	str r0, [r2, #0]
	b label286
