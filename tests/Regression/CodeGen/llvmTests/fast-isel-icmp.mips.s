.data
.text
.globl icmp_i16_signed
icmp_i16_signed:
.p2align 2
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $a1, 16
	sra $t1, $t1, 16
	slt $v0, $t0, $t1
	jr $ra
	nop
.globl icmp_i16_unsigned
icmp_i16_unsigned:
.p2align 2
	andi $t0, $a0, 65535
	andi $t1, $a1, 65535
	slt $v0, $t0, $t1
	jr $ra
	nop
.globl icmp_i1_unsigned
icmp_i1_unsigned:
.p2align 2
	sltu $v0, $a0, $a1
	jr $ra
	nop
.globl icmp_i8_signed
icmp_i8_signed:
.p2align 2
	sll $t0, $a0, 24
	sra $t0, $t0, 24
	sll $t1, $a1, 24
	sra $t1, $t1, 24
	slt $v0, $t1, $t0
	jr $ra
	nop
.globl icmp_i8_unsigned
icmp_i8_unsigned:
.p2align 2
	andi $t0, $a0, 255
	andi $t1, $a1, 255
	slt $v0, $t1, $t0
	jr $ra
	nop
