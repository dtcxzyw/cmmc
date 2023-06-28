.data
.text
.globl test1
test1:
	andi a1, a0, 255
	slliw a1, a1, 8
	li a2, 65280
	and a2, a0, a2
	srliw a2, a2, 8
	or a1, a1, a2
	li a2, 16711680
	and a2, a0, a2
	slliw a2, a2, 8
	or a1, a1, a2
	li a2, -16777216
	or a0, a0, a2
	srliw a0, a0, 8
	or a0, a1, a0
	ret
.globl test2
test2:
	slliw a1, a0, 8
	andi a2, a1, 255
	srliw a0, a0, 8
	li a3, 65280
	and a3, a0, a3
	or a2, a2, a3
	li a3, 16711680
	and a0, a0, a3
	or a0, a2, a0
	li a2, -16777216
	and a1, a1, a2
	or a0, a0, a1
	ret
.globl test3
test3:
	fcvt.w.s a0, f10, rtz
	li a1, 4294967295
	and a4, a0, a1
	slliw a2, a4, 8
	andi a3, a2, 255
	srliw a4, a4, 8
	li a5, 16711680
	and a4, a4, a5
	or a3, a3, a4
	li a4, -16777216
	and a2, a2, a4
	or a2, a3, a2
	li a3, 65280
	and a0, a0, a3
	and a0, a0, a1
	or a0, a2, a0
	ret
