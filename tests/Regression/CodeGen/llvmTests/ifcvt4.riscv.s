.data
.section .rodata
.bss
.text
.globl t
t:
	mv a2, a1
	xor a1, a0, a1
	sltu a1, zero, a1
	bne a1, zero, label16
	j label2
label16:
	mv a1, a0
	mv a0, a2
	subw a5, zero, a2
	mv a3, a2
	mv a4, zero
	mulw a2, a5, zero
	addw a2, a1, a2
	ble a2, a3, label11
	subw a2, a2, a0
	xor t1, a2, a0
	sltu t1, zero, t1
	bne t1, zero, label10
	j label48
label2:
	ret
label48:
	mv a0, a2
	j label2
label10:
	addiw a4, a4, 1
	mulw a2, a5, a4
	addw a2, a1, a2
	ble a2, a3, label11
	subw a2, a2, a0
	xor t1, a2, a0
	sltu t1, zero, t1
	bne t1, zero, label10
	j label48
label11:
	subw a0, a0, a2
	xor a1, a2, a0
	sltu a1, zero, a1
	bne a1, zero, label36
	j label48
label36:
	mv a1, a2
	subw a5, zero, a0
	mv a3, a0
	mv a4, zero
	mulw a2, a5, zero
	addw a2, a1, a2
	ble a2, a0, label11
	subw a2, a2, a0
	xor t1, a2, a0
	sltu t1, zero, t1
	bne t1, zero, label10
	j label48
