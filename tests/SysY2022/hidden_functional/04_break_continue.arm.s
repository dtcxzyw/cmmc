.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5 }
	mov r3, #0
	mov r0, r3
	cmp r3, #20
	bge label22
	mov r1, #0
	cmp r1, #10
	bge label21
	mov r2, #0
	cmp r2, #5
	bge label20
	mov r5, #0
	cmp r5, #3
	bge label19
	add r4, r5, #1
	cmp r4, #2
	ble label42
	cmp r5, #0
	beq label52
	add r2, r2, #1
	cmp r2, #5
	bge label20
	cmp r5, #3
	bge label19
	cmp r4, #2
	ble label42
	cmp r5, #0
	beq label52
label84:
	add r2, r2, #1
	cmp r2, #5
	bge label20
	b label109
label15:
	add r5, r5, #1
	cmp r5, #2
	bge label17
	b label15
label52:
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
	add r0, r0, #1
	cmp r0, #20
	bge label22
	mov r1, #0
	cmp r1, #10
	bge label21
	mov r2, #0
	cmp r2, #5
	bge label20
	mov r5, #0
	cmp r5, #3
	bge label19
	add r4, r5, #1
	cmp r4, #2
	ble label42
	cmp r5, #0
	beq label52
	add r2, r2, #1
	cmp r2, #5
	bge label20
	cmp r5, #3
	bge label19
	cmp r4, #2
	ble label42
	cmp r5, #0
	beq label52
	b label84
label109:
	mov r5, #0
	cmp r5, #3
	bge label19
label122:
	add r4, r5, #1
	cmp r4, #2
	ble label42
	b label136
label164:
	mov r5, #0
	cmp r5, #3
	bge label19
	b label122
label42:
	mov r5, #0
	b label15
label17:
	add r3, r3, #1
	mov r5, r4
	cmp r4, #3
	bge label19
	add r4, r4, #1
	cmp r4, #2
	ble label42
	cmp r5, #0
	beq label52
	add r2, r2, #1
	cmp r2, #5
	bge label20
	mov r5, #0
	cmp r5, #3
	bge label19
	add r4, r5, #1
	cmp r4, #2
	ble label42
	cmp r5, #0
	beq label52
	add r2, r2, #1
	cmp r2, #5
	bge label20
	cmp r5, #3
	bge label19
	cmp r4, #2
	ble label42
label136:
	cmp r5, #0
	beq label52
	add r2, r2, #1
	cmp r2, #5
	bge label20
	b label164
label19:
	add r2, r2, #1
	cmp r2, #5
	bge label20
	mov r5, #0
	cmp r5, #3
	bge label19
	add r4, r5, #1
	cmp r4, #2
	ble label42
	cmp r5, #0
	beq label52
	add r2, r2, #1
	cmp r2, #5
	bge label20
	cmp r5, #3
	bge label19
	cmp r4, #2
	ble label42
	cmp r5, #0
	beq label52
	add r2, r2, #1
	cmp r2, #5
	bge label20
	cmp r5, #3
	bge label19
	b label122
label20:
	add r1, r1, #1
	cmp r1, #10
	bge label21
	mov r2, #0
	cmp r2, #5
	bge label20
	mov r5, #0
	cmp r5, #3
	bge label19
	add r4, r5, #1
	cmp r4, #2
	ble label42
	cmp r5, #0
	beq label52
	add r2, r2, #1
	cmp r2, #5
	bge label20
	cmp r5, #3
	bge label19
	cmp r4, #2
	ble label42
	cmp r5, #0
	beq label52
	add r2, r2, #1
	cmp r2, #5
	bge label20
	b label109
label22:
	mov r0, r3
	pop { r4, r5 }
	bx lr
