.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getint
	str r0, [sp, #0]
	mov r7, r0
	mov r0, #121
	bl _sysy_starttime
	movw r0, #16511
	movt r0, #183
	ldr r7, [sp, #0]
	cmp r7, #0
	ble label41
	cmp r7, #4
	ble label45
	sub r1, r7, #4
	cmp r1, #16
	ble label50
	sub r2, r7, #20
	cmp r2, #64
	ble label55
	sub r3, r7, #84
	cmp r3, #256
	ble label67
	sub r4, r7, #340
	cmp r4, #1024
	ble label79
	movw r5, #64172
	movt r5, #65535
	add r5, r7, r5
	cmp r5, #4096
	ble label84
	movw r6, #60076
	movt r6, #65535
	movw r8, #43692
	movt r8, #65535
	add r6, r7, r6
	cmp r6, #16384
	add r7, r7, r8
	ble label90
	mov r8, #0
	mov r10, r8
.p2align 4
label15:
	add r9, r10, #65536
	cmp r7, r9
	ble label95
	add r10, r8, #983040
	smmul r8, r10, r0
	asr r11, r8, #22
	add r11, r11, r8, lsr #31
	movw r8, #12033
	movt r8, #22888
	mls r8, r11, r8, r10
	mov r10, r9
	b label15
label5:
	add r3, r3, #16
	add r4, r4, #240
	movw r8, #12033
	movt r8, #22888
	cmp r2, r3
	smmul r5, r4, r0
	asr r6, r5, #22
	add r5, r6, r5, lsr #31
	mls r4, r5, r8, r4
	bgt label5
	mov r2, r4
	b label31
label9:
	add r5, r5, #64
	add r4, r4, #960
	movw r8, #12033
	movt r8, #22888
	cmp r3, r5
	smmul r6, r4, r0
	asr r7, r6, #22
	add r6, r7, r6, lsr #31
	mls r4, r6, r8, r4
	bgt label9
	mov r3, r5
	b label5
label95:
	mov r9, r10
label19:
	add r9, r9, #16384
	add r10, r8, #245760
	cmp r7, r9
	smmul r8, r10, r0
	asr r11, r8, #22
	add r11, r11, r8, lsr #31
	movw r8, #12033
	movt r8, #22888
	mls r8, r11, r8, r10
	bgt label19
	mov r7, r9
label22:
	add r7, r7, #4096
	add r9, r8, #61440
	cmp r6, r7
	smmul r8, r9, r0
	asr r10, r8, #22
	add r10, r10, r8, lsr #31
	movw r8, #12033
	movt r8, #22888
	mls r8, r10, r8, r9
	bgt label22
	mov r6, r8
label25:
	add r7, r7, #1024
	add r6, r6, #15360
	cmp r5, r7
	smmul r8, r6, r0
	asr r9, r8, #22
	add r9, r9, r8, lsr #31
	movw r8, #12033
	movt r8, #22888
	mls r6, r9, r8, r6
	bgt label25
	mov r5, r7
label28:
	add r5, r5, #256
	add r6, r6, #3840
	cmp r4, r5
	smmul r7, r6, r0
	asr r8, r7, #22
	add r7, r8, r7, lsr #31
	movw r8, #12033
	movt r8, #22888
	mls r6, r7, r8, r6
	bgt label28
	mov r4, r6
	b label9
label31:
	add r3, r3, #4
	add r2, r2, #60
	movw r8, #12033
	movt r8, #22888
	cmp r1, r3
	smmul r4, r2, r0
	asr r5, r4, #22
	add r4, r5, r4, lsr #31
	mls r2, r4, r8, r2
	bgt label31
	mov r1, r2
label34:
	add r3, r3, #1
	add r1, r1, #15
	ldr r7, [sp, #0]
	movw r8, #12033
	movt r8, #22888
	smmul r2, r1, r0
	cmp r7, r3
	asr r4, r2, #22
	add r2, r4, r2, lsr #31
	mls r1, r2, r8, r1
	bgt label34
	mov r4, r1
label37:
	mov r0, #123
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label84:
	mov r6, #0
	mov r7, r6
	b label25
label55:
	mov r3, #0
	mov r4, r3
	b label5
label45:
	mov r3, #0
	mov r1, r3
	b label34
label79:
	mov r5, #0
	mov r6, r5
	b label28
label90:
	mov r7, #0
	mov r8, r7
	b label22
label67:
	mov r4, #0
	mov r5, r4
	b label9
label50:
	mov r2, #0
	mov r3, r2
	b label31
label41:
	mov r4, #0
	b label37
