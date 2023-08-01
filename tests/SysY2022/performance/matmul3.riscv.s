.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
a:
	.zero	4000000
.align 8
b:
	.zero	4000000
.align 8
c:
	.zero	4000000
.text
.p2align 2
.globl main
main:
	addi sp, sp, -112
pcrel1974:
	auipc a0, %pcrel_hi(a)
pcrel1975:
	auipc a1, %pcrel_hi(c)
	li t2, 4000
	sd ra, 0(sp)
	addi a5, a1, %pcrel_lo(pcrel1975)
	sd s10, 8(sp)
	addi s10, a0, %pcrel_lo(pcrel1974)
	sd s8, 16(sp)
pcrel1976:
	auipc a0, %pcrel_hi(b)
	sd s11, 24(sp)
	addi s8, a0, %pcrel_lo(pcrel1976)
	mv s11, zero
	sd s0, 32(sp)
	slli s0, t2, 1
	sd s5, 40(sp)
	li s5, 28000
	sd s1, 48(sp)
	li s1, 12000
	sd s6, 56(sp)
	sd s2, 64(sp)
	slli s2, s0, 1
	sd s3, 72(sp)
	slli s6, s2, 1
	li s3, 20000
	sd s4, 80(sp)
	slli s4, s1, 1
	sd s7, 88(sp)
	li s7, 36000
	sd s9, 96(sp)
	slli s9, s3, 1
	sd a5, 104(sp)
label2:
	li a0, 1000
	bge s11, a0, label8
	li t2, 4000
	mul a1, s11, t2
	add a0, s10, a1
	jal getarray
	li a1, 1000
	beq a0, a1, label5
label6:
	ld ra, 0(sp)
	ld s10, 8(sp)
	ld s8, 16(sp)
	ld s11, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s1, 48(sp)
	ld s6, 56(sp)
	ld s2, 64(sp)
	ld s3, 72(sp)
	ld s4, 80(sp)
	ld s7, 88(sp)
	ld s9, 96(sp)
	addi sp, sp, 112
	ret
label5:
	addiw s11, s11, 1
	j label2
label8:
	li a0, 23
	jal _sysy_starttime
	mv a0, zero
label9:
	li a1, 1000
	bge a0, a1, label67
	li t2, 4000
	mv a4, zero
	mul a1, a0, t2
	add a3, s8, a1
.p2align 2
label45:
	li t2, 4000
	li t3, 44000
	li t4, 48000
	mul a2, a4, t2
	add a1, s10, a2
	sh2add a2, a4, a3
	sh2add t0, a0, a1
	addiw a4, a4, 64
	lw a5, 0(t0)
	sw a5, 0(a2)
	add a5, a1, t2
	li t2, 40000
	sh2add t0, a0, a5
	lw t1, 0(t0)
	add t0, a1, s0
	sw t1, 4(a2)
	sh2add t1, a0, t0
	lw a5, 0(t1)
	add t1, a1, s1
	sw a5, 8(a2)
	sh2add a5, a0, t1
	lw t0, 0(a5)
	add a5, a1, s2
	sw t0, 12(a2)
	sh2add t0, a0, a5
	lw t1, 0(t0)
	add t0, a1, s3
	sh2add a5, a0, t0
	sw t1, 16(a2)
	add t0, a1, s4
	lw t1, 0(a5)
	sh2add a5, a0, t0
	sw t1, 20(a2)
	lw t1, 0(a5)
	add a5, a1, s5
	sh2add t0, a0, a5
	sw t1, 24(a2)
	add a5, a1, s6
	lw t1, 0(t0)
	sw t1, 28(a2)
	sh2add t1, a0, a5
	lw t0, 0(t1)
	add t1, a1, s7
	sw t0, 32(a2)
	sh2add t0, a0, t1
	lw a5, 0(t0)
	add t0, a1, t2
	li t2, 60000
	sh2add t1, a0, t0
	sw a5, 36(a2)
	lw a5, 0(t1)
	sw a5, 40(a2)
	add a5, a1, t3
	li t3, 52000
	sh2add t1, a0, a5
	lw t0, 0(t1)
	add t1, a1, t4
	li t4, 56000
	sh2add a5, a0, t1
	sw t0, 44(a2)
	add t1, a1, t3
	lw t0, 0(a5)
	sw t0, 48(a2)
	sh2add t0, a0, t1
	lw a5, 0(t0)
	sw a5, 52(a2)
	add a5, a1, t4
	sh2add t0, a0, a5
	lw t1, 0(t0)
	add t0, a1, t2
	li t2, 68000
	sh2add a5, a0, t0
	sw t1, 56(a2)
	lw t1, 0(a5)
	li a5, 64000
	sw t1, 60(a2)
	add t1, a1, a5
	sh2add t0, a0, t1
	lw a5, 0(t0)
	add t0, a1, t2
	li t2, 92000
	sh2add t1, a0, t0
	sw a5, 64(a2)
	li t0, 72000
	lw a5, 0(t1)
	sw a5, 68(a2)
	add a5, a1, t0
	sh2add t1, a0, a5
	lw t0, 0(t1)
	li t1, 76000
	add a5, a1, t1
	sw t0, 72(a2)
	sh2add t0, a0, a5
	li a5, 80000
	lw t1, 0(t0)
	sw t1, 76(a2)
	add t1, a1, a5
	sh2add t0, a0, t1
	li t1, 84000
	lw a5, 0(t0)
	sw a5, 80(a2)
	add a5, a1, t1
	sh2add t0, a0, a5
	li a5, 88000
	lw t1, 0(t0)
	sw t1, 84(a2)
	add t1, a1, a5
	sh2add t0, a0, t1
	lw a5, 0(t0)
	add t0, a1, t2
	li t2, 104000
	sh2add t1, a0, t0
	sw a5, 88(a2)
	lw a5, 0(t1)
	li t1, 96000
	add t0, a1, t1
	sw a5, 92(a2)
	sh2add a5, a0, t0
	li t0, 100000
	lw t1, 0(a5)
	add a5, a1, t0
	sw t1, 96(a2)
	sh2add t1, a0, a5
	add a5, a1, t2
	lw t0, 0(t1)
	li t2, 112000
	sh2add t1, a0, a5
	li a5, 108000
	sw t0, 100(a2)
	lw t0, 0(t1)
	sw t0, 104(a2)
	add t0, a1, a5
	sh2add t1, a0, t0
	add t0, a1, t2
	lw a5, 0(t1)
	li t2, 144000
	sh2add t1, a0, t0
	sw a5, 108(a2)
	lw a5, 0(t1)
	li t1, 116000
	sw a5, 112(a2)
	add a5, a1, t1
	sh2add t0, a0, a5
	lw t1, 0(t0)
	li t0, 120000
	sw t1, 116(a2)
	add t1, a1, t0
	sh2add a5, a0, t1
	li t1, 124000
	lw t0, 0(a5)
	add a5, a1, t1
	sw t0, 120(a2)
	sh2add t0, a0, a5
	lw t1, 0(t0)
	li t0, 128000
	add a5, a1, t0
	sw t1, 124(a2)
	sh2add t1, a0, a5
	lw t0, 0(t1)
	li t1, 132000
	sw t0, 128(a2)
	add t0, a1, t1
	sh2add a5, a0, t0
	lw t1, 0(a5)
	li a5, 136000
	add t0, a1, a5
	sw t1, 132(a2)
	sh2add t1, a0, t0
	lw a5, 0(t1)
	li t1, 140000
	sw a5, 136(a2)
	add a5, a1, t1
	sh2add t0, a0, a5
	add a5, a1, t2
	lw t1, 0(t0)
	li t2, 148000
	sh2add t0, a0, a5
	sw t1, 140(a2)
	lw t1, 0(t0)
	add t0, a1, t2
	li t2, 152000
	sh2add a5, a0, t0
	sw t1, 144(a2)
	lw t1, 0(a5)
	add a5, a1, t2
	li t2, 156000
	sh2add t0, a0, a5
	sw t1, 148(a2)
	lw t1, 0(t0)
	add t0, a1, t2
	li t2, 160000
	sh2add a5, a0, t0
	sw t1, 152(a2)
	lw t1, 0(a5)
	add a5, a1, t2
	li t2, 176000
	sh2add t0, a0, a5
	sw t1, 156(a2)
	lw t1, 0(t0)
	li t0, 164000
	sw t1, 160(a2)
	add t1, a1, t0
	sh2add a5, a0, t1
	lw t0, 0(a5)
	li a5, 168000
	add t1, a1, a5
	sw t0, 164(a2)
	sh2add t0, a0, t1
	lw a5, 0(t0)
	li t0, 172000
	sw a5, 168(a2)
	add a5, a1, t0
	sh2add t1, a0, a5
	add a5, a1, t2
	lw t0, 0(t1)
	li t2, 180000
	sh2add t1, a0, a5
	sw t0, 172(a2)
	lw t0, 0(t1)
	add t1, a1, t2
	li t2, 184000
	sh2add a5, a0, t1
	sw t0, 176(a2)
	lw t0, 0(a5)
	add a5, a1, t2
	li t2, 220000
	sh2add t1, a0, a5
	sw t0, 180(a2)
	li a5, 188000
	lw t0, 0(t1)
	sw t0, 184(a2)
	add t0, a1, a5
	sh2add t1, a0, t0
	lw a5, 0(t1)
	li t1, 192000
	sw a5, 188(a2)
	add a5, a1, t1
	sh2add t0, a0, a5
	lw t1, 0(t0)
	li t0, 196000
	add a5, a1, t0
	sw t1, 192(a2)
	sh2add t1, a0, a5
	lw t0, 0(t1)
	li t1, 200000
	add a5, a1, t1
	sw t0, 196(a2)
	sh2add t0, a0, a5
	lw t1, 0(t0)
	li t0, 204000
	sw t1, 200(a2)
	add t1, a1, t0
	sh2add a5, a0, t1
	lw t0, 0(a5)
	li a5, 208000
	add t1, a1, a5
	sw t0, 204(a2)
	sh2add t0, a0, t1
	li t1, 212000
	lw a5, 0(t0)
	sw a5, 208(a2)
	add a5, a1, t1
	sh2add t0, a0, a5
	li a5, 216000
	lw t1, 0(t0)
	sw t1, 212(a2)
	add t1, a1, a5
	sh2add t0, a0, t1
	lw a5, 0(t0)
	add t0, a1, t2
	sh2add t1, a0, t0
	sw a5, 216(a2)
	li t0, 224000
	lw a5, 0(t1)
	sw a5, 220(a2)
	add a5, a1, t0
	sh2add t1, a0, a5
	li a5, 228000
	lw t0, 0(t1)
	add t1, a1, a5
	sw t0, 224(a2)
	sh2add t0, a0, t1
	lw a5, 0(t0)
	li t0, 232000
	sw a5, 228(a2)
	add a5, a1, t0
	sh2add t1, a0, a5
	lw t0, 0(t1)
	li t1, 236000
	add a5, a1, t1
	sw t0, 232(a2)
	sh2add t0, a0, a5
	li a5, 240000
	lw t1, 0(t0)
	add t0, a1, a5
	sw t1, 236(a2)
	sh2add t1, a0, t0
	lw a5, 0(t1)
	li t1, 244000
	sw a5, 240(a2)
	add a5, a1, t1
	sh2add t0, a0, a5
	lw t1, 0(t0)
	li t0, 248000
	add a5, a1, t0
	sw t1, 244(a2)
	sh2add t1, a0, a5
	li a5, 252000
	lw t0, 0(t1)
	sw t0, 248(a2)
	add t0, a1, a5
	sh2add a1, a0, t0
	lw a5, 0(a1)
	li a1, 960
	sw a5, 252(a2)
	blt a4, a1, label45
	li t2, 4000
	li t3, 44000
	li t4, 48000
	mul a2, a4, t2
	add a1, s10, a2
	sh2add a2, a4, a3
	sh2add t0, a0, a1
	add a4, a1, t2
	sh2add a3, a0, a4
	add a4, a1, s0
	lw a5, 0(t0)
	sw a5, 0(a2)
	lw a5, 0(a3)
	sw a5, 4(a2)
	sh2add a5, a0, a4
	lw a3, 0(a5)
	add a5, a1, s1
	sh2add a4, a0, a5
	sw a3, 8(a2)
	lw a3, 0(a4)
	add a4, a1, s2
	sw a3, 12(a2)
	sh2add a3, a0, a4
	add a4, a1, s3
	lw a5, 0(a3)
	sw a5, 16(a2)
	sh2add a5, a0, a4
	add a4, a1, s4
	lw a3, 0(a5)
	sh2add a5, a0, a4
	sw a3, 20(a2)
	lw a3, 0(a5)
	add a5, a1, s5
	sw a3, 24(a2)
	sh2add a3, a0, a5
	add a5, a1, s7
	lw a4, 0(a3)
	add a3, a1, s6
	sw a4, 28(a2)
	sh2add a4, a0, a3
	lw t0, 0(a4)
	sh2add a4, a0, a5
	sw t0, 32(a2)
	li t0, 60000
	lw a3, 0(a4)
	li a4, 40000
	add a5, a1, a4
	sw a3, 36(a2)
	sh2add a3, a0, a5
	lw a4, 0(a3)
	add a3, a1, t3
	li t3, 52000
	sh2add a5, a0, a3
	sw a4, 40(a2)
	lw a4, 0(a5)
	add a5, a1, t4
	li t4, 56000
	sw a4, 44(a2)
	sh2add a4, a0, a5
	add a5, a1, t3
	lw a3, 0(a4)
	sw a3, 48(a2)
	sh2add a3, a0, a5
	lw a4, 0(a3)
	sw a4, 52(a2)
	add a4, a1, t4
	sh2add a5, a0, a4
	add a4, a1, t0
	lw a3, 0(a5)
	li t0, 72000
	sh2add a5, a0, a4
	li a4, 64000
	sw a3, 56(a2)
	lw a3, 0(a5)
	add a5, a1, a4
	sw a3, 60(a2)
	sh2add a3, a0, a5
	lw a4, 0(a3)
	li a3, 68000
	sw a4, 64(a2)
	add a4, a1, a3
	sh2add a5, a0, a4
	lw a3, 0(a5)
	add a5, a1, t0
	li t0, 84000
	sh2add a4, a0, a5
	sw a3, 68(a2)
	lw a3, 0(a4)
	li a4, 76000
	add a5, a1, a4
	sw a3, 72(a2)
	sh2add a3, a0, a5
	li a5, 80000
	lw a4, 0(a3)
	sw a4, 76(a2)
	add a4, a1, a5
	sh2add a3, a0, a4
	lw a5, 0(a3)
	add a3, a1, t0
	li t0, 92000
	sh2add a4, a0, a3
	sw a5, 80(a2)
	lw a5, 0(a4)
	li a4, 88000
	sw a5, 84(a2)
	add a5, a1, a4
	sh2add a3, a0, a5
	lw a4, 0(a3)
	add a3, a1, t0
	li t0, 116000
	sh2add a5, a0, a3
	sw a4, 88(a2)
	li a3, 96000
	lw a4, 0(a5)
	add a5, a1, a3
	sw a4, 92(a2)
	sh2add a4, a0, a5
	lw a3, 0(a4)
	li a4, 100000
	add a5, a1, a4
	sw a3, 96(a2)
	sh2add a3, a0, a5
	li a5, 104000
	lw a4, 0(a3)
	add a3, a1, a5
	sw a4, 100(a2)
	sh2add a4, a0, a3
	lw a5, 0(a4)
	li a4, 108000
	add a3, a1, a4
	sw a5, 104(a2)
	sh2add a5, a0, a3
	lw a4, 0(a5)
	li a5, 112000
	sw a4, 108(a2)
	add a4, a1, a5
	sh2add a3, a0, a4
	lw a5, 0(a3)
	add a3, a1, t0
	li t0, 124000
	sh2add a4, a0, a3
	sw a5, 112(a2)
	li a3, 120000
	lw a5, 0(a4)
	sw a5, 116(a2)
	add a5, a1, a3
	sh2add a4, a0, a5
	add a5, a1, t0
	lw a3, 0(a4)
	li t0, 136000
	sh2add a4, a0, a5
	sw a3, 120(a2)
	lw a3, 0(a4)
	li a4, 128000
	sw a3, 124(a2)
	add a3, a1, a4
	sh2add a5, a0, a3
	li a3, 132000
	lw a4, 0(a5)
	add a5, a1, a3
	sw a4, 128(a2)
	sh2add a4, a0, a5
	add a5, a1, t0
	lw a3, 0(a4)
	li t0, 140000
	sh2add a4, a0, a5
	add a5, a1, t0
	sw a3, 132(a2)
	lw a3, 0(a4)
	sh2add a4, a0, a5
	sw a3, 136(a2)
	lw a3, 0(a4)
	li a4, 144000
	sw a3, 140(a2)
	add a3, a1, a4
	sh2add a5, a0, a3
	li a3, 148000
	lw a4, 0(a5)
	add a5, a1, a3
	sw a4, 144(a2)
	sh2add a4, a0, a5
	lw a3, 0(a4)
	li a4, 152000
	sw a3, 148(a2)
	add a3, a1, a4
	sh2add a5, a0, a3
	lw a4, 0(a5)
	li a5, 156000
	add a3, a1, a5
	sw a4, 152(a2)
	sh2add a4, a0, a3
	addiw a0, a0, 1
	lw a1, 0(a4)
	sw a1, 156(a2)
	j label9
label67:
	mv a2, zero
label11:
	li t2, 4000
	ld a5, 104(sp)
	li a4, 1000
	mul a0, a2, t2
	add a1, s10, a0
	add a3, a5, a0
	bge a2, a4, label75
	mv a0, zero
	blt zero, a4, label80
label79:
	addiw a2, a2, 1
	j label11
.p2align 2
label80:
	mv a4, zero
	mv a5, zero
.p2align 2
label16:
	li t2, 4000
	mul t0, a4, t2
	add t1, s8, t0
	sh2add t4, a0, t1
	add t6, t1, t2
	sh2add t0, a4, a1
	sh2add t5, a0, t6
	addiw a4, a4, 16
	lw t3, 0(t0)
	lw t4, 0(t4)
	lw t2, 4(t0)
	lw t6, 0(t5)
	mulw t3, t3, t4
	mulw t5, t2, t6
	addw t2, t5, t3
	lw t3, 8(t0)
	add t5, t1, s0
	sh2add t4, a0, t5
	lw t5, 0(t4)
	mulw t4, t3, t5
	add t5, t1, s1
	addw t2, t2, t4
	sh2add t3, a0, t5
	lw t4, 12(t0)
	lw t5, 0(t3)
	mulw t3, t4, t5
	add t5, t1, s2
	addw t2, t2, t3
	sh2add t4, a0, t5
	lw t3, 16(t0)
	lw t5, 0(t4)
	mulw t4, t3, t5
	lw t3, 20(t0)
	add t5, t1, s3
	addw t2, t2, t4
	sh2add t4, a0, t5
	lw t5, 0(t4)
	mulw t4, t3, t5
	add t5, t1, s4
	addw t2, t2, t4
	sh2add t3, a0, t5
	lw t4, 24(t0)
	lw t5, 0(t3)
	mulw t3, t4, t5
	lw t4, 28(t0)
	add t5, t1, s5
	addw t2, t2, t3
	sh2add t3, a0, t5
	lw t5, 0(t3)
	mulw t3, t4, t5
	lw t4, 32(t0)
	add t5, t1, s6
	addw t2, t2, t3
	sh2add t3, a0, t5
	lw t5, 0(t3)
	mulw t3, t4, t5
	add t5, t1, s7
	addw t2, t2, t3
	sh2add t4, a0, t5
	lw t3, 36(t0)
	lw t5, 0(t4)
	mulw t4, t3, t5
	lw t3, 40(t0)
	add t5, t1, s9
	addw t2, t2, t4
	sh2add t4, a0, t5
	lw t5, 0(t4)
	mulw t4, t3, t5
	li t3, 44000
	addw t2, t2, t4
	add t5, t1, t3
	lw t3, 44(t0)
	sh2add t4, a0, t5
	lw t5, 0(t4)
	li t4, 48000
	mulw t6, t3, t5
	add t5, t1, t4
	addw t2, t2, t6
	lw t4, 48(t0)
	sh2add t3, a0, t5
	lw t6, 0(t3)
	li t3, 52000
	mulw t5, t4, t6
	addw t2, t2, t5
	add t5, t1, t3
	lw t3, 52(t0)
	sh2add t4, a0, t5
	lw t5, 0(t4)
	li t4, 56000
	mulw t6, t3, t5
	add t5, t1, t4
	addw t2, t2, t6
	lw t4, 56(t0)
	sh2add t3, a0, t5
	lw t5, 0(t3)
	lw t0, 60(t0)
	mulw t3, t4, t5
	li t4, 60000
	addw t2, t2, t3
	add t3, t1, t4
	sh2add t1, a0, t3
	lw t3, 0(t1)
	mulw t1, t0, t3
	addw t0, t2, t1
	addw a5, a5, t0
	li t0, 992
	blt a4, t0, label16
	li t2, 4000
	mul t1, a4, t2
	sh2add a4, a4, a1
	add t0, s8, t1
	add t5, t0, t2
	sh2add t3, a0, t0
	lw t1, 0(a4)
	sh2add t2, a0, t5
	lw t3, 0(t3)
	lw t4, 4(a4)
	lw t5, 0(t2)
	mulw t3, t1, t3
	addw t1, a5, t3
	mulw t2, t4, t5
	add t3, t0, s0
	addw a5, t2, t1
	lw t2, 8(a4)
	sh2add t1, a0, t3
	lw t3, 0(t1)
	mulw t1, t2, t3
	lw t2, 12(a4)
	add t3, t0, s1
	addw a5, a5, t1
	sh2add t1, a0, t3
	lw t3, 0(t1)
	mulw t1, t2, t3
	add t3, t0, s2
	addw a5, a5, t1
	sh2add t2, a0, t3
	lw t1, 16(a4)
	lw t3, 0(t2)
	mulw t2, t1, t3
	lw t1, 20(a4)
	add t3, t0, s3
	addw a5, a5, t2
	sh2add t2, a0, t3
	lw t3, 0(t2)
	mulw t2, t1, t3
	add t3, t0, s4
	addw a5, a5, t2
	sh2add t1, a0, t3
	lw t2, 24(a4)
	lw t3, 0(t1)
	lw a4, 28(a4)
	add t1, t0, s5
	sh2add t0, a0, t1
	mulw t4, t2, t3
	lw t1, 0(t0)
	addw a5, a5, t4
	mulw t0, a4, t1
	addw a4, a5, t0
	sh2add a5, a0, a3
	addiw a0, a0, 1
	sw a4, 0(a5)
	li a4, 1000
	blt a0, a4, label80
	j label79
label75:
	mv a0, zero
label20:
	li t2, 4000
	ld a5, 104(sp)
	mul a2, a0, t2
	add a1, a5, a2
	li a2, 1000
	blt a0, a2, label291
	j label290
label40:
	sh2add a3, a3, a1
	lw a4, 0(a3)
	lw t0, 4(a3)
	min a2, a2, a4
	lw a5, 8(a3)
	min a4, a2, t0
	lw t0, 12(a3)
	min a2, a4, a5
	lw a5, 16(a3)
	min a4, a2, t0
	lw t0, 20(a3)
	min a2, a4, a5
	lw a5, 24(a3)
	min a4, a2, t0
	lw t0, 28(a3)
	min a2, a4, a5
	lw a5, 32(a3)
	min a4, a2, t0
	lw t0, 36(a3)
	min a2, a4, a5
	lw a5, 40(a3)
	min a4, a2, t0
	lw t0, 44(a3)
	min a2, a4, a5
	min a4, a2, t0
	lw a2, 48(a3)
	min a5, a4, a2
	lw a4, 52(a3)
	min a2, a5, a4
	lw a5, 56(a3)
	lw t0, 60(a3)
	min a4, a2, a5
	lw a5, 64(a3)
	min a2, a4, t0
	lw t0, 68(a3)
	min a4, a2, a5
	lw a5, 72(a3)
	min a2, a4, t0
	lw t0, 76(a3)
	min a4, a2, a5
	lw a5, 80(a3)
	min a2, a4, t0
	lw t0, 84(a3)
	min a4, a2, a5
	lw a5, 88(a3)
	min a2, a4, t0
	lw t0, 92(a3)
	min a4, a2, a5
	lw a5, 96(a3)
	min a2, a4, t0
	lw t0, 100(a3)
	min a4, a2, a5
	lw a5, 104(a3)
	min a2, a4, t0
	min a4, a2, a5
	lw a2, 108(a3)
	min a5, a4, a2
	lw a4, 112(a3)
	min a2, a5, a4
	lw a5, 116(a3)
	lw t0, 120(a3)
	min a4, a2, a5
	lw t1, 124(a3)
	min a2, a4, t0
	lw a5, 128(a3)
	min a4, a2, t1
	lw t0, 132(a3)
	min a2, a4, a5
	lw a5, 136(a3)
	min a4, a2, t0
	lw t0, 140(a3)
	min a2, a4, a5
	lw a5, 144(a3)
	min a4, a2, t0
	min a2, a4, a5
	lw a4, 148(a3)
	min a5, a2, a4
	lw a2, 152(a3)
	lw a3, 156(a3)
	min a4, a5, a2
	min a2, a4, a3
	mv a4, zero
.p2align 2
label41:
	sh2add a3, a4, a1
	addiw a4, a4, 64
	sw a2, 0(a3)
	sw a2, 4(a3)
	sw a2, 8(a3)
	sw a2, 12(a3)
	sw a2, 16(a3)
	sw a2, 20(a3)
	sw a2, 24(a3)
	sw a2, 28(a3)
	sw a2, 32(a3)
	sw a2, 36(a3)
	sw a2, 40(a3)
	sw a2, 44(a3)
	sw a2, 48(a3)
	sw a2, 52(a3)
	sw a2, 56(a3)
	sw a2, 60(a3)
	sw a2, 64(a3)
	sw a2, 68(a3)
	sw a2, 72(a3)
	sw a2, 76(a3)
	sw a2, 80(a3)
	sw a2, 84(a3)
	sw a2, 88(a3)
	sw a2, 92(a3)
	sw a2, 96(a3)
	sw a2, 100(a3)
	sw a2, 104(a3)
	sw a2, 108(a3)
	sw a2, 112(a3)
	sw a2, 116(a3)
	sw a2, 120(a3)
	sw a2, 124(a3)
	sw a2, 128(a3)
	sw a2, 132(a3)
	sw a2, 136(a3)
	sw a2, 140(a3)
	sw a2, 144(a3)
	sw a2, 148(a3)
	sw a2, 152(a3)
	sw a2, 156(a3)
	sw a2, 160(a3)
	sw a2, 164(a3)
	sw a2, 168(a3)
	sw a2, 172(a3)
	sw a2, 176(a3)
	sw a2, 180(a3)
	sw a2, 184(a3)
	sw a2, 188(a3)
	sw a2, 192(a3)
	sw a2, 196(a3)
	sw a2, 200(a3)
	sw a2, 204(a3)
	sw a2, 208(a3)
	sw a2, 212(a3)
	sw a2, 216(a3)
	sw a2, 220(a3)
	sw a2, 224(a3)
	sw a2, 228(a3)
	sw a2, 232(a3)
	sw a2, 236(a3)
	sw a2, 240(a3)
	sw a2, 244(a3)
	sw a2, 248(a3)
	sw a2, 252(a3)
	li a3, 960
	blt a4, a3, label41
	sh2add a1, a4, a1
	addiw a0, a0, 1
	sw a2, 0(a1)
	sw a2, 4(a1)
	sw a2, 8(a1)
	sw a2, 12(a1)
	sw a2, 16(a1)
	sw a2, 20(a1)
	sw a2, 24(a1)
	sw a2, 28(a1)
	sw a2, 32(a1)
	sw a2, 36(a1)
	sw a2, 40(a1)
	sw a2, 44(a1)
	sw a2, 48(a1)
	sw a2, 52(a1)
	sw a2, 56(a1)
	sw a2, 60(a1)
	sw a2, 64(a1)
	sw a2, 68(a1)
	sw a2, 72(a1)
	sw a2, 76(a1)
	sw a2, 80(a1)
	sw a2, 84(a1)
	sw a2, 88(a1)
	sw a2, 92(a1)
	sw a2, 96(a1)
	sw a2, 100(a1)
	sw a2, 104(a1)
	sw a2, 108(a1)
	sw a2, 112(a1)
	sw a2, 116(a1)
	sw a2, 120(a1)
	sw a2, 124(a1)
	sw a2, 128(a1)
	sw a2, 132(a1)
	sw a2, 136(a1)
	sw a2, 140(a1)
	sw a2, 144(a1)
	sw a2, 148(a1)
	sw a2, 152(a1)
	sw a2, 156(a1)
	j label20
label291:
	mv a3, zero
	li a4, 2147483647
.p2align 2
label37:
	sh2add a2, a3, a1
	addiw a3, a3, 64
	lw a5, 0(a2)
	lw t1, 4(a2)
	min a4, a4, a5
	lw t0, 8(a2)
	min a5, a4, t1
	lw t1, 12(a2)
	min a4, a5, t0
	lw t2, 16(a2)
	min a5, a4, t1
	lw t0, 20(a2)
	min a4, a5, t2
	lw t1, 24(a2)
	min a5, a4, t0
	lw t0, 28(a2)
	min a4, a5, t1
	lw t1, 32(a2)
	min a5, a4, t0
	min a4, a5, t1
	lw a5, 36(a2)
	min t0, a4, a5
	lw a4, 40(a2)
	min a5, t0, a4
	lw t0, 44(a2)
	lw t1, 48(a2)
	min a4, a5, t0
	lw t0, 52(a2)
	min a5, a4, t1
	lw t1, 56(a2)
	min a4, a5, t0
	min a5, a4, t1
	lw a4, 60(a2)
	min t0, a5, a4
	lw a5, 64(a2)
	min a4, t0, a5
	lw t0, 68(a2)
	lw t1, 72(a2)
	min a5, a4, t0
	lw t0, 76(a2)
	min a4, a5, t1
	lw t1, 80(a2)
	min a5, a4, t0
	lw t0, 84(a2)
	min a4, a5, t1
	min a5, a4, t0
	lw a4, 88(a2)
	min t0, a5, a4
	lw a5, 92(a2)
	min a4, t0, a5
	lw t0, 96(a2)
	lw t1, 100(a2)
	min a5, a4, t0
	lw t2, 104(a2)
	min a4, a5, t1
	lw t0, 108(a2)
	min a5, a4, t2
	lw t1, 112(a2)
	min a4, a5, t0
	lw t0, 116(a2)
	min a5, a4, t1
	lw t1, 120(a2)
	min a4, a5, t0
	lw t0, 124(a2)
	min a5, a4, t1
	lw t1, 128(a2)
	min a4, a5, t0
	min a5, a4, t1
	lw a4, 132(a2)
	min t0, a5, a4
	lw a5, 136(a2)
	min a4, t0, a5
	lw t0, 140(a2)
	lw t1, 144(a2)
	min a5, a4, t0
	lw t0, 148(a2)
	min a4, a5, t1
	min a5, a4, t0
	lw a4, 152(a2)
	min t0, a5, a4
	lw a5, 156(a2)
	min a4, t0, a5
	lw t0, 160(a2)
	lw t1, 164(a2)
	min a5, a4, t0
	lw t0, 168(a2)
	min a4, a5, t1
	lw t1, 172(a2)
	min a5, a4, t0
	min a4, a5, t1
	lw a5, 176(a2)
	min t0, a4, a5
	lw a4, 180(a2)
	min a5, t0, a4
	lw t0, 184(a2)
	lw t1, 188(a2)
	min a4, a5, t0
	lw t0, 192(a2)
	min a5, a4, t1
	lw t1, 196(a2)
	min a4, a5, t0
	min a5, a4, t1
	lw a4, 200(a2)
	min t0, a5, a4
	lw a5, 204(a2)
	min a4, t0, a5
	lw t0, 208(a2)
	lw t1, 212(a2)
	min a5, a4, t0
	min a4, a5, t1
	lw a5, 216(a2)
	min t0, a4, a5
	lw a4, 220(a2)
	min a5, t0, a4
	lw t0, 224(a2)
	lw t1, 228(a2)
	min a4, a5, t0
	min a5, a4, t1
	lw a4, 232(a2)
	min t0, a5, a4
	lw a5, 236(a2)
	min a4, t0, a5
	lw t0, 240(a2)
	lw t1, 244(a2)
	min a5, a4, t0
	lw t0, 248(a2)
	min a4, a5, t1
	min a5, a4, t0
	lw a4, 252(a2)
	min a2, a5, a4
	li a4, 960
	bge a3, a4, label40
	mv a4, a2
	j label37
label290:
	mv a0, zero
label22:
	li a1, 1000
	bge a0, a1, label294
	li t2, 4000
	ld a5, 104(sp)
	mul a2, a0, t2
	add a1, a5, a2
	mv a2, zero
.p2align 2
label34:
	li t2, 4000
	ld a5, 104(sp)
	li t3, 44000
	li t4, 48000
	mul a4, a2, t2
	add a3, a5, a4
	sh2add a4, a0, a3
	lw t0, 0(a4)
	sh2add a4, a2, a1
	subw a5, zero, t0
	addiw a2, a2, 16
	add t0, a3, t2
	sw a5, 0(a4)
	sh2add a5, a0, t0
	lw t1, 0(a5)
	add a5, a3, s0
	subw t0, zero, t1
	sw t0, 4(a4)
	sh2add t0, a0, a5
	add a5, a3, s1
	lw t1, 0(t0)
	subw t2, zero, t1
	sh2add t1, a0, a5
	add a5, a3, s2
	sw t2, 8(a4)
	lw t2, 0(t1)
	subw t0, zero, t2
	sw t0, 12(a4)
	sh2add t0, a0, a5
	lw t1, 0(t0)
	subw a5, zero, t1
	add t1, a3, s3
	sw a5, 16(a4)
	sh2add a5, a0, t1
	lw t0, 0(a5)
	subw t1, zero, t0
	add t0, a3, s4
	sw t1, 20(a4)
	sh2add t1, a0, t0
	lw a5, 0(t1)
	add t1, a3, s5
	subw t0, zero, a5
	sw t0, 24(a4)
	sh2add t0, a0, t1
	lw a5, 0(t0)
	subw t1, zero, a5
	add a5, a3, s6
	sw t1, 28(a4)
	sh2add t1, a0, a5
	lw t0, 0(t1)
	add t1, a3, s7
	subw a5, zero, t0
	sw a5, 32(a4)
	sh2add a5, a0, t1
	lw t0, 0(a5)
	li a5, 40000
	subw t1, zero, t0
	add t0, a3, a5
	sw t1, 36(a4)
	sh2add t1, a0, t0
	lw a5, 0(t1)
	subw t0, zero, a5
	sw t0, 40(a4)
	add t0, a3, t3
	li t3, 52000
	sh2add t1, a0, t0
	lw a5, 0(t1)
	subw t0, zero, a5
	sw t0, 44(a4)
	add t0, a3, t4
	li t4, 56000
	sh2add a5, a0, t0
	lw t1, 0(a5)
	subw t0, zero, t1
	sw t0, 48(a4)
	add t0, a3, t3
	sh2add t1, a0, t0
	lw a5, 0(t1)
	subw t0, zero, a5
	add a5, a3, t4
	sw t0, 52(a4)
	sh2add t0, a0, a5
	lw t1, 0(t0)
	subw a5, zero, t1
	li t1, 60000
	sw a5, 56(a4)
	add a5, a3, t1
	sh2add t0, a0, a5
	lw a3, 0(t0)
	subw a5, zero, a3
	li a3, 992
	sw a5, 60(a4)
	blt a2, a3, label34
	li t2, 4000
	ld a5, 104(sp)
	sh2add a1, a2, a1
	mul a4, a2, t2
	add a3, a5, a4
	add a2, a3, t2
	sh2add t0, a0, a3
	lw a5, 0(t0)
	sh2add t0, a0, a2
	subw a4, zero, a5
	add a2, a3, s0
	sw a4, 0(a1)
	lw a4, 0(t0)
	subw a5, zero, a4
	sh2add a4, a0, a2
	sw a5, 4(a1)
	lw a5, 0(a4)
	subw a2, zero, a5
	add a5, a3, s1
	sw a2, 8(a1)
	sh2add a2, a0, a5
	lw a4, 0(a2)
	add a2, a3, s2
	subw a5, zero, a4
	sw a5, 12(a1)
	sh2add a5, a0, a2
	lw a4, 0(a5)
	add a5, a3, s3
	subw a2, zero, a4
	sh2add t0, a0, a5
	add a5, a3, s4
	sw a2, 16(a1)
	lw a4, 0(t0)
	subw a2, zero, a4
	sh2add a4, a0, a5
	sw a2, 20(a1)
	lw t0, 0(a4)
	add a4, a3, s5
	subw a2, zero, t0
	sh2add a3, a0, a4
	addiw a0, a0, 1
	sw a2, 24(a1)
	lw a2, 0(a3)
	subw a4, zero, a2
	sw a4, 28(a1)
	j label22
label294:
	mv s0, zero
	mv a1, zero
label24:
	li a0, 1000
	bge a1, a0, label27
	li t2, 4000
	ld a5, 104(sp)
	mv a3, zero
	mv a4, s0
	mul a0, a1, t2
	add a2, a5, a0
	j label29
label32:
	sh2add a2, a3, a2
	addiw a1, a1, 1
	lw a3, 0(a2)
	lw a5, 4(a2)
	addw a0, a0, a3
	lw a4, 8(a2)
	addw a3, a0, a5
	lw a5, 12(a2)
	addw a0, a3, a4
	lw a4, 16(a2)
	addw a3, a0, a5
	lw a5, 20(a2)
	addw a0, a3, a4
	lw a4, 24(a2)
	addw a3, a0, a5
	lw a5, 28(a2)
	addw a0, a3, a4
	lw a4, 32(a2)
	addw a3, a0, a5
	addw a0, a3, a4
	lw a3, 36(a2)
	addw a4, a0, a3
	lw a0, 40(a2)
	addw a3, a4, a0
	lw a4, 44(a2)
	lw a5, 48(a2)
	addw a0, a3, a4
	lw a4, 52(a2)
	addw a3, a0, a5
	lw a5, 56(a2)
	addw a0, a3, a4
	lw a4, 60(a2)
	addw a3, a0, a5
	lw a5, 64(a2)
	addw a0, a3, a4
	lw a4, 68(a2)
	addw a3, a0, a5
	addw a0, a3, a4
	lw a3, 72(a2)
	addw a4, a0, a3
	lw a0, 76(a2)
	lw a5, 80(a2)
	addw a3, a4, a0
	lw a4, 84(a2)
	addw a0, a3, a5
	addw a3, a0, a4
	lw a0, 88(a2)
	addw a4, a3, a0
	lw a3, 92(a2)
	addw a0, a4, a3
	lw a4, 96(a2)
	lw a5, 100(a2)
	addw a3, a0, a4
	lw a4, 104(a2)
	addw a0, a3, a5
	lw a5, 108(a2)
	addw a3, a0, a4
	lw a4, 112(a2)
	addw a0, a3, a5
	lw t0, 116(a2)
	addw a3, a0, a4
	lw a5, 120(a2)
	addw a0, a3, t0
	lw a4, 124(a2)
	addw a3, a0, a5
	lw a5, 128(a2)
	addw a0, a3, a4
	lw a4, 132(a2)
	addw a3, a0, a5
	lw a5, 136(a2)
	addw a0, a3, a4
	lw a4, 140(a2)
	addw a3, a0, a5
	addw a0, a3, a4
	lw a3, 144(a2)
	addw a4, a0, a3
	lw a0, 148(a2)
	addw a3, a4, a0
	lw a4, 152(a2)
	lw a2, 156(a2)
	addw a0, a3, a4
	addw s0, a0, a2
	j label24
.p2align 2
label29:
	sh2add a0, a3, a2
	addiw a3, a3, 64
	lw a5, 0(a0)
	lw t1, 4(a0)
	addw a4, a4, a5
	addw t0, a4, t1
	lw a4, 8(a0)
	addw a5, t0, a4
	lw t0, 12(a0)
	addw a4, a5, t0
	lw a5, 16(a0)
	addw t0, a4, a5
	lw a4, 20(a0)
	addw a5, t0, a4
	lw t0, 24(a0)
	lw t1, 28(a0)
	addw a4, a5, t0
	lw t0, 32(a0)
	addw a5, a4, t1
	addw a4, a5, t0
	lw a5, 36(a0)
	addw t0, a4, a5
	lw a4, 40(a0)
	lw t1, 44(a0)
	addw a5, t0, a4
	lw t0, 48(a0)
	addw a4, a5, t1
	lw t1, 52(a0)
	addw a5, a4, t0
	lw t0, 56(a0)
	addw a4, a5, t1
	lw t1, 60(a0)
	addw a5, a4, t0
	lw t0, 64(a0)
	addw a4, a5, t1
	addw a5, a4, t0
	lw a4, 68(a0)
	addw t0, a5, a4
	lw a5, 72(a0)
	lw t1, 76(a0)
	addw a4, t0, a5
	lw t0, 80(a0)
	addw a5, a4, t1
	addw a4, a5, t0
	lw a5, 84(a0)
	addw t0, a4, a5
	lw a4, 88(a0)
	addw a5, t0, a4
	lw t0, 92(a0)
	lw t1, 96(a0)
	addw a4, a5, t0
	lw t0, 100(a0)
	addw a5, a4, t1
	addw a4, a5, t0
	lw a5, 104(a0)
	addw t0, a4, a5
	lw a4, 108(a0)
	addw a5, t0, a4
	lw t0, 112(a0)
	lw t1, 116(a0)
	addw a4, a5, t0
	lw t0, 120(a0)
	addw a5, a4, t1
	lw t1, 124(a0)
	addw a4, a5, t0
	lw t0, 128(a0)
	addw a5, a4, t1
	lw t1, 132(a0)
	addw a4, a5, t0
	lw t2, 136(a0)
	addw a5, a4, t1
	lw t0, 140(a0)
	addw a4, a5, t2
	lw t1, 144(a0)
	addw a5, a4, t0
	lw t0, 148(a0)
	addw a4, a5, t1
	lw t1, 152(a0)
	addw a5, a4, t0
	lw t0, 156(a0)
	addw a4, a5, t1
	lw t1, 160(a0)
	addw a5, a4, t0
	lw t0, 164(a0)
	addw a4, a5, t1
	lw t1, 168(a0)
	addw a5, a4, t0
	addw a4, a5, t1
	lw a5, 172(a0)
	addw t0, a4, a5
	lw a4, 176(a0)
	lw t1, 180(a0)
	addw a5, t0, a4
	lw t0, 184(a0)
	addw a4, a5, t1
	lw t1, 188(a0)
	addw a5, a4, t0
	lw t0, 192(a0)
	addw a4, a5, t1
	addw a5, a4, t0
	lw a4, 196(a0)
	addw t0, a5, a4
	lw a5, 200(a0)
	addw a4, t0, a5
	lw t0, 204(a0)
	addw a5, a4, t0
	lw a4, 208(a0)
	addw t0, a5, a4
	lw a5, 212(a0)
	lw t1, 216(a0)
	addw a4, t0, a5
	lw t0, 220(a0)
	addw a5, a4, t1
	lw t1, 224(a0)
	addw a4, a5, t0
	lw t0, 228(a0)
	addw a5, a4, t1
	lw t1, 232(a0)
	addw a4, a5, t0
	lw t0, 236(a0)
	addw a5, a4, t1
	addw a4, a5, t0
	lw a5, 240(a0)
	addw t0, a4, a5
	lw a4, 244(a0)
	addw a5, t0, a4
	lw t0, 248(a0)
	addw a4, a5, t0
	lw a5, 252(a0)
	addw a0, a4, a5
	li a4, 960
	bge a3, a4, label32
	mv a4, a0
	j label29
label27:
	li a0, 92
	jal _sysy_stoptime
	mv a0, s0
	jal putint
	mv a0, zero
	j label6
