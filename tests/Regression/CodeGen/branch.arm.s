.arch armv7ve
.data
.section .rodata
.bss
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
	beq label233
label234:
	bx lr
label233:
	mov r0, #0
	str r0, [r2, #0]
	b label234
.globl bfne
bfne:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bne label244
label245:
	bx lr
label244:
	mov r0, #0
	str r0, [r2, #0]
	b label245
.globl bflt
bflt:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bmi label255
label256:
	bx lr
label255:
	mov r0, #0
	str r0, [r2, #0]
	b label256
.globl bfle
bfle:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bls label266
label267:
	bx lr
label266:
	mov r0, #0
	str r0, [r2, #0]
	b label267
.globl bfge
bfge:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bge label277
label278:
	bx lr
label277:
	mov r0, #0
	str r0, [r2, #0]
	b label278
.globl bfgt
bfgt:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bgt label288
label289:
	bx lr
label288:
	mov r0, #0
	str r0, [r2, #0]
	b label289
