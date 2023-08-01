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
	sub sp, sp, #12
	bl getint
	mov r6, #0
	sub r1, r0, #4
	mov r4, r0
	mov r7, r6
	str r1, [sp, #4]
	sub r1, r0, #20
	str r1, [sp, #0]
label2:
	cmp r4, r6
	ble label9
.p2align 4
label4:
	cmp r4, #0
	ble label62
	movw r1, #8040
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	mov r8, r7
	mla r5, r6, r1, r3
.p2align 4
label6:
	bl getint
	str r0, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	bgt label6
	add r6, r6, #1
	cmp r4, r6
	bgt label4
label9:
	movw r5, #:lower16:B
	movt r5, #:upper16:B
	cmp r4, #0
	ble label10
	mov r6, r7
	b label48
label10:
	mov r0, #59
	bl _sysy_starttime
	mov r0, r7
	movw r6, #:lower16:C
	movt r6, #:upper16:C
	b label11
.p2align 4
label48:
	bl getint
	str r0, [r5, r6, lsl #2]
	add r6, r6, #1
	cmp r4, r6
	bgt label48
	b label10
.p2align 4
label11:
	cmp r4, #0
	bgt label40
	b label83
.p2align 4
label165:
	mov r3, r7
	cmp r4, r7
	ble label168
.p2align 4
label34:
	ldr r8, [r1, r3, lsl #2]
	cmp r8, #0
	beq label35
	add r9, r5, r2, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r6, r3, lsl #2]
	mla r8, r8, r11, r10
	str r8, [r9, #0]
.p2align 4
label35:
	add r3, r3, #1
	cmp r4, r3
	bgt label34
	add r2, r2, #1
	movw r1, #8040
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	cmp r4, r2
	mla r1, r2, r1, r3
	bgt label165
	add r0, r0, #1
	cmp r0, #50
	blt label11
	b label39
.p2align 4
label40:
	cmp r4, #4
	bgt label43
	b label193
.p2align 4
label41:
	str r7, [r6, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bgt label41
	mov r2, r7
	movw r1, #8040
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	cmp r4, r7
	mla r1, r7, r1, r3
	bgt label90
	b label89
.p2align 4
label43:
	ldr r1, [sp, #4]
	cmp r1, #16
	ble label203
	mov r2, r7
	b label46
.p2align 4
label44:
	add r1, r6, r2, lsl #2
	add r2, r2, #4
	str r7, [r1, #0]
	str r7, [r1, #4]
	str r7, [r1, #8]
	str r7, [r1, #12]
	ldr r1, [sp, #4]
	cmp r1, r2
	bgt label44
.p2align 4
label213:
	str r7, [r6, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bgt label41
	b label328
.p2align 4
label46:
	add r1, r6, r2, lsl #2
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
	ldr r1, [sp, #0]
	cmp r1, r2
	bgt label46
	add r1, r6, r2, lsl #2
	add r2, r2, #4
	str r7, [r1, #0]
	str r7, [r1, #4]
	str r7, [r1, #8]
	str r7, [r1, #12]
	ldr r1, [sp, #4]
	cmp r1, r2
	bgt label44
	str r7, [r6, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bgt label41
	mov r2, r7
	movw r1, #8040
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	cmp r4, r7
	mla r1, r7, r1, r3
	bgt label90
	b label89
.p2align 4
label316:
	mov r2, r7
	b label30
.p2align 4
label90:
	mov r3, r7
	cmp r4, r7
	ble label17
.p2align 4
label18:
	ldr r8, [r1, r3, lsl #2]
	cmp r8, #0
	beq label19
	add r9, r6, r2, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, r3, lsl #2]
	mla r8, r8, r11, r10
	str r8, [r9, #0]
.p2align 4
label19:
	add r3, r3, #1
	cmp r4, r3
	bgt label18
	add r2, r2, #1
	movw r1, #8040
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	cmp r4, r2
	mla r1, r2, r1, r3
	bgt label90
	cmp r4, #0
	ble label316
.p2align 4
label22:
	cmp r4, #4
	ble label116
	ldr r1, [sp, #4]
	cmp r1, #16
	ble label119
	mov r2, r7
.p2align 4
label24:
	add r1, r5, r2, lsl #2
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
	ldr r1, [sp, #0]
	cmp r1, r2
	bgt label24
.p2align 4
label26:
	add r1, r5, r2, lsl #2
	add r2, r2, #4
	str r7, [r1, #0]
	str r7, [r1, #4]
	str r7, [r1, #8]
	str r7, [r1, #12]
	ldr r1, [sp, #4]
	cmp r1, r2
	bgt label26
.p2align 4
label28:
	str r7, [r5, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	bgt label28
	b label316
.p2align 4
label30:
	movw r1, #8040
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	cmp r4, r2
	mla r1, r2, r1, r3
	bgt label165
label164:
	add r0, r0, #1
	cmp r0, #50
	blt label11
	b label39
.p2align 4
label17:
	add r2, r2, #1
	movw r1, #8040
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	cmp r4, r2
	mla r1, r2, r1, r3
	bgt label90
	cmp r4, #0
	bgt label22
	b label316
label39:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r6
	bl putarray
	add sp, sp, #12
	mov r0, r7
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label83:
	mov r2, r7
	movw r1, #8040
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	cmp r4, r7
	mla r1, r7, r1, r3
	bgt label90
	b label89
.p2align 4
label168:
	add r2, r2, #1
	movw r1, #8040
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	cmp r4, r2
	mla r1, r2, r1, r3
	bgt label165
	b label164
label116:
	mov r2, r7
	str r7, [r5, r7, lsl #2]
	add r2, r7, #1
	cmp r4, r2
	bgt label28
	b label316
label119:
	mov r2, r7
	add r1, r5, r7, lsl #2
	add r2, r7, #4
	str r7, [r1, #0]
	str r7, [r1, #4]
	str r7, [r1, #8]
	str r7, [r1, #12]
	ldr r1, [sp, #4]
	cmp r1, r2
	bgt label26
	b label28
label203:
	mov r2, r7
	add r1, r6, r7, lsl #2
	add r2, r7, #4
	str r7, [r1, #0]
	str r7, [r1, #4]
	str r7, [r1, #8]
	str r7, [r1, #12]
	ldr r1, [sp, #4]
	cmp r1, r2
	bgt label44
	b label213
label89:
	cmp r4, #0
	bgt label22
	b label316
.p2align 4
label328:
	mov r2, r7
	movw r1, #8040
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	cmp r4, r7
	mla r1, r7, r1, r3
	bgt label90
	b label89
label62:
	add r6, r6, #1
	b label2
label193:
	mov r2, r7
	b label41
