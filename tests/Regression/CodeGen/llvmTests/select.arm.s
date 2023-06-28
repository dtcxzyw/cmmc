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
	beq label22
	mov r0, r1
	b label14
label22:
	add r0, r1, r2
label14:
	bx lr
.globl select_add_3
select_add_3:
	cmp r0, #0
	beq label33
	mov r0, r1
	b label26
label33:
	add r0, r1, #42
label26:
	bx lr
.globl select_and_1
select_and_1:
	cmp r0, #0
	beq label45
	and r0, r1, r2
	b label38
label45:
	mov r0, r2
label38:
	bx lr
.globl select_and_2
select_and_2:
	cmp r0, #0
	beq label57
	mov r0, r1
	b label49
label57:
	and r0, r1, r2
label49:
	bx lr
.globl select_and_3
select_and_3:
	cmp r0, #0
	beq label68
	mov r0, r1
	b label61
label68:
	and r0, r1, #42
label61:
	bx lr
.globl select_ashr_1
select_ashr_1:
	cmp r0, #0
	beq label80
	lsr r0, r1, r2
	b label73
label80:
	mov r0, r2
label73:
	bx lr
.globl select_ashr_2
select_ashr_2:
	cmp r0, #0
	beq label92
	mov r0, r1
	b label84
label92:
	lsr r0, r1, r2
label84:
	bx lr
.globl select_ashr_3
select_ashr_3:
	cmp r0, #0
	beq label103
	mov r0, r1
	b label96
label103:
	mov r0, #42
	lsr r0, r1, r0
label96:
	bx lr
.globl select_lshr_1
select_lshr_1:
	cmp r0, #0
	beq label116
	lsr r0, r1, r2
	b label109
label116:
	mov r0, r2
label109:
	bx lr
.globl select_lshr_2
select_lshr_2:
	cmp r0, #0
	beq label128
	mov r0, r1
	b label120
label128:
	lsr r0, r1, r2
label120:
	bx lr
.globl select_lshr_3
select_lshr_3:
	cmp r0, #0
	beq label139
	mov r0, r1
	b label132
label139:
	mov r0, #42
	lsr r0, r1, r0
label132:
	bx lr
.globl select_or
select_or:
	uxtb r2, r2
	and r2, r2, #1
	cmp r2, #0
	bne label154
	b label144
label154:
	orr r0, r0, r1
label144:
	bx lr
.globl select_or_1
select_or_1:
	and r2, r2, #1
	cmp r2, #0
	bne label167
	b label158
label167:
	orr r0, r0, r1
label158:
	bx lr
.globl select_or_1b
select_or_1b:
	and r2, r2, #1
	cmp r2, #1
	beq label180
	b label171
label180:
	orr r0, r0, r1
label171:
	bx lr
.globl select_or_2
select_or_2:
	uxtb r2, r2
	and r2, r2, #1
	cmp r2, #0
	bne label185
	orr r0, r0, r1
label185:
	bx lr
.globl select_or_2b
select_or_2b:
	uxtb r2, r2
	and r2, r2, #1
	cmp r2, #1
	beq label199
	orr r0, r0, r1
label199:
	bx lr
.globl select_or_3
select_or_3:
	and r2, r2, #1
	cmp r2, #0
	bne label213
	orr r0, r0, r1
label213:
	bx lr
.globl select_or_3b
select_or_3b:
	and r2, r2, #1
	cmp r2, #1
	beq label226
	orr r0, r0, r1
label226:
	bx lr
.globl select_or_b
select_or_b:
	uxtb r2, r2
	and r2, r2, #1
	cmp r2, #1
	beq label248
	b label238
label248:
	orr r0, r0, r1
label238:
	bx lr
.globl select_shl_1
select_shl_1:
	cmp r0, #0
	beq label260
	lsl r0, r1, r2
	b label253
label260:
	mov r0, r2
label253:
	bx lr
.globl select_shl_2
select_shl_2:
	cmp r0, #0
	beq label272
	mov r0, r1
	b label264
label272:
	lsl r0, r1, r2
label264:
	bx lr
.globl select_shl_3
select_shl_3:
	cmp r0, #0
	mov r0, #0
	movne r0, r1
	bx lr
.globl select_sub_1
select_sub_1:
	cmp r0, #0
	beq label290
	sub r0, r1, r2
	b label283
label290:
	mov r0, r2
label283:
	bx lr
.globl select_sub_2
select_sub_2:
	cmp r0, #0
	beq label302
	mov r0, r1
	b label294
label302:
	sub r0, r1, r2
label294:
	bx lr
.globl select_sub_3
select_sub_3:
	cmp r0, #0
	beq label313
	mov r0, r1
	b label306
label313:
	sub r0, r1, #42
label306:
	bx lr
.globl select_udiv_1
select_udiv_1:
	cmp r0, #0
	beq label325
	udiv r0, r1, r2
	b label318
label325:
	mov r0, r2
label318:
	bx lr
.globl select_udiv_2
select_udiv_2:
	cmp r0, #0
	beq label337
	mov r0, r1
	b label329
label337:
	udiv r0, r1, r2
label329:
	bx lr
.globl select_udiv_3
select_udiv_3:
	cmp r0, #0
	beq label348
	mov r0, r1
	b label341
label348:
	mov r0, #42
	udiv r0, r1, r0
label341:
	bx lr
.globl select_xor_1
select_xor_1:
	uxtb r1, r1
	and r1, r1, #1
	cmp r1, #0
	bne label363
	uxth r0, r0
	b label354
label363:
	uxth r0, r0
	eor r0, r0, #43
label354:
	uxth r0, r0
	bx lr
.globl select_xor_1b
select_xor_1b:
	uxtb r1, r1
	and r1, r1, #1
	cmp r1, #1
	beq label380
	uxth r0, r0
	b label371
label380:
	uxth r0, r0
	eor r0, r0, #43
label371:
	uxth r0, r0
	bx lr
.globl select_xor_2
select_xor_2:
	uxtb r2, r2
	and r2, r2, #1
	cmp r2, #0
	bne label397
	b label387
label397:
	eor r0, r0, r1
label387:
	bx lr
.globl select_xor_2b
select_xor_2b:
	uxtb r2, r2
	and r2, r2, #1
	cmp r2, #1
	beq label411
	b label401
label411:
	eor r0, r0, r1
label401:
	bx lr
.globl select_xor_3
select_xor_3:
	uxtb r1, r1
	and r1, r1, #1
	cmp r1, #0
	bne label425
	uxth r0, r0
	eor r0, r0, #43
	b label416
label425:
	uxth r0, r0
label416:
	uxth r0, r0
	bx lr
.globl select_xor_3b
select_xor_3b:
	uxtb r1, r1
	and r1, r1, #1
	cmp r1, #1
	beq label442
	uxth r0, r0
	eor r0, r0, #43
	b label433
label442:
	uxth r0, r0
label433:
	uxth r0, r0
	bx lr
.globl select_xor_4
select_xor_4:
	uxtb r2, r2
	and r2, r2, #1
	cmp r2, #0
	bne label450
	eor r0, r0, r1
label450:
	bx lr
.globl select_xor_4b
select_xor_4b:
	uxtb r2, r2
	and r2, r2, #1
	cmp r2, #1
	beq label464
	eor r0, r0, r1
label464:
	bx lr
