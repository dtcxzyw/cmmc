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
	movw r1, #:lower16:x
	sub sp, sp, #28
	movt r1, #:upper16:x
	str r1, [sp, #0]
	mov r0, r1
	bl getarray
	movw r3, #:lower16:y
	sub r1, r0, #1
	movt r3, #:upper16:y
	str r1, [sp, #4]
	str r3, [sp, #8]
	mov r0, r3
	bl getarray
	movw r6, #:lower16:v
	movt r6, #:upper16:v
	str r6, [sp, #12]
	mov r0, r6
	bl getarray
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	str r3, [sp, #16]
	mov r0, r3
	bl getarray
	mov r0, #39
	bl _sysy_starttime
	mov r0, #0
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	str r3, [sp, #20]
.p2align 4
label2:
	ldr r1, [sp, #4]
	cmp r1, #0
	bgt label40
	mov r4, #0
	cmp r1, r4
	bgt label6
	cmp r1, #0
	bgt label19
	cmp r1, r4
	bgt label28
	add r0, r0, #1
	cmp r0, #100
	blt label2
	b label27
.p2align 4
label29:
	add r3, r5, #4
	cmp r1, r3
	bgt label259
	mov r7, r5
	b label32
.p2align 4
label259:
	mov r7, r5
	b label30
.p2align 4
label32:
	ldr r3, [sp, #8]
	ldr r8, [r3, r7, lsl #2]
	ldr r3, [sp, #16]
	ldr r9, [r3, r8, lsl #2]
	ldr r6, [sp, #12]
	ldr r6, [r6, r7, lsl #2]
	add r7, r7, #1
	cmp r1, r7
	add r6, r9, r6
	str r6, [r3, r8, lsl #2]
	bgt label32
	cmp r5, r1
	blt label35
	mov r4, r2
	ldr r1, [sp, #4]
	cmp r1, r2
	bgt label28
	add r0, r0, #1
	cmp r0, #100
	blt label2
	b label27
.p2align 4
label35:
	add r6, r5, #4
	ldr r3, [sp, #20]
	cmp r1, r6
	ldr r3, [r3, r4, lsl #2]
	sub r4, r3, #1
	bgt label36
	b label38
.p2align 4
label40:
	ldr r1, [sp, #4]
	cmp r1, #4
	bgt label389
	mov r1, #0
	mov r2, #0
	ldr r3, [sp, #20]
	str r2, [r3, r1, lsl #2]
	add r2, r1, #1
	ldr r1, [sp, #4]
	cmp r1, r2
	bgt label407
	mov r4, #0
	cmp r1, r4
	bgt label6
	cmp r1, #0
	bgt label19
	cmp r1, r4
	bgt label28
	add r0, r0, #1
	cmp r0, #100
	blt label2
	b label27
.p2align 4
label28:
	add r2, r4, #1
	ldr r1, [sp, #0]
	ldr r5, [r1, r4, lsl #2]
	ldr r1, [r1, r2, lsl #2]
	cmp r5, r1
	blt label29
	mov r4, r2
	ldr r1, [sp, #4]
	cmp r1, r2
	bgt label28
	add r0, r0, #1
	cmp r0, #100
	blt label2
	b label27
.p2align 4
label36:
	ldr r3, [sp, #8]
	ldr r9, [r3, r5, lsl #2]
	add r7, r3, r5, lsl #2
	ldr r3, [sp, #16]
	ldr r10, [r3, r9, lsl #2]
	ldr r6, [sp, #12]
	add r8, r6, r5, lsl #2
	ldr r6, [r6, r5, lsl #2]
	mla r6, r4, r6, r10
	str r6, [r3, r9, lsl #2]
	ldr r6, [r7, #4]
	ldr r9, [r3, r6, lsl #2]
	ldr r10, [r8, #4]
	mla r9, r4, r10, r9
	str r9, [r3, r6, lsl #2]
	ldr r6, [r7, #8]
	ldr r9, [r3, r6, lsl #2]
	ldr r10, [r8, #8]
	mla r9, r4, r10, r9
	str r9, [r3, r6, lsl #2]
	ldr r6, [r7, #12]
	ldr r7, [r3, r6, lsl #2]
	ldr r8, [r8, #12]
	mla r7, r4, r8, r7
	str r7, [r3, r6, lsl #2]
	add r3, r5, #8
	cmp r1, r3
	add r5, r5, #4
	bgt label36
.p2align 4
label38:
	ldr r3, [sp, #8]
	ldr r7, [r3, r5, lsl #2]
	ldr r3, [sp, #16]
	ldr r8, [r3, r7, lsl #2]
	ldr r6, [sp, #12]
	ldr r6, [r6, r5, lsl #2]
	add r5, r5, #1
	cmp r1, r5
	mla r6, r4, r6, r8
	str r6, [r3, r7, lsl #2]
	bgt label38
	mov r4, r2
	ldr r1, [sp, #4]
	cmp r1, r2
	bgt label28
	add r0, r0, #1
	cmp r0, #100
	blt label2
	b label27
.p2align 4
label6:
	add r2, r4, #1
	ldr r1, [sp, #0]
	ldr r5, [r1, r4, lsl #2]
	ldr r1, [r1, r2, lsl #2]
	cmp r5, r1
	blt label7
	mov r4, r2
	ldr r1, [sp, #4]
	cmp r1, r2
	bgt label6
	cmp r1, #0
	bgt label19
	mov r4, #0
	cmp r1, r4
	bgt label28
	add r0, r0, #1
	cmp r0, #100
	blt label2
	b label27
.p2align 4
label14:
	ldr r3, [sp, #8]
	ldr r9, [r3, r5, lsl #2]
	add r7, r3, r5, lsl #2
	ldr r3, [sp, #20]
	ldr r10, [r3, r9, lsl #2]
	ldr r6, [sp, #12]
	add r8, r6, r5, lsl #2
	ldr r6, [r6, r5, lsl #2]
	mla r6, r4, r6, r10
	str r6, [r3, r9, lsl #2]
	ldr r6, [r7, #4]
	ldr r9, [r3, r6, lsl #2]
	ldr r10, [r8, #4]
	mla r9, r4, r10, r9
	str r9, [r3, r6, lsl #2]
	ldr r6, [r7, #8]
	ldr r9, [r3, r6, lsl #2]
	ldr r10, [r8, #8]
	mla r9, r4, r10, r9
	str r9, [r3, r6, lsl #2]
	ldr r6, [r7, #12]
	ldr r7, [r3, r6, lsl #2]
	ldr r8, [r8, #12]
	mla r7, r4, r8, r7
	str r7, [r3, r6, lsl #2]
	add r3, r5, #8
	cmp r1, r3
	add r5, r5, #4
	bgt label14
.p2align 4
label16:
	ldr r3, [sp, #8]
	ldr r7, [r3, r5, lsl #2]
	ldr r3, [sp, #20]
	ldr r8, [r3, r7, lsl #2]
	ldr r6, [sp, #12]
	ldr r6, [r6, r5, lsl #2]
	add r5, r5, #1
	cmp r1, r5
	mla r6, r4, r6, r8
	str r6, [r3, r7, lsl #2]
	bgt label16
	mov r4, r2
	ldr r1, [sp, #4]
	cmp r1, r2
	bgt label6
	cmp r1, #0
	bgt label19
	mov r4, #0
	cmp r1, r4
	bgt label28
	add r0, r0, #1
	cmp r0, #100
	blt label2
	b label27
.p2align 4
label7:
	add r3, r5, #4
	cmp r1, r3
	bgt label83
	mov r7, r5
	b label8
.p2align 4
label83:
	mov r7, r5
	b label10
.p2align 4
label8:
	ldr r3, [sp, #8]
	ldr r8, [r3, r7, lsl #2]
	ldr r3, [sp, #20]
	ldr r9, [r3, r8, lsl #2]
	ldr r6, [sp, #12]
	ldr r6, [r6, r7, lsl #2]
	add r7, r7, #1
	cmp r1, r7
	add r6, r9, r6
	str r6, [r3, r8, lsl #2]
	bgt label8
	cmp r5, r1
	blt label13
	mov r4, r2
	ldr r1, [sp, #4]
	cmp r1, r2
	bgt label6
	cmp r1, #0
	bgt label19
	mov r4, #0
	cmp r1, r4
	bgt label28
	add r0, r0, #1
	cmp r0, #100
	blt label2
	b label27
.p2align 4
label10:
	ldr r3, [sp, #8]
	ldr r10, [r3, r7, lsl #2]
	add r8, r3, r7, lsl #2
	ldr r3, [sp, #20]
	ldr r11, [r3, r10, lsl #2]
	ldr r6, [sp, #12]
	add r9, r6, r7, lsl #2
	ldr r6, [r6, r7, lsl #2]
	add r6, r11, r6
	str r6, [r3, r10, lsl #2]
	ldr r6, [r8, #4]
	ldr r10, [r3, r6, lsl #2]
	ldr r11, [r9, #4]
	add r10, r10, r11
	str r10, [r3, r6, lsl #2]
	ldr r6, [r8, #8]
	ldr r10, [r3, r6, lsl #2]
	ldr r11, [r9, #8]
	add r10, r10, r11
	str r10, [r3, r6, lsl #2]
	ldr r6, [r8, #12]
	ldr r8, [r3, r6, lsl #2]
	ldr r9, [r9, #12]
	add r8, r8, r9
	str r8, [r3, r6, lsl #2]
	add r3, r7, #8
	cmp r1, r3
	add r7, r7, #4
	bgt label10
	b label8
.p2align 4
label13:
	add r6, r5, #4
	ldr r3, [sp, #16]
	cmp r1, r6
	ldr r3, [r3, r4, lsl #2]
	sub r4, r3, #1
	bgt label14
	b label16
.p2align 4
label30:
	ldr r3, [sp, #8]
	ldr r10, [r3, r7, lsl #2]
	add r8, r3, r7, lsl #2
	ldr r3, [sp, #16]
	ldr r11, [r3, r10, lsl #2]
	ldr r6, [sp, #12]
	add r9, r6, r7, lsl #2
	ldr r6, [r6, r7, lsl #2]
	add r6, r11, r6
	str r6, [r3, r10, lsl #2]
	ldr r6, [r8, #4]
	ldr r10, [r3, r6, lsl #2]
	ldr r11, [r9, #4]
	add r10, r10, r11
	str r10, [r3, r6, lsl #2]
	ldr r6, [r8, #8]
	ldr r10, [r3, r6, lsl #2]
	ldr r11, [r9, #8]
	add r10, r10, r11
	str r10, [r3, r6, lsl #2]
	ldr r6, [r8, #12]
	ldr r8, [r3, r6, lsl #2]
	ldr r9, [r9, #12]
	add r8, r8, r9
	str r8, [r3, r6, lsl #2]
	add r3, r7, #8
	cmp r1, r3
	add r7, r7, #4
	bgt label30
	b label32
.p2align 4
label19:
	ldr r1, [sp, #4]
	cmp r1, #4
	bgt label216
	mov r1, #0
	mov r2, #0
	ldr r3, [sp, #16]
	str r2, [r3, r1, lsl #2]
	add r2, r1, #1
	ldr r1, [sp, #4]
	cmp r1, r2
	bgt label223
	mov r4, #0
	cmp r1, r4
	bgt label28
	add r0, r0, #1
	cmp r0, #100
	blt label2
	b label27
.p2align 4
label216:
	mov r1, #0
	b label22
.p2align 4
label20:
	mov r2, #0
	ldr r3, [sp, #16]
	str r2, [r3, r1, lsl #2]
	add r2, r1, #1
	ldr r1, [sp, #4]
	cmp r1, r2
	bgt label223
	mov r4, #0
	cmp r1, r4
	bgt label28
	add r0, r0, #1
	cmp r0, #100
	blt label2
	b label27
.p2align 4
label223:
	mov r1, r2
	b label20
.p2align 4
label22:
	ldr r3, [sp, #16]
	mov r4, #0
	add r2, r3, r1, lsl #2
	str r4, [r3, r1, lsl #2]
	add r3, r1, #8
	str r4, [r2, #4]
	str r4, [r2, #8]
	str r4, [r2, #12]
	add r2, r1, #4
	ldr r1, [sp, #4]
	cmp r1, r3
	bgt label234
	mov r1, r2
	mov r2, #0
	ldr r3, [sp, #16]
	str r2, [r3, r1, lsl #2]
	add r2, r1, #1
	ldr r1, [sp, #4]
	cmp r1, r2
	bgt label223
	cmp r1, r4
	bgt label28
	add r0, r0, #1
	cmp r0, #100
	blt label2
	b label27
.p2align 4
label234:
	mov r1, r2
	b label22
label27:
	mov r0, #47
	bl _sysy_stoptime
	ldr r1, [sp, #4]
	ldr r3, [sp, #20]
	mov r0, r1
	mov r1, r3
	bl putarray
	add sp, sp, #28
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label389:
	mov r1, #0
.p2align 4
label41:
	ldr r3, [sp, #20]
	mov r4, #0
	add r2, r3, r1, lsl #2
	str r4, [r3, r1, lsl #2]
	add r3, r1, #8
	str r4, [r2, #4]
	str r4, [r2, #8]
	str r4, [r2, #12]
	add r2, r1, #4
	ldr r1, [sp, #4]
	cmp r1, r3
	bgt label400
	mov r1, r2
	mov r2, #0
	ldr r3, [sp, #20]
	str r2, [r3, r1, lsl #2]
	add r2, r1, #1
	ldr r1, [sp, #4]
	cmp r1, r2
	bgt label407
	cmp r1, r4
	bgt label6
	cmp r1, #0
	bgt label19
	cmp r1, r4
	bgt label28
	add r0, r0, #1
	cmp r0, #100
	blt label2
	b label27
.p2align 4
label400:
	mov r1, r2
	b label41
.p2align 4
label43:
	mov r2, #0
	ldr r3, [sp, #20]
	str r2, [r3, r1, lsl #2]
	add r2, r1, #1
	ldr r1, [sp, #4]
	cmp r1, r2
	bgt label407
	mov r4, #0
	cmp r1, r4
	bgt label6
	cmp r1, #0
	bgt label19
	cmp r1, r4
	bgt label28
	add r0, r0, #1
	cmp r0, #100
	blt label2
	b label27
.p2align 4
label407:
	mov r1, r2
	b label43
