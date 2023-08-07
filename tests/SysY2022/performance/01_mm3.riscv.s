.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
A:
	.zero	4194304
.align 8
B:
	.zero	4194304
.align 8
C:
	.zero	4194304
.text
.p2align 2
.globl main
main:
	addi sp, sp, -120
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s4, 24(sp)
	sd s6, 32(sp)
	sd s1, 40(sp)
	sd s8, 48(sp)
	sd s9, 56(sp)
	sd s2, 64(sp)
	sd s3, 72(sp)
	sd s7, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	li s2, 4
	addiw s0, a0, -4
	li s3, 16
	addiw a5, a0, -20
pcrel731:
	auipc a1, %pcrel_hi(A)
	li s7, 5
	mv s9, zero
	lui s1, 1
	addi s4, a1, %pcrel_lo(pcrel731)
	sd a0, 112(sp)
	mv s8, s4
pcrel732:
	auipc a1, %pcrel_hi(C)
pcrel733:
	auipc a0, %pcrel_hi(B)
	sd a5, 104(sp)
	addi s6, a1, %pcrel_lo(pcrel732)
	addi s5, a0, %pcrel_lo(pcrel733)
	ld t3, 112(sp)
	ble t3, zero, label5
.p2align 2
label143:
	mv s10, s8
	mv s11, zero
.p2align 2
label144:
	jal getint
	addiw a1, s11, 1
	sw a0, 0(s10)
	ld t3, 112(sp)
	bgt t3, a1, label148
	addiw s9, s9, 1
	add s8, s8, s1
	bgt t3, s9, label143
	j label5
.p2align 2
label148:
	addi s10, s10, 4
	mv s11, a1
	j label144
label5:
	mv s8, s5
	mv s9, zero
	ld t3, 112(sp)
	ble t3, zero, label15
.p2align 2
label9:
	mv s10, s8
	mv s11, zero
	j label10
.p2align 2
label171:
	addiw s9, s9, 1
	add s8, s8, s1
	ld t3, 112(sp)
	bgt t3, s9, label9
label15:
	li a0, 65
	jal _sysy_starttime
	mv a0, zero
.p2align 2
label16:
	mv a1, s6
	mv a2, zero
	ld t3, 112(sp)
	bgt t3, zero, label21
	j label178
label74:
	mv s4, zero
	mv a0, zero
	ld t3, 112(sp)
	bgt t3, zero, label79
	j label102
.p2align 2
label103:
	mv a3, s5
	mv a5, s4
	mv t0, zero
	ld t3, 112(sp)
	ble t3, zero, label108
.p2align 2
label109:
	sh2add t1, a2, a5
	lw a4, 0(t1)
	beq a4, zero, label122
	ld t3, 112(sp)
	bgt t3, s2, label112
	j label111
.p2align 2
label122:
	addiw t0, t0, 1
	add a5, a5, s1
	add a3, a3, s1
	ld t3, 112(sp)
	bgt t3, t0, label109
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t3, a2, label103
	addiw a0, a0, 1
	blt a0, s7, label16
	j label74
.p2align 2
label112:
	mv t1, a3
	mv t2, zero
.p2align 2
label113:
	lw t4, 0(t1)
	sh2add t3, t2, a1
	addiw t2, t2, 4
	lw t5, 0(t3)
	mulw a6, a4, t5
	addw t6, t4, a6
	sw t6, 0(t1)
	lw t5, 4(t1)
	lw t4, 4(t3)
	mulw a6, a4, t4
	addw t6, t5, a6
	sw t6, 4(t1)
	lw t4, 8(t1)
	lw t5, 8(t3)
	mulw a6, a4, t5
	addw t6, t4, a6
	sw t6, 8(t1)
	lw t5, 12(t1)
	lw a6, 12(t3)
	mulw t6, a4, a6
	addw t4, t5, t6
	sw t4, 12(t1)
	ble s0, t2, label445
	addi t1, t1, 16
	j label113
.p2align 2
label445:
	sh2add t1, t2, a3
	sh2add a6, t2, a1
	lw t3, 0(t1)
	addiw t2, t2, 1
	lw t5, 0(a6)
	mulw t4, a4, t5
	addw t6, t3, t4
	sw t6, 0(t1)
	ld t3, 112(sp)
	bgt t3, t2, label121
	j label663
.p2align 2
label118:
	lw t3, 0(t1)
	sh2add a6, t2, a1
	addiw t2, t2, 1
	lw t5, 0(a6)
	mulw t4, a4, t5
	addw t6, t3, t4
	sw t6, 0(t1)
	ld t3, 112(sp)
	ble t3, t2, label459
.p2align 2
label121:
	addi t1, t1, 4
	j label118
.p2align 2
label10:
	jal getint
	addiw a1, s11, 1
	sw a0, 0(s10)
	ld t3, 112(sp)
	ble t3, a1, label171
	addi s10, s10, 4
	mv s11, a1
	j label10
.p2align 2
label79:
	ld t3, 112(sp)
	bgt t3, s2, label80
	mv a1, s5
	li a4, 1
	lw a3, 0(s5)
	addw a2, s4, a3
	bgt t3, a4, label100
	j label397
.p2align 2
label80:
	ble s0, s3, label81
	mv a1, s5
	mv a2, zero
	mv a3, s4
.p2align 2
label83:
	lw t0, 0(a1)
	addiw a2, a2, 16
	lw t1, 4(a1)
	addw a4, a3, t0
	lw t2, 8(a1)
	addw a5, a4, t1
	lw t3, 12(a1)
	addw a3, a5, t2
	lw t1, 16(a1)
	addw t0, a3, t3
	lw t2, 20(a1)
	addw a4, t0, t1
	lw t0, 24(a1)
	addw a5, a4, t2
	lw t1, 28(a1)
	addw a3, a5, t0
	lw t2, 32(a1)
	addw a4, a3, t1
	lw a3, 36(a1)
	addw t0, a4, t2
	lw t1, 40(a1)
	addw a5, t0, a3
	lw t2, 44(a1)
	addw a4, a5, t1
	lw t1, 48(a1)
	addw a3, a4, t2
	lw t2, 52(a1)
	addw t0, a3, t1
	lw t1, 56(a1)
	addw a5, t0, t2
	lw t0, 60(a1)
	addw a4, a5, t1
	ld a5, 104(sp)
	addw a3, a4, t0
	ble a5, a2, label368
	addi a1, a1, 64
	j label83
.p2align 2
label397:
	addiw a0, a0, 1
	add s5, s5, s1
	mv s4, a2
	ld t3, 112(sp)
	bgt t3, a0, label79
label102:
	li a0, 84
	jal _sysy_stoptime
	mv a0, s4
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s4, 24(sp)
	ld s6, 32(sp)
	ld s1, 40(sp)
	ld s8, 48(sp)
	ld s9, 56(sp)
	ld s2, 64(sp)
	ld s3, 72(sp)
	ld s7, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 120
	ret
.p2align 2
label111:
	mv t1, a3
	mv a6, a1
	li t2, 1
	lw t3, 0(a3)
	lw t5, 0(a1)
	mulw t4, a4, t5
	addw t6, t3, t4
	sw t6, 0(a3)
	ld t3, 112(sp)
	bgt t3, t2, label121
	addiw t0, t0, 1
	add a5, a5, s1
	add a3, a3, s1
	bgt t3, t0, label109
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t3, a2, label103
	j label639
.p2align 2
label21:
	ld t3, 112(sp)
	bgt t3, s2, label28
	j label181
.p2align 2
label25:
	addiw a2, a2, 1
	add a1, a1, s1
	ld t3, 112(sp)
	bgt t3, a2, label21
	j label629
.p2align 2
label28:
	ble s0, s3, label192
	mv a3, a1
	mv a4, zero
.p2align 2
label30:
	sd zero, 0(a3)
	addiw a4, a4, 16
	sd zero, 8(a3)
	sd zero, 16(a3)
	sd zero, 24(a3)
	sd zero, 32(a3)
	sd zero, 40(a3)
	sd zero, 48(a3)
	sd zero, 56(a3)
	ld a5, 104(sp)
	ble a5, a4, label212
	addi a3, a3, 64
	j label30
.p2align 2
label22:
	sw zero, 0(a3)
	addiw a4, a4, 1
	ld t3, 112(sp)
	bgt t3, a4, label26
	j label25
.p2align 2
label629:
	mv a1, s5
	mv a2, zero
	ld t3, 112(sp)
	bgt t3, zero, label45
	j label230
.p2align 2
label26:
	addi a3, a3, 4
	j label22
.p2align 2
label223:
	sh2add a3, a4, a1
	addiw a4, a4, 1
	sw zero, 0(a3)
	ld t3, 112(sp)
	bgt t3, a4, label26
.p2align 2
label653:
	addiw a2, a2, 1
	add a1, a1, s1
	ld t3, 112(sp)
	bgt t3, a2, label21
	j label629
.p2align 2
label45:
	mv a3, s6
	mv a5, s4
	mv t0, zero
	ld t3, 112(sp)
	ble t3, zero, label50
.p2align 2
label51:
	sh2add t1, a2, a5
	lw a4, 0(t1)
	beq a4, zero, label64
	j label52
.p2align 2
label257:
	addiw t0, t0, 1
	add a5, a5, s1
	add a3, a3, s1
	ld t3, 112(sp)
	bgt t3, t0, label51
	j label656
.p2align 2
label64:
	addiw t0, t0, 1
	add a5, a5, s1
	add a3, a3, s1
	ld t3, 112(sp)
	bgt t3, t0, label51
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t3, a2, label45
	mv a1, s5
	mv a2, zero
	bgt t3, zero, label123
	j label654
.p2align 2
label52:
	ld t3, 112(sp)
	ble t3, s2, label53
	mv t1, a3
	mv t2, zero
.p2align 2
label59:
	lw t4, 0(t1)
	sh2add t3, t2, a1
	addiw t2, t2, 4
	lw t5, 0(t3)
	mulw t6, a4, t5
	addw a6, t4, t6
	sw a6, 0(t1)
	lw t5, 4(t1)
	lw t6, 4(t3)
	mulw t4, a4, t6
	addw a6, t5, t4
	sw a6, 4(t1)
	lw t6, 8(t1)
	lw t4, 8(t3)
	mulw a6, a4, t4
	addw t5, t6, a6
	sw t5, 8(t1)
	lw t4, 12(t1)
	lw t6, 12(t3)
	mulw t5, a4, t6
	addw a6, t4, t5
	sw a6, 12(t1)
	ble s0, t2, label287
	addi t1, t1, 16
	j label59
.p2align 2
label54:
	lw t3, 0(t1)
	sh2add t6, t2, a1
	addiw t2, t2, 1
	lw t5, 0(t6)
	mulw a6, a4, t5
	addw t4, t3, a6
	sw t4, 0(t1)
	ld t3, 112(sp)
	ble t3, t2, label257
.p2align 2
label57:
	addi t1, t1, 4
	j label54
.p2align 2
label287:
	sh2add t1, t2, a3
	sh2add t6, t2, a1
	lw t3, 0(t1)
	addiw t2, t2, 1
	lw t5, 0(t6)
	mulw a6, a4, t5
	addw t4, t3, a6
	sw t4, 0(t1)
	ld t3, 112(sp)
	bgt t3, t2, label57
	addiw t0, t0, 1
	add a5, a5, s1
	add a3, a3, s1
	bgt t3, t0, label51
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t3, a2, label45
	j label673
.p2align 2
label123:
	ld t3, 112(sp)
	bgt t3, s2, label130
	j label466
.p2align 2
label471:
	addiw a2, a2, 1
	add a1, a1, s1
	ld t3, 112(sp)
	bgt t3, a2, label123
	j label666
.p2align 2
label130:
	ble s0, s3, label131
	mv a3, a1
	mv a4, zero
.p2align 2
label133:
	sd zero, 0(a3)
	addiw a4, a4, 16
	sd zero, 8(a3)
	sd zero, 16(a3)
	sd zero, 24(a3)
	sd zero, 32(a3)
	sd zero, 40(a3)
	sd zero, 48(a3)
	sd zero, 56(a3)
	ld a5, 104(sp)
	ble a5, a4, label136
	addi a3, a3, 64
	j label133
label654:
	mv a1, s6
	mv a2, zero
	ld t3, 112(sp)
	bgt t3, zero, label103
	j label73
.p2align 2
label124:
	sw zero, 0(a3)
	addiw a4, a4, 1
	ld t3, 112(sp)
	ble t3, a4, label471
.p2align 2
label127:
	addi a3, a3, 4
	j label124
.p2align 2
label141:
	sh2add a3, a4, a1
	addiw a4, a4, 1
	sw zero, 0(a3)
	ld t3, 112(sp)
	bgt t3, a4, label127
.p2align 2
label646:
	addiw a2, a2, 1
	add a1, a1, s1
	ld t3, 112(sp)
	bgt t3, a2, label123
	j label654
.p2align 2
label212:
	sh2add a3, a4, a1
	addiw a4, a4, 4
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	bgt s0, a4, label38
	j label652
.p2align 2
label35:
	sw zero, 0(a3)
	addiw a4, a4, 4
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	ble s0, a4, label223
.p2align 2
label38:
	addi a3, a3, 16
	j label35
.p2align 2
label136:
	sh2add a3, a4, a1
	addiw a4, a4, 4
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	bgt s0, a4, label142
	j label645
.p2align 2
label138:
	sw zero, 0(a3)
	addiw a4, a4, 4
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	ble s0, a4, label141
.p2align 2
label142:
	addi a3, a3, 16
	j label138
.p2align 2
label53:
	mv t1, a3
	mv t2, zero
	j label54
.p2align 2
label93:
	sh2add a1, a2, s5
	addiw a4, a2, 1
	mv a2, a3
	lw a3, 0(a1)
	ld t3, 112(sp)
	addw a2, a2, a3
	bgt t3, a4, label100
	j label637
.p2align 2
label96:
	lw a3, 0(a1)
	addiw a4, a4, 1
	ld t3, 112(sp)
	addw a2, a2, a3
	ble t3, a4, label397
.p2align 2
label100:
	addi a1, a1, 4
	j label96
.p2align 2
label368:
	sh2add a1, a2, s5
	addiw a2, a2, 4
	lw a4, 0(a1)
	lw t2, 4(a1)
	addw a5, a3, a4
	lw t1, 8(a1)
	addw t0, a5, t2
	lw a5, 12(a1)
	addw a4, t0, t1
	addw a3, a4, a5
	bgt s0, a2, label94
	j label660
.p2align 2
label89:
	lw a4, 0(a1)
	addiw a2, a2, 4
	lw t2, 4(a1)
	addw a5, a3, a4
	lw t1, 8(a1)
	addw t0, a5, t2
	lw a5, 12(a1)
	addw a4, t0, t1
	addw a3, a4, a5
	ble s0, a2, label93
.p2align 2
label94:
	addi a1, a1, 16
	j label89
.p2align 2
label459:
	addiw t0, t0, 1
	add a5, a5, s1
	add a3, a3, s1
	ld t3, 112(sp)
	bgt t3, t0, label109
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t3, a2, label103
label680:
	addiw a0, a0, 1
	blt a0, s7, label16
	j label74
.p2align 2
label663:
	addiw t0, t0, 1
	add a5, a5, s1
	add a3, a3, s1
	ld t3, 112(sp)
	bgt t3, t0, label109
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t3, a2, label103
	j label680
.p2align 2
label652:
	sh2add a3, a4, a1
	addiw a4, a4, 1
	sw zero, 0(a3)
	ld t3, 112(sp)
	bgt t3, a4, label26
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t3, a2, label21
	j label629
.p2align 2
label131:
	mv a3, a1
	li a4, 4
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	bgt s0, a4, label142
	sh2add a3, a4, a1
	addiw a4, a4, 1
	sw zero, 0(a3)
	ld t3, 112(sp)
	bgt t3, a4, label127
	j label646
.p2align 2
label645:
	sh2add a3, a4, a1
	addiw a4, a4, 1
	sw zero, 0(a3)
	ld t3, 112(sp)
	bgt t3, a4, label127
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t3, a2, label123
	j label654
.p2align 2
label50:
	addiw a2, a2, 1
	add a1, a1, s1
	ld t3, 112(sp)
	bgt t3, a2, label45
	mv a1, s5
	mv a2, zero
	bgt t3, zero, label123
	j label654
.p2align 2
label108:
	addiw a2, a2, 1
	add a1, a1, s1
	ld t3, 112(sp)
	bgt t3, a2, label103
label639:
	addiw a0, a0, 1
	blt a0, s7, label16
	j label74
.p2align 2
label192:
	mv a3, a1
	li a4, 4
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	bgt s0, a4, label38
	sh2add a3, a4, a1
	addiw a4, a4, 1
	sw zero, 0(a3)
	ld t3, 112(sp)
	bgt t3, a4, label26
	j label653
label81:
	mv a1, s5
	li a2, 4
	lw a4, 0(s5)
	lw t2, 4(s5)
	addw a5, s4, a4
	lw t1, 8(s5)
	addw t0, a5, t2
	lw a5, 12(s5)
	addw a4, t0, t1
	addw a3, a4, a5
	bgt s0, a2, label94
	j label93
.p2align 2
label660:
	sh2add a1, a2, s5
	addiw a4, a2, 1
	mv a2, a3
	lw a3, 0(a1)
	ld t3, 112(sp)
	addw a2, a2, a3
	bgt t3, a4, label100
	addiw a0, a0, 1
	add s5, s5, s1
	mv s4, a2
	bgt t3, a0, label79
	j label102
.p2align 2
label656:
	addiw a2, a2, 1
	add a1, a1, s1
	ld t3, 112(sp)
	bgt t3, a2, label45
label673:
	mv a1, s5
	mv a2, zero
	ld t3, 112(sp)
	bgt t3, zero, label123
	j label654
.p2align 2
label637:
	addiw a0, a0, 1
	add s5, s5, s1
	mv s4, a2
	ld t3, 112(sp)
	bgt t3, a0, label79
	j label102
label230:
	mv a1, s5
	mv a2, zero
	ld t3, 112(sp)
	bgt t3, zero, label123
	j label654
label73:
	addiw a0, a0, 1
	blt a0, s7, label16
	j label74
label666:
	mv a1, s6
	mv a2, zero
	ld t3, 112(sp)
	bgt t3, zero, label103
	j label73
label178:
	mv a1, s5
	mv a2, zero
	ld t3, 112(sp)
	bgt t3, zero, label45
	j label230
.p2align 2
label466:
	mv a3, a1
	mv a4, zero
	j label124
.p2align 2
label181:
	mv a3, a1
	mv a4, zero
	j label22
