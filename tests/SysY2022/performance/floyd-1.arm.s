.arch armv7ve
.data
.bss
.align 8
temp:
	.zero	8388608
.align 8
w:
	.zero	8388608
.align 8
dst:
	.zero	8388608
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	sub sp, sp, #8
	bl getint
	movw r4, #:lower16:w
	movt r4, #:upper16:w
	str r0, [sp, #4]
	mov r7, r0
	mov r0, r4
	bl getarray
	mov r0, #62
	bl _sysy_starttime
	mov r0, #0
	ldr r7, [sp, #4]
	sub r6, r7, #4
	str r6, [sp, #0]
	cmp r7, r0
	bgt label95
label129:
	mov r2, #0
	ldr r7, [sp, #4]
	cmp r7, r2
	mul r1, r7, r2
	bgt label135
	b label74
.p2align 4
label95:
	ldr r7, [sp, #4]
	cmp r7, #4
	add r1, r7, r0
	ble label462
	mov r3, #0
	mov r2, r3
.p2align 4
label96:
	add r6, r0, r3
	ldr r7, [sp, #4]
	cmp r7, r2
	ble label468
	add r8, r2, #1
	mla r5, r7, r2, r0
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r9, [r4, r5, lsl #2]
	add r5, r1, r3
	str r9, [r7, r6, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, r8
	add r6, r7, r3
	bgt label481
.p2align 4
label482:
	mvn r9, #0
	add r3, r1, r6
	add r8, r2, #2
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	str r9, [r7, r5, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, r8
	add r6, r7, r6
	ble label491
.p2align 4
label490:
	ldr r7, [sp, #4]
	mla r5, r7, r8, r0
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	add r8, r2, #3
	ldr r9, [r4, r5, lsl #2]
	add r5, r1, r6
	str r9, [r7, r3, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, r8
	add r3, r7, r6
	bgt label504
.p2align 4
label505:
	mvn r6, #0
	add r2, r2, #4
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	str r6, [r7, r5, lsl #2]
	ldr r7, [sp, #4]
	ldr r6, [sp, #0]
	add r3, r7, r3
	cmp r6, r2
	bgt label96
	add r1, r0, r3
	cmp r7, r2
	ble label528
	b label627
.p2align 4
label111:
	add r1, r0, r3
	ldr r7, [sp, #4]
	cmp r7, r2
	ble label528
	mla r5, r7, r2, r0
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	add r2, r2, #1
	ldr r5, [r4, r5, lsl #2]
	str r5, [r7, r1, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, r2
	add r3, r7, r3
	bgt label111
	b label673
.p2align 4
label528:
	mvn r5, #0
	add r2, r2, #1
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	str r5, [r7, r1, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, r2
	add r3, r7, r3
	bgt label111
	add r0, r0, #1
	cmp r7, r0
	bgt label95
	b label129
.p2align 4
label135:
	mov r3, #0
	ldr r7, [sp, #4]
	cmp r7, r3
	ble label8
.p2align 4
label9:
	ldr r7, [sp, #4]
	cmp r7, #4
	mla r0, r7, r3, r2
	mul r4, r7, r3
	ble label144
	mov r5, #0
	b label10
.p2align 4
label618:
	add r3, r3, #1
	ldr r7, [sp, #4]
	cmp r7, r3
	bgt label9
.p2align 4
label661:
	add r2, r2, #1
	ldr r7, [sp, #4]
	cmp r7, r2
	mul r1, r7, r2
	bgt label135
label74:
	ldr r7, [sp, #4]
	cmp r7, #0
	mul r4, r7, r7
	beq label75
	cmp r4, #4
	ble label367
	sub r0, r4, #4
	sub r1, r4, #20
	cmp r0, #16
	ble label373
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	mov r2, #0
	b label79
.p2align 4
label10:
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label12
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label39
	b label633
.p2align 4
label37:
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	str r6, [r7, r10, lsl #2]
	add r5, r5, #4
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label10
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label62
	add r5, r5, #1
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label60
	add r3, r3, #1
	cmp r7, r3
	bgt label9
label690:
	add r2, r2, #1
	ldr r7, [sp, #4]
	cmp r7, r2
	mul r1, r7, r2
	bgt label135
	b label74
.p2align 4
label12:
	ldr r7, [sp, #4]
	cmp r7, r5
	ble label156
	add r8, r1, r5
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r8, [r7, r8, lsl #2]
	cmn r8, #1
	ble label634
.p2align 4
label15:
	add r9, r4, r5
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label163
	mvn r7, #0
	add r6, r6, r8
	cmp r7, #0
	blt label20
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r7, [r7, r9, lsl #2]
	cmp r6, r7
	blt label20
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	ble label680
.p2align 4
label50:
	add r8, r5, #1
	ldr r7, [sp, #4]
	cmp r7, r8
	ble label284
	add r9, r1, r8
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r9, [r7, r9, lsl #2]
	cmn r9, #1
	ble label655
.p2align 4
label54:
	add r10, r4, r8
	ldr r7, [sp, #4]
	cmp r7, r8
	ble label296
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	add r6, r6, r9
	ldr r7, [r7, r10, lsl #2]
	cmp r7, #0
	bge label658
.p2align 4
label58:
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	str r6, [r7, r10, lsl #2]
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label39
	add r5, r5, #4
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label10
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label62
	add r5, r5, #1
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label60
	add r3, r3, #1
	cmp r7, r3
	bgt label9
	b label723
.p2align 4
label39:
	add r8, r5, #2
	ldr r7, [sp, #4]
	cmp r7, r8
	bgt label246
	mvn r9, #0
	cmn r9, #1
	bgt label44
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label28
	add r5, r5, #4
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label10
	b label692
.p2align 4
label284:
	mvn r9, #0
	cmn r9, #1
	bgt label54
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label39
	add r5, r5, #4
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label10
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label62
	add r5, r5, #1
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label60
	add r3, r3, #1
	cmp r7, r3
	bgt label9
	b label723
.p2align 4
label156:
	mvn r8, #0
	cmn r8, #1
	bgt label15
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label50
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label39
	add r5, r5, #4
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label10
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label62
	add r5, r5, #1
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label60
	add r3, r3, #1
	cmp r7, r3
	bgt label9
	b label723
.p2align 4
label28:
	add r8, r5, #3
	ldr r7, [sp, #4]
	cmp r7, r8
	bgt label207
	mvn r9, #0
	cmn r9, #1
	ble label603
.p2align 4
label32:
	add r10, r4, r8
	ldr r7, [sp, #4]
	cmp r7, r8
	bgt label219
	mvn r7, #0
	add r6, r6, r9
	cmp r7, #0
	blt label37
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r7, [r7, r10, lsl #2]
	cmp r6, r7
	blt label37
	b label645
.p2align 4
label648:
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label28
	add r5, r5, #4
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label10
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label62
	add r5, r5, #1
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label60
	add r3, r3, #1
	cmp r7, r3
	bgt label9
	b label723
.p2align 4
label163:
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	add r6, r6, r8
	ldr r7, [r7, r9, lsl #2]
	cmp r7, #0
	blt label20
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r7, [r7, r9, lsl #2]
	cmp r6, r7
	bge label679
.p2align 4
label20:
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	str r6, [r7, r9, lsl #2]
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label50
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label39
	add r5, r5, #4
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label10
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label62
	add r5, r5, #1
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label60
	add r3, r3, #1
	cmp r7, r3
	bgt label9
	b label723
.p2align 4
label246:
	add r9, r1, r8
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r9, [r7, r9, lsl #2]
	cmn r9, #1
	ble label648
.p2align 4
label44:
	add r10, r4, r8
	ldr r7, [sp, #4]
	cmp r7, r8
	ble label262
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	add r6, r6, r9
	ldr r7, [r7, r10, lsl #2]
	cmp r7, #0
	blt label49
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r7, [r7, r10, lsl #2]
	cmp r6, r7
	blt label49
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label28
	add r5, r5, #4
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label10
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label62
	add r5, r5, #1
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label60
	add r3, r3, #1
	cmp r7, r3
	bgt label9
	b label723
.p2align 4
label207:
	add r9, r1, r8
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r9, [r7, r9, lsl #2]
	cmn r9, #1
	bgt label32
	add r5, r5, #4
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label10
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label62
	add r5, r5, #1
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label60
	add r3, r3, #1
	cmp r7, r3
	bgt label9
	b label690
.p2align 4
label296:
	mvn r7, #0
	add r6, r6, r9
	cmp r7, #0
	blt label58
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r7, [r7, r10, lsl #2]
	cmp r6, r7
	blt label58
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label39
	add r5, r5, #4
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label10
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label62
	add r5, r5, #1
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label60
	add r3, r3, #1
	cmp r7, r3
	bgt label9
	b label723
.p2align 4
label60:
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label62
	add r5, r5, #1
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label60
	b label618
.p2align 4
label62:
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label323
	mvn r8, #0
	cmn r8, #1
	ble label619
.p2align 4
label66:
	add r9, r4, r5
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label335
	mvn r7, #0
	add r6, r6, r8
	cmp r7, #0
	blt label71
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r7, [r7, r9, lsl #2]
	cmp r6, r7
	blt label71
	add r5, r5, #1
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label60
	add r3, r3, #1
	cmp r7, r3
	bgt label9
label667:
	add r2, r2, #1
	ldr r7, [sp, #4]
	cmp r7, r2
	mul r1, r7, r2
	bgt label135
	b label74
label723:
	add r2, r2, #1
	ldr r7, [sp, #4]
	cmp r7, r2
	mul r1, r7, r2
	bgt label135
	b label74
.p2align 4
label262:
	mvn r7, #0
	add r6, r6, r9
	cmp r7, #0
	bge label610
.p2align 4
label49:
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	str r6, [r7, r10, lsl #2]
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label28
	add r5, r5, #4
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label10
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label62
	add r5, r5, #1
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label60
	add r3, r3, #1
	cmp r7, r3
	bgt label9
	b label723
.p2align 4
label634:
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label50
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label39
	add r5, r5, #4
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label10
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label62
	add r5, r5, #1
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label60
	add r3, r3, #1
	cmp r7, r3
	bgt label9
	b label723
.p2align 4
label633:
	cmn r6, #1
	bgt label28
	add r5, r5, #4
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label10
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label62
	add r5, r5, #1
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label60
	add r3, r3, #1
	cmp r7, r3
	bgt label9
	b label723
.p2align 4
label655:
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label39
	add r5, r5, #4
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label10
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label62
	add r5, r5, #1
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label60
	add r3, r3, #1
	cmp r7, r3
	bgt label9
	b label723
.p2align 4
label219:
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	add r6, r6, r9
	ldr r7, [r7, r10, lsl #2]
	cmp r7, #0
	blt label37
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r7, [r7, r10, lsl #2]
	cmp r6, r7
	blt label37
	add r5, r5, #4
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label10
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label62
	add r5, r5, #1
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label60
	add r3, r3, #1
	cmp r7, r3
	bgt label9
	b label690
.p2align 4
label71:
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	str r6, [r7, r9, lsl #2]
	add r5, r5, #1
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label60
	add r3, r3, #1
	cmp r7, r3
	bgt label9
	add r2, r2, #1
	cmp r7, r2
	mul r1, r7, r2
	bgt label135
	b label74
.p2align 4
label323:
	add r8, r1, r5
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r8, [r7, r8, lsl #2]
	cmn r8, #1
	bgt label66
	add r5, r5, #1
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label60
	add r3, r3, #1
	cmp r7, r3
	bgt label9
	add r2, r2, #1
	cmp r7, r2
	mul r1, r7, r2
	bgt label135
	b label74
.p2align 4
label610:
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r7, [r7, r10, lsl #2]
	cmp r6, r7
	blt label49
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label28
	add r5, r5, #4
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label10
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label62
	add r5, r5, #1
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label60
	add r3, r3, #1
	cmp r7, r3
	bgt label9
	b label723
.p2align 4
label658:
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r7, [r7, r10, lsl #2]
	cmp r6, r7
	blt label58
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label39
	add r5, r5, #4
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label10
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label62
	add r5, r5, #1
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label60
	add r3, r3, #1
	cmp r7, r3
	bgt label9
	b label723
.p2align 4
label335:
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	add r6, r6, r8
	ldr r7, [r7, r9, lsl #2]
	cmp r7, #0
	blt label71
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r7, [r7, r9, lsl #2]
	cmp r6, r7
	blt label71
	add r5, r5, #1
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label60
	add r3, r3, #1
	cmp r7, r3
	bgt label9
	b label667
.p2align 4
label679:
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label50
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label39
	add r5, r5, #4
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label10
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label62
	add r5, r5, #1
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label60
label804:
	add r3, r3, #1
	ldr r7, [sp, #4]
	cmp r7, r3
	bgt label9
	b label723
.p2align 4
label619:
	add r5, r5, #1
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label60
	add r3, r3, #1
	cmp r7, r3
	bgt label9
	add r2, r2, #1
	cmp r7, r2
	mul r1, r7, r2
	bgt label135
	b label74
.p2align 4
label680:
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label39
	add r5, r5, #4
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label10
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label62
	add r5, r5, #1
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label60
	b label804
.p2align 4
label603:
	add r5, r5, #4
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label10
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label62
	add r5, r5, #1
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label60
	add r3, r3, #1
	cmp r7, r3
	bgt label9
	b label690
.p2align 4
label481:
	ldr r7, [sp, #4]
	mla r3, r7, r8, r0
	add r8, r2, #2
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r9, [r4, r3, lsl #2]
	add r3, r1, r6
	str r9, [r7, r5, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, r8
	add r6, r7, r6
	bgt label490
.p2align 4
label491:
	mvn r9, #0
	add r5, r1, r6
	add r8, r2, #3
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	str r9, [r7, r3, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, r8
	add r3, r7, r6
	ble label505
	add r2, r2, #4
	mla r6, r7, r8, r0
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r6, [r4, r6, lsl #2]
	str r6, [r7, r5, lsl #2]
	ldr r7, [sp, #4]
	ldr r6, [sp, #0]
	add r3, r7, r3
	cmp r6, r2
	bgt label96
	add r1, r0, r3
	cmp r7, r2
	ble label528
	mla r5, r7, r2, r0
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	add r2, r2, #1
	ldr r5, [r4, r5, lsl #2]
	str r5, [r7, r1, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, r2
	add r3, r7, r3
	bgt label111
	b label714
.p2align 4
label468:
	mvn r9, #0
	add r5, r1, r3
	add r8, r2, #1
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	str r9, [r7, r6, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, r8
	add r6, r7, r3
	ble label482
	mla r3, r7, r8, r0
	add r8, r2, #2
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r9, [r4, r3, lsl #2]
	add r3, r1, r6
	str r9, [r7, r5, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, r8
	add r6, r7, r6
	ble label491
	b label490
.p2align 4
label504:
	ldr r7, [sp, #4]
	add r2, r2, #4
	mla r6, r7, r8, r0
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r6, [r4, r6, lsl #2]
	str r6, [r7, r5, lsl #2]
	ldr r7, [sp, #4]
	ldr r6, [sp, #0]
	add r3, r7, r3
	cmp r6, r2
	bgt label96
	add r1, r0, r3
	cmp r7, r2
	ble label528
	mla r5, r7, r2, r0
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	add r2, r2, #1
	ldr r5, [r4, r5, lsl #2]
	str r5, [r7, r1, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, r2
	add r3, r7, r3
	bgt label111
	b label714
.p2align 4
label144:
	mov r5, #0
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label62
	add r5, r5, #1
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label60
	add r3, r3, #1
	cmp r7, r3
	bgt label9
	b label661
.p2align 4
label645:
	add r5, r5, #4
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label10
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label62
	add r5, r5, #1
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label60
	add r3, r3, #1
	cmp r7, r3
	bgt label9
	b label690
.p2align 4
label692:
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	ldr r6, [r7, r0, lsl #2]
	cmn r6, #1
	bgt label62
	add r5, r5, #1
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label60
	add r3, r3, #1
	cmp r7, r3
	bgt label9
	b label723
.p2align 4
label79:
	ldr r5, [r7, #0]
	movw r3, #:lower16:dst
	movt r3, #:upper16:dst
	add r3, r3, r2, lsl #2
	add r2, r2, #16
	cmp r1, r2
	str r5, [r3, #0]
	ldr r5, [r7, #4]
	str r5, [r3, #4]
	ldr r5, [r7, #8]
	str r5, [r3, #8]
	ldr r5, [r7, #12]
	str r5, [r3, #12]
	ldr r5, [r7, #16]
	str r5, [r3, #16]
	ldr r5, [r7, #20]
	str r5, [r3, #20]
	ldr r5, [r7, #24]
	str r5, [r3, #24]
	ldr r5, [r7, #28]
	str r5, [r3, #28]
	ldr r5, [r7, #32]
	str r5, [r3, #32]
	ldr r5, [r7, #36]
	str r5, [r3, #36]
	ldr r5, [r7, #40]
	str r5, [r3, #40]
	ldr r5, [r7, #44]
	str r5, [r3, #44]
	ldr r5, [r7, #48]
	str r5, [r3, #48]
	ldr r5, [r7, #52]
	str r5, [r3, #52]
	ldr r5, [r7, #56]
	str r5, [r3, #56]
	ldr r5, [r7, #60]
	str r5, [r3, #60]
	ble label426
	add r7, r7, #64
	b label79
.p2align 4
label627:
	ldr r7, [sp, #4]
	mla r5, r7, r2, r0
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	add r2, r2, #1
	ldr r5, [r4, r5, lsl #2]
	str r5, [r7, r1, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, r2
	add r3, r7, r3
	bgt label111
.p2align 4
label714:
	add r0, r0, #1
	ldr r7, [sp, #4]
	cmp r7, r0
	bgt label95
	b label129
label426:
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	add r7, r7, r2, lsl #2
label85:
	ldr r5, [r7, #0]
	movw r3, #:lower16:dst
	movt r3, #:upper16:dst
	add r1, r3, r2, lsl #2
	add r2, r2, #4
	cmp r0, r2
	str r5, [r1, #0]
	ldr r3, [r7, #4]
	str r3, [r1, #4]
	ldr r3, [r7, #8]
	str r3, [r1, #8]
	ldr r3, [r7, #12]
	str r3, [r1, #12]
	ble label446
	add r7, r7, #16
	b label85
label446:
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	add r7, r7, r2, lsl #2
label90:
	ldr r0, [r7, #0]
	movw r3, #:lower16:dst
	movt r3, #:upper16:dst
	str r0, [r3, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	ble label75
	add r7, r7, #4
	b label90
label462:
	mov r2, #0
	ldr r7, [sp, #4]
	add r1, r0, r2
	mov r3, r2
	cmp r7, r2
	ble label528
	mla r5, r7, r2, r0
	ldr r5, [r4, r5, lsl #2]
	add r2, r2, #1
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	str r5, [r7, r1, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, r2
	add r3, r7, r3
	bgt label111
	add r0, r0, #1
	cmp r7, r0
	bgt label95
	b label129
label8:
	add r2, r2, #1
	ldr r7, [sp, #4]
	cmp r7, r2
	mul r1, r7, r2
	bgt label135
	b label74
label75:
	mov r0, #64
	bl _sysy_stoptime
	mov r0, r4
	movw r3, #:lower16:dst
	movt r3, #:upper16:dst
	mov r1, r3
	bl putarray
	add sp, sp, #8
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
.p2align 4
label673:
	add r0, r0, #1
	ldr r7, [sp, #4]
	cmp r7, r0
	bgt label95
	b label129
label367:
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	mov r2, #0
	b label90
label373:
	movw r7, #:lower16:temp
	movt r7, #:upper16:temp
	mov r2, #0
	b label85
