.data
.text
.globl f0
f0:
	slliw a1, a0, 7
	srliw a3, a0, 25
	slliw a2, a0, 9
	srliw a0, a0, 23
	or a1, a1, a3
	or a1, a1, a2
	or a0, a1, a0
	ret
.globl f1
f1:
	slliw a3, a0, 7
	slliw a2, a0, 9
	srliw a0, a0, 23
	or a1, a1, a3
	or a1, a1, a2
	or a0, a1, a0
	ret
.globl f2
f2:
	slliw a2, a0, 11
	slliw a3, a1, 19
	srliw a0, a0, 21
	srliw a1, a1, 13
	or a2, a2, a3
	or a0, a2, a0
	or a0, a0, a1
	ret
.globl f3
f3:
	slliw a1, a0, 3
	slliw t3, a0, 5
	slliw a5, a0, 7
	slliw t2, a0, 13
	slliw t1, a0, 19
	srliw a4, a0, 2
	srliw t4, a0, 15
	srliw a2, a0, 23
	srliw a3, a0, 25
	srliw a0, a0, 30
	or a1, a1, t3
	or a1, a1, a5
	or a1, a1, t2
	or a1, a1, t1
	or a1, a1, a4
	or a1, a1, t4
	or a1, a1, a2
	or a1, a1, a3
	or a0, a1, a0
	ret
