.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl mul_neg_fold
mul_neg_fold:
	mvn r2, #8
	mul r0, r0, r2
	add r0, r1, r0
	bx lr
.globl test_mul_by_1
test_mul_by_1:
	bx lr
.globl test_mul_by_10
test_mul_by_10:
	mov r1, #10
	mul r0, r0, r1
	bx lr
.globl test_mul_by_11
test_mul_by_11:
	mov r1, #11
	mul r0, r0, r1
	bx lr
.globl test_mul_by_12
test_mul_by_12:
	mov r1, #12
	mul r0, r0, r1
	bx lr
.globl test_mul_by_13
test_mul_by_13:
	mov r1, #13
	mul r0, r0, r1
	bx lr
.globl test_mul_by_14
test_mul_by_14:
	mov r1, #14
	mul r0, r0, r1
	bx lr
.globl test_mul_by_15
test_mul_by_15:
	mov r1, #15
	mul r0, r0, r1
	bx lr
.globl test_mul_by_16
test_mul_by_16:
	lsl r0, r0, #4
	bx lr
.globl test_mul_by_17
test_mul_by_17:
	mov r1, #17
	mul r0, r0, r1
	bx lr
.globl test_mul_by_18
test_mul_by_18:
	mov r1, #18
	mul r0, r0, r1
	bx lr
.globl test_mul_by_19
test_mul_by_19:
	mov r1, #19
	mul r0, r0, r1
	bx lr
.globl test_mul_by_2
test_mul_by_2:
	lsl r0, r0, #1
	bx lr
.globl test_mul_by_20
test_mul_by_20:
	mov r1, #20
	mul r0, r0, r1
	bx lr
.globl test_mul_by_21
test_mul_by_21:
	mov r1, #21
	mul r0, r0, r1
	bx lr
.globl test_mul_by_22
test_mul_by_22:
	mov r1, #22
	mul r0, r0, r1
	bx lr
.globl test_mul_by_23
test_mul_by_23:
	mov r1, #23
	mul r0, r0, r1
	bx lr
.globl test_mul_by_24
test_mul_by_24:
	mov r1, #24
	mul r0, r0, r1
	bx lr
.globl test_mul_by_25
test_mul_by_25:
	mov r1, #25
	mul r0, r0, r1
	bx lr
.globl test_mul_by_26
test_mul_by_26:
	mov r1, #26
	mul r0, r0, r1
	bx lr
.globl test_mul_by_27
test_mul_by_27:
	mov r1, #27
	mul r0, r0, r1
	bx lr
.globl test_mul_by_28
test_mul_by_28:
	mov r1, #28
	mul r0, r0, r1
	bx lr
.globl test_mul_by_29
test_mul_by_29:
	mov r1, #29
	mul r0, r0, r1
	bx lr
.globl test_mul_by_3
test_mul_by_3:
	mov r1, #3
	mul r0, r0, r1
	bx lr
.globl test_mul_by_30
test_mul_by_30:
	mov r1, #30
	mul r0, r0, r1
	bx lr
.globl test_mul_by_31
test_mul_by_31:
	mov r1, #31
	mul r0, r0, r1
	bx lr
.globl test_mul_by_32
test_mul_by_32:
	lsl r0, r0, #5
	bx lr
.globl test_mul_by_37
test_mul_by_37:
	mov r1, #37
	mul r0, r0, r1
	bx lr
.globl test_mul_by_4
test_mul_by_4:
	lsl r0, r0, #2
	bx lr
.globl test_mul_by_41
test_mul_by_41:
	mov r1, #41
	mul r0, r0, r1
	bx lr
.globl test_mul_by_5
test_mul_by_5:
	mov r1, #5
	mul r0, r0, r1
	bx lr
.globl test_mul_by_520
test_mul_by_520:
	mov r1, #520
	mul r0, r0, r1
	bx lr
.globl test_mul_by_6
test_mul_by_6:
	mov r1, #6
	mul r0, r0, r1
	bx lr
.globl test_mul_by_62
test_mul_by_62:
	mov r1, #62
	mul r0, r0, r1
	bx lr
.globl test_mul_by_66
test_mul_by_66:
	mov r1, #66
	mul r0, r0, r1
	bx lr
.globl test_mul_by_7
test_mul_by_7:
	mov r1, #7
	mul r0, r0, r1
	bx lr
.globl test_mul_by_73
test_mul_by_73:
	mov r1, #73
	mul r0, r0, r1
	bx lr
.globl test_mul_by_8
test_mul_by_8:
	lsl r0, r0, #3
	bx lr
.globl test_mul_by_9
test_mul_by_9:
	mov r1, #9
	mul r0, r0, r1
	bx lr
.globl test_mul_by_neg10
test_mul_by_neg10:
	mvn r1, #9
	mul r0, r0, r1
	bx lr
.globl test_mul_by_neg36
test_mul_by_neg36:
	mvn r1, #35
	mul r0, r0, r1
	bx lr
.globl test_mul_spec
test_mul_spec:
	mov r1, #9
	mul r1, r0, r1
	add r1, r1, #42
	mov r2, #5
	mul r0, r0, r2
	add r0, r0, #2
	mul r0, r1, r0
	bx lr
