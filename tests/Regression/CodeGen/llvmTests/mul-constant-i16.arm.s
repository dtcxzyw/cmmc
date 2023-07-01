.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test_mul_by_1
test_mul_by_1:
	sxth r0, r0
	uxth r0, r0
	bx lr
.globl test_mul_by_10
test_mul_by_10:
	sxth r0, r0
	add r0, r0, r0, lsl #2
	lsl r0, r0, #1
	uxth r0, r0
	bx lr
.globl test_mul_by_11
test_mul_by_11:
	sxth r0, r0
	add r1, r0, r0, lsl #1
	rsb r0, r0, r1, lsl #2
	uxth r0, r0
	bx lr
.globl test_mul_by_12
test_mul_by_12:
	sxth r0, r0
	add r0, r0, r0, lsl #1
	lsl r0, r0, #2
	uxth r0, r0
	bx lr
.globl test_mul_by_13
test_mul_by_13:
	sxth r0, r0
	rsb r1, r0, r0, lsl #3
	rsb r0, r0, r1, lsl #1
	uxth r0, r0
	bx lr
.globl test_mul_by_14
test_mul_by_14:
	sxth r0, r0
	rsb r0, r0, r0, lsl #3
	lsl r0, r0, #1
	uxth r0, r0
	bx lr
.globl test_mul_by_15
test_mul_by_15:
	sxth r0, r0
	rsb r0, r0, r0, lsl #4
	uxth r0, r0
	bx lr
.globl test_mul_by_16
test_mul_by_16:
	sxth r0, r0
	lsl r0, r0, #4
	uxth r0, r0
	bx lr
.globl test_mul_by_17
test_mul_by_17:
	sxth r0, r0
	add r0, r0, r0, lsl #4
	uxth r0, r0
	bx lr
.globl test_mul_by_18
test_mul_by_18:
	sxth r0, r0
	add r0, r0, r0, lsl #3
	lsl r0, r0, #1
	uxth r0, r0
	bx lr
.globl test_mul_by_19
test_mul_by_19:
	sxth r0, r0
	add r1, r0, r0, lsl #2
	rsb r0, r0, r1, lsl #2
	uxth r0, r0
	bx lr
.globl test_mul_by_2
test_mul_by_2:
	sxth r0, r0
	lsl r0, r0, #1
	uxth r0, r0
	bx lr
.globl test_mul_by_20
test_mul_by_20:
	sxth r0, r0
	add r0, r0, r0, lsl #2
	lsl r0, r0, #2
	uxth r0, r0
	bx lr
.globl test_mul_by_21
test_mul_by_21:
	sxth r0, r0
	add r0, r0, r0, lsl #1
	rsb r0, r0, r0, lsl #3
	uxth r0, r0
	bx lr
.globl test_mul_by_22
test_mul_by_22:
	sxth r0, r0
	add r1, r0, r0, lsl #1
	rsb r0, r0, r1, lsl #2
	lsl r0, r0, #1
	uxth r0, r0
	bx lr
.globl test_mul_by_23
test_mul_by_23:
	sxth r0, r0
	add r1, r0, r0, lsl #1
	rsb r0, r0, r1, lsl #3
	uxth r0, r0
	bx lr
.globl test_mul_by_24
test_mul_by_24:
	sxth r0, r0
	add r0, r0, r0, lsl #1
	lsl r0, r0, #3
	uxth r0, r0
	bx lr
.globl test_mul_by_25
test_mul_by_25:
	sxth r0, r0
	add r0, r0, r0, lsl #2
	add r0, r0, r0, lsl #2
	uxth r0, r0
	bx lr
.globl test_mul_by_26
test_mul_by_26:
	sxth r0, r0
	rsb r1, r0, r0, lsl #3
	rsb r0, r0, r1, lsl #1
	lsl r0, r0, #1
	uxth r0, r0
	bx lr
.globl test_mul_by_27
test_mul_by_27:
	sxth r0, r0
	add r0, r0, r0, lsl #1
	add r0, r0, r0, lsl #3
	uxth r0, r0
	bx lr
.globl test_mul_by_28
test_mul_by_28:
	sxth r0, r0
	rsb r0, r0, r0, lsl #3
	lsl r0, r0, #2
	uxth r0, r0
	bx lr
.globl test_mul_by_29
test_mul_by_29:
	sxth r0, r0
	rsb r1, r0, r0, lsl #4
	rsb r0, r0, r1, lsl #1
	uxth r0, r0
	bx lr
.globl test_mul_by_3
test_mul_by_3:
	sxth r0, r0
	add r0, r0, r0, lsl #1
	uxth r0, r0
	bx lr
.globl test_mul_by_30
test_mul_by_30:
	sxth r0, r0
	rsb r0, r0, r0, lsl #4
	lsl r0, r0, #1
	uxth r0, r0
	bx lr
.globl test_mul_by_31
test_mul_by_31:
	sxth r0, r0
	rsb r0, r0, r0, lsl #5
	uxth r0, r0
	bx lr
.globl test_mul_by_32
test_mul_by_32:
	sxth r0, r0
	lsl r0, r0, #5
	uxth r0, r0
	bx lr
.globl test_mul_by_37
test_mul_by_37:
	sxth r0, r0
	add r1, r0, r0, lsl #3
	add r0, r0, r1, lsl #2
	uxth r0, r0
	bx lr
.globl test_mul_by_4
test_mul_by_4:
	sxth r0, r0
	lsl r0, r0, #2
	uxth r0, r0
	bx lr
.globl test_mul_by_41
test_mul_by_41:
	sxth r0, r0
	add r1, r0, r0, lsl #2
	add r0, r0, r1, lsl #3
	uxth r0, r0
	bx lr
.globl test_mul_by_5
test_mul_by_5:
	sxth r0, r0
	add r0, r0, r0, lsl #2
	uxth r0, r0
	bx lr
.globl test_mul_by_520
test_mul_by_520:
	sxth r0, r0
	add r0, r0, r0, lsl #6
	lsl r0, r0, #3
	uxth r0, r0
	bx lr
.globl test_mul_by_6
test_mul_by_6:
	sxth r0, r0
	add r0, r0, r0, lsl #1
	lsl r0, r0, #1
	uxth r0, r0
	bx lr
.globl test_mul_by_62
test_mul_by_62:
	sxth r0, r0
	rsb r0, r0, r0, lsl #5
	lsl r0, r0, #1
	uxth r0, r0
	bx lr
.globl test_mul_by_66
test_mul_by_66:
	sxth r0, r0
	add r0, r0, r0, lsl #5
	lsl r0, r0, #1
	uxth r0, r0
	bx lr
.globl test_mul_by_7
test_mul_by_7:
	sxth r0, r0
	rsb r0, r0, r0, lsl #3
	uxth r0, r0
	bx lr
.globl test_mul_by_73
test_mul_by_73:
	sxth r0, r0
	add r1, r0, r0, lsl #3
	add r0, r0, r1, lsl #3
	uxth r0, r0
	bx lr
.globl test_mul_by_8
test_mul_by_8:
	sxth r0, r0
	lsl r0, r0, #3
	uxth r0, r0
	bx lr
.globl test_mul_by_9
test_mul_by_9:
	sxth r0, r0
	add r0, r0, r0, lsl #3
	uxth r0, r0
	bx lr
.globl test_mul_by_neg10
test_mul_by_neg10:
	sxth r0, r0
	add r0, r0, r0, lsl #2
	lsl r0, r0, #1
	rsb r0, r0, #0
	uxth r0, r0
	bx lr
.globl test_mul_by_neg36
test_mul_by_neg36:
	sxth r0, r0
	add r0, r0, r0, lsl #3
	lsl r0, r0, #2
	rsb r0, r0, #0
	uxth r0, r0
	bx lr
.globl test_mul_spec
test_mul_spec:
	sxth r0, r0
	add r1, r0, r0, lsl #3
	sxth r1, r1
	add r1, r1, #42
	sxth r1, r1
	add r0, r0, r0, lsl #2
	sxth r0, r0
	add r0, r0, #2
	sxth r0, r0
	mul r0, r1, r0
	uxth r0, r0
	bx lr
