.arch armv7ve
.data
.bss
.align 4
.globl x
x:
	.zero	40
.text
.syntax unified
.arm
.fpu vfpv4
.globl cse_imm
cse_imm:
	add r1, r1, r1, lsl #2
	add r0, r0, r0, lsl #2
	eor r1, r2, r1, lsl #1
	add r0, r1, r0, lsl #1
	bx lr
.globl cse_global
cse_global:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	ldr r1, [r0, #0]
	ldr r0, [r0, #4]
	add r0, r1, r0
	bx lr
.globl cse_fp
cse_fp:
	movw r0, #0
	movt r0, #16512
	vmov s2, r0
	vmul.f32 s1, s1, s2
	vmul.f32 s0, s0, s2
	vadd.f32 s0, s0, s1
	bx lr
.globl imm_build_pattern1
imm_build_pattern1:
	mov r1, #1
	str r1, [r0, #0]
	mov r1, #2
	str r1, [r0, #4]
	mov r1, #4
	str r1, [r0, #8]
	mov r1, #8
	str r1, [r0, #12]
	mov r1, #16
	str r1, [r0, #16]
	mov r1, #32
	str r1, [r0, #20]
	mov r1, #64
	str r1, [r0, #24]
	mov r1, #128
	str r1, [r0, #28]
	mov r1, #256
	str r1, [r0, #32]
	mov r1, #512
	str r1, [r0, #36]
	mov r1, #1024
	str r1, [r0, #40]
	mov r1, #2048
	str r1, [r0, #44]
	mov r1, #4096
	str r1, [r0, #48]
	mov r1, #8192
	str r1, [r0, #52]
	mov r1, #16384
	str r1, [r0, #56]
	mov r1, #32768
	str r1, [r0, #60]
	mov r1, #65536
	str r1, [r0, #64]
	mov r1, #131072
	str r1, [r0, #68]
	mov r1, #262144
	str r1, [r0, #72]
	mov r1, #524288
	str r1, [r0, #76]
	mov r1, #1048576
	str r1, [r0, #80]
	mov r1, #2097152
	str r1, [r0, #84]
	mov r1, #4194304
	str r1, [r0, #88]
	mov r1, #8388608
	str r1, [r0, #92]
	mov r1, #16777216
	str r1, [r0, #96]
	mov r1, #33554432
	str r1, [r0, #100]
	mov r1, #67108864
	str r1, [r0, #104]
	mov r1, #134217728
	str r1, [r0, #108]
	mov r1, #268435456
	str r1, [r0, #112]
	mov r1, #536870912
	str r1, [r0, #116]
	mov r1, #1073741824
	str r1, [r0, #120]
	bx lr
.globl imm_build_pattern2
imm_build_pattern2:
	mov r1, #1024000
	str r1, [r0, #0]
	mov r1, #512000
	str r1, [r0, #4]
	mov r1, #256000
	str r1, [r0, #8]
	mov r1, #128000
	str r1, [r0, #12]
	mov r1, #64000
	str r1, [r0, #16]
	mov r1, #32000
	str r1, [r0, #20]
	mov r1, #16000
	str r1, [r0, #24]
	mov r1, #8000
	str r1, [r0, #28]
	mov r1, #4000
	str r1, [r0, #32]
	bx lr
.globl imm_build_pattern3
imm_build_pattern3:
	mov r1, #0
	str r1, [r0, #0]
	mov r1, #400
	str r1, [r0, #4]
	mov r1, #800
	str r1, [r0, #8]
	mov r1, #1200
	str r1, [r0, #12]
	mov r1, #1600
	str r1, [r0, #16]
	mov r1, #2000
	str r1, [r0, #20]
	mov r1, #2400
	str r1, [r0, #24]
	mov r1, #2800
	str r1, [r0, #28]
	mov r1, #3200
	str r1, [r0, #32]
	bx lr
