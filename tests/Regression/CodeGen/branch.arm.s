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
	cmn r0, #1
	ble label106
	mov r0, #0
	str r0, [r1, #0]
label106:
	bx lr
.globl bgei1
bgei1:
	cmp r0, #0
	ble label116
	mov r0, #0
	str r0, [r1, #0]
label116:
	bx lr
.globl bgei2
bgei2:
	cmp r0, #9
	ble label126
	mov r0, #0
	str r0, [r1, #0]
label126:
	bx lr
.globl bge
bge:
	cmp r0, r1
	blt label136
	mov r0, #0
	str r0, [r2, #0]
label136:
	bx lr
.globl bgtz
bgtz:
	cmp r0, #0
	ble label147
	mov r0, #0
	str r0, [r1, #0]
label147:
	bx lr
.globl bgti1
bgti1:
	cmn r0, #1
	ble label157
	mov r0, #0
	str r0, [r1, #0]
label157:
	bx lr
.globl bgti2
bgti2:
	cmp r0, #10
	ble label167
	mov r0, #0
	str r0, [r1, #0]
label167:
	bx lr
.globl bgt
bgt:
	cmp r0, r1
	ble label177
	mov r0, #0
	str r0, [r2, #0]
label177:
	bx lr
.globl blez
blez:
	cmp r0, #1
	bge label188
	mov r0, #0
	str r0, [r1, #0]
label188:
	bx lr
.globl blei1
blei1:
	cmp r0, #0
	bge label198
	mov r0, #0
	str r0, [r1, #0]
label198:
	bx lr
.globl blei2
blei2:
	cmp r0, #11
	bge label208
	mov r0, #0
	str r0, [r1, #0]
label208:
	bx lr
.globl ble
ble:
	cmp r0, r1
	bgt label218
	mov r0, #0
	str r0, [r2, #0]
label218:
	bx lr
.globl bfeq
bfeq:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	beq label228
label229:
	bx lr
label228:
	mov r0, #0
	str r0, [r2, #0]
	b label229
.globl bfne
bfne:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bne label239
label240:
	bx lr
label239:
	mov r0, #0
	str r0, [r2, #0]
	b label240
.globl bflt
bflt:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bmi label250
label251:
	bx lr
label250:
	mov r0, #0
	str r0, [r2, #0]
	b label251
.globl bfle
bfle:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bls label261
label262:
	bx lr
label261:
	mov r0, #0
	str r0, [r2, #0]
	b label262
.globl bfge
bfge:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bge label272
label273:
	bx lr
label272:
	mov r0, #0
	str r0, [r2, #0]
	b label273
.globl bfgt
bfgt:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bgt label283
label284:
	bx lr
label283:
	mov r0, #0
	str r0, [r2, #0]
	b label284
