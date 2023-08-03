.arch armv7ve
.data
.bss
.align 8
A:
	.zero	16160400
.align 8
B:
	.zero	8040
.align 8
C:
	.zero	8040
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getint
	mov r5, #0
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	str r0, [sp, #0]
	mov r7, r0
	sub r3, r0, #4
	mov r4, r2
	mov r7, r5
	str r3, [sp, #12]
	sub r3, r0, #20
	str r3, [sp, #8]
	str r5, [sp, #4]
	mov r7, r0
	cmp r0, r5
	bgt label85
label5:
	movw r4, #:lower16:B
	movt r4, #:upper16:B
	ldr r7, [sp, #0]
	cmp r7, #0
	bgt label80
	b label6
.p2align 4
label85:
	mov r6, r4
	ldr r7, [sp, #4]
	b label86
.p2align 4
label269:
	add r5, r5, #1
	movw r6, #8040
	ldr r7, [sp, #0]
	add r4, r4, r6
	cmp r7, r5
	bgt label85
	b label5
.p2align 4
label86:
	bl getint
	str r0, [r6, #0]
	add r0, r7, #1
	ldr r7, [sp, #0]
	cmp r7, r0
	ble label269
	add r6, r6, #4
	mov r7, r0
	b label86
label80:
	mov r5, r4
	ldr r7, [sp, #4]
.p2align 4
label81:
	bl getint
	str r0, [r5, #0]
	add r0, r7, #1
	ldr r7, [sp, #0]
	cmp r7, r0
	ble label6
	add r5, r5, #4
	mov r7, r0
	b label81
label6:
	mov r0, #59
	bl _sysy_starttime
	ldr r7, [sp, #4]
	movw r5, #:lower16:C
	movt r5, #:upper16:C
	mov r0, r7
.p2align 4
label7:
	ldr r7, [sp, #0]
	cmp r7, #0
	ble label110
	cmp r7, #4
	bgt label10
	b label113
.p2align 4
label47:
	mov r6, r5
	mov r8, r2
	ldr r7, [sp, #4]
	mov r9, r7
	ldr r7, [sp, #0]
	cmp r7, r9
	ble label52
.p2align 4
label53:
	ldr r7, [r8, #0]
	cmp r7, #0
	beq label54
	ldr r10, [r1, #0]
	ldr r11, [r6, #0]
	mla r7, r7, r11, r10
	str r7, [r1, #0]
.p2align 4
label54:
	add r9, r9, #1
	add r8, r8, #4
	ldr r7, [sp, #0]
	add r6, r6, #4
	cmp r7, r9
	bgt label53
	add r3, r3, #1
	movw r6, #8040
	add r1, r1, #4
	add r2, r2, r6
	cmp r7, r3
	bgt label47
	add r0, r0, #1
	cmp r0, #50
	blt label7
label57:
	mov r0, #67
	bl _sysy_stoptime
	ldr r7, [sp, #0]
	mov r0, r7
	mov r1, r5
	bl putarray
	ldr r7, [sp, #4]
	add sp, sp, #20
	mov r0, r7
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label10:
	ldr r3, [sp, #12]
	cmp r3, #16
	ble label11
	mov r1, r5
	ldr r7, [sp, #4]
	mov r2, r7
.p2align 4
label13:
	ldr r7, [sp, #4]
	add r2, r2, #16
	str r7, [r1, #0]
	str r7, [r1, #4]
	str r7, [r1, #8]
	str r7, [r1, #12]
	str r7, [r1, #16]
	str r7, [r1, #20]
	str r7, [r1, #24]
	str r7, [r1, #28]
	str r7, [r1, #32]
	str r7, [r1, #36]
	str r7, [r1, #40]
	str r7, [r1, #44]
	str r7, [r1, #48]
	str r7, [r1, #52]
	str r7, [r1, #56]
	str r7, [r1, #60]
	ldr r3, [sp, #8]
	cmp r3, r2
	ble label16
	add r1, r1, #64
	b label13
.p2align 4
label16:
	add r1, r5, r2, lsl #2
	ldr r7, [sp, #4]
	add r2, r2, #4
	str r7, [r1, #0]
	str r7, [r1, #4]
	str r7, [r1, #8]
	str r7, [r1, #12]
	ldr r3, [sp, #12]
	cmp r3, r2
	bgt label22
	b label334
.p2align 4
label18:
	ldr r7, [sp, #4]
	add r2, r2, #4
	str r7, [r1, #0]
	str r7, [r1, #4]
	str r7, [r1, #8]
	str r7, [r1, #12]
	ldr r3, [sp, #12]
	cmp r3, r2
	ble label21
.p2align 4
label22:
	add r1, r1, #16
	b label18
.p2align 4
label21:
	add r1, r5, r2, lsl #2
	ldr r7, [sp, #4]
	add r2, r2, #1
	str r7, [r1, #0]
	ldr r7, [sp, #0]
	cmp r7, r2
	bgt label28
	b label335
.p2align 4
label24:
	ldr r7, [sp, #4]
	add r2, r2, #1
	str r7, [r1, #0]
	ldr r7, [sp, #0]
	cmp r7, r2
	ble label27
.p2align 4
label28:
	add r1, r1, #4
	b label24
.p2align 4
label52:
	add r3, r3, #1
	movw r6, #8040
	ldr r7, [sp, #0]
	add r1, r1, #4
	add r2, r2, r6
	cmp r7, r3
	bgt label47
	add r0, r0, #1
	cmp r0, #50
	blt label7
	b label57
.p2align 4
label27:
	mov r1, r5
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	ldr r7, [sp, #4]
	mov r3, r7
	ldr r7, [sp, #0]
	cmp r7, r3
	ble label160
.p2align 4
label33:
	mov r6, r4
	mov r8, r2
	ldr r7, [sp, #4]
	mov r9, r7
	ldr r7, [sp, #0]
	cmp r7, r9
	ble label164
.p2align 4
label38:
	ldr r7, [r8, #0]
	cmp r7, #0
	beq label39
	ldr r10, [r1, #0]
	ldr r11, [r6, #0]
	mla r7, r7, r11, r10
	str r7, [r1, #0]
.p2align 4
label39:
	add r9, r9, #1
	add r8, r8, #4
	ldr r7, [sp, #0]
	add r6, r6, #4
	cmp r7, r9
	bgt label38
	add r3, r3, #1
	movw r6, #8040
	add r1, r1, #4
	add r2, r2, r6
	cmp r7, r3
	bgt label33
	cmp r7, #0
	ble label337
.p2align 4
label59:
	ldr r7, [sp, #0]
	cmp r7, #4
	ble label60
	ldr r3, [sp, #12]
	cmp r3, #16
	ble label67
	mov r1, r4
	ldr r7, [sp, #4]
	mov r2, r7
.p2align 4
label74:
	ldr r7, [sp, #4]
	add r2, r2, #16
	str r7, [r1, #0]
	str r7, [r1, #4]
	str r7, [r1, #8]
	str r7, [r1, #12]
	str r7, [r1, #16]
	str r7, [r1, #20]
	str r7, [r1, #24]
	str r7, [r1, #28]
	str r7, [r1, #32]
	str r7, [r1, #36]
	str r7, [r1, #40]
	str r7, [r1, #44]
	str r7, [r1, #48]
	str r7, [r1, #52]
	str r7, [r1, #56]
	str r7, [r1, #60]
	ldr r3, [sp, #8]
	cmp r3, r2
	ble label77
	add r1, r1, #64
	b label74
.p2align 4
label68:
	ldr r7, [sp, #4]
	add r2, r2, #4
	str r7, [r1, #0]
	str r7, [r1, #4]
	str r7, [r1, #8]
	str r7, [r1, #12]
	ldr r3, [sp, #12]
	cmp r3, r2
	ble label71
.p2align 4
label72:
	add r1, r1, #16
	b label68
.p2align 4
label77:
	add r1, r4, r2, lsl #2
	ldr r7, [sp, #4]
	add r2, r2, #4
	str r7, [r1, #0]
	str r7, [r1, #4]
	str r7, [r1, #8]
	str r7, [r1, #12]
	ldr r3, [sp, #12]
	cmp r3, r2
	bgt label72
	add r1, r4, r2, lsl #2
	add r2, r2, #1
	str r7, [r1, #0]
	ldr r7, [sp, #0]
	cmp r7, r2
	bgt label64
	mov r1, r4
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	ldr r7, [sp, #4]
	mov r3, r7
	ldr r7, [sp, #0]
	cmp r7, r3
	bgt label47
	b label186
.p2align 4
label61:
	ldr r7, [sp, #4]
	add r2, r2, #1
	str r7, [r1, #0]
	ldr r7, [sp, #0]
	cmp r7, r2
	ble label218
.p2align 4
label64:
	add r1, r1, #4
	b label61
.p2align 4
label71:
	add r1, r4, r2, lsl #2
	ldr r7, [sp, #4]
	add r2, r2, #1
	str r7, [r1, #0]
	ldr r7, [sp, #0]
	cmp r7, r2
	bgt label64
	mov r1, r4
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	ldr r7, [sp, #4]
	mov r3, r7
	ldr r7, [sp, #0]
	cmp r7, r3
	bgt label47
	b label186
label60:
	mov r1, r4
	ldr r7, [sp, #4]
	mov r2, r7
	b label61
label11:
	mov r1, r5
	ldr r7, [sp, #4]
	str r7, [r5, #0]
	mov r2, r7
	str r7, [r5, #4]
	add r2, r7, #4
	str r7, [r5, #8]
	str r7, [r5, #12]
	ldr r3, [sp, #12]
	cmp r3, r2
	bgt label22
	b label21
label67:
	mov r1, r4
	ldr r7, [sp, #4]
	mov r2, r7
	b label68
.p2align 4
label334:
	add r1, r5, r2, lsl #2
	ldr r7, [sp, #4]
	add r2, r2, #1
	str r7, [r1, #0]
	ldr r7, [sp, #0]
	cmp r7, r2
	bgt label28
	mov r1, r5
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	ldr r7, [sp, #4]
	mov r3, r7
	ldr r7, [sp, #0]
	cmp r7, r3
	bgt label33
	b label160
label110:
	mov r1, r5
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	ldr r7, [sp, #4]
	mov r3, r7
	ldr r7, [sp, #0]
	cmp r7, r3
	bgt label33
	b label160
label337:
	mov r1, r4
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	ldr r7, [sp, #4]
	mov r3, r7
	ldr r7, [sp, #0]
	cmp r7, r3
	bgt label47
	b label186
label160:
	ldr r7, [sp, #0]
	cmp r7, #0
	bgt label59
	b label337
.p2align 4
label164:
	add r3, r3, #1
	movw r6, #8040
	ldr r7, [sp, #0]
	add r1, r1, #4
	add r2, r2, r6
	cmp r7, r3
	bgt label33
	b label160
label113:
	mov r1, r5
	ldr r7, [sp, #4]
	str r7, [r5, #0]
	mov r2, r7
	add r2, r7, #1
	ldr r7, [sp, #0]
	cmp r7, r2
	bgt label28
	b label27
label186:
	add r0, r0, #1
	cmp r0, #50
	blt label7
	b label57
.p2align 4
label218:
	mov r1, r4
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	ldr r7, [sp, #4]
	mov r3, r7
	ldr r7, [sp, #0]
	cmp r7, r3
	bgt label47
	b label186
.p2align 4
label335:
	mov r1, r5
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	ldr r7, [sp, #4]
	mov r3, r7
	ldr r7, [sp, #0]
	cmp r7, r3
	bgt label33
	b label160
