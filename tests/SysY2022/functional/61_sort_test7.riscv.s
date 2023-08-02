.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
buf:
	.zero	800
.text
.p2align 2
merge_sort:
	addi sp, sp, -96
	addiw a2, a0, 1
	sd ra, 0(sp)
	sd s4, 8(sp)
	mv s4, a0
	sd s1, 16(sp)
	mv s1, a1
	sd s6, 24(sp)
	sd s9, 32(sp)
	sd s0, 40(sp)
	sd s5, 48(sp)
	sd s2, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s3, 80(sp)
	sd s10, 88(sp)
	ble a1, a2, label105
	addw a0, a0, a1
	addiw s7, s4, 4
	addiw s8, s4, 16
	addiw s3, a1, -4
	addiw s5, a1, -20
	srliw a3, a0, 31
	add a1, a0, a3
pcrel830:
	auipc a0, %pcrel_hi(buf)
	sraiw s6, a1, 1
	addi s0, a0, %pcrel_lo(pcrel830)
	addi s9, s6, -4
	addi s2, s0, 400
	bge a2, s6, label3
	addw a2, s4, s6
	mv a0, s4
	srliw a1, a2, 31
	add a3, a2, a1
	sraiw s10, a3, 1
	mv a1, s10
	jal merge_sort
	mv a0, s10
	mv a1, s6
	jal merge_sort
	mv a3, s4
	mv a1, s10
	addiw a0, s6, -20
	mv a2, s4
	addi a4, s10, -4
	slt a5, s4, s10
	slt t1, s10, s6
	and t0, a5, t1
	bne t0, zero, label76
	j label79
label3:
	addiw a0, s6, 1
	bgt s1, a0, label4
label130:
	mv a2, s4
	mv a0, s6
	mv a1, s4
	slt a3, s4, s6
	slt a4, s6, s1
	and a5, a3, a4
	bne a5, zero, label42
	j label45
.p2align 2
label76:
	sh2add a5, a2, s0
	sh2add t2, a1, s0
	lw t0, 0(a5)
	addiw a5, a3, 1
	lw t1, 0(t2)
	blt t0, t1, label77
	sh2add t0, a3, s2
	addiw a1, a1, 1
	mv a3, a5
	sw t1, 0(t0)
	slt a5, a2, s10
	slt t1, a1, s6
	and t0, a5, t1
	bne t0, zero, label76
	j label79
.p2align 2
label77:
	sh2add t1, a3, s2
	addiw a2, a2, 1
	mv a3, a5
	sw t0, 0(t1)
	slt a5, a2, s10
	slt t1, a1, s6
	and t0, a5, t1
	bne t0, zero, label76
label79:
	bgt s10, a2, label80
label558:
	mv a2, a3
	j label87
label80:
	addiw a5, a2, 4
	ble s10, a5, label84
label81:
	sh2add a5, a2, s0
	sh2add t0, a3, s2
	addiw a2, a2, 4
	lw t1, 0(a5)
	addiw a3, a3, 4
	sw t1, 0(t0)
	lw t2, 4(a5)
	sw t2, 4(t0)
	lw t1, 8(a5)
	sw t1, 8(t0)
	lw t2, 12(a5)
	sw t2, 12(t0)
	bgt a4, a2, label81
label84:
	sh2add a5, a2, s0
	sh2add t0, a3, s2
	addiw a2, a2, 1
	lw a4, 0(a5)
	addiw a3, a3, 1
	sw a4, 0(t0)
	bgt s10, a2, label84
	j label558
label87:
	ble s6, a1, label96
	addiw a3, a1, 4
	ble s6, a3, label93
label90:
	sh2add a3, a1, s0
	sh2add a4, a2, s2
	addiw a1, a1, 4
	lw a5, 0(a3)
	addiw a2, a2, 4
	sw a5, 0(a4)
	lw t0, 4(a3)
	sw t0, 4(a4)
	lw t1, 8(a3)
	sw t1, 8(a4)
	lw a5, 12(a3)
	sw a5, 12(a4)
	bgt s9, a1, label90
label93:
	sh2add a4, a1, s0
	sh2add a5, a2, s2
	addiw a1, a1, 1
	lw a3, 0(a4)
	addiw a2, a2, 1
	sw a3, 0(a5)
	bgt s6, a1, label93
label96:
	bge s4, s6, label3
	bgt s6, s7, label100
	j label641
label98:
	sh2add a2, a0, s2
	sh2add a3, a0, s0
	lw a1, 0(a2)
	addiw a0, a0, 1
	sw a1, 0(a3)
	bgt s6, a0, label98
	j label3
label100:
	ble s9, s8, label655
	mv a1, s4
label101:
	sh2add a2, a1, s2
	sh2add a3, a1, s0
	lw a4, 0(a2)
	addiw a1, a1, 16
	sw a4, 0(a3)
	lw a5, 4(a2)
	sw a5, 4(a3)
	lw a4, 8(a2)
	sw a4, 8(a3)
	lw t0, 12(a2)
	sw t0, 12(a3)
	lw a5, 16(a2)
	sw a5, 16(a3)
	lw a4, 20(a2)
	sw a4, 20(a3)
	lw a5, 24(a2)
	sw a5, 24(a3)
	lw a4, 28(a2)
	sw a4, 28(a3)
	lw a5, 32(a2)
	sw a5, 32(a3)
	lw a4, 36(a2)
	sw a4, 36(a3)
	lw a5, 40(a2)
	sw a5, 40(a3)
	lw a4, 44(a2)
	sw a4, 44(a3)
	lw a5, 48(a2)
	sw a5, 48(a3)
	lw a4, 52(a2)
	sw a4, 52(a3)
	lw a5, 56(a2)
	sw a5, 56(a3)
	lw a4, 60(a2)
	sw a4, 60(a3)
	bgt a0, a1, label101
	mv a0, a1
label103:
	sh2add a2, a0, s2
	sh2add a1, a0, s0
	lw a3, 0(a2)
	addiw a0, a0, 4
	sw a3, 0(a1)
	lw a5, 4(a2)
	sw a5, 4(a1)
	lw a4, 8(a2)
	sw a4, 8(a1)
	lw a3, 12(a2)
	sw a3, 12(a1)
	bgt s9, a0, label103
	j label98
.p2align 2
label42:
	sh2add a3, a1, s0
	sh2add t0, a0, s0
	lw a4, 0(a3)
	addiw a3, a2, 1
	lw a5, 0(t0)
	blt a4, a5, label43
	sh2add a4, a2, s2
	addiw a0, a0, 1
	mv a2, a3
	sw a5, 0(a4)
	slt a3, a1, s6
	slt a4, a0, s1
	and a5, a3, a4
	bne a5, zero, label42
	j label45
.p2align 2
label43:
	sh2add a5, a2, s2
	addiw a1, a1, 1
	mv a2, a3
	sw a4, 0(a5)
	slt a3, a1, s6
	slt a4, a0, s1
	and a5, a3, a4
	bne a5, zero, label42
label45:
	bgt s6, a1, label46
label357:
	mv a1, a2
	j label53
label46:
	addiw a3, a1, 4
	ble s6, a3, label50
.p2align 2
label47:
	sh2add a3, a1, s0
	sh2add a4, a2, s2
	addiw a1, a1, 4
	lw a5, 0(a3)
	addiw a2, a2, 4
	sw a5, 0(a4)
	lw t0, 4(a3)
	sw t0, 4(a4)
	lw a5, 8(a3)
	sw a5, 8(a4)
	lw t0, 12(a3)
	sw t0, 12(a4)
	bgt s9, a1, label47
label50:
	sh2add a5, a1, s0
	sh2add a4, a2, s2
	addiw a1, a1, 1
	lw a3, 0(a5)
	addiw a2, a2, 1
	sw a3, 0(a4)
	bgt s6, a1, label50
	j label357
label53:
	bgt s1, a0, label64
label55:
	bge s4, s1, label105
	bgt s1, s7, label57
	j label62
label64:
	addiw a2, a0, 4
	ble s1, a2, label68
.p2align 2
label65:
	sh2add a2, a0, s0
	sh2add a3, a1, s2
	addiw a0, a0, 4
	lw a4, 0(a2)
	addiw a1, a1, 4
	sw a4, 0(a3)
	lw a5, 4(a2)
	sw a5, 4(a3)
	lw t0, 8(a2)
	sw t0, 8(a3)
	lw a4, 12(a2)
	sw a4, 12(a3)
	bgt s3, a0, label65
label68:
	sh2add a4, a0, s0
	sh2add a3, a1, s2
	addiw a0, a0, 1
	lw a2, 0(a4)
	addiw a1, a1, 1
	sw a2, 0(a3)
	bgt s1, a0, label68
	j label55
label57:
	bge s8, s3, label60
.p2align 2
label58:
	sh2add a0, s4, s2
	sh2add a1, s4, s0
	lw a2, 0(a0)
	addiw s4, s4, 16
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
	lw a4, 28(a0)
	sw a4, 28(a1)
	lw a3, 32(a0)
	sw a3, 32(a1)
	lw a2, 36(a0)
	sw a2, 36(a1)
	lw a3, 40(a0)
	sw a3, 40(a1)
	lw a2, 44(a0)
	sw a2, 44(a1)
	lw a3, 48(a0)
	sw a3, 48(a1)
	lw a2, 52(a0)
	sw a2, 52(a1)
	lw a3, 56(a0)
	sw a3, 56(a1)
	lw a2, 60(a0)
	sw a2, 60(a1)
	bgt s5, s4, label58
label60:
	sh2add a0, s4, s2
	sh2add a1, s4, s0
	lw a2, 0(a0)
	addiw s4, s4, 4
	sw a2, 0(a1)
	lw a3, 4(a0)
	sw a3, 4(a1)
	lw a4, 8(a0)
	sw a4, 8(a1)
	lw a2, 12(a0)
	sw a2, 12(a1)
	bgt s3, s4, label60
label62:
	sh2add a1, s4, s2
	sh2add a2, s4, s0
	lw a0, 0(a1)
	addiw s4, s4, 1
	sw a0, 0(a2)
	bgt s1, s4, label62
label105:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s1, 16(sp)
	ld s6, 24(sp)
	ld s9, 32(sp)
	ld s0, 40(sp)
	ld s5, 48(sp)
	ld s2, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s3, 80(sp)
	ld s10, 88(sp)
	addi sp, sp, 96
	ret
label4:
	addw a2, s1, s6
	mv a0, s6
	srliw a1, a2, 31
	add a3, a2, a1
	sraiw s10, a3, 1
	mv a1, s10
	jal merge_sort
	mv a0, s10
	mv a1, s1
	jal merge_sort
	mv a1, s6
	mv a0, s10
	mv a2, s6
	addi a3, s10, -4
	slt a4, s6, s10
	slt t0, s10, s1
	and a5, a4, t0
	beq a5, zero, label12
.p2align 2
label9:
	sh2add a4, a1, s0
	sh2add t1, a0, s0
	lw a5, 0(a4)
	addiw a4, a2, 1
	lw t0, 0(t1)
	blt a5, t0, label11
	sh2add a5, a2, s2
	addiw a0, a0, 1
	mv a2, a4
	sw t0, 0(a5)
	slt a4, a1, s10
	slt t0, a0, s1
	and a5, a4, t0
	bne a5, zero, label9
	j label12
.p2align 2
label11:
	sh2add t0, a2, s2
	addiw a1, a1, 1
	mv a2, a4
	sw a5, 0(t0)
	slt a4, a1, s10
	slt t0, a0, s1
	and a5, a4, t0
	bne a5, zero, label9
label12:
	bgt s10, a1, label31
label158:
	mv a1, a2
	bgt s1, a0, label24
	j label15
label31:
	addiw a4, a1, 4
	ble s10, a4, label35
label32:
	sh2add a4, a1, s0
	sh2add a5, a2, s2
	addiw a1, a1, 4
	lw t0, 0(a4)
	addiw a2, a2, 4
	sw t0, 0(a5)
	lw t1, 4(a4)
	sw t1, 4(a5)
	lw t2, 8(a4)
	sw t2, 8(a5)
	lw t0, 12(a4)
	sw t0, 12(a5)
	bgt a3, a1, label32
label35:
	sh2add a4, a1, s0
	sh2add a5, a2, s2
	addiw a1, a1, 1
	lw a3, 0(a4)
	addiw a2, a2, 1
	sw a3, 0(a5)
	bgt s10, a1, label35
	j label158
label15:
	ble s1, s6, label130
	addiw a1, s6, 4
	bgt s1, a1, label19
	j label170
label24:
	addiw a2, a0, 4
	ble s1, a2, label28
label25:
	sh2add a2, a0, s0
	sh2add a3, a1, s2
	addiw a0, a0, 4
	lw a4, 0(a2)
	addiw a1, a1, 4
	sw a4, 0(a3)
	lw a5, 4(a2)
	sw a5, 4(a3)
	lw a4, 8(a2)
	sw a4, 8(a3)
	lw a5, 12(a2)
	sw a5, 12(a3)
	bgt s3, a0, label25
label28:
	sh2add a4, a0, s0
	sh2add a3, a1, s2
	addiw a0, a0, 1
	lw a2, 0(a4)
	addiw a1, a1, 1
	sw a2, 0(a3)
	bgt s1, a0, label28
	j label15
label17:
	sh2add a2, a0, s2
	sh2add a3, a0, s0
	lw a1, 0(a2)
	addiw a0, a0, 1
	sw a1, 0(a3)
	bgt s1, a0, label17
	j label130
label19:
	addiw a2, s6, 16
	ble s3, a2, label185
	mv a0, s6
	j label22
label20:
	sh2add a2, a1, s2
	sh2add a0, a1, s0
	lw a3, 0(a2)
	addiw a1, a1, 4
	sw a3, 0(a0)
	lw a4, 4(a2)
	sw a4, 4(a0)
	lw a3, 8(a2)
	sw a3, 8(a0)
	lw a4, 12(a2)
	sw a4, 12(a0)
	bgt s3, a1, label20
	mv a0, a1
	j label17
label22:
	sh2add a1, a0, s2
	sh2add a2, a0, s0
	lw a3, 0(a1)
	addiw a0, a0, 16
	sw a3, 0(a2)
	lw a5, 4(a1)
	sw a5, 4(a2)
	lw a4, 8(a1)
	sw a4, 8(a2)
	lw a3, 12(a1)
	sw a3, 12(a2)
	lw a4, 16(a1)
	sw a4, 16(a2)
	lw a3, 20(a1)
	sw a3, 20(a2)
	lw a4, 24(a1)
	sw a4, 24(a2)
	lw a3, 28(a1)
	sw a3, 28(a2)
	lw a4, 32(a1)
	sw a4, 32(a2)
	lw a3, 36(a1)
	sw a3, 36(a2)
	lw a4, 40(a1)
	sw a4, 40(a2)
	lw a3, 44(a1)
	sw a3, 44(a2)
	lw a4, 48(a1)
	sw a4, 48(a2)
	lw a3, 52(a1)
	sw a3, 52(a2)
	lw a4, 56(a1)
	sw a4, 56(a2)
	lw a3, 60(a1)
	sw a3, 60(a2)
	bgt s5, a0, label22
	mv a1, a0
	j label20
label185:
	mv a1, s6
	j label20
label170:
	mv a0, s6
	j label17
label641:
	mv a0, s4
	j label98
label655:
	mv a0, s4
	j label103
.p2align 2
.globl main
main:
	addi sp, sp, -16
pcrel838:
	auipc a1, %pcrel_hi(buf)
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel838)
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
