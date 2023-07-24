.data
.text
.globl and0xf30_lshr4
and0xf30_lshr4:
.p2align 2
	andi $t0, $a0, 3888
	srl $v0, $t0, 4
	jr $ra
	nop
.globl and0xff0_lshr3
and0xff0_lshr3:
.p2align 2
	andi $t0, $a0, 4080
	srl $v0, $t0, 3
	jr $ra
	nop
.globl and0xff0_lshr4
and0xff0_lshr4:
.p2align 2
	andi $t0, $a0, 4080
	srl $v0, $t0, 4
	jr $ra
	nop
.globl and4080_ashr5
and4080_ashr5:
.p2align 2
	andi $t0, $a0, 4080
	srl $v0, $t0, 5
	jr $ra
	nop
.globl and4095
and4095:
.p2align 2
	andi $v0, $a0, 4095
	jr $ra
	nop
.globl and8191
and8191:
.p2align 2
	andi $v0, $a0, 8191
	jr $ra
	nop
.globl ashr20_and511
ashr20_and511:
.p2align 2
	srl $t0, $a0, 20
	andi $v0, $t0, 511
	jr $ra
	nop
.globl lshr10_and255
lshr10_and255:
.p2align 2
	srl $t0, $a0, 10
	andi $v0, $t0, 255
	jr $ra
	nop
.globl zext_i16_to_i32
zext_i16_to_i32:
.p2align 2
	andi $v0, $a0, 65535
	jr $ra
	nop
