.arch armv7ve
.data
.bss
.align 4
array:
	.zero	2097152
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r0, #0
	movw r8, #:lower16:array
	sub sp, sp, #36
	movt r8, #:upper16:array
	str r8, [sp, #0]
label2:
	ldr r8, [sp, #0]
	mov r2, #0
	add r1, r8, r0, lsl #2
	str r2, [r8, r0, lsl #2]
	add r0, r0, #16
	str r2, [r1, #4]
	cmp r0, #524288
	str r2, [r1, #8]
	str r2, [r1, #12]
	str r2, [r1, #16]
	str r2, [r1, #20]
	str r2, [r1, #24]
	str r2, [r1, #28]
	str r2, [r1, #32]
	str r2, [r1, #36]
	str r2, [r1, #40]
	str r2, [r1, #44]
	str r2, [r1, #48]
	str r2, [r1, #52]
	str r2, [r1, #56]
	str r2, [r1, #60]
	bge label87
	b label2
label87:
	mov r0, #0
	str r0, [sp, #4]
	mov r9, r0
	cmp r0, #2
	bge label64
	mov r8, #0
	str r8, [sp, #8]
	cmp r8, #2
	bge label10
	str r8, [sp, #12]
	str r8, [sp, #16]
	str r8, [sp, #20]
	str r8, [sp, #24]
	str r8, [sp, #28]
	mov r1, r0
	cmp r0, #2
	bge label34
	mov r3, r0
	mov r1, #0
	cmp r1, #2
	bge label38
	mov r2, #0
	cmp r2, #2
	bge label42
	b label471
label26:
	ldr r8, [sp, #20]
	add r8, r8, #1
	str r8, [sp, #20]
	cmp r8, #2
	bge label22
	mov r8, #0
	str r8, [sp, #24]
	cmp r8, #2
	bge label26
	str r8, [sp, #28]
	mov r1, r0
	mov r0, #0
	cmp r0, #2
	bge label34
	mov r3, r1
	mov r1, #0
	cmp r1, #2
	bge label38
	mov r2, #0
	cmp r2, #2
	bge label42
	mov r5, r3
	mov r3, #0
	cmp r3, #2
	bge label46
	mov r4, #0
	cmp r4, #2
	bge label50
	mov r6, #0
	cmp r6, #2
	bge label54
	mov r7, #0
	cmp r7, #2
	bge label58
label59:
	ldr r8, [sp, #0]
	ldr r9, [sp, #4]
	add r9, r8, r9, lsl #20
	ldr r8, [sp, #8]
	add r9, r9, r8, lsl #19
	ldr r8, [sp, #12]
	add r9, r9, r8, lsl #18
	ldr r8, [sp, #16]
	add r9, r9, r8, lsl #17
	ldr r8, [sp, #20]
	add r9, r9, r8, lsl #16
	ldr r8, [sp, #24]
	add r9, r9, r8, lsl #15
	ldr r8, [sp, #28]
	add r8, r9, r8, lsl #14
	add r8, r8, r0, lsl #13
	add r8, r8, r1, lsl #12
	add r8, r8, r2, lsl #11
	add r8, r8, r3, lsl #10
	add r8, r8, r4, lsl #9
	add r8, r8, r6, lsl #8
	add r9, r8, r7, lsl #7
	mov r8, #0
label60:
	lsl r11, r8, #6
	add r10, r9, r8, lsl #6
	str r5, [r9, r11]
	add r8, r8, #1
	add r11, r5, #1
	cmp r8, #2
	str r11, [r10, #4]
	add r11, r5, #2
	str r11, [r10, #8]
	add r11, r5, #3
	str r11, [r10, #12]
	add r11, r5, #4
	str r11, [r10, #16]
	add r11, r5, #5
	str r11, [r10, #20]
	add r11, r5, #6
	str r11, [r10, #24]
	add r11, r5, #7
	str r11, [r10, #28]
	add r11, r5, #8
	str r11, [r10, #32]
	add r11, r5, #9
	str r11, [r10, #36]
	add r11, r5, #10
	str r11, [r10, #40]
	add r11, r5, #11
	str r11, [r10, #44]
	add r11, r5, #12
	str r11, [r10, #48]
	add r11, r5, #13
	str r11, [r10, #52]
	add r11, r5, #14
	str r11, [r10, #56]
	add r11, r5, #15
	add r5, r5, #16
	str r11, [r10, #60]
	bge label63
	b label60
label46:
	add r2, r2, #1
	mov r3, r5
	cmp r2, #2
	bge label42
	mov r3, #0
	cmp r3, #2
	bge label46
	mov r4, #0
	cmp r4, #2
	bge label50
	mov r6, #0
	cmp r6, #2
	bge label54
	mov r7, #0
	cmp r7, #2
	bge label58
	b label59
label476:
	mov r7, #0
	cmp r7, #2
	bge label58
	b label59
label22:
	ldr r8, [sp, #16]
	add r8, r8, #1
	str r8, [sp, #16]
	cmp r8, #2
	bge label18
	mov r8, #0
	str r8, [sp, #20]
	cmp r8, #2
	bge label22
	str r8, [sp, #24]
	str r8, [sp, #28]
	mov r1, r0
	mov r0, #0
	cmp r0, #2
	bge label34
	mov r3, r1
	mov r1, #0
	cmp r1, #2
	bge label38
	mov r2, #0
	cmp r2, #2
	bge label42
	mov r5, r3
	mov r3, #0
	cmp r3, #2
	bge label46
	mov r4, #0
	cmp r4, #2
	bge label50
	mov r6, #0
	cmp r6, #2
	bge label54
	b label476
label18:
	ldr r8, [sp, #12]
	add r8, r8, #1
	str r8, [sp, #12]
	cmp r8, #2
	bge label14
	mov r8, #0
	str r8, [sp, #16]
	cmp r8, #2
	bge label18
	str r8, [sp, #20]
	str r8, [sp, #24]
	str r8, [sp, #28]
	mov r1, r0
	mov r0, #0
	cmp r0, #2
	bge label34
	mov r3, r1
	mov r1, #0
	cmp r1, #2
	bge label38
	mov r2, #0
	cmp r2, #2
	bge label42
	mov r5, r3
	mov r3, #0
	cmp r3, #2
	bge label46
	mov r4, #0
	cmp r4, #2
	bge label50
	b label474
label472:
	mov r4, #0
	cmp r4, #2
	bge label50
label474:
	mov r6, #0
	cmp r6, #2
	bge label54
	b label476
label14:
	ldr r8, [sp, #8]
	add r8, r8, #1
	str r8, [sp, #8]
	cmp r8, #2
	bge label10
	mov r8, #0
	str r8, [sp, #12]
	cmp r8, #2
	bge label14
	str r8, [sp, #16]
	str r8, [sp, #20]
	str r8, [sp, #24]
	str r8, [sp, #28]
	mov r1, r0
	mov r0, #0
	cmp r0, #2
	bge label34
	mov r3, r1
	mov r1, #0
	cmp r1, #2
	bge label38
	mov r2, #0
	cmp r2, #2
	bge label42
	mov r5, r3
	mov r3, #0
	cmp r3, #2
	bge label46
	b label472
label471:
	mov r5, r3
	mov r3, #0
	cmp r3, #2
	bge label46
	b label472
label10:
	ldr r9, [sp, #4]
	add r9, r9, #1
	str r9, [sp, #4]
	cmp r9, #2
	bge label64
	mov r8, #0
	str r8, [sp, #8]
	cmp r8, #2
	bge label10
	str r8, [sp, #12]
	str r8, [sp, #16]
	str r8, [sp, #20]
	str r8, [sp, #24]
	str r8, [sp, #28]
	mov r1, r0
	mov r0, #0
	cmp r0, #2
	bge label34
	mov r3, r1
	mov r1, #0
	cmp r1, #2
	bge label38
	mov r2, #0
	cmp r2, #2
	bge label42
	b label471
label42:
	add r1, r1, #1
	cmp r1, #2
	bge label38
	mov r2, #0
	cmp r2, #2
	bge label42
	mov r5, r3
	mov r3, #0
	cmp r3, #2
	bge label46
	mov r4, #0
	cmp r4, #2
	bge label50
	mov r6, #0
	cmp r6, #2
	bge label54
	mov r7, #0
	cmp r7, #2
	bge label58
	b label59
label38:
	add r0, r0, #1
	mov r1, r3
	cmp r0, #2
	bge label34
	mov r1, #0
	cmp r1, #2
	bge label38
	mov r2, #0
	cmp r2, #2
	bge label42
	mov r5, r3
	mov r3, #0
	cmp r3, #2
	bge label46
	mov r4, #0
	cmp r4, #2
	bge label50
	mov r6, #0
	cmp r6, #2
	bge label54
	mov r7, #0
	cmp r7, #2
	bge label58
	b label59
label30:
	ldr r8, [sp, #24]
	add r8, r8, #1
	str r8, [sp, #24]
	cmp r8, #2
	bge label26
	mov r8, #0
	str r8, [sp, #28]
	cmp r8, #2
	bge label30
	mov r1, r0
	mov r0, #0
	cmp r0, #2
	bge label34
	mov r3, r1
	mov r1, #0
	cmp r1, #2
	bge label38
	mov r2, #0
	cmp r2, #2
	bge label42
	mov r5, r3
	mov r3, #0
	cmp r3, #2
	bge label46
	mov r4, #0
	cmp r4, #2
	bge label50
	mov r6, #0
	cmp r6, #2
	bge label54
	mov r7, #0
	cmp r7, #2
	bge label58
	b label59
label34:
	ldr r8, [sp, #28]
	mov r0, r1
	add r8, r8, #1
	str r8, [sp, #28]
	cmp r8, #2
	bge label30
	mov r0, #0
	cmp r0, #2
	bge label34
	mov r3, r1
	mov r1, #0
	cmp r1, #2
	bge label38
	mov r2, #0
	cmp r2, #2
	bge label42
	mov r5, r3
	mov r3, #0
	cmp r3, #2
	bge label46
	mov r4, #0
	cmp r4, #2
	bge label50
	mov r6, #0
	cmp r6, #2
	bge label54
	mov r7, #0
	cmp r7, #2
	bge label58
	b label59
label54:
	add r4, r4, #1
	cmp r4, #2
	bge label50
	mov r6, #0
	cmp r6, #2
	bge label54
	mov r7, #0
	cmp r7, #2
	bge label58
	b label59
label63:
	add r7, r7, #1
	cmp r7, #2
	bge label58
	b label59
label50:
	add r3, r3, #1
	cmp r3, #2
	bge label46
	mov r4, #0
	cmp r4, #2
	bge label50
	mov r6, #0
	cmp r6, #2
	bge label54
	mov r7, #0
	cmp r7, #2
	bge label58
	b label59
label64:
	ldr r8, [sp, #0]
	ldr r0, [r8, #0]
	ldr r1, [r8, #8]
	add r0, r0, r1
	ldr r1, [r8, #4]
	add r0, r0, r1
	ldr r1, [r8, #40]
	add r0, r0, r1
	ldr r1, [r8, #24]
	add r0, r0, r1
	ldr r1, [r8, #228]
	add r0, r0, r1
	ldr r1, [r8, #56]
	add r0, r0, r1
	ldr r1, [r8, #964]
	add r0, r0, r1
	ldr r1, [r8, #224]
	add r0, r0, r1
	ldr r1, [r8, #804]
	add r0, r0, r1
	ldr r1, [r8, #1996]
	add r0, r0, r1
	ldr r1, [r8, #3224]
	add r0, r0, r1
	movw r1, #26400
	add r1, r8, r1
	ldr r1, [r1, #0]
	add r0, r0, r1
	ldr r1, [r8, #508]
	add r0, r0, r1
	ldr r1, [r8, #124]
	add r0, r0, r1
	movw r1, #50064
	movt r1, #3
	add r1, r8, r1
	ldr r1, [r1, #0]
	add r0, r0, r1
	movw r1, #15956
	add r1, r8, r1
	ldr r1, [r1, #0]
	add r0, r0, r1
	movw r1, #41932
	movt r1, #12
	add r1, r8, r1
	ldr r1, [r1, #0]
	add r0, r0, r1
	movw r1, #19456
	movt r1, #4
	add r1, r8, r1
	ldr r1, [r1, #0]
	add r0, r0, r1
	bl putint
	add sp, sp, #36
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label58:
	add r6, r6, #1
	cmp r6, #2
	bge label54
	mov r7, #0
	cmp r7, #2
	bge label58
	b label59
