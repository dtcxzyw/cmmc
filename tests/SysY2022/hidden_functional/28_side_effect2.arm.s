.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, lr }
	mov r0, #1
	sub sp, sp, #80
	mov r4, #0
	mov r1, sp
	str r4, [sp, #0]
	mov r2, r4
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #12]
	str r4, [sp, #16]
	str r4, [sp, #20]
	str r4, [sp, #24]
	str r4, [sp, #28]
	str r4, [sp, #32]
	str r4, [sp, #36]
	str r4, [sp, #40]
	str r4, [sp, #44]
	str r4, [sp, #48]
	str r4, [sp, #52]
	str r4, [sp, #56]
	str r4, [sp, #60]
	str r4, [sp, #64]
	str r4, [sp, #68]
	str r4, [sp, #72]
	str r4, [sp, #76]
	mov r3, r4
	b label2
.p2align 4
label205:
	str r0, [sp, #0]
	movs r6, r0
	bne label7
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	bge label929
.p2align 4
label2:
	add r5, r2, #1
	cmp r3, #1
	bge label205
	movs r6, r4
	bne label7
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	blt label2
label929:
	mov r3, r4
	b label69
.p2align 4
label440:
	str r4, [sp, #0]
	movs r6, r4
	beq label925
.p2align 4
label445:
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	bge label915
.p2align 4
label69:
	add r5, r2, #2
	cmp r3, #1
	bge label440
	movs r6, r0
	bne label445
	add r5, r2, #4
	cmp r3, #2
	blt label450
	str r4, [sp, #4]
	ldr r6, [sp, #0]
	cmp r6, #0
	bne label456
label932:
	add r5, r2, #6
	cmp r3, #3
	blt label461
	b label917
.p2align 4
label7:
	add r5, r2, #2
	cmp r3, #2
	blt label215
	str r0, [sp, #4]
	ldr r6, [sp, #0]
	cmp r6, #0
	bne label10
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	blt label2
	b label929
.p2align 4
label215:
	movs r6, r4
	beq label218
.p2align 4
label10:
	add r5, r2, #3
	cmp r3, #3
	bge label223
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	blt label2
	b label929
.p2align 4
label450:
	movs r6, r0
	bne label456
	add r5, r2, #6
	cmp r3, #3
	bge label917
label461:
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	blt label69
	b label915
.p2align 4
label925:
	add r5, r2, #4
	cmp r3, #2
	blt label450
	str r4, [sp, #4]
	ldr r6, [sp, #0]
	cmp r6, #0
	beq label932
.p2align 4
label456:
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	blt label69
label915:
	mov r3, r0
label136:
	cmp r3, #20
	bge label146
	sub r5, r3, #1
	add r2, r2, #1
	cmp r3, r5
	ble label146
	add r6, r1, r5, lsl #2
	cmp r5, #0
	str r0, [r6, #0]
	bne label686
	ldr r5, [sp, #0]
	b label143
label223:
	str r0, [sp, #8]
	ldr r6, [sp, #4]
	cmp r6, #0
	beq label911
	add r5, r2, #4
	cmp r3, #4
	blt label911
	str r0, [sp, #12]
	ldr r6, [sp, #8]
	cmp r6, #0
	bne label14
label911:
	mov r2, r5
label67:
	add r3, r3, #1
	cmp r3, #20
	blt label2
	b label929
label917:
	str r4, [sp, #8]
	ldr r6, [sp, #4]
	cmp r6, #0
	bne label468
	add r5, r2, #8
	cmp r3, #4
	bge label81
label468:
	mov r2, r5
label134:
	add r3, r3, #1
	cmp r3, #20
	blt label69
	b label915
label146:
	ldr r3, [sp, #0]
	add r1, r2, #3
	cmp r3, #0
	bne label177
label700:
	ldr r5, [sp, #8]
	add r2, r1, #3
	add r1, r1, #6
	cmp r5, #0
	moveq r1, r2
label148:
	ldr r2, [sp, #16]
	add r5, r1, #3
	cmp r2, #0
	bne label172
	mov r1, r5
label150:
	ldr r6, [sp, #36]
	add r5, r1, #3
	cmp r6, #0
	bne label157
	mov r1, r5
label152:
	ldr r6, [sp, #44]
	add r5, r1, #3
	cmp r6, #0
	beq label722
	ldr r6, [sp, #48]
	add r5, r1, #6
	cmp r6, #0
	bne label155
label722:
	mov r1, r5
label158:
	add r5, r1, #3
	cmp r3, #0
	bne label166
	mov r1, r5
label160:
	ldr r3, [sp, #20]
	add r2, r1, #3
	cmp r3, #0
	bne label760
	ldr r3, [sp, #24]
	add r2, r1, #6
	cmp r3, #0
	beq label766
	ldr r2, [sp, #28]
	add r1, r1, #9
	cmp r2, #0
	beq label169
	mov r0, r1
	mov r2, #0
	ldr r1, [sp, #32]
	cmp r1, #0
	add r1, r0, #3
	movwne r2, #1
	mov r0, r2
	b label169
label81:
	str r4, [sp, #12]
	ldr r6, [sp, #8]
	cmp r6, #0
	bne label468
	add r5, r2, #10
	cmp r3, #5
	blt label468
	str r4, [sp, #16]
	ldr r6, [sp, #12]
	cmp r6, #0
	bne label468
	add r5, r2, #12
	cmp r3, #6
	blt label468
	str r4, [sp, #20]
	ldr r6, [sp, #16]
	cmp r6, #0
	bne label468
	add r5, r2, #14
	cmp r3, #7
	blt label468
	str r4, [sp, #24]
	ldr r6, [sp, #20]
	cmp r6, #0
	bne label468
	add r5, r2, #16
	cmp r3, #8
	blt label468
	str r4, [sp, #28]
	ldr r6, [sp, #24]
	cmp r6, #0
	bne label468
	add r5, r2, #18
	cmp r3, #9
	blt label468
	str r4, [sp, #32]
	ldr r6, [sp, #28]
	cmp r6, #0
	bne label468
	add r6, r2, #20
	cmp r3, #10
	bge label544
	mov r5, r0
	b label94
label172:
	ldr r6, [sp, #20]
	add r5, r1, #6
	cmp r6, #0
	bne label175
	mov r1, r5
label173:
	add r1, r1, #3
	b label150
label760:
	mov r1, r2
label169:
	add r0, r1, r0
	bl putint
	add sp, sp, #80
	mov r0, r4
	pop { r4, r5, r6, pc }
label686:
	ldr r5, [r6, #-4]
label143:
	cmp r5, #0
	beq label146
	add r3, r3, #1
	b label136
label157:
	ldr r5, [sp, #40]
	add r1, r1, #6
	cmp r5, #0
	beq label158
	b label152
label177:
	ldr r5, [sp, #4]
	add r1, r2, #6
	cmp r5, #0
	bne label148
	b label700
label166:
	ldr r5, [sp, #8]
	add r3, r1, #6
	cmp r5, #0
	beq label784
	ldr r5, [sp, #12]
	add r3, r1, #9
	cmp r5, #0
	bne label784
	add r1, r1, #12
	cmp r2, #0
	beq label169
	b label160
label766:
	mov r0, r2
	ldr r1, [sp, #32]
	mov r2, #0
	cmp r1, #0
	add r1, r0, #3
	movwne r2, #1
	mov r0, r2
	b label169
label155:
	ldr r6, [sp, #52]
	add r5, r1, #9
	cmp r6, #0
	beq label722
	ldr r5, [sp, #56]
	add r6, r1, #12
	cmp r5, #0
	add r5, r1, #15
	mov r1, r6
	movne r1, r5
	b label158
label14:
	add r5, r2, #5
	cmp r3, #5
	blt label911
	str r0, [sp, #16]
	ldr r6, [sp, #12]
	cmp r6, #0
	bne label16
	b label911
label218:
	mov r2, r5
	add r3, r3, #1
	cmp r3, #20
	blt label2
	b label929
label784:
	mov r1, r3
	b label160
label175:
	ldr r6, [sp, #24]
	add r5, r1, #9
	cmp r6, #0
	beq label176
	add r1, r5, #3
	b label150
label176:
	ldr r5, [sp, #28]
	add r1, r1, #12
	cmp r5, #0
	bne label150
	b label173
label16:
	add r5, r2, #6
	cmp r3, #6
	blt label911
	str r0, [sp, #20]
	ldr r6, [sp, #16]
	cmp r6, #0
	beq label911
	add r5, r2, #7
	cmp r3, #7
	blt label911
	str r0, [sp, #24]
	ldr r6, [sp, #20]
	cmp r6, #0
	beq label911
	add r5, r2, #8
	cmp r3, #8
	blt label911
	str r0, [sp, #28]
	ldr r6, [sp, #24]
	cmp r6, #0
	beq label911
	add r5, r2, #9
	cmp r3, #9
	blt label911
	str r0, [sp, #32]
	ldr r6, [sp, #28]
	cmp r6, #0
	bne label24
	b label911
label544:
	str r4, [sp, #36]
	ldr r5, [sp, #32]
label94:
	cmp r5, #0
	bne label552
	add r6, r2, #22
	cmp r3, #11
	blt label557
	str r4, [sp, #40]
	ldr r5, [sp, #36]
	b label98
label24:
	add r6, r2, #10
	cmp r3, #10
	bge label307
	mov r5, r4
	b label25
label307:
	str r0, [sp, #36]
	ldr r5, [sp, #32]
label25:
	cmp r5, #0
	beq label311
	add r6, r2, #11
	cmp r3, #11
	blt label317
	str r0, [sp, #40]
	ldr r5, [sp, #36]
label28:
	cmp r5, #0
	bne label30
	b label311
label614:
	mov r5, r0
label117:
	cmp r5, #0
	bne label552
	add r6, r2, #34
	cmp r3, #17
	blt label626
	str r4, [sp, #64]
	ldr r5, [sp, #60]
label120:
	cmp r5, #0
	beq label122
label552:
	mov r2, r6
	b label134
label30:
	add r6, r2, #12
	cmp r3, #12
	bge label325
	mov r5, r4
label32:
	cmp r5, #0
	beq label311
	add r6, r2, #13
	cmp r3, #13
	blt label338
	str r0, [sp, #48]
	ldr r5, [sp, #44]
label36:
	cmp r5, #0
	bne label38
label311:
	mov r2, r6
	b label67
label122:
	add r6, r2, #36
	cmp r3, #18
	blt label635
	str r4, [sp, #68]
	ldr r5, [sp, #64]
	b label124
label635:
	mov r5, r0
label124:
	cmp r5, #0
	bne label552
	add r6, r2, #38
	cmp r3, #19
	blt label647
	str r4, [sp, #72]
	ldr r5, [sp, #68]
	b label128
label647:
	mov r5, r0
label128:
	cmp r5, #0
	bne label552
	add r2, r2, #40
	cmp r3, #20
	blt label134
	str r4, [sp, #76]
	b label134
label557:
	mov r5, r0
label98:
	cmp r5, #0
	bne label552
	add r6, r2, #24
	cmp r3, #12
	blt label569
	str r4, [sp, #44]
	ldr r5, [sp, #40]
label102:
	cmp r5, #0
	bne label552
	add r6, r2, #26
	cmp r3, #13
	blt label581
	str r4, [sp, #48]
	ldr r5, [sp, #44]
	b label106
label581:
	mov r5, r0
label106:
	cmp r5, #0
	bne label552
	add r6, r2, #28
	cmp r3, #14
	blt label593
	str r4, [sp, #52]
	ldr r5, [sp, #48]
label109:
	cmp r5, #0
	bne label552
	add r6, r2, #30
	cmp r3, #15
	blt label602
	str r4, [sp, #56]
	ldr r5, [sp, #52]
label113:
	cmp r5, #0
	bne label552
	add r6, r2, #32
	cmp r3, #16
	blt label614
	str r4, [sp, #60]
	ldr r5, [sp, #56]
	b label117
label38:
	add r6, r2, #14
	cmp r3, #14
	blt label350
	str r0, [sp, #52]
	ldr r5, [sp, #48]
	b label39
label350:
	mov r5, r4
label39:
	cmp r5, #0
	beq label311
	add r6, r2, #15
	cmp r3, #15
	blt label359
	str r0, [sp, #56]
	ldr r5, [sp, #52]
	b label42
label359:
	mov r5, r4
label42:
	cmp r5, #0
	beq label311
	add r6, r2, #16
	cmp r3, #16
	bge label367
	mov r5, r4
label46:
	cmp r5, #0
	beq label311
	add r6, r2, #17
	cmp r3, #17
	bge label379
	mov r5, r4
	b label50
label379:
	str r0, [sp, #64]
	ldr r5, [sp, #60]
label50:
	cmp r5, #0
	beq label311
	add r6, r2, #18
	cmp r3, #18
	bge label391
	mov r5, r4
label54:
	cmp r5, #0
	beq label311
	add r6, r2, #19
	cmp r3, #19
	bge label403
	mov r5, r4
	b label58
label403:
	str r0, [sp, #72]
	ldr r5, [sp, #68]
label58:
	cmp r5, #0
	beq label311
	add r2, r2, #20
	cmp r3, #20
	blt label67
	str r0, [sp, #76]
	b label67
label602:
	mov r5, r0
	b label113
label391:
	str r0, [sp, #68]
	ldr r5, [sp, #64]
	b label54
label367:
	str r0, [sp, #60]
	ldr r5, [sp, #56]
	b label46
label593:
	mov r5, r0
	b label109
label338:
	mov r5, r4
	b label36
label317:
	mov r5, r4
	b label28
label325:
	str r0, [sp, #44]
	ldr r5, [sp, #40]
	b label32
label569:
	mov r5, r0
	b label102
label626:
	mov r5, r0
	b label120
