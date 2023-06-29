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
	ble label5
	ldr r3, [sp, #8]
	add r6, r3, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label5
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label5
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label5
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label5
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label5
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label5
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label5
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label5
	b label909
label126:
	mov r4, #0
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label16
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label12
	ldr r3, [sp, #4]
	add r6, r3, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	b label914
label16:
	mov r0, #65
	bl _sysy_starttime
	mov r0, #0
	str r0, [sp, #16]
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label162
	ldr r3, [sp, #12]
	add r1, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label33
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label24
	b label694
label162:
	mov r0, #0
	ldr r3, [sp, #4]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label211
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
	b label898
label211:
	mov r0, #0
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label215
	ldr r3, [sp, #4]
	add r1, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label82
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label85
	b label705
label215:
	mov r0, #0
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label61
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label44
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label44
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label44
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label44
	b label992
label61:
	ldr r0, [sp, #16]
	add r0, r0, #1
	cmp r0, #5
	bge label362
	str r0, [sp, #16]
	mov r0, #0
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label162
	ldr r3, [sp, #12]
	add r1, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label33
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label24
	b label694
label362:
	mov r2, #0
	mov r4, r2
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label65
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label79
	ldr r3, [sp, #4]
	add r3, r3, r2, lsl #12
	mov r1, r2
	mov r0, #0
	add r4, r0, #4
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label71
	b label78
label65:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label79:
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label65
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label79
	ldr r3, [sp, #4]
	add r3, r3, r2, lsl #12
	mov r1, r4
	mov r0, #0
	add r4, r0, #4
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label71
	b label78
label898:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label96
	b label934
label43:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label44
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label44
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label44
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label44
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label44
	b label957
label44:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label43
	ldr r3, [sp, #4]
	add r3, r3, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #4
	ble label243
	b label709
label999:
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	b label999
label243:
	mov r7, #0
	ldr r4, [r6, r0, lsl #2]
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label50
	b label55
label50:
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label256
	b label52
label256:
	mov r5, r7
	ldr r6, [r3, r7, lsl #2]
	ldr r7, [r2, r7, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	b label999
label52:
	add r5, r3, r7, lsl #2
	ldr r9, [r3, r7, lsl #2]
	add r8, r2, r7, lsl #2
	ldr r10, [r2, r7, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r3, r7, lsl #2]
	ldr r7, [r5, #4]
	ldr r9, [r8, #4]
	mla r7, r4, r9, r7
	str r7, [r5, #4]
	ldr r7, [r5, #8]
	ldr r9, [r8, #8]
	mla r7, r4, r9, r7
	str r7, [r5, #8]
	ldr r7, [r5, #12]
	ldr r8, [r8, #12]
	mla r7, r4, r8, r7
	str r7, [r5, #12]
	mov r7, r6
	add r6, r6, #4
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label256
	b label52
label55:
	add r5, r3, r7, lsl #2
	ldr r9, [r3, r7, lsl #2]
	add r8, r2, r7, lsl #2
	ldr r10, [r2, r7, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r3, r7, lsl #2]
	ldr r7, [r5, #4]
	ldr r9, [r8, #4]
	mla r7, r4, r9, r7
	str r7, [r5, #4]
	ldr r7, [r5, #8]
	ldr r9, [r8, #8]
	mla r7, r4, r9, r7
	str r7, [r5, #8]
	ldr r7, [r5, #12]
	ldr r8, [r8, #12]
	mla r7, r4, r8, r7
	str r7, [r5, #12]
	mov r7, r6
	add r6, r6, #4
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label50
	b label55
label970:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label96
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label98
	b label970
label98:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label114
	ldr r3, [sp, #12]
	add r3, r3, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #4
	ble label482
	ldr r7, [r6, r0, lsl #2]
	mov r4, #4
	mov r9, #0
	b label111
label104:
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label495
	b label108
label495:
	mov r5, r7
	ldr r6, [r3, r7, lsl #2]
	ldr r7, [r2, r7, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label114
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label114
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label114
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label114
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label114
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label114
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label114
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label114
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label114
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label114
	b label1010
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
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label98
	b label970
label1010:
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label114
	b label1010
label109:
	add r5, r3, r7, lsl #2
	ldr r9, [r3, r7, lsl #2]
	add r8, r2, r7, lsl #2
	ldr r10, [r2, r7, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r3, r7, lsl #2]
	ldr r7, [r5, #4]
	ldr r9, [r8, #4]
	mla r7, r4, r9, r7
	str r7, [r5, #4]
	ldr r7, [r5, #8]
	ldr r9, [r8, #8]
	mla r7, r4, r9, r7
	str r7, [r5, #8]
	ldr r7, [r5, #12]
	ldr r8, [r8, #12]
	mla r7, r4, r8, r7
	str r7, [r5, #12]
	mov r7, r6
	add r6, r6, #4
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label104
	b label109
label111:
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
	ldr r8, [r8, #12]
	mla r8, r7, r8, r9
	str r8, [r5, #12]
	add r8, r4, #4
	ldr r5, [sp, #0]
	cmp r8, r5
	bge label594
	mov r9, r4
	mov r4, r8
	b label111
label594:
	mov r7, r4
	ldr r4, [r6, r0, lsl #2]
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label104
	b label109
label108:
	add r5, r3, r7, lsl #2
	ldr r9, [r3, r7, lsl #2]
	add r8, r2, r7, lsl #2
	ldr r10, [r2, r7, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r3, r7, lsl #2]
	ldr r7, [r5, #4]
	ldr r9, [r8, #4]
	mla r7, r4, r9, r7
	str r7, [r5, #4]
	ldr r7, [r5, #8]
	ldr r9, [r8, #8]
	mla r7, r4, r9, r7
	str r7, [r5, #8]
	ldr r7, [r5, #12]
	ldr r8, [r8, #12]
	mla r7, r4, r8, r7
	str r7, [r5, #12]
	mov r7, r6
	add r6, r6, #4
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label495
	b label108
label482:
	mov r7, #0
	ldr r4, [r6, r0, lsl #2]
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label104
	b label109
label934:
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label98
	b label970
label96:
	add r0, r0, #1
	ldr r3, [sp, #4]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label211
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
	b label934
label957:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label44
	b label957
label992:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
label921:
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label44
	b label957
label60:
	add r0, r0, #1
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label61
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label44
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label44
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label44
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label44
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	b label921
label85:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label88
label432:
	add r4, r1, r2, lsl #2
	mov r5, #0
	str r5, [r1, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label88
	b label432
label88:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label91
	b label442
label91:
	mov r3, #0
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label82
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label82
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label82
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label82
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label82
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label82
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label82
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label82
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label82
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label82
label1005:
	mov r3, #0
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label82
	b label1005
label30:
	mov r3, #0
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label33
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label33
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label33
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label33
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label33
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label33
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label33
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label33
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label33
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label33
	b label990
label33:
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label162
	ldr r3, [sp, #12]
	add r1, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label33
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label24
	b label694
label990:
	mov r3, #0
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label33
	b label990
label709:
	ldr r7, [r6, r0, lsl #2]
	mov r4, #4
	mov r9, #0
label57:
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
	ldr r8, [r8, #12]
	mla r8, r7, r8, r9
	str r8, [r5, #12]
	add r8, r4, #4
	ldr r5, [sp, #0]
	cmp r8, r5
	bge label355
	mov r9, r4
	mov r4, r8
	b label57
label355:
	mov r7, r4
	ldr r4, [r6, r0, lsl #2]
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label50
	b label55
label24:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label27
	b label176
label27:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label30
label186:
	add r4, r1, r2, lsl #2
	mov r5, #0
	str r5, [r1, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label30
	b label186
label442:
	add r4, r1, r2, lsl #2
	mov r5, #0
	str r5, [r1, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label91
	b label442
label705:
	add r4, r1, r2, lsl #2
	mov r5, #0
	str r5, [r1, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label85
	b label427
label82:
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label215
	ldr r3, [sp, #4]
	add r1, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label82
	mov r2, #0
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label85
	b label705
label427:
	add r4, r1, r2, lsl #2
	mov r5, #0
	str r5, [r1, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label85
	b label427
label176:
	add r4, r1, r2, lsl #2
	mov r5, #0
	str r5, [r1, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label27
	b label176
label694:
	add r4, r1, r2, lsl #2
	mov r5, #0
	str r5, [r1, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label24
label171:
	add r4, r1, r2, lsl #2
	mov r5, #0
	str r5, [r1, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label24
	b label171
label5:
	add r4, r4, #1
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label126
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label5
	ldr r3, [sp, #8]
	add r6, r3, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label5
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label5
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label5
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label5
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label5
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label5
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label5
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label5
label909:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label5
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label5
label981:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label5
	b label981
label12:
	add r4, r4, #1
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label16
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label12
	ldr r3, [sp, #4]
	add r6, r3, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
label914:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
label986:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	b label986
label1003:
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label403
	b label1003
label403:
	mov r4, r1
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label65
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label79
	ldr r3, [sp, #4]
	add r3, r3, r2, lsl #12
	mov r0, #0
	add r4, r0, #4
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label71
label78:
	add r5, r3, r0, lsl #2
	ldr r6, [r3, r0, lsl #2]
	ldr r0, [r5, #4]
	add r1, r1, r6
	add r0, r1, r0
	ldr r1, [r5, #8]
	add r0, r0, r1
	ldr r1, [r5, #12]
	add r1, r0, r1
	mov r0, r4
	add r4, r4, #4
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label71
	b label78
label71:
	add r4, r0, #4
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label75
label74:
	add r5, r3, r0, lsl #2
	ldr r0, [r3, r0, lsl #2]
	ldr r6, [r5, #4]
	add r0, r1, r0
	add r0, r0, r6
	ldr r1, [r5, #8]
	add r0, r0, r1
	ldr r1, [r5, #12]
	add r1, r0, r1
	mov r0, r4
	add r4, r4, #4
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label75
	b label74
label75:
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label403
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label403
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label403
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label403
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label403
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label403
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label403
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label403
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label403
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label403
	b label1003
