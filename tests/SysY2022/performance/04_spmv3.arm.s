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
	sub sp, sp, #36
	movt r1, #:upper16:x
	str r1, [sp, #4]
	mov r0, r1
	bl getarray
	mov r1, r0
	movw r2, #:lower16:y
	sub r1, r0, #5
	sub r0, r0, #1
	movt r2, #:upper16:y
	str r0, [sp, #0]
	str r1, [sp, #8]
	str r2, [sp, #12]
	mov r0, r2
	bl getarray
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	str r5, [sp, #16]
	mov r0, r5
	bl getarray
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	str r2, [sp, #20]
	mov r0, r2
	bl getarray
	mov r0, #39
	bl _sysy_starttime
	mov r0, #0
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	str r2, [sp, #24]
	str r0, [sp, #28]
.p2align 4
label2:
	ldr r0, [sp, #0]
	cmp r0, #0
	bgt label4
	mov r4, #0
	cmp r0, r4
	bgt label11
	cmp r0, #0
	bgt label24
	cmp r0, r4
	bgt label33
	ldr r0, [sp, #28]
	add r0, r0, #1
	cmp r0, #100
	blt label263
	b label32
.p2align 4
label33:
	add r0, r4, #1
	ldr r1, [sp, #4]
	ldr r3, [r1, r4, lsl #2]
	ldr r1, [r1, r0, lsl #2]
	cmp r3, r1
	blt label34
	mov r4, r0
	ldr r0, [sp, #0]
	cmp r0, r4
	bgt label33
	ldr r0, [sp, #28]
	add r0, r0, #1
	cmp r0, #100
	blt label263
	b label32
.p2align 4
label41:
	ldr r2, [sp, #12]
	ldr r6, [r2, r3, lsl #2]
	ldr r2, [sp, #20]
	ldr r7, [r2, r6, lsl #2]
	ldr r5, [sp, #16]
	ldr r5, [r5, r3, lsl #2]
	add r3, r3, #1
	cmp r1, r3
	mla r5, r4, r5, r7
	str r5, [r2, r6, lsl #2]
	bgt label41
	mov r4, r0
	ldr r0, [sp, #0]
	cmp r0, r4
	bgt label33
	ldr r0, [sp, #28]
	add r0, r0, #1
	cmp r0, #100
	blt label263
	b label32
.p2align 4
label43:
	ldr r2, [sp, #12]
	ldr r9, [r2, r3, lsl #2]
	add r7, r2, r3, lsl #2
	ldr r2, [sp, #20]
	ldr r10, [r2, r9, lsl #2]
	ldr r5, [sp, #16]
	add r8, r5, r3, lsl #2
	ldr r5, [r5, r3, lsl #2]
	add r3, r3, #4
	cmp r6, r3
	mla r5, r4, r5, r10
	str r5, [r2, r9, lsl #2]
	ldr r5, [r7, #4]
	ldr r9, [r2, r5, lsl #2]
	ldr r10, [r8, #4]
	mla r9, r4, r10, r9
	str r9, [r2, r5, lsl #2]
	ldr r5, [r7, #8]
	ldr r9, [r2, r5, lsl #2]
	ldr r10, [r8, #8]
	mla r9, r4, r10, r9
	str r9, [r2, r5, lsl #2]
	ldr r5, [r7, #12]
	ldr r7, [r2, r5, lsl #2]
	ldr r8, [r8, #12]
	mla r7, r4, r8, r7
	str r7, [r2, r5, lsl #2]
	bgt label43
	b label41
.p2align 4
label34:
	add r2, r3, #4
	sub r6, r1, #4
	cmp r1, r2
	bgt label280
	mov r6, r3
	b label35
.p2align 4
label280:
	mov r7, r3
	b label37
.p2align 4
label35:
	ldr r2, [sp, #12]
	ldr r7, [r2, r6, lsl #2]
	ldr r2, [sp, #20]
	ldr r8, [r2, r7, lsl #2]
	ldr r5, [sp, #16]
	ldr r5, [r5, r6, lsl #2]
	add r6, r6, #1
	cmp r1, r6
	add r5, r8, r5
	str r5, [r2, r7, lsl #2]
	bgt label35
	cmp r3, r1
	blt label40
	mov r4, r0
	ldr r0, [sp, #0]
	cmp r0, r4
	bgt label33
	ldr r0, [sp, #28]
	add r0, r0, #1
	cmp r0, #100
	blt label263
	b label32
.p2align 4
label40:
	add r5, r3, #4
	ldr r2, [sp, #24]
	sub r6, r1, #4
	cmp r1, r5
	ldr r2, [r2, r4, lsl #2]
	sub r4, r2, #1
	bgt label43
	b label41
.p2align 4
label11:
	add r0, r4, #1
	ldr r1, [sp, #4]
	ldr r3, [r1, r4, lsl #2]
	ldr r1, [r1, r0, lsl #2]
	cmp r3, r1
	blt label12
	mov r4, r0
	ldr r0, [sp, #0]
	cmp r0, r4
	bgt label11
	cmp r0, #0
	bgt label24
	mov r4, #0
	cmp r0, r4
	bgt label33
	ldr r0, [sp, #28]
	add r0, r0, #1
	cmp r0, #100
	blt label263
	b label32
.p2align 4
label19:
	ldr r2, [sp, #12]
	ldr r9, [r2, r3, lsl #2]
	add r7, r2, r3, lsl #2
	ldr r2, [sp, #24]
	ldr r10, [r2, r9, lsl #2]
	ldr r5, [sp, #16]
	add r8, r5, r3, lsl #2
	ldr r5, [r5, r3, lsl #2]
	add r3, r3, #4
	cmp r6, r3
	mla r5, r4, r5, r10
	str r5, [r2, r9, lsl #2]
	ldr r5, [r7, #4]
	ldr r9, [r2, r5, lsl #2]
	ldr r10, [r8, #4]
	mla r9, r4, r10, r9
	str r9, [r2, r5, lsl #2]
	ldr r5, [r7, #8]
	ldr r9, [r2, r5, lsl #2]
	ldr r10, [r8, #8]
	mla r9, r4, r10, r9
	str r9, [r2, r5, lsl #2]
	ldr r5, [r7, #12]
	ldr r7, [r2, r5, lsl #2]
	ldr r8, [r8, #12]
	mla r7, r4, r8, r7
	str r7, [r2, r5, lsl #2]
	bgt label19
.p2align 4
label21:
	ldr r2, [sp, #12]
	ldr r6, [r2, r3, lsl #2]
	ldr r2, [sp, #24]
	ldr r7, [r2, r6, lsl #2]
	ldr r5, [sp, #16]
	ldr r5, [r5, r3, lsl #2]
	add r3, r3, #1
	cmp r1, r3
	mla r5, r4, r5, r7
	str r5, [r2, r6, lsl #2]
	bgt label21
	mov r4, r0
	ldr r0, [sp, #0]
	cmp r0, r4
	bgt label11
	cmp r0, #0
	bgt label24
	mov r4, #0
	cmp r0, r4
	bgt label33
	ldr r0, [sp, #28]
	add r0, r0, #1
	cmp r0, #100
	blt label263
	b label32
.p2align 4
label12:
	add r2, r3, #4
	sub r6, r1, #4
	cmp r1, r2
	bgt label105
	mov r6, r3
	b label15
.p2align 4
label105:
	mov r7, r3
	b label13
.p2align 4
label15:
	ldr r2, [sp, #12]
	ldr r7, [r2, r6, lsl #2]
	ldr r2, [sp, #24]
	ldr r8, [r2, r7, lsl #2]
	ldr r5, [sp, #16]
	ldr r5, [r5, r6, lsl #2]
	add r6, r6, #1
	cmp r1, r6
	add r5, r8, r5
	str r5, [r2, r7, lsl #2]
	bgt label15
	cmp r3, r1
	blt label18
	mov r4, r0
	ldr r0, [sp, #0]
	cmp r0, r4
	bgt label11
	cmp r0, #0
	bgt label24
	mov r4, #0
	cmp r0, r4
	bgt label33
	ldr r0, [sp, #28]
	add r0, r0, #1
	cmp r0, #100
	blt label263
	b label32
.p2align 4
label18:
	add r5, r3, #4
	ldr r2, [sp, #20]
	sub r6, r1, #4
	cmp r1, r5
	ldr r2, [r2, r4, lsl #2]
	sub r4, r2, #1
	bgt label19
	b label21
.p2align 4
label37:
	ldr r2, [sp, #12]
	ldr r10, [r2, r7, lsl #2]
	add r8, r2, r7, lsl #2
	ldr r2, [sp, #20]
	ldr r11, [r2, r10, lsl #2]
	ldr r5, [sp, #16]
	add r9, r5, r7, lsl #2
	ldr r5, [r5, r7, lsl #2]
	add r7, r7, #4
	cmp r6, r7
	add r5, r11, r5
	str r5, [r2, r10, lsl #2]
	ldr r5, [r8, #4]
	ldr r10, [r2, r5, lsl #2]
	ldr r11, [r9, #4]
	add r10, r10, r11
	str r10, [r2, r5, lsl #2]
	ldr r5, [r8, #8]
	ldr r10, [r2, r5, lsl #2]
	ldr r11, [r9, #8]
	add r10, r10, r11
	str r10, [r2, r5, lsl #2]
	ldr r5, [r8, #12]
	ldr r8, [r2, r5, lsl #2]
	ldr r9, [r9, #12]
	add r8, r8, r9
	str r8, [r2, r5, lsl #2]
	bgt label37
	mov r6, r7
	b label35
.p2align 4
label13:
	ldr r2, [sp, #12]
	ldr r10, [r2, r7, lsl #2]
	add r8, r2, r7, lsl #2
	ldr r2, [sp, #24]
	ldr r11, [r2, r10, lsl #2]
	ldr r5, [sp, #16]
	add r9, r5, r7, lsl #2
	ldr r5, [r5, r7, lsl #2]
	add r7, r7, #4
	cmp r6, r7
	add r5, r11, r5
	str r5, [r2, r10, lsl #2]
	ldr r5, [r8, #4]
	ldr r10, [r2, r5, lsl #2]
	ldr r11, [r9, #4]
	add r10, r10, r11
	str r10, [r2, r5, lsl #2]
	ldr r5, [r8, #8]
	ldr r10, [r2, r5, lsl #2]
	ldr r11, [r9, #8]
	add r10, r10, r11
	str r10, [r2, r5, lsl #2]
	ldr r5, [r8, #12]
	ldr r8, [r2, r5, lsl #2]
	ldr r9, [r9, #12]
	add r8, r8, r9
	str r8, [r2, r5, lsl #2]
	bgt label13
	mov r6, r7
	b label15
.p2align 4
label24:
	ldr r0, [sp, #0]
	cmp r0, #4
	bgt label237
	mov r0, #0
	mov r1, #0
	ldr r2, [sp, #20]
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #0]
	cmp r0, r1
	bgt label244
	mov r4, #0
	cmp r0, r4
	bgt label33
	ldr r0, [sp, #28]
	add r0, r0, #1
	cmp r0, #100
	blt label263
	b label32
.p2align 4
label237:
	mov r0, #0
	b label27
.p2align 4
label25:
	mov r1, #0
	ldr r2, [sp, #20]
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #0]
	cmp r0, r1
	bgt label244
	mov r4, #0
	cmp r0, r4
	bgt label33
	ldr r0, [sp, #28]
	add r0, r0, #1
	cmp r0, #100
	blt label263
	b label32
.p2align 4
label244:
	mov r0, r1
	b label25
.p2align 4
label27:
	ldr r2, [sp, #20]
	mov r3, #0
	add r1, r2, r0, lsl #2
	str r3, [r2, r0, lsl #2]
	add r0, r0, #4
	str r3, [r1, #4]
	str r3, [r1, #8]
	str r3, [r1, #12]
	ldr r1, [sp, #8]
	cmp r1, r0
	bgt label27
	mov r1, #0
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #0]
	cmp r0, r1
	bgt label244
	mov r4, #0
	cmp r0, r4
	bgt label33
	ldr r0, [sp, #28]
	add r0, r0, #1
	cmp r0, #100
	blt label263
	b label32
.p2align 4
label4:
	ldr r0, [sp, #0]
	cmp r0, #4
	bgt label67
	mov r0, #0
	mov r1, #0
	ldr r2, [sp, #24]
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #0]
	cmp r0, r1
	bgt label74
	mov r4, #0
	cmp r0, r4
	bgt label11
	cmp r0, #0
	bgt label24
	cmp r0, r4
	bgt label33
	ldr r0, [sp, #28]
	add r0, r0, #1
	cmp r0, #100
	blt label263
	b label32
.p2align 4
label67:
	mov r0, #0
	b label7
.p2align 4
label5:
	mov r1, #0
	ldr r2, [sp, #24]
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #0]
	cmp r0, r1
	bgt label74
	mov r4, #0
	cmp r0, r4
	bgt label11
	cmp r0, #0
	bgt label24
	cmp r0, r4
	bgt label33
	ldr r0, [sp, #28]
	add r0, r0, #1
	cmp r0, #100
	blt label263
	b label32
.p2align 4
label74:
	mov r0, r1
	b label5
.p2align 4
label7:
	ldr r2, [sp, #24]
	mov r3, #0
	add r1, r2, r0, lsl #2
	str r3, [r2, r0, lsl #2]
	add r0, r0, #4
	str r3, [r1, #4]
	str r3, [r1, #8]
	str r3, [r1, #12]
	ldr r1, [sp, #8]
	cmp r1, r0
	bgt label7
	mov r1, #0
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #0]
	cmp r0, r1
	bgt label74
	mov r4, #0
	cmp r0, r4
	bgt label11
	cmp r0, #0
	bgt label24
	cmp r0, r4
	bgt label33
	ldr r0, [sp, #28]
	add r0, r0, #1
	cmp r0, #100
	bge label32
label263:
	str r0, [sp, #28]
	b label2
label32:
	mov r0, #47
	bl _sysy_stoptime
	ldr r0, [sp, #0]
	ldr r2, [sp, #24]
	mov r1, r2
	bl putarray
	add sp, sp, #36
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
