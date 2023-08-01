.data
.data
.align 4
.globl x
x:
	.4byte	0
.align 2
.globl a
a:
	.byte	0
	.byte	0
.align 2
.globl b
b:
	.byte	0
	.byte	0
.text
.p2align 2
.globl signed_i8
signed_i8:
	lui $t0, %hi(x)
	lw $t0, %lo(x)($t0)
	xori $t0, $t0, 42
	sltiu $t0, $t0, 1
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl unsigned_i1
unsigned_i1:
	lui $t0, %hi(x)
	lw $t0, %lo(x)($t0)
	xori $t0, $t0, 42
	sltiu $v0, $t0, 1
	jr $ra
	nop
.p2align 2
.globl unsigned_i16
unsigned_i16:
	lui $t0, %hi(b)
	lh $t0, %lo(b)($t0)
	andi $t0, $t0, 65535
	lui $t1, %hi(a)
	lh $t1, %lo(a)($t1)
	andi $t1, $t1, 65535
	addu $t0, $t0, $t1
	andi $v0, $t0, 65535
	jr $ra
	nop
.p2align 2
.globl unsigned_i8
unsigned_i8:
	lui $t0, %hi(x)
	lw $t0, %lo(x)($t0)
	xori $t0, $t0, 42
	sltiu $t0, $t0, 1
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl use_i1
use_i1:
	lui $t0, %hi(x)
	lw $t0, %lo(x)($t0)
	xori $t0, $t0, 42
	sltiu $v0, $t0, 1
	jr $ra
	nop
.p2align 2
.globl use_i16
use_i16:
	lui $t0, %hi(b)
	lh $t0, %lo(b)($t0)
	andi $t0, $t0, 65535
	lui $t1, %hi(a)
	lh $t1, %lo(a)($t1)
	andi $t1, $t1, 65535
	addu $t0, $t0, $t1
	andi $v0, $t0, 65535
	jr $ra
	nop
.p2align 2
.globl use_i8
use_i8:
	lui $t0, %hi(x)
	lw $t0, %lo(x)($t0)
	xori $t0, $t0, 42
	sltiu $t0, $t0, 1
	andi $v0, $t0, 255
	jr $ra
	nop
