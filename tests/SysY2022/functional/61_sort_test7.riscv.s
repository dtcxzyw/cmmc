.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
buf:
	.zero	800
.text
merge_sort:
.p2align 2
	addi sp, sp, -32
	sd s0, 24(sp)
	mv s0, a0
	sd s1, 16(sp)
	addiw a0, a0, 1
	mv s1, a1
	sd s2, 8(sp)
	sd ra, 0(sp)
	ble a1, a0, label33
	addw a0, s0, a1
	srliw a2, a0, 31
	add a1, a0, a2
	mv a0, s0
	sraiw s2, a1, 1
	mv a1, s2
	jal merge_sort
	mv a0, s2
	mv a1, s1
	jal merge_sort
	mv a5, s0
	mv a3, s2
	mv a4, s0
pcrel217:
	auipc a1, %pcrel_hi(buf)
	addi t0, s2, -4
	addi a2, a1, %pcrel_lo(pcrel217)
	addi a1, a2, 400
	mv a0, a2
	addiw a2, s1, -4
	slt t1, s0, s2
	slt t3, s2, s1
	and t2, t1, t3
	bne t2, zero, label7
	bgt s2, s0, label26
	j label11
.p2align 2
label7:
	sh2add t2, a5, a0
	sh2add t3, a3, a0
	lw t1, 0(t2)
	lw t2, 0(t3)
	blt t1, t2, label8
	sh2add t1, a4, a1
	addiw a3, a3, 1
	addiw a4, a4, 1
	sw t2, 0(t1)
	slt t1, a5, s2
	slt t3, a3, s1
	and t2, t1, t3
	bne t2, zero, label7
	bgt s2, a5, label26
label11:
	bgt s1, a3, label13
	j label20
label26:
	addiw t1, a5, 4
	bgt s2, t1, label30
label27:
	sh2add t2, a5, a0
	sh2add t1, a4, a1
	addiw a5, a5, 1
	lw t0, 0(t2)
	addiw a4, a4, 1
	sw t0, 0(t1)
	bgt s2, a5, label27
	j label11
.p2align 2
label8:
	sh2add t2, a4, a1
	addiw a5, a5, 1
	addiw a4, a4, 1
	sw t1, 0(t2)
	slt t1, a5, s2
	slt t3, a3, s1
	and t2, t1, t3
	bne t2, zero, label7
	bgt s2, a5, label26
	j label11
label14:
	sh2add t1, a3, a0
	sh2add t0, a4, a1
	addiw a3, a3, 1
	lw a5, 0(t1)
	addiw a4, a4, 1
	sw a5, 0(t0)
	bgt s1, a3, label14
	j label20
label17:
	sh2add a5, a3, a0
	sh2add t0, a4, a1
	addiw a3, a3, 4
	lw t1, 0(a5)
	addiw a4, a4, 4
	sw t1, 0(t0)
	lw t1, 4(a5)
	sw t1, 4(t0)
	lw t2, 8(a5)
	sw t2, 8(t0)
	lw a5, 12(a5)
	sw a5, 12(t0)
	bgt a2, a3, label17
	j label14
label20:
	bge s0, s1, label33
	addiw a3, s0, 4
	bgt s1, a3, label24
label22:
	sh2add a4, s0, a1
	sh2add a3, s0, a0
	lw a2, 0(a4)
	addiw s0, s0, 1
	sw a2, 0(a3)
	bgt s1, s0, label22
label33:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
label30:
	sh2add t1, a5, a0
	sh2add t2, a4, a1
	addiw a5, a5, 4
	lw t3, 0(t1)
	addiw a4, a4, 4
	sw t3, 0(t2)
	lw t4, 4(t1)
	sw t4, 4(t2)
	lw t3, 8(t1)
	sw t3, 8(t2)
	lw t1, 12(t1)
	sw t1, 12(t2)
	bgt t0, a5, label30
	j label27
label24:
	sh2add a3, s0, a1
	sh2add a4, s0, a0
	lw a5, 0(a3)
	addiw s0, s0, 4
	sw a5, 0(a4)
	lw a5, 4(a3)
	sw a5, 4(a4)
	lw t0, 8(a3)
	sw t0, 8(a4)
	lw a3, 12(a3)
	sw a3, 12(a4)
	bgt a2, s0, label24
	j label22
label13:
	addiw a5, a3, 4
	bgt s1, a5, label17
	j label14
.globl main
main:
.p2align 2
	addi sp, sp, -16
pcrel225:
	auipc a1, %pcrel_hi(buf)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel225)
	sd ra, 0(sp)
	mv a0, s0
	jal getarray
	mv t5, a0
	mv a1, a0
	mv a0, zero
	jal merge_sort
	mv a0, t5
	mv a1, s0
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	addi sp, sp, 16
	ret
