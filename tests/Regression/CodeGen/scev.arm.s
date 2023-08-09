.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl foo4
foo4:
	push { r4, r5, r6, r7 }
	cmp r1, #0
	ble label24
	cmp r1, #4
	ble label3
	sub r3, r1, #4
	sub r5, r1, #20
	cmp r3, #16
	ble label5
	mov r2, r0
	mov r4, #0
	mov r6, r4
	b label13
.p2align 4
label18:
	add r2, r2, #64
.p2align 4
label13:
	str r4, [r2, #0]
	add r7, r4, #4
	add r6, r6, #16
	str r7, [r2, #4]
	cmp r5, r6
	add r7, r4, #8
	str r7, [r2, #8]
	add r7, r4, #12
	str r7, [r2, #12]
	add r7, r4, #16
	str r7, [r2, #16]
	add r7, r4, #20
	str r7, [r2, #20]
	add r7, r4, #24
	str r7, [r2, #24]
	add r7, r4, #28
	str r7, [r2, #28]
	add r7, r4, #32
	str r7, [r2, #32]
	add r7, r4, #36
	str r7, [r2, #36]
	add r7, r4, #40
	str r7, [r2, #40]
	add r7, r4, #44
	str r7, [r2, #44]
	add r7, r4, #48
	str r7, [r2, #48]
	add r7, r4, #52
	str r7, [r2, #52]
	add r7, r4, #56
	str r7, [r2, #56]
	add r7, r4, #60
	add r4, r4, #64
	str r7, [r2, #60]
	bgt label18
	add r2, r0, r6, lsl #2
	b label6
label11:
	add r2, r2, #16
label6:
	str r4, [r2, #0]
	add r5, r4, #4
	add r6, r6, #4
	str r5, [r2, #4]
	cmp r3, r6
	add r5, r4, #8
	str r5, [r2, #8]
	add r5, r4, #12
	add r4, r4, #16
	str r5, [r2, #12]
	bgt label11
	add r0, r0, r6, lsl #2
	mov r2, r4
	mov r3, r6
	b label19
label23:
	add r0, r0, #4
label19:
	str r2, [r0, #0]
	add r3, r3, #1
	add r2, r2, #4
	cmp r1, r3
	bgt label23
label24:
	pop { r4, r5, r6, r7 }
	bx lr
label3:
	mov r2, #0
	mov r3, r2
	b label19
label5:
	mov r2, r0
	mov r6, #0
	mov r4, r6
	b label6
