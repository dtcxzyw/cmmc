.data
.text
.globl test1
test1:
	li a1, 16711935
	and a0, a0, a1
	ret
.globl test10
test10:
	srliw a1, a0, 12
	li a2, 458759
	and a1, a1, a2
	srliw a0, a0, 7
	li a2, 16253176
	and a0, a0, a2
	or a0, a1, a0
	ret
.globl test11
test11:
	andi a0, a0, 3
	li a1, 65537
	sllw a0, a1, a0
	sraiw a0, a0, 1
	li a1, 458759
	and a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test2
test2:
	srliw a0, a0, 8
	li a1, 16711935
	and a0, a0, a1
	ret
.globl test3
test3:
	srliw a0, a0, 8
	li a1, 16711935
	and a0, a0, a1
	ret
.globl test4
test4:
	srliw a0, a0, 8
	li a1, 16711935
	and a0, a0, a1
	ret
.globl test5
test5:
	srliw a0, a0, 8
	li a1, 16711935
	and a0, a0, a1
	ret
.globl test6
test6:
	srliw a1, a0, 16
	andi a1, a1, 255
	slliw a0, a0, 16
	li a2, 16711680
	and a0, a0, a2
	or a0, a1, a0
	ret
.globl test7
test7:
	srliw a1, a0, 16
	andi a1, a1, 255
	slliw a0, a0, 16
	li a2, 16711680
	and a0, a0, a2
	or a0, a1, a0
	ret
.globl test8
test8:
	slliw a1, a0, 8
	li a2, 16711680
	and a1, a1, a2
	srliw a0, a0, 24
	or a0, a1, a0
	ret
.globl test9
test9:
	slliw a1, a0, 8
	li a2, 16711680
	and a1, a1, a2
	srliw a0, a0, 24
	or a0, a1, a0
	ret
