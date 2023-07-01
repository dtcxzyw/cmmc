.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test_mul_by_1
test_mul_by_1:
	uxtb r0, r0
	uxtb r0, r0
	bx lr
.globl test_mul_by_10
test_mul_by_10:
	uxtb r0, r0
	add r0, r0, r0, lsl #2
	lsl r0, r0, #1
	uxtb r0, r0
	bx lr
.globl test_mul_by_11
test_mul_by_11:
	uxtb r0, r0
	add r1, r0, r0, lsl #1
	rsb r0, r0, r1, lsl #2
	uxtb r0, r0
	bx lr
.globl test_mul_by_12
test_mul_by_12:
	uxtb r0, r0
	add r0, r0, r0, lsl #1
	lsl r0, r0, #2
	uxtb r0, r0
	bx lr
.globl test_mul_by_13
test_mul_by_13:
	uxtb r0, r0
	rsb r1, r0, r0, lsl #3
	rsb r0, r0, r1, lsl #1
	uxtb r0, r0
	bx lr
.globl test_mul_by_14
test_mul_by_14:
	uxtb r0, r0
	rsb r0, r0, r0, lsl #3
	lsl r0, r0, #1
	uxtb r0, r0
	bx lr
.globl test_mul_by_15
test_mul_by_15:
	uxtb r0, r0
	rsb r0, r0, r0, lsl #4
	uxtb r0, r0
	bx lr
.globl test_mul_by_16
test_mul_by_16:
	uxtb r0, r0
	lsl r0, r0, #4
	uxtb r0, r0
	bx lr
.globl test_mul_by_17
test_mul_by_17:
	uxtb r0, r0
	add r0, r0, r0, lsl #4
	uxtb r0, r0
	bx lr
.globl test_mul_by_18
test_mul_by_18:
	uxtb r0, r0
	add r0, r0, r0, lsl #3
	lsl r0, r0, #1
	uxtb r0, r0
	bx lr
.globl test_mul_by_19
test_mul_by_19:
	uxtb r0, r0
	add r1, r0, r0, lsl #2
	rsb r0, r0, r1, lsl #2
	uxtb r0, r0
	bx lr
.globl test_mul_by_2
test_mul_by_2:
	uxtb r0, r0
	lsl r0, r0, #1
	uxtb r0, r0
	bx lr
.globl test_mul_by_20
test_mul_by_20:
	uxtb r0, r0
	add r0, r0, r0, lsl #2
	lsl r0, r0, #2
	uxtb r0, r0
	bx lr
.globl test_mul_by_21
test_mul_by_21:
	uxtb r0, r0
	add r0, r0, r0, lsl #1
	rsb r0, r0, r0, lsl #3
	uxtb r0, r0
	bx lr
.globl test_mul_by_22
test_mul_by_22:
	uxtb r0, r0
	add r1, r0, r0, lsl #1
	rsb r0, r0, r1, lsl #2
	lsl r0, r0, #1
	uxtb r0, r0
	bx lr
.globl test_mul_by_23
test_mul_by_23:
	uxtb r0, r0
	add r1, r0, r0, lsl #1
	rsb r0, r0, r1, lsl #3
	uxtb r0, r0
	bx lr
.globl test_mul_by_24
test_mul_by_24:
	uxtb r0, r0
	add r0, r0, r0, lsl #1
	lsl r0, r0, #3
	uxtb r0, r0
	bx lr
.globl test_mul_by_25
test_mul_by_25:
	uxtb r0, r0
	add r0, r0, r0, lsl #2
	add r0, r0, r0, lsl #2
	uxtb r0, r0
	bx lr
.globl test_mul_by_26
test_mul_by_26:
	uxtb r0, r0
	rsb r1, r0, r0, lsl #3
	rsb r0, r0, r1, lsl #1
	lsl r0, r0, #1
	uxtb r0, r0
	bx lr
.globl test_mul_by_27
test_mul_by_27:
	uxtb r0, r0
	add r0, r0, r0, lsl #1
	add r0, r0, r0, lsl #3
	uxtb r0, r0
	bx lr
.globl test_mul_by_28
test_mul_by_28:
	uxtb r0, r0
	rsb r0, r0, r0, lsl #3
	lsl r0, r0, #2
	uxtb r0, r0
	bx lr
.globl test_mul_by_29
test_mul_by_29:
	uxtb r0, r0
	rsb r1, r0, r0, lsl #4
	rsb r0, r0, r1, lsl #1
	uxtb r0, r0
	bx lr
.globl test_mul_by_3
test_mul_by_3:
	uxtb r0, r0
	add r0, r0, r0, lsl #1
	uxtb r0, r0
	bx lr
.globl test_mul_by_30
test_mul_by_30:
	uxtb r0, r0
	rsb r0, r0, r0, lsl #4
	lsl r0, r0, #1
	uxtb r0, r0
	bx lr
.globl test_mul_by_31
test_mul_by_31:
	uxtb r0, r0
	rsb r0, r0, r0, lsl #5
	uxtb r0, r0
	bx lr
.globl test_mul_by_32
test_mul_by_32:
	uxtb r0, r0
	lsl r0, r0, #5
	uxtb r0, r0
	bx lr
.globl test_mul_by_37
test_mul_by_37:
	uxtb r0, r0
	add r1, r0, r0, lsl #3
	add r0, r0, r1, lsl #2
	uxtb r0, r0
	bx lr
.globl test_mul_by_4
test_mul_by_4:
	uxtb r0, r0
	lsl r0, r0, #2
	uxtb r0, r0
	bx lr
.globl test_mul_by_41
test_mul_by_41:
	uxtb r0, r0
	add r1, r0, r0, lsl #2
	add r0, r0, r1, lsl #3
	uxtb r0, r0
	bx lr
.globl test_mul_by_5
test_mul_by_5:
	uxtb r0, r0
	add r0, r0, r0, lsl #2
	uxtb r0, r0
	bx lr
.globl test_mul_by_520
test_mul_by_520:
	uxtb r0, r0
	lsl r0, r0, #3
	uxtb r0, r0
	bx lr
.globl test_mul_by_6
test_mul_by_6:
	uxtb r0, r0
	add r0, r0, r0, lsl #1
	lsl r0, r0, #1
	uxtb r0, r0
	bx lr
.globl test_mul_by_62
test_mul_by_62:
	uxtb r0, r0
	rsb r0, r0, r0, lsl #5
	lsl r0, r0, #1
	uxtb r0, r0
	bx lr
.globl test_mul_by_66
test_mul_by_66:
	uxtb r0, r0
	add r0, r0, r0, lsl #5
	lsl r0, r0, #1
	uxtb r0, r0
	bx lr
.globl test_mul_by_7
test_mul_by_7:
	uxtb r0, r0
	rsb r0, r0, r0, lsl #3
	uxtb r0, r0
	bx lr
.globl test_mul_by_73
test_mul_by_73:
	uxtb r0, r0
	add r1, r0, r0, lsl #3
	add r0, r0, r1, lsl #3
	uxtb r0, r0
	bx lr
.globl test_mul_by_8
test_mul_by_8:
	uxtb r0, r0
	lsl r0, r0, #3
	uxtb r0, r0
	bx lr
.globl test_mul_by_9
test_mul_by_9:
	uxtb r0, r0
	add r0, r0, r0, lsl #3
	uxtb r0, r0
	bx lr
.globl test_mul_by_neg10
test_mul_by_neg10:
	uxtb r0, r0
	add r0, r0, r0, lsl #2
	lsl r0, r0, #1
	rsb r0, r0, #0
	uxtb r0, r0
	bx lr
.globl test_mul_by_neg36
test_mul_by_neg36:
	uxtb r0, r0
	add r0, r0, r0, lsl #3
	lsl r0, r0, #2
	rsb r0, r0, #0
	uxtb r0, r0
	bx lr
