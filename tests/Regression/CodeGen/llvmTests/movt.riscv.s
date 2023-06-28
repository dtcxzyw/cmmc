.data
.text
.globl t
t:
	li a1, -65536
	or a0, a0, a1
	ret
.globl t2
t2:
	li a1, -131072
	or a0, a0, a1
	li a1, -65537
	and a0, a0, a1
	ret
