.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test_mul_by_1
test_mul_by_1:
.p2align 4
	uxtb r0, r0
	uxtb r0, r0
	bx lr
.globl test_mul_by_10
test_mul_by_10:
.p2align 4
	uxtb r0, r0
	add r0, r0, r0, lsl #2
	lsl r0, r0, #1
	uxtb r0, r0
	bx lr
.globl test_mul_by_11
test_mul_by_11:
.p2align 4
	uxtb r0, r0
	mov r1, #11
	mul r0, r0, r1
	uxtb r0, r0
	bx lr
.globl test_mul_by_12
test_mul_by_12:
.p2align 4
	uxtb r0, r0
	add r0, r0, r0, lsl #1
	lsl r0, r0, #2
	uxtb r0, r0
	bx lr
.globl test_mul_by_13
test_mul_by_13:
.p2align 4
	uxtb r0, r0
	mov r1, #13
	mul r0, r0, r1
	uxtb r0, r0
	bx lr
.globl test_mul_by_14
test_mul_by_14:
.p2align 4
	uxtb r0, r0
	rsb r0, r0, r0, lsl #3
	lsl r0, r0, #1
	uxtb r0, r0
	bx lr
.globl test_mul_by_15
test_mul_by_15:
.p2align 4
	uxtb r0, r0
	rsb r0, r0, r0, lsl #4
	uxtb r0, r0
	bx lr
.globl test_mul_by_16
test_mul_by_16:
.p2align 4
	uxtb r0, r0
	lsl r0, r0, #4
	uxtb r0, r0
	bx lr
.globl test_mul_by_17
test_mul_by_17:
.p2align 4
	uxtb r0, r0
	add r0, r0, r0, lsl #4
	uxtb r0, r0
	bx lr
.globl test_mul_by_18
test_mul_by_18:
.p2align 4
	uxtb r0, r0
	add r0, r0, r0, lsl #3
	lsl r0, r0, #1
	uxtb r0, r0
	bx lr
.globl test_mul_by_19
test_mul_by_19:
.p2align 4
	uxtb r0, r0
	mov r1, #19
	mul r0, r0, r1
	uxtb r0, r0
	bx lr
.globl test_mul_by_2
test_mul_by_2:
.p2align 4
	uxtb r0, r0
	lsl r0, r0, #1
	uxtb r0, r0
	bx lr
.globl test_mul_by_20
test_mul_by_20:
.p2align 4
	uxtb r0, r0
	add r0, r0, r0, lsl #2
	lsl r0, r0, #2
	uxtb r0, r0
	bx lr
.globl test_mul_by_21
test_mul_by_21:
.p2align 4
	uxtb r0, r0
	mov r1, #21
	mul r0, r0, r1
	uxtb r0, r0
	bx lr
.globl test_mul_by_22
test_mul_by_22:
.p2align 4
	uxtb r0, r0
	mov r1, #22
	mul r0, r0, r1
	uxtb r0, r0
	bx lr
.globl test_mul_by_23
test_mul_by_23:
.p2align 4
	uxtb r0, r0
	mov r1, #23
	mul r0, r0, r1
	uxtb r0, r0
	bx lr
.globl test_mul_by_24
test_mul_by_24:
.p2align 4
	uxtb r0, r0
	add r0, r0, r0, lsl #1
	lsl r0, r0, #3
	uxtb r0, r0
	bx lr
.globl test_mul_by_25
test_mul_by_25:
.p2align 4
	uxtb r0, r0
	mov r1, #25
	mul r0, r0, r1
	uxtb r0, r0
	bx lr
.globl test_mul_by_26
test_mul_by_26:
.p2align 4
	uxtb r0, r0
	mov r1, #26
	mul r0, r0, r1
	uxtb r0, r0
	bx lr
.globl test_mul_by_27
test_mul_by_27:
.p2align 4
	uxtb r0, r0
	mov r1, #27
	mul r0, r0, r1
	uxtb r0, r0
	bx lr
.globl test_mul_by_28
test_mul_by_28:
.p2align 4
	uxtb r0, r0
	rsb r0, r0, r0, lsl #3
	lsl r0, r0, #2
	uxtb r0, r0
	bx lr
.globl test_mul_by_29
test_mul_by_29:
.p2align 4
	uxtb r0, r0
	mov r1, #29
	mul r0, r0, r1
	uxtb r0, r0
	bx lr
.globl test_mul_by_3
test_mul_by_3:
.p2align 4
	uxtb r0, r0
	add r0, r0, r0, lsl #1
	uxtb r0, r0
	bx lr
.globl test_mul_by_30
test_mul_by_30:
.p2align 4
	uxtb r0, r0
	rsb r0, r0, r0, lsl #4
	lsl r0, r0, #1
	uxtb r0, r0
	bx lr
.globl test_mul_by_31
test_mul_by_31:
.p2align 4
	uxtb r0, r0
	rsb r0, r0, r0, lsl #5
	uxtb r0, r0
	bx lr
.globl test_mul_by_32
test_mul_by_32:
.p2align 4
	uxtb r0, r0
	lsl r0, r0, #5
	uxtb r0, r0
	bx lr
.globl test_mul_by_37
test_mul_by_37:
.p2align 4
	uxtb r0, r0
	mov r1, #37
	mul r0, r0, r1
	uxtb r0, r0
	bx lr
.globl test_mul_by_4
test_mul_by_4:
.p2align 4
	uxtb r0, r0
	lsl r0, r0, #2
	uxtb r0, r0
	bx lr
.globl test_mul_by_41
test_mul_by_41:
.p2align 4
	uxtb r0, r0
	mov r1, #41
	mul r0, r0, r1
	uxtb r0, r0
	bx lr
.globl test_mul_by_5
test_mul_by_5:
.p2align 4
	uxtb r0, r0
	add r0, r0, r0, lsl #2
	uxtb r0, r0
	bx lr
.globl test_mul_by_520
test_mul_by_520:
.p2align 4
	uxtb r0, r0
	lsl r0, r0, #3
	uxtb r0, r0
	bx lr
.globl test_mul_by_6
test_mul_by_6:
.p2align 4
	uxtb r0, r0
	add r0, r0, r0, lsl #1
	lsl r0, r0, #1
	uxtb r0, r0
	bx lr
.globl test_mul_by_62
test_mul_by_62:
.p2align 4
	uxtb r0, r0
	rsb r0, r0, r0, lsl #5
	lsl r0, r0, #1
	uxtb r0, r0
	bx lr
.globl test_mul_by_66
test_mul_by_66:
.p2align 4
	uxtb r0, r0
	add r0, r0, r0, lsl #5
	lsl r0, r0, #1
	uxtb r0, r0
	bx lr
.globl test_mul_by_7
test_mul_by_7:
.p2align 4
	uxtb r0, r0
	rsb r0, r0, r0, lsl #3
	uxtb r0, r0
	bx lr
.globl test_mul_by_73
test_mul_by_73:
.p2align 4
	uxtb r0, r0
	mov r1, #73
	mul r0, r0, r1
	uxtb r0, r0
	bx lr
.globl test_mul_by_8
test_mul_by_8:
.p2align 4
	uxtb r0, r0
	lsl r0, r0, #3
	uxtb r0, r0
	bx lr
.globl test_mul_by_9
test_mul_by_9:
.p2align 4
	uxtb r0, r0
	add r0, r0, r0, lsl #3
	uxtb r0, r0
	bx lr
.globl test_mul_by_neg10
test_mul_by_neg10:
.p2align 4
	uxtb r0, r0
	add r0, r0, r0, lsl #2
	lsl r0, r0, #1
	rsb r0, r0, #0
	uxtb r0, r0
	bx lr
.globl test_mul_by_neg36
test_mul_by_neg36:
.p2align 4
	uxtb r0, r0
	add r0, r0, r0, lsl #3
	lsl r0, r0, #2
	rsb r0, r0, #0
	uxtb r0, r0
	bx lr
