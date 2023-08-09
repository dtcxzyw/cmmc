.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
buf:
	.zero	800
.text
.p2align 2
merge_sort:
	addi sp, sp, -104
	addiw a2, a0, 1
	sd ra, 0(sp)
	sd s2, 8(sp)
	mv s2, a0
	sd s0, 16(sp)
	mv s0, a1
	sd s5, 24(sp)
	sd s9, 32(sp)
	sd s8, 40(sp)
	sd s1, 48(sp)
	sd s6, 56(sp)
	sd s3, 64(sp)
	sd s7, 72(sp)
	sd s4, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	ble a1, a2, label2
	addw a0, a0, a1
	addiw s6, s2, 4
	addiw s7, s2, 20
	addiw s4, a1, -16
	srliw a1, a0, 31
	add a3, a0, a1
pcrel1031:
	auipc a0, %pcrel_hi(buf)
	sraiw s5, a3, 1
	addi s1, a0, %pcrel_lo(pcrel1031)
	addi s8, s5, -4
	slt s9, s2, s5
	addi s3, s1, 400
	bge a2, s5, label4
	addw a1, s2, s5
	mv a0, s2
	srliw a3, a1, 31
	add a2, a1, a3
	sraiw s10, a2, 1
	mv a1, s10
	jal merge_sort
	mv a0, s10
	mv a1, s5
	jal merge_sort
	addiw a0, s5, -16
	addi a1, s10, -4
	slt t0, s2, s10
	slt a3, s10, s5
	and a2, a3, t0
	beq a2, zero, label681
	sh2add a2, s2, s3
	mv a5, s2
	mv a4, s10
	mv a3, s2
	sh2add t2, s2, s1
	sh2add t3, s10, s1
	lw t0, 0(t2)
	lw t1, 0(t3)
	bge t0, t1, label199
.p2align 2
label204:
	sw t0, 0(a2)
	addiw a5, a5, 1
	slt t2, a4, s5
	addiw a3, a3, 1
	slt t0, a5, s10
	and t1, t0, t2
	beq t1, zero, label139
.p2align 2
label203:
	addi a2, a2, 4
	sh2add t2, a5, s1
	sh2add t3, a4, s1
	lw t0, 0(t2)
	lw t1, 0(t3)
	blt t0, t1, label204
	sw t1, 0(a2)
	addiw a4, a4, 1
	slt t0, a5, s10
	addiw a3, a3, 1
	slt t2, a4, s5
	and t1, t0, t2
	bne t1, zero, label203
label139:
	beq t0, zero, label158
	addiw a2, a5, 4
	ble s10, a2, label689
	sh2add a2, a5, s1
label146:
	lw t1, 0(a2)
	sh2add t0, a3, s3
	addiw a5, a5, 4
	addiw a3, a3, 4
	sw t1, 0(t0)
	lw t2, 4(a2)
	sw t2, 4(t0)
	lw t1, 8(a2)
	sw t1, 8(t0)
	lw t2, 12(a2)
	sw t2, 12(t0)
	ble a1, a5, label689
	addi a2, a2, 16
	j label146
label110:
	addi a0, a0, 4
label107:
	lw a1, 0(a0)
	sh2add a2, s6, s1
	addiw s6, s6, 1
	sw a1, 0(a2)
	bgt s0, s6, label110
label2:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s9, 32(sp)
	ld s8, 40(sp)
	ld s1, 48(sp)
	ld s6, 56(sp)
	ld s3, 64(sp)
	ld s7, 72(sp)
	ld s4, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 104
	ret
label689:
	sh2add a1, a5, s1
label153:
	lw a2, 0(a1)
	sh2add t0, a3, s3
	addiw a5, a5, 1
	addiw a3, a3, 1
	sw a2, 0(t0)
	ble s10, a5, label158
	addi a1, a1, 4
	j label153
label158:
	ble s5, a4, label175
	addiw a1, a4, 4
	ble s5, a1, label733
	sh2add a2, a3, s3
label162:
	sh2add t0, a4, s1
	addiw a3, a3, 4
	lw t1, 0(t0)
	sw t1, 0(a2)
	lw a5, 4(t0)
	sw a5, 4(a2)
	addiw a5, a1, 4
	lw a4, 8(t0)
	sw a4, 8(a2)
	lw t1, 12(t0)
	sw t1, 12(a2)
	ble s5, a5, label167
	addi a2, a2, 16
	mv a4, a1
	mv a1, a5
	j label162
label167:
	sh2add a2, a1, s1
label170:
	lw a4, 0(a2)
	sh2add a5, a3, s3
	addiw a1, a1, 1
	addiw a3, a3, 1
	sw a4, 0(a5)
	ble s5, a1, label175
	addi a2, a2, 4
	j label170
label181:
	addi a1, a1, 4
label178:
	lw a2, 0(a1)
	sh2add a3, a0, s1
	addiw a0, a0, 1
	sw a2, 0(a3)
	bgt s5, a0, label181
label4:
	addiw a0, s5, 1
	slt s10, s5, s0
	bgt s0, a0, label5
label71:
	and a0, s9, s10
	beq a0, zero, label457
	sh2add a0, s2, s3
	mv a3, s2
	mv a2, s5
	mv a1, s2
	sh2add t1, s2, s1
	sh2add t0, s5, s1
	lw a4, 0(t1)
	lw a5, 0(t0)
	blt a4, a5, label78
	sw a5, 0(a0)
	addiw a2, s5, 1
	slt a4, s2, s5
	addiw a1, s2, 1
	slt t0, a2, s0
	and a5, a4, t0
	bne a5, zero, label82
	j label84
.p2align 2
label78:
	sw a4, 0(a0)
	addiw a3, a3, 1
	slt a4, a3, s5
	slt t0, a2, s0
	addiw a1, a1, 1
	and a5, a4, t0
	beq a5, zero, label84
.p2align 2
label82:
	addi a0, a0, 4
	sh2add t1, a3, s1
	sh2add t0, a2, s1
	lw a4, 0(t1)
	lw a5, 0(t0)
	blt a4, a5, label78
	sw a5, 0(a0)
	addiw a2, a2, 1
	slt a4, a3, s5
	addiw a1, a1, 1
	slt t0, a2, s0
	and a5, a4, t0
	bne a5, zero, label82
	j label84
label5:
	addw a1, s0, s5
	mv a0, s5
	srliw a2, a1, 31
	add a3, a1, a2
	sraiw s11, a3, 1
	mv a1, s11
	jal merge_sort
	mv a0, s11
	mv a1, s0
	jal merge_sort
	slt a2, s11, s0
	slt a0, s5, s11
	and a1, a0, a2
	beq a1, zero, label237
	sh2add a0, s5, s3
	mv a3, s5
	mv a2, s11
	mv a1, s5
	sh2add t1, s5, s1
	sh2add t0, s11, s1
	lw a4, 0(t1)
	lw a5, 0(t0)
	bge a4, a5, label249
.p2align 2
label12:
	sw a4, 0(a0)
	addiw a3, a3, 1
	slt a4, a3, s11
	slt t0, a2, s0
	addiw a1, a1, 1
	and a5, a4, t0
	beq a5, zero, label985
.p2align 2
label16:
	addi a0, a0, 4
	sh2add t1, a3, s1
	sh2add t0, a2, s1
	lw a4, 0(t1)
	lw a5, 0(t0)
	blt a4, a5, label12
	sw a5, 0(a0)
	addiw a2, a2, 1
	slt a4, a3, s11
	addiw a1, a1, 1
	slt t0, a2, s0
	and a5, a4, t0
	bne a5, zero, label16
	j label985
label84:
	beq a4, zero, label482
	addiw a0, a3, 4
	ble s5, a0, label487
	sh2add a0, a3, s1
	j label97
label94:
	addi a0, a0, 4
label90:
	lw a4, 0(a0)
	sh2add a5, a1, s3
	addiw a3, a3, 1
	addiw a1, a1, 1
	sw a4, 0(a5)
	bgt s5, a3, label94
label482:
	mv a3, a1
	ble s0, a2, label105
	addiw a0, a2, 4
	ble s0, a0, label635
	sh2add a1, a1, s3
	mv a4, a2
.p2align 2
label125:
	sh2add a5, a4, s1
	addiw a3, a3, 4
	lw t0, 0(a5)
	sw t0, 0(a1)
	lw a2, 4(a5)
	sw a2, 4(a1)
	addiw a2, a0, 4
	lw t0, 8(a5)
	sw t0, 8(a1)
	lw a4, 12(a5)
	sw a4, 12(a1)
	ble s0, a2, label130
	addi a1, a1, 16
	mv a4, a0
	mv a0, a2
	j label125
.p2align 2
label101:
	addi a0, a0, 16
.p2align 2
label97:
	lw a5, 0(a0)
	sh2add a4, a1, s3
	addiw a3, a3, 4
	addiw a1, a1, 4
	sw a5, 0(a4)
	lw t0, 4(a0)
	sw t0, 4(a4)
	lw t1, 8(a0)
	sw t1, 8(a4)
	lw a5, 12(a0)
	sw a5, 12(a4)
	bgt s8, a3, label101
label487:
	sh2add a0, a3, s1
	j label90
label130:
	sh2add a1, a0, s1
label132:
	lw a4, 0(a1)
	sh2add a2, a3, s3
	addiw a0, a0, 1
	addiw a3, a3, 1
	sw a4, 0(a2)
	ble s0, a0, label105
	addi a1, a1, 4
	j label132
label105:
	bge s2, s0, label2
	ble s0, s6, label534
	ble s0, s7, label119
	sh2add a0, s6, s3
.p2align 2
label114:
	sh2add a1, s2, s3
	sh2add a2, s2, s1
	lw a3, 0(a1)
	addiw s2, s6, 12
	sw a3, 0(a2)
	lw a4, 4(a1)
	sw a4, 4(a2)
	lw a3, 8(a1)
	sw a3, 8(a2)
	lw a4, 12(a1)
	sh2add a1, s6, s1
	sw a4, 12(a2)
	lw a3, 0(a0)
	sw a3, 0(a1)
	lw a4, 4(a0)
	sw a4, 4(a1)
	lw a2, 8(a0)
	sw a2, 8(a1)
	lw a4, 12(a0)
	sw a4, 12(a1)
	lw a3, 16(a0)
	sw a3, 16(a1)
	lw a2, 20(a0)
	sw a2, 20(a1)
	lw a4, 24(a0)
	sw a4, 24(a1)
	lw a3, 28(a0)
	sw a3, 28(a1)
	lw a2, 32(a0)
	sw a2, 32(a1)
	lw a3, 36(a0)
	sw a3, 36(a1)
	lw a2, 40(a0)
	sw a2, 40(a1)
	addiw a2, s6, 16
	lw a3, 44(a0)
	sw a3, 44(a1)
	ble s4, a2, label607
	addi a0, a0, 64
	mv s6, a2
	j label114
label607:
	mv s6, a2
label119:
	sh2add a1, s2, s3
	sh2add a2, s2, s1
	lw a0, 0(a1)
	sw a0, 0(a2)
	lw a3, 4(a1)
	sw a3, 4(a2)
	lw a0, 8(a1)
	sw a0, 8(a2)
	addiw a0, s6, 4
	lw a3, 12(a1)
	sw a3, 12(a2)
	ble s0, a0, label627
	mv s2, s6
	mv s6, a0
	j label119
label175:
	bge s2, s5, label4
	ble s5, s6, label177
	ble s5, s7, label791
	sh2add a1, s6, s3
	mv a3, s2
	mv a2, s6
	j label184
label188:
	addi a1, a1, 64
	mv a2, a4
label184:
	sh2add a4, a3, s3
	sh2add a5, a3, s1
	lw t0, 0(a4)
	sw t0, 0(a5)
	lw t1, 4(a4)
	sw t1, 4(a5)
	lw a3, 8(a4)
	sw a3, 8(a5)
	sh2add a3, a2, s1
	lw t1, 12(a4)
	sw t1, 12(a5)
	lw t0, 0(a1)
	sw t0, 0(a3)
	lw a4, 4(a1)
	sw a4, 4(a3)
	lw a5, 8(a1)
	sw a5, 8(a3)
	lw a4, 12(a1)
	sw a4, 12(a3)
	lw t0, 16(a1)
	sw t0, 16(a3)
	lw a5, 20(a1)
	sw a5, 20(a3)
	lw a4, 24(a1)
	sw a4, 24(a3)
	lw a5, 28(a1)
	sw a5, 28(a3)
	lw a4, 32(a1)
	sw a4, 32(a3)
	lw a5, 36(a1)
	sw a5, 36(a3)
	lw a4, 40(a1)
	sw a4, 40(a3)
	addiw a4, a2, 16
	lw a5, 44(a1)
	sw a5, 44(a3)
	addiw a3, a2, 12
	bgt a0, a4, label188
	mv a0, a4
	mv a1, a3
label189:
	sh2add a3, a1, s3
	sh2add a4, a1, s1
	lw a2, 0(a3)
	sw a2, 0(a4)
	lw a5, 4(a3)
	sw a5, 4(a4)
	lw a2, 8(a3)
	sw a2, 8(a4)
	addiw a2, a0, 4
	lw a1, 12(a3)
	sw a1, 12(a4)
	ble s5, a2, label869
	mv a1, a0
	mv a0, a2
	j label189
label985:
	mv a0, a4
	mv a4, a3
label18:
	beq a0, zero, label262
	addiw a0, a4, 4
	ble s11, a0, label417
	sh2add a3, a1, s3
	j label58
label63:
	addi a3, a3, 16
	mv a4, a0
	mv a0, a5
label58:
	sh2add t0, a4, s1
	addiw a1, a1, 4
	lw t1, 0(t0)
	sw t1, 0(a3)
	lw a5, 4(t0)
	sw a5, 4(a3)
	addiw a5, a0, 4
	lw a4, 8(t0)
	sw a4, 8(a3)
	lw t1, 12(t0)
	sw t1, 12(a3)
	bgt s11, a5, label63
	sh2add a3, a0, s1
	j label65
label69:
	addi a3, a3, 4
label65:
	lw a4, 0(a3)
	sh2add a5, a1, s3
	addiw a0, a0, 1
	addiw a1, a1, 1
	sw a4, 0(a5)
	bgt s11, a0, label69
label262:
	mv a3, a1
	ble s0, a2, label25
	addiw a0, a2, 4
	ble s0, a0, label376
	sh2add a1, a1, s3
	j label43
label48:
	addi a1, a1, 16
	mv a2, a0
	mv a0, a4
label43:
	sh2add a5, a2, s1
	addiw a3, a3, 4
	lw a4, 0(a5)
	sw a4, 0(a1)
	lw a2, 4(a5)
	sw a2, 4(a1)
	lw a4, 8(a5)
	sw a4, 8(a1)
	addiw a4, a0, 4
	lw a2, 12(a5)
	sw a2, 12(a1)
	bgt s0, a4, label48
	sh2add a1, a0, s1
	j label50
label54:
	addi a1, a1, 4
label50:
	lw a2, 0(a1)
	sh2add a4, a3, s3
	addiw a0, a0, 1
	addiw a3, a3, 1
	sw a2, 0(a4)
	bgt s0, a0, label54
label25:
	ble s0, s5, label71
	addiw a1, s5, 4
	ble s0, a1, label27
	addiw a0, s5, 20
	ble s0, a0, label290
	mv a2, s5
	j label37
label371:
	mv a1, a0
	mv a0, a4
label37:
	sh2add a3, a2, s3
	sh2add a4, a2, s1
	lw a5, 0(a3)
	sw a5, 0(a4)
	lw t0, 4(a3)
	sw t0, 4(a4)
	lw a2, 8(a3)
	sw a2, 8(a4)
	sh2add a2, a1, s3
	lw t0, 12(a3)
	sh2add a3, a1, s1
	sw t0, 12(a4)
	lw a5, 0(a2)
	sw a5, 0(a3)
	lw t0, 4(a2)
	sw t0, 4(a3)
	lw a4, 8(a2)
	sw a4, 8(a3)
	lw a5, 12(a2)
	sw a5, 12(a3)
	lw a4, 16(a2)
	sw a4, 16(a3)
	lw a5, 20(a2)
	sw a5, 20(a3)
	lw t0, 24(a2)
	sw t0, 24(a3)
	lw a4, 28(a2)
	sw a4, 28(a3)
	lw a5, 32(a2)
	sw a5, 32(a3)
	lw a4, 36(a2)
	sw a4, 36(a3)
	addiw a4, a0, 16
	lw a5, 40(a2)
	sw a5, 40(a3)
	lw t0, 44(a2)
	addiw a2, a1, 12
	sw t0, 44(a3)
	bgt s0, a4, label371
label33:
	sh2add a3, a2, s3
	sh2add a4, a2, s1
	lw a1, 0(a3)
	sw a1, 0(a4)
	lw a5, 4(a3)
	sw a5, 4(a4)
	lw a1, 8(a3)
	sw a1, 8(a4)
	addiw a1, a0, 4
	lw a2, 12(a3)
	sw a2, 12(a4)
	ble s0, a1, label309
	mv a2, a0
	mv a0, a1
	j label33
label199:
	sw t1, 0(a2)
	addiw a4, a4, 1
	slt t0, a5, s10
	slt t2, a4, s5
	addiw a3, a3, 1
	and t1, t0, t2
	bne t1, zero, label203
	j label139
label177:
	sh2add a1, s2, s3
	mv a0, s2
	j label178
label27:
	sh2add a1, s5, s3
	mv a0, s5
	j label28
label31:
	addi a1, a1, 4
label28:
	lw a2, 0(a1)
	sh2add a3, a0, s1
	addiw a0, a0, 1
	sw a2, 0(a3)
	bgt s0, a0, label31
	j label71
label290:
	mv a0, a1
	mv a2, s5
	j label33
label309:
	sh2add a1, a0, s3
	j label28
label376:
	sh2add a1, a2, s1
	mv a0, a2
	j label50
label417:
	sh2add a3, a4, s1
	mv a0, a4
	j label65
label869:
	sh2add a1, a0, s3
	j label178
label457:
	mv a4, s9
	mv a3, s2
	mv a2, s5
	mv a1, s2
	j label84
label534:
	sh2add a0, s2, s3
	mv s6, s2
	j label107
label249:
	sw a5, 0(a0)
	addiw a2, a2, 1
	slt a4, a3, s11
	addiw a1, a1, 1
	slt t0, a2, s0
	and a5, a4, t0
	bne a5, zero, label16
	j label985
label635:
	sh2add a1, a2, s1
	mv a0, a2
	j label132
label733:
	sh2add a2, a4, s1
	mv a1, a4
	j label170
label237:
	mv a4, s5
	mv a2, s11
	mv a1, s5
	j label18
label627:
	sh2add a0, s6, s3
	j label107
label681:
	mv a5, s2
	mv a4, s10
	mv a3, s2
	j label139
label791:
	mv a0, s6
	mv a1, s2
	j label189
.p2align 2
.globl main
main:
	addi sp, sp, -16
pcrel1039:
	auipc a1, %pcrel_hi(buf)
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel1039)
	mv a0, s0
	jal getarray
	mv t4, a0
	mv a1, a0
	mv a0, zero
	jal merge_sort
	mv a0, t4
	mv a1, s0
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	addi sp, sp, 16
	ret
