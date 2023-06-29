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
	add r2, r1, #8
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label7
label6:
	ldr r5, [sp, #20]
	add r3, r5, r1, lsl #2
	mov r4, #0
	ldr r5, [sp, #20]
	str r4, [r5, r1, lsl #2]
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #12]
	str r4, [r3, #16]
	str r4, [r3, #20]
	str r4, [r3, #24]
	str r4, [r3, #28]
	mov r1, r2
	add r2, r2, #8
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label7
	b label6
label7:
	add r2, r1, #8
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label10
label9:
	ldr r5, [sp, #20]
	add r3, r5, r1, lsl #2
	mov r4, #0
	ldr r5, [sp, #20]
	str r4, [r5, r1, lsl #2]
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #12]
	str r4, [r3, #16]
	str r4, [r3, #20]
	str r4, [r3, #24]
	str r4, [r3, #28]
	mov r1, r2
	add r2, r2, #8
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label10
	b label9
label96:
	mov r2, #0
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label40
	b label17
label43:
	add r0, r0, #1
	cmp r0, #100
	bge label44
	ldr r3, [sp, #8]
	cmp r3, #0
	ble label96
	mov r1, #0
	add r2, r1, #8
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label7
	b label6
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
label17:
	ldr r4, [sp, #0]
	add r3, r4, r2, lsl #2
	ldr r4, [sp, #0]
	ldr r8, [r4, r2, lsl #2]
	ldr r4, [r3, #4]
	add r1, r2, #1
	cmp r8, r4
	bge label159
	ldr r4, [sp, #0]
	ldr r4, [r4, r1, lsl #2]
	mov r9, r8
	add r6, r8, #8
	cmp r6, r4
	bge label21
	b label27
label159:
	mov r3, r4
	cmp r8, r4
	bge label328
	b label31
label27:
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
	ldr r9, [r7, #12]
	ldr r5, [sp, #20]
	ldr r5, [r5, r9, lsl #2]
	ldr r10, [r8, #12]
	add r10, r5, r10
	ldr r5, [sp, #20]
	str r10, [r5, r9, lsl #2]
	ldr r9, [r7, #16]
	ldr r5, [sp, #20]
	ldr r5, [r5, r9, lsl #2]
	ldr r10, [r8, #16]
	add r10, r5, r10
	ldr r5, [sp, #20]
	str r10, [r5, r9, lsl #2]
	ldr r9, [r7, #20]
	ldr r5, [sp, #20]
	ldr r5, [r5, r9, lsl #2]
	ldr r10, [r8, #20]
	add r10, r5, r10
	ldr r5, [sp, #20]
	str r10, [r5, r9, lsl #2]
	ldr r9, [r7, #24]
	ldr r5, [sp, #20]
	ldr r5, [r5, r9, lsl #2]
	ldr r10, [r8, #24]
	add r10, r5, r10
	ldr r5, [sp, #20]
	str r10, [r5, r9, lsl #2]
	ldr r7, [r7, #28]
	ldr r5, [sp, #20]
	ldr r5, [r5, r7, lsl #2]
	ldr r8, [r8, #28]
	add r8, r5, r8
	ldr r5, [sp, #20]
	str r8, [r5, r7, lsl #2]
	mov r9, r6
	add r6, r6, #8
	cmp r6, r4
	bge label21
	b label27
label328:
	mov r2, r1
	ldr r3, [sp, #8]
	cmp r1, r3
	bge label40
	b label17
label31:
	ldr r5, [sp, #16]
	ldr r2, [r5, r2, lsl #2]
	sub r2, r2, #1
	ldr r4, [sp, #0]
	ldr r3, [r4, r1, lsl #2]
	add r4, r8, #8
	cmp r4, r3
	bge label35
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
	ldr r8, [r6, #12]
	ldr r5, [sp, #20]
	ldr r5, [r5, r8, lsl #2]
	ldr r9, [r7, #12]
	mla r9, r2, r9, r5
	ldr r5, [sp, #20]
	str r9, [r5, r8, lsl #2]
	ldr r8, [r6, #16]
	ldr r5, [sp, #20]
	ldr r5, [r5, r8, lsl #2]
	ldr r9, [r7, #16]
	mla r9, r2, r9, r5
	ldr r5, [sp, #20]
	str r9, [r5, r8, lsl #2]
	ldr r8, [r6, #20]
	ldr r5, [sp, #20]
	ldr r5, [r5, r8, lsl #2]
	ldr r9, [r7, #20]
	mla r9, r2, r9, r5
	ldr r5, [sp, #20]
	str r9, [r5, r8, lsl #2]
	ldr r8, [r6, #24]
	ldr r5, [sp, #20]
	ldr r5, [r5, r8, lsl #2]
	ldr r9, [r7, #24]
	mla r9, r2, r9, r5
	ldr r5, [sp, #20]
	str r9, [r5, r8, lsl #2]
	ldr r6, [r6, #28]
	ldr r5, [sp, #20]
	ldr r5, [r5, r6, lsl #2]
	ldr r7, [r7, #28]
	mla r7, r2, r7, r5
	ldr r5, [sp, #20]
	str r7, [r5, r6, lsl #2]
	mov r8, r4
	add r4, r4, #8
	cmp r4, r3
	bge label35
	b label34
label35:
	add r4, r8, #8
	cmp r4, r3
	bge label419
	b label39
label419:
	mov r4, r8
label37:
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
	bge label435
	b label37
label435:
	mov r2, r1
	ldr r3, [sp, #8]
	cmp r1, r3
	bge label40
	b label17
label39:
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
	ldr r8, [r6, #12]
	ldr r5, [sp, #20]
	ldr r5, [r5, r8, lsl #2]
	ldr r9, [r7, #12]
	mla r9, r2, r9, r5
	ldr r5, [sp, #20]
	str r9, [r5, r8, lsl #2]
	ldr r8, [r6, #16]
	ldr r5, [sp, #20]
	ldr r5, [r5, r8, lsl #2]
	ldr r9, [r7, #16]
	mla r9, r2, r9, r5
	ldr r5, [sp, #20]
	str r9, [r5, r8, lsl #2]
	ldr r8, [r6, #20]
	ldr r5, [sp, #20]
	ldr r5, [r5, r8, lsl #2]
	ldr r9, [r7, #20]
	mla r9, r2, r9, r5
	ldr r5, [sp, #20]
	str r9, [r5, r8, lsl #2]
	ldr r8, [r6, #24]
	ldr r5, [sp, #20]
	ldr r5, [r5, r8, lsl #2]
	ldr r9, [r7, #24]
	mla r9, r2, r9, r5
	ldr r5, [sp, #20]
	str r9, [r5, r8, lsl #2]
	ldr r6, [r6, #28]
	ldr r5, [sp, #20]
	ldr r5, [r5, r6, lsl #2]
	ldr r7, [r7, #28]
	mla r7, r2, r7, r5
	ldr r5, [sp, #20]
	str r7, [r5, r6, lsl #2]
	mov r8, r4
	add r4, r4, #8
	cmp r4, r3
	bge label419
	b label39
label21:
	add r6, r9, #8
	cmp r6, r4
	bge label172
	b label23
label172:
	mov r6, r9
label24:
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
	bge label26
	b label24
label26:
	ldr r4, [sp, #0]
	ldr r8, [r4, r2, lsl #2]
	ldr r3, [r3, #4]
	cmp r8, r3
	bge label328
	b label31
label23:
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
	ldr r9, [r7, #12]
	ldr r5, [sp, #20]
	ldr r5, [r5, r9, lsl #2]
	ldr r10, [r8, #12]
	add r10, r5, r10
	ldr r5, [sp, #20]
	str r10, [r5, r9, lsl #2]
	ldr r9, [r7, #16]
	ldr r5, [sp, #20]
	ldr r5, [r5, r9, lsl #2]
	ldr r10, [r8, #16]
	add r10, r5, r10
	ldr r5, [sp, #20]
	str r10, [r5, r9, lsl #2]
	ldr r9, [r7, #20]
	ldr r5, [sp, #20]
	ldr r5, [r5, r9, lsl #2]
	ldr r10, [r8, #20]
	add r10, r5, r10
	ldr r5, [sp, #20]
	str r10, [r5, r9, lsl #2]
	ldr r9, [r7, #24]
	ldr r5, [sp, #20]
	ldr r5, [r5, r9, lsl #2]
	ldr r10, [r8, #24]
	add r10, r5, r10
	ldr r5, [sp, #20]
	str r10, [r5, r9, lsl #2]
	ldr r7, [r7, #28]
	ldr r5, [sp, #20]
	ldr r5, [r5, r7, lsl #2]
	ldr r8, [r8, #28]
	add r8, r5, r8
	ldr r5, [sp, #20]
	str r8, [r5, r7, lsl #2]
	mov r9, r6
	add r6, r6, #8
	cmp r6, r4
	bge label172
	b label23
label40:
	ldr r3, [sp, #8]
	cmp r3, #0
	ble label512
	mov r1, #0
	add r2, r1, #8
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label70
	b label78
label512:
	mov r2, #0
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label43
label45:
	ldr r4, [sp, #0]
	add r3, r4, r2, lsl #2
	ldr r4, [sp, #0]
	ldr r8, [r4, r2, lsl #2]
	ldr r4, [r3, #4]
	add r1, r2, #1
	cmp r8, r4
	bge label531
	ldr r4, [sp, #0]
	ldr r4, [r4, r1, lsl #2]
	mov r9, r8
	add r6, r8, #8
	cmp r6, r4
	bge label62
	b label61
label531:
	mov r3, r4
	cmp r8, r4
	bge label535
	b label49
label535:
	mov r2, r1
	ldr r3, [sp, #8]
	cmp r1, r3
	bge label43
	b label45
label49:
	ldr r5, [sp, #20]
	ldr r2, [r5, r2, lsl #2]
	sub r2, r2, #1
	ldr r4, [sp, #0]
	ldr r3, [r4, r1, lsl #2]
	add r4, r8, #8
	cmp r4, r3
	bge label53
	b label52
label53:
	add r4, r8, #8
	cmp r4, r3
	bge label626
label55:
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
	ldr r8, [r6, #12]
	ldr r5, [sp, #16]
	ldr r5, [r5, r8, lsl #2]
	ldr r9, [r7, #12]
	mla r9, r2, r9, r5
	ldr r5, [sp, #16]
	str r9, [r5, r8, lsl #2]
	ldr r8, [r6, #16]
	ldr r5, [sp, #16]
	ldr r5, [r5, r8, lsl #2]
	ldr r9, [r7, #16]
	mla r9, r2, r9, r5
	ldr r5, [sp, #16]
	str r9, [r5, r8, lsl #2]
	ldr r8, [r6, #20]
	ldr r5, [sp, #16]
	ldr r5, [r5, r8, lsl #2]
	ldr r9, [r7, #20]
	mla r9, r2, r9, r5
	ldr r5, [sp, #16]
	str r9, [r5, r8, lsl #2]
	ldr r8, [r6, #24]
	ldr r5, [sp, #16]
	ldr r5, [r5, r8, lsl #2]
	ldr r9, [r7, #24]
	mla r9, r2, r9, r5
	ldr r5, [sp, #16]
	str r9, [r5, r8, lsl #2]
	ldr r6, [r6, #28]
	ldr r5, [sp, #16]
	ldr r5, [r5, r6, lsl #2]
	ldr r7, [r7, #28]
	mla r7, r2, r7, r5
	ldr r5, [sp, #16]
	str r7, [r5, r6, lsl #2]
	mov r8, r4
	add r4, r4, #8
	cmp r4, r3
	bge label626
	b label55
label66:
	ldr r4, [sp, #0]
	ldr r8, [r4, r2, lsl #2]
	ldr r3, [r3, #4]
	cmp r8, r3
	bge label535
	b label49
label52:
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
	ldr r8, [r6, #12]
	ldr r5, [sp, #16]
	ldr r5, [r5, r8, lsl #2]
	ldr r9, [r7, #12]
	mla r9, r2, r9, r5
	ldr r5, [sp, #16]
	str r9, [r5, r8, lsl #2]
	ldr r8, [r6, #16]
	ldr r5, [sp, #16]
	ldr r5, [r5, r8, lsl #2]
	ldr r9, [r7, #16]
	mla r9, r2, r9, r5
	ldr r5, [sp, #16]
	str r9, [r5, r8, lsl #2]
	ldr r8, [r6, #20]
	ldr r5, [sp, #16]
	ldr r5, [r5, r8, lsl #2]
	ldr r9, [r7, #20]
	mla r9, r2, r9, r5
	ldr r5, [sp, #16]
	str r9, [r5, r8, lsl #2]
	ldr r8, [r6, #24]
	ldr r5, [sp, #16]
	ldr r5, [r5, r8, lsl #2]
	ldr r9, [r7, #24]
	mla r9, r2, r9, r5
	ldr r5, [sp, #16]
	str r9, [r5, r8, lsl #2]
	ldr r6, [r6, #28]
	ldr r5, [sp, #16]
	ldr r5, [r5, r6, lsl #2]
	ldr r7, [r7, #28]
	mla r7, r2, r7, r5
	ldr r5, [sp, #16]
	str r7, [r5, r6, lsl #2]
	mov r8, r4
	add r4, r4, #8
	cmp r4, r3
	bge label53
	b label52
label626:
	mov r4, r8
label56:
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
	bge label716
	b label56
label716:
	mov r2, r1
	ldr r3, [sp, #8]
	cmp r1, r3
	bge label43
	b label45
label61:
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
	ldr r9, [r7, #12]
	ldr r5, [sp, #16]
	ldr r5, [r5, r9, lsl #2]
	ldr r10, [r8, #12]
	add r10, r5, r10
	ldr r5, [sp, #16]
	str r10, [r5, r9, lsl #2]
	ldr r9, [r7, #16]
	ldr r5, [sp, #16]
	ldr r5, [r5, r9, lsl #2]
	ldr r10, [r8, #16]
	add r10, r5, r10
	ldr r5, [sp, #16]
	str r10, [r5, r9, lsl #2]
	ldr r9, [r7, #20]
	ldr r5, [sp, #16]
	ldr r5, [r5, r9, lsl #2]
	ldr r10, [r8, #20]
	add r10, r5, r10
	ldr r5, [sp, #16]
	str r10, [r5, r9, lsl #2]
	ldr r9, [r7, #24]
	ldr r5, [sp, #16]
	ldr r5, [r5, r9, lsl #2]
	ldr r10, [r8, #24]
	add r10, r5, r10
	ldr r5, [sp, #16]
	str r10, [r5, r9, lsl #2]
	ldr r7, [r7, #28]
	ldr r5, [sp, #16]
	ldr r5, [r5, r7, lsl #2]
	ldr r8, [r8, #28]
	add r8, r5, r8
	ldr r5, [sp, #16]
	str r8, [r5, r7, lsl #2]
	mov r9, r6
	add r6, r6, #8
	cmp r6, r4
	bge label62
	b label61
label62:
	add r6, r9, #8
	cmp r6, r4
	bge label795
label67:
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
	ldr r9, [r7, #12]
	ldr r5, [sp, #16]
	ldr r5, [r5, r9, lsl #2]
	ldr r10, [r8, #12]
	add r10, r5, r10
	ldr r5, [sp, #16]
	str r10, [r5, r9, lsl #2]
	ldr r9, [r7, #16]
	ldr r5, [sp, #16]
	ldr r5, [r5, r9, lsl #2]
	ldr r10, [r8, #16]
	add r10, r5, r10
	ldr r5, [sp, #16]
	str r10, [r5, r9, lsl #2]
	ldr r9, [r7, #20]
	ldr r5, [sp, #16]
	ldr r5, [r5, r9, lsl #2]
	ldr r10, [r8, #20]
	add r10, r5, r10
	ldr r5, [sp, #16]
	str r10, [r5, r9, lsl #2]
	ldr r9, [r7, #24]
	ldr r5, [sp, #16]
	ldr r5, [r5, r9, lsl #2]
	ldr r10, [r8, #24]
	add r10, r5, r10
	ldr r5, [sp, #16]
	str r10, [r5, r9, lsl #2]
	ldr r7, [r7, #28]
	ldr r5, [sp, #16]
	ldr r5, [r5, r7, lsl #2]
	ldr r8, [r8, #28]
	add r8, r5, r8
	ldr r5, [sp, #16]
	str r8, [r5, r7, lsl #2]
	mov r9, r6
	add r6, r6, #8
	cmp r6, r4
	bge label795
	b label67
label795:
	mov r6, r9
label64:
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
	bge label66
	b label64
label70:
	add r2, r1, #8
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label73
label72:
	ldr r5, [sp, #16]
	add r3, r5, r1, lsl #2
	mov r4, #0
	ldr r5, [sp, #16]
	str r4, [r5, r1, lsl #2]
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #12]
	str r4, [r3, #16]
	str r4, [r3, #20]
	str r4, [r3, #24]
	str r4, [r3, #28]
	mov r1, r2
	add r2, r2, #8
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label73
	b label72
label73:
	add r2, r1, #8
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label76
	b label75
label76:
	mov r2, #0
	ldr r5, [sp, #16]
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #8]
	cmp r1, r3
	bge label921
	b label76
label921:
	mov r2, #0
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label43
	b label45
label75:
	ldr r5, [sp, #16]
	add r3, r5, r1, lsl #2
	mov r4, #0
	ldr r5, [sp, #16]
	str r4, [r5, r1, lsl #2]
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #12]
	str r4, [r3, #16]
	str r4, [r3, #20]
	str r4, [r3, #24]
	str r4, [r3, #28]
	mov r1, r2
	add r2, r2, #8
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label76
	b label75
label78:
	ldr r5, [sp, #16]
	add r3, r5, r1, lsl #2
	mov r4, #0
	ldr r5, [sp, #16]
	str r4, [r5, r1, lsl #2]
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #12]
	str r4, [r3, #16]
	str r4, [r3, #20]
	str r4, [r3, #24]
	str r4, [r3, #28]
	mov r1, r2
	add r2, r2, #8
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label70
	b label78
label10:
	add r2, r1, #8
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label12
	b label14
label12:
	mov r2, #0
	ldr r5, [sp, #20]
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #8]
	cmp r1, r3
	bge label136
	b label12
label136:
	mov r2, #0
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label40
	b label17
label14:
	ldr r5, [sp, #20]
	add r3, r5, r1, lsl #2
	mov r4, #0
	ldr r5, [sp, #20]
	str r4, [r5, r1, lsl #2]
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #12]
	str r4, [r3, #16]
	str r4, [r3, #20]
	str r4, [r3, #24]
	str r4, [r3, #28]
	mov r1, r2
	add r2, r2, #8
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label12
	b label14
