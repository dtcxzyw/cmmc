.data
.section .rodata
.bss
.text
.globl test1
test1:
	andi a0, a0, 255
	ret
.globl test10
test10:
	srliw a2, a0, 24
	slliw a0, a0, 8
	or a0, a2, a0
	li a2, 65535
	and a0, a0, a2
	and a0, a0, a2
	addw a0, a1, a0
	ret
.globl test11
test11:
	andi a0, a0, 255
	addw a0, a0, a1
	ret
.globl test12
test12:
	srliw a0, a0, 8
	andi a0, a0, 255
	addw a0, a0, a1
	ret
.globl test13
test13:
	srliw a0, a0, 16
	andi a0, a0, 255
	addw a0, a0, a1
	ret
.globl test14
test14:
	li a2, 65535
	and a0, a0, a2
	addw a0, a0, a1
	ret
.globl test15
test15:
	srliw a0, a0, 8
	li a2, 65535
	and a0, a0, a2
	addw a0, a0, a1
	ret
.globl test16
test16:
	srliw a2, a0, 24
	slliw a0, a0, 8
	or a0, a2, a0
	li a2, 65535
	and a0, a0, a2
	addw a0, a0, a1
	ret
.globl test2
test2:
	andi a1, a1, 255
	andi a1, a1, 255
	addw a0, a0, a1
	ret
.globl test3
test3:
	srliw a1, a0, 8
	slliw a0, a0, 24
	or a0, a1, a0
	li a1, 65535
	and a0, a0, a1
	and a0, a0, a1
	ret
.globl test4
test4:
	srliw a1, a0, 8
	slliw a0, a0, 24
	or a0, a1, a0
	andi a0, a0, 255
	andi a0, a0, 255
	ret
.globl test5
test5:
	li a1, 65535
	and a0, a0, a1
	ret
.globl test6
test6:
	li a2, 65535
	and a1, a1, a2
	and a1, a1, a2
	addw a0, a0, a1
	ret
.globl test7
test7:
	srliw a2, a0, 8
	slliw a0, a0, 24
	or a0, a2, a0
	andi a0, a0, 255
	andi a0, a0, 255
	addw a0, a1, a0
	ret
.globl test8
test8:
	srliw a2, a0, 16
	slliw a0, a0, 16
	or a0, a2, a0
	andi a0, a0, 255
	andi a0, a0, 255
	addw a0, a1, a0
	ret
.globl test9
test9:
	srliw a2, a0, 8
	slliw a0, a0, 24
	or a0, a2, a0
	li a2, 65535
	and a0, a0, a2
	and a0, a0, a2
	addw a0, a1, a0
	ret
