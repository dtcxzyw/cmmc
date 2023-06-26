.data
.align 4
temp:
	.zero	8388608
.align 4
w:
	.zero	8388608
.align 4
dst:
	.zero	8388608
.text
.globl main
main:
	addi sp, sp, -32
	sd s1, 24(sp)
	sd s2, 16(sp)
	sd s0, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s1, a0
pcrel1248:
	auipc a0, %pcrel_hi(w)
	addi a0, a0, %pcrel_lo(pcrel1248)
	mv s2, a0
	jal getarray
	li a0, 62
	jal _sysy_starttime
pcrel1249:
	auipc a0, %pcrel_hi(dst)
	addi s0, a0, %pcrel_lo(pcrel1249)
pcrel1250:
	auipc a0, %pcrel_hi(temp)
	addi a0, a0, %pcrel_lo(pcrel1250)
	mv a1, zero
	bge zero, s1, label99
	ble s1, zero, label13
	mv a2, zero
	mulw a3, zero, s1
	addw a3, zero, a3
	slli a4, a3, 2
	add a4, a0, a4
	blt zero, s1, label10
	li a3, -1
	sw a3, 0(a4)
	addiw a2, zero, 1
	bge a2, s1, label13
	mulw a3, a2, s1
	addw a3, zero, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, a2, s1
	addw a3, zero, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, a2, s1
	addw a3, zero, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	j label1089
label99:
	mv a1, zero
	mulw a3, zero, s1
	bge zero, s1, label72
	mv a2, zero
	mulw a4, zero, s1
	addw a5, zero, a4
	slliw a5, a5, 2
	add a5, a0, a5
	bge zero, s1, label18
	mv t1, zero
	bge zero, s1, label71
	j label22
label9:
	blt a2, s1, label10
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, a2, s1
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, a2, s1
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, a2, s1
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	j label962
label659:
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label54
	j label722
label72:
	mulw s1, s1, s1
	ble s1, zero, label73
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s1, label76
	j label87
label37:
	addiw t1, t1, 1
	bge t1, s1, label71
	bge a2, zero, label22
	li t2, -1
	blt t2, zero, label170
	bge a1, zero, label29
	j label789
label22:
	blt a2, s1, label23
	li t2, -1
	blt t2, zero, label170
	bge a1, zero, label29
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label37
	bge a2, zero, label39
	li t2, -1
	bge t2, zero, label58
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label54
	bge a1, zero, label50
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	bge a2, zero, label22
	j label983
label23:
	bge a1, zero, label24
	li t2, -1
	blt t2, zero, label170
	bge a1, zero, label29
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label37
	bge a2, zero, label39
	li t2, -1
	bge t2, zero, label58
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label54
	bge a1, zero, label50
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	bge a2, zero, label22
	j label983
label24:
	blt a1, s1, label25
	li t2, -1
	blt t2, zero, label170
	bge a1, zero, label29
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label37
	bge a2, zero, label39
	li t2, -1
	bge t2, zero, label58
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label54
	bge a1, zero, label50
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	bge a2, zero, label22
	j label983
label170:
	mv t2, zero
	addiw t1, t1, 1
	bge t1, s1, label71
	bge a2, zero, label22
	li t2, -1
	blt t2, zero, label170
	bge a1, zero, label29
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label37
	bge a2, zero, label39
	li t2, -1
	bge t2, zero, label58
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label54
	bge a1, zero, label50
	j label1120
label983:
	li t2, -1
	blt t2, zero, label170
	j label1051
label55:
	bge a1, zero, label56
	li t3, -1
	bge a1, zero, label50
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	bge a2, zero, label22
	li t2, -1
	blt t2, zero, label170
	bge a1, zero, label29
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label37
	bge a2, zero, label39
	li t2, -1
	bge t2, zero, label58
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label54
	bge a1, zero, label50
	j label1120
label788:
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	j label916
label71:
	addiw a2, a2, 1
	mulw a4, a2, s1
	addw a5, a1, a4
	slliw a5, a5, 2
	add a5, a0, a5
	bge a2, s1, label18
	mv t1, zero
	bge zero, s1, label71
	bge a2, zero, label22
	li t2, -1
	blt t2, zero, label170
	bge a1, zero, label29
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label37
	bge a2, zero, label39
	li t2, -1
	bge t2, zero, label58
	addw t2, zero, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label54
	bge a1, zero, label50
	j label788
label916:
	bge a2, zero, label22
	j label983
label722:
	li t3, -1
	bge a1, zero, label50
	j label788
label18:
	addiw a1, a1, 1
	mulw a3, a1, s1
	bge a1, s1, label72
	mv a2, zero
	mulw a4, zero, s1
	addw a5, a1, a4
	slliw a5, a5, 2
	add a5, a0, a5
	bge zero, s1, label18
	mv t1, zero
	bge zero, s1, label71
	j label22
label1120:
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	j label916
label56:
	blt a1, s1, label57
	li t3, -1
	bge a1, zero, label50
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	bge a2, zero, label22
	li t2, -1
	blt t2, zero, label170
	bge a1, zero, label29
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label37
	bge a2, zero, label39
	li t2, -1
	bge t2, zero, label58
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label54
	bge a1, zero, label50
	j label1120
label39:
	blt a2, s1, label40
	li t2, -1
	bge t2, zero, label58
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label54
	li t3, -1
	bge a1, zero, label50
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	bge a2, zero, label22
	li t2, -1
	blt t2, zero, label170
	bge a1, zero, label29
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label37
	bge a2, zero, label39
	j label917
label40:
	bge t1, zero, label41
	li t2, -1
	bge t2, zero, label58
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label54
	li t3, -1
	bge a1, zero, label50
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	bge a2, zero, label22
	li t2, -1
	blt t2, zero, label170
	bge a1, zero, label29
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label37
	bge a2, zero, label39
	j label917
label41:
	blt t1, s1, label42
	li t2, -1
	bge t2, zero, label58
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label54
	li t3, -1
	bge a1, zero, label50
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	bge a2, zero, label22
	li t2, -1
	blt t2, zero, label170
	bge a1, zero, label29
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label37
	bge a2, zero, label39
label917:
	li t2, -1
	bge t2, zero, label58
	j label984
label31:
	blt t1, s1, label32
	li t2, -1
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label37
	bge a2, zero, label39
	li t2, -1
	bge t2, zero, label58
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label54
	bge a1, zero, label50
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	bge a2, zero, label22
	li t2, -1
	blt t2, zero, label170
	bge a1, zero, label29
	j label1119
label54:
	blt a2, s1, label55
	li t3, -1
	bge a1, zero, label50
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	bge a2, zero, label22
	li t2, -1
	blt t2, zero, label170
	bge a1, zero, label29
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label37
	bge a2, zero, label39
	li t2, -1
	bge t2, zero, label58
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label54
	j label1136
label58:
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	bge a2, zero, label67
	li t3, -1
	bge a1, zero, label63
	li t4, -1
	addw t3, t3, t4
	ble t2, t3, label37
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label54
	li t3, -1
	bge a1, zero, label50
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	bge a2, zero, label22
	li t2, -1
	blt t2, zero, label170
	bge a1, zero, label29
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label37
	j label1140
label63:
	blt a1, s1, label64
	li t4, -1
	addw t3, t3, t4
	ble t2, t3, label37
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label54
	li t3, -1
	bge a1, zero, label50
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	bge a2, zero, label22
	li t2, -1
	blt t2, zero, label170
	bge a1, zero, label29
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label37
	bge a2, zero, label39
	j label1146
label64:
	bge t1, zero, label65
	li t4, -1
	addw t3, t3, t4
	ble t2, t3, label37
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label54
	li t3, -1
	bge a1, zero, label50
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	bge a2, zero, label22
	li t2, -1
	blt t2, zero, label170
	bge a1, zero, label29
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label37
	bge a2, zero, label39
	li t2, -1
	bge t2, zero, label58
	j label1144
label67:
	blt a2, s1, label68
	li t3, -1
	bge a1, zero, label63
	li t4, -1
	addw t3, t3, t4
	ble t2, t3, label37
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label54
	li t3, -1
	bge a1, zero, label50
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	bge a2, zero, label22
	li t2, -1
	blt t2, zero, label170
	bge a1, zero, label29
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label37
	j label1150
label1142:
	li t2, -1
	bge t2, zero, label58
	j label1144
label68:
	bge a1, zero, label69
	li t3, -1
	bge a1, zero, label63
	li t4, -1
	addw t3, t3, t4
	ble t2, t3, label37
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label54
	li t3, -1
	bge a1, zero, label50
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	bge a2, zero, label22
	li t2, -1
	blt t2, zero, label170
	bge a1, zero, label29
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label37
	bge a2, zero, label39
	j label1142
label69:
	blt a1, s1, label70
	li t3, -1
	bge a1, zero, label63
	li t4, -1
	addw t3, t3, t4
	ble t2, t3, label37
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label54
	li t3, -1
	bge a1, zero, label50
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	bge a2, zero, label22
	li t2, -1
	blt t2, zero, label170
	bge a1, zero, label29
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label37
	bge a2, zero, label39
	j label1142
label57:
	lw t3, 0(a5)
	bge a1, zero, label50
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	bge a2, zero, label22
	li t2, -1
	blt t2, zero, label170
	bge a1, zero, label29
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label37
	bge a2, zero, label39
	li t2, -1
	bge t2, zero, label58
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label54
	bge a1, zero, label50
	j label1120
label984:
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label54
	j label1052
label42:
	addw t2, t1, a4
	slliw t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	bge t2, zero, label58
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label54
	li t3, -1
	bge a1, zero, label50
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	bge a2, zero, label22
	li t2, -1
	blt t2, zero, label170
	bge a1, zero, label29
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label37
	bge a2, zero, label39
	li t2, -1
	bge t2, zero, label58
	j label984
label1052:
	li t3, -1
	bge a1, zero, label50
	j label1120
label50:
	blt a1, s1, label51
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	bge a2, zero, label22
	li t2, -1
	blt t2, zero, label170
	bge a1, zero, label29
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label37
	bge a2, zero, label39
	li t2, -1
	bge t2, zero, label58
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label54
	bge a1, zero, label50
	j label1132
label51:
	bge t1, zero, label52
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	bge a2, zero, label22
	li t2, -1
	blt t2, zero, label170
	bge a1, zero, label29
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label37
	bge a2, zero, label39
	li t2, -1
	bge t2, zero, label58
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label54
	bge a1, zero, label50
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	j label916
label53:
	addw t4, t1, a3
	slliw t4, t4, 2
	add t4, a0, t4
	lw t4, 0(t4)
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	bge a2, zero, label22
	li t2, -1
	blt t2, zero, label170
	bge a1, zero, label29
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label37
	bge a2, zero, label39
	li t2, -1
	bge t2, zero, label58
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label54
	bge a1, zero, label50
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	j label916
label1132:
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	j label916
label1140:
	bge a2, zero, label39
	j label1142
label52:
	blt t1, s1, label53
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	bge a2, zero, label22
	li t2, -1
	blt t2, zero, label170
	bge a1, zero, label29
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label37
	bge a2, zero, label39
	li t2, -1
	bge t2, zero, label58
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label54
	bge a1, zero, label50
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	j label916
label29:
	blt a1, s1, label30
	li t2, -1
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label37
	bge a2, zero, label39
	li t2, -1
	bge t2, zero, label58
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label54
	bge a1, zero, label50
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	bge a2, zero, label22
	li t2, -1
	blt t2, zero, label170
	bge a1, zero, label29
label1119:
	li t2, -1
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label37
label851:
	bge a2, zero, label39
	j label917
label1146:
	li t2, -1
	bge t2, zero, label58
	j label1144
label789:
	li t2, -1
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label37
	j label851
label25:
	lw t2, 0(a5)
	blt t2, zero, label170
	bge a1, zero, label29
	li t2, -1
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label37
	bge a2, zero, label39
	li t2, -1
	bge t2, zero, label58
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label54
	bge a1, zero, label50
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	bge a2, zero, label22
	li t2, -1
	blt t2, zero, label170
label1051:
	bge a1, zero, label29
	j label1119
label1136:
	li t3, -1
	bge a1, zero, label50
	j label1120
label1144:
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label54
	j label1052
label66:
	addw t4, t1, a3
	slliw t4, t4, 2
	add t4, a0, t4
	lw t4, 0(t4)
	addw t3, t3, t4
	ble t2, t3, label37
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label54
	li t3, -1
	bge a1, zero, label50
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	bge a2, zero, label22
	li t2, -1
	blt t2, zero, label170
	bge a1, zero, label29
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label37
	bge a2, zero, label39
	li t2, -1
	bge t2, zero, label58
	j label1144
label65:
	blt t1, s1, label66
	li t4, -1
	addw t3, t3, t4
	ble t2, t3, label37
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label54
	li t3, -1
	bge a1, zero, label50
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	bge a2, zero, label22
	li t2, -1
	blt t2, zero, label170
	bge a1, zero, label29
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label37
	bge a2, zero, label39
	li t2, -1
	bge t2, zero, label58
	j label1144
label70:
	lw t3, 0(a5)
	bge a1, zero, label63
	li t4, -1
	addw t3, t3, t4
	ble t2, t3, label37
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label54
	li t3, -1
	bge a1, zero, label50
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	bge a2, zero, label22
	li t2, -1
	blt t2, zero, label170
	bge a1, zero, label29
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label37
	bge a2, zero, label39
	j label1142
label32:
	addw t2, t1, a3
	slliw t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label37
	bge a2, zero, label39
	li t2, -1
	bge t2, zero, label58
	j label659
label1150:
	bge a2, zero, label39
	j label1142
label30:
	bge t1, zero, label31
	li t2, -1
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label37
	bge a2, zero, label39
	li t2, -1
	bge t2, zero, label58
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label54
	bge a1, zero, label50
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label71
	bge a2, zero, label22
	li t2, -1
	blt t2, zero, label170
	bge a1, zero, label29
	j label1119
label1089:
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	j label962
label1094:
	mulw a3, a2, s1
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
label1096:
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	j label1094
label962:
	mulw a3, a2, s1
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	j label1030
label10:
	bge a1, zero, label11
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, a2, s1
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, a2, s1
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, a2, s1
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, a2, s1
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, a2, s1
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	j label1096
label1030:
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, a2, s1
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	j label1096
label13:
	addiw a1, a1, 1
	bge a1, s1, label99
	ble s1, zero, label13
	mv a2, zero
	mulw a3, zero, s1
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	blt zero, s1, label10
	li a3, -1
	sw a3, 0(a4)
	addiw a2, zero, 1
	bge a2, s1, label13
	mulw a3, a2, s1
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, a2, s1
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, a2, s1
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	j label962
label11:
	blt a1, s1, label12
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, a2, s1
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, a2, s1
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, a2, s1
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, a2, s1
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, a2, s1
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	j label1096
label12:
	slliw a3, a3, 2
	add a3, s2, a3
	lw a3, 0(a3)
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, a2, s1
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, a2, s1
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, a2, s1
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, a2, s1
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, a2, s1
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	j label1096
label76:
	addiw a2, a1, 16
	bge a2, s1, label79
	j label78
label79:
	addiw a2, a1, 16
	bge a2, s1, label82
	j label81
label82:
	addiw a2, a1, 16
	bge a2, s1, label85
	j label84
label85:
	slliw a2, a1, 2
	add a2, s0, a2
	slliw a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	sw a3, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label73
	slliw a2, a1, 2
	add a2, s0, a2
	slliw a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	sw a3, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label73
	slliw a2, a1, 2
	add a2, s0, a2
	slliw a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	sw a3, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label73
	slliw a2, a1, 2
	add a2, s0, a2
	slliw a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	sw a3, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label73
	slliw a2, a1, 2
	add a2, s0, a2
	slliw a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	sw a3, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label73
	slliw a2, a1, 2
	add a2, s0, a2
	slliw a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	sw a3, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label73
	slliw a2, a1, 2
	add a2, s0, a2
	slliw a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	sw a3, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label73
	slliw a2, a1, 2
	add a2, s0, a2
	slliw a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	sw a3, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label73
	slliw a2, a1, 2
	add a2, s0, a2
	slliw a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	sw a3, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label73
	slliw a2, a1, 2
	add a2, s0, a2
	slliw a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	sw a3, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label73
label1156:
	slliw a2, a1, 2
	add a2, s0, a2
	slliw a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	sw a3, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label73
	j label1156
label84:
	slliw a3, a1, 2
	add a3, s0, a3
	slliw a1, a1, 2
	add a1, a0, a1
	lw a4, 0(a1)
	sw a4, 0(a3)
	lw a4, 4(a1)
	sw a4, 4(a3)
	lw a4, 8(a1)
	sw a4, 8(a3)
	lw a4, 12(a1)
	sw a4, 12(a3)
	lw a4, 16(a1)
	sw a4, 16(a3)
	lw a4, 20(a1)
	sw a4, 20(a3)
	lw a4, 24(a1)
	sw a4, 24(a3)
	lw a4, 28(a1)
	sw a4, 28(a3)
	lw a4, 32(a1)
	sw a4, 32(a3)
	lw a4, 36(a1)
	sw a4, 36(a3)
	lw a4, 40(a1)
	sw a4, 40(a3)
	lw a4, 44(a1)
	sw a4, 44(a3)
	lw a4, 48(a1)
	sw a4, 48(a3)
	lw a4, 52(a1)
	sw a4, 52(a3)
	lw a4, 56(a1)
	sw a4, 56(a3)
	lw a1, 60(a1)
	sw a1, 60(a3)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s1, label85
	j label84
label87:
	slliw a3, a1, 2
	add a3, s0, a3
	slliw a1, a1, 2
	add a1, a0, a1
	lw a4, 0(a1)
	sw a4, 0(a3)
	lw a4, 4(a1)
	sw a4, 4(a3)
	lw a4, 8(a1)
	sw a4, 8(a3)
	lw a4, 12(a1)
	sw a4, 12(a3)
	lw a4, 16(a1)
	sw a4, 16(a3)
	lw a4, 20(a1)
	sw a4, 20(a3)
	lw a4, 24(a1)
	sw a4, 24(a3)
	lw a4, 28(a1)
	sw a4, 28(a3)
	lw a4, 32(a1)
	sw a4, 32(a3)
	lw a4, 36(a1)
	sw a4, 36(a3)
	lw a4, 40(a1)
	sw a4, 40(a3)
	lw a4, 44(a1)
	sw a4, 44(a3)
	lw a4, 48(a1)
	sw a4, 48(a3)
	lw a4, 52(a1)
	sw a4, 52(a3)
	lw a4, 56(a1)
	sw a4, 56(a3)
	lw a1, 60(a1)
	sw a1, 60(a3)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s1, label76
	j label87
label81:
	slliw a3, a1, 2
	add a3, s0, a3
	slliw a1, a1, 2
	add a1, a0, a1
	lw a4, 0(a1)
	sw a4, 0(a3)
	lw a4, 4(a1)
	sw a4, 4(a3)
	lw a4, 8(a1)
	sw a4, 8(a3)
	lw a4, 12(a1)
	sw a4, 12(a3)
	lw a4, 16(a1)
	sw a4, 16(a3)
	lw a4, 20(a1)
	sw a4, 20(a3)
	lw a4, 24(a1)
	sw a4, 24(a3)
	lw a4, 28(a1)
	sw a4, 28(a3)
	lw a4, 32(a1)
	sw a4, 32(a3)
	lw a4, 36(a1)
	sw a4, 36(a3)
	lw a4, 40(a1)
	sw a4, 40(a3)
	lw a4, 44(a1)
	sw a4, 44(a3)
	lw a4, 48(a1)
	sw a4, 48(a3)
	lw a4, 52(a1)
	sw a4, 52(a3)
	lw a4, 56(a1)
	sw a4, 56(a3)
	lw a1, 60(a1)
	sw a1, 60(a3)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s1, label82
	j label81
label78:
	slliw a3, a1, 2
	add a3, s0, a3
	slliw a1, a1, 2
	add a1, a0, a1
	lw a4, 0(a1)
	sw a4, 0(a3)
	lw a4, 4(a1)
	sw a4, 4(a3)
	lw a4, 8(a1)
	sw a4, 8(a3)
	lw a4, 12(a1)
	sw a4, 12(a3)
	lw a4, 16(a1)
	sw a4, 16(a3)
	lw a4, 20(a1)
	sw a4, 20(a3)
	lw a4, 24(a1)
	sw a4, 24(a3)
	lw a4, 28(a1)
	sw a4, 28(a3)
	lw a4, 32(a1)
	sw a4, 32(a3)
	lw a4, 36(a1)
	sw a4, 36(a3)
	lw a4, 40(a1)
	sw a4, 40(a3)
	lw a4, 44(a1)
	sw a4, 44(a3)
	lw a4, 48(a1)
	sw a4, 48(a3)
	lw a4, 52(a1)
	sw a4, 52(a3)
	lw a4, 56(a1)
	sw a4, 56(a3)
	lw a1, 60(a1)
	sw a1, 60(a3)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s1, label79
	j label78
label73:
	li a0, 64
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s0
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	addi sp, sp, 32
	ret
