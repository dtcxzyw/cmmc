.arch armv7ve
.data
.bss
.align 4
x:
	.zero	864000000
.align 4
y:
	.zero	864000000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #116
	bl getint
	mov r7, r0
	str r0, [sp, #48]
	sub r0, r0, #1
	str r0, [sp, #40]
	bl getint
	str r0, [sp, #36]
	mov r0, #13
	bl _sysy_starttime
	movw r5, #:lower16:x
	movt r5, #:upper16:x
	str r5, [sp, #44]
	movw r1, #:lower16:y
	movt r1, #:upper16:y
	str r1, [sp, #56]
	mov r3, #0
	movw r0, #63744
	movt r0, #21
	mla r2, r3, r0, r5
	mla r4, r3, r0, r1
	ldr r7, [sp, #48]
	cmp r7, r3
	ble label51
	mov r5, #0
	ldr r7, [sp, #48]
	cmp r7, r5
	ble label17
	ldr r7, [sp, #48]
	cmp r7, #0
	ble label7
	mov r1, #2400
	mla r0, r5, r1, r2
	mla r1, r5, r1, r4
	mov r8, #0
	add r6, r8, #4
	ldr r7, [sp, #48]
	cmp r7, r6
	ble label12
	b label11
label51:
	mov r4, #1
	mov r1, r4
	str r4, [sp, #32]
label18:
	movw r2, #63744
	movt r2, #21
	ldr r5, [sp, #44]
	ldr r1, [sp, #32]
	mla r0, r1, r2, r5
	str r0, [sp, #28]
	movw r3, #1792
	movt r3, #65514
	add r3, r0, r3
	str r3, [sp, #24]
	add r0, r0, r2
	str r0, [sp, #20]
	ldr r0, [sp, #40]
	cmp r0, r1
	ble label21
	mov r2, #1
	str r2, [sp, #16]
	ldr r0, [sp, #40]
	cmp r0, r2
	ble label24
	ldr r0, [sp, #40]
	cmp r0, #1
	ble label26
	b label27
label12:
	add r6, r8, #4
	ldr r7, [sp, #48]
	cmp r7, r6
	ble label83
	b label14
label83:
	mov r6, r8
	mov r7, #1
	str r7, [r0, r8, lsl #2]
	mov r7, #0
	str r7, [r1, r8, lsl #2]
	add r6, r8, #1
	ldr r7, [sp, #48]
	cmp r7, r6
	ble label7
	mov r7, #1
	str r7, [r0, r6, lsl #2]
	mov r7, #0
	str r7, [r1, r6, lsl #2]
	add r6, r6, #1
	ldr r7, [sp, #48]
	cmp r7, r6
	ble label7
	mov r7, #1
	str r7, [r0, r6, lsl #2]
	mov r7, #0
	str r7, [r1, r6, lsl #2]
	add r6, r6, #1
	ldr r7, [sp, #48]
	cmp r7, r6
	ble label7
	mov r7, #1
	str r7, [r0, r6, lsl #2]
	mov r7, #0
	str r7, [r1, r6, lsl #2]
	add r6, r6, #1
	ldr r7, [sp, #48]
	cmp r7, r6
	ble label7
	mov r7, #1
	str r7, [r0, r6, lsl #2]
	mov r7, #0
	str r7, [r1, r6, lsl #2]
	add r6, r6, #1
	ldr r7, [sp, #48]
	cmp r7, r6
	ble label7
	mov r7, #1
	str r7, [r0, r6, lsl #2]
	mov r7, #0
	str r7, [r1, r6, lsl #2]
	add r6, r6, #1
	ldr r7, [sp, #48]
	cmp r7, r6
	ble label7
	mov r7, #1
	str r7, [r0, r6, lsl #2]
	mov r7, #0
	str r7, [r1, r6, lsl #2]
	add r6, r6, #1
	ldr r7, [sp, #48]
	cmp r7, r6
	ble label7
	mov r7, #1
	str r7, [r0, r6, lsl #2]
	mov r7, #0
	str r7, [r1, r6, lsl #2]
	add r6, r6, #1
	ldr r7, [sp, #48]
	cmp r7, r6
	ble label7
	mov r7, #1
	str r7, [r0, r6, lsl #2]
	mov r7, #0
	str r7, [r1, r6, lsl #2]
	add r6, r6, #1
	ldr r7, [sp, #48]
	cmp r7, r6
	ble label7
	mov r7, #1
	str r7, [r0, r6, lsl #2]
	mov r7, #0
	str r7, [r1, r6, lsl #2]
	add r6, r6, #1
	ldr r7, [sp, #48]
	cmp r7, r6
	ble label7
	b label445
label14:
	add r7, r0, r8, lsl #2
	mov r9, #1
	str r9, [r0, r8, lsl #2]
	add r10, r1, r8, lsl #2
	mov r11, #0
	str r11, [r1, r8, lsl #2]
	str r9, [r7, #4]
	str r11, [r10, #4]
	str r9, [r7, #8]
	str r11, [r10, #8]
	str r9, [r7, #12]
	str r11, [r10, #12]
	mov r8, r6
	add r6, r6, #4
	ldr r7, [sp, #48]
	cmp r7, r6
	ble label83
	b label14
label445:
	mov r7, #1
	str r7, [r0, r6, lsl #2]
	mov r7, #0
	str r7, [r1, r6, lsl #2]
	add r6, r6, #1
	ldr r7, [sp, #48]
	cmp r7, r6
	ble label7
	b label445
label11:
	add r7, r0, r8, lsl #2
	mov r9, #1
	str r9, [r0, r8, lsl #2]
	add r10, r1, r8, lsl #2
	mov r11, #0
	str r11, [r1, r8, lsl #2]
	str r9, [r7, #4]
	str r11, [r10, #4]
	str r9, [r7, #8]
	str r11, [r10, #8]
	str r9, [r7, #12]
	str r11, [r10, #12]
	mov r8, r6
	add r6, r6, #4
	ldr r7, [sp, #48]
	cmp r7, r6
	ble label12
	b label11
label26:
	ldr r2, [sp, #16]
	add r2, r2, #1
	str r2, [sp, #16]
	ldr r0, [sp, #40]
	cmp r0, r2
	ble label24
	ldr r0, [sp, #40]
	cmp r0, #1
	ble label26
label27:
	mov r1, #2400
	ldr r0, [sp, #28]
	ldr r2, [sp, #16]
	mla r2, r2, r1, r0
	str r2, [sp, #4]
	sub r2, r2, #2400
	str r2, [sp, #8]
	ldr r2, [sp, #4]
	add r2, r2, #2400
	str r2, [sp, #12]
	ldr r3, [sp, #24]
	ldr r2, [sp, #16]
	mla r0, r2, r1, r3
	str r0, [sp, #0]
	ldr r0, [sp, #20]
	ldr r2, [sp, #16]
	mla r2, r2, r1, r0
	str r2, [sp, #52]
	mov r1, #1
	add r2, r1, #4
	str r2, [sp, #100]
	ldr r0, [sp, #40]
	cmp r0, r2
	ble label30
	b label35
label30:
	add r2, r1, #4
	str r2, [sp, #104]
	ldr r0, [sp, #40]
	cmp r0, r2
	ble label32
	b label34
label32:
	ldr r0, [sp, #0]
	ldr r0, [r0, r1, lsl #2]
	ldr r2, [sp, #52]
	ldr r2, [r2, r1, lsl #2]
	add r0, r0, r2
	ldr r2, [sp, #8]
	ldr r2, [r2, r1, lsl #2]
	add r0, r0, r2
	ldr r2, [sp, #12]
	ldr r2, [r2, r1, lsl #2]
	add r0, r0, r2
	ldr r2, [sp, #4]
	add r2, r2, r1, lsl #2
	ldr r3, [r2, #-4]
	add r0, r0, r3
	ldr r2, [r2, #4]
	add r2, r0, r2
	ldr r0, [sp, #36]
	sdiv r0, r2, r0
	ldr r2, [sp, #4]
	str r0, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r0, [sp, #40]
	cmp r0, r1
	ble label26
	b label32
label35:
	ldr r0, [sp, #0]
	add r2, r0, r1, lsl #2
	str r2, [sp, #72]
	ldr r0, [sp, #0]
	ldr r0, [r0, r1, lsl #2]
	ldr r2, [sp, #52]
	add r2, r2, r1, lsl #2
	str r2, [sp, #88]
	ldr r2, [sp, #52]
	ldr r2, [r2, r1, lsl #2]
	add r0, r0, r2
	ldr r2, [sp, #8]
	add r2, r2, r1, lsl #2
	str r2, [sp, #80]
	ldr r2, [sp, #8]
	ldr r2, [r2, r1, lsl #2]
	add r0, r0, r2
	ldr r2, [sp, #12]
	add r2, r2, r1, lsl #2
	str r2, [sp, #64]
	ldr r2, [sp, #12]
	ldr r2, [r2, r1, lsl #2]
	add r0, r0, r2
	ldr r2, [sp, #4]
	add r2, r2, r1, lsl #2
	str r2, [sp, #96]
	ldr r2, [r2, #-4]
	add r0, r0, r2
	ldr r2, [sp, #96]
	ldr r2, [r2, #4]
	add r2, r0, r2
	ldr r0, [sp, #36]
	sdiv r3, r2, r0
	ldr r2, [sp, #4]
	str r3, [r2, r1, lsl #2]
	ldr r2, [sp, #72]
	ldr r1, [r2, #4]
	add r1, r3, r1
	ldr r2, [sp, #88]
	ldr r2, [r2, #4]
	add r1, r1, r2
	ldr r2, [sp, #80]
	ldr r2, [r2, #4]
	add r1, r1, r2
	ldr r2, [sp, #64]
	ldr r2, [r2, #4]
	add r1, r1, r2
	ldr r2, [sp, #96]
	ldr r2, [r2, #8]
	add r1, r1, r2
	sdiv r1, r1, r0
	ldr r2, [sp, #96]
	str r1, [r2, #4]
	ldr r2, [sp, #72]
	ldr r2, [r2, #8]
	add r1, r1, r2
	ldr r2, [sp, #88]
	ldr r2, [r2, #8]
	add r1, r1, r2
	ldr r2, [sp, #80]
	ldr r2, [r2, #8]
	add r1, r1, r2
	ldr r2, [sp, #64]
	ldr r2, [r2, #8]
	add r1, r1, r2
	ldr r2, [sp, #96]
	ldr r2, [r2, #12]
	add r1, r1, r2
	sdiv r1, r1, r0
	ldr r2, [sp, #96]
	str r1, [r2, #8]
	ldr r2, [sp, #72]
	ldr r2, [r2, #12]
	add r1, r1, r2
	ldr r2, [sp, #88]
	ldr r2, [r2, #12]
	add r1, r1, r2
	ldr r2, [sp, #80]
	ldr r2, [r2, #12]
	add r1, r1, r2
	ldr r2, [sp, #64]
	ldr r2, [r2, #12]
	add r1, r1, r2
	ldr r2, [sp, #96]
	ldr r2, [r2, #16]
	add r1, r1, r2
	sdiv r0, r1, r0
	ldr r2, [sp, #96]
	str r0, [r2, #12]
	ldr r2, [sp, #100]
	mov r1, r2
	add r2, r2, #4
	str r2, [sp, #100]
	ldr r0, [sp, #40]
	cmp r0, r2
	ble label30
	b label35
label34:
	ldr r0, [sp, #0]
	add r2, r0, r1, lsl #2
	str r2, [sp, #68]
	ldr r0, [sp, #0]
	ldr r0, [r0, r1, lsl #2]
	ldr r2, [sp, #52]
	add r2, r2, r1, lsl #2
	str r2, [sp, #84]
	ldr r2, [sp, #52]
	ldr r2, [r2, r1, lsl #2]
	add r0, r0, r2
	ldr r2, [sp, #8]
	add r2, r2, r1, lsl #2
	str r2, [sp, #76]
	ldr r2, [sp, #8]
	ldr r2, [r2, r1, lsl #2]
	add r0, r0, r2
	ldr r2, [sp, #12]
	add r2, r2, r1, lsl #2
	str r2, [sp, #60]
	ldr r2, [sp, #12]
	ldr r2, [r2, r1, lsl #2]
	add r0, r0, r2
	ldr r2, [sp, #4]
	add r2, r2, r1, lsl #2
	str r2, [sp, #92]
	ldr r2, [r2, #-4]
	add r0, r0, r2
	ldr r2, [sp, #92]
	ldr r2, [r2, #4]
	add r2, r0, r2
	ldr r0, [sp, #36]
	sdiv r3, r2, r0
	ldr r2, [sp, #4]
	str r3, [r2, r1, lsl #2]
	ldr r2, [sp, #68]
	ldr r1, [r2, #4]
	add r1, r3, r1
	ldr r2, [sp, #84]
	ldr r2, [r2, #4]
	add r1, r1, r2
	ldr r2, [sp, #76]
	ldr r2, [r2, #4]
	add r1, r1, r2
	ldr r2, [sp, #60]
	ldr r2, [r2, #4]
	add r1, r1, r2
	ldr r2, [sp, #92]
	ldr r2, [r2, #8]
	add r1, r1, r2
	sdiv r1, r1, r0
	ldr r2, [sp, #92]
	str r1, [r2, #4]
	ldr r2, [sp, #68]
	ldr r2, [r2, #8]
	add r1, r1, r2
	ldr r2, [sp, #84]
	ldr r2, [r2, #8]
	add r1, r1, r2
	ldr r2, [sp, #76]
	ldr r2, [r2, #8]
	add r1, r1, r2
	ldr r2, [sp, #60]
	ldr r2, [r2, #8]
	add r1, r1, r2
	ldr r2, [sp, #92]
	ldr r2, [r2, #12]
	add r1, r1, r2
	sdiv r1, r1, r0
	ldr r2, [sp, #92]
	str r1, [r2, #8]
	ldr r2, [sp, #68]
	ldr r2, [r2, #12]
	add r1, r1, r2
	ldr r2, [sp, #84]
	ldr r2, [r2, #12]
	add r1, r1, r2
	ldr r2, [sp, #76]
	ldr r2, [r2, #12]
	add r1, r1, r2
	ldr r2, [sp, #60]
	ldr r2, [r2, #12]
	add r1, r1, r2
	ldr r2, [sp, #92]
	ldr r2, [r2, #16]
	add r1, r1, r2
	sdiv r0, r1, r0
	ldr r2, [sp, #92]
	str r0, [r2, #12]
	ldr r2, [sp, #104]
	mov r1, r2
	add r2, r2, #4
	str r2, [sp, #104]
	ldr r0, [sp, #40]
	cmp r0, r2
	ble label32
	b label34
label7:
	add r5, r5, #1
	ldr r7, [sp, #48]
	cmp r7, r5
	ble label17
	ldr r7, [sp, #48]
	cmp r7, #0
	ble label7
	mov r1, #2400
	mla r0, r5, r1, r2
	mla r1, r5, r1, r4
	mov r8, #0
	add r6, r8, #4
	ldr r7, [sp, #48]
	cmp r7, r6
	ble label12
	b label11
label17:
	add r3, r3, #1
	movw r0, #63744
	movt r0, #21
	ldr r5, [sp, #44]
	mla r2, r3, r0, r5
	ldr r1, [sp, #56]
	mla r4, r3, r0, r1
	ldr r7, [sp, #48]
	cmp r7, r3
	ble label51
	mov r5, #0
	ldr r7, [sp, #48]
	cmp r7, r5
	ble label17
	ldr r7, [sp, #48]
	cmp r7, #0
	ble label7
	mov r1, #2400
	mla r0, r5, r1, r2
	mla r1, r5, r1, r4
	mov r8, #0
	add r6, r8, #4
	ldr r7, [sp, #48]
	cmp r7, r6
	ble label12
	b label11
label24:
	ldr r1, [sp, #32]
	add r1, r1, #1
	ldr r2, [sp, #16]
	mov r4, r2
	str r1, [sp, #32]
	b label18
label21:
	mov r0, #53
	bl _sysy_stoptime
	ldr r7, [sp, #48]
	ldr r5, [sp, #44]
	mov r0, r7
	mov r1, r5
	bl putarray
	add r0, r7, r7, lsr #31
	asr r0, r0, #1
	movw r6, #63744
	movt r6, #21
	mla r1, r0, r6, r5
	mov r8, #2400
	mla r1, r0, r8, r1
	mov r0, r7
	bl putarray
	ldr r1, [sp, #32]
	sub r0, r1, #1
	mla r0, r0, r6, r5
	sub r1, r4, #1
	mla r1, r1, r8, r0
	mov r0, r7
	bl putarray
	mov r0, #0
	add sp, sp, #116
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
