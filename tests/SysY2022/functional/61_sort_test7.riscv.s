.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
buf:
	.zero	800
.text
merge_sort:
	addi sp, sp, -32
	sd s1, 24(sp)
	mv s1, a0
	sd s0, 16(sp)
	addiw a0, a0, 1
	mv s0, a1
	sd s2, 8(sp)
	sd ra, 0(sp)
	bgt a1, a0, label3
	j label2
label3:
	addw a0, s1, s0
	srliw a2, a0, 31
	add a1, a0, a2
	mv a0, s1
	sraiw s2, a1, 1
	mv a1, s2
	jal merge_sort
	mv a0, s2
	mv a1, s0
	jal merge_sort
	mv a4, s1
pcrel271:
	auipc a3, %pcrel_hi(buf)
	addi a2, a3, %pcrel_lo(pcrel271)
	mv a3, s1
	addi a1, a2, 400
	mv a0, a2
	mv a2, s2
	slt a5, s1, s2
	slt t1, s2, s0
	and t0, a5, t1
	beq t0, zero, label11
	sh2add t0, s1, a0
	sh2add t1, s2, a0
	lw a5, 0(t0)
	lw t0, 0(t1)
	bge a5, t0, label10
	sh2add t0, s1, a1
	addiw a4, s1, 1
	addiw a3, s1, 1
	sw a5, 0(t0)
	slt a5, a4, s2
	slt t1, s2, s0
	and t0, a5, t1
	beq t0, zero, label11
	sh2add t0, a4, a0
	sh2add t1, s2, a0
	lw a5, 0(t0)
	lw t0, 0(t1)
	bge a5, t0, label10
	sh2add t0, a3, a1
	addiw a4, a4, 1
	addiw a3, a3, 1
	sw a5, 0(t0)
	slt a5, a4, s2
	slt t1, s2, s0
	and t0, a5, t1
	beq t0, zero, label11
	sh2add t0, a4, a0
	sh2add t1, s2, a0
	lw a5, 0(t0)
	lw t0, 0(t1)
	bge a5, t0, label10
	sh2add t0, a3, a1
	addiw a4, a4, 1
	addiw a3, a3, 1
	sw a5, 0(t0)
	slt a5, a4, s2
	slt t1, s2, s0
	and t0, a5, t1
	beq t0, zero, label11
	sh2add t0, a4, a0
	sh2add t1, s2, a0
	lw a5, 0(t0)
	lw t0, 0(t1)
	bge a5, t0, label10
	j label248
label11:
	ble s2, a4, label71
	addiw a5, a4, 4
	ble s2, a5, label15
	j label18
label248:
	sh2add t0, a3, a1
	addiw a4, a4, 1
	addiw a3, a3, 1
	sw a5, 0(t0)
	slt a5, a4, s2
	slt t1, a2, s0
	and t0, a5, t1
	beq t0, zero, label11
	j label255
label10:
	sh2add a5, a3, a1
	addiw a2, a2, 1
	addiw a3, a3, 1
	sw t0, 0(a5)
	slt a5, a4, s2
	slt t1, a2, s0
	and t0, a5, t1
	beq t0, zero, label11
	sh2add t0, a4, a0
	sh2add t1, a2, a0
	lw a5, 0(t0)
	lw t0, 0(t1)
	bge a5, t0, label10
	sh2add t0, a3, a1
	addiw a4, a4, 1
	addiw a3, a3, 1
	sw a5, 0(t0)
	slt a5, a4, s2
	slt t1, a2, s0
	and t0, a5, t1
	beq t0, zero, label11
	sh2add t0, a4, a0
	sh2add t1, a2, a0
	lw a5, 0(t0)
	lw t0, 0(t1)
	bge a5, t0, label10
	sh2add t0, a3, a1
	addiw a4, a4, 1
	addiw a3, a3, 1
	sw a5, 0(t0)
	slt a5, a4, s2
	slt t1, a2, s0
	and t0, a5, t1
	beq t0, zero, label11
	sh2add t0, a4, a0
	sh2add t1, a2, a0
	lw a5, 0(t0)
	lw t0, 0(t1)
	bge a5, t0, label10
	sh2add t0, a3, a1
	addiw a4, a4, 1
	addiw a3, a3, 1
	sw a5, 0(t0)
	slt a5, a4, s2
	slt t1, a2, s0
	and t0, a5, t1
	beq t0, zero, label11
	sh2add t0, a4, a0
	sh2add t1, a2, a0
	lw a5, 0(t0)
	lw t0, 0(t1)
	bge a5, t0, label10
	sh2add t0, a3, a1
	addiw a4, a4, 1
	addiw a3, a3, 1
	sw a5, 0(t0)
	slt a5, a4, s2
	slt t1, a2, s0
	and t0, a5, t1
	beq t0, zero, label11
	sh2add t0, a4, a0
	sh2add t1, a2, a0
	lw a5, 0(t0)
	lw t0, 0(t1)
	bge a5, t0, label10
	j label248
label255:
	sh2add t0, a4, a0
	sh2add t1, a2, a0
	lw a5, 0(t0)
	lw t0, 0(t1)
	bge a5, t0, label10
	j label248
label15:
	sh2add t0, a4, a0
	sh2add t1, a3, a1
	addiw a4, a4, 1
	lw a5, 0(t0)
	addiw a3, a3, 1
	sw a5, 0(t1)
	ble s2, a4, label87
	j label15
label87:
	mv a4, a3
	ble s0, a2, label21
	mv a3, a2
	mv a2, a4
	addiw a4, a3, 4
	ble s0, a4, label31
label30:
	sh2add a3, a3, a0
	sh2add a5, a2, a1
	lw t0, 0(a3)
	addiw a2, a2, 4
	sw t0, 0(a5)
	lw t1, 4(a3)
	sw t1, 4(a5)
	lw t0, 8(a3)
	sw t0, 8(a5)
	lw a3, 12(a3)
	sw a3, 12(a5)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label31
	j label30
label21:
	bge s1, s0, label2
	addiw a2, s1, 4
	ble s0, a2, label25
label24:
	sh2add a3, s1, a1
	sh2add a4, s1, a0
	lw a5, 0(a3)
	mv s1, a2
	sw a5, 0(a4)
	lw a5, 4(a3)
	sw a5, 4(a4)
	lw t0, 8(a3)
	sw t0, 8(a4)
	lw a3, 12(a3)
	sw a3, 12(a4)
	addiw a2, a2, 4
	ble s0, a2, label25
	j label24
label18:
	sh2add t0, a4, a0
	sh2add a4, a3, a1
	lw t1, 0(t0)
	addiw a3, a3, 4
	sw t1, 0(a4)
	lw t1, 4(t0)
	sw t1, 4(a4)
	lw t2, 8(t0)
	sw t2, 8(a4)
	lw t0, 12(t0)
	sw t0, 12(a4)
	mv a4, a5
	addiw a5, a5, 4
	ble s2, a5, label15
	j label18
label71:
	mv a4, a3
	ble s0, a2, label21
	mv a3, a2
	mv a2, a4
	addiw a4, a3, 4
	ble s0, a4, label31
	j label30
label25:
	sh2add a3, s1, a1
	sh2add a4, s1, a0
	lw a2, 0(a3)
	addiw s1, s1, 1
	sw a2, 0(a4)
	ble s0, s1, label2
	j label25
label31:
	sh2add t0, a3, a0
	sh2add a5, a2, a1
	addiw a3, a3, 1
	lw a4, 0(t0)
	addiw a2, a2, 1
	sw a4, 0(a5)
	ble s0, a3, label21
	j label31
label2:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s0, 16(sp)
	ld s1, 24(sp)
	addi sp, sp, 32
	ret
.globl main
main:
	addi sp, sp, -16
pcrel279:
	auipc a1, %pcrel_hi(buf)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel279)
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
