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
pcrel1236:
	auipc a0, %pcrel_hi(w)
	addi a0, a0, %pcrel_lo(pcrel1236)
	mv s2, a0
	jal getarray
	li a0, 62
	jal _sysy_starttime
pcrel1237:
	auipc a0, %pcrel_hi(dst)
	addi s0, a0, %pcrel_lo(pcrel1237)
pcrel1238:
	auipc a0, %pcrel_hi(temp)
	addi a0, a0, %pcrel_lo(pcrel1238)
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
	j label1081
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
	bge zero, s1, label21
	j label23
label658:
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label55
	j label720
label72:
	mulw s1, s1, s1
	ble s1, zero, label73
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s1, label76
	j label87
label23:
	blt a2, s1, label24
	li t2, -1
	blt t2, zero, label171
	bge a1, zero, label30
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label38
	bge a2, zero, label40
	li t2, -1
	bge t2, zero, label59
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label55
	bge a1, zero, label51
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	bge a2, zero, label23
	j label977
label24:
	bge a1, zero, label25
	li t2, -1
	blt t2, zero, label171
	bge a1, zero, label30
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label38
	bge a2, zero, label40
	li t2, -1
	bge t2, zero, label59
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label55
	bge a1, zero, label51
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	bge a2, zero, label23
	j label977
label25:
	blt a1, s1, label26
	li t2, -1
	blt t2, zero, label171
	bge a1, zero, label30
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label38
	bge a2, zero, label40
	li t2, -1
	bge t2, zero, label59
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label55
	bge a1, zero, label51
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	bge a2, zero, label23
label977:
	li t2, -1
	blt t2, zero, label171
	j label1044
label41:
	bge t1, zero, label42
	li t2, -1
	bge t2, zero, label59
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label55
	li t3, -1
	bge a1, zero, label51
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	bge a2, zero, label23
	li t2, -1
	blt t2, zero, label171
	bge a1, zero, label30
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label38
	bge a2, zero, label40
	j label912
label42:
	blt t1, s1, label43
	li t2, -1
	bge t2, zero, label59
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label55
	li t3, -1
	bge a1, zero, label51
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	bge a2, zero, label23
	li t2, -1
	blt t2, zero, label171
	bge a1, zero, label30
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label38
	bge a2, zero, label40
	j label912
label911:
	bge a2, zero, label23
	j label977
label51:
	blt a1, s1, label52
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	bge a2, zero, label23
	li t2, -1
	blt t2, zero, label171
	bge a1, zero, label30
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label38
	bge a2, zero, label40
	li t2, -1
	bge t2, zero, label59
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label55
	bge a1, zero, label51
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	j label911
label52:
	bge t1, zero, label53
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	bge a2, zero, label23
	li t2, -1
	blt t2, zero, label171
	bge a1, zero, label30
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label38
	bge a2, zero, label40
	li t2, -1
	bge t2, zero, label59
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label55
	bge a1, zero, label51
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	j label911
label38:
	addiw t1, t1, 1
	bge t1, s1, label21
	bge a2, zero, label23
	li t2, -1
	blt t2, zero, label171
	bge a1, zero, label30
	j label786
label21:
	addiw a2, a2, 1
	mulw a4, a2, s1
	addw a5, a1, a4
	slliw a5, a5, 2
	add a5, a0, a5
	bge a2, s1, label18
	mv t1, zero
	bge zero, s1, label21
	bge a2, zero, label23
	li t2, -1
	blt t2, zero, label171
	bge a1, zero, label30
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label38
	bge a2, zero, label40
	li t2, -1
	bge t2, zero, label59
	addw t2, zero, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label55
	bge a1, zero, label51
	j label785
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
	bge zero, s1, label21
	j label23
label720:
	li t3, -1
	bge a1, zero, label51
label785:
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	j label911
label171:
	mv t2, zero
	addiw t1, t1, 1
	bge t1, s1, label21
	bge a2, zero, label23
	li t2, -1
	blt t2, zero, label171
	bge a1, zero, label30
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label38
	bge a2, zero, label40
	li t2, -1
	bge t2, zero, label59
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label55
	bge a1, zero, label51
label1112:
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	j label911
label912:
	li t2, -1
	bge t2, zero, label59
	j label978
label40:
	blt a2, s1, label41
	li t2, -1
	bge t2, zero, label59
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label55
	li t3, -1
	bge a1, zero, label51
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	bge a2, zero, label23
	li t2, -1
	blt t2, zero, label171
	bge a1, zero, label30
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label38
	bge a2, zero, label40
	j label912
label55:
	blt a2, s1, label56
	li t3, -1
	bge a1, zero, label51
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	bge a2, zero, label23
	li t2, -1
	blt t2, zero, label171
	bge a1, zero, label30
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label38
	bge a2, zero, label40
	li t2, -1
	bge t2, zero, label59
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label55
	j label1128
label66:
	blt t1, s1, label67
	li t4, -1
	addw t3, t3, t4
	ble t2, t3, label38
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label55
	li t3, -1
	bge a1, zero, label51
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	bge a2, zero, label23
	li t2, -1
	blt t2, zero, label171
	bge a1, zero, label30
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label38
	bge a2, zero, label40
	li t2, -1
	bge t2, zero, label59
	j label1136
label56:
	bge a1, zero, label57
	li t3, -1
	bge a1, zero, label51
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	bge a2, zero, label23
	li t2, -1
	blt t2, zero, label171
	bge a1, zero, label30
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label38
	bge a2, zero, label40
	li t2, -1
	bge t2, zero, label59
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label55
	bge a1, zero, label51
	j label1112
label57:
	blt a1, s1, label58
	li t3, -1
	bge a1, zero, label51
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	bge a2, zero, label23
	li t2, -1
	blt t2, zero, label171
	bge a1, zero, label30
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label38
	bge a2, zero, label40
	li t2, -1
	bge t2, zero, label59
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label55
	bge a1, zero, label51
	j label1112
label58:
	lw t3, 0(a5)
	bge a1, zero, label51
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	bge a2, zero, label23
	li t2, -1
	blt t2, zero, label171
	bge a1, zero, label30
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label38
	bge a2, zero, label40
	li t2, -1
	bge t2, zero, label59
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label55
	bge a1, zero, label51
	j label1112
label1128:
	li t3, -1
	bge a1, zero, label51
	j label1112
label53:
	blt t1, s1, label54
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	bge a2, zero, label23
	li t2, -1
	blt t2, zero, label171
	bge a1, zero, label30
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label38
	bge a2, zero, label40
	li t2, -1
	bge t2, zero, label59
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label55
	bge a1, zero, label51
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	j label911
label54:
	addw t4, t1, a3
	slliw t4, t4, 2
	add t4, a0, t4
	lw t4, 0(t4)
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	bge a2, zero, label23
	li t2, -1
	blt t2, zero, label171
	bge a1, zero, label30
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label38
	bge a2, zero, label40
	li t2, -1
	bge t2, zero, label59
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label55
	bge a1, zero, label51
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	j label911
label978:
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label55
	j label1045
label43:
	addw t2, t1, a4
	slliw t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	bge t2, zero, label59
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label55
	li t3, -1
	bge a1, zero, label51
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	bge a2, zero, label23
	li t2, -1
	blt t2, zero, label171
	bge a1, zero, label30
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label38
	bge a2, zero, label40
	li t2, -1
	bge t2, zero, label59
	j label978
label26:
	lw t2, 0(a5)
	blt t2, zero, label171
	bge a1, zero, label30
	li t2, -1
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label38
	bge a2, zero, label40
	li t2, -1
	bge t2, zero, label59
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label55
	bge a1, zero, label51
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	bge a2, zero, label23
	li t2, -1
	blt t2, zero, label171
label1044:
	bge a1, zero, label30
label1111:
	li t2, -1
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label38
label847:
	bge a2, zero, label40
	j label912
label30:
	blt a1, s1, label31
	li t2, -1
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label38
	bge a2, zero, label40
	li t2, -1
	bge t2, zero, label59
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label55
	bge a1, zero, label51
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	bge a2, zero, label23
	li t2, -1
	blt t2, zero, label171
	bge a1, zero, label30
	j label1111
label32:
	blt t1, s1, label33
	li t2, -1
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label38
	bge a2, zero, label40
	li t2, -1
	bge t2, zero, label59
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label55
	bge a1, zero, label51
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	bge a2, zero, label23
	li t2, -1
	blt t2, zero, label171
	bge a1, zero, label30
	j label1111
label59:
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	bge a2, zero, label68
	li t3, -1
	bge a1, zero, label64
	li t4, -1
	addw t3, t3, t4
	ble t2, t3, label38
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label55
	li t3, -1
	bge a1, zero, label51
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	bge a2, zero, label23
	li t2, -1
	blt t2, zero, label171
	bge a1, zero, label30
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label38
	bge a2, zero, label40
	j label1134
label64:
	blt a1, s1, label65
	li t4, -1
	addw t3, t3, t4
	ble t2, t3, label38
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label55
	li t3, -1
	bge a1, zero, label51
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	bge a2, zero, label23
	li t2, -1
	blt t2, zero, label171
	bge a1, zero, label30
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label38
	bge a2, zero, label40
	j label1138
label65:
	bge t1, zero, label66
	li t4, -1
	addw t3, t3, t4
	ble t2, t3, label38
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label55
	li t3, -1
	bge a1, zero, label51
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	bge a2, zero, label23
	li t2, -1
	blt t2, zero, label171
	bge a1, zero, label30
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label38
	bge a2, zero, label40
	li t2, -1
	bge t2, zero, label59
	j label1136
label68:
	blt a2, s1, label69
	li t3, -1
	bge a1, zero, label64
	li t4, -1
	addw t3, t3, t4
	ble t2, t3, label38
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label55
	li t3, -1
	bge a1, zero, label51
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	bge a2, zero, label23
	li t2, -1
	blt t2, zero, label171
	bge a1, zero, label30
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label38
	j label1142
label69:
	bge a1, zero, label70
	li t3, -1
	bge a1, zero, label64
	li t4, -1
	addw t3, t3, t4
	ble t2, t3, label38
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label55
	li t3, -1
	bge a1, zero, label51
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	bge a2, zero, label23
	li t2, -1
	blt t2, zero, label171
	bge a1, zero, label30
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label38
	bge a2, zero, label40
	j label1134
label70:
	blt a1, s1, label71
	li t3, -1
	bge a1, zero, label64
	li t4, -1
	addw t3, t3, t4
	ble t2, t3, label38
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label55
	li t3, -1
	bge a1, zero, label51
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	bge a2, zero, label23
	li t2, -1
	blt t2, zero, label171
	bge a1, zero, label30
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label38
	bge a2, zero, label40
	j label1134
label71:
	lw t3, 0(a5)
	bge a1, zero, label64
	li t4, -1
	addw t3, t3, t4
	ble t2, t3, label38
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label55
	li t3, -1
	bge a1, zero, label51
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	bge a2, zero, label23
	li t2, -1
	blt t2, zero, label171
	bge a1, zero, label30
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label38
	bge a2, zero, label40
label1134:
	li t2, -1
	bge t2, zero, label59
	j label1136
label1142:
	bge a2, zero, label40
	j label1134
label31:
	bge t1, zero, label32
	li t2, -1
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label38
	bge a2, zero, label40
	li t2, -1
	bge t2, zero, label59
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label55
	bge a1, zero, label51
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	bge a2, zero, label23
	li t2, -1
	blt t2, zero, label171
	bge a1, zero, label30
	j label1111
label786:
	li t2, -1
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label38
	j label847
label67:
	addw t4, t1, a3
	slliw t4, t4, 2
	add t4, a0, t4
	lw t4, 0(t4)
	addw t3, t3, t4
	ble t2, t3, label38
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label55
	li t3, -1
	bge a1, zero, label51
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label21
	bge a2, zero, label23
	li t2, -1
	blt t2, zero, label171
	bge a1, zero, label30
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label38
	bge a2, zero, label40
	li t2, -1
	bge t2, zero, label59
	j label1136
label33:
	addw t2, t1, a3
	slliw t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label38
	bge a2, zero, label40
	li t2, -1
	bge t2, zero, label59
	j label658
label1045:
	li t3, -1
	bge a1, zero, label51
	j label1112
label1136:
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label55
	j label1045
label1138:
	li t2, -1
	bge t2, zero, label59
	j label1136
label1090:
	mulw a3, a2, s1
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	j label1088
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
	j label956
label1088:
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	j label1086
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
	j label1088
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
	j label1088
label1086:
	mulw a3, a2, s1
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	j label1088
label1081:
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
label956:
	mulw a3, a2, s1
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	j label1023
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
	j label956
label1023:
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	j label1090
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
	j label1088
label76:
	addiw a2, a1, 16
	bge a2, s1, label79
	j label78
label79:
	addiw a2, a1, 16
	bge a2, s1, label81
	j label86
label81:
	addiw a2, a1, 16
	bge a2, s1, label84
	j label83
label84:
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
label1147:
	slliw a2, a1, 2
	add a2, s0, a2
	slliw a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	sw a3, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label73
	j label1147
label83:
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
	bge a2, s1, label84
	j label83
label86:
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
	bge a2, s1, label81
	j label86
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
