.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
temp:
	.zero	8388608
.align 8
w:
	.zero	8388608
.align 8
dst:
	.zero	8388608
.text
.p2align 2
.globl main
main:
	addi sp, sp, -32
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s2, 16(sp)
	sd s1, 24(sp)
	jal getint
pcrel903:
	auipc a1, %pcrel_hi(w)
	mv s0, a0
	addi s2, a1, %pcrel_lo(pcrel903)
	mv a0, s2
	jal getarray
	li a0, 62
	jal _sysy_starttime
	mv a3, zero
pcrel904:
	auipc a4, %pcrel_hi(temp)
pcrel905:
	auipc a2, %pcrel_hi(dst)
	addiw a1, s0, -4
	addi a0, a4, %pcrel_lo(pcrel904)
	addi s1, a2, %pcrel_lo(pcrel905)
	li a2, 4
	bgt s0, zero, label95
label129:
	mv t0, zero
	mv a4, zero
	bgt s0, zero, label135
	j label74
.p2align 2
label95:
	addw a4, s0, a3
	ble s0, a2, label462
	mv t0, zero
	mv a5, zero
	j label96
.p2align 2
label111:
	addw t0, a3, a4
	ble s0, a5, label528
	mulw t2, s0, a5
	addw a4, s0, a4
	addiw a5, a5, 1
	addw t3, a3, t2
	sh2add t2, t0, a0
	sh2add t4, t3, s2
	lw t1, 0(t4)
	sw t1, 0(t2)
	bgt s0, a5, label111
	j label703
.p2align 2
label528:
	li t1, -1
	addiw a5, a5, 1
	sh2add t2, t0, a0
	addw a4, s0, a4
	sw t1, 0(t2)
	bgt s0, a5, label111
	addiw a3, a3, 1
	bgt s0, a3, label95
	j label129
.p2align 2
label135:
	mv t1, zero
	ble s0, zero, label8
.p2align 2
label9:
	mulw a5, s0, t1
	addw a3, t0, a5
	ble s0, a2, label144
	mv t2, zero
	j label10
.p2align 2
label648:
	addiw t1, t1, 1
	bgt s0, t1, label9
.p2align 2
label691:
	addiw t0, t0, 1
	mulw a4, s0, t0
	bgt s0, t0, label135
label74:
	mulw s2, s0, s0
	beq s0, zero, label75
	ble s2, a2, label367
	addiw a2, s2, -4
	addiw a3, s2, -20
	li a1, 16
	ble a2, a1, label373
	mv a1, a0
	mv a4, zero
	j label79
.p2align 2
label10:
	sh2add t4, a3, a0
	lw t3, 0(t4)
	bge t3, zero, label12
	lw t3, 0(t4)
	bge t3, zero, label39
	j label663
.p2align 2
label32:
	addw t6, a5, t4
	bgt s0, t4, label219
	li a6, -1
	addw t4, t3, t5
	bge a6, zero, label635
.p2align 2
label37:
	sh2add t3, t6, a0
	sw t4, 0(t3)
	addiw t2, t2, 4
	bgt a1, t2, label10
	sh2add t4, a3, a0
	lw t3, 0(t4)
	bge t3, zero, label62
	addiw t2, t2, 1
	bgt s0, t2, label60
	addiw t1, t1, 1
	bgt s0, t1, label9
label720:
	addiw t0, t0, 1
	mulw a4, s0, t0
	bgt s0, t0, label135
	j label74
.p2align 2
label12:
	bgt s0, t2, label155
	li t4, -1
	blt t4, zero, label159
.p2align 2
label15:
	addw t5, a5, t2
	bgt s0, t2, label163
	li a6, -1
	addw t6, t3, t4
	bge a6, zero, label629
.p2align 2
label20:
	sh2add t3, t5, a0
	sw t6, 0(t3)
	sh2add t4, a3, a0
	lw t3, 0(t4)
	blt t3, zero, label630
.p2align 2
label50:
	addiw t4, t2, 1
	bgt s0, t4, label283
	li t5, -1
	blt t5, zero, label643
.p2align 2
label54:
	addw t6, a5, t4
	bgt s0, t4, label295
	li a6, -1
	addw t4, t3, t5
	blt a6, zero, label58
	sh2add t3, t6, a0
	lw t5, 0(t3)
	blt t4, t5, label58
	sh2add t4, a3, a0
	lw t3, 0(t4)
	bge t3, zero, label39
	addiw t2, t2, 4
	bgt a1, t2, label10
	lw t3, 0(t4)
	bge t3, zero, label62
	addiw t2, t2, 1
	bgt s0, t2, label60
	addiw t1, t1, 1
	bgt s0, t1, label9
	j label756
.p2align 2
label39:
	addiw t4, t2, 2
	bgt s0, t4, label246
	li t5, -1
	bge t5, zero, label44
	sh2add t4, a3, a0
	lw t3, 0(t4)
	bge t3, zero, label28
	j label679
.p2align 2
label295:
	sh2add a7, t6, a0
	addw t4, t3, t5
	lw a6, 0(a7)
	bge a6, zero, label688
.p2align 2
label58:
	sh2add t3, t6, a0
	sw t4, 0(t3)
	sh2add t4, a3, a0
	lw t3, 0(t4)
	bge t3, zero, label39
	addiw t2, t2, 4
	bgt a1, t2, label10
	lw t3, 0(t4)
	bge t3, zero, label62
	addiw t2, t2, 1
	bgt s0, t2, label60
	addiw t1, t1, 1
	bgt s0, t1, label9
	j label756
.p2align 2
label663:
	blt t3, zero, label706
.p2align 2
label28:
	addiw t4, t2, 3
	bgt s0, t4, label207
	li t5, -1
	bge t5, zero, label32
	addiw t2, t2, 4
	bgt a1, t2, label10
	sh2add t4, a3, a0
	lw t3, 0(t4)
	bge t3, zero, label62
	addiw t2, t2, 1
	bgt s0, t2, label60
	addiw t1, t1, 1
	bgt s0, t1, label9
	j label720
.p2align 2
label155:
	addw t6, a4, t2
	sh2add t5, t6, a0
	lw t4, 0(t5)
	bge t4, zero, label15
	sh2add t4, a3, a0
	lw t3, 0(t4)
	bge t3, zero, label50
	lw t3, 0(t4)
	bge t3, zero, label39
	addiw t2, t2, 4
	bgt a1, t2, label10
	lw t3, 0(t4)
	bge t3, zero, label62
	addiw t2, t2, 1
	bgt s0, t2, label60
	addiw t1, t1, 1
	bgt s0, t1, label9
	j label756
.p2align 2
label246:
	addw t6, a4, t4
	sh2add a6, t6, a0
	lw t5, 0(a6)
	bge t5, zero, label44
	sh2add t4, a3, a0
	lw t3, 0(t4)
	bge t3, zero, label28
	addiw t2, t2, 4
	bgt a1, t2, label10
	lw t3, 0(t4)
	bge t3, zero, label62
	addiw t2, t2, 1
	bgt s0, t2, label60
	addiw t1, t1, 1
	bgt s0, t1, label9
	j label756
.p2align 2
label283:
	addw a6, a4, t4
	sh2add t6, a6, a0
	lw t5, 0(t6)
	bge t5, zero, label54
	sh2add t4, a3, a0
	lw t3, 0(t4)
	bge t3, zero, label39
	addiw t2, t2, 4
	bgt a1, t2, label10
	lw t3, 0(t4)
	bge t3, zero, label62
	addiw t2, t2, 1
	bgt s0, t2, label60
	addiw t1, t1, 1
	bgt s0, t1, label9
	j label756
.p2align 2
label44:
	addw t6, a5, t4
	ble s0, t4, label262
	sh2add t4, t6, a0
	lw a6, 0(t4)
	addw t4, t3, t5
	blt a6, zero, label49
	sh2add t3, t6, a0
	lw t5, 0(t3)
	blt t4, t5, label49
	sh2add t4, a3, a0
	lw t3, 0(t4)
	bge t3, zero, label28
	addiw t2, t2, 4
	bgt a1, t2, label10
	lw t3, 0(t4)
	bge t3, zero, label62
	addiw t2, t2, 1
	bgt s0, t2, label60
	addiw t1, t1, 1
	bgt s0, t1, label9
	j label756
.p2align 2
label207:
	addw t6, a4, t4
	sh2add a6, t6, a0
	lw t5, 0(a6)
	bge t5, zero, label32
	addiw t2, t2, 4
	bgt a1, t2, label10
	sh2add t4, a3, a0
	lw t3, 0(t4)
	bge t3, zero, label62
	addiw t2, t2, 1
	bgt s0, t2, label60
	addiw t1, t1, 1
	bgt s0, t1, label9
	j label720
.p2align 2
label60:
	sh2add t4, a3, a0
	lw t3, 0(t4)
	bge t3, zero, label62
	addiw t2, t2, 1
	bgt s0, t2, label60
	j label648
.p2align 2
label62:
	ble s0, t2, label324
	addw t5, a4, t2
	sh2add t6, t5, a0
	lw t4, 0(t6)
	blt t4, zero, label692
.p2align 2
label66:
	addw t5, a5, t2
	ble s0, t2, label336
	sh2add t6, t5, a0
	lw a6, 0(t6)
	addw t6, t3, t4
	bge a6, zero, label695
.p2align 2
label71:
	sh2add t3, t5, a0
	sw t6, 0(t3)
	addiw t2, t2, 1
	bgt s0, t2, label60
	addiw t1, t1, 1
	bgt s0, t1, label9
	addiw t0, t0, 1
	mulw a4, s0, t0
	bgt s0, t0, label135
	j label74
label756:
	addiw t0, t0, 1
	mulw a4, s0, t0
	bgt s0, t0, label135
	j label74
.p2align 2
label262:
	li a6, -1
	addw t4, t3, t5
	bge a6, zero, label640
.p2align 2
label49:
	sh2add t3, t6, a0
	sw t4, 0(t3)
	sh2add t4, a3, a0
	lw t3, 0(t4)
	bge t3, zero, label28
	addiw t2, t2, 4
	bgt a1, t2, label10
	lw t3, 0(t4)
	bge t3, zero, label62
	addiw t2, t2, 1
	bgt s0, t2, label60
	addiw t1, t1, 1
	bgt s0, t1, label9
	j label756
.p2align 2
label159:
	sh2add t4, a3, a0
	lw t3, 0(t4)
	bge t3, zero, label50
	lw t3, 0(t4)
	bge t3, zero, label39
	addiw t2, t2, 4
	bgt a1, t2, label10
	lw t3, 0(t4)
	bge t3, zero, label62
	addiw t2, t2, 1
	bgt s0, t2, label60
	addiw t1, t1, 1
	bgt s0, t1, label9
	j label756
.p2align 2
label643:
	sh2add t4, a3, a0
	lw t3, 0(t4)
	bge t3, zero, label39
	addiw t2, t2, 4
	bgt a1, t2, label10
	lw t3, 0(t4)
	bge t3, zero, label62
	addiw t2, t2, 1
	bgt s0, t2, label60
	addiw t1, t1, 1
	bgt s0, t1, label9
	j label756
.p2align 2
label163:
	sh2add t6, t5, a0
	lw a6, 0(t6)
	addw t6, t3, t4
	blt a6, zero, label20
	sh2add t3, t5, a0
	lw t4, 0(t3)
	blt t6, t4, label20
	sh2add t4, a3, a0
	lw t3, 0(t4)
	bge t3, zero, label50
	lw t3, 0(t4)
	bge t3, zero, label39
	addiw t2, t2, 4
	bgt a1, t2, label10
	lw t3, 0(t4)
	bge t3, zero, label62
	addiw t2, t2, 1
	bgt s0, t2, label60
label847:
	addiw t1, t1, 1
	bgt s0, t1, label9
	j label756
.p2align 2
label219:
	sh2add t4, t6, a0
	lw a6, 0(t4)
	addw t4, t3, t5
	blt a6, zero, label37
	sh2add t3, t6, a0
	lw t5, 0(t3)
	blt t4, t5, label37
	addiw t2, t2, 4
	bgt a1, t2, label10
	sh2add t4, a3, a0
	lw t3, 0(t4)
	bge t3, zero, label62
	addiw t2, t2, 1
	bgt s0, t2, label60
	addiw t1, t1, 1
	bgt s0, t1, label9
	j label720
.p2align 2
label630:
	sh2add t4, a3, a0
	lw t3, 0(t4)
	bge t3, zero, label39
	addiw t2, t2, 4
	bgt a1, t2, label10
	lw t3, 0(t4)
	bge t3, zero, label62
	addiw t2, t2, 1
	bgt s0, t2, label60
	addiw t1, t1, 1
	bgt s0, t1, label9
	j label756
.p2align 2
label324:
	li t4, -1
	bge t4, zero, label66
	addiw t2, t2, 1
	bgt s0, t2, label60
	addiw t1, t1, 1
	bgt s0, t1, label9
	addiw t0, t0, 1
	mulw a4, s0, t0
	bgt s0, t0, label135
	j label74
.p2align 2
label635:
	sh2add t3, t6, a0
	lw t5, 0(t3)
	blt t4, t5, label37
	addiw t2, t2, 4
	bgt a1, t2, label10
	sh2add t4, a3, a0
	lw t3, 0(t4)
	bge t3, zero, label62
	addiw t2, t2, 1
	bgt s0, t2, label60
	addiw t1, t1, 1
	bgt s0, t1, label9
	j label720
.p2align 2
label629:
	sh2add t3, t5, a0
	lw t4, 0(t3)
	blt t6, t4, label20
	sh2add t4, a3, a0
	lw t3, 0(t4)
	bge t3, zero, label50
	lw t3, 0(t4)
	bge t3, zero, label39
	addiw t2, t2, 4
	bgt a1, t2, label10
	lw t3, 0(t4)
	bge t3, zero, label62
	addiw t2, t2, 1
	bgt s0, t2, label60
	j label847
.p2align 2
label640:
	sh2add t3, t6, a0
	lw t5, 0(t3)
	blt t4, t5, label49
	sh2add t4, a3, a0
	lw t3, 0(t4)
	bge t3, zero, label28
	addiw t2, t2, 4
	bgt a1, t2, label10
	lw t3, 0(t4)
	bge t3, zero, label62
	addiw t2, t2, 1
	bgt s0, t2, label60
	addiw t1, t1, 1
	bgt s0, t1, label9
	j label756
.p2align 2
label688:
	sh2add t3, t6, a0
	lw t5, 0(t3)
	blt t4, t5, label58
	sh2add t4, a3, a0
	lw t3, 0(t4)
	bge t3, zero, label39
	addiw t2, t2, 4
	bgt a1, t2, label10
	lw t3, 0(t4)
	bge t3, zero, label62
	addiw t2, t2, 1
	bgt s0, t2, label60
	addiw t1, t1, 1
	bgt s0, t1, label9
	j label756
.p2align 2
label336:
	li a6, -1
	addw t6, t3, t4
	blt a6, zero, label71
	sh2add t3, t5, a0
	lw t4, 0(t3)
	blt t6, t4, label71
	addiw t2, t2, 1
	bgt s0, t2, label60
	addiw t1, t1, 1
	bgt s0, t1, label9
label697:
	addiw t0, t0, 1
	mulw a4, s0, t0
	bgt s0, t0, label135
	j label74
.p2align 2
label96:
	addw t3, a3, t0
	ble s0, a5, label468
	mulw t2, s0, a5
	sh2add t6, t3, a0
	addw t4, a3, t2
	addw t2, s0, t0
	sh2add t1, t4, s2
	addiw t4, a5, 1
	lw t5, 0(t1)
	addw t1, a4, t0
	sw t5, 0(t6)
	ble s0, t4, label482
	j label699
.p2align 2
label468:
	li t5, -1
	addw t1, a4, t0
	addiw t4, a5, 1
	sh2add t6, t3, a0
	addw t2, s0, t0
	sw t5, 0(t6)
	bgt s0, t4, label655
.p2align 2
label482:
	li t5, -1
	addw t0, a4, t2
	addiw t4, a5, 2
	sh2add t6, t1, a0
	addw t3, s0, t2
	sw t5, 0(t6)
	ble s0, t4, label491
	mulw t2, s0, t4
	addiw t4, a5, 3
	addw t1, a3, t2
	addw t2, s0, t3
	sh2add t6, t1, s2
	addw t1, a4, t3
	lw t5, 0(t6)
	sh2add t6, t0, a0
	sw t5, 0(t6)
	bgt s0, t4, label701
.p2align 2
label505:
	li t0, -1
	addiw a5, a5, 4
	sh2add t3, t1, a0
	sw t0, 0(t3)
	addw t0, s0, t2
	bgt a1, a5, label96
	mv a4, t0
	addw t0, a3, t0
	ble s0, a5, label528
	mulw t2, s0, a5
	addw a4, s0, a4
	addiw a5, a5, 1
	addw t3, a3, t2
	sh2add t2, t0, a0
	sh2add t4, t3, s2
	lw t1, 0(t4)
	sw t1, 0(t2)
	bgt s0, a5, label111
.p2align 2
label747:
	addiw a3, a3, 1
	bgt s0, a3, label95
	j label129
.p2align 2
label695:
	sh2add t3, t5, a0
	lw t4, 0(t3)
	blt t6, t4, label71
	addiw t2, t2, 1
	bgt s0, t2, label60
	addiw t1, t1, 1
	bgt s0, t1, label9
	j label697
.p2align 2
label692:
	addiw t2, t2, 1
	bgt s0, t2, label60
	addiw t1, t1, 1
	bgt s0, t1, label9
	addiw t0, t0, 1
	mulw a4, s0, t0
	bgt s0, t0, label135
	j label74
.p2align 2
label655:
	mulw t3, s0, t4
	addiw t4, a5, 2
	addw t0, a3, t3
	addw t3, s0, t2
	sh2add t6, t0, s2
	addw t0, a4, t2
	lw t5, 0(t6)
	sh2add t6, t1, a0
	sw t5, 0(t6)
	bgt s0, t4, label742
.p2align 2
label491:
	li t5, -1
	addw t1, a4, t3
	addiw t4, a5, 3
	sh2add t6, t0, a0
	addw t2, s0, t3
	sw t5, 0(t6)
	ble s0, t4, label505
	mulw t3, s0, t4
	addiw a5, a5, 4
	addw t5, a3, t3
	sh2add t3, t1, a0
	sh2add t6, t5, s2
	lw t0, 0(t6)
	sw t0, 0(t3)
	addw t0, s0, t2
	bgt a1, a5, label96
	mv a4, t0
	addw t0, a3, t0
	ble s0, a5, label528
	mulw t2, s0, a5
	addw a4, s0, a4
	addiw a5, a5, 1
	addw t3, a3, t2
	sh2add t2, t0, a0
	sh2add t4, t3, s2
	lw t1, 0(t4)
	sw t1, 0(t2)
	bgt s0, a5, label111
	j label747
.p2align 2
label706:
	addiw t2, t2, 4
	bgt a1, t2, label10
	sh2add t4, a3, a0
	lw t3, 0(t4)
	bge t3, zero, label62
	addiw t2, t2, 1
	bgt s0, t2, label60
	addiw t1, t1, 1
	bgt s0, t1, label9
	j label756
.p2align 2
label679:
	addiw t2, t2, 4
	bgt a1, t2, label10
	sh2add t4, a3, a0
	lw t3, 0(t4)
	bge t3, zero, label62
	addiw t2, t2, 1
	bgt s0, t2, label60
	addiw t1, t1, 1
	bgt s0, t1, label9
	j label756
.p2align 2
label699:
	mulw t3, s0, t4
	addiw t4, a5, 2
	addw t0, a3, t3
	addw t3, s0, t2
	sh2add t6, t0, s2
	addw t0, a4, t2
	lw t5, 0(t6)
	sh2add t6, t1, a0
	sw t5, 0(t6)
	ble s0, t4, label491
	mulw t2, s0, t4
	addiw t4, a5, 3
	addw t1, a3, t2
	addw t2, s0, t3
	sh2add t6, t1, s2
	addw t1, a4, t3
	lw t5, 0(t6)
	sh2add t6, t0, a0
	sw t5, 0(t6)
	ble s0, t4, label505
	mulw t3, s0, t4
	addiw a5, a5, 4
	addw t5, a3, t3
	sh2add t3, t1, a0
	sh2add t6, t5, s2
	lw t0, 0(t6)
	sw t0, 0(t3)
	addw t0, s0, t2
	bgt a1, a5, label96
	mv a4, t0
	addw t0, a3, t0
	ble s0, a5, label528
	j label784
.p2align 2
label144:
	mv t2, zero
	sh2add t4, a3, a0
	lw t3, 0(t4)
	bge t3, zero, label62
	li t2, 1
	bgt s0, t2, label60
	addiw t1, t1, 1
	bgt s0, t1, label9
	j label691
.p2align 2
label742:
	mulw t2, s0, t4
	addiw t4, a5, 3
	addw t1, a3, t2
	addw t2, s0, t3
	sh2add t6, t1, s2
	addw t1, a4, t3
	lw t5, 0(t6)
	sh2add t6, t0, a0
	sw t5, 0(t6)
	ble s0, t4, label505
	mulw t3, s0, t4
	addiw a5, a5, 4
	addw t5, a3, t3
	sh2add t3, t1, a0
	sh2add t6, t5, s2
	lw t0, 0(t6)
	sw t0, 0(t3)
	addw t0, s0, t2
	bgt a1, a5, label96
	mv a4, t0
	addw t0, a3, t0
	ble s0, a5, label528
	j label784
.p2align 2
label79:
	lw t0, 0(a1)
	sh2add a5, a4, s1
	addiw a4, a4, 16
	sw t0, 0(a5)
	lw t2, 4(a1)
	sw t2, 4(a5)
	lw t1, 8(a1)
	sw t1, 8(a5)
	lw t0, 12(a1)
	sw t0, 12(a5)
	lw t1, 16(a1)
	sw t1, 16(a5)
	lw t0, 20(a1)
	sw t0, 20(a5)
	lw t1, 24(a1)
	sw t1, 24(a5)
	lw t0, 28(a1)
	sw t0, 28(a5)
	lw t1, 32(a1)
	sw t1, 32(a5)
	lw t0, 36(a1)
	sw t0, 36(a5)
	lw t1, 40(a1)
	sw t1, 40(a5)
	lw t0, 44(a1)
	sw t0, 44(a5)
	lw t2, 48(a1)
	sw t2, 48(a5)
	lw t1, 52(a1)
	sw t1, 52(a5)
	lw t0, 56(a1)
	sw t0, 56(a5)
	lw t1, 60(a1)
	sw t1, 60(a5)
	ble a3, a4, label426
	addi a1, a1, 64
	j label79
.p2align 2
label701:
	mulw t3, s0, t4
	addiw a5, a5, 4
	addw t5, a3, t3
	sh2add t3, t1, a0
	sh2add t6, t5, s2
	lw t0, 0(t6)
	sw t0, 0(t3)
	addw t0, s0, t2
	bgt a1, a5, label96
	mv a4, t0
	addw t0, a3, t0
	ble s0, a5, label528
.p2align 2
label784:
	mulw t2, s0, a5
	addw a4, s0, a4
	addiw a5, a5, 1
	addw t3, a3, t2
	sh2add t2, t0, a0
	sh2add t4, t3, s2
	lw t1, 0(t4)
	sw t1, 0(t2)
	bgt s0, a5, label111
	j label747
label426:
	sh2add a1, a4, a0
label85:
	lw a5, 0(a1)
	sh2add a3, a4, s1
	addiw a4, a4, 4
	sw a5, 0(a3)
	lw t0, 4(a1)
	sw t0, 4(a3)
	lw t1, 8(a1)
	sw t1, 8(a3)
	lw a5, 12(a1)
	sw a5, 12(a3)
	ble a2, a4, label446
	addi a1, a1, 16
	j label85
label462:
	mv a5, zero
	mv a4, zero
	sext.w t0, a3
	ble s0, zero, label528
	sext.w t3, a3
	sh2add t4, t3, s2
	lw t1, 0(t4)
	li a5, 1
	sh2add t2, t0, a0
	sext.w a4, s0
	sw t1, 0(t2)
	bgt s0, a5, label111
	addiw a3, a3, 1
	bgt s0, a3, label95
	j label129
label8:
	addiw t0, t0, 1
	mulw a4, s0, t0
	bgt s0, t0, label135
	j label74
.p2align 2
label703:
	addiw a3, a3, 1
	bgt s0, a3, label95
	j label129
label446:
	sh2add a0, a4, a0
	mv a1, a4
label90:
	lw a2, 0(a0)
	sh2add a3, a1, s1
	addiw a1, a1, 1
	sw a2, 0(a3)
	ble s2, a1, label75
	addi a0, a0, 4
	j label90
label75:
	li a0, 64
	jal _sysy_stoptime
	mv a0, s2
	mv a1, s1
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	addi sp, sp, 32
	ret
label367:
	mv a1, zero
	j label90
label373:
	mv a1, a0
	mv a4, zero
	j label85
