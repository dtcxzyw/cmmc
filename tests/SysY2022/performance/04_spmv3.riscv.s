.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
x:
	.zero	400040
.align 8
y:
	.zero	12000000
.align 8
v:
	.zero	12000000
.align 8
a:
	.zero	400040
.align 8
b:
	.zero	400040
.text
.globl main
main:
.p2align 2
	addi sp, sp, -64
pcrel290:
	auipc a1, %pcrel_hi(x)
	sd ra, 0(sp)
	addi a0, a1, %pcrel_lo(pcrel290)
	sd s4, 8(sp)
	mv s4, a0
	sd s5, 16(sp)
	sd s0, 24(sp)
	sd s6, 32(sp)
	sd s1, 40(sp)
	sd s3, 48(sp)
	sd s2, 56(sp)
	jal getarray
pcrel291:
	auipc a1, %pcrel_hi(y)
	addiw s6, a0, -9
	addiw s5, a0, -1
	addi a0, a1, %pcrel_lo(pcrel291)
	mv s0, a0
	jal getarray
pcrel292:
	auipc a1, %pcrel_hi(v)
	addi a0, a1, %pcrel_lo(pcrel292)
	mv s1, a0
	jal getarray
pcrel293:
	auipc a1, %pcrel_hi(a)
	addi a0, a1, %pcrel_lo(pcrel293)
	mv s3, a0
	jal getarray
	li a0, 39
	jal _sysy_starttime
pcrel294:
	auipc a1, %pcrel_hi(b)
	addi s2, a1, %pcrel_lo(pcrel294)
	mv a1, zero
.p2align 2
label2:
	ble s5, zero, label53
	li a2, 8
	bgt s5, a2, label57
	j label56
.p2align 2
label266:
	addiw a1, a1, 1
	li a0, 100
	blt a1, a0, label2
label29:
	li a0, 47
	jal _sysy_stoptime
	mv a0, s5
	mv a1, s2
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s4, 8(sp)
	ld s5, 16(sp)
	ld s0, 24(sp)
	ld s6, 32(sp)
	ld s1, 40(sp)
	ld s3, 48(sp)
	ld s2, 56(sp)
	addi sp, sp, 64
	ret
.p2align 2
label57:
	mv a0, zero
	mv a2, s2
	li a0, 8
	sd zero, 0(s2)
	sd zero, 8(s2)
	sd zero, 16(s2)
	sd zero, 24(s2)
	bgt s6, a0, label7
	j label255
.p2align 2
label5:
	sh2add a2, a0, s2
	addiw a0, a0, 1
	sw zero, 0(a2)
	bgt s5, a0, label5
.p2align 2
label63:
	mv a3, zero
	bgt s5, zero, label11
	j label81
.p2align 2
label7:
	sh2add a2, a0, s2
	addiw a0, a0, 8
	sd zero, 0(a2)
	sd zero, 8(a2)
	sd zero, 16(a2)
	sd zero, 24(a2)
	bgt s6, a0, label7
	sh2add a2, a0, s2
	addiw a0, a0, 1
	sw zero, 0(a2)
	bgt s5, a0, label5
.p2align 2
label257:
	mv a3, zero
	ble s5, zero, label81
.p2align 2
label11:
	addiw a2, a3, 1
	sh2add a5, a3, s4
	sh2add a0, a2, s4
	lw a4, 0(a5)
	lw a0, 0(a0)
	bge a4, a0, label110
	mv a5, a4
.p2align 2
label12:
	sh2add t1, a5, s0
	sh2add t3, a5, s1
	lw t2, 0(t1)
	addiw a5, a5, 1
	sh2add t0, t2, s2
	lw t1, 0(t0)
	lw t2, 0(t3)
	addw t1, t1, t2
	sw t1, 0(t0)
	bgt a0, a5, label12
	bge a4, a0, label110
	sh2add a5, a3, s3
	lw t0, 0(a5)
	addi a3, t0, -1
.p2align 2
label16:
	sh2add t0, a4, s0
	sh2add t3, a4, s1
	lw t1, 0(t0)
	addiw a4, a4, 1
	sh2add a5, t1, s2
	lw t0, 0(a5)
	lw t2, 0(t3)
	mulw t1, a3, t2
	addw t0, t0, t1
	sw t0, 0(a5)
	bgt a0, a4, label16
	mv a3, a2
	bgt s5, a2, label11
	bgt s5, zero, label30
	j label258
label137:
	addiw a1, a1, 1
	li a0, 100
	blt a1, a0, label2
	j label29
.p2align 2
label30:
	li a2, 8
	ble s5, a2, label194
	mv a0, zero
.p2align 2
label31:
	sh2add a2, a0, s3
	addiw a0, a0, 8
	sd zero, 0(a2)
	sd zero, 8(a2)
	sd zero, 16(a2)
	sd zero, 24(a2)
	bgt s6, a0, label31
.p2align 2
label33:
	sh2add a2, a0, s3
	addiw a0, a0, 1
	sw zero, 0(a2)
	bgt s5, a0, label33
.p2align 2
label215:
	mv a3, zero
	ble s5, zero, label137
.p2align 2
label21:
	addiw a2, a3, 1
	sh2add a5, a3, s4
	sh2add a0, a2, s4
	lw a4, 0(a5)
	lw a0, 0(a0)
	bge a4, a0, label151
	mv a5, a4
	sh2add t1, a4, s0
	sh2add t3, a4, s1
	lw t2, 0(t1)
	addiw a5, a4, 1
	sh2add t0, t2, s3
	lw t1, 0(t0)
	lw t2, 0(t3)
	addw t1, t1, t2
	sw t1, 0(t0)
	bgt a0, a5, label26
	j label264
.p2align 2
label23:
	sh2add t0, a3, s2
	lw a5, 0(t0)
	addi a3, a5, -1
.p2align 2
label24:
	sh2add t0, a4, s0
	lw t1, 0(t0)
	sh2add a5, t1, s3
	sh2add t1, a4, s1
	addiw a4, a4, 1
	lw t0, 0(a5)
	lw t3, 0(t1)
	mulw t2, a3, t3
	addw t0, t0, t2
	sw t0, 0(a5)
	bgt a0, a4, label24
	mv a3, a2
	bgt s5, a2, label21
	j label266
.p2align 2
label26:
	sh2add t1, a5, s0
	sh2add t3, a5, s1
	lw t2, 0(t1)
	addiw a5, a5, 1
	sh2add t0, t2, s3
	lw t1, 0(t0)
	lw t2, 0(t3)
	addw t1, t1, t2
	sw t1, 0(t0)
	bgt a0, a5, label26
	blt a4, a0, label23
.p2align 2
label267:
	mv a3, a2
	bgt s5, a2, label21
	j label137
label258:
	mv a3, zero
	bgt s5, zero, label21
	j label137
label53:
	mv a3, zero
	bgt s5, zero, label11
label81:
	bgt s5, zero, label30
	j label258
.p2align 2
label110:
	mv a3, a2
	bgt s5, a2, label11
	j label81
label151:
	mv a3, a2
	bgt s5, a2, label21
	j label137
.p2align 2
label264:
	blt a4, a0, label23
	j label267
label194:
	mv a0, zero
	mv a2, s3
	li a0, 1
	sw zero, 0(s3)
	bgt s5, a0, label33
	j label215
label56:
	mv a0, zero
	mv a2, s2
	li a0, 1
	sw zero, 0(s2)
	bgt s5, a0, label5
	j label63
label255:
	sh2add a2, a0, s2
	addiw a0, a0, 1
	sw zero, 0(a2)
	bgt s5, a0, label5
	j label257
