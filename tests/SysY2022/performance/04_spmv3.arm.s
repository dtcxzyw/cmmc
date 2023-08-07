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
	sub sp, sp, #36
	bl getarray
	movw r1, #:lower16:y
	movt r1, #:upper16:y
	mov r4, r0
	mov r0, r1
	bl getarray
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	mov r0, r5
	bl getarray
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	mov r0, r1
	bl getarray
	mov r0, #39
	bl _sysy_starttime
	sub r2, r4, #5
	sub r0, r4, #1
	str r0, [sp, #28]
	sub r0, r4, #21
	str r2, [sp, #24]
	str r0, [sp, #20]
	mov r0, #0
	str r0, [sp, #16]
	ldr r0, [sp, #28]
	cmp r0, #0
	ble label125
.p2align 4
label4:
	ldr r0, [sp, #28]
	cmp r0, #4
	bgt label11
	b label5
.p2align 4
label188:
	str r0, [sp, #16]
	ldr r0, [sp, #28]
	cmp r0, #0
	bgt label4
	b label125
label33:
	mov r0, #47
	bl _sysy_stoptime
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	ldr r0, [sp, #28]
	bl putarray
	add sp, sp, #36
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label34:
	add r1, r2, #1
	str r1, [sp, #12]
	ldr r0, [sp, #4]
	ldr r3, [r0, #0]
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	ldr r0, [r0, r1, lsl #2]
	cmp r3, r0
	bge label35
	add r4, r3, #4
	sub r6, r0, #4
	cmp r0, r4
	bgt label38
	b label37
.p2align 4
label328:
	ldr r0, [sp, #4]
	add r0, r0, #4
	str r0, [sp, #4]
	ldr r1, [sp, #12]
	ldr r0, [sp, #28]
	mov r2, r1
	cmp r0, r1
	bgt label34
	ldr r0, [sp, #16]
	add r0, r0, #1
	cmp r0, #100
	blt label188
	b label33
.p2align 4
label38:
	movw r1, #:lower16:y
	movt r1, #:upper16:y
	mov r8, r3
	add r7, r1, r3, lsl #2
.p2align 4
label39:
	ldr r5, [r7, #0]
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	add r9, r1, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r10, [r9, #0]
	add r5, r5, r8, lsl #2
	add r8, r8, #4
	ldr r11, [r5, #0]
	cmp r6, r8
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r7, #4]
	add r9, r1, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, #4]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r7, #8]
	add r9, r1, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, #8]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r7, #12]
	add r1, r1, r9, lsl #2
	ldr r9, [r1, #0]
	ldr r5, [r5, #12]
	add r5, r9, r5
	str r5, [r1, #0]
	ble label42
	add r7, r7, #16
	b label39
.p2align 4
label42:
	movw r1, #:lower16:y
	movt r1, #:upper16:y
	add r6, r1, r8, lsl #2
.p2align 4
label44:
	ldr r5, [r6, #0]
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	add r1, r1, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r7, [r1, #0]
	ldr r5, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r0, r8
	add r5, r7, r5
	str r5, [r1, #0]
	ble label260
	add r6, r6, #4
	b label44
.p2align 4
label260:
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	cmp r0, r4
	ldr r1, [r1, r2, lsl #2]
	sub r2, r1, #1
	ble label628
	mov r6, r3
.p2align 4
label49:
	movw r1, #:lower16:y
	movt r1, #:upper16:y
	add r3, r1, r6, lsl #2
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	ldr r5, [r3, #0]
	add r7, r1, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r8, [r7, #0]
	add r5, r5, r6, lsl #2
	ldr r6, [r5, #0]
	mla r6, r2, r6, r8
	str r6, [r7, #0]
	ldr r6, [r3, #4]
	add r6, r1, r6, lsl #2
	ldr r7, [r6, #0]
	ldr r8, [r5, #4]
	mla r7, r2, r8, r7
	str r7, [r6, #0]
	ldr r6, [r3, #8]
	add r6, r1, r6, lsl #2
	ldr r7, [r6, #0]
	ldr r8, [r5, #8]
	mla r7, r2, r8, r7
	str r7, [r6, #0]
	ldr r3, [r3, #12]
	add r1, r1, r3, lsl #2
	ldr r3, [r1, #0]
	ldr r5, [r5, #12]
	mla r3, r2, r5, r3
	str r3, [r1, #0]
	add r1, r4, #4
	cmp r0, r1
	ble label311
	mov r6, r4
	mov r4, r1
	b label49
.p2align 4
label311:
	movw r1, #:lower16:y
	movt r1, #:upper16:y
	add r6, r1, r4, lsl #2
.p2align 4
label53:
	ldr r3, [r6, #0]
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	add r1, r1, r3, lsl #2
	ldr r3, [r1, #0]
	ldr r5, [r5, r4, lsl #2]
	add r4, r4, #1
	cmp r0, r4
	mla r3, r2, r5, r3
	str r3, [r1, #0]
	ble label328
	add r6, r6, #4
	b label53
.p2align 4
label11:
	ldr r2, [sp, #24]
	cmp r2, #16
	ble label137
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	mov r2, #0
.p2align 4
label19:
	mov r0, #0
	add r2, r2, #16
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #12]
	str r0, [r1, #16]
	str r0, [r1, #20]
	str r0, [r1, #24]
	str r0, [r1, #28]
	str r0, [r1, #32]
	str r0, [r1, #36]
	str r0, [r1, #40]
	str r0, [r1, #44]
	str r0, [r1, #48]
	str r0, [r1, #52]
	str r0, [r1, #56]
	str r0, [r1, #60]
	ldr r0, [sp, #20]
	cmp r0, r2
	ble label168
	add r1, r1, #64
	b label19
.p2align 4
label37:
	movw r1, #:lower16:y
	movt r1, #:upper16:y
	mov r8, r3
	add r6, r1, r3, lsl #2
	b label44
.p2align 4
label12:
	mov r2, #0
	add r0, r0, #4
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label145
.p2align 4
label15:
	add r1, r1, #16
	b label12
.p2align 4
label168:
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	add r1, r1, r2, lsl #2
	add r0, r2, #4
	mov r2, #0
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	ldr r2, [sp, #24]
	cmp r2, r0
	bgt label15
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	add r1, r1, r0, lsl #2
	add r2, r0, #1
	mov r0, #0
	str r0, [r1, #0]
	ldr r0, [sp, #28]
	cmp r0, r2
	bgt label9
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r2, #0
	str r0, [sp, #0]
	ldr r0, [sp, #28]
	cmp r0, r2
	bgt label80
	b label28
label178:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #28]
	cmp r0, r2
	bgt label34
	b label32
.p2align 4
label60:
	ldr r0, [sp, #28]
	cmp r0, #4
	bgt label67
	b label335
.p2align 4
label80:
	add r1, r2, #1
	str r1, [sp, #8]
	ldr r0, [sp, #0]
	ldr r3, [r0, #0]
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	ldr r0, [r0, r1, lsl #2]
	cmp r3, r0
	bge label387
	add r4, r3, #4
	sub r6, r0, #4
	cmp r0, r4
	bgt label98
	b label82
.p2align 4
label92:
	ldr r0, [sp, #0]
	add r0, r0, #4
	str r0, [sp, #0]
	ldr r1, [sp, #8]
	ldr r0, [sp, #28]
	mov r2, r1
	cmp r0, r1
	bgt label80
	cmp r0, #0
	bgt label60
	b label178
.p2align 4
label67:
	ldr r2, [sp, #24]
	cmp r2, #16
	ble label344
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	mov r2, #0
.p2align 4
label74:
	mov r0, #0
	add r2, r2, #16
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #12]
	str r0, [r1, #16]
	str r0, [r1, #20]
	str r0, [r1, #24]
	str r0, [r1, #28]
	str r0, [r1, #32]
	str r0, [r1, #36]
	str r0, [r1, #40]
	str r0, [r1, #44]
	str r0, [r1, #48]
	str r0, [r1, #52]
	str r0, [r1, #56]
	str r0, [r1, #60]
	ldr r0, [sp, #20]
	cmp r0, r2
	ble label77
	add r1, r1, #64
	b label74
.p2align 4
label82:
	movw r1, #:lower16:y
	movt r1, #:upper16:y
	mov r8, r3
	add r6, r1, r3, lsl #2
.p2align 4
label83:
	ldr r5, [r6, #0]
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	add r1, r1, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r7, [r1, #0]
	ldr r5, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r0, r8
	add r5, r7, r5
	str r5, [r1, #0]
	ble label408
	add r6, r6, #4
	b label83
.p2align 4
label102:
	movw r1, #:lower16:y
	movt r1, #:upper16:y
	add r6, r1, r8, lsl #2
	b label83
.p2align 4
label408:
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	cmp r0, r4
	ldr r1, [r1, r2, lsl #2]
	sub r2, r1, #1
	ble label635
	mov r6, r3
.p2align 4
label94:
	movw r1, #:lower16:y
	movt r1, #:upper16:y
	add r3, r1, r6, lsl #2
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	ldr r5, [r3, #0]
	add r7, r1, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r8, [r7, #0]
	add r5, r5, r6, lsl #2
	ldr r6, [r5, #0]
	mla r6, r2, r6, r8
	str r6, [r7, #0]
	ldr r6, [r3, #4]
	add r6, r1, r6, lsl #2
	ldr r7, [r6, #0]
	ldr r8, [r5, #4]
	mla r7, r2, r8, r7
	str r7, [r6, #0]
	ldr r6, [r3, #8]
	add r6, r1, r6, lsl #2
	ldr r7, [r6, #0]
	ldr r8, [r5, #8]
	mla r7, r2, r8, r7
	str r7, [r6, #0]
	ldr r3, [r3, #12]
	add r1, r1, r3, lsl #2
	ldr r3, [r1, #0]
	ldr r5, [r5, #12]
	mla r3, r2, r5, r3
	str r3, [r1, #0]
	add r1, r4, #4
	cmp r0, r1
	ble label477
	mov r6, r4
	mov r4, r1
	b label94
.p2align 4
label6:
	mov r0, #0
	add r2, r2, #1
	str r0, [r1, #0]
	ldr r0, [sp, #28]
	cmp r0, r2
	ble label133
.p2align 4
label9:
	add r1, r1, #4
	b label6
.p2align 4
label145:
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	add r1, r1, r0, lsl #2
	add r2, r0, #1
	mov r0, #0
	str r0, [r1, #0]
	ldr r0, [sp, #28]
	cmp r0, r2
	bgt label9
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r2, #0
	str r0, [sp, #0]
	ldr r0, [sp, #28]
	cmp r0, r2
	bgt label80
	b label28
.p2align 4
label68:
	mov r2, #0
	add r0, r0, #4
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label352
.p2align 4
label71:
	add r1, r1, #16
	b label68
.p2align 4
label77:
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	add r1, r1, r2, lsl #2
	add r0, r2, #4
	mov r2, #0
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	ldr r2, [sp, #24]
	cmp r2, r0
	bgt label71
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	add r1, r1, r0, lsl #2
	add r2, r0, #1
	mov r0, #0
	str r0, [r1, #0]
	ldr r0, [sp, #28]
	cmp r0, r2
	bgt label64
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #28]
	cmp r0, r2
	bgt label34
	b label32
.p2align 4
label61:
	mov r0, #0
	add r2, r2, #1
	str r0, [r1, #0]
	ldr r0, [sp, #28]
	cmp r0, r2
	ble label340
.p2align 4
label64:
	add r1, r1, #4
	b label61
.p2align 4
label352:
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	add r1, r1, r0, lsl #2
	add r2, r0, #1
	mov r0, #0
	str r0, [r1, #0]
	ldr r0, [sp, #28]
	cmp r0, r2
	bgt label64
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #28]
	cmp r0, r2
	bgt label34
label32:
	ldr r0, [sp, #16]
	add r0, r0, #1
	cmp r0, #100
	blt label188
	b label33
.p2align 4
label35:
	ldr r0, [sp, #4]
	add r0, r0, #4
	str r0, [sp, #4]
	ldr r1, [sp, #12]
	ldr r0, [sp, #28]
	mov r2, r1
	cmp r0, r1
	bgt label34
	b label32
.p2align 4
label5:
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	mov r2, #0
	b label6
label125:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r2, #0
	str r0, [sp, #0]
	ldr r0, [sp, #28]
	cmp r0, r2
	bgt label80
label28:
	ldr r0, [sp, #28]
	cmp r0, #0
	bgt label60
	b label178
.p2align 4
label387:
	ldr r0, [sp, #0]
	add r0, r0, #4
	str r0, [sp, #0]
	ldr r1, [sp, #8]
	ldr r0, [sp, #28]
	mov r2, r1
	cmp r0, r1
	bgt label80
	b label28
.p2align 4
label133:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r2, #0
	str r0, [sp, #0]
	ldr r0, [sp, #28]
	cmp r0, r2
	bgt label80
	b label28
.p2align 4
label340:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #28]
	cmp r0, r2
	bgt label34
	b label32
.p2align 4
label477:
	movw r1, #:lower16:y
	movt r1, #:upper16:y
	add r6, r1, r4, lsl #2
.p2align 4
label89:
	ldr r3, [r6, #0]
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	add r1, r1, r3, lsl #2
	ldr r3, [r1, #0]
	ldr r5, [r5, r4, lsl #2]
	add r4, r4, #1
	cmp r0, r4
	mla r3, r2, r5, r3
	str r3, [r1, #0]
	ble label92
	add r6, r6, #4
	b label89
.p2align 4
label344:
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	mov r0, #0
	b label68
.p2align 4
label335:
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	mov r2, #0
	b label61
.p2align 4
label98:
	movw r1, #:lower16:y
	movt r1, #:upper16:y
	mov r8, r3
	add r7, r1, r3, lsl #2
.p2align 4
label99:
	ldr r5, [r7, #0]
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	add r9, r1, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r10, [r9, #0]
	add r5, r5, r8, lsl #2
	add r8, r8, #4
	ldr r11, [r5, #0]
	cmp r6, r8
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r7, #4]
	add r9, r1, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, #4]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r7, #8]
	add r9, r1, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, #8]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r7, #12]
	add r1, r1, r9, lsl #2
	ldr r9, [r1, #0]
	ldr r5, [r5, #12]
	add r5, r9, r5
	str r5, [r1, #0]
	ble label102
	add r7, r7, #16
	b label99
.p2align 4
label635:
	movw r1, #:lower16:y
	movt r1, #:upper16:y
	mov r4, r3
	add r6, r1, r3, lsl #2
	b label89
.p2align 4
label628:
	movw r1, #:lower16:y
	movt r1, #:upper16:y
	mov r4, r3
	add r6, r1, r3, lsl #2
	b label53
.p2align 4
label137:
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	mov r0, #0
	b label12
