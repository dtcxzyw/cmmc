.arch armv7ve
.data
.bss
.align 4
a:
	.zero	4000000
.align 4
b:
	.zero	4000000
.align 4
c:
	.zero	4000000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	movw r4, #:lower16:a
	movt r4, #:upper16:a
	str r4, [sp, #4]
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	str r7, [sp, #8]
	movw r4, #:lower16:c
	movt r4, #:upper16:c
	str r4, [sp, #0]
	mov r5, #0
	cmp r5, #1000
	bge label8
	mov r0, #4000
	ldr r4, [sp, #4]
	mla r0, r5, r0, r4
	bl getarray
	cmp r0, #1000
	beq label5
	b label6
label8:
	mov r0, #23
	bl _sysy_starttime
	mov r0, #0
	cmp r0, #1000
	bge label68
	b label622
label68:
	mov r2, #0
	mov r0, #4000
	ldr r4, [sp, #4]
	mla r1, r2, r0, r4
	ldr r4, [sp, #0]
	mla r3, r2, r0, r4
	cmp r2, #1000
	bge label76
	mov r0, #0
	cmp r0, #1000
	bge label15
	b label612
label76:
	mov r2, #0
	mov r0, #4000
	ldr r4, [sp, #0]
	mla r1, r2, r0, r4
	cmp r2, #1000
	bge label129
	mov r3, #0
	mvn r0, #-2147483648
	cmp r3, #1000
	bge label379
	ldr r4, [r1, r3, lsl #2]
	cmp r0, r4
	movge r0, r4
	add r3, r3, #1
	cmp r3, #1000
	bge label379
	ldr r4, [r1, r3, lsl #2]
	cmp r0, r4
	movge r0, r4
	add r3, r3, #1
	cmp r3, #1000
	bge label379
	ldr r4, [r1, r3, lsl #2]
	cmp r0, r4
	movge r0, r4
	add r3, r3, #1
	cmp r3, #1000
	bge label379
	ldr r4, [r1, r3, lsl #2]
	cmp r0, r4
	movge r0, r4
	add r3, r3, #1
	cmp r3, #1000
	bge label379
	ldr r4, [r1, r3, lsl #2]
	cmp r0, r4
	movge r0, r4
	add r3, r3, #1
	cmp r3, #1000
	bge label379
	ldr r4, [r1, r3, lsl #2]
	cmp r0, r4
	movge r0, r4
	add r3, r3, #1
	cmp r3, #1000
	bge label379
	ldr r4, [r1, r3, lsl #2]
	cmp r0, r4
	movge r0, r4
	add r3, r3, #1
	cmp r3, #1000
	bge label379
	b label650
label129:
	mov r0, #0
	cmp r0, #1000
	bge label133
label132:
	mov r1, #4000
	ldr r4, [sp, #0]
	mla r1, r0, r1, r4
	mov r2, #0
	b label34
label133:
	mov r0, #0
	mov r5, r0
	cmp r0, #1000
	bge label27
	b label136
label27:
	mov r0, #92
	bl _sysy_stoptime
	mov r0, r5
	bl putint
	mov r0, #0
	b label6
label650:
	ldr r4, [r1, r3, lsl #2]
	cmp r0, r4
	movge r0, r4
	add r3, r3, #1
	cmp r3, #1000
	bge label379
	b label655
label612:
	mov r4, #0
	mov r5, r4
	b label16
label15:
	add r2, r2, #1
	mov r0, #4000
	ldr r4, [sp, #4]
	mla r1, r2, r0, r4
	ldr r4, [sp, #0]
	mla r3, r2, r0, r4
	cmp r2, #1000
	bge label76
	mov r0, #0
	cmp r0, #1000
	bge label15
	b label612
label16:
	mov r6, #4000
	ldr r7, [sp, #8]
	mla r6, r5, r6, r7
	add r7, r1, r5, lsl #2
	ldr r8, [r1, r5, lsl #2]
	ldr r9, [r6, r0, lsl #2]
	add r11, r6, #4000
	ldr r10, [r7, #4]
	ldr r11, [r11, r0, lsl #2]
	mul r10, r10, r11
	mla r8, r8, r9, r10
	add r9, r6, #8000
	ldr r10, [r7, #8]
	ldr r9, [r9, r0, lsl #2]
	mla r8, r10, r9, r8
	movw r9, #12000
	add r9, r6, r9
	ldr r6, [r7, #12]
	ldr r7, [r9, r0, lsl #2]
	mla r6, r6, r7, r8
	add r4, r4, r6
	add r5, r5, #4
	cmp r5, #1000
	bge label19
	b label16
label655:
	ldr r4, [r1, r3, lsl #2]
	cmp r0, r4
	movge r0, r4
	add r3, r3, #1
	cmp r3, #1000
	bge label379
	b label660
label379:
	mov r3, #0
label40:
	add r4, r1, r3, lsl #2
	str r0, [r1, r3, lsl #2]
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #12]
	str r0, [r4, #16]
	str r0, [r4, #20]
	str r0, [r4, #24]
	str r0, [r4, #28]
	str r0, [r4, #32]
	str r0, [r4, #36]
	str r0, [r4, #40]
	str r0, [r4, #44]
	str r0, [r4, #48]
	str r0, [r4, #52]
	str r0, [r4, #56]
	str r0, [r4, #60]
	add r3, r3, #16
	cmp r3, #992
	bge label42
	b label40
label42:
	add r4, r1, r3, lsl #2
	str r0, [r1, r3, lsl #2]
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #12]
	str r0, [r4, #16]
	str r0, [r4, #20]
	str r0, [r4, #24]
	str r0, [r4, #28]
	add r2, r2, #1
	mov r0, #4000
	ldr r4, [sp, #0]
	mla r1, r2, r0, r4
	cmp r2, #1000
	bge label129
	mov r3, #0
	mvn r0, #-2147483648
	cmp r3, #1000
	bge label379
	ldr r4, [r1, r3, lsl #2]
	cmp r0, r4
	movge r0, r4
	add r3, r3, #1
	cmp r3, #1000
	bge label379
	ldr r4, [r1, r3, lsl #2]
	cmp r0, r4
	movge r0, r4
	add r3, r3, #1
	cmp r3, #1000
	bge label379
	ldr r4, [r1, r3, lsl #2]
	cmp r0, r4
	movge r0, r4
	add r3, r3, #1
	cmp r3, #1000
	bge label379
	ldr r4, [r1, r3, lsl #2]
	cmp r0, r4
	movge r0, r4
	add r3, r3, #1
	cmp r3, #1000
	bge label379
	ldr r4, [r1, r3, lsl #2]
	cmp r0, r4
	movge r0, r4
	add r3, r3, #1
	cmp r3, #1000
	bge label379
	ldr r4, [r1, r3, lsl #2]
	cmp r0, r4
	movge r0, r4
	add r3, r3, #1
	cmp r3, #1000
	bge label379
	ldr r4, [r1, r3, lsl #2]
	cmp r0, r4
	movge r0, r4
	add r3, r3, #1
	cmp r3, #1000
	bge label379
	ldr r4, [r1, r3, lsl #2]
	cmp r0, r4
	movge r0, r4
	add r3, r3, #1
	cmp r3, #1000
	bge label379
	b label655
label34:
	mov r3, #4000
	ldr r4, [sp, #0]
	mla r3, r2, r3, r4
	ldr r4, [r3, r0, lsl #2]
	rsb r5, r4, #0
	add r4, r1, r2, lsl #2
	str r5, [r1, r2, lsl #2]
	add r5, r3, #4000
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #4]
	add r5, r3, #8000
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #8]
	movw r5, #12000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #12]
	add r5, r3, #16000
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #16]
	movw r5, #20000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #20]
	movw r5, #24000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #24]
	movw r5, #28000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #28]
	add r5, r3, #32000
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #32]
	movw r5, #36000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #36]
	movw r5, #40000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #40]
	movw r5, #44000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #44]
	movw r5, #48000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #48]
	movw r5, #52000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #52]
	movw r5, #56000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #56]
	movw r5, #60000
	add r3, r3, r5
	ldr r3, [r3, r0, lsl #2]
	rsb r3, r3, #0
	str r3, [r4, #60]
	add r2, r2, #16
	cmp r2, #992
	bge label36
	b label34
label36:
	mov r3, #4000
	ldr r4, [sp, #0]
	mla r3, r2, r3, r4
	ldr r4, [r3, r0, lsl #2]
	rsb r5, r4, #0
	add r4, r1, r2, lsl #2
	str r5, [r1, r2, lsl #2]
	add r1, r3, #4000
	ldr r1, [r1, r0, lsl #2]
	rsb r1, r1, #0
	str r1, [r4, #4]
	add r1, r3, #8000
	ldr r1, [r1, r0, lsl #2]
	rsb r1, r1, #0
	str r1, [r4, #8]
	movw r1, #12000
	add r1, r3, r1
	ldr r1, [r1, r0, lsl #2]
	rsb r1, r1, #0
	str r1, [r4, #12]
	add r1, r3, #16000
	ldr r1, [r1, r0, lsl #2]
	rsb r1, r1, #0
	str r1, [r4, #16]
	movw r1, #20000
	add r1, r3, r1
	ldr r1, [r1, r0, lsl #2]
	rsb r1, r1, #0
	str r1, [r4, #20]
	movw r1, #24000
	add r1, r3, r1
	ldr r1, [r1, r0, lsl #2]
	rsb r1, r1, #0
	str r1, [r4, #24]
	movw r1, #28000
	add r1, r3, r1
	ldr r1, [r1, r0, lsl #2]
	rsb r1, r1, #0
	str r1, [r4, #28]
	add r0, r0, #1
	cmp r0, #1000
	bge label133
	b label132
label19:
	str r4, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #1000
	bge label15
	b label612
label660:
	ldr r4, [r1, r3, lsl #2]
	cmp r0, r4
	movge r0, r4
	add r3, r3, #1
	cmp r3, #1000
	bge label379
	b label660
label136:
	mov r1, #4000
	ldr r4, [sp, #0]
	mla r1, r0, r1, r4
	mov r4, r5
	mov r2, #0
label29:
	add r3, r1, r2, lsl #2
	ldr r5, [r1, r2, lsl #2]
	add r4, r4, r5
	ldr r5, [r3, #4]
	add r4, r4, r5
	ldr r5, [r3, #8]
	add r4, r4, r5
	ldr r5, [r3, #12]
	add r4, r4, r5
	ldr r5, [r3, #16]
	add r4, r4, r5
	ldr r5, [r3, #20]
	add r4, r4, r5
	ldr r5, [r3, #24]
	add r4, r4, r5
	ldr r5, [r3, #28]
	add r4, r4, r5
	ldr r5, [r3, #32]
	add r4, r4, r5
	ldr r5, [r3, #36]
	add r4, r4, r5
	ldr r5, [r3, #40]
	add r4, r4, r5
	ldr r5, [r3, #44]
	add r4, r4, r5
	ldr r5, [r3, #48]
	add r4, r4, r5
	ldr r5, [r3, #52]
	add r4, r4, r5
	ldr r5, [r3, #56]
	add r4, r4, r5
	ldr r3, [r3, #60]
	add r4, r4, r3
	add r2, r2, #16
	cmp r2, #992
	bge label32
	b label29
label32:
	add r3, r1, r2, lsl #2
	ldr r1, [r1, r2, lsl #2]
	add r1, r4, r1
	ldr r2, [r3, #4]
	add r1, r1, r2
	ldr r2, [r3, #8]
	add r1, r1, r2
	ldr r2, [r3, #12]
	add r1, r1, r2
	ldr r2, [r3, #16]
	add r1, r1, r2
	ldr r2, [r3, #20]
	add r1, r1, r2
	ldr r2, [r3, #24]
	add r1, r1, r2
	ldr r2, [r3, #28]
	add r5, r1, r2
	add r0, r0, #1
	cmp r0, #1000
	bge label27
	b label136
label622:
	mov r1, #4000
	ldr r7, [sp, #8]
	mla r1, r0, r1, r7
	mov r2, #0
	b label45
label47:
	mov r3, #4000
	ldr r4, [sp, #4]
	mla r3, r2, r3, r4
	ldr r5, [r3, r0, lsl #2]
	add r4, r1, r2, lsl #2
	str r5, [r1, r2, lsl #2]
	add r1, r3, #4000
	ldr r1, [r1, r0, lsl #2]
	str r1, [r4, #4]
	add r1, r3, #8000
	ldr r1, [r1, r0, lsl #2]
	str r1, [r4, #8]
	movw r1, #12000
	add r1, r3, r1
	ldr r1, [r1, r0, lsl #2]
	str r1, [r4, #12]
	add r1, r3, #16000
	ldr r1, [r1, r0, lsl #2]
	str r1, [r4, #16]
	movw r1, #20000
	add r1, r3, r1
	ldr r1, [r1, r0, lsl #2]
	str r1, [r4, #20]
	movw r1, #24000
	add r1, r3, r1
	ldr r1, [r1, r0, lsl #2]
	str r1, [r4, #24]
	movw r1, #28000
	add r1, r3, r1
	ldr r1, [r1, r0, lsl #2]
	str r1, [r4, #28]
	add r0, r0, #1
	cmp r0, #1000
	bge label68
	b label622
label45:
	mov r3, #4000
	ldr r4, [sp, #4]
	mla r3, r2, r3, r4
	ldr r5, [r3, r0, lsl #2]
	add r4, r1, r2, lsl #2
	str r5, [r1, r2, lsl #2]
	add r5, r3, #4000
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #4]
	add r5, r3, #8000
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #8]
	movw r5, #12000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #12]
	add r5, r3, #16000
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #16]
	movw r5, #20000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #20]
	movw r5, #24000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #24]
	movw r5, #28000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #28]
	add r5, r3, #32000
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #32]
	movw r5, #36000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #36]
	movw r5, #40000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #40]
	movw r5, #44000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #44]
	movw r5, #48000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #48]
	movw r5, #52000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #52]
	movw r5, #56000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #56]
	movw r5, #60000
	add r3, r3, r5
	ldr r3, [r3, r0, lsl #2]
	str r3, [r4, #60]
	add r2, r2, #16
	cmp r2, #992
	bge label47
	b label45
label5:
	add r5, r5, #1
	cmp r5, #1000
	bge label8
	mov r0, #4000
	ldr r4, [sp, #4]
	mla r0, r5, r0, r4
	bl getarray
	cmp r0, #1000
	beq label5
label6:
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
