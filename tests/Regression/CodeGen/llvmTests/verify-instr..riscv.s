.data
.text
.globl mulw
mulw:
	mv a2, a0
	mv a3, a1
	bge a0, a1, label16
	addiw a1, a0, 1
	bge a1, a3, label21
	li a2, 4294967295
	and a1, a1, a2
	and a0, a0, a2
	mulw a0, a1, a0
	addiw a1, a1, 1
	bge a1, a3, label21
	and a1, a1, a2
	and a0, a0, a2
	mulw a0, a1, a0
	addiw a1, a1, 1
	bge a1, a3, label21
	and a1, a1, a2
	and a0, a0, a2
	mulw a0, a1, a0
	addiw a1, a1, 1
	bge a1, a3, label21
	and a1, a1, a2
	and a0, a0, a2
	mulw a0, a1, a0
	addiw a1, a1, 1
	bge a1, a3, label21
	and a1, a1, a2
	and a0, a0, a2
	mulw a0, a1, a0
	addiw a1, a1, 1
	bge a1, a3, label21
	and a1, a1, a2
	and a0, a0, a2
	mulw a0, a1, a0
	addiw a1, a1, 1
	bge a1, a3, label21
	and a1, a1, a2
	and a0, a0, a2
	mulw a0, a1, a0
	addiw a1, a1, 1
	bge a1, a3, label21
	and a1, a1, a2
	and a0, a0, a2
	mulw a0, a1, a0
	addiw a1, a1, 1
	bge a1, a3, label21
	and a1, a1, a2
	and a0, a0, a2
	mulw a0, a1, a0
	addiw a1, a1, 1
	bge a1, a3, label21
	j label65
label16:
	li a0, 1
	j label8
label65:
	li a2, 4294967295
	and a1, a1, a2
	and a0, a0, a2
	mulw a0, a1, a0
	addiw a1, a1, 1
	bge a1, a3, label21
	j label66
label8:
	ret
label21:
	li a1, 4294967295
	and a0, a0, a1
	j label8
label66:
	li a2, 4294967295
	and a1, a1, a2
	and a0, a0, a2
	mulw a0, a1, a0
	addiw a1, a1, 1
	bge a1, a3, label21
	j label66
