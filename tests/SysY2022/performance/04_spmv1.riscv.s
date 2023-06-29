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
	sd s1, 48(sp)
	sd s2, 40(sp)
	sd s3, 32(sp)
	sd s4, 24(sp)
	sd s5, 16(sp)
	sd s0, 8(sp)
	sd ra, 0(sp)
pcrel939:
	auipc a0, %pcrel_hi(x)
	addi a0, a0, %pcrel_lo(pcrel939)
	mv s1, a0
	jal getarray
	addiw s2, a0, -1
pcrel940:
	auipc a0, %pcrel_hi(y)
	addi a0, a0, %pcrel_lo(pcrel940)
	mv s3, a0
	jal getarray
pcrel941:
	auipc a0, %pcrel_hi(v)
	addi a0, a0, %pcrel_lo(pcrel941)
	mv s4, a0
	jal getarray
pcrel942:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel942)
	mv s5, a0
	jal getarray
	li a0, 39
	jal _sysy_starttime
pcrel943:
	auipc a0, %pcrel_hi(b)
	addi s0, a0, %pcrel_lo(pcrel943)
	mv a0, zero
	ble s2, zero, label96
	mv a1, zero
	addiw a2, zero, 4
	bge a2, s2, label6
	slliw a1, zero, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label6
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label6
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label6
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label6
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label6
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label6
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label6
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label6
label864:
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label6
	j label886
label96:
	mv a2, zero
	bge zero, s2, label40
	slliw a1, zero, 2
	add a3, s1, a1
	lw t1, 0(a3)
	lw a4, 4(a3)
	addiw a1, zero, 1
	bge t1, a4, label147
	slliw a4, a1, 2
	add a4, s1, a4
	lw a4, 0(a4)
	mv t2, t1
	addiw a5, t1, 4
	bge a5, a4, label22
label21:
	slliw t1, t2, 2
	add t1, s3, t1
	lw t3, 0(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	slliw t2, t2, 2
	add t2, s4, t2
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
	bge a5, a4, label22
	j label21
label43:
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label44
	ble s2, zero, label96
	mv a1, zero
	addiw a2, zero, 4
	bge a2, s2, label6
	slliw a1, zero, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label6
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label6
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label6
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label6
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label6
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label6
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label6
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label6
	j label864
label44:
	li a0, 47
	jal _sysy_stoptime
	mv a0, s2
	mv a1, s0
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s4, 24(sp)
	ld s3, 32(sp)
	ld s2, 40(sp)
	ld s1, 48(sp)
	addi sp, sp, 56
	ret
label67:
	slliw t1, t2, 2
	add t1, s3, t1
	lw t3, 0(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	slliw t2, t2, 2
	add t2, s4, t2
	lw t5, 0(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 4(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 4(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 8(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 8(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t1, 12(t1)
	slliw t1, t1, 2
	add t1, s5, t1
	lw t3, 0(t1)
	lw t2, 12(t2)
	addw t2, t3, t2
	sw t2, 0(t1)
	mv t2, a5
	addiw a5, a5, 4
	bge a5, a4, label61
	j label67
label629:
	mv a2, zero
	bge zero, s2, label43
	slliw a1, zero, 2
	add a3, s1, a1
	lw t1, 0(a3)
	lw a4, 4(a3)
	addiw a1, zero, 1
	bge t1, a4, label383
	slliw a4, a1, 2
	add a4, s1, a4
	lw a4, 0(a4)
	mv t2, t1
	addiw a5, t1, 4
	bge a5, a4, label61
	j label67
label383:
	mv a3, a4
	bge t1, a4, label387
	slliw a2, a2, 2
	add a2, s0, a2
	lw a2, 0(a2)
	addiw a2, a2, -1
	slliw a3, a1, 2
	add a3, s1, a3
	lw a3, 0(a3)
	addiw a4, t1, 4
	bge a4, a3, label53
	j label52
label387:
	mv a2, a1
	bge a1, s2, label43
	slliw a1, a1, 2
	add a3, s1, a1
	lw t1, 0(a3)
	lw a4, 4(a3)
	addiw a1, a2, 1
	bge t1, a4, label383
	slliw a4, a1, 2
	add a4, s1, a4
	lw a4, 0(a4)
	mv t2, t1
	addiw a5, t1, 4
	bge a5, a4, label61
	j label67
label442:
	mv a4, t1
label56:
	slliw a5, a4, 2
	add a5, s3, a5
	lw a5, 0(a5)
	slliw a5, a5, 2
	add a5, s5, a5
	lw t1, 0(a5)
	slliw t2, a4, 2
	add t2, s4, t2
	lw t2, 0(t2)
	mulw t2, a2, t2
	addw t1, t2, t1
	sw t1, 0(a5)
	addiw a4, a4, 1
	bge a4, a3, label496
	j label56
label496:
	mv a2, a1
	bge a1, s2, label43
	slliw a1, a1, 2
	add a3, s1, a1
	lw t1, 0(a3)
	lw a4, 4(a3)
	addiw a1, a2, 1
	bge t1, a4, label383
	slliw a4, a1, 2
	add a4, s1, a4
	lw a4, 0(a4)
	mv t2, t1
	addiw a5, t1, 4
	bge a5, a4, label61
	j label67
label61:
	addiw a5, t2, 4
	bge a5, a4, label509
	j label66
label509:
	mv a5, t2
label63:
	slliw t1, a5, 2
	add t1, s3, t1
	lw t1, 0(t1)
	slliw t1, t1, 2
	add t1, s5, t1
	lw t2, 0(t1)
	slliw t3, a5, 2
	add t3, s4, t3
	lw t3, 0(t3)
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw a5, a5, 1
	bge a5, a4, label65
	j label63
label66:
	slliw t1, t2, 2
	add t1, s3, t1
	lw t3, 0(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	slliw t2, t2, 2
	add t2, s4, t2
	lw t5, 0(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 4(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 4(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 8(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 8(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t1, 12(t1)
	slliw t1, t1, 2
	add t1, s5, t1
	lw t3, 0(t1)
	lw t2, 12(t2)
	addw t2, t3, t2
	sw t2, 0(t1)
	mv t2, a5
	addiw a5, a5, 4
	bge a5, a4, label509
	j label66
label147:
	mv a3, a4
	bge t1, a4, label252
	slliw a2, a2, 2
	add a2, s5, a2
	lw a2, 0(a2)
	addiw a2, a2, -1
	slliw a3, a1, 2
	add a3, s1, a3
	lw a3, 0(a3)
	addiw a4, t1, 4
	bge a4, a3, label35
	j label34
label35:
	addiw a4, t1, 4
	bge a4, a3, label307
	j label37
label307:
	mv a4, t1
label38:
	slliw a5, a4, 2
	add a5, s3, a5
	lw a5, 0(a5)
	slliw a5, a5, 2
	add a5, s0, a5
	lw t1, 0(a5)
	slliw t2, a4, 2
	add t2, s4, t2
	lw t2, 0(t2)
	mulw t2, a2, t2
	addw t1, t2, t1
	sw t1, 0(a5)
	addiw a4, a4, 1
	bge a4, a3, label361
	j label38
label361:
	mv a2, a1
	bge a1, s2, label40
	slliw a1, a1, 2
	add a3, s1, a1
	lw t1, 0(a3)
	lw a4, 4(a3)
	addiw a1, a2, 1
	bge t1, a4, label147
	slliw a4, a1, 2
	add a4, s1, a4
	lw a4, 0(a4)
	mv t2, t1
	addiw a5, t1, 4
	bge a5, a4, label22
	j label21
label22:
	addiw a5, t2, 4
	bge a5, a4, label194
	j label24
label194:
	mv a5, t2
	j label25
label24:
	slliw t1, t2, 2
	add t1, s3, t1
	lw t3, 0(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	slliw t2, t2, 2
	add t2, s4, t2
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
	bge a5, a4, label194
	j label24
label25:
	slliw t1, a5, 2
	add t1, s3, t1
	lw t1, 0(t1)
	slliw t1, t1, 2
	add t1, s0, t1
	lw t2, 0(t1)
	slliw t3, a5, 2
	add t3, s4, t3
	lw t3, 0(t3)
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw a5, a5, 1
	bge a5, a4, label27
	j label25
label52:
	slliw a5, t1, 2
	add a5, s3, a5
	lw t2, 0(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	slliw t1, t1, 2
	add t1, s4, t1
	lw t4, 0(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 4(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 4(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 8(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 8(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw a5, 12(a5)
	slliw a5, a5, 2
	add a5, s5, a5
	lw t2, 0(a5)
	lw t1, 12(t1)
	mulw t1, a2, t1
	addw t1, t1, t2
	sw t1, 0(a5)
	mv t1, a4
	addiw a4, a4, 4
	bge a4, a3, label53
	j label52
label65:
	slliw a4, a2, 2
	add a4, s1, a4
	lw t1, 0(a4)
	lw a3, 4(a3)
	bge t1, a3, label387
	slliw a2, a2, 2
	add a2, s0, a2
	lw a2, 0(a2)
	addiw a2, a2, -1
	slliw a3, a1, 2
	add a3, s1, a3
	lw a3, 0(a3)
	addiw a4, t1, 4
	bge a4, a3, label53
	j label52
label55:
	slliw a5, t1, 2
	add a5, s3, a5
	lw t2, 0(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	slliw t1, t1, 2
	add t1, s4, t1
	lw t4, 0(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 4(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 4(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 8(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 8(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw a5, 12(a5)
	slliw a5, a5, 2
	add a5, s5, a5
	lw t2, 0(a5)
	lw t1, 12(t1)
	mulw t1, a2, t1
	addw t1, t1, t2
	sw t1, 0(a5)
	mv t1, a4
	addiw a4, a4, 4
	bge a4, a3, label442
	j label55
label53:
	addiw a4, t1, 4
	bge a4, a3, label442
	j label55
label27:
	slliw a4, a2, 2
	add a4, s1, a4
	lw t1, 0(a4)
	lw a3, 4(a3)
	bge t1, a3, label252
	slliw a2, a2, 2
	add a2, s5, a2
	lw a2, 0(a2)
	addiw a2, a2, -1
	slliw a3, a1, 2
	add a3, s1, a3
	lw a3, 0(a3)
	addiw a4, t1, 4
	bge a4, a3, label35
	j label34
label252:
	mv a2, a1
	bge a1, s2, label40
	slliw a1, a1, 2
	add a3, s1, a1
	lw t1, 0(a3)
	lw a4, 4(a3)
	addiw a1, a2, 1
	bge t1, a4, label147
	slliw a4, a1, 2
	add a4, s1, a4
	lw a4, 0(a4)
	mv t2, t1
	addiw a5, t1, 4
	bge a5, a4, label22
	j label21
label34:
	slliw a5, t1, 2
	add a5, s3, a5
	lw t2, 0(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	slliw t1, t1, 2
	add t1, s4, t1
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
label37:
	slliw a5, t1, 2
	add a5, s3, a5
	lw t2, 0(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	slliw t1, t1, 2
	add t1, s4, t1
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
	j label37
label905:
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label629
	j label905
label868:
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label12
	j label890
label12:
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label128
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label128
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label128
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label128
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label128
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label128
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label128
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label128
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label128
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label128
	j label893
label128:
	mv a2, zero
	bge zero, s2, label40
	slliw a1, zero, 2
	add a3, s1, a1
	lw t1, 0(a3)
	lw a4, 4(a3)
	addiw a1, zero, 1
	bge t1, a4, label147
	slliw a4, a1, 2
	add a4, s1, a4
	lw a4, 0(a4)
	mv t2, t1
	addiw a5, t1, 4
	bge a5, a4, label22
	j label21
label40:
	ble s2, zero, label364
	mv a1, zero
	addiw a2, zero, 4
	bge a2, s2, label71
	slliw a1, zero, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label71
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label71
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label71
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label71
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label71
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label71
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label71
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label71
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label71
	j label898
label364:
	mv a2, zero
	bge zero, s2, label43
	slliw a1, zero, 2
	add a3, s1, a1
	lw t1, 0(a3)
	lw a4, 4(a3)
	addiw a1, zero, 1
	bge t1, a4, label383
	slliw a4, a1, 2
	add a4, s1, a4
	lw a4, 0(a4)
	mv t2, t1
	addiw a5, t1, 4
	bge a5, a4, label61
	j label67
label71:
	addiw a2, a1, 4
	bge a2, s2, label73
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label73
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label73
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label73
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label73
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label73
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label73
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label73
	j label879
label893:
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label128
	j label893
label73:
	addiw a2, a1, 4
	bge a2, s2, label76
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label76
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label76
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label76
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label76
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label76
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label76
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label76
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label76
	j label902
label76:
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label629
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label629
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label629
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label629
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label629
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label629
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label629
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label629
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label629
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label629
	j label905
label6:
	addiw a2, a1, 4
	bge a2, s2, label9
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label9
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label9
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label9
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label9
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label9
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label9
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label9
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label9
	j label887
label9:
	addiw a2, a1, 4
	bge a2, s2, label12
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label12
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label12
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label12
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label12
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label12
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label12
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label12
	j label868
label898:
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label71
	j label898
label879:
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label73
label901:
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label73
	j label901
label902:
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label76
	j label902
label886:
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label6
	j label886
label890:
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label12
	j label890
label887:
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label9
	j label887
