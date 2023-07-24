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
	sd s1, 24(sp)
	mv s1, a0
	sd s0, 16(sp)
	addiw a0, a0, 1
	mv s0, a1
	sd s2, 8(sp)
	sd ra, 0(sp)
	ble a1, a0, label2
	addw a0, s1, a1
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
pcrel187:
	auipc a3, %pcrel_hi(buf)
	addi a2, a3, %pcrel_lo(pcrel187)
	mv a3, s1
	addi a1, a2, 400
	mv a0, a2
	mv a2, s2
	slt a5, s1, s2
	slt t1, s2, s0
	and t0, a5, t1
	bne t0, zero, label8
	bgt s2, s1, label12
	j label179
label8:
.p2align 2
	sh2add t0, a4, a0
	sh2add t1, a2, a0
	lw a5, 0(t0)
	lw t0, 0(t1)
	blt a5, t0, label9
	sh2add a5, a3, a1
	addiw a2, a2, 1
	addiw a3, a3, 1
	sw t0, 0(a5)
	slt a5, a4, s2
	slt t1, a2, s0
	and t0, a5, t1
	bne t0, zero, label8
	bgt s2, a4, label12
	j label179
label2:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s0, 16(sp)
	ld s1, 24(sp)
	addi sp, sp, 32
	ret
label179:
	mv a5, a3
	j label19
label9:
.p2align 2
	sh2add t0, a3, a1
	addiw a4, a4, 1
	addiw a3, a3, 1
	sw a5, 0(t0)
	slt a5, a4, s2
	slt t1, a2, s0
	and t0, a5, t1
	bne t0, zero, label8
	ble s2, a4, label179
label12:
	addiw a5, a4, 4
	ble s2, a5, label16
	sh2add a4, a4, a0
	sh2add t0, a3, a1
	lw t1, 0(a4)
	addiw a3, a3, 4
	sw t1, 0(t0)
	lw t1, 4(a4)
	sw t1, 4(t0)
	lw t2, 8(a4)
	sw t2, 8(t0)
	lw a4, 12(a4)
	sw a4, 12(t0)
	mv a4, a5
	j label12
label16:
	sh2add t0, a4, a0
	sh2add t1, a3, a1
	addiw a4, a4, 1
	lw a5, 0(t0)
	sw a5, 0(t1)
	addiw a5, a3, 1
	ble s2, a4, label19
	mv a3, a5
	j label16
label19:
	ble s0, a2, label21
	mv a3, a2
	mv a2, a5
	j label27
label21:
	bge s1, s0, label2
label22:
	addiw a2, s1, 4
	bgt s0, a2, label26
label24:
	sh2add a4, s1, a1
	sh2add a3, s1, a0
	lw a2, 0(a4)
	addiw s1, s1, 1
	sw a2, 0(a3)
	bgt s0, s1, label24
	j label2
label26:
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
	j label22
label27:
	addiw a4, a3, 4
	bgt s0, a4, label33
label30:
	sh2add t0, a3, a0
	sh2add a5, a2, a1
	addiw a3, a3, 1
	lw a4, 0(t0)
	addiw a2, a2, 1
	sw a4, 0(a5)
	bgt s0, a3, label30
	j label21
label33:
	sh2add a3, a3, a0
	sh2add a5, a2, a1
	lw t0, 0(a3)
	addiw a2, a2, 4
	sw t0, 0(a5)
	lw t0, 4(a3)
	sw t0, 4(a5)
	lw t1, 8(a3)
	sw t1, 8(a5)
	lw a3, 12(a3)
	sw a3, 12(a5)
	mv a3, a4
	j label27
.globl main
main:
.p2align 2
	addi sp, sp, -16
pcrel195:
	auipc a1, %pcrel_hi(buf)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel195)
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
