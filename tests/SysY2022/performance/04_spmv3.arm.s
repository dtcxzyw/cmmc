.arch armv7ve
.data
.bss
.align 8
x:
	.zero	400040
.align 8
y:
	.zero	12000000
.align 8
v:
	.zero	12000000
.align 8
a:
	.zero	400040
.align 8
b:
	.zero	400040
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r0, #:lower16:x
	sub sp, sp, #44
	str r0, [sp, #32]
	movt r0, #:upper16:x
	str r0, [sp, #32]
	bl getarray
	mov r1, r0
	movw r2, #:lower16:y
	sub r1, r0, #5
	sub r0, r0, #1
	str r0, [sp, #36]
	str r1, [sp, #28]
	str r2, [sp, #20]
	movt r2, #:upper16:y
	str r2, [sp, #20]
	mov r0, r2
	bl getarray
	movw r5, #:lower16:v
	str r5, [sp, #24]
	movt r5, #:upper16:v
	str r5, [sp, #24]
	mov r0, r5
	bl getarray
	movw r2, #:lower16:a
	str r2, [sp, #12]
	movt r2, #:upper16:a
	str r2, [sp, #12]
	mov r0, r2
	bl getarray
	mov r0, #39
	bl _sysy_starttime
	mov r0, #0
	movw r2, #:lower16:b
	str r2, [sp, #16]
	movt r2, #:upper16:b
	str r2, [sp, #16]
	str r0, [sp, #8]
	ldr r0, [sp, #36]
	cmp r0, #0
	ble label63
.p2align 4
label4:
	ldr r0, [sp, #36]
	cmp r0, #4
	bgt label67
	b label66
.p2align 4
label120:
	str r0, [sp, #8]
	ldr r0, [sp, #36]
	cmp r0, #0
	bgt label4
	b label63
label20:
	mov r0, #47
	bl _sysy_stoptime
	ldr r0, [sp, #36]
	ldr r2, [sp, #16]
	mov r1, r2
	bl putarray
	add sp, sp, #44
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label470:
	ldr r0, [sp, #8]
	add r0, r0, #1
	cmp r0, #100
	blt label120
	b label20
.p2align 4
label67:
	mov r0, #0
	b label7
.p2align 4
label5:
	mov r1, #0
	ldr r2, [sp, #16]
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #36]
	cmp r0, r1
	ble label73
.p2align 4
label74:
	mov r0, r1
	b label5
.p2align 4
label7:
	ldr r2, [sp, #16]
	add r1, r2, r0, lsl #2
	add r0, r0, #4
	mov r2, #0
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	ldr r1, [sp, #28]
	cmp r1, r0
	bgt label7
	mov r1, #0
	ldr r2, [sp, #16]
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #36]
	cmp r0, r1
	bgt label74
	mov r3, #0
	cmp r0, r3
	bgt label33
label11:
	ldr r0, [sp, #36]
	cmp r0, #0
	bgt label12
	b label90
.p2align 4
label33:
	add r1, r3, #1
	str r1, [sp, #4]
	ldr r0, [sp, #32]
	ldr r4, [r0, r3, lsl #2]
	ldr r0, [r0, r1, lsl #2]
	add r6, r4, #4
	cmp r4, r0
	sub r1, r0, #4
	blt label40
	b label34
.p2align 4
label35:
	ldr r2, [sp, #12]
	cmp r0, r6
	ldr r2, [r2, r3, lsl #2]
	sub r3, r2, #1
	bgt label38
.p2align 4
label36:
	ldr r2, [sp, #20]
	ldr r1, [r2, r4, lsl #2]
	ldr r2, [sp, #16]
	add r1, r2, r1, lsl #2
	ldr r2, [r1, #0]
	ldr r5, [sp, #24]
	ldr r5, [r5, r4, lsl #2]
	add r4, r4, #1
	cmp r0, r4
	mla r2, r3, r5, r2
	str r2, [r1, #0]
	bgt label36
	ldr r1, [sp, #4]
	mov r3, r1
	ldr r0, [sp, #36]
	cmp r0, r1
	bgt label33
	b label472
.p2align 4
label38:
	ldr r2, [sp, #20]
	add r6, r2, r4, lsl #2
	ldr r5, [r6, #0]
	ldr r2, [sp, #16]
	add r7, r2, r5, lsl #2
	ldr r8, [r7, #0]
	ldr r5, [sp, #24]
	add r5, r5, r4, lsl #2
	add r4, r4, #4
	ldr r9, [r5, #0]
	cmp r1, r4
	mla r8, r3, r9, r8
	str r8, [r7, #0]
	ldr r7, [r6, #4]
	add r7, r2, r7, lsl #2
	ldr r8, [r7, #0]
	ldr r9, [r5, #4]
	mla r8, r3, r9, r8
	str r8, [r7, #0]
	ldr r7, [r6, #8]
	add r7, r2, r7, lsl #2
	ldr r8, [r7, #0]
	ldr r9, [r5, #8]
	mla r8, r3, r9, r8
	str r8, [r7, #0]
	ldr r6, [r6, #12]
	add r2, r2, r6, lsl #2
	ldr r6, [r2, #0]
	ldr r5, [r5, #12]
	mla r5, r3, r5, r6
	str r5, [r2, #0]
	bgt label38
	b label36
.p2align 4
label40:
	cmp r0, r6
	ble label345
	mov r7, r4
.p2align 4
label41:
	ldr r2, [sp, #20]
	add r8, r2, r7, lsl #2
	ldr r5, [r8, #0]
	ldr r2, [sp, #16]
	add r9, r2, r5, lsl #2
	ldr r10, [r9, #0]
	ldr r5, [sp, #24]
	add r5, r5, r7, lsl #2
	add r7, r7, #4
	ldr r11, [r5, #0]
	cmp r1, r7
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r8, #4]
	add r9, r2, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, #4]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r8, #8]
	add r9, r2, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, #8]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r8, [r8, #12]
	add r2, r2, r8, lsl #2
	ldr r8, [r2, #0]
	ldr r5, [r5, #12]
	add r5, r8, r5
	str r5, [r2, #0]
	bgt label41
.p2align 4
label43:
	ldr r2, [sp, #20]
	ldr r5, [r2, r7, lsl #2]
	ldr r2, [sp, #16]
	add r2, r2, r5, lsl #2
	ldr r8, [r2, #0]
	ldr r5, [sp, #24]
	ldr r5, [r5, r7, lsl #2]
	add r7, r7, #1
	cmp r0, r7
	add r5, r8, r5
	str r5, [r2, #0]
	bgt label43
	cmp r4, r0
	blt label35
	ldr r1, [sp, #4]
	mov r3, r1
	ldr r0, [sp, #36]
	cmp r0, r1
	bgt label33
	b label11
.p2align 4
label34:
	cmp r4, r0
	blt label35
	ldr r1, [sp, #4]
	mov r3, r1
	ldr r0, [sp, #36]
	cmp r0, r1
	bgt label33
	b label11
label90:
	mov r3, #0
	b label17
.p2align 4
label12:
	ldr r0, [sp, #36]
	cmp r0, #4
	bgt label94
	b label93
label17:
	ldr r0, [sp, #36]
	cmp r0, r3
	bgt label21
	b label19
.p2align 4
label472:
	ldr r0, [sp, #36]
	cmp r0, #0
	bgt label12
	b label90
.p2align 4
label21:
	add r1, r3, #1
	str r1, [sp, #0]
	ldr r0, [sp, #32]
	ldr r4, [r0, r3, lsl #2]
	ldr r0, [r0, r1, lsl #2]
	add r6, r4, #4
	cmp r4, r0
	sub r1, r0, #4
	bge label133
	cmp r0, r6
	ble label136
	mov r7, r4
	b label25
.p2align 4
label23:
	ldr r2, [sp, #20]
	ldr r5, [r2, r7, lsl #2]
	ldr r2, [sp, #12]
	add r2, r2, r5, lsl #2
	ldr r8, [r2, #0]
	ldr r5, [sp, #24]
	ldr r5, [r5, r7, lsl #2]
	add r7, r7, #1
	cmp r0, r7
	add r5, r8, r5
	str r5, [r2, #0]
	bgt label23
	cmp r4, r0
	blt label28
	b label468
.p2align 4
label25:
	ldr r2, [sp, #20]
	add r8, r2, r7, lsl #2
	ldr r5, [r8, #0]
	ldr r2, [sp, #12]
	add r9, r2, r5, lsl #2
	ldr r10, [r9, #0]
	ldr r5, [sp, #24]
	add r5, r5, r7, lsl #2
	add r7, r7, #4
	ldr r11, [r5, #0]
	cmp r1, r7
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r8, #4]
	add r9, r2, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, #4]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r8, #8]
	add r9, r2, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, #8]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r8, [r8, #12]
	add r2, r2, r8, lsl #2
	ldr r8, [r2, #0]
	ldr r5, [r5, #12]
	add r5, r8, r5
	str r5, [r2, #0]
	bgt label25
	b label23
.p2align 4
label28:
	ldr r2, [sp, #16]
	cmp r0, r6
	ldr r2, [r2, r3, lsl #2]
	sub r3, r2, #1
	bgt label31
.p2align 4
label29:
	ldr r2, [sp, #20]
	ldr r1, [r2, r4, lsl #2]
	ldr r2, [sp, #12]
	add r1, r2, r1, lsl #2
	ldr r2, [r1, #0]
	ldr r5, [sp, #24]
	ldr r5, [r5, r4, lsl #2]
	add r4, r4, #1
	cmp r0, r4
	mla r2, r3, r5, r2
	str r2, [r1, #0]
	bgt label29
	ldr r1, [sp, #0]
	mov r3, r1
	ldr r0, [sp, #36]
	cmp r0, r1
	bgt label21
	b label470
.p2align 4
label31:
	ldr r2, [sp, #20]
	add r6, r2, r4, lsl #2
	ldr r5, [r6, #0]
	ldr r2, [sp, #12]
	add r7, r2, r5, lsl #2
	ldr r8, [r7, #0]
	ldr r5, [sp, #24]
	add r5, r5, r4, lsl #2
	add r4, r4, #4
	ldr r9, [r5, #0]
	cmp r1, r4
	mla r8, r3, r9, r8
	str r8, [r7, #0]
	ldr r7, [r6, #4]
	add r7, r2, r7, lsl #2
	ldr r8, [r7, #0]
	ldr r9, [r5, #4]
	mla r8, r3, r9, r8
	str r8, [r7, #0]
	ldr r7, [r6, #8]
	add r7, r2, r7, lsl #2
	ldr r8, [r7, #0]
	ldr r9, [r5, #8]
	mla r8, r3, r9, r8
	str r8, [r7, #0]
	ldr r6, [r6, #12]
	add r2, r2, r6, lsl #2
	ldr r6, [r2, #0]
	ldr r5, [r5, #12]
	mla r5, r3, r5, r6
	str r5, [r2, #0]
	bgt label31
	b label29
.p2align 4
label94:
	mov r0, #0
	b label15
.p2align 4
label13:
	mov r1, #0
	ldr r2, [sp, #12]
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #36]
	cmp r0, r1
	ble label100
.p2align 4
label101:
	mov r0, r1
	b label13
.p2align 4
label15:
	ldr r2, [sp, #12]
	add r1, r2, r0, lsl #2
	add r0, r0, #4
	mov r2, #0
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	ldr r1, [sp, #28]
	cmp r1, r0
	bgt label15
	mov r1, #0
	ldr r2, [sp, #12]
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #36]
	cmp r0, r1
	bgt label101
	mov r3, #0
	cmp r0, r3
	bgt label21
	b label19
label63:
	mov r3, #0
	ldr r0, [sp, #36]
	cmp r0, r3
	bgt label33
	b label11
.p2align 4
label133:
	cmp r4, r0
	blt label28
	ldr r1, [sp, #0]
	mov r3, r1
	ldr r0, [sp, #36]
	cmp r0, r1
	bgt label21
label19:
	ldr r0, [sp, #8]
	add r0, r0, #1
	cmp r0, #100
	blt label120
	b label20
.p2align 4
label468:
	ldr r1, [sp, #0]
	mov r3, r1
	ldr r0, [sp, #36]
	cmp r0, r1
	bgt label21
	b label19
.p2align 4
label66:
	mov r0, #0
	mov r1, #0
	ldr r2, [sp, #16]
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #36]
	cmp r0, r1
	bgt label74
.p2align 4
label73:
	mov r3, #0
	ldr r0, [sp, #36]
	cmp r0, r3
	bgt label33
	b label11
.p2align 4
label93:
	mov r0, #0
	mov r1, #0
	ldr r2, [sp, #12]
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #36]
	cmp r0, r1
	bgt label101
.p2align 4
label100:
	mov r3, #0
	ldr r0, [sp, #36]
	cmp r0, r3
	bgt label21
	b label19
.p2align 4
label345:
	mov r7, r4
	b label43
.p2align 4
label136:
	mov r7, r4
	b label23
