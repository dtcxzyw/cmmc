.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
buf:
	.zero	800
.text
merge_sort:
.p2align 2
	addi sp, sp, -96
	sd s0, 88(sp)
	mv s0, a0
	sd s5, 80(sp)
	sd s2, 72(sp)
	mv s2, a1
	sd s6, 64(sp)
	addiw a1, a0, 1
	sd s1, 56(sp)
	sd s9, 48(sp)
	sd s3, 40(sp)
	sd s8, 32(sp)
	sd s7, 24(sp)
	sd s4, 16(sp)
	sd s10, 8(sp)
	sd ra, 0(sp)
	ble s2, a1, label2
	addw a0, a0, s2
	addiw s8, s0, 4
	addiw s7, s0, 16
	addiw s4, s2, -4
	addiw s5, s2, -20
	srliw a2, a0, 31
	add a3, a0, a2
pcrel809:
	auipc a2, %pcrel_hi(buf)
	sraiw s6, a3, 1
	addi a0, a2, %pcrel_lo(pcrel809)
	addi s9, s6, -4
	addi s3, a0, 400
	mv s1, a0
	bge a1, s6, label4
	addw a1, s0, s6
	srliw a0, a1, 31
	add a2, a1, a0
	mv a0, s0
	sraiw s10, a2, 1
	mv a1, s10
	jal merge_sort
	mv a0, s10
	mv a1, s6
	jal merge_sort
	mv a2, s0
	mv a1, s10
	addiw a0, s6, -20
	mv a3, s0
	addi a4, s10, -4
.p2align 2
label73:
	slt a5, a3, s10
	slt t1, a1, s6
	and t0, a5, t1
	bne t0, zero, label77
	bgt s10, a3, label99
	j label81
.p2align 2
label77:
	sh2add a5, a3, s1
	sh2add t2, a1, s1
	lw t0, 0(a5)
	addiw a5, a2, 1
	lw t1, 0(t2)
	blt t0, t1, label78
	sh2add a2, a2, s3
	addiw a1, a1, 1
	sw t1, 0(a2)
	mv a2, a5
	j label73
label78:
	sh2add a2, a2, s3
	addiw a3, a3, 1
	sw t0, 0(a2)
	mv a2, a5
	j label73
label99:
	addiw a5, a3, 4
	bgt s10, a5, label103
	j label100
label4:
	addiw a0, s6, 1
	ble s2, a0, label130
	addw a0, s2, s6
	srliw a2, a0, 31
	add a1, a0, a2
	mv a0, s6
	sraiw s10, a1, 1
	mv a1, s10
	jal merge_sort
	mv a0, s10
	mv a1, s2
	jal merge_sort
	mv a2, s6
	mv a0, s10
	mv a1, s6
	addi a3, s10, -4
	j label39
label92:
	sh2add a3, a1, s3
	sh2add a2, a1, s1
	lw a0, 0(a3)
	addiw a1, a1, 1
	sw a0, 0(a2)
	bgt s6, a1, label92
	j label4
label95:
	sh2add a2, a1, s3
	sh2add a3, a1, s1
	lw a4, 0(a2)
	addiw a1, a1, 16
	sw a4, 0(a3)
	lw a4, 4(a2)
	sw a4, 4(a3)
	lw a5, 8(a2)
	sw a5, 8(a3)
	lw a4, 12(a2)
	sw a4, 12(a3)
	lw a5, 16(a2)
	sw a5, 16(a3)
	lw a4, 20(a2)
	sw a4, 20(a3)
	lw a5, 24(a2)
	sw a5, 24(a3)
	lw a4, 28(a2)
	sw a4, 28(a3)
	lw t0, 32(a2)
	sw t0, 32(a3)
	lw a5, 36(a2)
	sw a5, 36(a3)
	lw a4, 40(a2)
	sw a4, 40(a3)
	lw a5, 44(a2)
	sw a5, 44(a3)
	lw a4, 48(a2)
	sw a4, 48(a3)
	lw a5, 52(a2)
	sw a5, 52(a3)
	lw a4, 56(a2)
	sw a4, 56(a3)
	lw a2, 60(a2)
	sw a2, 60(a3)
	bgt a0, a1, label95
	mv a0, a1
label97:
	sh2add a2, a0, s3
	sh2add a1, a0, s1
	lw a3, 0(a2)
	addiw a0, a0, 4
	sw a3, 0(a1)
	lw a4, 4(a2)
	sw a4, 4(a1)
	lw a3, 8(a2)
	sw a3, 8(a1)
	lw a2, 12(a2)
	sw a2, 12(a1)
	bgt s9, a0, label97
	mv a1, a0
	j label92
label130:
	mv a2, s0
	mv a0, s6
	mv a1, s0
	slt a3, s0, s6
	slt a5, s6, s2
	and a4, a3, a5
	bne a4, zero, label9
	bgt s6, s0, label31
	j label13
.p2align 2
label9:
	sh2add a3, a1, s1
	sh2add t0, a0, s1
	lw a4, 0(a3)
	addiw a3, a2, 1
	lw a5, 0(t0)
	blt a4, a5, label10
	sh2add a2, a2, s3
	addiw a0, a0, 1
	sw a5, 0(a2)
	mv a2, a3
	slt a3, a1, s6
	slt a5, a0, s2
	and a4, a3, a5
	bne a4, zero, label9
	bgt s6, a1, label31
	j label13
.p2align 2
label10:
	sh2add a2, a2, s3
	addiw a1, a1, 1
	sw a4, 0(a2)
	mv a2, a3
	slt a3, a1, s6
	slt a5, a0, s2
	and a4, a3, a5
	bne a4, zero, label9
	bgt s6, a1, label31
	j label13
label63:
	sh2add a3, a0, s3
	sh2add a2, a0, s1
	lw a1, 0(a3)
	addiw a0, a0, 1
	sw a1, 0(a2)
	bgt s2, a0, label63
	j label130
label31:
	addiw a3, a1, 4
	bgt s6, a3, label32
	j label35
.p2align 2
label39:
	slt a4, a2, s10
	slt a5, a0, s2
	and t0, a4, a5
	bne t0, zero, label43
	bgt s10, a2, label47
	j label54
.p2align 2
label43:
	sh2add a4, a2, s1
	sh2add t1, a0, s1
	lw a5, 0(a4)
	addiw a4, a1, 1
	lw t0, 0(t1)
	blt a5, t0, label44
	sh2add a1, a1, s3
	addiw a0, a0, 1
	sw t0, 0(a1)
	mv a1, a4
	j label39
label47:
	addiw a4, a2, 4
	bgt s10, a4, label48
	j label51
label44:
	sh2add a1, a1, s3
	addiw a2, a2, 1
	sw a5, 0(a1)
	mv a1, a4
	j label39
label13:
	bgt s2, a0, label24
	j label15
label32:
	sh2add a3, a1, s1
	sh2add a4, a2, s3
	addiw a1, a1, 4
	lw a5, 0(a3)
	addiw a2, a2, 4
	sw a5, 0(a4)
	lw a5, 4(a3)
	sw a5, 4(a4)
	lw t0, 8(a3)
	sw t0, 8(a4)
	lw a3, 12(a3)
	sw a3, 12(a4)
	bgt s9, a1, label32
label35:
	sh2add a5, a1, s1
	sh2add a4, a2, s3
	addiw a1, a1, 1
	lw a3, 0(a5)
	addiw a2, a2, 1
	sw a3, 0(a4)
	bgt s6, a1, label35
	j label13
label15:
	blt s0, s2, label16
	j label2
label24:
	addiw a1, a0, 4
	bgt s2, a1, label25
label28:
	sh2add a3, a0, s1
	sh2add a4, a2, s3
	addiw a0, a0, 1
	lw a1, 0(a3)
	addiw a2, a2, 1
	sw a1, 0(a4)
	bgt s2, a0, label28
	j label15
label2:
	ld ra, 0(sp)
	ld s10, 8(sp)
	ld s4, 16(sp)
	ld s7, 24(sp)
	ld s8, 32(sp)
	ld s3, 40(sp)
	ld s9, 48(sp)
	ld s1, 56(sp)
	ld s6, 64(sp)
	ld s2, 72(sp)
	ld s5, 80(sp)
	ld s0, 88(sp)
	addi sp, sp, 96
	ret
label17:
	blt s7, s4, label18
label20:
	sh2add a0, s0, s3
	sh2add a1, s0, s1
	lw a2, 0(a0)
	addiw s0, s0, 4
	sw a2, 0(a1)
	lw a2, 4(a0)
	sw a2, 4(a1)
	lw a3, 8(a0)
	sw a3, 8(a1)
	lw a0, 12(a0)
	sw a0, 12(a1)
	bgt s4, s0, label20
label22:
	sh2add a2, s0, s3
	sh2add a1, s0, s1
	lw a0, 0(a2)
	addiw s0, s0, 1
	sw a0, 0(a1)
	bgt s2, s0, label22
	j label2
label25:
	sh2add a1, a0, s1
	sh2add a3, a2, s3
	addiw a0, a0, 4
	lw a4, 0(a1)
	addiw a2, a2, 4
	sw a4, 0(a3)
	lw a4, 4(a1)
	sw a4, 4(a3)
	lw a5, 8(a1)
	sw a5, 8(a3)
	lw a1, 12(a1)
	sw a1, 12(a3)
	bgt s4, a0, label25
	j label28
label48:
	sh2add a4, a2, s1
	sh2add a5, a1, s3
	addiw a2, a2, 4
	lw t0, 0(a4)
	addiw a1, a1, 4
	sw t0, 0(a5)
	lw t1, 4(a4)
	sw t1, 4(a5)
	lw t0, 8(a4)
	sw t0, 8(a5)
	lw a4, 12(a4)
	sw a4, 12(a5)
	bgt a3, a2, label48
label51:
	sh2add a5, a2, s1
	sh2add a4, a1, s3
	addiw a2, a2, 1
	lw a3, 0(a5)
	addiw a1, a1, 1
	sw a3, 0(a4)
	bgt s10, a2, label51
label54:
	bgt s2, a0, label65
label56:
	bgt s2, s6, label57
	j label130
label65:
	addiw a2, a0, 4
	bgt s2, a2, label69
label66:
	sh2add a4, a0, s1
	sh2add a3, a1, s3
	addiw a0, a0, 1
	lw a2, 0(a4)
	addiw a1, a1, 1
	sw a2, 0(a3)
	bgt s2, a0, label66
	j label56
label57:
	addiw a1, s6, 4
	bgt s2, a1, label58
	mv a0, s6
	j label63
label81:
	bgt s6, a1, label83
	j label90
label100:
	sh2add a5, a3, s1
	sh2add t0, a2, s3
	addiw a3, a3, 1
	lw a4, 0(a5)
	addiw a2, a2, 1
	sw a4, 0(t0)
	bgt s10, a3, label100
	j label81
label103:
	sh2add a5, a3, s1
	sh2add t0, a2, s3
	addiw a3, a3, 4
	lw t1, 0(a5)
	addiw a2, a2, 4
	sw t1, 0(t0)
	lw t2, 4(a5)
	sw t2, 4(t0)
	lw t1, 8(a5)
	sw t1, 8(t0)
	lw a5, 12(a5)
	sw a5, 12(t0)
	bgt a4, a3, label103
	j label100
label83:
	addiw a3, a1, 4
	bgt s6, a3, label84
label87:
	sh2add a4, a1, s1
	sh2add a5, a2, s3
	addiw a1, a1, 1
	lw a3, 0(a4)
	addiw a2, a2, 1
	sw a3, 0(a5)
	bgt s6, a1, label87
label90:
	blt s0, s6, label91
	j label4
label18:
	sh2add a0, s0, s3
	sh2add a1, s0, s1
	lw a2, 0(a0)
	addiw s0, s0, 16
	sw a2, 0(a1)
	lw a3, 4(a0)
	sw a3, 4(a1)
	lw a2, 8(a0)
	sw a2, 8(a1)
	lw a3, 12(a0)
	sw a3, 12(a1)
	lw a2, 16(a0)
	sw a2, 16(a1)
	lw a3, 20(a0)
	sw a3, 20(a1)
	lw a2, 24(a0)
	sw a2, 24(a1)
	lw a3, 28(a0)
	sw a3, 28(a1)
	lw a2, 32(a0)
	sw a2, 32(a1)
	lw a3, 36(a0)
	sw a3, 36(a1)
	lw a2, 40(a0)
	sw a2, 40(a1)
	lw a3, 44(a0)
	sw a3, 44(a1)
	lw a2, 48(a0)
	sw a2, 48(a1)
	lw a3, 52(a0)
	sw a3, 52(a1)
	lw a2, 56(a0)
	sw a2, 56(a1)
	lw a0, 60(a0)
	sw a0, 60(a1)
	bgt s5, s0, label18
	j label20
label58:
	addiw a0, s6, 16
	bgt s4, a0, label409
	mv a1, s6
	j label59
label409:
	mv a0, s6
	j label61
label59:
	sh2add a2, a1, s3
	sh2add a0, a1, s1
	lw a3, 0(a2)
	addiw a1, a1, 4
	sw a3, 0(a0)
	lw a4, 4(a2)
	sw a4, 4(a0)
	lw a3, 8(a2)
	sw a3, 8(a0)
	lw a2, 12(a2)
	sw a2, 12(a0)
	bgt s4, a1, label59
	mv a0, a1
	j label63
label61:
	sh2add a2, a0, s3
	sh2add a1, a0, s1
	lw a3, 0(a2)
	sw a3, 0(a1)
	lw a4, 4(a2)
	sw a4, 4(a1)
	lw a3, 8(a2)
	sw a3, 8(a1)
	lw a4, 12(a2)
	sw a4, 12(a1)
	lw a3, 16(a2)
	sw a3, 16(a1)
	lw a4, 20(a2)
	sw a4, 20(a1)
	lw a3, 24(a2)
	sw a3, 24(a1)
	lw a4, 28(a2)
	sw a4, 28(a1)
	lw a3, 32(a2)
	sw a3, 32(a1)
	lw a4, 36(a2)
	sw a4, 36(a1)
	lw a3, 40(a2)
	sw a3, 40(a1)
	lw a4, 44(a2)
	sw a4, 44(a1)
	lw a3, 48(a2)
	sw a3, 48(a1)
	lw a4, 52(a2)
	sw a4, 52(a1)
	lw a3, 56(a2)
	sw a3, 56(a1)
	lw a2, 60(a2)
	sw a2, 60(a1)
	addiw a1, a0, 16
	ble s5, a1, label59
	mv a0, a1
	j label61
label16:
	bgt s2, s8, label17
	j label22
label69:
	sh2add a2, a0, s1
	sh2add a3, a1, s3
	addiw a0, a0, 4
	lw a4, 0(a2)
	addiw a1, a1, 4
	sw a4, 0(a3)
	lw a5, 4(a2)
	sw a5, 4(a3)
	lw a4, 8(a2)
	sw a4, 8(a3)
	lw a2, 12(a2)
	sw a2, 12(a3)
	bgt s4, a0, label69
	j label66
label84:
	sh2add a3, a1, s1
	sh2add a4, a2, s3
	addiw a1, a1, 4
	lw a5, 0(a3)
	addiw a2, a2, 4
	sw a5, 0(a4)
	lw t0, 4(a3)
	sw t0, 4(a4)
	lw a5, 8(a3)
	sw a5, 8(a4)
	lw a3, 12(a3)
	sw a3, 12(a4)
	bgt s9, a1, label84
	j label87
label91:
	bgt s6, s8, label94
	mv a1, s0
	j label92
label94:
	bgt s9, s7, label620
	mv a0, s0
	j label97
label620:
	mv a1, s0
	j label95
.globl main
main:
.p2align 2
	addi sp, sp, -16
pcrel817:
	auipc a1, %pcrel_hi(buf)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel817)
	sd ra, 0(sp)
	mv a0, s0
	jal getarray
	mv t3, a0
	mv a1, a0
	mv a0, zero
	jal merge_sort
	mv a0, t3
	mv a1, s0
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	addi sp, sp, 16
	ret
