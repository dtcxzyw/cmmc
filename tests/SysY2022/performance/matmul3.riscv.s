.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
a:
	.zero	4000000
.align 4
b:
	.zero	4000000
.align 4
c:
	.zero	4000000
.text
.globl main
main:
.p2align 2
	addi sp, sp, -40
pcrel1952:
	auipc a0, %pcrel_hi(a)
	sd s2, 32(sp)
	addi s2, a0, %pcrel_lo(pcrel1952)
	sd s0, 24(sp)
pcrel1953:
	auipc a0, %pcrel_hi(c)
	sd s1, 16(sp)
	addi s0, a0, %pcrel_lo(pcrel1953)
	sd s3, 8(sp)
pcrel1954:
	auipc a0, %pcrel_hi(b)
	mv s3, zero
	addi s1, a0, %pcrel_lo(pcrel1954)
	sd ra, 0(sp)
label2:
	li a0, 1000
	blt s3, a0, label46
	li a0, 23
	jal _sysy_starttime
	mv a1, zero
	j label5
label46:
	li a2, 4000
	mul a1, s3, a2
	add a0, s2, a1
	jal getarray
	li a1, 1000
	bne a0, a1, label44
	addiw s3, s3, 1
	j label2
label5:
	li a0, 1000
	blt a1, a0, label60
	mv a1, zero
	j label7
label60:
	li a2, 4000
	mv a4, zero
	mul a0, a1, a2
	add a3, s1, a0
.p2align 2
label41:
	li a5, 4000
	mul a0, a4, a5
	add a2, s2, a0
	sh2add a0, a4, a3
	sh2add t1, a1, a2
	addiw a4, a4, 64
	lw t0, 0(t1)
	sw t0, 0(a0)
	add t0, a2, a5
	slli a5, a5, 1
	sh2add t1, a1, t0
	add t0, a2, a5
	lw t2, 0(t1)
	sh2add t1, a1, t0
	sw t2, 4(a0)
	lw t2, 0(t1)
	li t1, 12000
	sw t2, 8(a0)
	add t2, a2, t1
	slli t1, t1, 1
	sh2add t0, a1, t2
	lw t3, 0(t0)
	slli t0, a5, 1
	sw t3, 12(a0)
	add t3, a2, t0
	slli t0, t0, 1
	sh2add a5, a1, t3
	lw t2, 0(a5)
	li a5, 20000
	add t4, a2, a5
	sw t2, 16(a0)
	slli a5, a5, 1
	sh2add t2, a1, t4
	lw t3, 0(t2)
	add t2, a2, t1
	sw t3, 20(a0)
	sh2add t3, a1, t2
	li t2, 28000
	lw t1, 0(t3)
	sw t1, 24(a0)
	add t1, a2, t2
	sh2add t3, a1, t1
	add t1, a2, t0
	lw t2, 0(t3)
	sw t2, 28(a0)
	sh2add t2, a1, t1
	li t1, 36000
	lw t0, 0(t2)
	sw t0, 32(a0)
	add t0, a2, t1
	sh2add t2, a1, t0
	add t0, a2, a5
	lw t1, 0(t2)
	sw t1, 36(a0)
	sh2add t1, a1, t0
	li t0, 44000
	lw a5, 0(t1)
	sw a5, 40(a0)
	add a5, a2, t0
	sh2add t1, a1, a5
	li a5, 48000
	lw t0, 0(t1)
	add t1, a2, a5
	sw t0, 44(a0)
	sh2add t0, a1, t1
	lw a5, 0(t0)
	li t0, 52000
	add t1, a2, t0
	sw a5, 48(a0)
	sh2add a5, a1, t1
	lw t0, 0(a5)
	li a5, 56000
	add t1, a2, a5
	sw t0, 52(a0)
	li a5, 60000
	sh2add t0, a1, t1
	add t1, a2, a5
	lw t2, 0(t0)
	sh2add t0, a1, t1
	sw t2, 56(a0)
	lw a5, 0(t0)
	li t0, 64000
	sw a5, 60(a0)
	add a5, a2, t0
	sh2add t1, a1, a5
	li a5, 68000
	lw t0, 0(t1)
	sw t0, 64(a0)
	add t0, a2, a5
	li a5, 72000
	sh2add t2, a1, t0
	lw t1, 0(t2)
	sw t1, 68(a0)
	add t1, a2, a5
	li a5, 76000
	sh2add t2, a1, t1
	add t1, a2, a5
	lw t0, 0(t2)
	sw t0, 72(a0)
	sh2add t0, a1, t1
	li t1, 80000
	lw a5, 0(t0)
	sw a5, 76(a0)
	add a5, a2, t1
	sh2add t0, a1, a5
	li a5, 84000
	lw t1, 0(t0)
	add t0, a2, a5
	sw t1, 80(a0)
	sh2add t1, a1, t0
	li t0, 88000
	lw a5, 0(t1)
	sw a5, 84(a0)
	add a5, a2, t0
	sh2add t1, a1, a5
	li a5, 92000
	lw t0, 0(t1)
	sw t0, 88(a0)
	add t0, a2, a5
	sh2add t1, a1, t0
	li t0, 96000
	lw a5, 0(t1)
	add t1, a2, t0
	sw a5, 92(a0)
	sh2add a5, a1, t1
	li t1, 100000
	lw t0, 0(a5)
	sw t0, 96(a0)
	add t0, a2, t1
	sh2add a5, a1, t0
	lw t1, 0(a5)
	li a5, 104000
	add t0, a2, a5
	sw t1, 100(a0)
	sh2add t1, a1, t0
	li t0, 108000
	add t2, a2, t0
	lw a5, 0(t1)
	li t0, 112000
	sh2add t1, a1, t2
	sw a5, 104(a0)
	lw a5, 0(t1)
	add t1, a2, t0
	sw a5, 108(a0)
	sh2add a5, a1, t1
	lw t0, 0(a5)
	li a5, 116000
	add t2, a2, a5
	sw t0, 112(a0)
	li a5, 120000
	sh2add t0, a1, t2
	lw t1, 0(t0)
	add t0, a2, a5
	sw t1, 116(a0)
	sh2add t1, a1, t0
	li t0, 124000
	lw a5, 0(t1)
	sw a5, 120(a0)
	add a5, a2, t0
	sh2add t1, a1, a5
	li a5, 128000
	lw t0, 0(t1)
	sw t0, 124(a0)
	add t0, a2, a5
	sh2add t1, a1, t0
	li t0, 132000
	lw a5, 0(t1)
	sw a5, 128(a0)
	add a5, a2, t0
	sh2add t1, a1, a5
	li a5, 136000
	lw t0, 0(t1)
	add t1, a2, a5
	li a5, 140000
	sh2add t2, a1, t1
	sw t0, 132(a0)
	add t1, a2, a5
	li a5, 144000
	lw t0, 0(t2)
	sh2add t2, a1, t1
	sw t0, 136(a0)
	lw t0, 0(t2)
	sw t0, 140(a0)
	add t0, a2, a5
	sh2add t1, a1, t0
	li t0, 148000
	lw a5, 0(t1)
	sw a5, 144(a0)
	add a5, a2, t0
	sh2add t1, a1, a5
	lw t0, 0(t1)
	li t1, 152000
	sw t0, 148(a0)
	add t0, a2, t1
	sh2add a5, a1, t0
	lw t1, 0(a5)
	li a5, 156000
	add t0, a2, a5
	sw t1, 152(a0)
	li a5, 160000
	sh2add t1, a1, t0
	add t0, a2, a5
	lw t2, 0(t1)
	sh2add t1, a1, t0
	sw t2, 156(a0)
	li t2, 164000
	lw a5, 0(t1)
	add t1, a2, t2
	sh2add t0, a1, t1
	sw a5, 160(a0)
	lw a5, 0(t0)
	li t0, 168000
	add t1, a2, t0
	sw a5, 164(a0)
	li t0, 172000
	sh2add t2, a1, t1
	lw a5, 0(t2)
	sw a5, 168(a0)
	add a5, a2, t0
	li t0, 176000
	sh2add t1, a1, a5
	lw t2, 0(t1)
	add t1, a2, t0
	sh2add a5, a1, t1
	sw t2, 172(a0)
	lw t0, 0(a5)
	li a5, 180000
	sw t0, 176(a0)
	add t0, a2, a5
	li a5, 184000
	sh2add t2, a1, t0
	add t0, a2, a5
	lw t1, 0(t2)
	sw t1, 180(a0)
	sh2add t1, a1, t0
	li t0, 188000
	lw a5, 0(t1)
	add t2, a2, t0
	li t0, 192000
	sw a5, 184(a0)
	sh2add a5, a1, t2
	lw t1, 0(a5)
	add a5, a2, t0
	sw t1, 188(a0)
	sh2add t1, a1, a5
	lw t0, 0(t1)
	li t1, 196000
	add t2, a2, t1
	sw t0, 192(a0)
	li t1, 200000
	sh2add a5, a1, t2
	lw t0, 0(a5)
	sw t0, 196(a0)
	add t0, a2, t1
	sh2add a5, a1, t0
	lw t1, 0(a5)
	li a5, 204000
	sw t1, 200(a0)
	add t1, a2, a5
	sh2add t0, a1, t1
	lw a5, 0(t0)
	li t0, 208000
	add t1, a2, t0
	sw a5, 204(a0)
	li t0, 212000
	sh2add t2, a1, t1
	lw a5, 0(t2)
	sw a5, 208(a0)
	add a5, a2, t0
	sh2add t1, a1, a5
	li a5, 216000
	lw t0, 0(t1)
	add t1, a2, a5
	li a5, 220000
	sw t0, 212(a0)
	sh2add t0, a1, t1
	add t1, a2, a5
	lw t2, 0(t0)
	sh2add t0, a1, t1
	li t1, 224000
	sw t2, 216(a0)
	lw a5, 0(t0)
	add t0, a2, t1
	sh2add t2, a1, t0
	sw a5, 220(a0)
	li t0, 228000
	lw a5, 0(t2)
	sw a5, 224(a0)
	add a5, a2, t0
	sh2add t1, a1, a5
	li a5, 232000
	lw t0, 0(t1)
	add t1, a2, a5
	sw t0, 228(a0)
	sh2add t0, a1, t1
	lw a5, 0(t0)
	li t0, 236000
	sw a5, 232(a0)
	add a5, a2, t0
	sh2add t1, a1, a5
	li a5, 240000
	lw t0, 0(t1)
	add t1, a2, a5
	sw t0, 236(a0)
	sh2add t0, a1, t1
	lw a5, 0(t0)
	li t0, 244000
	add t1, a2, t0
	sw a5, 240(a0)
	sh2add a5, a1, t1
	lw t0, 0(a5)
	li a5, 248000
	sw t0, 244(a0)
	add t0, a2, a5
	sh2add t1, a1, t0
	li t0, 252000
	lw a5, 0(t1)
	add t1, a2, t0
	sh2add a2, a1, t1
	sw a5, 248(a0)
	lw a5, 0(a2)
	sw a5, 252(a0)
	li a0, 960
	blt a4, a0, label41
	li a5, 4000
	mul a0, a4, a5
	add a2, s2, a0
	sh2add a0, a4, a3
	sh2add t1, a1, a2
	lw t0, 0(t1)
	sw t0, 0(a0)
	add t0, a2, a5
	sh2add a3, a1, t0
	lw a4, 0(a3)
	slli a3, a5, 1
	add a5, a2, a3
	sw a4, 4(a0)
	sh2add a4, a1, a5
	li a5, 12000
	lw t0, 0(a4)
	add a4, a2, a5
	sh2add t1, a1, a4
	sw t0, 8(a0)
	slli a4, a3, 1
	lw t0, 0(t1)
	add t1, a2, a4
	slli a4, a4, 1
	sh2add a3, a1, t1
	sw t0, 12(a0)
	lw t0, 0(a3)
	li a3, 20000
	add t1, a2, a3
	sw t0, 16(a0)
	slli a3, a3, 1
	sh2add t2, a1, t1
	slli t1, a5, 1
	lw t0, 0(t2)
	sw t0, 20(a0)
	add t0, a2, t1
	sh2add a5, a1, t0
	lw t1, 0(a5)
	li a5, 28000
	sw t1, 24(a0)
	add t1, a2, a5
	sh2add t0, a1, t1
	lw a5, 0(t0)
	sw a5, 28(a0)
	add a5, a2, a4
	sh2add t0, a1, a5
	li a5, 36000
	lw a4, 0(t0)
	add t0, a2, a5
	sw a4, 32(a0)
	sh2add a4, a1, t0
	add t0, a2, a3
	lw a5, 0(a4)
	li a3, 44000
	sw a5, 36(a0)
	sh2add a5, a1, t0
	lw a4, 0(a5)
	add a5, a2, a3
	sw a4, 40(a0)
	sh2add a4, a1, a5
	lw a3, 0(a4)
	li a4, 48000
	add a5, a2, a4
	sw a3, 44(a0)
	sh2add a3, a1, a5
	lw a4, 0(a3)
	li a3, 52000
	add a5, a2, a3
	sw a4, 48(a0)
	sh2add a4, a1, a5
	lw a3, 0(a4)
	li a4, 56000
	add a5, a2, a4
	sw a3, 52(a0)
	sh2add a3, a1, a5
	lw a4, 0(a3)
	li a3, 60000
	sw a4, 56(a0)
	add a4, a2, a3
	sh2add a5, a1, a4
	li a4, 64000
	lw a3, 0(a5)
	sw a3, 60(a0)
	add a3, a2, a4
	sh2add a5, a1, a3
	li a3, 68000
	lw a4, 0(a5)
	add t0, a2, a3
	li a3, 72000
	sw a4, 64(a0)
	sh2add a4, a1, t0
	lw a5, 0(a4)
	sw a5, 68(a0)
	add a5, a2, a3
	sh2add a4, a1, a5
	lw a3, 0(a4)
	li a4, 76000
	add a5, a2, a4
	sw a3, 72(a0)
	sh2add a3, a1, a5
	lw a4, 0(a3)
	li a3, 80000
	add a5, a2, a3
	sw a4, 76(a0)
	sh2add a4, a1, a5
	lw a3, 0(a4)
	li a4, 84000
	add a5, a2, a4
	sw a3, 80(a0)
	sh2add a3, a1, a5
	lw a4, 0(a3)
	li a3, 88000
	add a5, a2, a3
	sw a4, 84(a0)
	sh2add a4, a1, a5
	lw a3, 0(a4)
	li a4, 92000
	add a5, a2, a4
	sw a3, 88(a0)
	sh2add a3, a1, a5
	lw a4, 0(a3)
	li a3, 96000
	add a5, a2, a3
	sw a4, 92(a0)
	sh2add a4, a1, a5
	lw a3, 0(a4)
	li a4, 100000
	add a5, a2, a4
	sw a3, 96(a0)
	sh2add a3, a1, a5
	lw a4, 0(a3)
	li a3, 104000
	add a5, a2, a3
	sw a4, 100(a0)
	sh2add a4, a1, a5
	lw a3, 0(a4)
	li a4, 108000
	add a5, a2, a4
	sw a3, 104(a0)
	sh2add a3, a1, a5
	lw a4, 0(a3)
	li a3, 112000
	add a5, a2, a3
	sw a4, 108(a0)
	sh2add a4, a1, a5
	lw a3, 0(a4)
	li a4, 116000
	add a5, a2, a4
	sw a3, 112(a0)
	sh2add a3, a1, a5
	lw a4, 0(a3)
	li a3, 120000
	add a5, a2, a3
	sw a4, 116(a0)
	sh2add a4, a1, a5
	lw a3, 0(a4)
	li a4, 124000
	add a5, a2, a4
	sw a3, 120(a0)
	sh2add a3, a1, a5
	lw a4, 0(a3)
	li a3, 128000
	add a5, a2, a3
	sw a4, 124(a0)
	sh2add a4, a1, a5
	lw a3, 0(a4)
	li a4, 132000
	add a5, a2, a4
	sw a3, 128(a0)
	sh2add a3, a1, a5
	li a5, 136000
	lw a4, 0(a3)
	sw a4, 132(a0)
	add a4, a2, a5
	sh2add a3, a1, a4
	li a4, 140000
	lw a5, 0(a3)
	sw a5, 136(a0)
	add a5, a2, a4
	sh2add a3, a1, a5
	li a5, 144000
	lw a4, 0(a3)
	sw a4, 140(a0)
	add a4, a2, a5
	sh2add a3, a1, a4
	li a4, 148000
	lw a5, 0(a3)
	sw a5, 144(a0)
	add a5, a2, a4
	sh2add a3, a1, a5
	li a5, 152000
	lw a4, 0(a3)
	sw a4, 148(a0)
	add a4, a2, a5
	sh2add a3, a1, a4
	li a4, 156000
	lw a5, 0(a3)
	sw a5, 152(a0)
	add a5, a2, a4
	sh2add a3, a1, a5
	addiw a1, a1, 1
	lw a2, 0(a3)
	sw a2, 156(a0)
	j label5
label7:
	li a2, 4000
	mul a0, a1, a2
	add a2, s2, a0
	add a3, s0, a0
	li a0, 1000
	blt a1, a0, label68
	mv a1, zero
	li a2, 4000
	mv a3, zero
	li a2, 1000
	mv a0, s0
	blt zero, a2, label283
	mv a0, zero
	j label1944
label283:
	mv a3, zero
	li a4, 2147483647
.p2align 2
label18:
	sh2add a2, a3, a0
	addiw a3, a3, 64
	lw a5, 0(a2)
	lw t0, 4(a2)
	min a4, a4, a5
	lw t1, 8(a2)
	min a5, a4, t0
	lw t2, 12(a2)
	min a4, a5, t1
	lw t0, 16(a2)
	min a5, a4, t2
	lw t1, 20(a2)
	min a4, a5, t0
	lw t0, 24(a2)
	min a5, a4, t1
	lw t1, 28(a2)
	min a4, a5, t0
	lw t0, 32(a2)
	min a5, a4, t1
	lw t1, 36(a2)
	min a4, a5, t0
	lw t0, 40(a2)
	min a5, a4, t1
	lw t1, 44(a2)
	min a4, a5, t0
	min a5, a4, t1
	lw a4, 48(a2)
	min t0, a5, a4
	lw a5, 52(a2)
	lw t1, 56(a2)
	min a4, t0, a5
	lw t0, 60(a2)
	min a5, a4, t1
	lw t1, 64(a2)
	min a4, a5, t0
	lw t0, 68(a2)
	min a5, a4, t1
	lw t1, 72(a2)
	min a4, a5, t0
	lw t0, 76(a2)
	min a5, a4, t1
	lw t1, 80(a2)
	min a4, a5, t0
	min a5, a4, t1
	lw a4, 84(a2)
	min t0, a5, a4
	lw a5, 88(a2)
	min a4, t0, a5
	lw t0, 92(a2)
	lw t2, 96(a2)
	min a5, a4, t0
	lw t1, 100(a2)
	min a4, a5, t2
	lw t0, 104(a2)
	min a5, a4, t1
	min a4, a5, t0
	lw a5, 108(a2)
	min t0, a4, a5
	lw a4, 112(a2)
	lw t1, 116(a2)
	min a5, t0, a4
	lw t0, 120(a2)
	min a4, a5, t1
	lw t1, 124(a2)
	min a5, a4, t0
	lw t0, 128(a2)
	min a4, a5, t1
	lw t1, 132(a2)
	min a5, a4, t0
	lw t0, 136(a2)
	min a4, a5, t1
	lw t1, 140(a2)
	min a5, a4, t0
	lw t0, 144(a2)
	min a4, a5, t1
	min a5, a4, t0
	lw a4, 148(a2)
	min t0, a5, a4
	lw a5, 152(a2)
	lw t1, 156(a2)
	min a4, t0, a5
	lw t0, 160(a2)
	min a5, a4, t1
	min a4, a5, t0
	lw a5, 164(a2)
	min t0, a4, a5
	lw a4, 168(a2)
	min a5, t0, a4
	lw t0, 172(a2)
	min a4, a5, t0
	lw a5, 176(a2)
	min t0, a4, a5
	lw a4, 180(a2)
	lw t1, 184(a2)
	min a5, t0, a4
	lw t0, 188(a2)
	min a4, a5, t1
	lw t1, 192(a2)
	min a5, a4, t0
	lw t0, 196(a2)
	min a4, a5, t1
	lw t1, 200(a2)
	min a5, a4, t0
	lw t0, 204(a2)
	min a4, a5, t1
	lw t2, 208(a2)
	min a5, a4, t0
	lw t1, 212(a2)
	min a4, a5, t2
	lw t0, 216(a2)
	min a5, a4, t1
	min a4, a5, t0
	lw a5, 220(a2)
	min t0, a4, a5
	lw a4, 224(a2)
	lw t1, 228(a2)
	min a5, t0, a4
	lw t0, 232(a2)
	min a4, a5, t1
	lw t1, 236(a2)
	min a5, a4, t0
	lw t0, 240(a2)
	min a4, a5, t1
	lw t1, 244(a2)
	min a5, a4, t0
	lw t0, 248(a2)
	min a4, a5, t1
	lw a2, 252(a2)
	min a5, a4, t0
	min a4, a5, a2
	li a2, 960
	blt a3, a2, label18
	sh2add a2, a3, a0
	lw a3, 0(a2)
	lw a5, 4(a2)
	min a4, a4, a3
	lw t0, 8(a2)
	min a3, a4, a5
	lw a5, 12(a2)
	min a4, a3, t0
	lw t0, 16(a2)
	min a3, a4, a5
	lw a5, 20(a2)
	min a4, a3, t0
	lw t0, 24(a2)
	min a3, a4, a5
	lw a5, 28(a2)
	min a4, a3, t0
	lw t0, 32(a2)
	min a3, a4, a5
	lw a5, 36(a2)
	min a4, a3, t0
	lw t0, 40(a2)
	min a3, a4, a5
	lw a5, 44(a2)
	min a4, a3, t0
	lw t0, 48(a2)
	min a3, a4, a5
	lw a5, 52(a2)
	min a4, a3, t0
	lw t0, 56(a2)
	min a3, a4, a5
	lw a5, 60(a2)
	min a4, a3, t0
	lw t0, 64(a2)
	min a3, a4, a5
	lw a5, 68(a2)
	min a4, a3, t0
	lw t0, 72(a2)
	min a3, a4, a5
	lw a5, 76(a2)
	min a4, a3, t0
	lw t0, 80(a2)
	min a3, a4, a5
	lw a5, 84(a2)
	min a4, a3, t0
	lw t0, 88(a2)
	min a3, a4, a5
	lw a5, 92(a2)
	min a4, a3, t0
	min a3, a4, a5
	lw a4, 96(a2)
	min a5, a3, a4
	lw a3, 100(a2)
	min a4, a5, a3
	lw a5, 104(a2)
	min a3, a4, a5
	lw a4, 108(a2)
	min a5, a3, a4
	lw a3, 112(a2)
	min a4, a5, a3
	lw a5, 116(a2)
	lw t0, 120(a2)
	min a3, a4, a5
	lw a5, 124(a2)
	min a4, a3, t0
	lw t0, 128(a2)
	min a3, a4, a5
	lw a5, 132(a2)
	min a4, a3, t0
	lw t0, 136(a2)
	min a3, a4, a5
	lw a5, 140(a2)
	min a4, a3, t0
	lw t0, 144(a2)
	min a3, a4, a5
	min a4, a3, t0
	lw a3, 148(a2)
	min a5, a4, a3
	lw a4, 152(a2)
	min a3, a5, a4
	mv a4, zero
	lw a5, 156(a2)
	min a2, a3, a5
	j label22
label68:
	mv a0, zero
	li a4, 1000
	blt zero, a4, label72
	addiw a1, a1, 1
	li a2, 4000
	mul a0, a1, a2
	add a2, s2, a0
	add a3, s0, a0
	li a0, 1000
	blt a1, a0, label68
	mv a1, zero
	li a2, 4000
	mv a3, zero
	li a2, 1000
	mv a0, s0
	blt zero, a2, label283
	mv a0, zero
	j label1944
label72:
	mv a4, zero
	mv a5, zero
.p2align 2
label11:
	li t2, 4000
	mul t1, a4, t2
	add t0, s1, t1
	sh2add t4, a0, t0
	add a6, t0, t2
	sh2add t1, a4, a2
	slli t2, t2, 1
	sh2add t5, a0, a6
	addiw a4, a4, 16
	lw t3, 0(t1)
	lw t4, 0(t4)
	lw t6, 4(t1)
	lw a6, 0(t5)
	mulw t4, t3, t4
	mulw t5, t6, a6
	add t6, t0, t2
	addw t3, t5, t4
	lw t4, 8(t1)
	sh2add t5, a0, t6
	lw t6, 0(t5)
	mulw t5, t4, t6
	lw t6, 12(t1)
	li t4, 12000
	addw t3, t3, t5
	add a6, t0, t4
	sh2add t5, a0, a6
	lw a6, 0(t5)
	mulw a7, t6, a6
	lw t6, 16(t1)
	addw t5, t3, a7
	slli t3, t2, 1
	add a6, t0, t3
	sh2add t2, a0, a6
	lw a6, 0(t2)
	li t2, 20000
	mulw a7, t6, a6
	lw a6, 20(t1)
	addw t5, t5, a7
	add a7, t0, t2
	slli t2, t2, 1
	sh2add t6, a0, a7
	lw a7, 0(t6)
	mulw t6, a6, a7
	addw t5, t5, t6
	slli t6, t4, 1
	add a6, t0, t6
	lw t6, 24(t1)
	sh2add t4, a0, a6
	lw a7, 0(t4)
	mulw a6, t6, a7
	li t6, 28000
	addw t4, t5, a6
	add a6, t0, t6
	lw t6, 28(t1)
	sh2add t5, a0, a6
	lw a6, 0(t5)
	mulw t5, t6, a6
	slli a6, t3, 1
	addw t4, t4, t5
	add t6, t0, a6
	lw t5, 32(t1)
	sh2add t3, a0, t6
	lw t6, 0(t3)
	mulw a6, t5, t6
	addw t3, t4, a6
	li t4, 36000
	add t6, t0, t4
	lw t4, 36(t1)
	sh2add t5, a0, t6
	lw t6, 0(t5)
	mulw t5, t4, t6
	addw t3, t3, t5
	add t5, t0, t2
	lw t2, 40(t1)
	sh2add t4, a0, t5
	lw t5, 0(t4)
	li t4, 44000
	mulw t6, t2, t5
	add t5, t0, t4
	addw t2, t3, t6
	lw t4, 44(t1)
	li t6, 52000
	sh2add t3, a0, t5
	lw t5, 0(t3)
	mulw t3, t4, t5
	li t4, 48000
	addw t2, t2, t3
	add t5, t0, t4
	lw t4, 48(t1)
	sh2add t3, a0, t5
	lw t5, 0(t3)
	mulw t3, t4, t5
	add t5, t0, t6
	addw t2, t2, t3
	sh2add t4, a0, t5
	lw t3, 52(t1)
	lw t5, 0(t4)
	mulw t4, t3, t5
	li t3, 56000
	addw t2, t2, t4
	add t5, t0, t3
	lw t3, 56(t1)
	sh2add t4, a0, t5
	lw t5, 0(t4)
	lw t1, 60(t1)
	mulw t4, t3, t5
	li t3, 60000
	addw t2, t2, t4
	add t4, t0, t3
	sh2add t0, a0, t4
	lw t3, 0(t0)
	mulw t0, t1, t3
	addw t1, t2, t0
	li t0, 992
	addw a5, a5, t1
	blt a4, t0, label11
	li t1, 4000
	mul t2, a4, t1
	sh2add a4, a4, a2
	add t0, s1, t2
	add t6, t0, t1
	sh2add t3, a0, t0
	lw t2, 0(a4)
	slli t1, t1, 1
	sh2add t4, a0, t6
	lw t3, 0(t3)
	lw t5, 4(a4)
	lw t6, 0(t4)
	mulw t2, t2, t3
	addw t3, a5, t2
	mulw t4, t5, t6
	addw a5, t4, t3
	lw t3, 8(a4)
	add t4, t0, t1
	sh2add t2, a0, t4
	lw t5, 0(t2)
	mulw t4, t3, t5
	addw t2, a5, t4
	lw t4, 12(a4)
	li a5, 12000
	add t5, t0, a5
	slli a5, a5, 1
	sh2add t3, a0, t5
	lw t5, 0(t3)
	mulw t3, t4, t5
	slli t4, t1, 1
	addw t2, t2, t3
	add t5, t0, t4
	lw t3, 16(a4)
	sh2add t1, a0, t5
	lw t4, 0(t1)
	mulw t5, t3, t4
	li t3, 20000
	addw t1, t2, t5
	add t4, t0, t3
	lw t3, 20(a4)
	sh2add t2, a0, t4
	lw t4, 0(t2)
	mulw t2, t3, t4
	add t3, t0, a5
	addw t1, t1, t2
	lw a5, 24(a4)
	sh2add t2, a0, t3
	lw t3, 0(t2)
	lw a4, 28(a4)
	mulw t2, a5, t3
	li t3, 28000
	addw a5, t1, t2
	add t1, t0, t3
	sh2add t0, a0, t1
	lw t1, 0(t0)
	mulw t0, a4, t1
	addw a4, a5, t0
	sh2add a5, a0, a3
	addiw a0, a0, 1
	sw a4, 0(a5)
	li a4, 1000
	blt a0, a4, label72
	addiw a1, a1, 1
	li a2, 4000
	mul a0, a1, a2
	add a2, s2, a0
	add a3, s0, a0
	li a0, 1000
	blt a1, a0, label68
	mv a1, zero
	li a2, 4000
	mv a3, zero
	li a2, 1000
	mv a0, s0
	blt zero, a2, label283
	mv a0, zero
	j label1944
label25:
	li a2, 1000
	bge a0, a2, label1944
label718:
	li a2, 4000
	mul a3, a0, a2
	mv a2, zero
	add a1, s0, a3
.p2align 2
label37:
	li a5, 4000
	mul a4, a2, a5
	add a3, s0, a4
	sh2add t2, a0, a3
	sh2add a4, a2, a1
	addiw a2, a2, 16
	lw t1, 0(t2)
	add t2, a3, a5
	subw t0, zero, t1
	slli a5, a5, 1
	sh2add t1, a0, t2
	sw t0, 0(a4)
	lw t0, 0(t1)
	subw t2, zero, t0
	add t0, a3, a5
	sw t2, 4(a4)
	sh2add t2, a0, t0
	lw t1, 0(t2)
	subw t0, zero, t1
	li t1, 12000
	add t2, a3, t1
	sw t0, 8(a4)
	sh2add t0, a0, t2
	lw t3, 0(t0)
	slli t0, a5, 1
	subw t2, zero, t3
	add a5, a3, t0
	sh2add t4, a0, a5
	sw t2, 12(a4)
	li a5, 20000
	lw t3, 0(t4)
	subw t2, zero, t3
	sw t2, 16(a4)
	add t2, a3, a5
	slli a5, a5, 1
	sh2add t5, a0, t2
	slli t2, t1, 1
	lw t4, 0(t5)
	subw t3, zero, t4
	add t4, a3, t2
	sh2add t1, a0, t4
	sw t3, 20(a4)
	lw t3, 0(t1)
	li t1, 28000
	subw t2, zero, t3
	add t3, a3, t1
	sw t2, 24(a4)
	sh2add t2, a0, t3
	lw t1, 0(t2)
	subw t3, zero, t1
	slli t1, t0, 1
	add t0, a3, t1
	sw t3, 28(a4)
	sh2add t2, a0, t0
	lw t1, 0(t2)
	subw t0, zero, t1
	li t1, 36000
	sw t0, 32(a4)
	add t0, a3, t1
	sh2add t2, a0, t0
	lw t1, 0(t2)
	li t2, 56000
	subw t0, zero, t1
	sw t0, 36(a4)
	add t0, a3, a5
	sh2add t1, a0, t0
	lw a5, 0(t1)
	subw t0, zero, a5
	li a5, 44000
	add t1, a3, a5
	sw t0, 40(a4)
	sh2add t0, a0, t1
	lw a5, 0(t0)
	subw t1, zero, a5
	li a5, 48000
	sw t1, 44(a4)
	add t1, a3, a5
	sh2add t0, a0, t1
	lw a5, 0(t0)
	subw t1, zero, a5
	li a5, 52000
	sw t1, 48(a4)
	add t1, a3, a5
	sh2add t0, a0, t1
	lw a5, 0(t0)
	subw t1, zero, a5
	add a5, a3, t2
	sh2add t0, a0, a5
	sw t1, 52(a4)
	li a5, 60000
	lw t2, 0(t0)
	add a3, a3, a5
	subw t1, zero, t2
	sh2add t0, a0, a3
	sw t1, 56(a4)
	lw a5, 0(t0)
	subw a3, zero, a5
	sw a3, 60(a4)
	li a3, 992
	blt a2, a3, label37
	li a4, 4000
	sh2add a1, a2, a1
	mul a5, a2, a4
	add a3, s0, a5
	add a2, a3, a4
	sh2add t1, a0, a3
	slli a4, a4, 1
	lw t0, 0(t1)
	subw a5, zero, t0
	sh2add t0, a0, a2
	sw a5, 0(a1)
	lw a5, 0(t0)
	add t0, a3, a4
	subw a2, zero, a5
	sw a2, 4(a1)
	sh2add a2, a0, t0
	lw a5, 0(a2)
	li a2, 12000
	subw t0, zero, a5
	add a5, a3, a2
	slli a2, a2, 1
	sw t0, 8(a1)
	sh2add t0, a0, a5
	lw t1, 0(t0)
	subw a5, zero, t1
	slli t1, a4, 1
	add t0, a3, t1
	sw a5, 12(a1)
	sh2add a4, a0, t0
	lw a5, 0(a4)
	li a4, 20000
	subw t0, zero, a5
	add t1, a3, a4
	sw t0, 16(a1)
	sh2add t0, a0, t1
	lw a5, 0(t0)
	subw a4, zero, a5
	sw a4, 20(a1)
	add a4, a3, a2
	sh2add a5, a0, a4
	lw a2, 0(a5)
	subw a4, zero, a2
	li a2, 28000
	add a3, a3, a2
	sw a4, 24(a1)
	sh2add a4, a0, a3
	addiw a0, a0, 1
	lw a5, 0(a4)
	subw a2, zero, a5
	sw a2, 28(a1)
	j label25
label1944:
	mv s1, zero
	mv a1, zero
	j label27
label16:
	li a2, 4000
	mul a3, a1, a2
	li a2, 1000
	add a0, s0, a3
	blt a1, a2, label283
	mv a0, zero
	blt zero, a2, label718
	j label1944
.p2align 2
label22:
	sh2add a3, a4, a0
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
	blt a4, a3, label22
	sh2add a0, a4, a0
	addiw a1, a1, 1
	sw a2, 0(a0)
	sw a2, 4(a0)
	sw a2, 8(a0)
	sw a2, 12(a0)
	sw a2, 16(a0)
	sw a2, 20(a0)
	sw a2, 24(a0)
	sw a2, 28(a0)
	sw a2, 32(a0)
	sw a2, 36(a0)
	sw a2, 40(a0)
	sw a2, 44(a0)
	sw a2, 48(a0)
	sw a2, 52(a0)
	sw a2, 56(a0)
	sw a2, 60(a0)
	sw a2, 64(a0)
	sw a2, 68(a0)
	sw a2, 72(a0)
	sw a2, 76(a0)
	sw a2, 80(a0)
	sw a2, 84(a0)
	sw a2, 88(a0)
	sw a2, 92(a0)
	sw a2, 96(a0)
	sw a2, 100(a0)
	sw a2, 104(a0)
	sw a2, 108(a0)
	sw a2, 112(a0)
	sw a2, 116(a0)
	sw a2, 120(a0)
	sw a2, 124(a0)
	sw a2, 128(a0)
	sw a2, 132(a0)
	sw a2, 136(a0)
	sw a2, 140(a0)
	sw a2, 144(a0)
	sw a2, 148(a0)
	sw a2, 152(a0)
	sw a2, 156(a0)
	j label16
label27:
	li a0, 1000
	bge a1, a0, label30
	li a3, 4000
	mv a4, s1
	mul a0, a1, a3
	mv a3, zero
	add a2, s0, a0
	j label32
label30:
	li a0, 92
	jal _sysy_stoptime
	mv a0, s1
	jal putint
	mv a0, zero
	j label44
.p2align 2
label32:
	sh2add a0, a3, a2
	addiw a3, a3, 64
	lw a5, 0(a0)
	lw t0, 4(a0)
	addw a4, a4, a5
	lw t1, 8(a0)
	addw a5, a4, t0
	lw t0, 12(a0)
	addw a4, a5, t1
	lw t1, 16(a0)
	addw a5, a4, t0
	lw t0, 20(a0)
	addw a4, a5, t1
	addw a5, a4, t0
	lw a4, 24(a0)
	addw t0, a5, a4
	lw a5, 28(a0)
	addw a4, t0, a5
	lw t0, 32(a0)
	lw t2, 36(a0)
	addw a5, a4, t0
	lw t1, 40(a0)
	addw a4, a5, t2
	lw t0, 44(a0)
	addw a5, a4, t1
	addw a4, a5, t0
	lw a5, 48(a0)
	addw t0, a4, a5
	lw a4, 52(a0)
	lw t1, 56(a0)
	addw a5, t0, a4
	lw t0, 60(a0)
	addw a4, a5, t1
	lw t1, 64(a0)
	addw a5, a4, t0
	lw t0, 68(a0)
	addw a4, a5, t1
	lw t1, 72(a0)
	addw a5, a4, t0
	lw t0, 76(a0)
	addw a4, a5, t1
	lw t1, 80(a0)
	addw a5, a4, t0
	lw t0, 84(a0)
	addw a4, a5, t1
	addw a5, a4, t0
	lw a4, 88(a0)
	addw t0, a5, a4
	lw a5, 92(a0)
	addw a4, t0, a5
	lw t0, 96(a0)
	lw t1, 100(a0)
	addw a5, a4, t0
	lw t0, 104(a0)
	addw a4, a5, t1
	lw t1, 108(a0)
	addw a5, a4, t0
	lw t0, 112(a0)
	addw a4, a5, t1
	lw t1, 116(a0)
	addw a5, a4, t0
	lw t0, 120(a0)
	addw a4, a5, t1
	lw t1, 124(a0)
	addw a5, a4, t0
	lw t0, 128(a0)
	addw a4, a5, t1
	lw t1, 132(a0)
	addw a5, a4, t0
	lw t0, 136(a0)
	addw a4, a5, t1
	lw t1, 140(a0)
	addw a5, a4, t0
	lw t0, 144(a0)
	addw a4, a5, t1
	lw t1, 148(a0)
	addw a5, a4, t0
	lw t0, 152(a0)
	addw a4, a5, t1
	lw t1, 156(a0)
	addw a5, a4, t0
	lw t0, 160(a0)
	addw a4, a5, t1
	addw a5, a4, t0
	lw a4, 164(a0)
	addw t0, a5, a4
	lw a5, 168(a0)
	addw a4, t0, a5
	lw t0, 172(a0)
	addw a5, a4, t0
	lw a4, 176(a0)
	addw t0, a5, a4
	lw a5, 180(a0)
	lw t1, 184(a0)
	addw a4, t0, a5
	lw t0, 188(a0)
	addw a5, a4, t1
	addw a4, a5, t0
	lw a5, 192(a0)
	addw t0, a4, a5
	lw a4, 196(a0)
	addw a5, t0, a4
	lw t0, 200(a0)
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
	addw a5, a4, t1
	lw a4, 240(a0)
	addw t0, a5, a4
	lw a5, 244(a0)
	addw a4, t0, a5
	lw t0, 248(a0)
	lw a0, 252(a0)
	addw a5, a4, t0
	addw a4, a5, a0
	li a0, 960
	blt a3, a0, label32
	sh2add a0, a3, a2
	addiw a1, a1, 1
	lw a3, 0(a0)
	lw a5, 4(a0)
	addw a2, a4, a3
	lw a4, 8(a0)
	addw a3, a2, a5
	lw a5, 12(a0)
	addw a2, a3, a4
	lw a4, 16(a0)
	addw a3, a2, a5
	lw a5, 20(a0)
	addw a2, a3, a4
	lw a4, 24(a0)
	addw a3, a2, a5
	lw a5, 28(a0)
	addw a2, a3, a4
	lw a4, 32(a0)
	addw a3, a2, a5
	lw a5, 36(a0)
	addw a2, a3, a4
	lw a4, 40(a0)
	addw a3, a2, a5
	lw a5, 44(a0)
	addw a2, a3, a4
	lw a4, 48(a0)
	addw a3, a2, a5
	lw a5, 52(a0)
	addw a2, a3, a4
	lw a4, 56(a0)
	addw a3, a2, a5
	lw a5, 60(a0)
	addw a2, a3, a4
	lw a4, 64(a0)
	addw a3, a2, a5
	lw a5, 68(a0)
	addw a2, a3, a4
	lw a4, 72(a0)
	addw a3, a2, a5
	lw a5, 76(a0)
	addw a2, a3, a4
	lw a4, 80(a0)
	addw a3, a2, a5
	lw a5, 84(a0)
	addw a2, a3, a4
	lw a4, 88(a0)
	addw a3, a2, a5
	lw a5, 92(a0)
	addw a2, a3, a4
	lw a4, 96(a0)
	addw a3, a2, a5
	lw a5, 100(a0)
	addw a2, a3, a4
	lw a4, 104(a0)
	addw a3, a2, a5
	lw a5, 108(a0)
	addw a2, a3, a4
	lw a4, 112(a0)
	addw a3, a2, a5
	lw a5, 116(a0)
	addw a2, a3, a4
	lw a4, 120(a0)
	addw a3, a2, a5
	lw a5, 124(a0)
	addw a2, a3, a4
	lw a4, 128(a0)
	addw a3, a2, a5
	lw a5, 132(a0)
	addw a2, a3, a4
	lw a4, 136(a0)
	addw a3, a2, a5
	lw a5, 140(a0)
	addw a2, a3, a4
	lw a4, 144(a0)
	addw a3, a2, a5
	lw a5, 148(a0)
	addw a2, a3, a4
	lw a4, 152(a0)
	addw a3, a2, a5
	lw a0, 156(a0)
	addw a2, a3, a4
	addw s1, a2, a0
	j label27
label44:
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	ld s2, 32(sp)
	addi sp, sp, 40
	ret
