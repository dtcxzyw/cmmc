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
	movw r0, #:lower16:x
	sub sp, sp, #36
	movt r0, #:upper16:x
	str r0, [sp, #0]
	mov r1, r0
	bl getarray
	sub r0, r0, #1
	str r0, [sp, #4]
	movw r0, #:lower16:y
	movt r0, #:upper16:y
	str r0, [sp, #8]
	mov r1, r0
	bl getarray
	movw r0, #:lower16:v
	movt r0, #:upper16:v
	str r0, [sp, #12]
	mov r4, r0
	bl getarray
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	str r0, [sp, #16]
	mov r1, r0
	bl getarray
	mov r0, #39
	bl _sysy_starttime
	mov r0, #0
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	str r1, [sp, #20]
	str r0, [sp, #24]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble label96
	mov r2, #0
	add r3, r2, #4
	cmp r0, r3
	ble label6
label669:
	ldr r1, [sp, #20]
	mov r4, #0
	add r0, r1, r2, lsl #2
	str r4, [r1, r2, lsl #2]
	mov r2, r3
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	add r3, r3, #4
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label6
	b label100
label96:
	mov r2, #0
	ldr r0, [sp, #4]
	cmp r0, r2
	ble label40
	ldr r1, [sp, #0]
	add r0, r2, #1
	ldr r8, [r1, r2, lsl #2]
	add r5, r1, r2, lsl #2
	ldr r1, [r5, #4]
	cmp r8, r1
	bge label28
	ldr r1, [sp, #0]
	mov r9, r8
	ldr r3, [r1, r0, lsl #2]
	add r6, r8, #4
	cmp r3, r6
	ble label155
label21:
	ldr r1, [sp, #8]
	ldr r10, [r1, r9, lsl #2]
	add r7, r1, r9, lsl #2
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
	mov r9, r6
	ldr r4, [r7, #12]
	ldr r7, [r1, r4, lsl #2]
	ldr r8, [r8, #12]
	add r7, r7, r8
	str r7, [r1, r4, lsl #2]
	add r6, r6, #4
	cmp r3, r6
	ble label155
	b label21
label364:
	mov r2, #0
	ldr r0, [sp, #4]
	cmp r0, r2
	ble label43
	ldr r1, [sp, #0]
	add r0, r2, #1
	ldr r8, [r1, r2, lsl #2]
	add r5, r1, r2, lsl #2
	ldr r1, [r5, #4]
	cmp r8, r1
	bge label46
	ldr r1, [sp, #0]
	mov r9, r8
	ldr r3, [r1, r0, lsl #2]
	add r6, r8, #4
	cmp r3, r6
	ble label504
	b label67
label43:
	ldr r0, [sp, #24]
	add r0, r0, #1
	cmp r0, #100
	bge label44
	str r0, [sp, #24]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble label96
	mov r2, #0
	add r3, r2, #4
	cmp r0, r3
	ble label6
	b label669
label504:
	mov r8, r9
	add r6, r9, #4
	cmp r3, r6
	ble label509
	b label66
label509:
	mov r6, r8
label63:
	ldr r1, [sp, #8]
	ldr r7, [r1, r6, lsl #2]
	ldr r1, [sp, #16]
	ldr r8, [r1, r7, lsl #2]
	ldr r4, [sp, #12]
	ldr r4, [r4, r6, lsl #2]
	add r6, r6, #1
	cmp r3, r6
	add r4, r8, r4
	str r4, [r1, r7, lsl #2]
	ble label65
	b label63
label66:
	ldr r1, [sp, #8]
	ldr r10, [r1, r8, lsl #2]
	add r7, r1, r8, lsl #2
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
	mov r8, r6
	str r7, [r1, r4, lsl #2]
	add r6, r6, #4
	cmp r3, r6
	ble label509
	b label66
label67:
	ldr r1, [sp, #8]
	ldr r10, [r1, r9, lsl #2]
	add r7, r1, r9, lsl #2
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
	mov r9, r6
	ldr r4, [r7, #12]
	ldr r7, [r1, r4, lsl #2]
	ldr r8, [r8, #12]
	add r7, r7, r8
	str r7, [r1, r4, lsl #2]
	add r6, r6, #4
	cmp r3, r6
	ble label504
	b label67
label155:
	mov r8, r9
	add r6, r9, #4
	cmp r3, r6
	ble label194
	b label24
label194:
	mov r6, r8
	b label25
label24:
	ldr r1, [sp, #8]
	ldr r10, [r1, r8, lsl #2]
	add r7, r1, r8, lsl #2
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
	mov r8, r6
	str r7, [r1, r4, lsl #2]
	add r6, r6, #4
	cmp r3, r6
	ble label194
	b label24
label25:
	ldr r1, [sp, #8]
	ldr r7, [r1, r6, lsl #2]
	ldr r1, [sp, #20]
	ldr r8, [r1, r7, lsl #2]
	ldr r4, [sp, #12]
	ldr r4, [r4, r6, lsl #2]
	add r6, r6, #1
	cmp r3, r6
	add r4, r8, r4
	str r4, [r1, r7, lsl #2]
	ble label27
	b label25
label46:
	cmp r8, r1
	bge label387
	ldr r1, [sp, #20]
	ldr r1, [r1, r2, lsl #2]
	sub r2, r1, #1
	ldr r1, [sp, #0]
	ldr r3, [r1, r0, lsl #2]
	add r5, r8, #4
	cmp r3, r5
	ble label399
	b label52
label387:
	mov r2, r0
	ldr r0, [sp, #4]
	cmp r0, r2
	ble label43
	ldr r1, [sp, #0]
	add r0, r2, #1
	ldr r8, [r1, r2, lsl #2]
	add r5, r1, r2, lsl #2
	ldr r1, [r5, #4]
	cmp r8, r1
	bge label46
	ldr r1, [sp, #0]
	mov r9, r8
	ldr r3, [r1, r0, lsl #2]
	add r6, r8, #4
	cmp r3, r6
	ble label504
	b label67
label399:
	mov r7, r8
	add r5, r8, #4
	cmp r3, r5
	ble label442
	b label55
label52:
	ldr r1, [sp, #8]
	ldr r9, [r1, r8, lsl #2]
	add r6, r1, r8, lsl #2
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
	mov r8, r5
	ldr r4, [r6, #12]
	ldr r6, [r1, r4, lsl #2]
	ldr r7, [r7, #12]
	mla r6, r2, r7, r6
	str r6, [r1, r4, lsl #2]
	add r5, r5, #4
	cmp r3, r5
	ble label399
	b label52
label55:
	ldr r1, [sp, #8]
	ldr r9, [r1, r7, lsl #2]
	add r6, r1, r7, lsl #2
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
	mov r7, r5
	str r6, [r1, r4, lsl #2]
	add r5, r5, #4
	cmp r3, r5
	ble label442
	b label55
label442:
	mov r5, r7
label56:
	ldr r1, [sp, #8]
	ldr r6, [r1, r5, lsl #2]
	ldr r1, [sp, #16]
	ldr r7, [r1, r6, lsl #2]
	ldr r4, [sp, #12]
	ldr r4, [r4, r5, lsl #2]
	add r5, r5, #1
	cmp r3, r5
	mla r4, r2, r4, r7
	str r4, [r1, r6, lsl #2]
	ble label496
	b label56
label496:
	mov r2, r0
	ldr r0, [sp, #4]
	cmp r0, r2
	ble label43
	ldr r1, [sp, #0]
	add r0, r2, #1
	ldr r8, [r1, r2, lsl #2]
	add r5, r1, r2, lsl #2
	ldr r1, [r5, #4]
	cmp r8, r1
	bge label46
	ldr r1, [sp, #0]
	mov r9, r8
	ldr r3, [r1, r0, lsl #2]
	add r6, r8, #4
	cmp r3, r6
	ble label504
	b label67
label27:
	ldr r1, [sp, #0]
	ldr r8, [r1, r2, lsl #2]
	ldr r1, [r5, #4]
label28:
	cmp r8, r1
	bge label252
	ldr r1, [sp, #16]
	ldr r1, [r1, r2, lsl #2]
	sub r2, r1, #1
	ldr r1, [sp, #0]
	ldr r3, [r1, r0, lsl #2]
	add r5, r8, #4
	cmp r3, r5
	ble label264
	b label34
label252:
	mov r2, r0
	ldr r0, [sp, #4]
	cmp r0, r2
	ble label40
	ldr r1, [sp, #0]
	add r0, r2, #1
	ldr r8, [r1, r2, lsl #2]
	add r5, r1, r2, lsl #2
	ldr r1, [r5, #4]
	cmp r8, r1
	bge label28
	ldr r1, [sp, #0]
	mov r9, r8
	ldr r3, [r1, r0, lsl #2]
	add r6, r8, #4
	cmp r3, r6
	ble label155
	b label21
label40:
	ldr r0, [sp, #4]
	cmp r0, #0
	ble label364
	mov r2, #0
	add r3, r2, #4
	cmp r0, r3
	ble label71
	ldr r1, [sp, #16]
	mov r4, #0
	add r0, r1, r2, lsl #2
	str r4, [r1, r2, lsl #2]
	mov r2, r3
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	add r3, r3, #4
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label71
	b label601
label34:
	ldr r1, [sp, #8]
	ldr r9, [r1, r8, lsl #2]
	add r6, r1, r8, lsl #2
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
	mov r8, r5
	ldr r4, [r6, #12]
	ldr r6, [r1, r4, lsl #2]
	ldr r7, [r7, #12]
	mla r6, r2, r7, r6
	str r6, [r1, r4, lsl #2]
	add r5, r5, #4
	cmp r3, r5
	ble label264
	b label34
label264:
	mov r7, r8
	add r5, r8, #4
	cmp r3, r5
	ble label307
	b label39
label307:
	mov r5, r7
label37:
	ldr r1, [sp, #8]
	ldr r6, [r1, r5, lsl #2]
	ldr r1, [sp, #20]
	ldr r7, [r1, r6, lsl #2]
	ldr r4, [sp, #12]
	ldr r4, [r4, r5, lsl #2]
	add r5, r5, #1
	cmp r3, r5
	mla r4, r2, r4, r7
	str r4, [r1, r6, lsl #2]
	ble label323
	b label37
label323:
	mov r2, r0
	ldr r0, [sp, #4]
	cmp r0, r2
	ble label40
	ldr r1, [sp, #0]
	add r0, r2, #1
	ldr r8, [r1, r2, lsl #2]
	add r5, r1, r2, lsl #2
	ldr r1, [r5, #4]
	cmp r8, r1
	bge label28
	ldr r1, [sp, #0]
	mov r9, r8
	ldr r3, [r1, r0, lsl #2]
	add r6, r8, #4
	cmp r3, r6
	ble label155
	b label21
label39:
	ldr r1, [sp, #8]
	ldr r9, [r1, r7, lsl #2]
	add r6, r1, r7, lsl #2
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
	mov r7, r5
	str r6, [r1, r4, lsl #2]
	add r5, r5, #4
	cmp r3, r5
	ble label307
	b label39
label6:
	add r3, r2, #4
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label9
label105:
	ldr r1, [sp, #20]
	mov r4, #0
	add r0, r1, r2, lsl #2
	str r4, [r1, r2, lsl #2]
	mov r2, r3
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	add r3, r3, #4
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label9
	b label105
label9:
	add r3, r2, #4
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label116
label115:
	ldr r1, [sp, #20]
	mov r4, #0
	add r0, r1, r2, lsl #2
	str r4, [r1, r2, lsl #2]
	mov r2, r3
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	add r3, r3, #4
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label116
	b label115
label116:
	mov r0, r2
	mov r2, #0
	ldr r1, [sp, #20]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label128
	mov r0, r1
	ldr r1, [sp, #20]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label128
	mov r0, r1
	ldr r1, [sp, #20]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label128
	mov r0, r1
	ldr r1, [sp, #20]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label128
	mov r0, r1
	ldr r1, [sp, #20]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label128
	mov r0, r1
	ldr r1, [sp, #20]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label128
	mov r0, r1
	ldr r1, [sp, #20]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label128
	mov r0, r1
	ldr r1, [sp, #20]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label128
	mov r0, r1
	ldr r1, [sp, #20]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label128
	mov r0, r1
	ldr r1, [sp, #20]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label128
label771:
	mov r0, r1
	mov r2, #0
	ldr r1, [sp, #20]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label128
	b label771
label128:
	mov r2, #0
	ldr r0, [sp, #4]
	cmp r0, r2
	ble label40
	ldr r1, [sp, #0]
	add r0, r2, #1
	ldr r8, [r1, r2, lsl #2]
	add r5, r1, r2, lsl #2
	ldr r1, [r5, #4]
	cmp r8, r1
	bge label28
	ldr r1, [sp, #0]
	mov r9, r8
	ldr r3, [r1, r0, lsl #2]
	add r6, r8, #4
	cmp r3, r6
	ble label155
	b label21
label65:
	ldr r1, [sp, #0]
	ldr r8, [r1, r2, lsl #2]
	ldr r1, [r5, #4]
	cmp r8, r1
	bge label387
	ldr r1, [sp, #20]
	ldr r1, [r1, r2, lsl #2]
	sub r2, r1, #1
	ldr r1, [sp, #0]
	ldr r3, [r1, r0, lsl #2]
	add r5, r8, #4
	cmp r3, r5
	ble label399
	b label52
label601:
	ldr r1, [sp, #16]
	mov r4, #0
	add r0, r1, r2, lsl #2
	str r4, [r1, r2, lsl #2]
	mov r2, r3
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	add r3, r3, #4
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label71
	b label601
label100:
	ldr r1, [sp, #20]
	mov r4, #0
	add r0, r1, r2, lsl #2
	str r4, [r1, r2, lsl #2]
	mov r2, r3
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	add r3, r3, #4
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label6
	b label100
label71:
	add r3, r2, #4
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label73
	b label611
label73:
	add r3, r2, #4
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label617
label616:
	ldr r1, [sp, #16]
	mov r4, #0
	add r0, r1, r2, lsl #2
	str r4, [r1, r2, lsl #2]
	mov r2, r3
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	add r3, r3, #4
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label617
	b label616
label617:
	mov r0, r2
	mov r2, #0
	ldr r1, [sp, #16]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label629
	mov r0, r1
	ldr r1, [sp, #16]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label629
	mov r0, r1
	ldr r1, [sp, #16]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label629
	mov r0, r1
	ldr r1, [sp, #16]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label629
	mov r0, r1
	ldr r1, [sp, #16]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label629
	mov r0, r1
	ldr r1, [sp, #16]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label629
	mov r0, r1
	ldr r1, [sp, #16]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label629
	mov r0, r1
	ldr r1, [sp, #16]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label629
	mov r0, r1
	ldr r1, [sp, #16]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label629
	mov r0, r1
	ldr r1, [sp, #16]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label629
label773:
	mov r0, r1
	mov r2, #0
	ldr r1, [sp, #16]
	str r2, [r1, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label629
	b label773
label629:
	mov r2, #0
	ldr r0, [sp, #4]
	cmp r0, r2
	ble label43
	ldr r1, [sp, #0]
	add r0, r2, #1
	ldr r8, [r1, r2, lsl #2]
	add r5, r1, r2, lsl #2
	ldr r1, [r5, #4]
	cmp r8, r1
	bge label46
	ldr r1, [sp, #0]
	mov r9, r8
	ldr r3, [r1, r0, lsl #2]
	add r6, r8, #4
	cmp r3, r6
	ble label504
	b label67
label611:
	ldr r1, [sp, #16]
	mov r4, #0
	add r0, r1, r2, lsl #2
	str r4, [r1, r2, lsl #2]
	mov r2, r3
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	add r3, r3, #4
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label73
	b label611
label44:
	mov r0, #47
	bl _sysy_stoptime
	ldr r0, [sp, #4]
	ldr r1, [sp, #20]
	bl putarray
	add sp, sp, #36
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
