.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
	bl getint
	mov r4, r0
	mov r0, #121
	bl _sysy_starttime
	cmp r4, #0
	ble label41
	cmp r4, #4
	ble label45
	sub r0, r4, #4
	cmp r0, #16
	ble label50
	sub r1, r4, #20
	cmp r1, #64
	ble label55
	sub r2, r4, #84
	cmp r2, #256
	ble label67
	sub r3, r4, #340
	cmp r3, #1024
	ble label79
	movw r5, #64172
	movt r5, #65535
	add r5, r4, r5
	cmp r5, #4096
	ble label84
	movw r6, #60076
	movw r7, #43692
	movt r6, #65535
	movt r7, #65535
	add r6, r4, r6
	add r9, r4, r7
	cmp r6, #16384
	ble label90
	mov r7, #0
	mov r8, r7
	b label15
label9:
	add r5, r5, #64
	add r3, r3, #960
	movw r6, #16511
	cmp r2, r5
	movt r6, #183
	smmul r6, r3, r6
	asr r7, r6, #22
	add r6, r7, r6, lsr #31
	movw r7, #12033
	movt r7, #22888
	mls r3, r6, r7, r3
	bgt label9
	b label74
label90:
	mov r7, #0
	mov r8, r7
label22:
	add r7, r7, #4096
	add r8, r8, #61440
	movw r9, #16511
	cmp r6, r7
	movt r9, #183
	smmul r9, r8, r9
	asr r10, r9, #22
	add r9, r10, r9, lsr #31
	movw r10, #12033
	movt r10, #22888
	mls r8, r9, r10, r8
	bgt label22
	mov r6, r8
label25:
	add r7, r7, #1024
	add r6, r6, #15360
	movw r8, #16511
	cmp r5, r7
	movt r8, #183
	smmul r8, r6, r8
	asr r9, r8, #22
	add r8, r9, r8, lsr #31
	movw r9, #12033
	movt r9, #22888
	mls r6, r8, r9, r6
	bgt label25
	mov r5, r7
label28:
	add r5, r5, #256
	add r6, r6, #3840
	movw r7, #16511
	cmp r3, r5
	movt r7, #183
	smmul r7, r6, r7
	asr r8, r7, #22
	add r7, r8, r7, lsr #31
	movw r8, #12033
	movt r8, #22888
	mls r6, r7, r8, r6
	bgt label28
	mov r3, r6
	b label9
label15:
	add r10, r8, #65536
	cmp r9, r10
	ble label95
	add r7, r7, #983040
	movw r8, #16511
	movt r8, #183
	smmul r8, r7, r8
	asr r11, r8, #22
	add r8, r11, r8, lsr #31
	movw r11, #12033
	movt r11, #22888
	mls r7, r8, r11, r7
	mov r8, r10
	b label15
label95:
	mov r10, r7
label19:
	add r7, r8, #16384
	cmp r9, r7
	add r8, r10, #245760
	movw r10, #16511
	movt r10, #183
	smmul r10, r8, r10
	asr r11, r10, #22
	add r10, r11, r10, lsr #31
	movw r11, #12033
	movt r11, #22888
	mls r10, r10, r11, r8
	ble label104
	mov r8, r7
	b label19
label5:
	add r2, r2, #16
	add r3, r3, #240
	movw r5, #16511
	cmp r1, r2
	movt r5, #183
	smmul r5, r3, r5
	asr r6, r5, #22
	add r5, r6, r5, lsr #31
	movw r6, #12033
	movt r6, #22888
	mls r3, r5, r6, r3
	bgt label5
	b label62
label74:
	mov r2, r5
	b label5
label62:
	mov r1, r3
label31:
	add r2, r2, #4
	add r1, r1, #60
	movw r3, #16511
	cmp r0, r2
	movt r3, #183
	smmul r3, r1, r3
	asr r5, r3, #22
	add r3, r5, r3, lsr #31
	movw r5, #12033
	movt r5, #22888
	mls r1, r3, r5, r1
	bgt label31
	mov r0, r1
label34:
	add r2, r2, #1
	add r0, r0, #15
	movw r1, #16511
	cmp r4, r2
	movt r1, #183
	smmul r1, r0, r1
	asr r3, r1, #22
	add r1, r3, r1, lsr #31
	movw r3, #12033
	movt r3, #22888
	mls r0, r1, r3, r0
	bgt label34
	mov r4, r0
label37:
	mov r0, #123
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label84:
	mov r6, #0
	mov r7, r6
	b label25
label104:
	mov r8, r10
	b label22
label45:
	mov r2, #0
	mov r0, r2
	b label34
label79:
	mov r5, #0
	mov r6, r5
	b label28
label55:
	mov r2, #0
	mov r3, r2
	b label5
label67:
	mov r3, #0
	mov r5, r3
	b label9
label50:
	mov r1, #0
	mov r2, r1
	b label31
label41:
	mov r4, #0
	b label37
