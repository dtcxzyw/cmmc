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
	sub sp, sp, #36
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r1, r0
	str r0, [sp, #0]
	bl getarray
	sub r0, r0, #1
	str r0, [sp, #4]
	movw r0, #:lower16:y
	movt r0, #:upper16:y
	mov r1, r0
	str r0, [sp, #8]
	bl getarray
	movw r0, #:lower16:v
	movt r0, #:upper16:v
	mov r4, r0
	str r0, [sp, #12]
	bl getarray
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	mov r1, r0
	str r0, [sp, #16]
	bl getarray
	mov r0, #39
	bl _sysy_starttime
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	str r1, [sp, #20]
	mov r0, #0
	str r0, [sp, #24]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble label96
	mov r2, #0
	add r3, r2, #4
	ldr r0, [sp, #4]
	cmp r3, r0
	bge label7
label669:
	ldr r1, [sp, #20]
	add r0, r1, r2, lsl #2
	mov r4, #0
	str r4, [r1, r2, lsl #2]
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r0, [sp, #4]
	cmp r3, r0
	bge label7
	b label100
label96:
	mov r2, #0
	ldr r0, [sp, #4]
	cmp r2, r0
	bge label40
	ldr r1, [sp, #0]
	add r5, r1, r2, lsl #2
	ldr r8, [r1, r2, lsl #2]
	ldr r1, [r5, #4]
	add r0, r2, #1
	cmp r8, r1
	bge label28
	ldr r1, [sp, #0]
	ldr r3, [r1, r0, lsl #2]
	mov r9, r8
	add r6, r8, #4
	cmp r6, r3
	bge label155
	b label27
label54:
	ldr r0, [sp, #24]
	add r0, r0, #1
	cmp r0, #100
	bge label55
	str r0, [sp, #24]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble label96
	mov r2, #0
	add r3, r2, #4
	ldr r0, [sp, #4]
	cmp r3, r0
	bge label7
	b label669
label57:
	cmp r8, r1
	bge label424
	ldr r1, [sp, #20]
	ldr r1, [r1, r2, lsl #2]
	sub r2, r1, #1
	ldr r1, [sp, #0]
	ldr r3, [r1, r0, lsl #2]
	add r5, r8, #4
	cmp r5, r3
	bge label436
	b label63
label424:
	mov r2, r0
	ldr r0, [sp, #4]
	cmp r2, r0
	bge label54
	ldr r1, [sp, #0]
	add r5, r1, r2, lsl #2
	ldr r8, [r1, r2, lsl #2]
	ldr r1, [r5, #4]
	add r0, r2, #1
	cmp r8, r1
	bge label57
	ldr r1, [sp, #0]
	ldr r3, [r1, r0, lsl #2]
	mov r9, r8
	add r6, r8, #4
	cmp r6, r3
	bge label541
	b label72
label155:
	mov r8, r9
	add r6, r9, #4
	cmp r6, r3
	bge label160
	b label23
label160:
	mov r6, r8
	b label24
label23:
	ldr r1, [sp, #8]
	add r7, r1, r8, lsl #2
	ldr r10, [r1, r8, lsl #2]
	ldr r1, [sp, #20]
	ldr r11, [r1, r10, lsl #2]
	ldr r4, [sp, #12]
	add r9, r4, r8, lsl #2
	ldr r4, [r4, r8, lsl #2]
	add r4, r11, r4
	str r4, [r1, r10, lsl #2]
	ldr r4, [r7, #4]
	ldr r8, [r1, r4, lsl #2]
	ldr r10, [r9, #4]
	add r8, r8, r10
	str r8, [r1, r4, lsl #2]
	ldr r4, [r7, #8]
	ldr r8, [r1, r4, lsl #2]
	ldr r10, [r9, #8]
	add r8, r8, r10
	str r8, [r1, r4, lsl #2]
	ldr r4, [r7, #12]
	ldr r7, [r1, r4, lsl #2]
	ldr r8, [r9, #12]
	add r7, r7, r8
	str r7, [r1, r4, lsl #2]
	mov r8, r6
	add r6, r6, #4
	cmp r6, r3
	bge label160
	b label23
label24:
	ldr r1, [sp, #8]
	ldr r7, [r1, r6, lsl #2]
	ldr r1, [sp, #20]
	ldr r8, [r1, r7, lsl #2]
	ldr r4, [sp, #12]
	ldr r4, [r4, r6, lsl #2]
	add r4, r8, r4
	str r4, [r1, r7, lsl #2]
	add r6, r6, #1
	cmp r6, r3
	bge label26
	b label24
label436:
	mov r7, r8
	add r5, r8, #4
	cmp r5, r3
	bge label479
	b label68
label63:
	ldr r1, [sp, #8]
	add r6, r1, r8, lsl #2
	ldr r9, [r1, r8, lsl #2]
	ldr r1, [sp, #16]
	ldr r10, [r1, r9, lsl #2]
	ldr r4, [sp, #12]
	add r7, r4, r8, lsl #2
	ldr r4, [r4, r8, lsl #2]
	mla r4, r2, r4, r10
	str r4, [r1, r9, lsl #2]
	ldr r4, [r6, #4]
	ldr r8, [r1, r4, lsl #2]
	ldr r9, [r7, #4]
	mla r8, r2, r9, r8
	str r8, [r1, r4, lsl #2]
	ldr r4, [r6, #8]
	ldr r8, [r1, r4, lsl #2]
	ldr r9, [r7, #8]
	mla r8, r2, r9, r8
	str r8, [r1, r4, lsl #2]
	ldr r4, [r6, #12]
	ldr r6, [r1, r4, lsl #2]
	ldr r7, [r7, #12]
	mla r6, r2, r7, r6
	str r6, [r1, r4, lsl #2]
	mov r8, r5
	add r5, r5, #4
	cmp r5, r3
	bge label436
	b label63
label68:
	ldr r1, [sp, #8]
	add r6, r1, r7, lsl #2
	ldr r9, [r1, r7, lsl #2]
	ldr r1, [sp, #16]
	ldr r10, [r1, r9, lsl #2]
	ldr r4, [sp, #12]
	add r8, r4, r7, lsl #2
	ldr r4, [r4, r7, lsl #2]
	mla r4, r2, r4, r10
	str r4, [r1, r9, lsl #2]
	ldr r4, [r6, #4]
	ldr r7, [r1, r4, lsl #2]
	ldr r9, [r8, #4]
	mla r7, r2, r9, r7
	str r7, [r1, r4, lsl #2]
	ldr r4, [r6, #8]
	ldr r7, [r1, r4, lsl #2]
	ldr r9, [r8, #8]
	mla r7, r2, r9, r7
	str r7, [r1, r4, lsl #2]
	ldr r4, [r6, #12]
	ldr r6, [r1, r4, lsl #2]
	ldr r7, [r8, #12]
	mla r6, r2, r7, r6
	str r6, [r1, r4, lsl #2]
	mov r7, r5
	add r5, r5, #4
	cmp r5, r3
	bge label479
	b label68
label479:
	mov r5, r7
label66:
	ldr r1, [sp, #8]
	ldr r6, [r1, r5, lsl #2]
	ldr r1, [sp, #16]
	ldr r7, [r1, r6, lsl #2]
	ldr r4, [sp, #12]
	ldr r4, [r4, r5, lsl #2]
	mla r4, r2, r4, r7
	str r4, [r1, r6, lsl #2]
	add r5, r5, #1
	cmp r5, r3
	bge label495
	b label66
label495:
	mov r2, r0
	ldr r0, [sp, #4]
	cmp r2, r0
	bge label54
	ldr r1, [sp, #0]
	add r5, r1, r2, lsl #2
	ldr r8, [r1, r2, lsl #2]
	ldr r1, [r5, #4]
	add r0, r2, #1
	cmp r8, r1
	bge label57
	ldr r1, [sp, #0]
	ldr r3, [r1, r0, lsl #2]
	mov r9, r8
	add r6, r8, #4
	cmp r6, r3
	bge label541
	b label72
label43:
	add r3, r2, #4
	ldr r0, [sp, #4]
	cmp r3, r0
	bge label46
label373:
	ldr r1, [sp, #16]
	add r0, r1, r2, lsl #2
	mov r4, #0
	str r4, [r1, r2, lsl #2]
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r0, [sp, #4]
	cmp r3, r0
	bge label46
	b label373
label46:
	add r3, r2, #4
	ldr r0, [sp, #4]
	cmp r3, r0
	bge label384
label383:
	ldr r1, [sp, #16]
	add r0, r1, r2, lsl #2
	mov r4, #0
	str r4, [r1, r2, lsl #2]
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r0, [sp, #4]
	cmp r3, r0
	bge label384
	b label383
label384:
	mov r0, r2
	mov r2, #0
	ldr r1, [sp, #16]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r1, r0
	bge label391
	mov r0, r1
	ldr r1, [sp, #16]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r1, r0
	bge label391
	mov r0, r1
	ldr r1, [sp, #16]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r1, r0
	bge label391
	mov r0, r1
	ldr r1, [sp, #16]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r1, r0
	bge label391
	mov r0, r1
	ldr r1, [sp, #16]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r1, r0
	bge label391
	mov r0, r1
	ldr r1, [sp, #16]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r1, r0
	bge label391
	mov r0, r1
	ldr r1, [sp, #16]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r1, r0
	bge label391
	mov r0, r1
	ldr r1, [sp, #16]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r1, r0
	bge label391
	mov r0, r1
	ldr r1, [sp, #16]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r1, r0
	bge label391
	mov r0, r1
	ldr r1, [sp, #16]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r1, r0
	bge label391
	b label769
label391:
	mov r2, #0
	ldr r0, [sp, #4]
	cmp r2, r0
	bge label54
	ldr r1, [sp, #0]
	add r5, r1, r2, lsl #2
	ldr r8, [r1, r2, lsl #2]
	ldr r1, [r5, #4]
	add r0, r2, #1
	cmp r8, r1
	bge label57
	ldr r1, [sp, #0]
	ldr r3, [r1, r0, lsl #2]
	mov r9, r8
	add r6, r8, #4
	cmp r6, r3
	bge label541
label72:
	ldr r1, [sp, #8]
	add r7, r1, r9, lsl #2
	ldr r10, [r1, r9, lsl #2]
	ldr r1, [sp, #16]
	ldr r11, [r1, r10, lsl #2]
	ldr r4, [sp, #12]
	add r8, r4, r9, lsl #2
	ldr r4, [r4, r9, lsl #2]
	add r4, r11, r4
	str r4, [r1, r10, lsl #2]
	ldr r4, [r7, #4]
	ldr r9, [r1, r4, lsl #2]
	ldr r10, [r8, #4]
	add r9, r9, r10
	str r9, [r1, r4, lsl #2]
	ldr r4, [r7, #8]
	ldr r9, [r1, r4, lsl #2]
	ldr r10, [r8, #8]
	add r9, r9, r10
	str r9, [r1, r4, lsl #2]
	ldr r4, [r7, #12]
	ldr r7, [r1, r4, lsl #2]
	ldr r8, [r8, #12]
	add r7, r7, r8
	str r7, [r1, r4, lsl #2]
	mov r9, r6
	add r6, r6, #4
	cmp r6, r3
	bge label541
	b label72
label541:
	mov r8, r9
	add r6, r9, #4
	cmp r6, r3
	bge label580
	b label78
label580:
	mov r6, r8
label75:
	ldr r1, [sp, #8]
	ldr r7, [r1, r6, lsl #2]
	ldr r1, [sp, #16]
	ldr r8, [r1, r7, lsl #2]
	ldr r4, [sp, #12]
	ldr r4, [r4, r6, lsl #2]
	add r4, r8, r4
	str r4, [r1, r7, lsl #2]
	add r6, r6, #1
	cmp r6, r3
	bge label77
	b label75
label78:
	ldr r1, [sp, #8]
	add r7, r1, r8, lsl #2
	ldr r10, [r1, r8, lsl #2]
	ldr r1, [sp, #16]
	ldr r11, [r1, r10, lsl #2]
	ldr r4, [sp, #12]
	add r9, r4, r8, lsl #2
	ldr r4, [r4, r8, lsl #2]
	add r4, r11, r4
	str r4, [r1, r10, lsl #2]
	ldr r4, [r7, #4]
	ldr r8, [r1, r4, lsl #2]
	ldr r10, [r9, #4]
	add r8, r8, r10
	str r8, [r1, r4, lsl #2]
	ldr r4, [r7, #8]
	ldr r8, [r1, r4, lsl #2]
	ldr r10, [r9, #8]
	add r8, r8, r10
	str r8, [r1, r4, lsl #2]
	ldr r4, [r7, #12]
	ldr r7, [r1, r4, lsl #2]
	ldr r8, [r9, #12]
	add r7, r7, r8
	str r7, [r1, r4, lsl #2]
	mov r8, r6
	add r6, r6, #4
	cmp r6, r3
	bge label580
	b label78
label128:
	mov r2, #0
	ldr r0, [sp, #4]
	cmp r2, r0
	bge label40
	ldr r1, [sp, #0]
	add r5, r1, r2, lsl #2
	ldr r8, [r1, r2, lsl #2]
	ldr r1, [r5, #4]
	add r0, r2, #1
	cmp r8, r1
	bge label28
	ldr r1, [sp, #0]
	ldr r3, [r1, r0, lsl #2]
	mov r9, r8
	add r6, r8, #4
	cmp r6, r3
	bge label155
label27:
	ldr r1, [sp, #8]
	add r7, r1, r9, lsl #2
	ldr r10, [r1, r9, lsl #2]
	ldr r1, [sp, #20]
	ldr r11, [r1, r10, lsl #2]
	ldr r4, [sp, #12]
	add r8, r4, r9, lsl #2
	ldr r4, [r4, r9, lsl #2]
	add r4, r11, r4
	str r4, [r1, r10, lsl #2]
	ldr r4, [r7, #4]
	ldr r9, [r1, r4, lsl #2]
	ldr r10, [r8, #4]
	add r9, r9, r10
	str r9, [r1, r4, lsl #2]
	ldr r4, [r7, #8]
	ldr r9, [r1, r4, lsl #2]
	ldr r10, [r8, #8]
	add r9, r9, r10
	str r9, [r1, r4, lsl #2]
	ldr r4, [r7, #12]
	ldr r7, [r1, r4, lsl #2]
	ldr r8, [r8, #12]
	add r7, r7, r8
	str r7, [r1, r4, lsl #2]
	mov r9, r6
	add r6, r6, #4
	cmp r6, r3
	bge label155
	b label27
label28:
	cmp r8, r1
	bge label252
	ldr r1, [sp, #16]
	ldr r1, [r1, r2, lsl #2]
	sub r2, r1, #1
	ldr r1, [sp, #0]
	ldr r3, [r1, r0, lsl #2]
	add r5, r8, #4
	cmp r5, r3
	bge label264
label34:
	ldr r1, [sp, #8]
	add r6, r1, r8, lsl #2
	ldr r9, [r1, r8, lsl #2]
	ldr r1, [sp, #20]
	ldr r10, [r1, r9, lsl #2]
	ldr r4, [sp, #12]
	add r7, r4, r8, lsl #2
	ldr r4, [r4, r8, lsl #2]
	mla r4, r2, r4, r10
	str r4, [r1, r9, lsl #2]
	ldr r4, [r6, #4]
	ldr r8, [r1, r4, lsl #2]
	ldr r9, [r7, #4]
	mla r8, r2, r9, r8
	str r8, [r1, r4, lsl #2]
	ldr r4, [r6, #8]
	ldr r8, [r1, r4, lsl #2]
	ldr r9, [r7, #8]
	mla r8, r2, r9, r8
	str r8, [r1, r4, lsl #2]
	ldr r4, [r6, #12]
	ldr r6, [r1, r4, lsl #2]
	ldr r7, [r7, #12]
	mla r6, r2, r7, r6
	str r6, [r1, r4, lsl #2]
	mov r8, r5
	add r5, r5, #4
	cmp r5, r3
	bge label264
	b label34
label264:
	mov r7, r8
	add r5, r8, #4
	cmp r5, r3
	bge label307
	b label37
label307:
	mov r5, r7
label38:
	ldr r1, [sp, #8]
	ldr r6, [r1, r5, lsl #2]
	ldr r1, [sp, #20]
	ldr r7, [r1, r6, lsl #2]
	ldr r4, [sp, #12]
	ldr r4, [r4, r5, lsl #2]
	mla r4, r2, r4, r7
	str r4, [r1, r6, lsl #2]
	add r5, r5, #1
	cmp r5, r3
	bge label361
	b label38
label361:
	mov r2, r0
	ldr r0, [sp, #4]
	cmp r2, r0
	bge label40
	ldr r1, [sp, #0]
	add r5, r1, r2, lsl #2
	ldr r8, [r1, r2, lsl #2]
	ldr r1, [r5, #4]
	add r0, r2, #1
	cmp r8, r1
	bge label28
	ldr r1, [sp, #0]
	ldr r3, [r1, r0, lsl #2]
	mov r9, r8
	add r6, r8, #4
	cmp r6, r3
	bge label155
	b label27
label37:
	ldr r1, [sp, #8]
	add r6, r1, r7, lsl #2
	ldr r9, [r1, r7, lsl #2]
	ldr r1, [sp, #20]
	ldr r10, [r1, r9, lsl #2]
	ldr r4, [sp, #12]
	add r8, r4, r7, lsl #2
	ldr r4, [r4, r7, lsl #2]
	mla r4, r2, r4, r10
	str r4, [r1, r9, lsl #2]
	ldr r4, [r6, #4]
	ldr r7, [r1, r4, lsl #2]
	ldr r9, [r8, #4]
	mla r7, r2, r9, r7
	str r7, [r1, r4, lsl #2]
	ldr r4, [r6, #8]
	ldr r7, [r1, r4, lsl #2]
	ldr r9, [r8, #8]
	mla r7, r2, r9, r7
	str r7, [r1, r4, lsl #2]
	ldr r4, [r6, #12]
	ldr r6, [r1, r4, lsl #2]
	ldr r7, [r8, #12]
	mla r6, r2, r7, r6
	str r6, [r1, r4, lsl #2]
	mov r7, r5
	add r5, r5, #4
	cmp r5, r3
	bge label307
	b label37
label252:
	mov r2, r0
	ldr r0, [sp, #4]
	cmp r2, r0
	bge label40
	ldr r1, [sp, #0]
	add r5, r1, r2, lsl #2
	ldr r8, [r1, r2, lsl #2]
	ldr r1, [r5, #4]
	add r0, r2, #1
	cmp r8, r1
	bge label28
	ldr r1, [sp, #0]
	ldr r3, [r1, r0, lsl #2]
	mov r9, r8
	add r6, r8, #4
	cmp r6, r3
	bge label155
	b label27
label40:
	ldr r0, [sp, #4]
	cmp r0, #0
	ble label364
	mov r2, #0
	add r3, r2, #4
	ldr r0, [sp, #4]
	cmp r3, r0
	bge label43
	ldr r1, [sp, #16]
	add r0, r1, r2, lsl #2
	mov r4, #0
	str r4, [r1, r2, lsl #2]
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r0, [sp, #4]
	cmp r3, r0
	bge label43
	b label368
label364:
	mov r2, #0
	ldr r0, [sp, #4]
	cmp r2, r0
	bge label54
	ldr r1, [sp, #0]
	add r5, r1, r2, lsl #2
	ldr r8, [r1, r2, lsl #2]
	ldr r1, [r5, #4]
	add r0, r2, #1
	cmp r8, r1
	bge label57
	ldr r1, [sp, #0]
	ldr r3, [r1, r0, lsl #2]
	mov r9, r8
	add r6, r8, #4
	cmp r6, r3
	bge label541
	b label72
label769:
	mov r0, r1
	mov r2, #0
	ldr r1, [sp, #16]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r1, r0
	bge label391
	b label769
label9:
	add r3, r2, #4
	ldr r0, [sp, #4]
	cmp r3, r0
	bge label116
label115:
	ldr r1, [sp, #20]
	add r0, r1, r2, lsl #2
	mov r4, #0
	str r4, [r1, r2, lsl #2]
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r0, [sp, #4]
	cmp r3, r0
	bge label116
	b label115
label116:
	mov r0, r2
	mov r2, #0
	ldr r1, [sp, #20]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r1, r0
	bge label128
	mov r0, r1
	ldr r1, [sp, #20]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r1, r0
	bge label128
	mov r0, r1
	ldr r1, [sp, #20]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r1, r0
	bge label128
	mov r0, r1
	ldr r1, [sp, #20]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r1, r0
	bge label128
	mov r0, r1
	ldr r1, [sp, #20]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r1, r0
	bge label128
	mov r0, r1
	ldr r1, [sp, #20]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r1, r0
	bge label128
	mov r0, r1
	ldr r1, [sp, #20]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r1, r0
	bge label128
	mov r0, r1
	ldr r1, [sp, #20]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r1, r0
	bge label128
	mov r0, r1
	ldr r1, [sp, #20]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r1, r0
	bge label128
	mov r0, r1
	ldr r1, [sp, #20]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r1, r0
	bge label128
label768:
	mov r0, r1
	mov r2, #0
	ldr r1, [sp, #20]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r1, r0
	bge label128
	b label768
label77:
	ldr r1, [sp, #0]
	ldr r8, [r1, r2, lsl #2]
	ldr r1, [r5, #4]
	cmp r8, r1
	bge label424
	ldr r1, [sp, #20]
	ldr r1, [r1, r2, lsl #2]
	sub r2, r1, #1
	ldr r1, [sp, #0]
	ldr r3, [r1, r0, lsl #2]
	add r5, r8, #4
	cmp r5, r3
	bge label436
	b label63
label26:
	ldr r1, [sp, #0]
	ldr r8, [r1, r2, lsl #2]
	ldr r1, [r5, #4]
	cmp r8, r1
	bge label252
	ldr r1, [sp, #16]
	ldr r1, [r1, r2, lsl #2]
	sub r2, r1, #1
	ldr r1, [sp, #0]
	ldr r3, [r1, r0, lsl #2]
	add r5, r8, #4
	cmp r5, r3
	bge label264
	b label34
label368:
	ldr r1, [sp, #16]
	add r0, r1, r2, lsl #2
	mov r4, #0
	str r4, [r1, r2, lsl #2]
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r0, [sp, #4]
	cmp r3, r0
	bge label43
	b label368
label100:
	ldr r1, [sp, #20]
	add r0, r1, r2, lsl #2
	mov r4, #0
	str r4, [r1, r2, lsl #2]
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r0, [sp, #4]
	cmp r3, r0
	bge label7
	b label100
label7:
	add r3, r2, #4
	ldr r0, [sp, #4]
	cmp r3, r0
	bge label9
label110:
	ldr r1, [sp, #20]
	add r0, r1, r2, lsl #2
	mov r4, #0
	str r4, [r1, r2, lsl #2]
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	mov r2, r3
	add r3, r3, #4
	ldr r0, [sp, #4]
	cmp r3, r0
	bge label9
	b label110
label55:
	mov r0, #47
	bl _sysy_stoptime
	ldr r0, [sp, #4]
	ldr r1, [sp, #20]
	bl putarray
	mov r0, #0
	add sp, sp, #36
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
