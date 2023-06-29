.arch armv7ve
.data
.bss
.align 4
x:
	.zero	400040
.align 4
y:
	.zero	12000000
.align 4
v:
	.zero	12000000
.align 4
a:
	.zero	400040
.align 4
b:
	.zero	400040
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #28
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r4, r0
	str r0, [sp, #0]
	bl getarray
	sub r3, r0, #1
	str r3, [sp, #8]
	movw r0, #:lower16:y
	movt r0, #:upper16:y
	mov r5, r0
	str r0, [sp, #4]
	bl getarray
	movw r0, #:lower16:v
	movt r0, #:upper16:v
	mov r5, r0
	str r0, [sp, #12]
	bl getarray
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	mov r5, r0
	str r0, [sp, #16]
	bl getarray
	mov r0, #39
	bl _sysy_starttime
	movw r5, #:lower16:b
	movt r5, #:upper16:b
	str r5, [sp, #20]
	mov r0, #0
	ldr r3, [sp, #8]
	cmp r3, #0
	ble label96
	mov r1, #0
	add r2, r1, #4
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label7
label668:
	ldr r5, [sp, #20]
	add r3, r5, r1, lsl #2
	mov r4, #0
	ldr r5, [sp, #20]
	str r4, [r5, r1, lsl #2]
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label7
	b label100
label96:
	mov r2, #0
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label40
	ldr r4, [sp, #0]
	add r3, r4, r2, lsl #2
	ldr r4, [sp, #0]
	ldr r8, [r4, r2, lsl #2]
	ldr r4, [r3, #4]
	add r1, r2, #1
	cmp r8, r4
	bge label147
	ldr r4, [sp, #0]
	ldr r4, [r4, r1, lsl #2]
	mov r9, r8
	add r6, r8, #4
	cmp r6, r4
	bge label22
	b label21
label147:
	mov r3, r4
	cmp r8, r4
	bge label252
	ldr r5, [sp, #16]
	ldr r2, [r5, r2, lsl #2]
	sub r2, r2, #1
	ldr r4, [sp, #0]
	ldr r3, [r4, r1, lsl #2]
	add r4, r8, #4
	cmp r4, r3
	bge label35
	b label34
label40:
	ldr r3, [sp, #8]
	cmp r3, #0
	ble label364
	mov r1, #0
	add r2, r1, #4
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label70
	ldr r5, [sp, #16]
	add r3, r5, r1, lsl #2
	mov r4, #0
	ldr r5, [sp, #16]
	str r4, [r5, r1, lsl #2]
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label70
	b label601
label364:
	mov r2, #0
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label43
	ldr r4, [sp, #0]
	add r3, r4, r2, lsl #2
	ldr r4, [sp, #0]
	ldr r8, [r4, r2, lsl #2]
	ldr r4, [r3, #4]
	add r1, r2, #1
	cmp r8, r4
	bge label383
	ldr r4, [sp, #0]
	ldr r4, [r4, r1, lsl #2]
	mov r9, r8
	add r6, r8, #4
	cmp r6, r4
	bge label49
	b label55
label43:
	add r0, r0, #1
	cmp r0, #100
	bge label44
	ldr r3, [sp, #8]
	cmp r3, #0
	ble label96
	mov r1, #0
	add r2, r1, #4
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label7
	b label668
label44:
	mov r0, #47
	bl _sysy_stoptime
	ldr r3, [sp, #8]
	mov r0, r3
	ldr r5, [sp, #20]
	mov r1, r5
	bl putarray
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label49:
	add r6, r9, #4
	cmp r6, r4
	bge label396
	b label51
label396:
	mov r6, r9
label52:
	ldr r5, [sp, #4]
	ldr r7, [r5, r6, lsl #2]
	ldr r5, [sp, #16]
	ldr r8, [r5, r7, lsl #2]
	ldr r5, [sp, #12]
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	ldr r5, [sp, #16]
	str r8, [r5, r7, lsl #2]
	add r6, r6, #1
	cmp r6, r4
	bge label54
	b label52
label55:
	ldr r5, [sp, #4]
	add r7, r5, r9, lsl #2
	ldr r5, [sp, #4]
	ldr r10, [r5, r9, lsl #2]
	ldr r5, [sp, #16]
	ldr r11, [r5, r10, lsl #2]
	ldr r5, [sp, #12]
	add r8, r5, r9, lsl #2
	ldr r5, [sp, #12]
	ldr r5, [r5, r9, lsl #2]
	add r9, r11, r5
	ldr r5, [sp, #16]
	str r9, [r5, r10, lsl #2]
	ldr r9, [r7, #4]
	ldr r5, [sp, #16]
	ldr r5, [r5, r9, lsl #2]
	ldr r10, [r8, #4]
	add r10, r5, r10
	ldr r5, [sp, #16]
	str r10, [r5, r9, lsl #2]
	ldr r9, [r7, #8]
	ldr r5, [sp, #16]
	ldr r5, [r5, r9, lsl #2]
	ldr r10, [r8, #8]
	add r10, r5, r10
	ldr r5, [sp, #16]
	str r10, [r5, r9, lsl #2]
	ldr r7, [r7, #12]
	ldr r5, [sp, #16]
	ldr r5, [r5, r7, lsl #2]
	ldr r8, [r8, #12]
	add r8, r5, r8
	ldr r5, [sp, #16]
	str r8, [r5, r7, lsl #2]
	mov r9, r6
	add r6, r6, #4
	cmp r6, r4
	bge label49
	b label55
label51:
	ldr r5, [sp, #4]
	add r7, r5, r9, lsl #2
	ldr r5, [sp, #4]
	ldr r10, [r5, r9, lsl #2]
	ldr r5, [sp, #16]
	ldr r11, [r5, r10, lsl #2]
	ldr r5, [sp, #12]
	add r8, r5, r9, lsl #2
	ldr r5, [sp, #12]
	ldr r5, [r5, r9, lsl #2]
	add r9, r11, r5
	ldr r5, [sp, #16]
	str r9, [r5, r10, lsl #2]
	ldr r9, [r7, #4]
	ldr r5, [sp, #16]
	ldr r5, [r5, r9, lsl #2]
	ldr r10, [r8, #4]
	add r10, r5, r10
	ldr r5, [sp, #16]
	str r10, [r5, r9, lsl #2]
	ldr r9, [r7, #8]
	ldr r5, [sp, #16]
	ldr r5, [r5, r9, lsl #2]
	ldr r10, [r8, #8]
	add r10, r5, r10
	ldr r5, [sp, #16]
	str r10, [r5, r9, lsl #2]
	ldr r7, [r7, #12]
	ldr r5, [sp, #16]
	ldr r5, [r5, r7, lsl #2]
	ldr r8, [r8, #12]
	add r8, r5, r8
	ldr r5, [sp, #16]
	str r8, [r5, r7, lsl #2]
	mov r9, r6
	add r6, r6, #4
	cmp r6, r4
	bge label396
	b label51
label34:
	ldr r5, [sp, #4]
	add r6, r5, r8, lsl #2
	ldr r5, [sp, #4]
	ldr r9, [r5, r8, lsl #2]
	ldr r5, [sp, #20]
	ldr r10, [r5, r9, lsl #2]
	ldr r5, [sp, #12]
	add r7, r5, r8, lsl #2
	ldr r5, [sp, #12]
	ldr r5, [r5, r8, lsl #2]
	mla r8, r2, r5, r10
	ldr r5, [sp, #20]
	str r8, [r5, r9, lsl #2]
	ldr r8, [r6, #4]
	ldr r5, [sp, #20]
	ldr r5, [r5, r8, lsl #2]
	ldr r9, [r7, #4]
	mla r9, r2, r9, r5
	ldr r5, [sp, #20]
	str r9, [r5, r8, lsl #2]
	ldr r8, [r6, #8]
	ldr r5, [sp, #20]
	ldr r5, [r5, r8, lsl #2]
	ldr r9, [r7, #8]
	mla r9, r2, r9, r5
	ldr r5, [sp, #20]
	str r9, [r5, r8, lsl #2]
	ldr r6, [r6, #12]
	ldr r5, [sp, #20]
	ldr r5, [r5, r6, lsl #2]
	ldr r7, [r7, #12]
	mla r7, r2, r7, r5
	ldr r5, [sp, #20]
	str r7, [r5, r6, lsl #2]
	mov r8, r4
	add r4, r4, #4
	cmp r4, r3
	bge label35
	b label34
label35:
	add r4, r8, #4
	cmp r4, r3
	bge label307
	b label37
label307:
	mov r4, r8
label38:
	ldr r5, [sp, #4]
	ldr r6, [r5, r4, lsl #2]
	ldr r5, [sp, #20]
	ldr r7, [r5, r6, lsl #2]
	ldr r5, [sp, #12]
	ldr r5, [r5, r4, lsl #2]
	mla r7, r2, r5, r7
	ldr r5, [sp, #20]
	str r7, [r5, r6, lsl #2]
	add r4, r4, #1
	cmp r4, r3
	bge label361
	b label38
label361:
	mov r2, r1
	ldr r3, [sp, #8]
	cmp r1, r3
	bge label40
	ldr r4, [sp, #0]
	add r3, r4, r1, lsl #2
	ldr r4, [sp, #0]
	ldr r8, [r4, r1, lsl #2]
	ldr r4, [r3, #4]
	add r1, r1, #1
	cmp r8, r4
	bge label147
	ldr r4, [sp, #0]
	ldr r4, [r4, r1, lsl #2]
	mov r9, r8
	add r6, r8, #4
	cmp r6, r4
	bge label22
label21:
	ldr r5, [sp, #4]
	add r7, r5, r9, lsl #2
	ldr r5, [sp, #4]
	ldr r10, [r5, r9, lsl #2]
	ldr r5, [sp, #20]
	ldr r11, [r5, r10, lsl #2]
	ldr r5, [sp, #12]
	add r8, r5, r9, lsl #2
	ldr r5, [sp, #12]
	ldr r5, [r5, r9, lsl #2]
	add r9, r11, r5
	ldr r5, [sp, #20]
	str r9, [r5, r10, lsl #2]
	ldr r9, [r7, #4]
	ldr r5, [sp, #20]
	ldr r5, [r5, r9, lsl #2]
	ldr r10, [r8, #4]
	add r10, r5, r10
	ldr r5, [sp, #20]
	str r10, [r5, r9, lsl #2]
	ldr r9, [r7, #8]
	ldr r5, [sp, #20]
	ldr r5, [r5, r9, lsl #2]
	ldr r10, [r8, #8]
	add r10, r5, r10
	ldr r5, [sp, #20]
	str r10, [r5, r9, lsl #2]
	ldr r7, [r7, #12]
	ldr r5, [sp, #20]
	ldr r5, [r5, r7, lsl #2]
	ldr r8, [r8, #12]
	add r8, r5, r8
	ldr r5, [sp, #20]
	str r8, [r5, r7, lsl #2]
	mov r9, r6
	add r6, r6, #4
	cmp r6, r4
	bge label22
	b label21
label22:
	add r6, r9, #4
	cmp r6, r4
	bge label194
	b label24
label194:
	mov r6, r9
label25:
	ldr r5, [sp, #4]
	ldr r7, [r5, r6, lsl #2]
	ldr r5, [sp, #20]
	ldr r8, [r5, r7, lsl #2]
	ldr r5, [sp, #12]
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	ldr r5, [sp, #20]
	str r8, [r5, r7, lsl #2]
	add r6, r6, #1
	cmp r6, r4
	bge label27
	b label25
label24:
	ldr r5, [sp, #4]
	add r7, r5, r9, lsl #2
	ldr r5, [sp, #4]
	ldr r10, [r5, r9, lsl #2]
	ldr r5, [sp, #20]
	ldr r11, [r5, r10, lsl #2]
	ldr r5, [sp, #12]
	add r8, r5, r9, lsl #2
	ldr r5, [sp, #12]
	ldr r5, [r5, r9, lsl #2]
	add r9, r11, r5
	ldr r5, [sp, #20]
	str r9, [r5, r10, lsl #2]
	ldr r9, [r7, #4]
	ldr r5, [sp, #20]
	ldr r5, [r5, r9, lsl #2]
	ldr r10, [r8, #4]
	add r10, r5, r10
	ldr r5, [sp, #20]
	str r10, [r5, r9, lsl #2]
	ldr r9, [r7, #8]
	ldr r5, [sp, #20]
	ldr r5, [r5, r9, lsl #2]
	ldr r10, [r8, #8]
	add r10, r5, r10
	ldr r5, [sp, #20]
	str r10, [r5, r9, lsl #2]
	ldr r7, [r7, #12]
	ldr r5, [sp, #20]
	ldr r5, [r5, r7, lsl #2]
	ldr r8, [r8, #12]
	add r8, r5, r8
	ldr r5, [sp, #20]
	str r8, [r5, r7, lsl #2]
	mov r9, r6
	add r6, r6, #4
	cmp r6, r4
	bge label194
	b label24
label37:
	ldr r5, [sp, #4]
	add r6, r5, r8, lsl #2
	ldr r5, [sp, #4]
	ldr r9, [r5, r8, lsl #2]
	ldr r5, [sp, #20]
	ldr r10, [r5, r9, lsl #2]
	ldr r5, [sp, #12]
	add r7, r5, r8, lsl #2
	ldr r5, [sp, #12]
	ldr r5, [r5, r8, lsl #2]
	mla r8, r2, r5, r10
	ldr r5, [sp, #20]
	str r8, [r5, r9, lsl #2]
	ldr r8, [r6, #4]
	ldr r5, [sp, #20]
	ldr r5, [r5, r8, lsl #2]
	ldr r9, [r7, #4]
	mla r9, r2, r9, r5
	ldr r5, [sp, #20]
	str r9, [r5, r8, lsl #2]
	ldr r8, [r6, #8]
	ldr r5, [sp, #20]
	ldr r5, [r5, r8, lsl #2]
	ldr r9, [r7, #8]
	mla r9, r2, r9, r5
	ldr r5, [sp, #20]
	str r9, [r5, r8, lsl #2]
	ldr r6, [r6, #12]
	ldr r5, [sp, #20]
	ldr r5, [r5, r6, lsl #2]
	ldr r7, [r7, #12]
	mla r7, r2, r7, r5
	ldr r5, [sp, #20]
	str r7, [r5, r6, lsl #2]
	mov r8, r4
	add r4, r4, #4
	cmp r4, r3
	bge label307
	b label37
label383:
	mov r3, r4
	cmp r8, r4
	bge label488
	ldr r5, [sp, #20]
	ldr r2, [r5, r2, lsl #2]
	sub r2, r2, #1
	ldr r4, [sp, #0]
	ldr r3, [r4, r1, lsl #2]
	add r4, r8, #4
	cmp r4, r3
	bge label62
	b label67
label488:
	mov r2, r1
	ldr r3, [sp, #8]
	cmp r1, r3
	bge label43
	ldr r4, [sp, #0]
	add r3, r4, r1, lsl #2
	ldr r4, [sp, #0]
	ldr r8, [r4, r1, lsl #2]
	ldr r4, [r3, #4]
	add r1, r1, #1
	cmp r8, r4
	bge label383
	ldr r4, [sp, #0]
	ldr r4, [r4, r1, lsl #2]
	mov r9, r8
	add r6, r8, #4
	cmp r6, r4
	bge label49
	b label55
label75:
	mov r2, #0
	ldr r5, [sp, #16]
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #8]
	cmp r1, r3
	bge label624
	ldr r5, [sp, #16]
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #8]
	cmp r1, r3
	bge label624
	ldr r5, [sp, #16]
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #8]
	cmp r1, r3
	bge label624
	ldr r5, [sp, #16]
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #8]
	cmp r1, r3
	bge label624
	ldr r5, [sp, #16]
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #8]
	cmp r1, r3
	bge label624
	ldr r5, [sp, #16]
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #8]
	cmp r1, r3
	bge label624
	ldr r5, [sp, #16]
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #8]
	cmp r1, r3
	bge label624
	ldr r5, [sp, #16]
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #8]
	cmp r1, r3
	bge label624
	ldr r5, [sp, #16]
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #8]
	cmp r1, r3
	bge label624
	ldr r5, [sp, #16]
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #8]
	cmp r1, r3
	bge label624
	b label763
label624:
	mov r2, #0
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label43
	ldr r4, [sp, #0]
	add r3, r4, r2, lsl #2
	ldr r4, [sp, #0]
	ldr r8, [r4, r2, lsl #2]
	ldr r4, [r3, #4]
	add r1, r2, #1
	cmp r8, r4
	bge label383
	ldr r4, [sp, #0]
	ldr r4, [r4, r1, lsl #2]
	mov r9, r8
	add r6, r8, #4
	cmp r6, r4
	bge label49
	b label55
label62:
	add r4, r8, #4
	cmp r4, r3
	bge label505
	b label64
label505:
	mov r4, r8
	b label65
label64:
	ldr r5, [sp, #4]
	add r6, r5, r8, lsl #2
	ldr r5, [sp, #4]
	ldr r9, [r5, r8, lsl #2]
	ldr r5, [sp, #16]
	ldr r10, [r5, r9, lsl #2]
	ldr r5, [sp, #12]
	add r7, r5, r8, lsl #2
	ldr r5, [sp, #12]
	ldr r5, [r5, r8, lsl #2]
	mla r8, r2, r5, r10
	ldr r5, [sp, #16]
	str r8, [r5, r9, lsl #2]
	ldr r8, [r6, #4]
	ldr r5, [sp, #16]
	ldr r5, [r5, r8, lsl #2]
	ldr r9, [r7, #4]
	mla r9, r2, r9, r5
	ldr r5, [sp, #16]
	str r9, [r5, r8, lsl #2]
	ldr r8, [r6, #8]
	ldr r5, [sp, #16]
	ldr r5, [r5, r8, lsl #2]
	ldr r9, [r7, #8]
	mla r9, r2, r9, r5
	ldr r5, [sp, #16]
	str r9, [r5, r8, lsl #2]
	ldr r6, [r6, #12]
	ldr r5, [sp, #16]
	ldr r5, [r5, r6, lsl #2]
	ldr r7, [r7, #12]
	mla r7, r2, r7, r5
	ldr r5, [sp, #16]
	str r7, [r5, r6, lsl #2]
	mov r8, r4
	add r4, r4, #4
	cmp r4, r3
	bge label505
	b label64
label65:
	ldr r5, [sp, #4]
	ldr r6, [r5, r4, lsl #2]
	ldr r5, [sp, #16]
	ldr r7, [r5, r6, lsl #2]
	ldr r5, [sp, #12]
	ldr r5, [r5, r4, lsl #2]
	mla r7, r2, r5, r7
	ldr r5, [sp, #16]
	str r7, [r5, r6, lsl #2]
	add r4, r4, #1
	cmp r4, r3
	bge label559
	b label65
label559:
	mov r2, r1
	ldr r3, [sp, #8]
	cmp r1, r3
	bge label43
	ldr r4, [sp, #0]
	add r3, r4, r1, lsl #2
	ldr r4, [sp, #0]
	ldr r8, [r4, r1, lsl #2]
	ldr r4, [r3, #4]
	add r1, r1, #1
	cmp r8, r4
	bge label383
	ldr r4, [sp, #0]
	ldr r4, [r4, r1, lsl #2]
	mov r9, r8
	add r6, r8, #4
	cmp r6, r4
	bge label49
	b label55
label67:
	ldr r5, [sp, #4]
	add r6, r5, r8, lsl #2
	ldr r5, [sp, #4]
	ldr r9, [r5, r8, lsl #2]
	ldr r5, [sp, #16]
	ldr r10, [r5, r9, lsl #2]
	ldr r5, [sp, #12]
	add r7, r5, r8, lsl #2
	ldr r5, [sp, #12]
	ldr r5, [r5, r8, lsl #2]
	mla r8, r2, r5, r10
	ldr r5, [sp, #16]
	str r8, [r5, r9, lsl #2]
	ldr r8, [r6, #4]
	ldr r5, [sp, #16]
	ldr r5, [r5, r8, lsl #2]
	ldr r9, [r7, #4]
	mla r9, r2, r9, r5
	ldr r5, [sp, #16]
	str r9, [r5, r8, lsl #2]
	ldr r8, [r6, #8]
	ldr r5, [sp, #16]
	ldr r5, [r5, r8, lsl #2]
	ldr r9, [r7, #8]
	mla r9, r2, r9, r5
	ldr r5, [sp, #16]
	str r9, [r5, r8, lsl #2]
	ldr r6, [r6, #12]
	ldr r5, [sp, #16]
	ldr r5, [r5, r6, lsl #2]
	ldr r7, [r7, #12]
	mla r7, r2, r7, r5
	ldr r5, [sp, #16]
	str r7, [r5, r6, lsl #2]
	mov r8, r4
	add r4, r4, #4
	cmp r4, r3
	bge label62
	b label67
label27:
	ldr r4, [sp, #0]
	ldr r8, [r4, r2, lsl #2]
	ldr r3, [r3, #4]
	cmp r8, r3
	bge label252
	ldr r5, [sp, #16]
	ldr r2, [r5, r2, lsl #2]
	sub r2, r2, #1
	ldr r4, [sp, #0]
	ldr r3, [r4, r1, lsl #2]
	add r4, r8, #4
	cmp r4, r3
	bge label35
	b label34
label252:
	mov r2, r1
	ldr r3, [sp, #8]
	cmp r1, r3
	bge label40
	ldr r4, [sp, #0]
	add r3, r4, r1, lsl #2
	ldr r4, [sp, #0]
	ldr r8, [r4, r1, lsl #2]
	ldr r4, [r3, #4]
	add r1, r1, #1
	cmp r8, r4
	bge label147
	ldr r4, [sp, #0]
	ldr r4, [r4, r1, lsl #2]
	mov r9, r8
	add r6, r8, #4
	cmp r6, r4
	bge label22
	b label21
label763:
	mov r2, #0
	ldr r5, [sp, #16]
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #8]
	cmp r1, r3
	bge label624
	b label763
label54:
	ldr r4, [sp, #0]
	ldr r8, [r4, r2, lsl #2]
	ldr r3, [r3, #4]
	cmp r8, r3
	bge label488
	ldr r5, [sp, #20]
	ldr r2, [r5, r2, lsl #2]
	sub r2, r2, #1
	ldr r4, [sp, #0]
	ldr r3, [r4, r1, lsl #2]
	add r4, r8, #4
	cmp r4, r3
	bge label62
	b label67
label70:
	add r2, r1, #4
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label73
	b label606
label73:
	add r2, r1, #4
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label75
label616:
	ldr r5, [sp, #16]
	add r3, r5, r1, lsl #2
	mov r4, #0
	ldr r5, [sp, #16]
	str r4, [r5, r1, lsl #2]
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label75
	b label616
label606:
	ldr r5, [sp, #16]
	add r3, r5, r1, lsl #2
	mov r4, #0
	ldr r5, [sp, #16]
	str r4, [r5, r1, lsl #2]
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label73
	b label606
label601:
	ldr r5, [sp, #16]
	add r3, r5, r1, lsl #2
	mov r4, #0
	ldr r5, [sp, #16]
	str r4, [r5, r1, lsl #2]
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label70
	b label601
label100:
	ldr r5, [sp, #20]
	add r3, r5, r1, lsl #2
	mov r4, #0
	ldr r5, [sp, #20]
	str r4, [r5, r1, lsl #2]
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label7
	b label100
label7:
	add r2, r1, #4
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label10
label110:
	ldr r5, [sp, #20]
	add r3, r5, r1, lsl #2
	mov r4, #0
	ldr r5, [sp, #20]
	str r4, [r5, r1, lsl #2]
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label10
	b label110
label10:
	add r2, r1, #4
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label13
label120:
	ldr r5, [sp, #20]
	add r3, r5, r1, lsl #2
	mov r4, #0
	ldr r5, [sp, #20]
	str r4, [r5, r1, lsl #2]
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label13
	b label120
label13:
	mov r2, #0
	ldr r5, [sp, #20]
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #8]
	cmp r1, r3
	bge label133
	ldr r5, [sp, #20]
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #8]
	cmp r1, r3
	bge label133
	ldr r5, [sp, #20]
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #8]
	cmp r1, r3
	bge label133
	ldr r5, [sp, #20]
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #8]
	cmp r1, r3
	bge label133
	ldr r5, [sp, #20]
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #8]
	cmp r1, r3
	bge label133
	ldr r5, [sp, #20]
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #8]
	cmp r1, r3
	bge label133
	ldr r5, [sp, #20]
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #8]
	cmp r1, r3
	bge label133
	ldr r5, [sp, #20]
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #8]
	cmp r1, r3
	bge label133
	ldr r5, [sp, #20]
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #8]
	cmp r1, r3
	bge label133
	ldr r5, [sp, #20]
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #8]
	cmp r1, r3
	bge label133
	b label762
label133:
	mov r2, #0
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label40
	ldr r4, [sp, #0]
	add r3, r4, r2, lsl #2
	ldr r4, [sp, #0]
	ldr r8, [r4, r2, lsl #2]
	ldr r4, [r3, #4]
	add r1, r2, #1
	cmp r8, r4
	bge label147
	ldr r4, [sp, #0]
	ldr r4, [r4, r1, lsl #2]
	mov r9, r8
	add r6, r8, #4
	cmp r6, r4
	bge label22
	b label21
label762:
	mov r2, #0
	ldr r5, [sp, #20]
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #8]
	cmp r1, r3
	bge label133
	b label762
