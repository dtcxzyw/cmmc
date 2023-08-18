.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl test1
test1:
	beq a1, zero, label8
	addiw a0, a0, 10
label8:
	ret
.p2align 2
.globl test2
test2:
	addiw a2, a0, 10
	bne a1, zero, label16
	mv a0, a2
label16:
	ret
.p2align 2
.globl test3
test3:
	addiw a2, a0, 10
	mv a0, a2
	bne a1, zero, label24
	mv a0, zero
label24:
	ret
.p2align 2
.globl test4
test4:
	addiw a2, a0, 10
	mv a0, zero
	bne a1, zero, label32
	mv a0, a2
label32:
	ret
.p2align 2
.globl test5
test5:
	lui a2, 244141
	addiw a1, a2, -1529
	bge a0, zero, label41
	addw a0, a0, a1
label41:
	ret
.p2align 2
.globl test6
test6:
	mv a1, a0
	bge a0, zero, label50
	addiw a1, a0, 255
label50:
	andi a2, a1, -256
	subw a0, a0, a2
	ret
.p2align 2
.globl test7
test7:
	lui a3, 32
	mv a1, a0
	addiw a2, a3, -1
	bge a0, zero, label58
	addw a1, a0, a2
label58:
	sraiw a0, a1, 17
	ret
.p2align 2
.globl test8
test8:
	li a5, 1
	mv a2, a0
	sllw a4, a5, a1
	addiw a3, a4, -1
	bge a0, zero, label68
	addw a2, a0, a3
label68:
	sraw a0, a2, a1
	ret
.p2align 2
.globl test9
test9:
	mv a1, a0
	bge a0, zero, label74
	addiw a1, a0, 1
label74:
	sraiw a0, a1, 1
	ret
.p2align 2
.globl test10
test10:
	mv a1, a0
	bge a0, zero, label83
	addiw a1, a0, 1
label83:
	andi a2, a1, -2
	subw a0, a0, a2
	ret
