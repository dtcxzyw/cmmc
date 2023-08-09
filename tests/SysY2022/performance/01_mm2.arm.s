.arch armv7ve
.data
.bss
.align 8
A:
	.zero	4194304
.align 8
B:
	.zero	4194304
.align 8
C:
	.zero	4194304
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getint
	mov r5, #0
	sub r4, r0, #4
	str r0, [sp, #8]
	mov r6, r0
	str r4, [sp, #4]
	sub r4, r0, #20
	str r4, [sp, #0]
	movw r4, #:lower16:A
	movt r4, #:upper16:A
	cmp r0, r5
	bgt label5
	b label158
.p2align 4
label9:
	add r7, r7, #4
	mov r6, r0
.p2align 4
label6:
	bl getint
	str r0, [r7, #0]
	add r0, r6, #1
	ldr r6, [sp, #8]
	cmp r6, r0
	bgt label9
	add r5, r5, #1
	add r4, r4, #4096
	cmp r6, r5
	ble label158
.p2align 4
label5:
	mov r7, r4
	mov r6, #0
	b label6
label158:
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	mov r5, #0
	mov r4, r6
	ldr r6, [sp, #8]
	cmp r6, r5
	bgt label139
	b label15
.p2align 4
label143:
	add r7, r7, #4
	mov r6, r0
.p2align 4
label140:
	bl getint
	str r0, [r7, #0]
	add r0, r6, #1
	ldr r6, [sp, #8]
	cmp r6, r0
	bgt label143
	add r5, r5, #1
	add r4, r4, #4096
	cmp r6, r5
	ble label15
.p2align 4
label139:
	mov r7, r4
	mov r6, #0
	b label140
label15:
	mov r0, #65
	bl _sysy_starttime
	mov r0, #0
	b label16
label646:
	add r0, r0, #1
	cmp r0, #5
	bge label74
.p2align 4
label16:
	movw r6, #:lower16:C
	movt r6, #:upper16:C
	mov r2, #0
	mov r1, r6
	ldr r6, [sp, #8]
	cmp r6, r2
	bgt label21
	b label175
.p2align 4
label28:
	add r3, r3, #64
.p2align 4
label24:
	mov r4, #0
	add r5, r5, #16
	str r4, [r3, #0]
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #12]
	str r4, [r3, #16]
	str r4, [r3, #20]
	str r4, [r3, #24]
	str r4, [r3, #28]
	str r4, [r3, #32]
	str r4, [r3, #36]
	str r4, [r3, #40]
	str r4, [r3, #44]
	str r4, [r3, #48]
	str r4, [r3, #52]
	str r4, [r3, #56]
	str r4, [r3, #60]
	ldr r4, [sp, #0]
	cmp r4, r5
	bgt label28
	add r3, r1, r5, lsl #2
	mov r4, #0
	add r5, r5, #4
	str r4, [r3, #0]
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #12]
	ldr r4, [sp, #4]
	cmp r4, r5
	ble label607
.p2align 4
label34:
	add r3, r3, #16
	mov r4, #0
	add r5, r5, #4
	str r4, [r3, #0]
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #12]
	ldr r4, [sp, #4]
	cmp r4, r5
	bgt label34
	add r3, r1, r5, lsl #2
	add r4, r5, #1
	mov r5, #0
	str r5, [r3, #0]
	ldr r6, [sp, #8]
	cmp r6, r4
	ble label608
.p2align 4
label39:
	add r3, r3, #4
	mov r5, #0
	add r4, r4, #1
	str r5, [r3, #0]
	ldr r6, [sp, #8]
	cmp r6, r4
	bgt label39
	add r2, r2, #1
	add r1, r1, #4096
	cmp r6, r2
	ble label633
.p2align 4
label21:
	ldr r6, [sp, #8]
	cmp r6, #4
	ble label178
	ldr r4, [sp, #4]
	cmp r4, #16
	ble label181
	mov r3, r1
	mov r5, #0
	b label24
.p2align 4
label607:
	add r3, r1, r5, lsl #2
	add r4, r5, #1
	mov r5, #0
	str r5, [r3, #0]
	ldr r6, [sp, #8]
	cmp r6, r4
	bgt label39
	add r2, r2, #1
	add r1, r1, #4096
	cmp r6, r2
	bgt label21
	b label175
.p2align 4
label178:
	mov r3, r1
	mov r4, #0
	mov r5, #0
	add r4, r4, #1
	str r5, [r1, #0]
	ldr r6, [sp, #8]
	cmp r6, r4
	bgt label39
	add r2, r2, #1
	add r1, r1, #4096
	cmp r6, r2
	bgt label21
label633:
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	mov r3, #0
	mov r1, r6
	ldr r6, [sp, #8]
	cmp r6, r3
	bgt label45
	b label227
.p2align 4
label614:
	add r3, r3, #1
	add r1, r1, #4096
	ldr r6, [sp, #8]
	cmp r6, r3
	ble label640
.p2align 4
label45:
	movw r4, #:lower16:A
	movt r4, #:upper16:A
	mov r7, #0
	ldr r6, [sp, #8]
	cmp r6, r7
	bgt label49
	add r3, r3, #1
	add r1, r1, #4096
	cmp r6, r3
	bgt label45
label227:
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	mov r2, #0
	mov r1, r6
	ldr r6, [sp, #8]
	cmp r6, r2
	bgt label119
	b label634
.p2align 4
label63:
	add r4, r4, #4096
	mov r7, r5
	ldr r6, [sp, #8]
	cmp r6, r5
	ble label614
.p2align 4
label49:
	ldr r2, [r4, r3, lsl #2]
	add r5, r7, #1
	cmp r2, #0
	beq label63
	ldr r6, [sp, #8]
	cmp r6, #1
	blt label51
	movw r6, #:lower16:C
	movt r6, #:upper16:C
	add r7, r6, r7, lsl #12
	ldr r6, [sp, #8]
	cmp r6, #4
	ble label248
	mov r8, #4
	mov r9, #0
	b label59
.p2align 4
label293:
	mov r9, r8
	mov r8, r10
.p2align 4
label59:
	add r6, r7, r9, lsl #2
	add r9, r1, r9, lsl #2
	ldr r10, [r6, #0]
	ldr r11, [r9, #0]
	mla r10, r2, r11, r10
	str r10, [r6, #0]
	ldr r10, [r6, #4]
	ldr r11, [r9, #4]
	mla r10, r2, r11, r10
	str r10, [r6, #4]
	ldr r10, [r6, #8]
	ldr r11, [r9, #8]
	mla r10, r2, r11, r10
	str r10, [r6, #8]
	ldr r10, [r6, #12]
	ldr r9, [r9, #12]
	mla r9, r2, r9, r10
	add r10, r8, #4
	str r9, [r6, #12]
	ldr r6, [sp, #8]
	cmp r6, r10
	bgt label293
	add r7, r7, r8, lsl #2
	ldr r6, [r7, #0]
	ldr r9, [r1, r8, lsl #2]
	add r8, r8, #1
	mla r6, r2, r9, r6
	str r6, [r7, #0]
	ldr r6, [sp, #8]
	cmp r6, r8
	ble label639
.p2align 4
label57:
	add r7, r7, #4
	ldr r6, [r7, #0]
	ldr r9, [r1, r8, lsl #2]
	add r8, r8, #1
	mla r6, r2, r9, r6
	str r6, [r7, #0]
	ldr r6, [sp, #8]
	cmp r6, r8
	bgt label57
	add r4, r4, #4096
	mov r7, r5
	cmp r6, r5
	bgt label49
	add r3, r3, #1
	add r1, r1, #4096
	cmp r6, r3
	bgt label45
label638:
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	mov r2, #0
	mov r1, r6
	ldr r6, [sp, #8]
	cmp r6, r2
	bgt label119
	b label634
.p2align 4
label138:
	add r3, r3, #64
.p2align 4
label134:
	mov r4, #0
	add r5, r5, #16
	str r4, [r3, #0]
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #12]
	str r4, [r3, #16]
	str r4, [r3, #20]
	str r4, [r3, #24]
	str r4, [r3, #28]
	str r4, [r3, #32]
	str r4, [r3, #36]
	str r4, [r3, #40]
	str r4, [r3, #44]
	str r4, [r3, #48]
	str r4, [r3, #52]
	str r4, [r3, #56]
	str r4, [r3, #60]
	ldr r4, [sp, #0]
	cmp r4, r5
	bgt label138
	add r3, r1, r5, lsl #2
	mov r4, #0
	add r5, r5, #4
	str r4, [r3, #0]
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #12]
	ldr r4, [sp, #4]
	cmp r4, r5
	ble label626
.p2align 4
label132:
	add r3, r3, #16
.p2align 4
label128:
	mov r4, #0
	add r5, r5, #4
	str r4, [r3, #0]
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #12]
	ldr r4, [sp, #4]
	cmp r4, r5
	bgt label132
	add r3, r1, r5, lsl #2
	add r4, r5, #1
	mov r5, #0
	str r5, [r3, #0]
	ldr r6, [sp, #8]
	cmp r6, r4
	ble label625
.p2align 4
label125:
	add r3, r3, #4
.p2align 4
label121:
	mov r5, #0
	add r4, r4, #1
	str r5, [r3, #0]
	ldr r6, [sp, #8]
	cmp r6, r4
	bgt label125
	add r2, r2, #1
	add r1, r1, #4096
	cmp r6, r2
	ble label624
.p2align 4
label119:
	ldr r6, [sp, #8]
	cmp r6, #4
	ble label120
	ldr r4, [sp, #4]
	cmp r4, #16
	ble label127
	mov r3, r1
	mov r5, #0
	b label134
.p2align 4
label51:
	add r4, r4, #4096
	mov r7, r5
	ldr r6, [sp, #8]
	cmp r6, r5
	bgt label49
	add r3, r3, #1
	add r1, r1, #4096
	cmp r6, r3
	bgt label45
	b label227
.p2align 4
label248:
	mov r8, #0
	ldr r6, [r7, #0]
	ldr r9, [r1, r8, lsl #2]
	add r8, r8, #1
	mla r6, r2, r9, r6
	str r6, [r7, #0]
	ldr r6, [sp, #8]
	cmp r6, r8
	bgt label57
	add r4, r4, #4096
	mov r7, r5
	cmp r6, r5
	bgt label49
	add r3, r3, #1
	add r1, r1, #4096
	cmp r6, r3
	bgt label45
	b label638
.p2align 4
label639:
	add r4, r4, #4096
	mov r7, r5
	ldr r6, [sp, #8]
	cmp r6, r5
	bgt label49
	add r3, r3, #1
	add r1, r1, #4096
	cmp r6, r3
	bgt label45
	b label638
.p2align 4
label120:
	mov r3, r1
	mov r4, #0
	b label121
.p2align 4
label127:
	mov r3, r1
	mov r5, #0
	b label128
.p2align 4
label626:
	add r3, r1, r5, lsl #2
	add r4, r5, #1
	mov r5, #0
	str r5, [r3, #0]
	ldr r6, [sp, #8]
	cmp r6, r4
	bgt label125
	add r2, r2, #1
	add r1, r1, #4096
	cmp r6, r2
	bgt label119
	b label624
.p2align 4
label181:
	mov r3, r1
	mov r5, #0
	mov r4, #0
	add r5, r5, #4
	str r4, [r1, #0]
	str r4, [r1, #4]
	str r4, [r1, #8]
	str r4, [r1, #12]
	ldr r4, [sp, #4]
	cmp r4, r5
	bgt label34
	add r3, r1, r5, lsl #2
	add r4, r5, #1
	mov r5, #0
	str r5, [r3, #0]
	ldr r6, [sp, #8]
	cmp r6, r4
	bgt label39
.p2align 4
label608:
	add r2, r2, #1
	add r1, r1, #4096
	ldr r6, [sp, #8]
	cmp r6, r2
	bgt label21
label175:
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	mov r3, #0
	mov r1, r6
	ldr r6, [sp, #8]
	cmp r6, r3
	bgt label45
	b label227
label74:
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	mov r5, #0
	mov r0, r6
	mov r1, r5
	ldr r6, [sp, #8]
	cmp r6, r5
	bgt label80
	b label79
.p2align 4
label397:
	add r3, r0, r2, lsl #2
	mov r6, r2
	mov r2, r4
	ldr r4, [r3, #0]
	add r2, r2, r4
	add r4, r6, #1
	ldr r6, [sp, #8]
	cmp r6, r4
	ble label642
.p2align 4
label97:
	add r3, r3, #4
	mov r6, r4
	ldr r4, [r3, #0]
	add r2, r2, r4
	add r4, r6, #1
	ldr r6, [sp, #8]
	cmp r6, r4
	bgt label97
.p2align 4
label407:
	add r1, r1, #1
	add r0, r0, #4096
	ldr r6, [sp, #8]
	mov r5, r2
	cmp r6, r1
	ble label79
.p2align 4
label80:
	ldr r6, [sp, #8]
	cmp r6, #4
	ble label318
	cmp r6, #20
	ble label322
	mov r2, #20
	mov r6, #0
	mov r3, #4
.p2align 4
label82:
	add r4, r0, r6, lsl #2
	ldr r6, [r4, #0]
	add r5, r5, r6
	ldr r6, [r4, #4]
	add r5, r5, r6
	ldr r6, [r4, #8]
	ldr r4, [r4, #12]
	add r5, r5, r6
	add r5, r5, r4
	add r4, r0, r3, lsl #2
	add r3, r3, #12
	ldr r6, [r4, #0]
	add r5, r5, r6
	ldr r6, [r4, #4]
	add r5, r5, r6
	ldr r6, [r4, #8]
	add r5, r5, r6
	ldr r6, [r4, #12]
	add r5, r5, r6
	ldr r6, [r4, #16]
	add r5, r5, r6
	ldr r6, [r4, #20]
	add r5, r5, r6
	ldr r6, [r4, #24]
	add r5, r5, r6
	ldr r6, [r4, #28]
	add r5, r5, r6
	ldr r6, [r4, #32]
	add r5, r5, r6
	ldr r6, [r4, #36]
	add r5, r5, r6
	ldr r6, [r4, #40]
	ldr r4, [r4, #44]
	add r5, r5, r6
	ldr r6, [sp, #8]
	add r5, r5, r4
	add r4, r2, #16
	cmp r6, r4
	ble label378
	mov r6, r3
	mov r3, r2
	mov r2, r4
	b label82
.p2align 4
label378:
	mov r4, r5
	mov r5, r3
.p2align 4
label87:
	add r3, r0, r5, lsl #2
	ldr r5, [r3, #0]
	add r4, r4, r5
	ldr r5, [r3, #4]
	add r4, r4, r5
	ldr r5, [r3, #8]
	ldr r3, [r3, #12]
	ldr r6, [sp, #8]
	add r4, r4, r5
	add r4, r4, r3
	add r3, r2, #4
	cmp r6, r3
	ble label397
	mov r5, r2
	mov r2, r3
	b label87
label318:
	mov r3, r0
	mov r6, #0
	ldr r4, [r0, #0]
	add r2, r5, r4
	add r4, r6, #1
	ldr r6, [sp, #8]
	cmp r6, r4
	bgt label97
	b label407
.p2align 4
label625:
	add r2, r2, #1
	add r1, r1, #4096
	ldr r6, [sp, #8]
	cmp r6, r2
	bgt label119
.p2align 4
label624:
	movw r6, #:lower16:C
	movt r6, #:upper16:C
	mov r3, #0
	mov r1, r6
	ldr r6, [sp, #8]
	cmp r6, r3
	bgt label99
label73:
	add r0, r0, #1
	cmp r0, #5
	blt label16
	b label74
.p2align 4
label620:
	add r3, r3, #1
	add r1, r1, #4096
	ldr r6, [sp, #8]
	cmp r6, r3
	ble label646
.p2align 4
label99:
	movw r4, #:lower16:A
	movt r4, #:upper16:A
	mov r7, #0
	ldr r6, [sp, #8]
	cmp r6, r7
	bgt label104
	add r3, r3, #1
	add r1, r1, #4096
	cmp r6, r3
	bgt label99
label618:
	add r0, r0, #1
	cmp r0, #5
	blt label16
	b label74
.p2align 4
label105:
	add r4, r4, #4096
	mov r7, r5
	ldr r6, [sp, #8]
	cmp r6, r5
	ble label620
.p2align 4
label104:
	ldr r2, [r4, r3, lsl #2]
	add r5, r7, #1
	cmp r2, #0
	beq label105
	ldr r6, [sp, #8]
	cmp r6, #1
	blt label619
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	add r7, r6, r7, lsl #12
	ldr r6, [sp, #8]
	cmp r6, #4
	ble label434
	mov r8, #4
	mov r9, #0
.p2align 4
label109:
	add r6, r7, r9, lsl #2
	add r9, r1, r9, lsl #2
	ldr r10, [r6, #0]
	ldr r11, [r9, #0]
	mla r10, r2, r11, r10
	str r10, [r6, #0]
	ldr r10, [r6, #4]
	ldr r11, [r9, #4]
	mla r10, r2, r11, r10
	str r10, [r6, #4]
	ldr r10, [r6, #8]
	ldr r11, [r9, #8]
	mla r10, r2, r11, r10
	str r10, [r6, #8]
	ldr r10, [r6, #12]
	ldr r9, [r9, #12]
	mla r9, r2, r9, r10
	add r10, r8, #4
	str r9, [r6, #12]
	ldr r6, [sp, #8]
	cmp r6, r10
	ble label465
	mov r9, r8
	mov r8, r10
	b label109
.p2align 4
label465:
	add r7, r7, r8, lsl #2
	ldr r6, [r7, #0]
	ldr r9, [r1, r8, lsl #2]
	add r8, r8, #1
	mla r6, r2, r9, r6
	str r6, [r7, #0]
	ldr r6, [sp, #8]
	cmp r6, r8
	ble label649
.p2align 4
label116:
	add r7, r7, #4
	ldr r6, [r7, #0]
	ldr r9, [r1, r8, lsl #2]
	add r8, r8, #1
	mla r6, r2, r9, r6
	str r6, [r7, #0]
	ldr r6, [sp, #8]
	cmp r6, r8
	bgt label116
	add r4, r4, #4096
	mov r7, r5
	cmp r6, r5
	bgt label104
	add r3, r3, #1
	add r1, r1, #4096
	cmp r6, r3
	bgt label99
label667:
	add r0, r0, #1
	cmp r0, #5
	blt label16
	b label74
.p2align 4
label434:
	mov r8, #0
	ldr r6, [r7, #0]
	ldr r9, [r1, r8, lsl #2]
	add r8, r8, #1
	mla r6, r2, r9, r6
	str r6, [r7, #0]
	ldr r6, [sp, #8]
	cmp r6, r8
	bgt label116
	add r4, r4, #4096
	mov r7, r5
	cmp r6, r5
	bgt label104
	add r3, r3, #1
	add r1, r1, #4096
	cmp r6, r3
	bgt label99
	b label667
.p2align 4
label649:
	add r4, r4, #4096
	mov r7, r5
	ldr r6, [sp, #8]
	cmp r6, r5
	bgt label104
	add r3, r3, #1
	add r1, r1, #4096
	cmp r6, r3
	bgt label99
	b label667
.p2align 4
label619:
	add r4, r4, #4096
	mov r7, r5
	ldr r6, [sp, #8]
	cmp r6, r5
	bgt label104
	add r3, r3, #1
	add r1, r1, #4096
	cmp r6, r3
	bgt label99
	b label618
label79:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r5
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #20
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label642:
	add r1, r1, #1
	add r0, r0, #4096
	ldr r6, [sp, #8]
	mov r5, r2
	cmp r6, r1
	bgt label80
	b label79
label640:
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	mov r2, #0
	mov r1, r6
	ldr r6, [sp, #8]
	cmp r6, r2
	bgt label119
label634:
	movw r6, #:lower16:C
	movt r6, #:upper16:C
	mov r3, #0
	mov r1, r6
	ldr r6, [sp, #8]
	cmp r6, r3
	bgt label99
	b label73
label322:
	mov r2, #4
	mov r4, r5
	mov r5, #0
	b label87
