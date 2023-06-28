.data
.text
.globl test1
test1:
	andi a1, a0, 255
	slliw a1, a1, 8
	li a2, 65280
	and a2, a0, a2
	srliw a2, a2, 8
	li a3, 16711680
	and a3, a0, a3
	slliw a3, a3, 8
	li a4, -16777216
	or a0, a0, a4
	srliw a0, a0, 8
	or a1, a1, a2
	or a1, a1, a3
	or a0, a1, a0
	ret
.globl test2
test2:
	slliw a2, a0, 8
	andi a1, a2, 255
	srliw a3, a0, 8
	li a0, 65280
	and a0, a3, a0
	li a4, 16711680
	and a3, a3, a4
	li a4, -16777216
	and a2, a2, a4
	or a0, a1, a0
	or a0, a0, a3
	or a0, a0, a2
	ret
.globl test3
test3:
	fcvt.w.s a3, f10, rtz
	li a4, 4294967295
	and a2, a3, a4
	slliw a1, a2, 8
	andi a0, a1, 255
	li a5, 65280
	and a3, a3, a5
	and a3, a3, a4
	srliw a2, a2, 8
	li a4, 16711680
	and a2, a2, a4
	li a4, -16777216
	and a1, a1, a4
	or a0, a3, a0
	or a0, a0, a2
	or a0, a0, a1
	ret
