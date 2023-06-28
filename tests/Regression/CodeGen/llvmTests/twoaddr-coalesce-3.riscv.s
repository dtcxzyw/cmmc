.data
.align 4
.globl M
M:
	.4byte	0
.align 4
.globl total
total:
	.4byte	0
.align 4
.globl g
g:
	.4byte	0
.text
.globl foo
foo:
pcrel78:
	auipc a0, %pcrel_hi(M)
	lw a0, %pcrel_lo(pcrel78)(a0)
	mv a2, a0
	ble a0, zero, label8
pcrel79:
	auipc a0, %pcrel_hi(total)
	addi a1, a0, %pcrel_lo(pcrel79)
	lw a0, %pcrel_lo(pcrel79)(a0)
	li a3, 1
	ble a2, a3, label23
	li a4, 4294967295
	and a3, a3, a4
	srliw a5, a3, 31
	add a5, a3, a5
	sraiw a5, a5, 1
	and a0, a0, a4
	addw a0, a5, a0
	addiw a3, a3, 1
	bge a3, a2, label23
	and a3, a3, a4
	srliw a5, a3, 31
	add a5, a3, a5
	sraiw a5, a5, 1
	and a0, a0, a4
	addw a0, a5, a0
	addiw a3, a3, 1
	bge a3, a2, label23
	and a3, a3, a4
	srliw a5, a3, 31
	add a5, a3, a5
	sraiw a5, a5, 1
	and a0, a0, a4
	addw a0, a5, a0
	addiw a3, a3, 1
	bge a3, a2, label23
	and a3, a3, a4
	srliw a5, a3, 31
	add a5, a3, a5
	sraiw a5, a5, 1
	and a0, a0, a4
	addw a0, a5, a0
	addiw a3, a3, 1
	bge a3, a2, label23
	and a3, a3, a4
	srliw a5, a3, 31
	add a5, a3, a5
	sraiw a5, a5, 1
	and a0, a0, a4
	addw a0, a5, a0
	addiw a3, a3, 1
	bge a3, a2, label23
	and a3, a3, a4
	srliw a5, a3, 31
	add a5, a3, a5
	sraiw a5, a5, 1
	and a0, a0, a4
	addw a0, a5, a0
	addiw a3, a3, 1
	bge a3, a2, label23
	and a3, a3, a4
	srliw a5, a3, 31
	add a5, a3, a5
	sraiw a5, a5, 1
	and a0, a0, a4
	addw a0, a5, a0
	addiw a3, a3, 1
	bge a3, a2, label23
	and a3, a3, a4
	srliw a5, a3, 31
	add a5, a3, a5
	sraiw a5, a5, 1
	and a0, a0, a4
	addw a0, a5, a0
	addiw a3, a3, 1
	bge a3, a2, label23
	and a3, a3, a4
	srliw a5, a3, 31
	add a5, a3, a5
	sraiw a5, a5, 1
	and a0, a0, a4
	addw a0, a5, a0
	addiw a3, a3, 1
	bge a3, a2, label23
	and a3, a3, a4
	srliw a5, a3, 31
	add a5, a3, a5
	sraiw a5, a5, 1
	and a0, a0, a4
	addw a0, a5, a0
	addiw a3, a3, 1
	bge a3, a2, label23
	j label74
label8:
	ret
label23:
	li a2, 4294967295
	and a0, a0, a2
	sw a0, 0(a1)
	j label8
label74:
	li a4, 4294967295
	and a3, a3, a4
	srliw a5, a3, 31
	add a5, a3, a5
	sraiw a5, a5, 1
	and a0, a0, a4
	addw a0, a5, a0
	addiw a3, a3, 1
	bge a3, a2, label23
	j label74
.globl goo
goo:
pcrel135:
	auipc a0, %pcrel_hi(M)
	lw a0, %pcrel_lo(pcrel135)(a0)
	mv a1, a0
	ble a0, zero, label87
pcrel136:
	auipc a0, %pcrel_hi(total)
	addi a2, a0, %pcrel_lo(pcrel136)
	lw a3, %pcrel_lo(pcrel136)(a0)
	mv a0, a3
	li a4, 4294967295
	and a4, a3, a4
pcrel137:
	auipc a5, %pcrel_hi(g)
	addi a3, a5, %pcrel_lo(pcrel137)
	sw a4, %pcrel_lo(pcrel137)(a5)
	li a4, 1
	ble a1, a4, label105
label82:
	li a5, 4294967295
	and a4, a4, a5
	srliw t1, a4, 31
	add t1, a4, t1
	sraiw t1, t1, 1
	and a0, a0, a5
	addw a0, t1, a0
	and a5, a0, a5
	sw a5, 0(a3)
	addiw a4, a4, 1
	bge a4, a1, label105
	j label82
label87:
	ret
label105:
	li a1, 4294967295
	and a0, a0, a1
	sw a0, 0(a2)
	j label87
