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
	bne a1, zero, label17
	mv a0, a2
label17:
	ret
.p2align 2
.globl test3
test3:
	addiw a2, a0, 10
	mv a0, a2
	bne a1, zero, label26
	mv a0, zero
label26:
	ret
.p2align 2
.globl test4
test4:
	addiw a2, a0, 10
	mv a0, zero
	bne a1, zero, label35
	mv a0, a2
label35:
	ret
.p2align 2
.globl test5
test5:
	lui a2, 244141
	addiw a1, a2, -1529
	bge a0, zero, label45
	addw a0, a0, a1
label45:
	ret
