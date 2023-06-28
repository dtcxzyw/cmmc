.data
.text
.globl smin_lt
smin_lt:
	min a0, a0, a1
	ret
.globl smax_lt
smax_lt:
	max a0, a0, a1
	ret
.globl smin_le
smin_le:
	min a0, a0, a1
	ret
.globl smax_le
smax_le:
	max a0, a0, a1
	ret
.globl smin_gt
smin_gt:
	max a0, a0, a1
	ret
.globl smax_gt
smax_gt:
	min a0, a0, a1
	ret
.globl smin_ge
smin_ge:
	max a0, a0, a1
	ret
.globl smax_ge
smax_ge:
	min a0, a0, a1
	ret
