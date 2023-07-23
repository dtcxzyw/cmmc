.arch armv7ve
.data
.bss
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
	clz r0, r0
	lsr r0, r0, #5
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
	blt label13
label14:
	bx lr
label13:
	movw r1, #:lower16:g1
	movt r1, #:upper16:g1
	str r0, [r1, #0]
	b label14
.globl slti_beq1
slti_beq1:
	mvn r1, #32768
	cmp r0, r1
	blt label24
label25:
	bx lr
label24:
	movw r1, #:lower16:g1
	movt r1, #:upper16:g1
	str r0, [r1, #0]
	b label25
.globl slti_beq2
slti_beq2:
	movw r1, #32767
	cmp r0, r1
	blt label36
label37:
	bx lr
label36:
	movw r1, #:lower16:g1
	movt r1, #:upper16:g1
	str r0, [r1, #0]
	b label37
.globl slti_beq3
slti_beq3:
	cmp r0, #32768
	blt label48
label49:
	bx lr
label48:
	movw r1, #:lower16:g1
	movt r1, #:upper16:g1
	str r0, [r1, #0]
	b label49
.globl sltiu_beq0
sltiu_beq0:
	movw r1, #32767
	cmp r0, r1
	blo label59
label60:
	bx lr
label59:
	movw r1, #:lower16:g1
	movt r1, #:upper16:g1
	str r0, [r1, #0]
	b label60
.globl sltiu_beq1
sltiu_beq1:
	cmp r0, #32768
	blo label70
label71:
	bx lr
label70:
	movw r1, #:lower16:g1
	movt r1, #:upper16:g1
	str r0, [r1, #0]
	b label71
.globl sltiu_beq2
sltiu_beq2:
	cmn r0, #32768
	blo label80
label81:
	bx lr
label80:
	movw r1, #:lower16:g1
	movt r1, #:upper16:g1
	str r0, [r1, #0]
	b label81
.globl sltiu_beq3
sltiu_beq3:
	mvn r1, #32768
	cmp r0, r1
	blo label90
label91:
	bx lr
label90:
	movw r1, #:lower16:g1
	movt r1, #:upper16:g1
	str r0, [r1, #0]
	b label91
