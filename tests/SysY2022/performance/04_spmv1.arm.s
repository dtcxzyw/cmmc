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
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r0, #:lower16:x
	sub sp, sp, #36
	movt r0, #:upper16:x
	str r0, [sp, #0]
	bl getarray
	movw r2, #:lower16:y
	sub r0, r0, #1
	movt r2, #:upper16:y
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, r2
	bl getarray
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	str r5, [sp, #12]
	mov r0, r5
	bl getarray
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	str r2, [sp, #16]
	mov r0, r2
	bl getarray
	mov r0, #39
	bl _sysy_starttime
	mov r0, #0
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	str r2, [sp, #20]
	str r0, [sp, #24]
.p2align 4
label2:
	ldr r0, [sp, #4]
	cmp r0, #0
	bgt label64
	mov r3, #0
	cmp r0, r3
	bgt label34
	cmp r0, #0
	bgt label88
	cmp r0, r3
	bgt label14
	ldr r0, [sp, #24]
	add r0, r0, #1
	cmp r0, #100
	blt label228
	b label28
.p2align 4
label64:
	mov r1, #0
.p2align 4
label4:
	add r3, r1, #4
	ldr r0, [sp, #4]
	cmp r0, r3
	bgt label8
	mov r0, #0
	ldr r2, [sp, #20]
	str r0, [r2, r1, lsl #2]
	ldr r0, [sp, #4]
	add r1, r1, #1
	cmp r0, r1
	bgt label6
	mov r3, #0
	cmp r0, r3
	bgt label34
	cmp r0, #0
	bgt label88
	cmp r0, r3
	bgt label14
	ldr r0, [sp, #24]
	add r0, r0, #1
	cmp r0, #100
	blt label228
	b label28
.p2align 4
label8:
	ldr r2, [sp, #20]
	mov r4, #0
	add r0, r2, r1, lsl #2
	str r4, [r2, r1, lsl #2]
	mov r1, r3
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	b label4
label28:
	mov r0, #47
	bl _sysy_stoptime
	ldr r0, [sp, #4]
	ldr r2, [sp, #20]
	mov r1, r2
	bl putarray
	add sp, sp, #36
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label34:
	add r1, r3, #1
	ldr r0, [sp, #0]
	ldr r4, [r0, r3, lsl #2]
	ldr r0, [r0, r1, lsl #2]
	cmp r4, r0
	blt label256
	mov r3, r1
	ldr r0, [sp, #4]
	cmp r0, r1
	bgt label34
	cmp r0, #0
	bgt label88
	mov r3, #0
	cmp r0, r3
	bgt label14
	ldr r0, [sp, #24]
	add r0, r0, #1
	cmp r0, #100
	blt label228
	b label28
.p2align 4
label256:
	mov r9, r4
	add r6, r4, #4
	cmp r0, r6
	bgt label46
	b label44
.p2align 4
label36:
	ldr r2, [sp, #16]
	mov r8, r4
	ldr r2, [r2, r3, lsl #2]
	sub r3, r2, #1
.p2align 4
label37:
	add r4, r8, #4
	cmp r0, r4
	bgt label41
.p2align 4
label39:
	ldr r2, [sp, #8]
	ldr r4, [r2, r8, lsl #2]
	ldr r2, [sp, #20]
	ldr r6, [r2, r4, lsl #2]
	ldr r5, [sp, #12]
	ldr r5, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r0, r8
	mla r5, r3, r5, r6
	str r5, [r2, r4, lsl #2]
	bgt label39
	mov r3, r1
	ldr r0, [sp, #4]
	cmp r0, r1
	bgt label34
	cmp r0, #0
	bgt label88
	mov r3, #0
	cmp r0, r3
	bgt label14
	ldr r0, [sp, #24]
	add r0, r0, #1
	cmp r0, #100
	blt label228
	b label28
.p2align 4
label41:
	ldr r2, [sp, #8]
	ldr r9, [r2, r8, lsl #2]
	add r6, r2, r8, lsl #2
	ldr r2, [sp, #20]
	ldr r10, [r2, r9, lsl #2]
	ldr r5, [sp, #12]
	add r7, r5, r8, lsl #2
	ldr r5, [r5, r8, lsl #2]
	mla r5, r3, r5, r10
	str r5, [r2, r9, lsl #2]
	ldr r5, [r6, #4]
	ldr r8, [r2, r5, lsl #2]
	ldr r9, [r7, #4]
	mla r8, r3, r9, r8
	str r8, [r2, r5, lsl #2]
	ldr r5, [r6, #8]
	ldr r8, [r2, r5, lsl #2]
	ldr r9, [r7, #8]
	mla r8, r3, r9, r8
	str r8, [r2, r5, lsl #2]
	mov r8, r4
	ldr r5, [r6, #12]
	ldr r6, [r2, r5, lsl #2]
	ldr r7, [r7, #12]
	mla r6, r3, r7, r6
	str r6, [r2, r5, lsl #2]
	b label37
.p2align 4
label44:
	ldr r2, [sp, #8]
	ldr r6, [r2, r9, lsl #2]
	ldr r2, [sp, #20]
	ldr r7, [r2, r6, lsl #2]
	ldr r5, [sp, #12]
	ldr r5, [r5, r9, lsl #2]
	add r9, r9, #1
	cmp r0, r9
	add r5, r7, r5
	str r5, [r2, r6, lsl #2]
	bgt label44
	cmp r4, r0
	blt label36
	mov r3, r1
	ldr r0, [sp, #4]
	cmp r0, r1
	bgt label34
	cmp r0, #0
	bgt label88
	mov r3, #0
	cmp r0, r3
	bgt label14
	ldr r0, [sp, #24]
	add r0, r0, #1
	cmp r0, #100
	blt label228
	b label28
.p2align 4
label14:
	add r1, r3, #1
	ldr r0, [sp, #0]
	ldr r4, [r0, r3, lsl #2]
	ldr r0, [r0, r1, lsl #2]
	cmp r4, r0
	blt label103
	mov r3, r1
	ldr r0, [sp, #4]
	cmp r0, r1
	bgt label14
	ldr r0, [sp, #24]
	add r0, r0, #1
	cmp r0, #100
	blt label228
	b label28
.p2align 4
label103:
	mov r9, r4
	add r6, r4, #4
	cmp r0, r6
	bgt label24
	b label25
.p2align 4
label16:
	ldr r2, [sp, #20]
	mov r8, r4
	ldr r2, [r2, r3, lsl #2]
	sub r3, r2, #1
.p2align 4
label17:
	add r4, r8, #4
	cmp r0, r4
	ble label20
	ldr r2, [sp, #8]
	ldr r9, [r2, r8, lsl #2]
	add r6, r2, r8, lsl #2
	ldr r2, [sp, #16]
	ldr r10, [r2, r9, lsl #2]
	ldr r5, [sp, #12]
	add r7, r5, r8, lsl #2
	ldr r5, [r5, r8, lsl #2]
	mla r5, r3, r5, r10
	str r5, [r2, r9, lsl #2]
	ldr r5, [r6, #4]
	ldr r8, [r2, r5, lsl #2]
	ldr r9, [r7, #4]
	mla r8, r3, r9, r8
	str r8, [r2, r5, lsl #2]
	ldr r5, [r6, #8]
	ldr r8, [r2, r5, lsl #2]
	ldr r9, [r7, #8]
	mla r8, r3, r9, r8
	str r8, [r2, r5, lsl #2]
	mov r8, r4
	ldr r5, [r6, #12]
	ldr r6, [r2, r5, lsl #2]
	ldr r7, [r7, #12]
	mla r6, r3, r7, r6
	str r6, [r2, r5, lsl #2]
	b label17
.p2align 4
label20:
	ldr r2, [sp, #8]
	ldr r4, [r2, r8, lsl #2]
	ldr r2, [sp, #16]
	ldr r6, [r2, r4, lsl #2]
	ldr r5, [sp, #12]
	ldr r5, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r0, r8
	mla r5, r3, r5, r6
	str r5, [r2, r4, lsl #2]
	bgt label20
	mov r3, r1
	ldr r0, [sp, #4]
	cmp r0, r1
	bgt label14
	ldr r0, [sp, #24]
	add r0, r0, #1
	cmp r0, #100
	blt label228
	b label28
.p2align 4
label25:
	ldr r2, [sp, #8]
	ldr r6, [r2, r9, lsl #2]
	ldr r2, [sp, #16]
	ldr r7, [r2, r6, lsl #2]
	ldr r5, [sp, #12]
	ldr r5, [r5, r9, lsl #2]
	add r9, r9, #1
	cmp r0, r9
	add r5, r7, r5
	str r5, [r2, r6, lsl #2]
	bgt label25
	cmp r4, r0
	blt label16
	mov r3, r1
	ldr r0, [sp, #4]
	cmp r0, r1
	bgt label14
	ldr r0, [sp, #24]
	add r0, r0, #1
	cmp r0, #100
	blt label228
	b label28
.p2align 4
label42:
	add r6, r9, #4
	cmp r0, r6
	ble label44
.p2align 4
label46:
	ldr r2, [sp, #8]
	ldr r10, [r2, r9, lsl #2]
	add r7, r2, r9, lsl #2
	ldr r2, [sp, #20]
	ldr r11, [r2, r10, lsl #2]
	ldr r5, [sp, #12]
	add r8, r5, r9, lsl #2
	ldr r5, [r5, r9, lsl #2]
	add r5, r11, r5
	str r5, [r2, r10, lsl #2]
	ldr r5, [r7, #4]
	ldr r9, [r2, r5, lsl #2]
	ldr r10, [r8, #4]
	add r9, r9, r10
	str r9, [r2, r5, lsl #2]
	ldr r5, [r7, #8]
	ldr r9, [r2, r5, lsl #2]
	ldr r10, [r8, #8]
	add r9, r9, r10
	str r9, [r2, r5, lsl #2]
	mov r9, r6
	ldr r5, [r7, #12]
	ldr r7, [r2, r5, lsl #2]
	ldr r8, [r8, #12]
	add r7, r7, r8
	str r7, [r2, r5, lsl #2]
	b label42
.p2align 4
label22:
	add r6, r9, #4
	cmp r0, r6
	ble label25
.p2align 4
label24:
	ldr r2, [sp, #8]
	ldr r10, [r2, r9, lsl #2]
	add r7, r2, r9, lsl #2
	ldr r2, [sp, #16]
	ldr r11, [r2, r10, lsl #2]
	ldr r5, [sp, #12]
	add r8, r5, r9, lsl #2
	ldr r5, [r5, r9, lsl #2]
	add r5, r11, r5
	str r5, [r2, r10, lsl #2]
	ldr r5, [r7, #4]
	ldr r9, [r2, r5, lsl #2]
	ldr r10, [r8, #4]
	add r9, r9, r10
	str r9, [r2, r5, lsl #2]
	ldr r5, [r7, #8]
	ldr r9, [r2, r5, lsl #2]
	ldr r10, [r8, #8]
	add r9, r9, r10
	str r9, [r2, r5, lsl #2]
	mov r9, r6
	ldr r5, [r7, #12]
	ldr r7, [r2, r5, lsl #2]
	ldr r8, [r8, #12]
	add r7, r7, r8
	str r7, [r2, r5, lsl #2]
	b label22
label228:
	str r0, [sp, #24]
	b label2
.p2align 4
label88:
	mov r1, #0
	add r3, r1, #4
	ldr r0, [sp, #4]
	cmp r0, r3
	bgt label33
	mov r0, #0
	ldr r2, [sp, #16]
	str r0, [r2, r1, lsl #2]
	ldr r0, [sp, #4]
	add r1, r1, #1
	cmp r0, r1
	bgt label31
	mov r3, #0
	cmp r0, r3
	bgt label14
	ldr r0, [sp, #24]
	add r0, r0, #1
	cmp r0, #100
	blt label228
	b label28
.p2align 4
label29:
	add r3, r1, #4
	ldr r0, [sp, #4]
	cmp r0, r3
	bgt label33
	mov r0, #0
	ldr r2, [sp, #16]
	str r0, [r2, r1, lsl #2]
	ldr r0, [sp, #4]
	add r1, r1, #1
	cmp r0, r1
	bgt label31
	mov r3, #0
	cmp r0, r3
	bgt label14
	ldr r0, [sp, #24]
	add r0, r0, #1
	cmp r0, #100
	blt label228
	b label28
.p2align 4
label33:
	ldr r2, [sp, #16]
	mov r4, #0
	add r0, r2, r1, lsl #2
	str r4, [r2, r1, lsl #2]
	mov r1, r3
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	b label29
.p2align 4
label6:
	mov r0, #0
	ldr r2, [sp, #20]
	str r0, [r2, r1, lsl #2]
	ldr r0, [sp, #4]
	add r1, r1, #1
	cmp r0, r1
	bgt label6
	mov r3, #0
	cmp r0, r3
	bgt label34
	cmp r0, #0
	bgt label88
	cmp r0, r3
	bgt label14
	ldr r0, [sp, #24]
	add r0, r0, #1
	cmp r0, #100
	blt label228
	b label28
.p2align 4
label31:
	mov r0, #0
	ldr r2, [sp, #16]
	str r0, [r2, r1, lsl #2]
	ldr r0, [sp, #4]
	add r1, r1, #1
	cmp r0, r1
	bgt label31
	mov r3, #0
	cmp r0, r3
	bgt label14
	ldr r0, [sp, #24]
	add r0, r0, #1
	cmp r0, #100
	blt label228
	b label28
