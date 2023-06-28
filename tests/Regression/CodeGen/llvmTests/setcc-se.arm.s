.arch armv7ve
.data
.align 4
.globl g1
g1:
	.zero	4
.text
.syntax unified
.arm
.fpu vfpv4
.globl seteq0
seteq0:
	cmp r0, #0
	mov r0, #0
	movweq r0, #1
	bx lr
.globl setne0
setne0:
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	bx lr
.globl slti_beq0
slti_beq0:
	cmn r0, #32768
	bge label13
	movw r1, #:lower16:g1
	movt r1, #:upper16:g1
	str r0, [r1, #0]
label13:
	bx lr
.globl slti_beq1
slti_beq1:
	mvn r1, #32768
	cmp r0, r1
	bge label24
	movw r1, #:lower16:g1
	movt r1, #:upper16:g1
	str r0, [r1, #0]
label24:
	bx lr
.globl slti_beq2
slti_beq2:
	movw r1, #32767
	cmp r0, r1
	bge label36
	movw r1, #:lower16:g1
	movt r1, #:upper16:g1
	str r0, [r1, #0]
label36:
	bx lr
.globl slti_beq3
slti_beq3:
	cmp r0, #32768
	bge label48
	movw r1, #:lower16:g1
	movt r1, #:upper16:g1
	str r0, [r1, #0]
label48:
	bx lr
.globl sltiu_beq0
sltiu_beq0:
	movw r1, #32767
	cmp r0, r1
	bhs label59
	movw r1, #:lower16:g1
	movt r1, #:upper16:g1
	str r0, [r1, #0]
label59:
	bx lr
.globl sltiu_beq1
sltiu_beq1:
	cmp r0, #32768
	bhs label70
	movw r1, #:lower16:g1
	movt r1, #:upper16:g1
	str r0, [r1, #0]
label70:
	bx lr
.globl sltiu_beq2
sltiu_beq2:
	cmn r0, #32768
	bhs label80
	movw r1, #:lower16:g1
	movt r1, #:upper16:g1
	str r0, [r1, #0]
label80:
	bx lr
.globl sltiu_beq3
sltiu_beq3:
	mvn r1, #32768
	cmp r0, r1
	bhs label90
	movw r1, #:lower16:g1
	movt r1, #:upper16:g1
	str r0, [r1, #0]
label90:
	bx lr
