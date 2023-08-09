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
	movt r0, #:upper16:x
	sub sp, sp, #28
	bl getarray
	movw r5, #:lower16:y
	movt r5, #:upper16:y
	mov r4, r0
	mov r0, r5
	bl getarray
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	mov r0, r5
	bl getarray
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mov r0, r6
	bl getarray
	mov r0, #39
	bl _sysy_starttime
	sub r2, r4, #4
	sub r0, r4, #1
	str r0, [sp, #20]
	sub r0, r4, #19
	str r2, [sp, #16]
	str r0, [sp, #12]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #20]
	cmp r0, #0
	bgt label4
	b label127
.p2align 4
label556:
	ldr r0, [sp, #8]
	add r0, r0, #1
	cmp r0, #100
	bge label80
.p2align 4
label402:
	str r0, [sp, #8]
	ldr r0, [sp, #20]
	cmp r0, #0
	ble label127
.p2align 4
label4:
	ldr r0, [sp, #20]
	cmp r0, #3
	ble label130
	ldr r2, [sp, #16]
	cmp r2, #15
	ble label145
	movw r6, #:lower16:b
	movt r6, #:upper16:b
	mov r1, #0
.p2align 4
label24:
	mov r0, #0
	add r1, r1, #16
	str r0, [r6, #0]
	str r0, [r6, #4]
	str r0, [r6, #8]
	str r0, [r6, #12]
	str r0, [r6, #16]
	str r0, [r6, #20]
	str r0, [r6, #24]
	str r0, [r6, #28]
	str r0, [r6, #32]
	str r0, [r6, #36]
	str r0, [r6, #40]
	str r0, [r6, #44]
	str r0, [r6, #48]
	str r0, [r6, #52]
	str r0, [r6, #56]
	str r0, [r6, #60]
	ldr r0, [sp, #12]
	cmp r0, r1
	ble label180
	add r6, r6, #64
	b label24
.p2align 4
label180:
	mov r3, r1
	ldr r2, [sp, #16]
	cmp r2, r1
	ble label542
.p2align 4
label18:
	movw r6, #:lower16:b
	movt r6, #:upper16:b
	mov r1, r3
	add r0, r6, r3, lsl #2
.p2align 4
label19:
	mov r2, #0
	add r1, r1, #4
	str r2, [r0, #0]
	str r2, [r0, #4]
	str r2, [r0, #8]
	str r2, [r0, #12]
	ldr r2, [sp, #16]
	cmp r2, r1
	ble label159
	add r0, r0, #16
	b label19
.p2align 4
label159:
	mov r2, r1
	ldr r0, [sp, #20]
	cmp r0, r1
	ble label541
.p2align 4
label8:
	movw r6, #:lower16:b
	movt r6, #:upper16:b
	add r1, r6, r2, lsl #2
.p2align 4
label9:
	mov r0, #0
	add r2, r2, #1
	str r0, [r1, #0]
	ldr r0, [sp, #20]
	cmp r0, r2
	ble label141
	add r1, r1, #4
	b label9
.p2align 4
label130:
	mov r2, #0
	ldr r0, [sp, #20]
	cmp r0, r2
	bgt label8
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r1, r0
	ldr r0, [sp, #20]
	cmp r0, r2
	bgt label31
	b label185
.p2align 4
label37:
	add r3, r3, #4
.p2align 4
label34:
	ldr r5, [r3, #0]
	movw r6, #:lower16:b
	movt r6, #:upper16:b
	add r6, r6, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r7, [r6, #0]
	ldr r5, [r5, r4, lsl #2]
	add r4, r4, #1
	cmp r0, r4
	mla r5, r2, r5, r7
	str r5, [r6, #0]
	bgt label37
	add r1, r1, #4
	ldr r3, [sp, #4]
	ldr r0, [sp, #20]
	mov r2, r3
	cmp r0, r3
	ble label570
.p2align 4
label31:
	add r3, r2, #1
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	str r3, [sp, #4]
	ldr r4, [r1, #0]
	ldr r0, [r0, r3, lsl #2]
	cmp r4, r0
	bge label32
	add r5, r4, #3
	sub r3, r0, #3
	cmp r0, r5
	ble label227
	movw r5, #:lower16:y
	movt r5, #:upper16:y
	mov r8, r4
	add r7, r5, r4, lsl #2
	b label42
.p2align 4
label45:
	add r7, r7, #16
.p2align 4
label42:
	ldr r5, [r7, #0]
	movw r6, #:lower16:b
	movt r6, #:upper16:b
	add r9, r6, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r10, [r9, #0]
	add r5, r5, r8, lsl #2
	add r8, r8, #4
	ldr r11, [r5, #0]
	cmp r3, r8
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r7, #4]
	add r9, r6, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, #4]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r7, #8]
	add r9, r6, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, #8]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r7, #12]
	add r6, r6, r9, lsl #2
	ldr r9, [r6, #0]
	ldr r5, [r5, #12]
	add r5, r9, r5
	str r5, [r6, #0]
	bgt label45
	cmp r0, r8
	ble label547
.p2align 4
label48:
	movw r5, #:lower16:y
	movt r5, #:upper16:y
	mov r7, r8
	add r3, r5, r8, lsl #2
.p2align 4
label49:
	ldr r5, [r3, #0]
	movw r6, #:lower16:b
	movt r6, #:upper16:b
	add r6, r6, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r8, [r6, #0]
	ldr r5, [r5, r7, lsl #2]
	add r7, r7, #1
	cmp r0, r7
	add r5, r8, r5
	str r5, [r6, #0]
	ble label286
	add r3, r3, #4
	b label49
.p2align 4
label286:
	cmp r4, r0
	bge label549
.p2align 4
label33:
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	movw r5, #:lower16:y
	movt r5, #:upper16:y
	ldr r2, [r6, r2, lsl #2]
	add r3, r5, r4, lsl #2
	sub r2, r2, #1
	b label34
.p2align 4
label570:
	ldr r0, [sp, #20]
	cmp r0, #0
	ble label543
.p2align 4
label81:
	ldr r0, [sp, #20]
	cmp r0, #3
	ble label404
	ldr r2, [sp, #16]
	cmp r2, #15
	ble label419
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mov r1, #0
.p2align 4
label93:
	mov r0, #0
	add r1, r1, #16
	str r0, [r6, #0]
	str r0, [r6, #4]
	str r0, [r6, #8]
	str r0, [r6, #12]
	str r0, [r6, #16]
	str r0, [r6, #20]
	str r0, [r6, #24]
	str r0, [r6, #28]
	str r0, [r6, #32]
	str r0, [r6, #36]
	str r0, [r6, #40]
	str r0, [r6, #44]
	str r0, [r6, #48]
	str r0, [r6, #52]
	str r0, [r6, #56]
	str r0, [r6, #60]
	ldr r0, [sp, #12]
	cmp r0, r1
	ble label439
	add r6, r6, #64
	b label93
.p2align 4
label32:
	cmp r4, r0
	blt label33
	add r1, r1, #4
	ldr r3, [sp, #4]
	ldr r0, [sp, #20]
	mov r2, r3
	cmp r0, r3
	bgt label31
	b label185
.p2align 4
label227:
	mov r8, r4
	cmp r0, r4
	bgt label48
	cmp r4, r0
	blt label33
	add r1, r1, #4
	ldr r3, [sp, #4]
	ldr r0, [sp, #20]
	mov r2, r3
	cmp r0, r3
	bgt label31
	b label185
.p2align 4
label439:
	mov r3, r1
	ldr r2, [sp, #16]
	cmp r2, r1
	ble label562
.p2align 4
label100:
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mov r1, r3
	add r0, r6, r3, lsl #2
	b label101
.p2align 4
label104:
	add r0, r0, #16
.p2align 4
label101:
	mov r2, #0
	add r1, r1, #4
	str r2, [r0, #0]
	str r2, [r0, #4]
	str r2, [r0, #8]
	str r2, [r0, #12]
	ldr r2, [sp, #16]
	cmp r2, r1
	bgt label104
	mov r2, r1
	ldr r0, [sp, #20]
	cmp r0, r1
	ble label564
.p2align 4
label84:
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	add r1, r6, r2, lsl #2
.p2align 4
label85:
	mov r0, #0
	add r2, r2, #1
	str r0, [r1, #0]
	ldr r0, [sp, #20]
	cmp r0, r2
	ble label88
	add r1, r1, #4
	b label85
.p2align 4
label88:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r2, #0
	mov r1, r0
	ldr r0, [sp, #20]
	cmp r0, r2
	bgt label57
label294:
	ldr r0, [sp, #8]
	add r0, r0, #1
	cmp r0, #100
	blt label402
	b label80
.p2align 4
label77:
	add r3, r3, #4
.p2align 4
label73:
	ldr r5, [r3, #0]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	add r6, r6, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r7, [r6, #0]
	ldr r5, [r5, r4, lsl #2]
	add r4, r4, #1
	cmp r0, r4
	mla r5, r2, r5, r7
	str r5, [r6, #0]
	bgt label77
	add r1, r1, #4
	ldr r3, [sp, #0]
	ldr r0, [sp, #20]
	mov r2, r3
	cmp r0, r3
	ble label556
.p2align 4
label57:
	add r3, r2, #1
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	str r3, [sp, #0]
	ldr r4, [r1, #0]
	ldr r0, [r0, r3, lsl #2]
	cmp r4, r0
	bge label303
	add r5, r4, #3
	sub r3, r0, #3
	cmp r0, r5
	ble label309
	movw r5, #:lower16:y
	movt r5, #:upper16:y
	mov r8, r4
	add r7, r5, r4, lsl #2
.p2align 4
label60:
	ldr r5, [r7, #0]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	add r9, r6, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r10, [r9, #0]
	add r5, r5, r8, lsl #2
	add r8, r8, #4
	ldr r11, [r5, #0]
	cmp r3, r8
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r7, #4]
	add r9, r6, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, #4]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r7, #8]
	add r9, r6, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, #8]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r7, #12]
	add r6, r6, r9, lsl #2
	ldr r9, [r6, #0]
	ldr r5, [r5, #12]
	add r5, r9, r5
	str r5, [r6, #0]
	ble label348
	add r7, r7, #16
	b label60
.p2align 4
label348:
	cmp r0, r8
	ble label553
.p2align 4
label66:
	movw r5, #:lower16:y
	movt r5, #:upper16:y
	mov r7, r8
	add r3, r5, r8, lsl #2
.p2align 4
label67:
	ldr r5, [r3, #0]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	add r6, r6, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r8, [r6, #0]
	ldr r5, [r5, r7, lsl #2]
	add r7, r7, #1
	cmp r0, r7
	add r5, r8, r5
	str r5, [r6, #0]
	ble label368
	add r3, r3, #4
	b label67
.p2align 4
label368:
	cmp r4, r0
	bge label555
.p2align 4
label72:
	movw r6, #:lower16:b
	movt r6, #:upper16:b
	movw r5, #:lower16:y
	movt r5, #:upper16:y
	ldr r2, [r6, r2, lsl #2]
	add r3, r5, r4, lsl #2
	sub r2, r2, #1
	b label73
.p2align 4
label309:
	mov r8, r4
	cmp r0, r4
	bgt label66
	cmp r4, r0
	blt label72
	b label551
.p2align 4
label547:
	cmp r4, r0
	blt label33
	add r1, r1, #4
	ldr r3, [sp, #4]
	ldr r0, [sp, #20]
	mov r2, r3
	cmp r0, r3
	bgt label31
	b label185
.p2align 4
label553:
	cmp r4, r0
	blt label72
	add r1, r1, #4
	ldr r3, [sp, #0]
	ldr r0, [sp, #20]
	mov r2, r3
	cmp r0, r3
	bgt label57
	b label294
.p2align 4
label404:
	mov r2, #0
	ldr r0, [sp, #20]
	cmp r0, r2
	bgt label84
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r1, r0
	ldr r0, [sp, #20]
	cmp r0, r2
	bgt label57
	b label294
.p2align 4
label145:
	mov r3, #0
	mov r1, r3
	ldr r2, [sp, #16]
	cmp r2, r3
	bgt label18
	mov r2, r3
	ldr r0, [sp, #20]
	cmp r0, r3
	bgt label8
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r2, #0
	mov r1, r0
	ldr r0, [sp, #20]
	cmp r0, r2
	bgt label31
	b label185
.p2align 4
label542:
	mov r2, r1
	ldr r0, [sp, #20]
	cmp r0, r1
	bgt label8
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r2, #0
	mov r1, r0
	ldr r0, [sp, #20]
	cmp r0, r2
	bgt label31
	b label185
.p2align 4
label562:
	mov r2, r1
	ldr r0, [sp, #20]
	cmp r0, r1
	bgt label84
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r2, #0
	mov r1, r0
	ldr r0, [sp, #20]
	cmp r0, r2
	bgt label57
	b label294
.p2align 4
label303:
	cmp r4, r0
	blt label72
label551:
	add r1, r1, #4
	ldr r3, [sp, #0]
	mov r2, r3
.p2align 4
label54:
	ldr r0, [sp, #20]
	cmp r0, r2
	bgt label57
	b label294
label127:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r2, #0
	mov r1, r0
	ldr r0, [sp, #20]
	cmp r0, r2
	bgt label31
	b label185
label543:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r2, #0
	mov r1, r0
	b label54
.p2align 4
label419:
	mov r3, #0
	ldr r2, [sp, #16]
	mov r1, r3
	cmp r2, r3
	bgt label100
	mov r2, r3
	ldr r0, [sp, #20]
	cmp r0, r3
	bgt label84
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r2, #0
	mov r1, r0
	ldr r0, [sp, #20]
	cmp r0, r2
	bgt label57
	b label294
.p2align 4
label141:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r2, #0
	mov r1, r0
	ldr r0, [sp, #20]
	cmp r0, r2
	bgt label31
label185:
	ldr r0, [sp, #20]
	cmp r0, #0
	bgt label81
	b label543
.p2align 4
label549:
	add r1, r1, #4
	ldr r3, [sp, #4]
	ldr r0, [sp, #20]
	mov r2, r3
	cmp r0, r3
	bgt label31
	b label185
.p2align 4
label555:
	add r1, r1, #4
	ldr r3, [sp, #0]
	ldr r0, [sp, #20]
	mov r2, r3
	cmp r0, r3
	bgt label57
	b label294
label80:
	mov r0, #47
	bl _sysy_stoptime
	movw r6, #:lower16:b
	movt r6, #:upper16:b
	ldr r0, [sp, #20]
	mov r1, r6
	bl putarray
	add sp, sp, #28
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label541:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r2, #0
	mov r1, r0
	ldr r0, [sp, #20]
	cmp r0, r2
	bgt label31
	b label185
.p2align 4
label564:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r2, #0
	mov r1, r0
	ldr r0, [sp, #20]
	cmp r0, r2
	bgt label57
	b label294
