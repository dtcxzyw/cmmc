.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl select_add_1
select_add_1:
	cmp r0, #0
	beq label10
	add r0, r1, r2
	b label3
label10:
	mov r0, r2
label3:
	bx lr
.globl select_add_2
select_add_2:
	cmp r0, #0
	beq label23
	mov r0, r1
	b label15
label23:
	add r0, r1, r2
label15:
	bx lr
.globl select_add_3
select_add_3:
	cmp r0, #0
	beq label35
	mov r0, r1
	b label28
label35:
	add r0, r1, #42
label28:
	bx lr
.globl select_and_1
select_and_1:
	cmp r0, #0
	beq label48
	and r0, r1, r2
	b label41
label48:
	mov r0, r2
label41:
	bx lr
.globl select_and_2
select_and_2:
	cmp r0, #0
	beq label61
	mov r0, r1
	b label53
label61:
	and r0, r1, r2
label53:
	bx lr
.globl select_and_3
select_and_3:
	cmp r0, #0
	beq label73
	mov r0, r1
	b label66
label73:
	and r0, r1, #42
label66:
	bx lr
.globl select_ashr_1
select_ashr_1:
	cmp r0, #0
	beq label86
	lsr r0, r1, r2
	b label79
label86:
	mov r0, r2
label79:
	bx lr
.globl select_ashr_2
select_ashr_2:
	cmp r0, #0
	beq label99
	mov r0, r1
	b label91
label99:
	lsr r0, r1, r2
label91:
	bx lr
.globl select_ashr_3
select_ashr_3:
	cmp r0, #0
	beq label111
	mov r0, r1
	b label104
label111:
	mov r0, #42
	lsr r0, r1, r0
label104:
	bx lr
.globl select_lshr_1
select_lshr_1:
	cmp r0, #0
	beq label125
	lsr r0, r1, r2
	b label118
label125:
	mov r0, r2
label118:
	bx lr
.globl select_lshr_2
select_lshr_2:
	cmp r0, #0
	beq label138
	mov r0, r1
	b label130
label138:
	lsr r0, r1, r2
label130:
	bx lr
.globl select_lshr_3
select_lshr_3:
	cmp r0, #0
	beq label150
	mov r0, r1
	b label143
label150:
	mov r0, #42
	lsr r0, r1, r0
label143:
	bx lr
.globl select_or
select_or:
	uxtb r2, r2
	and r2, r2, #1
	cmp r2, #0
	bne label166
	b label156
label166:
	orr r0, r0, r1
label156:
	bx lr
.globl select_or_1
select_or_1:
	and r2, r2, #1
	cmp r2, #0
	bne label179
	b label170
label179:
	orr r0, r0, r1
label170:
	bx lr
.globl select_or_1b
select_or_1b:
	and r2, r2, #1
	cmp r2, #1
	beq label192
	b label183
label192:
	orr r0, r0, r1
label183:
	bx lr
.globl select_or_2
select_or_2:
	uxtb r2, r2
	and r2, r2, #1
	cmp r2, #0
	bne label197
	orr r0, r0, r1
label197:
	bx lr
.globl select_or_2b
select_or_2b:
	uxtb r2, r2
	and r2, r2, #1
	cmp r2, #1
	beq label211
	orr r0, r0, r1
label211:
	bx lr
.globl select_or_3
select_or_3:
	and r2, r2, #1
	cmp r2, #0
	bne label227
	orr r0, r0, r1
label227:
	bx lr
.globl select_or_3b
select_or_3b:
	and r2, r2, #1
	cmp r2, #1
	beq label240
	orr r0, r0, r1
label240:
	bx lr
.globl select_or_b
select_or_b:
	uxtb r2, r2
	and r2, r2, #1
	cmp r2, #1
	beq label262
	b label252
label262:
	orr r0, r0, r1
label252:
	bx lr
.globl select_shl_1
select_shl_1:
	cmp r0, #0
	beq label276
	lsl r0, r1, r2
	b label269
label276:
	mov r0, r2
label269:
	bx lr
.globl select_shl_2
select_shl_2:
	cmp r0, #0
	beq label289
	mov r0, r1
	b label281
label289:
	lsl r0, r1, r2
label281:
	bx lr
.globl select_shl_3
select_shl_3:
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	rsb r0, r0, #0
	and r0, r1, r0
	bx lr
.globl select_sub_1
select_sub_1:
	cmp r0, #0
	beq label308
	sub r0, r1, r2
	b label301
label308:
	mov r0, r2
label301:
	bx lr
.globl select_sub_2
select_sub_2:
	cmp r0, #0
	beq label321
	mov r0, r1
	b label313
label321:
	sub r0, r1, r2
label313:
	bx lr
.globl select_sub_3
select_sub_3:
	cmp r0, #0
	beq label333
	mov r0, r1
	b label326
label333:
	sub r0, r1, #42
label326:
	bx lr
.globl select_udiv_1
select_udiv_1:
	cmp r0, #0
	beq label346
	udiv r0, r1, r2
	b label339
label346:
	mov r0, r2
label339:
	bx lr
.globl select_udiv_2
select_udiv_2:
	cmp r0, #0
	beq label359
	mov r0, r1
	b label351
label359:
	udiv r0, r1, r2
label351:
	bx lr
.globl select_udiv_3
select_udiv_3:
	cmp r0, #0
	beq label371
	mov r0, r1
	b label364
label371:
	mov r0, #42
	udiv r0, r1, r0
label364:
	bx lr
.globl select_xor_1
select_xor_1:
	uxtb r1, r1
	and r1, r1, #1
	cmp r1, #0
	bne label387
	uxth r0, r0
	b label378
label387:
	uxth r0, r0
	eor r0, r0, #43
label378:
	uxth r0, r0
	bx lr
.globl select_xor_1b
select_xor_1b:
	uxtb r1, r1
	and r1, r1, #1
	cmp r1, #1
	beq label404
	uxth r0, r0
	b label395
label404:
	uxth r0, r0
	eor r0, r0, #43
label395:
	uxth r0, r0
	bx lr
.globl select_xor_2
select_xor_2:
	uxtb r2, r2
	and r2, r2, #1
	cmp r2, #0
	bne label423
	b label413
label423:
	eor r0, r0, r1
label413:
	bx lr
.globl select_xor_2b
select_xor_2b:
	uxtb r2, r2
	and r2, r2, #1
	cmp r2, #1
	beq label437
	b label427
label437:
	eor r0, r0, r1
label427:
	bx lr
.globl select_xor_3
select_xor_3:
	uxtb r1, r1
	and r1, r1, #1
	cmp r1, #0
	bne label453
	uxth r0, r0
	eor r0, r0, #43
	b label444
label453:
	uxth r0, r0
label444:
	uxth r0, r0
	bx lr
.globl select_xor_3b
select_xor_3b:
	uxtb r1, r1
	and r1, r1, #1
	cmp r1, #1
	beq label470
	uxth r0, r0
	eor r0, r0, #43
	b label461
label470:
	uxth r0, r0
label461:
	uxth r0, r0
	bx lr
.globl select_xor_4
select_xor_4:
	uxtb r2, r2
	and r2, r2, #1
	cmp r2, #0
	bne label480
	eor r0, r0, r1
label480:
	bx lr
.globl select_xor_4b
select_xor_4b:
	uxtb r2, r2
	and r2, r2, #1
	cmp r2, #1
	beq label494
	eor r0, r0, r1
label494:
	bx lr
