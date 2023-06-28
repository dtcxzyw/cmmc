.data
.align 4
.globl a
a:
	.4byte	0
.align 4
.globl b
b:
	.4byte	0
.align 4
.globl c
c:
	.4byte	0
.align 4
.globl d
d:
	.4byte	0
.align 4
.globl e
e:
	.4byte	0
.align 4
.globl f
f:
	.4byte	0
.text
.globl func
func:
	lui $t0, %hi(b)
	lw $t0, %lo(b)($t0)
	lui $t1, %hi(c)
	lw $t1, %lo(c)($t1)
	mult $t0, $t1
	mflo $t0
	lui $t1, %hi(a)
	sw $t0, %lo(a)($t1)
	lui $t0, %hi(e)
	lw $t0, %lo(e)($t0)
	lui $t1, %hi(f)
	lw $t1, %lo(f)($t1)
	mult $t0, $t1
	mflo $t0
	lui $t1, %hi(d)
	sw $t0, %lo(d)($t1)
	jr $ra
	nop
