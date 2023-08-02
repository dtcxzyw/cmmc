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
pcrel2033:
	auipc a0, %pcrel_hi(a)
pcrel2034:
	auipc a1, %pcrel_hi(c)
	sd ra, 0(sp)
	addi a5, a1, %pcrel_lo(pcrel2034)
	sd s10, 8(sp)
	addi s10, a0, %pcrel_lo(pcrel2033)
	sd s9, 16(sp)
pcrel2035:
	auipc a0, %pcrel_hi(b)
	sd s11, 24(sp)
	addi s9, a0, %pcrel_lo(pcrel2035)
	mv s11, zero
	sd s0, 32(sp)
	li s0, 4000
	sd s5, 40(sp)
	sd s1, 48(sp)
	slli s1, s0, 1
	sd s6, 56(sp)
	li s6, 28000
	sd s2, 64(sp)
	li s2, 12000
	sd s3, 72(sp)
	slli s5, s2, 1
	slli s3, s1, 1
	sd s4, 80(sp)
	li s4, 20000
	sd s7, 88(sp)
	slli s7, s3, 1
	sd s8, 96(sp)
	li s8, 36000
	sd a5, 104(sp)
label2:
	li a0, 1000
	bge s11, a0, label8
	mul a1, s11, s0
	add a0, s10, a1
	jal getarray
	li a1, 1000
	beq a0, a1, label5
label6:
	ld ra, 0(sp)
	ld s10, 8(sp)
	ld s9, 16(sp)
	ld s11, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s1, 48(sp)
	ld s6, 56(sp)
	ld s2, 64(sp)
	ld s3, 72(sp)
	ld s4, 80(sp)
	ld s7, 88(sp)
	ld s8, 96(sp)
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
	mul a1, a0, s0
	mv a4, zero
	add a3, s9, a1
.p2align 2
label45:
	mul a1, a4, s0
	add a2, s10, a1
	sh2add a1, a4, a3
	add t2, a2, s5
	sh2add t0, a0, a2
	addiw a4, a4, 64
	lw a5, 0(t0)
	sw a5, 0(a1)
	add a5, a2, s0
	sh2add t1, a0, a5
	lw t0, 0(t1)
	add t1, a2, s1
	sw t0, 4(a1)
	sh2add t0, a0, t1
	add t1, a2, s2
	lw a5, 0(t0)
	sh2add t0, a0, t1
	add t1, a2, s3
	sw a5, 8(a1)
	lw a5, 0(t0)
	sw a5, 12(a1)
	sh2add a5, a0, t1
	lw t0, 0(a5)
	add a5, a2, s4
	sw t0, 16(a1)
	sh2add t0, a0, a5
	lw t1, 0(t0)
	sh2add t0, a0, t2
	li t2, 40000
	sw t1, 20(a1)
	lw a5, 0(t0)
	add t0, a2, s6
	sw a5, 24(a1)
	sh2add a5, a0, t0
	lw t1, 0(a5)
	add a5, a2, s7
	sw t1, 28(a1)
	sh2add t1, a0, a5
	lw t0, 0(t1)
	add t1, a2, s8
	sw t0, 32(a1)
	sh2add t0, a0, t1
	lw a5, 0(t0)
	add t0, a2, t2
	li t2, 44000
	sh2add t1, a0, t0
	sw a5, 36(a1)
	lw a5, 0(t1)
	add t1, a2, t2
	li t2, 52000
	sh2add t0, a0, t1
	sw a5, 40(a1)
	li t1, 48000
	lw a5, 0(t0)
	add t0, a2, t1
	sw a5, 44(a1)
	sh2add a5, a0, t0
	add t0, a2, t2
	lw t1, 0(a5)
	li t2, 68000
	sh2add a5, a0, t0
	sw t1, 48(a1)
	lw t1, 0(a5)
	li a5, 56000
	sw t1, 52(a1)
	add t1, a2, a5
	sh2add t0, a0, t1
	lw a5, 0(t0)
	li t0, 60000
	add t1, a2, t0
	sw a5, 56(a1)
	sh2add a5, a0, t1
	lw t0, 0(a5)
	li a5, 64000
	add t1, a2, a5
	sw t0, 60(a1)
	sh2add t0, a0, t1
	lw a5, 0(t0)
	add t0, a2, t2
	li t2, 104000
	sh2add t1, a0, t0
	sw a5, 64(a1)
	li t0, 72000
	lw a5, 0(t1)
	sw a5, 68(a1)
	add a5, a2, t0
	sh2add t1, a0, a5
	lw t0, 0(t1)
	li t1, 76000
	add a5, a2, t1
	sw t0, 72(a1)
	sh2add t0, a0, a5
	li a5, 80000
	lw t1, 0(t0)
	add t0, a2, a5
	sw t1, 76(a1)
	sh2add t1, a0, t0
	lw a5, 0(t1)
	li t1, 84000
	sw a5, 80(a1)
	add a5, a2, t1
	sh2add t0, a0, a5
	li a5, 88000
	lw t1, 0(t0)
	add t0, a2, a5
	sw t1, 84(a1)
	sh2add t1, a0, t0
	li t0, 92000
	lw a5, 0(t1)
	sw a5, 88(a1)
	add a5, a2, t0
	sh2add t1, a0, a5
	lw t0, 0(t1)
	li t1, 96000
	sw t0, 92(a1)
	add t0, a2, t1
	sh2add a5, a0, t0
	li t0, 100000
	lw t1, 0(a5)
	add a5, a2, t0
	sw t1, 96(a1)
	sh2add t1, a0, a5
	add a5, a2, t2
	lw t0, 0(t1)
	li t2, 144000
	sh2add t1, a0, a5
	sw t0, 100(a1)
	lw t0, 0(t1)
	li t1, 108000
	add a5, a2, t1
	sw t0, 104(a1)
	sh2add t0, a0, a5
	lw t1, 0(t0)
	li t0, 112000
	sw t1, 108(a1)
	add t1, a2, t0
	sh2add a5, a0, t1
	li t1, 116000
	lw t0, 0(a5)
	add a5, a2, t1
	sw t0, 112(a1)
	sh2add t0, a0, a5
	lw t1, 0(t0)
	li t0, 120000
	sw t1, 116(a1)
	add t1, a2, t0
	sh2add a5, a0, t1
	li t1, 124000
	lw t0, 0(a5)
	add a5, a2, t1
	sw t0, 120(a1)
	sh2add t0, a0, a5
	lw t1, 0(t0)
	li t0, 128000
	add a5, a2, t0
	sw t1, 124(a1)
	sh2add t1, a0, a5
	lw t0, 0(t1)
	li t1, 132000
	add a5, a2, t1
	sw t0, 128(a1)
	sh2add t0, a0, a5
	lw t1, 0(t0)
	li t0, 136000
	sw t1, 132(a1)
	add t1, a2, t0
	sh2add a5, a0, t1
	li t1, 140000
	lw t0, 0(a5)
	add a5, a2, t1
	sw t0, 136(a1)
	sh2add t0, a0, a5
	add a5, a2, t2
	lw t1, 0(t0)
	li t2, 156000
	sh2add t0, a0, a5
	sw t1, 140(a1)
	lw t1, 0(t0)
	li t0, 148000
	add a5, a2, t0
	sw t1, 144(a1)
	sh2add t1, a0, a5
	li a5, 152000
	lw t0, 0(t1)
	add t1, a2, a5
	sw t0, 148(a1)
	sh2add t0, a0, t1
	add t1, a2, t2
	lw a5, 0(t0)
	li t2, 160000
	sh2add t0, a0, t1
	sw a5, 152(a1)
	lw a5, 0(t0)
	add t0, a2, t2
	li t2, 200000
	sh2add t1, a0, t0
	sw a5, 156(a1)
	lw a5, 0(t1)
	li t1, 164000
	sw a5, 160(a1)
	add a5, a2, t1
	sh2add t0, a0, a5
	li a5, 168000
	lw t1, 0(t0)
	sw t1, 164(a1)
	add t1, a2, a5
	sh2add t0, a0, t1
	lw a5, 0(t0)
	li t0, 172000
	sw a5, 168(a1)
	add a5, a2, t0
	sh2add t1, a0, a5
	li a5, 176000
	lw t0, 0(t1)
	sw t0, 172(a1)
	add t0, a2, a5
	sh2add t1, a0, t0
	lw a5, 0(t1)
	li t1, 180000
	sw a5, 176(a1)
	add a5, a2, t1
	sh2add t0, a0, a5
	lw t1, 0(t0)
	li t0, 184000
	add a5, a2, t0
	sw t1, 180(a1)
	sh2add t1, a0, a5
	li a5, 188000
	lw t0, 0(t1)
	sw t0, 184(a1)
	add t0, a2, a5
	sh2add t1, a0, t0
	lw a5, 0(t1)
	li t1, 192000
	sw a5, 188(a1)
	add a5, a2, t1
	sh2add t0, a0, a5
	lw t1, 0(t0)
	li t0, 196000
	add a5, a2, t0
	sw t1, 192(a1)
	sh2add t1, a0, a5
	lw t0, 0(t1)
	add t1, a2, t2
	li t2, 204000
	sh2add a5, a0, t1
	sw t0, 196(a1)
	add t1, a2, t2
	lw t0, 0(a5)
	li t2, 220000
	sh2add a5, a0, t1
	sw t0, 200(a1)
	lw t0, 0(a5)
	li a5, 208000
	add t1, a2, a5
	sw t0, 204(a1)
	sh2add t0, a0, t1
	li t1, 212000
	lw a5, 0(t0)
	sw a5, 208(a1)
	add a5, a2, t1
	sh2add t0, a0, a5
	li a5, 216000
	lw t1, 0(t0)
	sw t1, 212(a1)
	add t1, a2, a5
	sh2add t0, a0, t1
	lw a5, 0(t0)
	add t0, a2, t2
	li t2, 224000
	sh2add t1, a0, t0
	sw a5, 216(a1)
	add t0, a2, t2
	lw a5, 0(t1)
	li t2, 228000
	sh2add t1, a0, t0
	sw a5, 220(a1)
	lw a5, 0(t1)
	add t1, a2, t2
	li t2, 232000
	sh2add t0, a0, t1
	sw a5, 224(a1)
	lw a5, 0(t0)
	add t0, a2, t2
	sh2add t1, a0, t0
	sw a5, 228(a1)
	li t0, 236000
	lw a5, 0(t1)
	sw a5, 232(a1)
	add a5, a2, t0
	sh2add t1, a0, a5
	lw t0, 0(t1)
	li t1, 240000
	sw t0, 236(a1)
	add t0, a2, t1
	sh2add a5, a0, t0
	lw t1, 0(a5)
	li a5, 244000
	add t0, a2, a5
	sw t1, 240(a1)
	sh2add t1, a0, t0
	lw a5, 0(t1)
	li t1, 248000
	add t0, a2, t1
	sw a5, 244(a1)
	sh2add a5, a0, t0
	lw t1, 0(a5)
	li a5, 252000
	add a2, a2, a5
	sw t1, 248(a1)
	sh2add t0, a0, a2
	lw a5, 0(t0)
	sw a5, 252(a1)
	li a1, 960
	blt a4, a1, label45
	mul a2, a4, s0
	add a1, s10, a2
	sh2add a2, a4, a3
	sh2add t0, a0, a1
	add a4, a1, s0
	sh2add a3, a0, a4
	add a4, a1, s1
	lw a5, 0(t0)
	li t0, 44000
	sw a5, 0(a2)
	lw a5, 0(a3)
	sw a5, 4(a2)
	sh2add a5, a0, a4
	lw a3, 0(a5)
	add a5, a1, s2
	sh2add a4, a0, a5
	sw a3, 8(a2)
	add a5, a1, s3
	lw a3, 0(a4)
	sw a3, 12(a2)
	sh2add a3, a0, a5
	lw a4, 0(a3)
	add a3, a1, s4
	sh2add a5, a0, a3
	sw a4, 16(a2)
	lw a4, 0(a5)
	add a5, a1, s5
	sw a4, 20(a2)
	sh2add a4, a0, a5
	add a5, a1, s6
	lw a3, 0(a4)
	sw a3, 24(a2)
	sh2add a3, a0, a5
	lw a4, 0(a3)
	add a3, a1, s7
	sh2add a5, a0, a3
	sw a4, 28(a2)
	lw a4, 0(a5)
	add a5, a1, s8
	sw a4, 32(a2)
	sh2add a4, a0, a5
	lw a3, 0(a4)
	li a4, 40000
	add a5, a1, a4
	sw a3, 36(a2)
	sh2add a3, a0, a5
	lw a4, 0(a3)
	add a3, a1, t0
	li t0, 60000
	sh2add a5, a0, a3
	sw a4, 40(a2)
	li a3, 48000
	lw a4, 0(a5)
	add a5, a1, a3
	sw a4, 44(a2)
	sh2add a4, a0, a5
	li a5, 52000
	lw a3, 0(a4)
	sw a3, 48(a2)
	add a3, a1, a5
	sh2add a4, a0, a3
	li a3, 56000
	lw a5, 0(a4)
	sw a5, 52(a2)
	add a5, a1, a3
	sh2add a4, a0, a5
	add a5, a1, t0
	lw a3, 0(a4)
	li t0, 72000
	sh2add a4, a0, a5
	sw a3, 56(a2)
	lw a3, 0(a4)
	li a4, 64000
	add a5, a1, a4
	sw a3, 60(a2)
	sh2add a3, a0, a5
	lw a4, 0(a3)
	li a3, 68000
	add a5, a1, a3
	sw a4, 64(a2)
	sh2add a4, a0, a5
	add a5, a1, t0
	li t0, 84000
	lw a3, 0(a4)
	sh2add a4, a0, a5
	sw a3, 68(a2)
	lw a3, 0(a4)
	li a4, 76000
	add a5, a1, a4
	sw a3, 72(a2)
	sh2add a3, a0, a5
	lw a4, 0(a3)
	li a3, 80000
	add a5, a1, a3
	sw a4, 76(a2)
	sh2add a4, a0, a5
	add a5, a1, t0
	li t0, 88000
	lw a3, 0(a4)
	sh2add a4, a0, a5
	sw a3, 80(a2)
	lw a3, 0(a4)
	add a4, a1, t0
	li t0, 92000
	sh2add a5, a0, a4
	sw a3, 84(a2)
	add a4, a1, t0
	lw a3, 0(a5)
	li t0, 96000
	sh2add a5, a0, a4
	sw a3, 88(a2)
	lw a3, 0(a5)
	add a5, a1, t0
	li t0, 116000
	sh2add a4, a0, a5
	sw a3, 92(a2)
	lw a3, 0(a4)
	li a4, 100000
	add a5, a1, a4
	sw a3, 96(a2)
	sh2add a3, a0, a5
	lw a4, 0(a3)
	li a3, 104000
	add a5, a1, a3
	sw a4, 100(a2)
	sh2add a4, a0, a5
	lw a3, 0(a4)
	li a4, 108000
	sw a3, 104(a2)
	add a3, a1, a4
	sh2add a5, a0, a3
	li a3, 112000
	lw a4, 0(a5)
	add a5, a1, a3
	sw a4, 108(a2)
	sh2add a4, a0, a5
	add a5, a1, t0
	lw a3, 0(a4)
	li t0, 120000
	sh2add a4, a0, a5
	add a5, a1, t0
	sw a3, 112(a2)
	li t0, 124000
	lw a3, 0(a4)
	sh2add a4, a0, a5
	add a5, a1, t0
	sw a3, 116(a2)
	li t0, 136000
	lw a3, 0(a4)
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
	mul a0, a2, s0
	ld a5, 104(sp)
	li a4, 1000
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
	mul t0, a4, s0
	add t1, s9, t0
	sh2add t3, a0, t1
	add t6, t1, s0
	sh2add t0, a4, a1
	sh2add t4, a0, t6
	addiw a4, a4, 16
	lw t2, 0(t0)
	lw t3, 0(t3)
	lw t5, 4(t0)
	lw t6, 0(t4)
	mulw t3, t2, t3
	mulw t4, t5, t6
	li t6, 44000
	add t5, t1, s1
	addw t2, t4, t3
	lw t3, 8(t0)
	sh2add t4, a0, t5
	lw t5, 0(t4)
	mulw t4, t3, t5
	add t5, t1, s2
	addw t2, t2, t4
	sh2add t3, a0, t5
	lw t4, 12(t0)
	lw t5, 0(t3)
	mulw t3, t4, t5
	add t5, t1, s3
	addw t2, t2, t3
	sh2add t4, a0, t5
	lw t3, 16(t0)
	lw t5, 0(t4)
	mulw t4, t3, t5
	add t5, t1, s4
	addw t2, t2, t4
	sh2add t3, a0, t5
	lw t4, 20(t0)
	lw t5, 0(t3)
	mulw t3, t4, t5
	lw t4, 24(t0)
	add t5, t1, s5
	addw t2, t2, t3
	sh2add t3, a0, t5
	lw t5, 0(t3)
	mulw t3, t4, t5
	add t5, t1, s6
	addw t2, t2, t3
	sh2add t4, a0, t5
	lw t3, 28(t0)
	lw t5, 0(t4)
	mulw t4, t3, t5
	lw t3, 32(t0)
	add t5, t1, s7
	addw t2, t2, t4
	sh2add t4, a0, t5
	lw t5, 0(t4)
	mulw t4, t3, t5
	add t5, t1, s8
	addw t2, t2, t4
	sh2add t3, a0, t5
	lw t4, 36(t0)
	lw t5, 0(t3)
	mulw t3, t4, t5
	li t4, 40000
	addw t2, t2, t3
	add t5, t1, t4
	lw t4, 40(t0)
	sh2add t3, a0, t5
	lw t5, 0(t3)
	mulw t3, t4, t5
	add t5, t1, t6
	addw t2, t2, t3
	li t6, 56000
	sh2add t4, a0, t5
	lw t3, 44(t0)
	lw t5, 0(t4)
	mulw t4, t3, t5
	li t3, 48000
	addw t2, t2, t4
	add t5, t1, t3
	lw t3, 48(t0)
	sh2add t4, a0, t5
	lw t5, 0(t4)
	mulw t4, t3, t5
	li t3, 52000
	addw t2, t2, t4
	add t5, t1, t3
	lw t3, 52(t0)
	sh2add t4, a0, t5
	lw t5, 0(t4)
	mulw t4, t3, t5
	add t5, t1, t6
	addw t2, t2, t4
	sh2add t3, a0, t5
	lw t4, 56(t0)
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
	mul t1, a4, s0
	sh2add a4, a4, a1
	add t0, s9, t1
	add t5, t0, s0
	sh2add t2, a0, t0
	lw t1, 0(a4)
	sh2add t3, a0, t5
	lw t2, 0(t2)
	lw t4, 4(a4)
	lw t5, 0(t3)
	mulw t1, t1, t2
	addw t2, a5, t1
	mulw t3, t4, t5
	lw t1, 8(a4)
	addw a5, t3, t2
	add t3, t0, s1
	sh2add t2, a0, t3
	lw t3, 0(t2)
	mulw t2, t1, t3
	add t3, t0, s2
	addw a5, a5, t2
	sh2add t1, a0, t3
	lw t2, 12(a4)
	lw t3, 0(t1)
	mulw t1, t2, t3
	add t3, t0, s3
	addw a5, a5, t1
	sh2add t2, a0, t3
	lw t1, 16(a4)
	lw t3, 0(t2)
	mulw t2, t1, t3
	lw t1, 20(a4)
	add t3, t0, s4
	addw a5, a5, t2
	sh2add t2, a0, t3
	lw t3, 0(t2)
	mulw t2, t1, t3
	lw t1, 24(a4)
	add t3, t0, s5
	addw a5, a5, t2
	sh2add t2, a0, t3
	lw t3, 0(t2)
	lw a4, 28(a4)
	mulw t2, t1, t3
	add t1, t0, s6
	addw a5, a5, t2
	sh2add t0, a0, t1
	lw t1, 0(t0)
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
	mul a2, a0, s0
	ld a5, 104(sp)
	add a1, a5, a2
	li a2, 1000
	blt a0, a2, label291
	j label290
label40:
	sh2add a3, a3, a1
	lw a4, 0(a3)
	lw a5, 4(a3)
	min a2, a2, a4
	min a4, a2, a5
	lw a2, 8(a3)
	min a5, a4, a2
	lw a4, 12(a3)
	min a2, a5, a4
	lw a5, 16(a3)
	min a4, a2, a5
	lw a2, 20(a3)
	min a5, a4, a2
	lw a4, 24(a3)
	min a2, a5, a4
	lw a5, 28(a3)
	lw t0, 32(a3)
	min a4, a2, a5
	lw a5, 36(a3)
	min a2, a4, t0
	lw t0, 40(a3)
	min a4, a2, a5
	lw a5, 44(a3)
	min a2, a4, t0
	lw t0, 48(a3)
	min a4, a2, a5
	lw a5, 52(a3)
	min a2, a4, t0
	lw t0, 56(a3)
	min a4, a2, a5
	lw a5, 60(a3)
	min a2, a4, t0
	lw t0, 64(a3)
	min a4, a2, a5
	min a2, a4, t0
	lw a4, 68(a3)
	min a5, a2, a4
	lw a2, 72(a3)
	min a4, a5, a2
	lw a5, 76(a3)
	lw t0, 80(a3)
	min a2, a4, a5
	lw a5, 84(a3)
	min a4, a2, t0
	lw t0, 88(a3)
	min a2, a4, a5
	lw a5, 92(a3)
	min a4, a2, t0
	lw t0, 96(a3)
	min a2, a4, a5
	lw a5, 100(a3)
	min a4, a2, t0
	lw t0, 104(a3)
	min a2, a4, a5
	lw a5, 108(a3)
	min a4, a2, t0
	lw t0, 112(a3)
	min a2, a4, a5
	lw a5, 116(a3)
	min a4, a2, t0
	lw t0, 120(a3)
	min a2, a4, a5
	min a4, a2, t0
	lw a2, 124(a3)
	min a5, a4, a2
	lw a4, 128(a3)
	min a2, a5, a4
	lw a5, 132(a3)
	lw t0, 136(a3)
	min a4, a2, a5
	lw a5, 140(a3)
	min a2, a4, t0
	min a4, a2, a5
	lw a2, 144(a3)
	min a5, a4, a2
	lw a4, 148(a3)
	min a2, a5, a4
	lw a5, 152(a3)
	lw a3, 156(a3)
	min a4, a2, a5
	mv a5, zero
	min a2, a4, a3
.p2align 2
label41:
	sh2add a3, a5, a1
	slli t0, a2, 32
	addiw a5, a5, 64
	add.uw a4, a2, t0
	sd a4, 0(a3)
	sd a4, 8(a3)
	sd a4, 16(a3)
	sd a4, 24(a3)
	sd a4, 32(a3)
	sd a4, 40(a3)
	sd a4, 48(a3)
	sd a4, 56(a3)
	sd a4, 64(a3)
	sd a4, 72(a3)
	sd a4, 80(a3)
	sd a4, 88(a3)
	sd a4, 96(a3)
	sd a4, 104(a3)
	sd a4, 112(a3)
	sd a4, 120(a3)
	sd a4, 128(a3)
	sd a4, 136(a3)
	sd a4, 144(a3)
	sd a4, 152(a3)
	sd a4, 160(a3)
	sd a4, 168(a3)
	sd a4, 176(a3)
	sd a4, 184(a3)
	sd a4, 192(a3)
	sd a4, 200(a3)
	sd a4, 208(a3)
	sd a4, 216(a3)
	sd a4, 224(a3)
	sd a4, 232(a3)
	sd a4, 240(a3)
	sd a4, 248(a3)
	li a3, 960
	blt a5, a3, label41
	sh2add a1, a5, a1
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
	lw t0, 4(a2)
	min a4, a4, a5
	min a5, a4, t0
	lw a4, 8(a2)
	min t0, a5, a4
	lw a5, 12(a2)
	min a4, t0, a5
	lw t0, 16(a2)
	lw t1, 20(a2)
	min a5, a4, t0
	lw t0, 24(a2)
	min a4, a5, t1
	lw t1, 28(a2)
	min a5, a4, t0
	lw t0, 32(a2)
	min a4, a5, t1
	lw t1, 36(a2)
	min a5, a4, t0
	lw t0, 40(a2)
	min a4, a5, t1
	lw t1, 44(a2)
	min a5, a4, t0
	min a4, a5, t1
	lw a5, 48(a2)
	min t0, a4, a5
	lw a4, 52(a2)
	min a5, t0, a4
	lw t0, 56(a2)
	lw t1, 60(a2)
	min a4, a5, t0
	lw t0, 64(a2)
	min a5, a4, t1
	lw t1, 68(a2)
	min a4, a5, t0
	lw t0, 72(a2)
	min a5, a4, t1
	lw t1, 76(a2)
	min a4, a5, t0
	lw t0, 80(a2)
	min a5, a4, t1
	lw t1, 84(a2)
	min a4, a5, t0
	min a5, a4, t1
	lw a4, 88(a2)
	lw t1, 92(a2)
	min t0, a5, a4
	lw a5, 96(a2)
	min a4, t0, t1
	min t0, a4, a5
	lw a4, 100(a2)
	min a5, t0, a4
	lw t0, 104(a2)
	lw t1, 108(a2)
	min a4, a5, t0
	min a5, a4, t1
	lw a4, 112(a2)
	min t0, a5, a4
	lw a5, 116(a2)
	lw t1, 120(a2)
	min a4, t0, a5
	min t0, a4, t1
	lw a4, 124(a2)
	lw t1, 128(a2)
	min a5, t0, a4
	lw t0, 132(a2)
	min a4, a5, t1
	lw t1, 136(a2)
	min a5, a4, t0
	lw t0, 140(a2)
	min a4, a5, t1
	min a5, a4, t0
	lw a4, 144(a2)
	min t0, a5, a4
	lw a5, 148(a2)
	min a4, t0, a5
	lw t0, 152(a2)
	min a5, a4, t0
	lw a4, 156(a2)
	min t0, a5, a4
	lw a5, 160(a2)
	min a4, t0, a5
	lw t0, 164(a2)
	lw t1, 168(a2)
	min a5, a4, t0
	min a4, a5, t1
	lw a5, 172(a2)
	min t0, a4, a5
	lw a4, 176(a2)
	min a5, t0, a4
	lw t0, 180(a2)
	lw t1, 184(a2)
	min a4, a5, t0
	lw t0, 188(a2)
	min a5, a4, t1
	lw t1, 192(a2)
	min a4, a5, t0
	lw t0, 196(a2)
	min a5, a4, t1
	min a4, a5, t0
	lw a5, 200(a2)
	min t0, a4, a5
	lw a4, 204(a2)
	min a5, t0, a4
	lw t0, 208(a2)
	lw t1, 212(a2)
	min a4, a5, t0
	lw t0, 216(a2)
	min a5, a4, t1
	lw t1, 220(a2)
	min a4, a5, t0
	lw t0, 224(a2)
	min a5, a4, t1
	lw t1, 228(a2)
	min a4, a5, t0
	lw t0, 232(a2)
	min a5, a4, t1
	lw t1, 236(a2)
	min a4, a5, t0
	min a5, a4, t1
	lw a4, 240(a2)
	min t0, a5, a4
	lw a5, 244(a2)
	min a4, t0, a5
	lw t0, 248(a2)
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
	mul a2, a0, s0
	ld a5, 104(sp)
	add a1, a5, a2
	mv a2, zero
.p2align 2
label34:
	mul a3, a2, s0
	ld a5, 104(sp)
	add a4, a5, a3
	sh2add a3, a0, a4
	add t2, a4, s1
	lw t0, 0(a3)
	sh2add a3, a2, a1
	subw a5, zero, t0
	addiw a2, a2, 16
	add t0, a4, s0
	sw a5, 0(a3)
	sh2add a5, a0, t0
	lw t1, 0(a5)
	sh2add a5, a0, t2
	subw t0, zero, t1
	add t2, a4, s4
	sw t0, 4(a3)
	lw t1, 0(a5)
	subw t0, zero, t1
	add t1, a4, s2
	sh2add a5, a0, t1
	sw t0, 8(a3)
	lw t0, 0(a5)
	subw t1, zero, t0
	add t0, a4, s3
	sh2add a5, a0, t0
	sw t1, 12(a3)
	lw t1, 0(a5)
	subw t0, zero, t1
	sh2add t1, a0, t2
	sw t0, 16(a3)
	lw a5, 0(t1)
	subw t0, zero, a5
	add a5, a4, s5
	sh2add t1, a0, a5
	sw t0, 20(a3)
	lw t0, 0(t1)
	add t1, a4, s6
	subw a5, zero, t0
	sh2add t2, a0, t1
	sw a5, 24(a3)
	lw t0, 0(t2)
	subw a5, zero, t0
	add t0, a4, s7
	sh2add t1, a0, t0
	sw a5, 28(a3)
	add t0, a4, s8
	lw t2, 0(t1)
	sh2add t1, a0, t0
	subw a5, zero, t2
	li t2, 40000
	sw a5, 32(a3)
	lw a5, 0(t1)
	subw t0, zero, a5
	add a5, a4, t2
	li t2, 52000
	sh2add t1, a0, a5
	sw t0, 36(a3)
	lw t0, 0(t1)
	li t1, 44000
	subw a5, zero, t0
	sw a5, 40(a3)
	add a5, a4, t1
	sh2add t0, a0, a5
	lw t1, 0(t0)
	subw a5, zero, t1
	li t1, 48000
	sw a5, 44(a3)
	add a5, a4, t1
	sh2add t0, a0, a5
	lw t1, 0(t0)
	add t0, a4, t2
	subw a5, zero, t1
	sh2add t1, a0, t0
	sw a5, 48(a3)
	lw a5, 0(t1)
	li t1, 56000
	subw t0, zero, a5
	add a5, a4, t1
	sw t0, 52(a3)
	sh2add t0, a0, a5
	lw t1, 0(t0)
	subw a5, zero, t1
	li t1, 60000
	add t0, a4, t1
	sw a5, 56(a3)
	sh2add a5, a0, t0
	lw a4, 0(a5)
	subw t0, zero, a4
	sw t0, 60(a3)
	li a3, 992
	blt a2, a3, label34
	mul a4, a2, s0
	ld a5, 104(sp)
	sh2add a1, a2, a1
	add a3, a5, a4
	add a2, a3, s0
	sh2add t0, a0, a3
	lw a5, 0(t0)
	subw a4, zero, a5
	sw a4, 0(a1)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	add a4, a3, s1
	subw a2, zero, a5
	sw a2, 4(a1)
	sh2add a2, a0, a4
	lw a5, 0(a2)
	add a2, a3, s2
	subw a4, zero, a5
	sw a4, 8(a1)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	add a4, a3, s3
	subw a2, zero, a5
	sh2add t0, a0, a4
	add a4, a3, s4
	sw a2, 12(a1)
	lw a5, 0(t0)
	subw a2, zero, a5
	sw a2, 16(a1)
	sh2add a2, a0, a4
	lw a5, 0(a2)
	add a2, a3, s5
	subw a4, zero, a5
	add a3, a3, s6
	sh2add a5, a0, a2
	sw a4, 20(a1)
	lw a4, 0(a5)
	subw a2, zero, a4
	sh2add a4, a0, a3
	addiw a0, a0, 1
	sw a2, 24(a1)
	lw a2, 0(a4)
	subw a3, zero, a2
	sw a3, 28(a1)
	j label22
label294:
	mv s1, zero
	mv a1, zero
label24:
	li a0, 1000
	bge a1, a0, label27
	mul a3, a1, s0
	ld a5, 104(sp)
	mv a4, s1
	add a2, a5, a3
	mv a3, zero
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
	lw a5, 36(a2)
	addw a0, a3, a4
	lw a4, 40(a2)
	addw a3, a0, a5
	lw a5, 44(a2)
	addw a0, a3, a4
	lw a4, 48(a2)
	addw a3, a0, a5
	lw a5, 52(a2)
	addw a0, a3, a4
	lw a4, 56(a2)
	addw a3, a0, a5
	addw a0, a3, a4
	lw a3, 60(a2)
	addw a4, a0, a3
	lw a0, 64(a2)
	addw a3, a4, a0
	lw a4, 68(a2)
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
	lw a5, 96(a2)
	addw a0, a4, a3
	lw a4, 100(a2)
	addw a3, a0, a5
	addw a0, a3, a4
	lw a3, 104(a2)
	addw a4, a0, a3
	lw a0, 108(a2)
	addw a3, a4, a0
	lw a4, 112(a2)
	lw a5, 116(a2)
	addw a0, a3, a4
	addw a3, a0, a5
	lw a0, 120(a2)
	addw a4, a3, a0
	lw a3, 124(a2)
	lw a5, 128(a2)
	addw a0, a4, a3
	lw a4, 132(a2)
	addw a3, a0, a5
	addw a0, a3, a4
	lw a3, 136(a2)
	addw a4, a0, a3
	lw a0, 140(a2)
	lw a5, 144(a2)
	addw a3, a4, a0
	lw a4, 148(a2)
	addw a0, a3, a5
	lw a5, 152(a2)
	addw a3, a0, a4
	lw a2, 156(a2)
	addw a0, a3, a5
	addw s1, a0, a2
	j label24
.p2align 2
label29:
	sh2add a0, a3, a2
	addiw a3, a3, 64
	lw t1, 0(a0)
	lw t0, 4(a0)
	addw a5, a4, t1
	lw t1, 8(a0)
	addw a4, a5, t0
	lw t0, 12(a0)
	addw a5, a4, t1
	lw t1, 16(a0)
	addw a4, a5, t0
	lw t0, 20(a0)
	addw a5, a4, t1
	lw t1, 24(a0)
	addw a4, a5, t0
	lw t2, 28(a0)
	addw a5, a4, t1
	lw t0, 32(a0)
	addw a4, a5, t2
	lw t1, 36(a0)
	addw a5, a4, t0
	lw t0, 40(a0)
	addw a4, a5, t1
	lw t1, 44(a0)
	addw a5, a4, t0
	addw a4, a5, t1
	lw a5, 48(a0)
	addw t0, a4, a5
	lw a4, 52(a0)
	addw a5, t0, a4
	lw t0, 56(a0)
	lw t1, 60(a0)
	addw a4, a5, t0
	lw t0, 64(a0)
	addw a5, a4, t1
	lw t1, 68(a0)
	addw a4, a5, t0
	lw t0, 72(a0)
	addw a5, a4, t1
	lw t1, 76(a0)
	addw a4, a5, t0
	lw t0, 80(a0)
	addw a5, a4, t1
	lw t1, 84(a0)
	addw a4, a5, t0
	lw t0, 88(a0)
	addw a5, a4, t1
	lw t1, 92(a0)
	addw a4, a5, t0
	lw t0, 96(a0)
	addw a5, a4, t1
	lw t1, 100(a0)
	addw a4, a5, t0
	lw t0, 104(a0)
	addw a5, a4, t1
	lw t1, 108(a0)
	addw a4, a5, t0
	lw t0, 112(a0)
	addw a5, a4, t1
	addw a4, a5, t0
	lw a5, 116(a0)
	addw t0, a4, a5
	lw a4, 120(a0)
	addw a5, t0, a4
	lw t0, 124(a0)
	lw t2, 128(a0)
	addw a4, a5, t0
	lw t1, 132(a0)
	addw a5, a4, t2
	lw t0, 136(a0)
	addw a4, a5, t1
	addw a5, a4, t0
	lw a4, 140(a0)
	addw t0, a5, a4
	lw a5, 144(a0)
	lw t1, 148(a0)
	addw a4, t0, a5
	addw t0, a4, t1
	lw a4, 152(a0)
	lw t1, 156(a0)
	addw a5, t0, a4
	lw t0, 160(a0)
	addw a4, a5, t1
	lw t1, 164(a0)
	addw a5, a4, t0
	lw t0, 168(a0)
	addw a4, a5, t1
	lw t1, 172(a0)
	addw a5, a4, t0
	lw t0, 176(a0)
	addw a4, a5, t1
	addw a5, a4, t0
	lw a4, 180(a0)
	addw t0, a5, a4
	lw a5, 184(a0)
	lw t1, 188(a0)
	addw a4, t0, a5
	lw t0, 192(a0)
	addw a5, a4, t1
	lw t1, 196(a0)
	addw a4, a5, t0
	lw t0, 200(a0)
	addw a5, a4, t1
	lw t1, 204(a0)
	addw a4, a5, t0
	lw t0, 208(a0)
	addw a5, a4, t1
	lw t1, 212(a0)
	addw a4, a5, t0
	lw t0, 216(a0)
	addw a5, a4, t1
	lw t1, 220(a0)
	addw a4, a5, t0
	lw t0, 224(a0)
	addw a5, a4, t1
	lw t1, 228(a0)
	addw a4, a5, t0
	lw t0, 232(a0)
	addw a5, a4, t1
	lw t1, 236(a0)
	addw a4, a5, t0
	lw t0, 240(a0)
	addw a5, a4, t1
	lw t1, 244(a0)
	addw a4, a5, t0
	lw t0, 248(a0)
	addw a5, a4, t1
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
	mv a0, s1
	jal putint
	mv a0, zero
	j label6
