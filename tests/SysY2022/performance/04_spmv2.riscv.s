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
pcrel873:
	auipc a0, %pcrel_hi(x)
	sd s4, 48(sp)
	addi a0, a0, %pcrel_lo(pcrel873)
	sd s5, 40(sp)
	mv s4, a0
	sd s0, 32(sp)
	sd s2, 24(sp)
	sd s3, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
	jal getarray
	addiw s5, a0, -1
pcrel874:
	auipc a0, %pcrel_hi(y)
	addi a0, a0, %pcrel_lo(pcrel874)
	mv s2, a0
	jal getarray
pcrel875:
	auipc a0, %pcrel_hi(v)
	addi a0, a0, %pcrel_lo(pcrel875)
	mv s3, a0
	jal getarray
pcrel876:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel876)
	mv s1, a0
	jal getarray
	li a0, 39
	jal _sysy_starttime
pcrel877:
	auipc a0, %pcrel_hi(b)
	addi s0, a0, %pcrel_lo(pcrel877)
	mv a0, zero
	ble s5, zero, label96
	mv a2, zero
	addiw a1, zero, 4
	ble s5, a1, label7
	sh2add a2, zero, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label7
label784:
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label7
	j label810
label96:
	mv a2, zero
	ble s5, zero, label40
	sh2add a4, zero, s4
	addiw a1, zero, 1
	lw t0, 0(a4)
	lw a3, 4(a4)
	bge t0, a3, label18
	sh2add a3, a1, s4
	mv t1, t0
	lw a3, 0(a3)
	addiw a5, t0, 4
	ble a3, a5, label34
	j label33
label44:
	bge t0, a3, label382
	sh2add a2, a2, s0
	sh2add a3, a1, s4
	lw a2, 0(a2)
	lw a3, 0(a3)
	addiw a2, a2, -1
	addiw a4, t0, 4
	ble a3, a4, label51
	j label50
label382:
	mv a2, a1
	ble s5, a1, label66
	sh2add a4, a1, s4
	addiw a1, a1, 1
	lw t0, 0(a4)
	lw a3, 4(a4)
	bge t0, a3, label44
	sh2add a3, a1, s4
	mv t1, t0
	lw a3, 0(a3)
	addiw a5, t0, 4
	ble a3, a5, label60
	j label59
label50:
	sh2add a5, t0, s2
	sh2add t0, t0, s3
	lw t1, 0(a5)
	sh2add t1, t1, s1
	lw t2, 0(t1)
	lw t3, 0(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t1, 4(a5)
	sh2add t1, t1, s1
	lw t2, 0(t1)
	lw t3, 4(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t1, 8(a5)
	sh2add t1, t1, s1
	lw t2, 0(t1)
	lw t3, 8(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw a5, 12(a5)
	sh2add a5, a5, s1
	lw t1, 0(a5)
	lw t0, 12(t0)
	mulw t0, a2, t0
	addw t0, t1, t0
	sw t0, 0(a5)
	mv t0, a4
	addiw a4, a4, 4
	ble a3, a4, label51
	j label50
label66:
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label67
	ble s5, zero, label96
	mv a2, zero
	addiw a1, zero, 4
	ble s5, a1, label7
	sh2add a2, zero, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label7
	j label824
label59:
	sh2add t0, t1, s2
	sh2add t1, t1, s3
	lw t2, 0(t0)
	sh2add t2, t2, s1
	lw t3, 0(t2)
	lw t4, 0(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 4(t0)
	sh2add t2, t2, s1
	lw t3, 0(t2)
	lw t4, 4(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 8(t0)
	sh2add t2, t2, s1
	lw t3, 0(t2)
	lw t4, 8(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t0, 12(t0)
	sh2add t0, t0, s1
	lw t2, 0(t0)
	lw t1, 12(t1)
	addw t1, t2, t1
	sw t1, 0(t0)
	mv t1, a5
	addiw a5, a5, 4
	ble a3, a5, label60
	j label59
label60:
	addiw a5, t1, 4
	ble a3, a5, label538
	j label65
label538:
	mv a5, t1
	sh2add t0, t1, s2
	sh2add t2, t1, s3
	lw t0, 0(t0)
	addiw a5, t1, 1
	sh2add t0, t0, s1
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a3, a5, label64
	sh2add t0, a5, s2
	sh2add t2, a5, s3
	lw t0, 0(t0)
	addiw a5, a5, 1
	sh2add t0, t0, s1
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a3, a5, label64
	sh2add t0, a5, s2
	sh2add t2, a5, s3
	lw t0, 0(t0)
	addiw a5, a5, 1
	sh2add t0, t0, s1
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a3, a5, label64
	sh2add t0, a5, s2
	sh2add t2, a5, s3
	lw t0, 0(t0)
	addiw a5, a5, 1
	sh2add t0, t0, s1
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a3, a5, label64
	sh2add t0, a5, s2
	sh2add t2, a5, s3
	lw t0, 0(t0)
	addiw a5, a5, 1
	sh2add t0, t0, s1
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a3, a5, label64
	sh2add t0, a5, s2
	sh2add t2, a5, s3
	lw t0, 0(t0)
	addiw a5, a5, 1
	sh2add t0, t0, s1
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a3, a5, label64
label823:
	sh2add t0, a5, s2
	sh2add t2, a5, s3
	lw t0, 0(t0)
	addiw a5, a5, 1
	sh2add t0, t0, s1
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a3, a5, label64
	j label823
label27:
	sh2add a5, a4, s2
	sh2add t1, a4, s3
	lw a5, 0(a5)
	addiw a4, a4, 1
	sh2add a5, a5, s0
	lw t0, 0(a5)
	lw t1, 0(t1)
	mulw t1, a2, t1
	addw t0, t0, t1
	sw t0, 0(a5)
	ble a3, a4, label222
	j label27
label222:
	mv a2, a1
	ble s5, a1, label40
	sh2add a4, a1, s4
	addiw a1, a1, 1
	lw t0, 0(a4)
	lw a3, 4(a4)
	bge t0, a3, label18
	sh2add a3, a1, s4
	mv t1, t0
	lw a3, 0(a3)
	addiw a5, t0, 4
	ble a3, a5, label34
	j label33
label40:
	ble s5, zero, label364
	mv a2, zero
	addiw a1, zero, 4
	ble s5, a1, label71
	sh2add a2, zero, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label71
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label71
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label71
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label71
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label71
	j label825
label51:
	addiw a4, t0, 4
	ble a3, a4, label437
	j label53
label437:
	mv a4, t0
	j label54
label53:
	sh2add a5, t0, s2
	sh2add t0, t0, s3
	lw t1, 0(a5)
	sh2add t1, t1, s1
	lw t2, 0(t1)
	lw t3, 0(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t1, 4(a5)
	sh2add t1, t1, s1
	lw t2, 0(t1)
	lw t3, 4(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t1, 8(a5)
	sh2add t1, t1, s1
	lw t2, 0(t1)
	lw t3, 8(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw a5, 12(a5)
	sh2add a5, a5, s1
	lw t1, 0(a5)
	lw t0, 12(t0)
	mulw t0, a2, t0
	addw t0, t1, t0
	sw t0, 0(a5)
	mv t0, a4
	addiw a4, a4, 4
	ble a3, a4, label437
	j label53
label54:
	sh2add a5, a4, s2
	sh2add t1, a4, s3
	lw a5, 0(a5)
	addiw a4, a4, 1
	sh2add a5, a5, s1
	lw t0, 0(a5)
	lw t1, 0(t1)
	mulw t1, a2, t1
	addw t0, t0, t1
	sw t0, 0(a5)
	ble a3, a4, label491
	j label54
label491:
	mv a2, a1
	ble s5, a1, label66
	sh2add a4, a1, s4
	addiw a1, a1, 1
	lw t0, 0(a4)
	lw a3, 4(a4)
	bge t0, a3, label44
	sh2add a3, a1, s4
	mv t1, t0
	lw a3, 0(a3)
	addiw a5, t0, 4
	ble a3, a5, label60
	j label59
label65:
	sh2add t0, t1, s2
	sh2add t1, t1, s3
	lw t2, 0(t0)
	sh2add t2, t2, s1
	lw t3, 0(t2)
	lw t4, 0(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 4(t0)
	sh2add t2, t2, s1
	lw t3, 0(t2)
	lw t4, 4(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 8(t0)
	sh2add t2, t2, s1
	lw t3, 0(t2)
	lw t4, 8(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t0, 12(t0)
	sh2add t0, t0, s1
	lw t2, 0(t0)
	lw t1, 12(t1)
	addw t1, t2, t1
	sw t1, 0(t0)
	mv t1, a5
	addiw a5, a5, 4
	ble a3, a5, label538
	j label65
label33:
	sh2add t0, t1, s2
	sh2add t1, t1, s3
	lw t2, 0(t0)
	sh2add t2, t2, s0
	lw t3, 0(t2)
	lw t4, 0(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 4(t0)
	sh2add t2, t2, s0
	lw t3, 0(t2)
	lw t4, 4(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 8(t0)
	sh2add t2, t2, s0
	lw t3, 0(t2)
	lw t4, 8(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t0, 12(t0)
	sh2add t0, t0, s0
	lw t2, 0(t0)
	lw t1, 12(t1)
	addw t1, t2, t1
	sw t1, 0(t0)
	mv t1, a5
	addiw a5, a5, 4
	ble a3, a5, label34
	j label33
label34:
	addiw a5, t1, 4
	ble a3, a5, label307
	j label39
label307:
	mv a5, t1
	sh2add t0, t1, s2
	sh2add t2, t1, s3
	lw t0, 0(t0)
	addiw a5, t1, 1
	sh2add t0, t0, s0
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a3, a5, label38
	sh2add t0, a5, s2
	sh2add t2, a5, s3
	lw t0, 0(t0)
	addiw a5, a5, 1
	sh2add t0, t0, s0
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a3, a5, label38
	sh2add t0, a5, s2
	sh2add t2, a5, s3
	lw t0, 0(t0)
	addiw a5, a5, 1
	sh2add t0, t0, s0
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a3, a5, label38
	sh2add t0, a5, s2
	sh2add t2, a5, s3
	lw t0, 0(t0)
	addiw a5, a5, 1
	sh2add t0, t0, s0
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a3, a5, label38
	sh2add t0, a5, s2
	sh2add t2, a5, s3
	lw t0, 0(t0)
	addiw a5, a5, 1
	sh2add t0, t0, s0
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a3, a5, label38
	sh2add t0, a5, s2
	sh2add t2, a5, s3
	lw t0, 0(t0)
	addiw a5, a5, 1
	sh2add t0, t0, s0
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a3, a5, label38
label820:
	sh2add t0, a5, s2
	sh2add t2, a5, s3
	lw t0, 0(t0)
	addiw a5, a5, 1
	sh2add t0, t0, s0
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a3, a5, label38
	j label820
label24:
	sh2add a5, t0, s2
	sh2add t0, t0, s3
	lw t1, 0(a5)
	sh2add t1, t1, s0
	lw t2, 0(t1)
	lw t3, 0(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t1, 4(a5)
	sh2add t1, t1, s0
	lw t2, 0(t1)
	lw t3, 4(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t1, 8(a5)
	sh2add t1, t1, s0
	lw t2, 0(t1)
	lw t3, 8(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw a5, 12(a5)
	sh2add a5, a5, s0
	lw t1, 0(a5)
	lw t0, 12(t0)
	mulw t0, a2, t0
	addw t0, t1, t0
	sw t0, 0(a5)
	mv t0, a4
	addiw a4, a4, 4
	ble a3, a4, label25
	j label24
label38:
	sh2add a3, a2, s4
	lw t0, 0(a3)
	lw a3, 4(a4)
	bge t0, a3, label151
	sh2add a2, a2, s1
	sh2add a3, a1, s4
	lw a2, 0(a2)
	lw a3, 0(a3)
	addiw a2, a2, -1
	addiw a4, t0, 4
	ble a3, a4, label25
	j label24
label25:
	addiw a4, t0, 4
	ble a3, a4, label206
	j label29
label206:
	mv a4, t0
	j label27
label39:
	sh2add t0, t1, s2
	sh2add t1, t1, s3
	lw t2, 0(t0)
	sh2add t2, t2, s0
	lw t3, 0(t2)
	lw t4, 0(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 4(t0)
	sh2add t2, t2, s0
	lw t3, 0(t2)
	lw t4, 4(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 8(t0)
	sh2add t2, t2, s0
	lw t3, 0(t2)
	lw t4, 8(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t0, 12(t0)
	sh2add t0, t0, s0
	lw t2, 0(t0)
	lw t1, 12(t1)
	addw t1, t2, t1
	sw t1, 0(t0)
	mv t1, a5
	addiw a5, a5, 4
	ble a3, a5, label307
	j label39
label29:
	sh2add a5, t0, s2
	sh2add t0, t0, s3
	lw t1, 0(a5)
	sh2add t1, t1, s0
	lw t2, 0(t1)
	lw t3, 0(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t1, 4(a5)
	sh2add t1, t1, s0
	lw t2, 0(t1)
	lw t3, 4(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t1, 8(a5)
	sh2add t1, t1, s0
	lw t2, 0(t1)
	lw t3, 8(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw a5, 12(a5)
	sh2add a5, a5, s0
	lw t1, 0(a5)
	lw t0, 12(t0)
	mulw t0, a2, t0
	addw t0, t1, t0
	sw t0, 0(a5)
	mv t0, a4
	addiw a4, a4, 4
	ble a3, a4, label206
	j label29
label364:
	mv a2, zero
	ble s5, zero, label66
	sh2add a4, zero, s4
	addiw a1, zero, 1
	lw t0, 0(a4)
	lw a3, 4(a4)
	bge t0, a3, label44
	sh2add a3, a1, s4
	mv t1, t0
	lw a3, 0(a3)
	addiw a5, t0, 4
	ble a3, a5, label60
	j label59
label18:
	bge t0, a3, label151
	sh2add a2, a2, s1
	sh2add a3, a1, s4
	lw a2, 0(a2)
	lw a3, 0(a3)
	addiw a2, a2, -1
	addiw a4, t0, 4
	ble a3, a4, label25
	j label24
label151:
	mv a2, a1
	ble s5, a1, label40
	sh2add a4, a1, s4
	addiw a1, a1, 1
	lw t0, 0(a4)
	lw a3, 4(a4)
	bge t0, a3, label18
	sh2add a3, a1, s4
	mv t1, t0
	lw a3, 0(a3)
	addiw a5, t0, 4
	ble a3, a5, label34
	j label33
label64:
	sh2add a3, a2, s4
	lw t0, 0(a3)
	lw a3, 4(a4)
	bge t0, a3, label382
	sh2add a2, a2, s0
	sh2add a3, a1, s4
	lw a2, 0(a2)
	lw a3, 0(a3)
	addiw a2, a2, -1
	addiw a4, t0, 4
	ble a3, a4, label51
	j label50
label825:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label71
	j label825
label71:
	addiw a1, a2, 4
	ble s5, a1, label612
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label612
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label612
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label612
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label612
	j label828
label612:
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label76
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label76
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label76
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label76
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label76
	j label829
label76:
	sh2add a2, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s5, a1, label629
	sh2add a2, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s5, a1, label629
	sh2add a2, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s5, a1, label629
	sh2add a2, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s5, a1, label629
	sh2add a2, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s5, a1, label629
	sh2add a2, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s5, a1, label629
label832:
	sh2add a2, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s5, a1, label629
	j label832
label629:
	mv a2, zero
	ble s5, zero, label66
	sh2add a4, zero, s4
	addiw a1, zero, 1
	lw t0, 0(a4)
	lw a3, 4(a4)
	bge t0, a3, label44
	sh2add a3, a1, s4
	mv t1, t0
	lw a3, 0(a3)
	addiw a5, t0, 4
	ble a3, a5, label60
	j label59
label828:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label612
	j label828
label829:
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label76
	j label829
label7:
	addiw a1, a2, 4
	ble s5, a1, label111
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label111
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label111
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label111
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label111
	j label813
label111:
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label12
	sh2add a1, a1, s0
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label12
	sh2add a1, a1, s0
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label12
	sh2add a1, a1, s0
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label12
	sh2add a1, a1, s0
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label12
	sh2add a1, a1, s0
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label12
	j label816
label12:
	sh2add a2, a1, s0
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s5, a1, label128
	sh2add a2, a1, s0
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s5, a1, label128
	sh2add a2, a1, s0
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s5, a1, label128
	sh2add a2, a1, s0
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s5, a1, label128
	sh2add a2, a1, s0
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s5, a1, label128
	sh2add a2, a1, s0
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s5, a1, label128
	j label817
label128:
	mv a2, zero
	ble s5, zero, label40
	sh2add a4, zero, s4
	addiw a1, zero, 1
	lw t0, 0(a4)
	lw a3, 4(a4)
	bge t0, a3, label18
	sh2add a3, a1, s4
	mv t1, t0
	lw a3, 0(a3)
	addiw a5, t0, 4
	ble a3, a5, label34
	j label33
label817:
	sh2add a2, a1, s0
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s5, a1, label128
	j label817
label824:
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label7
	j label784
label813:
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label111
	j label813
label816:
	sh2add a1, a1, s0
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label12
	j label816
label810:
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label7
	j label810
label67:
	li a0, 47
	jal _sysy_stoptime
	mv a0, s5
	mv a1, s0
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s4, 48(sp)
	addi sp, sp, 56
	ret
