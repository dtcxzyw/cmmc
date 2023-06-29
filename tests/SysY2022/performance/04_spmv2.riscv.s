.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
x:
	.zero	400040
.align 4
y:
	.zero	12000000
.align 4
v:
	.zero	12000000
.align 4
a:
	.zero	400040
.align 4
b:
	.zero	400040
.text
.globl main
main:
	addi sp, sp, -56
	sd s4, 48(sp)
	sd s5, 40(sp)
	sd s0, 32(sp)
	sd s2, 24(sp)
	sd s3, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
pcrel940:
	auipc a0, %pcrel_hi(x)
	addi a0, a0, %pcrel_lo(pcrel940)
	mv s4, a0
	jal getarray
	addiw s5, a0, -1
pcrel941:
	auipc a0, %pcrel_hi(y)
	addi a0, a0, %pcrel_lo(pcrel941)
	mv s2, a0
	jal getarray
pcrel942:
	auipc a0, %pcrel_hi(v)
	addi a0, a0, %pcrel_lo(pcrel942)
	mv s3, a0
	jal getarray
pcrel943:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel943)
	mv s1, a0
	jal getarray
	li a0, 39
	jal _sysy_starttime
pcrel944:
	auipc a0, %pcrel_hi(b)
	addi s0, a0, %pcrel_lo(pcrel944)
	mv a0, zero
	ble s5, zero, label96
	mv a2, zero
	addiw a1, zero, 4
	bge a1, s5, label7
	slliw a2, zero, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	j label865
label96:
	mv a2, zero
	bge zero, s5, label40
	slliw a1, zero, 2
	add a4, s4, a1
	lw t1, 0(a4)
	lw a3, 4(a4)
	addiw a1, zero, 1
	bge t1, a3, label28
	slliw a3, a1, 2
	add a3, s4, a3
	lw a3, 0(a3)
	mv t2, t1
	addiw a5, t1, 4
	bge a5, a3, label22
	j label21
label865:
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	j label887
label7:
	addiw a1, a2, 4
	bge a1, s5, label10
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label10
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label10
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label10
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label10
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label10
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label10
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label10
	j label868
label10:
	addiw a1, a2, 4
	bge a1, s5, label121
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label121
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label121
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label121
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label121
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label121
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label121
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label121
	j label871
label22:
	addiw a5, t2, 4
	bge a5, a3, label194
	j label27
label194:
	mv a5, t2
label24:
	slliw t1, a5, 2
	add t1, s2, t1
	lw t1, 0(t1)
	slliw t1, t1, 2
	add t1, s0, t1
	lw t2, 0(t1)
	slliw t3, a5, 2
	add t3, s3, t3
	lw t3, 0(t3)
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw a5, a5, 1
	bge a5, a3, label26
	j label24
label26:
	slliw a3, a2, 2
	add a3, s4, a3
	lw t1, 0(a3)
	lw a3, 4(a4)
	bge t1, a3, label252
	slliw a2, a2, 2
	add a2, s1, a2
	lw a2, 0(a2)
	addiw a2, a2, -1
	slliw a3, a1, 2
	add a3, s4, a3
	lw a3, 0(a3)
	addiw a4, t1, 4
	bge a4, a3, label35
label34:
	slliw a5, t1, 2
	add a5, s2, a5
	lw t2, 0(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	slliw t1, t1, 2
	add t1, s3, t1
	lw t4, 0(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 4(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 4(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 8(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 8(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw a5, 12(a5)
	slliw a5, a5, 2
	add a5, s0, a5
	lw t2, 0(a5)
	lw t1, 12(t1)
	mulw t1, a2, t1
	addw t1, t1, t2
	sw t1, 0(a5)
	mv t1, a4
	addiw a4, a4, 4
	bge a4, a3, label35
	j label34
label35:
	addiw a4, t1, 4
	bge a4, a3, label307
	j label39
label307:
	mv a4, t1
	j label37
label39:
	slliw a5, t1, 2
	add a5, s2, a5
	lw t2, 0(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	slliw t1, t1, 2
	add t1, s3, t1
	lw t4, 0(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 4(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 4(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 8(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 8(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw a5, 12(a5)
	slliw a5, a5, 2
	add a5, s0, a5
	lw t2, 0(a5)
	lw t1, 12(t1)
	mulw t1, a2, t1
	addw t1, t1, t2
	sw t1, 0(a5)
	mv t1, a4
	addiw a4, a4, 4
	bge a4, a3, label307
	j label39
label37:
	slliw a5, a4, 2
	add a5, s2, a5
	lw a5, 0(a5)
	slliw a5, a5, 2
	add a5, s0, a5
	lw t1, 0(a5)
	slliw t2, a4, 2
	add t2, s3, t2
	lw t2, 0(t2)
	mulw t2, a2, t2
	addw t1, t2, t1
	sw t1, 0(a5)
	addiw a4, a4, 1
	bge a4, a3, label323
	j label37
label323:
	mv a2, a1
	bge a1, s5, label40
	slliw a1, a1, 2
	add a4, s4, a1
	lw t1, 0(a4)
	lw a3, 4(a4)
	addiw a1, a2, 1
	bge t1, a3, label28
	slliw a3, a1, 2
	add a3, s4, a3
	lw a3, 0(a3)
	mv t2, t1
	addiw a5, t1, 4
	bge a5, a3, label22
	j label21
label133:
	mv a2, zero
	bge zero, s5, label40
	slliw a1, zero, 2
	add a4, s4, a1
	lw t1, 0(a4)
	lw a3, 4(a4)
	addiw a1, zero, 1
	bge t1, a3, label28
	slliw a3, a1, 2
	add a3, s4, a3
	lw a3, 0(a3)
	mv t2, t1
	addiw a5, t1, 4
	bge a5, a3, label22
label21:
	slliw t1, t2, 2
	add t1, s2, t1
	lw t3, 0(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	slliw t2, t2, 2
	add t2, s3, t2
	lw t5, 0(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 4(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 4(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 8(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 8(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t1, 12(t1)
	slliw t1, t1, 2
	add t1, s0, t1
	lw t3, 0(t1)
	lw t2, 12(t2)
	addw t2, t3, t2
	sw t2, 0(t1)
	mv t2, a5
	addiw a5, a5, 4
	bge a5, a3, label22
	j label21
label40:
	ble s5, zero, label364
	mv a2, zero
	addiw a1, zero, 4
	bge a1, s5, label70
	slliw a2, zero, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label70
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label70
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label70
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label70
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label70
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label70
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label70
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label70
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label70
	j label900
label27:
	slliw t1, t2, 2
	add t1, s2, t1
	lw t3, 0(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	slliw t2, t2, 2
	add t2, s3, t2
	lw t5, 0(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 4(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 4(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 8(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 8(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t1, 12(t1)
	slliw t1, t1, 2
	add t1, s0, t1
	lw t3, 0(t1)
	lw t2, 12(t2)
	addw t2, t3, t2
	sw t2, 0(t1)
	mv t2, a5
	addiw a5, a5, 4
	bge a5, a3, label194
	j label27
label364:
	mv a2, zero
	bge zero, s5, label43
	slliw a1, zero, 2
	add a4, s4, a1
	lw t1, 0(a4)
	lw a3, 4(a4)
	addiw a1, zero, 1
	bge t1, a3, label56
	slliw a3, a1, 2
	add a3, s4, a3
	lw a3, 0(a3)
	mv t2, t1
	addiw a5, t1, 4
	bge a5, a3, label49
	j label55
label43:
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label44
	ble s5, zero, label96
	mv a2, zero
	addiw a1, zero, 4
	bge a1, s5, label7
	slliw a2, zero, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	j label865
label49:
	addiw a5, t2, 4
	bge a5, a3, label396
	j label54
label396:
	mv a5, t2
label51:
	slliw t1, a5, 2
	add t1, s2, t1
	lw t1, 0(t1)
	slliw t1, t1, 2
	add t1, s1, t1
	lw t2, 0(t1)
	slliw t3, a5, 2
	add t3, s3, t3
	lw t3, 0(t3)
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw a5, a5, 1
	bge a5, a3, label53
	j label51
label55:
	slliw t1, t2, 2
	add t1, s2, t1
	lw t3, 0(t1)
	slliw t3, t3, 2
	add t3, s1, t3
	lw t4, 0(t3)
	slliw t2, t2, 2
	add t2, s3, t2
	lw t5, 0(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 4(t1)
	slliw t3, t3, 2
	add t3, s1, t3
	lw t4, 0(t3)
	lw t5, 4(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 8(t1)
	slliw t3, t3, 2
	add t3, s1, t3
	lw t4, 0(t3)
	lw t5, 8(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t1, 12(t1)
	slliw t1, t1, 2
	add t1, s1, t1
	lw t3, 0(t1)
	lw t2, 12(t2)
	addw t2, t3, t2
	sw t2, 0(t1)
	mv t2, a5
	addiw a5, a5, 4
	bge a5, a3, label49
	j label55
label56:
	bge t1, a3, label488
	slliw a2, a2, 2
	add a2, s0, a2
	lw a2, 0(a2)
	addiw a2, a2, -1
	slliw a3, a1, 2
	add a3, s4, a3
	lw a3, 0(a3)
	addiw a4, t1, 4
	bge a4, a3, label63
	j label62
label488:
	mv a2, a1
	bge a1, s5, label43
	slliw a1, a1, 2
	add a4, s4, a1
	lw t1, 0(a4)
	lw a3, 4(a4)
	addiw a1, a2, 1
	bge t1, a3, label56
	slliw a3, a1, 2
	add a3, s4, a3
	lw a3, 0(a3)
	mv t2, t1
	addiw a5, t1, 4
	bge a5, a3, label49
	j label55
label62:
	slliw a5, t1, 2
	add a5, s2, a5
	lw t2, 0(a5)
	slliw t2, t2, 2
	add t2, s1, t2
	lw t3, 0(t2)
	slliw t1, t1, 2
	add t1, s3, t1
	lw t4, 0(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 4(a5)
	slliw t2, t2, 2
	add t2, s1, t2
	lw t3, 0(t2)
	lw t4, 4(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 8(a5)
	slliw t2, t2, 2
	add t2, s1, t2
	lw t3, 0(t2)
	lw t4, 8(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw a5, 12(a5)
	slliw a5, a5, 2
	add a5, s1, a5
	lw t2, 0(a5)
	lw t1, 12(t1)
	mulw t1, a2, t1
	addw t1, t1, t2
	sw t1, 0(a5)
	mv t1, a4
	addiw a4, a4, 4
	bge a4, a3, label63
	j label62
label72:
	addiw a1, a2, 4
	bge a1, s5, label612
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label612
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label612
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label612
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label612
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label612
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label612
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label612
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label612
	j label902
label612:
	mv a1, a2
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label624
	slliw a2, a1, 2
	add a2, s1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label624
	slliw a2, a1, 2
	add a2, s1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label624
	slliw a2, a1, 2
	add a2, s1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label624
	slliw a2, a1, 2
	add a2, s1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label624
	slliw a2, a1, 2
	add a2, s1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label624
	slliw a2, a1, 2
	add a2, s1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label624
	slliw a2, a1, 2
	add a2, s1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label624
	slliw a2, a1, 2
	add a2, s1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label624
	slliw a2, a1, 2
	add a2, s1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label624
	j label905
label624:
	mv a2, zero
	bge zero, s5, label43
	slliw a1, zero, 2
	add a4, s4, a1
	lw t1, 0(a4)
	lw a3, 4(a4)
	addiw a1, zero, 1
	bge t1, a3, label56
	slliw a3, a1, 2
	add a3, s4, a3
	lw a3, 0(a3)
	mv t2, t1
	addiw a5, t1, 4
	bge a5, a3, label49
	j label55
label63:
	addiw a4, t1, 4
	bge a4, a3, label543
label67:
	slliw a5, t1, 2
	add a5, s2, a5
	lw t2, 0(a5)
	slliw t2, t2, 2
	add t2, s1, t2
	lw t3, 0(t2)
	slliw t1, t1, 2
	add t1, s3, t1
	lw t4, 0(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 4(a5)
	slliw t2, t2, 2
	add t2, s1, t2
	lw t3, 0(t2)
	lw t4, 4(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 8(a5)
	slliw t2, t2, 2
	add t2, s1, t2
	lw t3, 0(t2)
	lw t4, 8(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw a5, 12(a5)
	slliw a5, a5, 2
	add a5, s1, a5
	lw t2, 0(a5)
	lw t1, 12(t1)
	mulw t1, a2, t1
	addw t1, t1, t2
	sw t1, 0(a5)
	mv t1, a4
	addiw a4, a4, 4
	bge a4, a3, label543
	j label67
label543:
	mv a4, t1
label65:
	slliw a5, a4, 2
	add a5, s2, a5
	lw a5, 0(a5)
	slliw a5, a5, 2
	add a5, s1, a5
	lw t1, 0(a5)
	slliw t2, a4, 2
	add t2, s3, t2
	lw t2, 0(t2)
	mulw t2, a2, t2
	addw t1, t2, t1
	sw t1, 0(a5)
	addiw a4, a4, 1
	bge a4, a3, label559
	j label65
label559:
	mv a2, a1
	bge a1, s5, label43
	slliw a1, a1, 2
	add a4, s4, a1
	lw t1, 0(a4)
	lw a3, 4(a4)
	addiw a1, a2, 1
	bge t1, a3, label56
	slliw a3, a1, 2
	add a3, s4, a3
	lw a3, 0(a3)
	mv t2, t1
	addiw a5, t1, 4
	bge a5, a3, label49
	j label55
label54:
	slliw t1, t2, 2
	add t1, s2, t1
	lw t3, 0(t1)
	slliw t3, t3, 2
	add t3, s1, t3
	lw t4, 0(t3)
	slliw t2, t2, 2
	add t2, s3, t2
	lw t5, 0(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 4(t1)
	slliw t3, t3, 2
	add t3, s1, t3
	lw t4, 0(t3)
	lw t5, 4(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 8(t1)
	slliw t3, t3, 2
	add t3, s1, t3
	lw t4, 0(t3)
	lw t5, 8(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t1, 12(t1)
	slliw t1, t1, 2
	add t1, s1, t1
	lw t3, 0(t1)
	lw t2, 12(t2)
	addw t2, t3, t2
	sw t2, 0(t1)
	mv t2, a5
	addiw a5, a5, 4
	bge a5, a3, label396
	j label54
label905:
	slliw a2, a1, 2
	add a2, s1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label624
	j label905
label252:
	mv a2, a1
	bge a1, s5, label40
	slliw a1, a1, 2
	add a4, s4, a1
	lw t1, 0(a4)
	lw a3, 4(a4)
	addiw a1, a2, 1
	bge t1, a3, label28
	slliw a3, a1, 2
	add a3, s4, a3
	lw a3, 0(a3)
	mv t2, t1
	addiw a5, t1, 4
	bge a5, a3, label22
	j label21
label896:
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label133
	j label896
label53:
	slliw a3, a2, 2
	add a3, s4, a3
	lw t1, 0(a3)
	lw a3, 4(a4)
	bge t1, a3, label488
	slliw a2, a2, 2
	add a2, s0, a2
	lw a2, 0(a2)
	addiw a2, a2, -1
	slliw a3, a1, 2
	add a3, s4, a3
	lw a3, 0(a3)
	addiw a4, t1, 4
	bge a4, a3, label63
	j label62
label28:
	bge t1, a3, label252
	slliw a2, a2, 2
	add a2, s1, a2
	lw a2, 0(a2)
	addiw a2, a2, -1
	slliw a3, a1, 2
	add a3, s4, a3
	lw a3, 0(a3)
	addiw a4, t1, 4
	bge a4, a3, label35
	j label34
label871:
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label121
	j label893
label121:
	mv a1, a2
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label133
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label133
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label133
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label133
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label133
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label133
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label133
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label133
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label133
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label133
	j label896
label70:
	addiw a1, a2, 4
	bge a1, s5, label72
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label72
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label72
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label72
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label72
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label72
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label72
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label72
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label72
	j label901
label900:
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label70
	j label900
label901:
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label72
	j label901
label902:
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label612
	j label902
label868:
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label10
	j label890
label893:
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label121
	j label893
label890:
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label10
	j label890
label887:
	slliw a2, a2, 2
	add a2, s0, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	j label887
label44:
	li a0, 47
	jal _sysy_stoptime
	mv a0, s5
	mv a1, s0
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s4, 48(sp)
	addi sp, sp, 56
	ret
