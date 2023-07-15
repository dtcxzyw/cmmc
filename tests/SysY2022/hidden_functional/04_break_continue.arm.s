.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6 }
	mov r3, #0
	mov r0, r3
	cmp r3, #20
	bge label23
	mov r1, #0
	cmp r1, #10
	bge label22
	mov r2, #0
	cmp r2, #5
	bge label21
	mov r5, #0
	cmp r5, #3
	bge label20
	add r4, r5, #1
	cmp r4, #2
	ble label43
	cmp r5, #0
	mov r6, #0
	movwne r6, #1
	beq label53
	clz r5, r5
	lsr r5, r5, #5
	orrs r5, r6, r5
	beq label58
	add r2, r2, #1
	cmp r2, #5
	bge label21
	mov r5, #0
	cmp r5, #3
	bge label20
	b label184
label23:
	mov r0, r3
	pop { r4, r5, r6 }
	bx lr
label184:
	add r4, r5, #1
	cmp r4, #2
	ble label43
	b label81
label43:
	mov r5, #0
label15:
	add r5, r5, #1
	cmp r5, #2
	bge label17
	b label15
label58:
	mov r5, #0
	add r5, r5, #1
	cmp r5, #2
	bge label17
	add r5, r5, #1
	cmp r5, #2
	bge label17
	add r5, r5, #1
	cmp r5, #2
	bge label17
	add r5, r5, #1
	cmp r5, #2
	bge label17
	add r5, r5, #1
	cmp r5, #2
	bge label17
	add r5, r5, #1
	cmp r5, #2
	bge label17
	add r5, r5, #1
	cmp r5, #2
	bge label17
	add r5, r5, #1
	cmp r5, #2
	bge label17
	add r5, r5, #1
	cmp r5, #2
	bge label17
	add r5, r5, #1
	cmp r5, #2
	bge label17
	b label15
label21:
	add r1, r1, #1
	cmp r1, #10
	bge label22
	mov r2, #0
	cmp r2, #5
	bge label21
	mov r5, #0
	cmp r5, #3
	bge label20
	add r4, r5, #1
	cmp r4, #2
	ble label43
	cmp r5, #0
	mov r6, #0
	movwne r6, #1
	beq label53
	clz r5, r5
	lsr r5, r5, #5
	orrs r5, r6, r5
	beq label58
	add r2, r2, #1
	cmp r2, #5
	bge label21
	mov r5, #0
	cmp r5, #3
	bge label20
	add r4, r5, #1
	cmp r4, #2
	ble label43
	cmp r5, #0
	mov r6, #0
	movwne r6, #1
	beq label53
	b label96
label17:
	add r3, r3, #1
	mov r5, r4
	cmp r4, #3
	bge label20
	add r4, r4, #1
	cmp r4, #2
	ble label43
	cmp r5, #0
	mov r6, #0
	movwne r6, #1
	beq label53
	clz r5, r5
	lsr r5, r5, #5
	orrs r5, r6, r5
	beq label58
	add r2, r2, #1
	cmp r2, #5
	bge label21
	mov r5, #0
	cmp r5, #3
	bge label20
	add r4, r5, #1
	cmp r4, #2
	ble label43
	cmp r5, #0
	mov r6, #0
	movwne r6, #1
	beq label53
	clz r5, r5
	lsr r5, r5, #5
	orrs r5, r6, r5
	beq label58
	add r2, r2, #1
	cmp r2, #5
	bge label21
	b label140
label53:
	mov r5, #0
	add r5, r5, #1
	cmp r5, #2
	bge label17
	add r5, r5, #1
	cmp r5, #2
	bge label17
	add r5, r5, #1
	cmp r5, #2
	bge label17
	add r5, r5, #1
	cmp r5, #2
	bge label17
	add r5, r5, #1
	cmp r5, #2
	bge label17
	add r5, r5, #1
	cmp r5, #2
	bge label17
	add r5, r5, #1
	cmp r5, #2
	bge label17
	add r5, r5, #1
	cmp r5, #2
	bge label17
	add r5, r5, #1
	cmp r5, #2
	bge label17
	add r5, r5, #1
	cmp r5, #2
	bge label17
	b label15
label140:
	mov r5, #0
	cmp r5, #3
	bge label20
	add r4, r5, #1
	cmp r4, #2
	ble label43
	cmp r5, #0
	mov r6, #0
	movwne r6, #1
	beq label53
	b label187
label111:
	add r2, r2, #1
	cmp r2, #5
	bge label21
	b label140
label187:
	clz r5, r5
	lsr r5, r5, #5
	orrs r5, r6, r5
	beq label58
	b label111
label20:
	add r2, r2, #1
	cmp r2, #5
	bge label21
	mov r5, #0
	cmp r5, #3
	bge label20
	add r4, r5, #1
	cmp r4, #2
	ble label43
	cmp r5, #0
	mov r6, #0
	movwne r6, #1
	beq label53
	clz r5, r5
	lsr r5, r5, #5
	orrs r5, r6, r5
	beq label58
	add r2, r2, #1
	cmp r2, #5
	bge label21
	mov r5, #0
	cmp r5, #3
	bge label20
	add r4, r5, #1
	cmp r4, #2
	ble label43
	cmp r5, #0
	mov r6, #0
	movwne r6, #1
	beq label53
	clz r5, r5
	lsr r5, r5, #5
	orrs r5, r6, r5
	beq label58
	b label111
label81:
	cmp r5, #0
	mov r6, #0
	movwne r6, #1
	beq label53
label96:
	clz r5, r5
	lsr r5, r5, #5
	orrs r5, r6, r5
	beq label58
	b label111
label22:
	add r0, r0, #1
	cmp r0, #20
	bge label23
	mov r1, #0
	cmp r1, #10
	bge label22
	mov r2, #0
	cmp r2, #5
	bge label21
	mov r5, #0
	cmp r5, #3
	bge label20
	add r4, r5, #1
	cmp r4, #2
	ble label43
	cmp r5, #0
	mov r6, #0
	movwne r6, #1
	beq label53
	clz r5, r5
	lsr r5, r5, #5
	orrs r5, r6, r5
	beq label58
	add r2, r2, #1
	cmp r2, #5
	bge label21
	mov r5, #0
	cmp r5, #3
	bge label20
	add r4, r5, #1
	cmp r4, #2
	ble label43
	b label81
