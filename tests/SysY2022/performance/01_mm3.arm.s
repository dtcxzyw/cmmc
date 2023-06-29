.arch armv7ve
.data
.bss
.align 4
A:
	.zero	4194304
.align 4
B:
	.zero	4194304
.align 4
C:
	.zero	4194304
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #28
	bl getint
	mov r5, r0
	str r0, [sp, #0]
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	str r3, [sp, #8]
	movw r3, #:lower16:B
	movt r3, #:upper16:B
	str r3, [sp, #4]
	movw r3, #:lower16:C
	movt r3, #:upper16:C
	str r3, [sp, #12]
	mov r4, #0
	cmp r4, r0
	bge label126
	cmp r0, #0
	ble label8
	b label845
label126:
	mov r4, #0
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label16
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label15
label888:
	ldr r3, [sp, #4]
	add r6, r3, r4, lsl #12
	mov r5, #0
	b label13
label16:
	mov r0, #65
	bl _sysy_starttime
	mov r0, #0
	str r0, [sp, #16]
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label162
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label33
	mov r1, #0
	add r3, r1, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label24
	b label32
label162:
	mov r0, #0
	ldr r3, [sp, #4]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label223
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label96
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label98
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label96
	b label583
label32:
	add r4, r2, r1, lsl #2
	mov r5, #0
	str r5, [r2, r1, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	str r5, [r4, #16]
	str r5, [r4, #20]
	str r5, [r4, #24]
	str r5, [r4, #28]
	mov r1, r3
	add r3, r3, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label24
	b label32
label223:
	mov r0, #0
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label227
	ldr r3, [sp, #4]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label50
	mov r1, #0
	add r3, r1, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label41
	b label49
label227:
	mov r0, #0
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label74
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label73
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label56
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label73
	b label291
label583:
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label98
	b label881
label98:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label114
	ldr r3, [sp, #12]
	add r3, r3, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #8
	ble label602
	ldr r7, [r6, r0, lsl #2]
	mov r4, #8
	mov r9, #0
	b label101
label941:
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label98
	b label962
label111:
	ldr r6, [r3, r5, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label114
	mov r5, r6
	b label111
label114:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label96
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label98
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label96
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label98
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label96
	b label941
label101:
	add r5, r3, r9, lsl #2
	ldr r10, [r3, r9, lsl #2]
	add r8, r2, r9, lsl #2
	ldr r11, [r2, r9, lsl #2]
	mla r10, r7, r11, r10
	str r10, [r3, r9, lsl #2]
	ldr r9, [r5, #4]
	ldr r10, [r8, #4]
	mla r9, r7, r10, r9
	str r9, [r5, #4]
	ldr r9, [r5, #8]
	ldr r10, [r8, #8]
	mla r9, r7, r10, r9
	str r9, [r5, #8]
	ldr r9, [r5, #12]
	ldr r10, [r8, #12]
	mla r9, r7, r10, r9
	str r9, [r5, #12]
	ldr r9, [r5, #16]
	ldr r10, [r8, #16]
	mla r9, r7, r10, r9
	str r9, [r5, #16]
	ldr r9, [r5, #20]
	ldr r10, [r8, #20]
	mla r9, r7, r10, r9
	str r9, [r5, #20]
	ldr r9, [r5, #24]
	ldr r10, [r8, #24]
	mla r9, r7, r10, r9
	str r9, [r5, #24]
	ldr r9, [r5, #28]
	ldr r8, [r8, #28]
	mla r8, r7, r8, r9
	str r8, [r5, #28]
	add r8, r4, #8
	ldr r5, [sp, #0]
	cmp r8, r5
	bge label660
	mov r9, r4
	mov r4, r8
	b label101
label660:
	mov r8, r4
	ldr r4, [r6, r0, lsl #2]
	add r6, r8, #8
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label109
	b label108
label109:
	add r6, r8, #8
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label724
	b label113
label724:
	mov r5, r8
	b label111
label113:
	add r5, r3, r8, lsl #2
	ldr r9, [r3, r8, lsl #2]
	add r7, r2, r8, lsl #2
	ldr r10, [r2, r8, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r3, r8, lsl #2]
	ldr r8, [r5, #4]
	ldr r9, [r7, #4]
	mla r8, r4, r9, r8
	str r8, [r5, #4]
	ldr r8, [r5, #8]
	ldr r9, [r7, #8]
	mla r8, r4, r9, r8
	str r8, [r5, #8]
	ldr r8, [r5, #12]
	ldr r9, [r7, #12]
	mla r8, r4, r9, r8
	str r8, [r5, #12]
	ldr r8, [r5, #16]
	ldr r9, [r7, #16]
	mla r8, r4, r9, r8
	str r8, [r5, #16]
	ldr r8, [r5, #20]
	ldr r9, [r7, #20]
	mla r8, r4, r9, r8
	str r8, [r5, #20]
	ldr r8, [r5, #24]
	ldr r9, [r7, #24]
	mla r8, r4, r9, r8
	str r8, [r5, #24]
	ldr r8, [r5, #28]
	ldr r7, [r7, #28]
	mla r7, r4, r7, r8
	str r7, [r5, #28]
	mov r8, r6
	add r6, r6, #8
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label724
	b label113
label602:
	mov r8, #0
	ldr r4, [r6, r0, lsl #2]
	add r6, r8, #8
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label109
label108:
	add r5, r3, r8, lsl #2
	ldr r9, [r3, r8, lsl #2]
	add r7, r2, r8, lsl #2
	ldr r10, [r2, r8, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r3, r8, lsl #2]
	ldr r8, [r5, #4]
	ldr r9, [r7, #4]
	mla r8, r4, r9, r8
	str r8, [r5, #4]
	ldr r8, [r5, #8]
	ldr r9, [r7, #8]
	mla r8, r4, r9, r8
	str r8, [r5, #8]
	ldr r8, [r5, #12]
	ldr r9, [r7, #12]
	mla r8, r4, r9, r8
	str r8, [r5, #12]
	ldr r8, [r5, #16]
	ldr r9, [r7, #16]
	mla r8, r4, r9, r8
	str r8, [r5, #16]
	ldr r8, [r5, #20]
	ldr r9, [r7, #20]
	mla r8, r4, r9, r8
	str r8, [r5, #20]
	ldr r8, [r5, #24]
	ldr r9, [r7, #24]
	mla r8, r4, r9, r8
	str r8, [r5, #24]
	ldr r8, [r5, #28]
	ldr r7, [r7, #28]
	mla r7, r4, r7, r8
	str r7, [r5, #28]
	mov r8, r6
	add r6, r6, #8
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label109
	b label108
label30:
	mov r3, #0
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label33
	b label30
label33:
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label162
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label33
	mov r1, #0
	add r3, r1, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label24
	b label32
label962:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label96
	b label941
label96:
	add r0, r0, #1
	ldr r3, [sp, #4]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label223
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label96
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label98
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label96
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label98
label881:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label96
	b label941
label45:
	mov r3, #0
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label50
	b label45
label49:
	add r4, r2, r1, lsl #2
	mov r5, #0
	str r5, [r2, r1, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	str r5, [r4, #16]
	str r5, [r4, #20]
	str r5, [r4, #24]
	str r5, [r4, #28]
	mov r1, r3
	add r3, r3, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label41
	b label49
label50:
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label227
	ldr r3, [sp, #4]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label50
	mov r1, #0
	add r3, r1, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label41
	b label49
label73:
	add r0, r0, #1
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label74
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label73
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label56
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label73
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label56
	b label868
label291:
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label56
label868:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label73
	b label933
label74:
	ldr r0, [sp, #16]
	add r0, r0, #1
	cmp r0, #5
	bge label501
	str r0, [sp, #16]
	mov r0, #0
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label162
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label33
	mov r1, #0
	add r3, r1, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label24
	b label32
label501:
	mov r2, #0
	mov r4, r2
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label78
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label80
	b label875
label933:
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label56
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label73
	b label933
label56:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label72
	ldr r3, [sp, #4]
	add r3, r3, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #8
	ble label309
	b label869
label72:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label73
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label56
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label73
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label56
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label73
	b label933
label869:
	ldr r7, [r6, r0, lsl #2]
	mov r4, #8
	mov r9, #0
label59:
	add r5, r3, r9, lsl #2
	ldr r10, [r3, r9, lsl #2]
	add r8, r2, r9, lsl #2
	ldr r11, [r2, r9, lsl #2]
	mla r10, r7, r11, r10
	str r10, [r3, r9, lsl #2]
	ldr r9, [r5, #4]
	ldr r10, [r8, #4]
	mla r9, r7, r10, r9
	str r9, [r5, #4]
	ldr r9, [r5, #8]
	ldr r10, [r8, #8]
	mla r9, r7, r10, r9
	str r9, [r5, #8]
	ldr r9, [r5, #12]
	ldr r10, [r8, #12]
	mla r9, r7, r10, r9
	str r9, [r5, #12]
	ldr r9, [r5, #16]
	ldr r10, [r8, #16]
	mla r9, r7, r10, r9
	str r9, [r5, #16]
	ldr r9, [r5, #20]
	ldr r10, [r8, #20]
	mla r9, r7, r10, r9
	str r9, [r5, #20]
	ldr r9, [r5, #24]
	ldr r10, [r8, #24]
	mla r9, r7, r10, r9
	str r9, [r5, #24]
	ldr r9, [r5, #28]
	ldr r8, [r8, #28]
	mla r8, r7, r8, r9
	str r8, [r5, #28]
	add r8, r4, #8
	ldr r5, [sp, #0]
	cmp r8, r5
	bge label367
	mov r9, r4
	mov r4, r8
	b label59
label367:
	mov r8, r4
	ldr r4, [r6, r0, lsl #2]
	add r6, r8, #8
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label67
label66:
	add r5, r3, r8, lsl #2
	ldr r9, [r3, r8, lsl #2]
	add r7, r2, r8, lsl #2
	ldr r10, [r2, r8, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r3, r8, lsl #2]
	ldr r8, [r5, #4]
	ldr r9, [r7, #4]
	mla r8, r4, r9, r8
	str r8, [r5, #4]
	ldr r8, [r5, #8]
	ldr r9, [r7, #8]
	mla r8, r4, r9, r8
	str r8, [r5, #8]
	ldr r8, [r5, #12]
	ldr r9, [r7, #12]
	mla r8, r4, r9, r8
	str r8, [r5, #12]
	ldr r8, [r5, #16]
	ldr r9, [r7, #16]
	mla r8, r4, r9, r8
	str r8, [r5, #16]
	ldr r8, [r5, #20]
	ldr r9, [r7, #20]
	mla r8, r4, r9, r8
	str r8, [r5, #20]
	ldr r8, [r5, #24]
	ldr r9, [r7, #24]
	mla r8, r4, r9, r8
	str r8, [r5, #24]
	ldr r8, [r5, #28]
	ldr r7, [r7, #28]
	mla r7, r4, r7, r8
	str r7, [r5, #28]
	mov r8, r6
	add r6, r6, #8
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label67
	b label66
label67:
	add r6, r8, #8
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label431
	b label69
label431:
	mov r5, r8
	b label70
label69:
	add r5, r3, r8, lsl #2
	ldr r9, [r3, r8, lsl #2]
	add r7, r2, r8, lsl #2
	ldr r10, [r2, r8, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r3, r8, lsl #2]
	ldr r8, [r5, #4]
	ldr r9, [r7, #4]
	mla r8, r4, r9, r8
	str r8, [r5, #4]
	ldr r8, [r5, #8]
	ldr r9, [r7, #8]
	mla r8, r4, r9, r8
	str r8, [r5, #8]
	ldr r8, [r5, #12]
	ldr r9, [r7, #12]
	mla r8, r4, r9, r8
	str r8, [r5, #12]
	ldr r8, [r5, #16]
	ldr r9, [r7, #16]
	mla r8, r4, r9, r8
	str r8, [r5, #16]
	ldr r8, [r5, #20]
	ldr r9, [r7, #20]
	mla r8, r4, r9, r8
	str r8, [r5, #20]
	ldr r8, [r5, #24]
	ldr r9, [r7, #24]
	mla r8, r4, r9, r8
	str r8, [r5, #24]
	ldr r8, [r5, #28]
	ldr r7, [r7, #28]
	mla r7, r4, r7, r8
	str r7, [r5, #28]
	mov r8, r6
	add r6, r6, #8
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label431
	b label69
label70:
	ldr r6, [r3, r5, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label72
	mov r5, r6
	b label70
label309:
	mov r8, #0
	ldr r4, [r6, r0, lsl #2]
	add r6, r8, #8
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label67
	b label66
label13:
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label15
	mov r5, r0
	b label13
label875:
	ldr r3, [sp, #4]
	add r3, r3, r2, lsl #12
	mov r1, #0
	mov r0, r4
	add r4, r1, #8
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label87
	b label86
label91:
	ldr r4, [r3, r1, lsl #2]
	add r0, r0, r4
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label580
	b label91
label580:
	mov r4, r0
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label78
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label80
	b label875
label24:
	add r3, r1, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label27
label26:
	add r4, r2, r1, lsl #2
	mov r5, #0
	str r5, [r2, r1, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	str r5, [r4, #16]
	str r5, [r4, #20]
	str r5, [r4, #24]
	str r5, [r4, #28]
	mov r1, r3
	add r3, r3, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label27
	b label26
label27:
	add r3, r1, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label30
label29:
	add r4, r2, r1, lsl #2
	mov r5, #0
	str r5, [r2, r1, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	str r5, [r4, #16]
	str r5, [r4, #20]
	str r5, [r4, #24]
	str r5, [r4, #28]
	mov r1, r3
	add r3, r3, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label30
	b label29
label41:
	add r3, r1, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label43
	b label48
label43:
	add r3, r1, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label45
label47:
	add r4, r2, r1, lsl #2
	mov r5, #0
	str r5, [r2, r1, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	str r5, [r4, #16]
	str r5, [r4, #20]
	str r5, [r4, #24]
	str r5, [r4, #28]
	mov r1, r3
	add r3, r3, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label45
	b label47
label48:
	add r4, r2, r1, lsl #2
	mov r5, #0
	str r5, [r2, r1, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	str r5, [r4, #16]
	str r5, [r4, #20]
	str r5, [r4, #24]
	str r5, [r4, #28]
	mov r1, r3
	add r3, r3, #8
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label43
	b label48
label86:
	add r5, r3, r1, lsl #2
	ldr r6, [r3, r1, lsl #2]
	ldr r1, [r5, #4]
	add r0, r0, r6
	add r0, r0, r1
	ldr r1, [r5, #8]
	add r0, r0, r1
	ldr r1, [r5, #12]
	add r0, r0, r1
	ldr r1, [r5, #16]
	add r0, r0, r1
	ldr r1, [r5, #20]
	add r0, r0, r1
	ldr r1, [r5, #24]
	add r0, r0, r1
	ldr r1, [r5, #28]
	add r0, r0, r1
	mov r1, r4
	add r4, r4, #8
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label87
	b label86
label87:
	add r4, r1, #8
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label91
label90:
	add r5, r3, r1, lsl #2
	ldr r6, [r3, r1, lsl #2]
	ldr r1, [r5, #4]
	add r0, r0, r6
	add r0, r0, r1
	ldr r1, [r5, #8]
	add r0, r0, r1
	ldr r1, [r5, #12]
	add r0, r0, r1
	ldr r1, [r5, #16]
	add r0, r0, r1
	ldr r1, [r5, #20]
	add r0, r0, r1
	ldr r1, [r5, #24]
	add r0, r0, r1
	ldr r1, [r5, #28]
	add r0, r0, r1
	mov r1, r4
	add r4, r4, #8
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label91
	b label90
label8:
	add r4, r4, #1
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label126
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label8
	b label845
label15:
	add r4, r4, #1
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label16
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label15
	b label888
label80:
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label78
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label80
	b label875
label845:
	ldr r3, [sp, #8]
	add r6, r3, r4, lsl #12
	mov r5, #0
label6:
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	mov r5, r0
	b label6
label78:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
