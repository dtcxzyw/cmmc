.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
buf:
	.zero	800
.text
merge_sort:
.p2align 2
	addi sp, sp, -80
	sd ra, 0(sp)
	sd s3, 8(sp)
	mv s3, a0
	sd s1, 16(sp)
	mv s1, a1
	sd s6, 24(sp)
	addiw a1, a0, 1
	sd s7, 32(sp)
	sd s0, 40(sp)
	sd s5, 48(sp)
	sd s2, 56(sp)
	sd s4, 64(sp)
	sd s8, 72(sp)
	ble s1, a1, label96
	addw a0, a0, s1
	addiw s5, s3, 8
	addiw s4, s1, -8
	srliw a2, a0, 31
	add a3, a0, a2
pcrel740:
	auipc a2, %pcrel_hi(buf)
	sraiw s6, a3, 1
	addi a0, a2, %pcrel_lo(pcrel740)
	addi s7, s6, -8
	addi s2, a0, 400
	mv s0, a0
	bge a1, s6, label3
	addw a0, s3, s6
	srliw a2, a0, 31
	add a1, a0, a2
	mv a0, s3
	sraiw s8, a1, 1
	mv a1, s8
	jal merge_sort
	mv a0, s8
	mv a1, s6
	jal merge_sort
	mv a1, s3
	mv a0, s8
	mv a3, s3
	addi a2, s8, -8
	slt a4, s3, s8
	slt a5, s8, s6
	and t0, a4, a5
	bne t0, zero, label70
	j label73
.p2align 2
label8:
	sh2add a3, a1, s0
	sh2add t0, a0, s0
	lw a4, 0(a3)
	addiw a3, a2, 1
	lw a5, 0(t0)
	blt a4, a5, label9
	sh2add a2, a2, s2
	addiw a0, a0, 1
	sw a5, 0(a2)
	mv a2, a3
	slt a3, a1, s6
	slt a5, a0, s1
	and a4, a3, a5
	bne a4, zero, label8
	j label11
.p2align 2
label9:
	sh2add a2, a2, s2
	addiw a1, a1, 1
	sw a4, 0(a2)
	mv a2, a3
	slt a3, a1, s6
	slt a5, a0, s1
	and a4, a3, a5
	bne a4, zero, label8
label11:
	ble s6, a1, label19
	addiw a3, a1, 8
	bgt s6, a3, label16
label13:
	sh2add a5, a1, s0
	sh2add a4, a2, s2
	addiw a1, a1, 1
	lw a3, 0(a5)
	addiw a2, a2, 1
	sw a3, 0(a4)
	bgt s6, a1, label13
	j label19
label16:
	sh2add a3, a1, s0
	sh2add a4, a2, s2
	addiw a1, a1, 8
	lw a5, 0(a3)
	addiw a2, a2, 8
	sw a5, 0(a4)
	lw a5, 4(a3)
	sw a5, 4(a4)
	lw t0, 8(a3)
	sw t0, 8(a4)
	lw a5, 12(a3)
	sw a5, 12(a4)
	lw t0, 16(a3)
	sw t0, 16(a4)
	lw a5, 20(a3)
	sw a5, 20(a4)
	lw t0, 24(a3)
	sw t0, 24(a4)
	lw a3, 28(a3)
	sw a3, 28(a4)
	bgt s7, a1, label16
	j label13
label19:
	ble s1, a0, label28
	addiw a3, a0, 8
	bgt s1, a3, label201
label200:
	mv a1, a0
	mv a0, a2
	j label25
label201:
	mv a1, a2
	sh2add a2, a0, s0
	sh2add a3, a1, s2
	addiw a0, a0, 8
	lw a4, 0(a2)
	sw a4, 0(a3)
	lw a4, 4(a2)
	sw a4, 4(a3)
	lw t0, 8(a2)
	sw t0, 8(a3)
	lw a5, 12(a2)
	sw a5, 12(a3)
	lw a4, 16(a2)
	sw a4, 16(a3)
	lw a5, 20(a2)
	sw a5, 20(a3)
	lw a4, 24(a2)
	sw a4, 24(a3)
	lw a2, 28(a2)
	sw a2, 28(a3)
	addiw a2, a1, 8
	bgt s4, a0, label201
	j label200
label25:
	sh2add a4, a1, s0
	sh2add a3, a0, s2
	addiw a1, a1, 1
	lw a2, 0(a4)
	addiw a0, a0, 1
	sw a2, 0(a3)
	bgt s1, a1, label25
label28:
	bge s3, s1, label96
	ble s1, s5, label32
label30:
	sh2add a0, s3, s2
	sh2add a1, s3, s0
	lw a2, 0(a0)
	addiw s3, s3, 8
	sw a2, 0(a1)
	lw a2, 4(a0)
	sw a2, 4(a1)
	lw a3, 8(a0)
	sw a3, 8(a1)
	lw a2, 12(a0)
	sw a2, 12(a1)
	lw a3, 16(a0)
	sw a3, 16(a1)
	lw a2, 20(a0)
	sw a2, 20(a1)
	lw a3, 24(a0)
	sw a3, 24(a1)
	lw a0, 28(a0)
	sw a0, 28(a1)
	bgt s4, s3, label30
label32:
	sh2add a1, s3, s2
	sh2add a2, s3, s0
	lw a0, 0(a1)
	addiw s3, s3, 1
	sw a0, 0(a2)
	bgt s1, s3, label32
label96:
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s1, 16(sp)
	ld s6, 24(sp)
	ld s7, 32(sp)
	ld s0, 40(sp)
	ld s5, 48(sp)
	ld s2, 56(sp)
	ld s4, 64(sp)
	ld s8, 72(sp)
	addi sp, sp, 80
	ret
.p2align 2
label70:
	sh2add a4, a1, s0
	sh2add t1, a0, s0
	lw a5, 0(a4)
	addiw a4, a3, 1
	lw t0, 0(t1)
	blt a5, t0, label72
	sh2add a3, a3, s2
	addiw a0, a0, 1
	sw t0, 0(a3)
	mv a3, a4
	slt a4, a1, s8
	slt a5, a0, s6
	and t0, a4, a5
	bne t0, zero, label70
	j label73
.p2align 2
label72:
	sh2add a3, a3, s2
	addiw a1, a1, 1
	sw a5, 0(a3)
	mv a3, a4
	slt a4, a1, s8
	slt a5, a0, s6
	and t0, a4, a5
	bne t0, zero, label70
label73:
	bgt s8, a1, label89
label499:
	mv a1, a3
	bgt s6, a0, label76
	j label83
label89:
	addiw a4, a1, 8
	ble s8, a4, label93
label90:
	sh2add a4, a1, s0
	sh2add a5, a3, s2
	addiw a1, a1, 8
	lw t0, 0(a4)
	addiw a3, a3, 8
	sw t0, 0(a5)
	lw t0, 4(a4)
	sw t0, 4(a5)
	lw t1, 8(a4)
	sw t1, 8(a5)
	lw t0, 12(a4)
	sw t0, 12(a5)
	lw t1, 16(a4)
	sw t1, 16(a5)
	lw t2, 20(a4)
	sw t2, 20(a5)
	lw t0, 24(a4)
	sw t0, 24(a5)
	lw a4, 28(a4)
	sw a4, 28(a5)
	bgt a2, a1, label90
label93:
	sh2add a4, a1, s0
	sh2add a5, a3, s2
	addiw a1, a1, 1
	lw a2, 0(a4)
	addiw a3, a3, 1
	sw a2, 0(a5)
	bgt s8, a1, label93
	j label499
label3:
	addiw a0, s6, 1
	ble s1, a0, label119
	addw a0, s1, s6
	srliw a1, a0, 31
	add a2, a0, a1
	mv a0, s6
	sraiw s8, a2, 1
	mv a1, s8
	jal merge_sort
	mv a0, s8
	mv a1, s1
	jal merge_sort
	mv a1, s6
	mv a0, s8
	mv a3, s6
	addi a2, s8, -8
	slt a4, s6, s8
	slt a5, s8, s1
	and t0, a4, a5
	bne t0, zero, label39
	j label42
label76:
	addiw a2, a0, 8
	ble s6, a2, label80
label77:
	sh2add a2, a0, s0
	sh2add a3, a1, s2
	addiw a0, a0, 8
	lw a4, 0(a2)
	addiw a1, a1, 8
	sw a4, 0(a3)
	lw a4, 4(a2)
	sw a4, 4(a3)
	lw t0, 8(a2)
	sw t0, 8(a3)
	lw a5, 12(a2)
	sw a5, 12(a3)
	lw a4, 16(a2)
	sw a4, 16(a3)
	lw a5, 20(a2)
	sw a5, 20(a3)
	lw a4, 24(a2)
	sw a4, 24(a3)
	lw a2, 28(a2)
	sw a2, 28(a3)
	bgt s7, a0, label77
label80:
	sh2add a3, a0, s0
	sh2add a4, a1, s2
	addiw a0, a0, 1
	lw a2, 0(a3)
	addiw a1, a1, 1
	sw a2, 0(a4)
	bgt s6, a0, label80
label83:
	bge s3, s6, label3
	ble s6, s5, label558
	mv a0, s3
	j label87
label85:
	sh2add a2, a0, s2
	sh2add a3, a0, s0
	lw a1, 0(a2)
	addiw a0, a0, 1
	sw a1, 0(a3)
	bgt s6, a0, label85
	j label3
label87:
	sh2add a1, a0, s2
	sh2add a2, a0, s0
	lw a3, 0(a1)
	addiw a0, a0, 8
	sw a3, 0(a2)
	lw a3, 4(a1)
	sw a3, 4(a2)
	lw a4, 8(a1)
	sw a4, 8(a2)
	lw a3, 12(a1)
	sw a3, 12(a2)
	lw a4, 16(a1)
	sw a4, 16(a2)
	lw a5, 20(a1)
	sw a5, 20(a2)
	lw a3, 24(a1)
	sw a3, 24(a2)
	lw a1, 28(a1)
	sw a1, 28(a2)
	bgt s7, a0, label87
	j label85
.p2align 2
label39:
	sh2add a4, a1, s0
	sh2add t1, a0, s0
	lw a5, 0(a4)
	addiw a4, a3, 1
	lw t0, 0(t1)
	blt a5, t0, label40
	sh2add a3, a3, s2
	addiw a0, a0, 1
	sw t0, 0(a3)
	mv a3, a4
	slt a4, a1, s8
	slt a5, a0, s1
	and t0, a4, a5
	bne t0, zero, label39
	j label42
.p2align 2
label40:
	sh2add a3, a3, s2
	addiw a1, a1, 1
	sw a5, 0(a3)
	mv a3, a4
	slt a4, a1, s8
	slt a5, a0, s1
	and t0, a4, a5
	bne t0, zero, label39
label42:
	bgt s8, a1, label58
label321:
	mv a1, a3
	bgt s1, a0, label51
	j label45
label58:
	addiw a4, a1, 8
	bgt s8, a4, label62
label59:
	sh2add a4, a1, s0
	sh2add a5, a3, s2
	addiw a1, a1, 1
	lw a2, 0(a4)
	addiw a3, a3, 1
	sw a2, 0(a5)
	bgt s8, a1, label59
	j label321
label62:
	sh2add a4, a1, s0
	sh2add a5, a3, s2
	addiw a1, a1, 8
	lw t0, 0(a4)
	addiw a3, a3, 8
	sw t0, 0(a5)
	lw t0, 4(a4)
	sw t0, 4(a5)
	lw t1, 8(a4)
	sw t1, 8(a5)
	lw t0, 12(a4)
	sw t0, 12(a5)
	lw t1, 16(a4)
	sw t1, 16(a5)
	lw t0, 20(a4)
	sw t0, 20(a5)
	lw t1, 24(a4)
	sw t1, 24(a5)
	lw a4, 28(a4)
	sw a4, 28(a5)
	bgt a2, a1, label62
	j label59
label119:
	mv a2, s3
	mv a0, s6
	mv a1, s3
	slt a3, s3, s6
	slt a5, s6, s1
	and a4, a3, a5
	bne a4, zero, label8
	j label11
label46:
	addiw a1, s6, 8
	ble s1, a1, label333
	mv a0, s6
	j label49
label47:
	sh2add a2, a0, s2
	sh2add a3, a0, s0
	lw a1, 0(a2)
	addiw a0, a0, 1
	sw a1, 0(a3)
	bgt s1, a0, label47
	j label119
label49:
	sh2add a1, a0, s2
	sh2add a2, a0, s0
	lw a3, 0(a1)
	addiw a0, a0, 8
	sw a3, 0(a2)
	lw a3, 4(a1)
	sw a3, 4(a2)
	lw a5, 8(a1)
	sw a5, 8(a2)
	lw a4, 12(a1)
	sw a4, 12(a2)
	lw a3, 16(a1)
	sw a3, 16(a2)
	lw a4, 20(a1)
	sw a4, 20(a2)
	lw a3, 24(a1)
	sw a3, 24(a2)
	lw a1, 28(a1)
	sw a1, 28(a2)
	bgt s4, a0, label49
	j label47
label45:
	bgt s1, s6, label46
	j label119
label51:
	addiw a2, a0, 8
	bgt s1, a2, label55
label52:
	sh2add a3, a0, s0
	sh2add a4, a1, s2
	addiw a0, a0, 1
	lw a2, 0(a3)
	addiw a1, a1, 1
	sw a2, 0(a4)
	bgt s1, a0, label52
	j label45
label55:
	sh2add a2, a0, s0
	sh2add a3, a1, s2
	addiw a0, a0, 8
	lw a4, 0(a2)
	addiw a1, a1, 8
	sw a4, 0(a3)
	lw a4, 4(a2)
	sw a4, 4(a3)
	lw t0, 8(a2)
	sw t0, 8(a3)
	lw a5, 12(a2)
	sw a5, 12(a3)
	lw a4, 16(a2)
	sw a4, 16(a3)
	lw a5, 20(a2)
	sw a5, 20(a3)
	lw a4, 24(a2)
	sw a4, 24(a3)
	lw a2, 28(a2)
	sw a2, 28(a3)
	bgt s4, a0, label55
	j label52
label333:
	mv a0, s6
	j label47
label558:
	mv a0, s3
	j label85
.globl main
main:
.p2align 2
	addi sp, sp, -16
pcrel748:
	auipc a1, %pcrel_hi(buf)
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel748)
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
