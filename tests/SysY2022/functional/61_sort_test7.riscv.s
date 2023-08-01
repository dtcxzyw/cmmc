.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
buf:
	.zero	800
.text
.p2align 2
merge_sort:
	addi sp, sp, -80
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s5, 16(sp)
	addiw a0, a0, 1
	sd s2, 24(sp)
	mv s2, a1
	sd s7, 32(sp)
	sd s1, 40(sp)
	sd s6, 48(sp)
	sd s3, 56(sp)
	sd s4, 64(sp)
	sd s8, 72(sp)
	bgt a1, a0, label3
label2:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s2, 24(sp)
	ld s7, 32(sp)
	ld s1, 40(sp)
	ld s6, 48(sp)
	ld s3, 56(sp)
	ld s4, 64(sp)
	ld s8, 72(sp)
	addi sp, sp, 80
	ret
label3:
	addw a1, s0, s2
	addiw s6, s0, 4
	addiw s4, s2, -4
	srliw a2, a1, 31
	add a3, a1, a2
pcrel633:
	auipc a1, %pcrel_hi(buf)
	sraiw s5, a3, 1
	addi s1, a1, %pcrel_lo(pcrel633)
	addi s7, s5, -4
	addi s3, s1, 400
	blt a0, s5, label66
label4:
	addiw a0, s5, 1
	bgt s2, a0, label35
label119:
	mv a2, s0
	mv a0, s5
	mv a1, s0
	slt a3, s0, s5
	slt a4, s5, s2
	and a5, a3, a4
	beq a5, zero, label12
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
	slt a3, a1, s5
	slt a4, a0, s2
	and a5, a3, a4
	bne a5, zero, label9
	j label12
.p2align 2
label10:
	sh2add a2, a2, s3
	addiw a1, a1, 1
	sw a4, 0(a2)
	mv a2, a3
	slt a3, a1, s5
	slt a4, a0, s2
	and a5, a3, a4
	bne a5, zero, label9
label12:
	bgt s5, a1, label28
label144:
	mv a1, a2
	bgt s2, a0, label21
	j label15
label28:
	addiw a3, a1, 4
	ble s5, a3, label32
.p2align 2
label29:
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
	bgt s7, a1, label29
label32:
	sh2add a5, a1, s1
	sh2add a4, a2, s3
	addiw a1, a1, 1
	lw a3, 0(a5)
	addiw a2, a2, 1
	sw a3, 0(a4)
	bgt s5, a1, label32
	j label144
label15:
	blt s0, s2, label16
	j label2
label21:
	addiw a2, a0, 4
	ble s2, a2, label25
.p2align 2
label22:
	sh2add a2, a0, s1
	sh2add a3, a1, s3
	addiw a0, a0, 4
	lw a4, 0(a2)
	addiw a1, a1, 4
	sw a4, 0(a3)
	lw a4, 4(a2)
	sw a4, 4(a3)
	lw a5, 8(a2)
	sw a5, 8(a3)
	lw a2, 12(a2)
	sw a2, 12(a3)
	bgt s4, a0, label22
label25:
	sh2add a4, a0, s1
	sh2add a3, a1, s3
	addiw a0, a0, 1
	lw a2, 0(a4)
	addiw a1, a1, 1
	sw a2, 0(a3)
	bgt s2, a0, label25
	j label15
label16:
	bgt s2, s6, label19
label17:
	sh2add a2, s0, s3
	sh2add a1, s0, s1
	lw a0, 0(a2)
	addiw s0, s0, 1
	sw a0, 0(a1)
	bgt s2, s0, label17
	j label2
.p2align 2
label19:
	sh2add a0, s0, s3
	sh2add a1, s0, s1
	lw a2, 0(a0)
	addiw s0, s0, 4
	sw a2, 0(a1)
	lw a3, 4(a0)
	sw a3, 4(a1)
	lw a2, 8(a0)
	sw a2, 8(a1)
	lw a0, 12(a0)
	sw a0, 12(a1)
	bgt s4, s0, label19
	j label17
label35:
	addw a0, s2, s5
	srliw a2, a0, 31
	add a1, a0, a2
	mv a0, s5
	sraiw s8, a1, 1
	mv a1, s8
	jal merge_sort
	mv a0, s8
	mv a1, s2
	jal merge_sort
	mv a1, s5
	mv a0, s8
	mv a2, s5
	addi a3, s8, -4
	slt a4, s5, s8
	slt a5, s8, s2
	and t0, a4, a5
	beq t0, zero, label43
.p2align 2
label40:
	sh2add a4, a1, s1
	sh2add t1, a0, s1
	lw a5, 0(a4)
	addiw a4, a2, 1
	lw t0, 0(t1)
	blt a5, t0, label41
	sh2add a2, a2, s3
	addiw a0, a0, 1
	sw t0, 0(a2)
	mv a2, a4
	slt a4, a1, s8
	slt a5, a0, s2
	and t0, a4, a5
	bne t0, zero, label40
	j label43
.p2align 2
label41:
	sh2add a2, a2, s3
	addiw a1, a1, 1
	sw a5, 0(a2)
	mv a2, a4
	slt a4, a1, s8
	slt a5, a0, s2
	and t0, a4, a5
	bne t0, zero, label40
label43:
	bgt s8, a1, label59
label285:
	mv a1, a2
	ble s2, a0, label46
	addiw a2, a0, 4
	bgt s2, a2, label53
	j label56
label59:
	addiw a4, a1, 4
	bgt s8, a4, label63
label60:
	sh2add a4, a1, s1
	sh2add a5, a2, s3
	addiw a1, a1, 1
	lw a3, 0(a4)
	addiw a2, a2, 1
	sw a3, 0(a5)
	bgt s8, a1, label60
	j label285
label63:
	sh2add a4, a1, s1
	sh2add a5, a2, s3
	addiw a1, a1, 4
	lw t0, 0(a4)
	addiw a2, a2, 4
	sw t0, 0(a5)
	lw t1, 4(a4)
	sw t1, 4(a5)
	lw t0, 8(a4)
	sw t0, 8(a5)
	lw a4, 12(a4)
	sw a4, 12(a5)
	bgt a3, a1, label63
	j label60
label66:
	addw a0, s0, s5
	srliw a1, a0, 31
	add a2, a0, a1
	mv a0, s0
	sraiw s8, a2, 1
	mv a1, s8
	jal merge_sort
	mv a0, s8
	mv a1, s5
	jal merge_sort
	mv a1, s0
	mv a0, s8
	mv a2, s0
	addi a3, s8, -4
	slt a4, s0, s8
	slt t0, s8, s5
	and a5, a4, t0
	beq a5, zero, label74
.p2align 2
label71:
	sh2add a4, a1, s1
	sh2add t1, a0, s1
	lw a5, 0(a4)
	addiw a4, a2, 1
	lw t0, 0(t1)
	blt a5, t0, label73
	sh2add a2, a2, s3
	addiw a0, a0, 1
	sw t0, 0(a2)
	mv a2, a4
	slt a4, a1, s8
	slt t0, a0, s5
	and a5, a4, t0
	bne a5, zero, label71
	j label74
.p2align 2
label73:
	sh2add a2, a2, s3
	addiw a1, a1, 1
	sw a5, 0(a2)
	mv a2, a4
	slt a4, a1, s8
	slt t0, a0, s5
	and a5, a4, t0
	bne a5, zero, label71
label74:
	bgt s8, a1, label75
label427:
	mv a1, a2
	j label82
label75:
	addiw a4, a1, 4
	ble s8, a4, label79
label76:
	sh2add a4, a1, s1
	sh2add a5, a2, s3
	addiw a1, a1, 4
	lw t0, 0(a4)
	addiw a2, a2, 4
	sw t0, 0(a5)
	lw t0, 4(a4)
	sw t0, 4(a5)
	lw t1, 8(a4)
	sw t1, 8(a5)
	lw a4, 12(a4)
	sw a4, 12(a5)
	bgt a3, a1, label76
label79:
	sh2add a5, a1, s1
	sh2add a4, a2, s3
	addiw a1, a1, 1
	lw a3, 0(a5)
	addiw a2, a2, 1
	sw a3, 0(a4)
	bgt s8, a1, label79
	j label427
label82:
	bgt s5, a0, label90
label84:
	bge s0, s5, label4
	bgt s5, s6, label475
	j label474
label90:
	addiw a2, a0, 4
	ble s5, a2, label94
label91:
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
	bgt s7, a0, label91
label94:
	sh2add a3, a0, s1
	sh2add a4, a1, s3
	addiw a0, a0, 1
	lw a2, 0(a3)
	addiw a1, a1, 1
	sw a2, 0(a4)
	bgt s5, a0, label94
	j label84
label46:
	ble s2, s5, label119
	addiw a1, s5, 4
	bgt s2, a1, label298
	j label297
label53:
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
	bgt s4, a0, label53
label56:
	sh2add a4, a0, s1
	sh2add a3, a1, s3
	addiw a0, a0, 1
	lw a2, 0(a4)
	addiw a1, a1, 1
	sw a2, 0(a3)
	bgt s2, a0, label56
	j label46
label298:
	mv a0, s5
label48:
	sh2add a1, a0, s3
	sh2add a2, a0, s1
	lw a3, 0(a1)
	addiw a0, a0, 4
	sw a3, 0(a2)
	lw a3, 4(a1)
	sw a3, 4(a2)
	lw a4, 8(a1)
	sw a4, 8(a2)
	lw a1, 12(a1)
	sw a1, 12(a2)
	bgt s4, a0, label48
label50:
	sh2add a3, a0, s3
	sh2add a2, a0, s1
	lw a1, 0(a3)
	addiw a0, a0, 1
	sw a1, 0(a2)
	bgt s2, a0, label50
	j label119
label475:
	mv a0, s0
	j label88
label86:
	sh2add a2, a0, s3
	sh2add a3, a0, s1
	lw a1, 0(a2)
	addiw a0, a0, 1
	sw a1, 0(a3)
	bgt s5, a0, label86
	j label4
label88:
	sh2add a1, a0, s3
	sh2add a2, a0, s1
	lw a3, 0(a1)
	addiw a0, a0, 4
	sw a3, 0(a2)
	lw a4, 4(a1)
	sw a4, 4(a2)
	lw a3, 8(a1)
	sw a3, 8(a2)
	lw a1, 12(a1)
	sw a1, 12(a2)
	bgt s7, a0, label88
	j label86
label474:
	mv a0, s0
	j label86
label297:
	mv a0, s5
	j label50
.p2align 2
.globl main
main:
	addi sp, sp, -16
pcrel641:
	auipc a1, %pcrel_hi(buf)
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel641)
	mv a0, s0
	jal getarray
	mv t2, a0
	mv a1, a0
	mv a0, zero
	jal merge_sort
	mv a0, t2
	mv a1, s0
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	addi sp, sp, 16
	ret
