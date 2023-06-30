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
pcrel972:
	auipc a0, %pcrel_hi(x)
	addi a0, a0, %pcrel_lo(pcrel972)
	mv s4, a0
	jal getarray
	addiw s5, a0, -1
pcrel973:
	auipc a0, %pcrel_hi(y)
	addi a0, a0, %pcrel_lo(pcrel973)
	mv s2, a0
	jal getarray
pcrel974:
	auipc a0, %pcrel_hi(v)
	addi a0, a0, %pcrel_lo(pcrel974)
	mv s3, a0
	jal getarray
pcrel975:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel975)
	mv s1, a0
	jal getarray
	li a0, 39
	jal _sysy_starttime
pcrel976:
	auipc a0, %pcrel_hi(b)
	addi s0, a0, %pcrel_lo(pcrel976)
	mv a0, zero
	ble s5, zero, label96
	mv a2, zero
	addiw a1, zero, 4
	bge a1, s5, label7
	sh2add a2, zero, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	j label886
label96:
	mv a2, zero
	bge zero, s5, label40
	sh2add a4, zero, s4
	lw t1, 0(a4)
	lw a3, 4(a4)
	addiw a1, zero, 1
	bge t1, a3, label28
	sh2add a3, a1, s4
	lw a3, 0(a3)
	mv t2, t1
	addiw a5, t1, 4
	bge a5, a3, label21
	j label27
label7:
	addiw a1, a2, 4
	bge a1, s5, label111
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label111
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label111
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label111
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label111
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label111
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label111
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label111
	j label889
label111:
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s5, label12
	sh2add a1, a1, s0
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s5, label12
	sh2add a1, a1, s0
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s5, label12
	sh2add a1, a1, s0
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s5, label12
	sh2add a1, a1, s0
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s5, label12
	sh2add a1, a1, s0
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s5, label12
	sh2add a1, a1, s0
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s5, label12
	sh2add a1, a1, s0
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s5, label12
	sh2add a1, a1, s0
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s5, label12
	j label915
label12:
	sh2add a2, a1, s0
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label128
	sh2add a2, a1, s0
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label128
	sh2add a2, a1, s0
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label128
	sh2add a2, a1, s0
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label128
	sh2add a2, a1, s0
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label128
	sh2add a2, a1, s0
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label128
	sh2add a2, a1, s0
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label128
	sh2add a2, a1, s0
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label128
	sh2add a2, a1, s0
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label128
	sh2add a2, a1, s0
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label128
	j label918
label21:
	addiw a5, t2, 4
	bge a5, a3, label160
	j label23
label160:
	mv a5, t2
	sh2add t1, t2, s2
	lw t1, 0(t1)
	sh2add t1, t1, s0
	lw t2, 0(t1)
	sh2add t3, a5, s3
	lw t3, 0(t3)
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw a5, a5, 1
	bge a5, a3, label26
	sh2add t1, a5, s2
	lw t1, 0(t1)
	sh2add t1, t1, s0
	lw t2, 0(t1)
	sh2add t3, a5, s3
	lw t3, 0(t3)
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw a5, a5, 1
	bge a5, a3, label26
	sh2add t1, a5, s2
	lw t1, 0(t1)
	sh2add t1, t1, s0
	lw t2, 0(t1)
	sh2add t3, a5, s3
	lw t3, 0(t3)
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw a5, a5, 1
	bge a5, a3, label26
	sh2add t1, a5, s2
	lw t1, 0(t1)
	sh2add t1, t1, s0
	lw t2, 0(t1)
	sh2add t3, a5, s3
	lw t3, 0(t3)
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw a5, a5, 1
	bge a5, a3, label26
	sh2add t1, a5, s2
	lw t1, 0(t1)
	sh2add t1, t1, s0
	lw t2, 0(t1)
	sh2add t3, a5, s3
	lw t3, 0(t3)
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw a5, a5, 1
	bge a5, a3, label26
	sh2add t1, a5, s2
	lw t1, 0(t1)
	sh2add t1, t1, s0
	lw t2, 0(t1)
	sh2add t3, a5, s3
	lw t3, 0(t3)
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw a5, a5, 1
	bge a5, a3, label26
	sh2add t1, a5, s2
	lw t1, 0(t1)
	sh2add t1, t1, s0
	lw t2, 0(t1)
	sh2add t3, a5, s3
	lw t3, 0(t3)
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw a5, a5, 1
	bge a5, a3, label26
	sh2add t1, a5, s2
	lw t1, 0(t1)
	sh2add t1, t1, s0
	lw t2, 0(t1)
	sh2add t3, a5, s3
	lw t3, 0(t3)
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw a5, a5, 1
	bge a5, a3, label26
	sh2add t1, a5, s2
	lw t1, 0(t1)
	sh2add t1, t1, s0
	lw t2, 0(t1)
	sh2add t3, a5, s3
	lw t3, 0(t3)
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw a5, a5, 1
	bge a5, a3, label26
	sh2add t1, a5, s2
	lw t1, 0(t1)
	sh2add t1, t1, s0
	lw t2, 0(t1)
	sh2add t3, a5, s3
	lw t3, 0(t3)
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw a5, a5, 1
	bge a5, a3, label26
	j label922
label23:
	sh2add t1, t2, s2
	lw t3, 0(t1)
	sh2add t3, t3, s0
	lw t4, 0(t3)
	sh2add t2, t2, s3
	lw t5, 0(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 4(t1)
	sh2add t3, t3, s0
	lw t4, 0(t3)
	lw t5, 4(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 8(t1)
	sh2add t3, t3, s0
	lw t4, 0(t3)
	lw t5, 8(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t1, 12(t1)
	sh2add t1, t1, s0
	lw t3, 0(t1)
	lw t2, 12(t2)
	addw t2, t3, t2
	sw t2, 0(t1)
	mv t2, a5
	addiw a5, a5, 4
	bge a5, a3, label160
	j label23
label922:
	sh2add t1, a5, s2
	lw t1, 0(t1)
	sh2add t1, t1, s0
	lw t2, 0(t1)
	sh2add t3, a5, s3
	lw t3, 0(t3)
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw a5, a5, 1
	bge a5, a3, label26
	j label922
label886:
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	j label911
label43:
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label44
	ble s5, zero, label96
	mv a2, zero
	addiw a1, zero, 4
	bge a1, s5, label7
	sh2add a2, zero, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	j label886
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
label46:
	bge t1, a3, label387
	sh2add a2, a2, s0
	lw a2, 0(a2)
	addiw a2, a2, -1
	sh2add a3, a1, s4
	lw a3, 0(a3)
	addiw a4, t1, 4
	bge a4, a3, label53
	j label52
label387:
	mv a2, a1
	bge a1, s5, label43
	sh2add a4, a1, s4
	lw t1, 0(a4)
	lw a3, 4(a4)
	addiw a1, a1, 1
	bge t1, a3, label46
	sh2add a3, a1, s4
	lw a3, 0(a3)
	mv t2, t1
	addiw a5, t1, 4
	bge a5, a3, label61
	j label67
label52:
	sh2add a5, t1, s2
	lw t2, 0(a5)
	sh2add t2, t2, s1
	lw t3, 0(t2)
	sh2add t1, t1, s3
	lw t4, 0(t1)
	mulw t4, a2, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 4(a5)
	sh2add t2, t2, s1
	lw t3, 0(t2)
	lw t4, 4(t1)
	mulw t4, a2, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 8(a5)
	sh2add t2, t2, s1
	lw t3, 0(t2)
	lw t4, 8(t1)
	mulw t4, a2, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	lw a5, 12(a5)
	sh2add a5, a5, s1
	lw t2, 0(a5)
	lw t1, 12(t1)
	mulw t1, a2, t1
	addw t1, t2, t1
	sw t1, 0(a5)
	mv t1, a4
	addiw a4, a4, 4
	bge a4, a3, label53
	j label52
label67:
	sh2add t1, t2, s2
	lw t3, 0(t1)
	sh2add t3, t3, s1
	lw t4, 0(t3)
	sh2add t2, t2, s3
	lw t5, 0(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 4(t1)
	sh2add t3, t3, s1
	lw t4, 0(t3)
	lw t5, 4(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 8(t1)
	sh2add t3, t3, s1
	lw t4, 0(t3)
	lw t5, 8(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t1, 12(t1)
	sh2add t1, t1, s1
	lw t3, 0(t1)
	lw t2, 12(t2)
	addw t2, t3, t2
	sw t2, 0(t1)
	mv t2, a5
	addiw a5, a5, 4
	bge a5, a3, label61
	j label67
label53:
	addiw a4, t1, 4
	bge a4, a3, label442
	j label55
label442:
	mv a4, t1
label56:
	sh2add a5, a4, s2
	lw a5, 0(a5)
	sh2add a5, a5, s1
	lw t1, 0(a5)
	sh2add t2, a4, s3
	lw t2, 0(t2)
	mulw t2, a2, t2
	addw t1, t1, t2
	sw t1, 0(a5)
	addiw a4, a4, 1
	bge a4, a3, label496
	j label56
label496:
	mv a2, a1
	bge a1, s5, label43
	sh2add a4, a1, s4
	lw t1, 0(a4)
	lw a3, 4(a4)
	addiw a1, a1, 1
	bge t1, a3, label46
	sh2add a3, a1, s4
	lw a3, 0(a3)
	mv t2, t1
	addiw a5, t1, 4
	bge a5, a3, label61
	j label67
label61:
	addiw a5, t2, 4
	bge a5, a3, label509
	j label66
label509:
	mv a5, t2
	sh2add t1, t2, s2
	lw t1, 0(t1)
	sh2add t1, t1, s1
	lw t2, 0(t1)
	sh2add t3, a5, s3
	lw t3, 0(t3)
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw a5, a5, 1
	bge a5, a3, label65
	sh2add t1, a5, s2
	lw t1, 0(t1)
	sh2add t1, t1, s1
	lw t2, 0(t1)
	sh2add t3, a5, s3
	lw t3, 0(t3)
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw a5, a5, 1
	bge a5, a3, label65
	sh2add t1, a5, s2
	lw t1, 0(t1)
	sh2add t1, t1, s1
	lw t2, 0(t1)
	sh2add t3, a5, s3
	lw t3, 0(t3)
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw a5, a5, 1
	bge a5, a3, label65
	sh2add t1, a5, s2
	lw t1, 0(t1)
	sh2add t1, t1, s1
	lw t2, 0(t1)
	sh2add t3, a5, s3
	lw t3, 0(t3)
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw a5, a5, 1
	bge a5, a3, label65
	sh2add t1, a5, s2
	lw t1, 0(t1)
	sh2add t1, t1, s1
	lw t2, 0(t1)
	sh2add t3, a5, s3
	lw t3, 0(t3)
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw a5, a5, 1
	bge a5, a3, label65
	sh2add t1, a5, s2
	lw t1, 0(t1)
	sh2add t1, t1, s1
	lw t2, 0(t1)
	sh2add t3, a5, s3
	lw t3, 0(t3)
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw a5, a5, 1
	bge a5, a3, label65
	sh2add t1, a5, s2
	lw t1, 0(t1)
	sh2add t1, t1, s1
	lw t2, 0(t1)
	sh2add t3, a5, s3
	lw t3, 0(t3)
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw a5, a5, 1
	bge a5, a3, label65
	sh2add t1, a5, s2
	lw t1, 0(t1)
	sh2add t1, t1, s1
	lw t2, 0(t1)
	sh2add t3, a5, s3
	lw t3, 0(t3)
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw a5, a5, 1
	bge a5, a3, label65
	sh2add t1, a5, s2
	lw t1, 0(t1)
	sh2add t1, t1, s1
	lw t2, 0(t1)
	sh2add t3, a5, s3
	lw t3, 0(t3)
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw a5, a5, 1
	bge a5, a3, label65
	sh2add t1, a5, s2
	lw t1, 0(t1)
	sh2add t1, t1, s1
	lw t2, 0(t1)
	sh2add t3, a5, s3
	lw t3, 0(t3)
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw a5, a5, 1
	bge a5, a3, label65
	j label925
label66:
	sh2add t1, t2, s2
	lw t3, 0(t1)
	sh2add t3, t3, s1
	lw t4, 0(t3)
	sh2add t2, t2, s3
	lw t5, 0(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 4(t1)
	sh2add t3, t3, s1
	lw t4, 0(t3)
	lw t5, 4(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 8(t1)
	sh2add t3, t3, s1
	lw t4, 0(t3)
	lw t5, 8(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t1, 12(t1)
	sh2add t1, t1, s1
	lw t3, 0(t1)
	lw t2, 12(t2)
	addw t2, t3, t2
	sw t2, 0(t1)
	mv t2, a5
	addiw a5, a5, 4
	bge a5, a3, label509
	j label66
label925:
	sh2add t1, a5, s2
	lw t1, 0(t1)
	sh2add t1, t1, s1
	lw t2, 0(t1)
	sh2add t3, a5, s3
	lw t3, 0(t3)
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw a5, a5, 1
	bge a5, a3, label65
	j label925
label55:
	sh2add a5, t1, s2
	lw t2, 0(a5)
	sh2add t2, t2, s1
	lw t3, 0(t2)
	sh2add t1, t1, s3
	lw t4, 0(t1)
	mulw t4, a2, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 4(a5)
	sh2add t2, t2, s1
	lw t3, 0(t2)
	lw t4, 4(t1)
	mulw t4, a2, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 8(a5)
	sh2add t2, t2, s1
	lw t3, 0(t2)
	lw t4, 8(t1)
	mulw t4, a2, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	lw a5, 12(a5)
	sh2add a5, a5, s1
	lw t2, 0(a5)
	lw t1, 12(t1)
	mulw t1, a2, t1
	addw t1, t2, t1
	sw t1, 0(a5)
	mv t1, a4
	addiw a4, a4, 4
	bge a4, a3, label442
	j label55
label27:
	sh2add t1, t2, s2
	lw t3, 0(t1)
	sh2add t3, t3, s0
	lw t4, 0(t3)
	sh2add t2, t2, s3
	lw t5, 0(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 4(t1)
	sh2add t3, t3, s0
	lw t4, 0(t3)
	lw t5, 4(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 8(t1)
	sh2add t3, t3, s0
	lw t4, 0(t3)
	lw t5, 8(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t1, 12(t1)
	sh2add t1, t1, s0
	lw t3, 0(t1)
	lw t2, 12(t2)
	addw t2, t3, t2
	sw t2, 0(t1)
	mv t2, a5
	addiw a5, a5, 4
	bge a5, a3, label21
	j label27
label128:
	mv a2, zero
	bge zero, s5, label40
	sh2add a4, zero, s4
	lw t1, 0(a4)
	lw a3, 4(a4)
	addiw a1, zero, 1
	bge t1, a3, label28
	sh2add a3, a1, s4
	lw a3, 0(a3)
	mv t2, t1
	addiw a5, t1, 4
	bge a5, a3, label21
	j label27
label40:
	ble s5, zero, label364
	mv a2, zero
	addiw a1, zero, 4
	bge a1, s5, label71
	sh2add a2, zero, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label71
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label71
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label71
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label71
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label71
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label71
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label71
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label71
	j label901
label364:
	mv a2, zero
	bge zero, s5, label43
	sh2add a4, zero, s4
	lw t1, 0(a4)
	lw a3, 4(a4)
	addiw a1, zero, 1
	bge t1, a3, label46
	sh2add a3, a1, s4
	lw a3, 0(a3)
	mv t2, t1
	addiw a5, t1, 4
	bge a5, a3, label61
	j label67
label901:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label71
	j label926
label918:
	sh2add a2, a1, s0
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label128
	j label918
label65:
	sh2add a3, a2, s4
	lw t1, 0(a3)
	lw a3, 4(a4)
	bge t1, a3, label387
	sh2add a2, a2, s0
	lw a2, 0(a2)
	addiw a2, a2, -1
	sh2add a3, a1, s4
	lw a3, 0(a3)
	addiw a4, t1, 4
	bge a4, a3, label53
	j label52
label28:
	bge t1, a3, label252
	sh2add a2, a2, s1
	lw a2, 0(a2)
	addiw a2, a2, -1
	sh2add a3, a1, s4
	lw a3, 0(a3)
	addiw a4, t1, 4
	bge a4, a3, label35
	j label34
label35:
	addiw a4, t1, 4
	bge a4, a3, label307
label39:
	sh2add a5, t1, s2
	lw t2, 0(a5)
	sh2add t2, t2, s0
	lw t3, 0(t2)
	sh2add t1, t1, s3
	lw t4, 0(t1)
	mulw t4, a2, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 4(a5)
	sh2add t2, t2, s0
	lw t3, 0(t2)
	lw t4, 4(t1)
	mulw t4, a2, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 8(a5)
	sh2add t2, t2, s0
	lw t3, 0(t2)
	lw t4, 8(t1)
	mulw t4, a2, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	lw a5, 12(a5)
	sh2add a5, a5, s0
	lw t2, 0(a5)
	lw t1, 12(t1)
	mulw t1, a2, t1
	addw t1, t2, t1
	sw t1, 0(a5)
	mv t1, a4
	addiw a4, a4, 4
	bge a4, a3, label307
	j label39
label307:
	mv a4, t1
label37:
	sh2add a5, a4, s2
	lw a5, 0(a5)
	sh2add a5, a5, s0
	lw t1, 0(a5)
	sh2add t2, a4, s3
	lw t2, 0(t2)
	mulw t2, a2, t2
	addw t1, t1, t2
	sw t1, 0(a5)
	addiw a4, a4, 1
	bge a4, a3, label323
	j label37
label323:
	mv a2, a1
	bge a1, s5, label40
	sh2add a4, a1, s4
	lw t1, 0(a4)
	lw a3, 4(a4)
	addiw a1, a1, 1
	bge t1, a3, label28
	sh2add a3, a1, s4
	lw a3, 0(a3)
	mv t2, t1
	addiw a5, t1, 4
	bge a5, a3, label21
	j label27
label34:
	sh2add a5, t1, s2
	lw t2, 0(a5)
	sh2add t2, t2, s0
	lw t3, 0(t2)
	sh2add t1, t1, s3
	lw t4, 0(t1)
	mulw t4, a2, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 4(a5)
	sh2add t2, t2, s0
	lw t3, 0(t2)
	lw t4, 4(t1)
	mulw t4, a2, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 8(a5)
	sh2add t2, t2, s0
	lw t3, 0(t2)
	lw t4, 8(t1)
	mulw t4, a2, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	lw a5, 12(a5)
	sh2add a5, a5, s0
	lw t2, 0(a5)
	lw t1, 12(t1)
	mulw t1, a2, t1
	addw t1, t2, t1
	sw t1, 0(a5)
	mv t1, a4
	addiw a4, a4, 4
	bge a4, a3, label35
	j label34
label252:
	mv a2, a1
	bge a1, s5, label40
	sh2add a4, a1, s4
	lw t1, 0(a4)
	lw a3, 4(a4)
	addiw a1, a1, 1
	bge t1, a3, label28
	sh2add a3, a1, s4
	lw a3, 0(a3)
	mv t2, t1
	addiw a5, t1, 4
	bge a5, a3, label21
	j label27
label26:
	sh2add a3, a2, s4
	lw t1, 0(a3)
	lw a3, 4(a4)
	bge t1, a3, label252
	sh2add a2, a2, s1
	lw a2, 0(a2)
	addiw a2, a2, -1
	sh2add a3, a1, s4
	lw a3, 0(a3)
	addiw a4, t1, 4
	bge a4, a3, label35
	j label34
label71:
	addiw a1, a2, 4
	bge a1, s5, label612
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label612
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label612
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label612
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label612
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label612
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label612
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label612
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label612
	j label929
label612:
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s5, label76
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s5, label76
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s5, label76
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s5, label76
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s5, label76
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s5, label76
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s5, label76
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s5, label76
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s5, label76
	j label930
label76:
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label629
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label629
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label629
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label629
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label629
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label629
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label629
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label629
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label629
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label629
	j label933
label629:
	mv a2, zero
	bge zero, s5, label43
	sh2add a4, zero, s4
	lw t1, 0(a4)
	lw a3, 4(a4)
	addiw a1, zero, 1
	bge t1, a3, label46
	sh2add a3, a1, s4
	lw a3, 0(a3)
	mv t2, t1
	addiw a5, t1, 4
	bge a5, a3, label61
	j label67
label933:
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label629
	j label933
label929:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label612
	j label929
label926:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label71
	j label926
label930:
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s5, label76
	j label930
label889:
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label111
label914:
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label111
	j label914
label915:
	sh2add a1, a1, s0
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s5, label12
	j label915
label911:
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s5, label7
	j label911
