.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
buf:
	.zero	800
.text
merge_sort:
.p2align 2
	addi sp, sp, -32
	sd s1, 24(sp)
	mv s1, a0
	sd s0, 16(sp)
	addiw a0, a0, 1
	mv s0, a1
	sd s2, 8(sp)
	sd ra, 0(sp)
	ble a1, a0, label36
	addw a0, s1, a1
	srliw a1, a0, 31
	add a2, a0, a1
	mv a0, s1
	sraiw s2, a2, 1
	mv a1, s2
	jal merge_sort
	mv a0, s2
	mv a1, s0
	jal merge_sort
	mv t0, s1
	mv a4, s2
	addiw a3, s0, -20
pcrel282:
	auipc a1, %pcrel_hi(buf)
	mv a5, s1
	addi t1, s2, -4
	addi a2, a1, %pcrel_lo(pcrel282)
	addi a1, a2, 400
	mv a0, a2
	addiw a2, s0, -4
	slt t2, s1, s2
	slt t4, s2, s0
	and t3, t2, t4
	bne t3, zero, label7
	bgt s2, s1, label11
	j label18
.p2align 2
label7:
	sh2add t3, t0, a0
	sh2add t4, a4, a0
	lw t2, 0(t3)
	lw t3, 0(t4)
	blt t2, t3, label8
	sh2add t2, a5, a1
	addiw a4, a4, 1
	addiw a5, a5, 1
	sw t3, 0(t2)
	slt t2, t0, s2
	slt t4, a4, s0
	and t3, t2, t4
	bne t3, zero, label7
	ble s2, t0, label18
label11:
	addiw t2, t0, 4
	bgt s2, t2, label12
label15:
	sh2add t2, t0, a0
	sh2add t3, a5, a1
	addiw t0, t0, 1
	lw t1, 0(t2)
	addiw a5, a5, 1
	sw t1, 0(t3)
	bgt s2, t0, label15
label18:
	bgt s0, a4, label29
	j label20
.p2align 2
label8:
	sh2add t3, a5, a1
	addiw t0, t0, 1
	addiw a5, a5, 1
	sw t2, 0(t3)
	slt t2, t0, s2
	slt t4, a4, s0
	and t3, t2, t4
	bne t3, zero, label7
	bgt s2, t0, label11
	j label18
label20:
	blt s1, s0, label21
	j label36
label29:
	addiw t0, a4, 4
	bgt s0, t0, label33
label30:
	sh2add t2, a4, a0
	sh2add t1, a5, a1
	addiw a4, a4, 1
	lw t0, 0(t2)
	addiw a5, a5, 1
	sw t0, 0(t1)
	bgt s0, a4, label30
	j label20
label22:
	sh2add a3, s1, a1
	sh2add a4, s1, a0
	lw a2, 0(a3)
	addiw s1, s1, 1
	sw a2, 0(a4)
	bgt s0, s1, label22
	j label36
label24:
	addiw a4, s1, 16
	bgt a2, a4, label25
label27:
	sh2add a3, s1, a1
	sh2add a4, s1, a0
	lw a5, 0(a3)
	addiw s1, s1, 4
	sw a5, 0(a4)
	lw t0, 4(a3)
	sw t0, 4(a4)
	lw a5, 8(a3)
	sw a5, 8(a4)
	lw a3, 12(a3)
	sw a3, 12(a4)
	bgt a2, s1, label27
	j label22
label36:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s0, 16(sp)
	ld s1, 24(sp)
	addi sp, sp, 32
	ret
label12:
	sh2add t2, t0, a0
	sh2add t3, a5, a1
	addiw t0, t0, 4
	lw t4, 0(t2)
	addiw a5, a5, 4
	sw t4, 0(t3)
	lw t4, 4(t2)
	sw t4, 4(t3)
	lw t5, 8(t2)
	sw t5, 8(t3)
	lw t2, 12(t2)
	sw t2, 12(t3)
	bgt t1, t0, label12
	j label15
label33:
	sh2add t0, a4, a0
	sh2add t1, a5, a1
	addiw a4, a4, 4
	lw t2, 0(t0)
	addiw a5, a5, 4
	sw t2, 0(t1)
	lw t3, 4(t0)
	sw t3, 4(t1)
	lw t2, 8(t0)
	sw t2, 8(t1)
	lw t0, 12(t0)
	sw t0, 12(t1)
	bgt a2, a4, label33
	j label30
label25:
	sh2add a4, s1, a1
	sh2add a5, s1, a0
	lw t0, 0(a4)
	addiw s1, s1, 16
	sw t0, 0(a5)
	lw t1, 4(a4)
	sw t1, 4(a5)
	lw t0, 8(a4)
	sw t0, 8(a5)
	lw t1, 12(a4)
	sw t1, 12(a5)
	lw t0, 16(a4)
	sw t0, 16(a5)
	lw t1, 20(a4)
	sw t1, 20(a5)
	lw t0, 24(a4)
	sw t0, 24(a5)
	lw t2, 28(a4)
	sw t2, 28(a5)
	lw t1, 32(a4)
	sw t1, 32(a5)
	lw t0, 36(a4)
	sw t0, 36(a5)
	lw t2, 40(a4)
	sw t2, 40(a5)
	lw t1, 44(a4)
	sw t1, 44(a5)
	lw t0, 48(a4)
	sw t0, 48(a5)
	lw t1, 52(a4)
	sw t1, 52(a5)
	lw t0, 56(a4)
	sw t0, 56(a5)
	lw a4, 60(a4)
	sw a4, 60(a5)
	bgt a3, s1, label25
	j label27
label21:
	addiw a4, s1, 4
	bgt s0, a4, label24
	j label22
.globl main
main:
.p2align 2
	addi sp, sp, -16
pcrel290:
	auipc a1, %pcrel_hi(buf)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel290)
	sd ra, 0(sp)
	mv a0, s0
	jal getarray
	mv t6, a0
	mv a1, a0
	mv a0, zero
	jal merge_sort
	mv a0, t6
	mv a1, s0
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	addi sp, sp, 16
	ret
