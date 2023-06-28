.data
.section .rodata
.bss
.text
.globl test1
test1:
	slliw a0, a0, 3
	addiw a0, a0, 7
	ret
.globl test2
test2:
	li a1, 4
	ble a0, a1, label7
	addiw a1, a0, -5
	srliw a1, a1, 2
	li a2, -4
	mulw a1, a1, a2
	addiw a0, a0, -4
	addw a0, a0, a1
label7:
	ret
