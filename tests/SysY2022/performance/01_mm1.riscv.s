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
	# stack usage: CalleeArg[0] Local[0] RegSpill[16] CalleeSaved[104]
	addi sp, sp, -120
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s6, 24(sp)
	sd s1, 32(sp)
	sd s4, 40(sp)
	sd s8, 48(sp)
	sd s9, 56(sp)
	sd s2, 64(sp)
	sd s3, 72(sp)
	sd s7, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	li s7, 5
	li s2, 3
	lui s1, 1
	addiw s0, a0, -3
	sd a0, 112(sp)
	addiw a5, a0, -18
	li s3, 15
pcrel840:
	auipc a1, %pcrel_hi(B)
	mv s9, zero
	sd a5, 104(sp)
pcrel841:
	auipc a0, %pcrel_hi(A)
	addi s4, a1, %pcrel_lo(pcrel840)
	addi s6, a0, %pcrel_lo(pcrel841)
	mv s8, s6
pcrel842:
	auipc a0, %pcrel_hi(C)
	addi s5, a0, %pcrel_lo(pcrel842)
	ld t2, 112(sp)
	bgt t2, zero, label168
	j label5
.p2align 2
label172:
	addiw s9, s9, 1
	add s8, s8, s1
	ld t2, 112(sp)
	ble t2, s9, label5
.p2align 2
label168:
	mv s10, s8
	mv s11, zero
.p2align 2
label169:
	jal getint
	addiw a1, s11, 1
	sw a0, 0(s10)
	ld t2, 112(sp)
	ble t2, a1, label172
	addi s10, s10, 4
	mv s11, a1
	j label169
label5:
	mv s8, s4
	mv s9, zero
	ld t2, 112(sp)
	bgt t2, zero, label9
	j label15
.p2align 2
label197:
	addiw s9, s9, 1
	add s8, s8, s1
	ld t2, 112(sp)
	ble t2, s9, label15
.p2align 2
label9:
	mv s10, s8
	mv s11, zero
.p2align 2
label10:
	jal getint
	addiw a1, s11, 1
	sw a0, 0(s10)
	ld t2, 112(sp)
	ble t2, a1, label197
	addi s10, s10, 4
	mv s11, a1
	j label10
label15:
	li a0, 65
	jal _sysy_starttime
	mv a0, zero
	j label16
.p2align 2
label741:
	addiw a3, a3, 1
	add a1, a1, s1
	ld t2, 112(sp)
	bgt t2, a3, label121
label735:
	addiw a0, a0, 1
	bge a0, s7, label81
.p2align 2
label16:
	mv a1, s5
	mv a2, zero
.p2align 2
label18:
	ld t2, 112(sp)
	bgt t2, a2, label21
	j label204
.p2align 2
label142:
	add a4, a4, s1
	mv t0, a5
	ld t2, 112(sp)
	ble t2, a5, label741
.p2align 2
label126:
	sh2add t1, a3, a4
	addiw a5, t0, 1
	lw a2, 0(t1)
	bne a2, zero, label467
	add a4, a4, s1
	mv t0, a5
	ld t2, 112(sp)
	bgt t2, a5, label126
	addiw a3, a3, 1
	add a1, a1, s1
	ble t2, a3, label765
.p2align 2
label121:
	mv a4, s6
	mv t0, zero
	ld t2, 112(sp)
	bgt t2, zero, label126
	addiw a3, a3, 1
	add a1, a1, s1
	bgt t2, a3, label121
	j label735
.p2align 2
label467:
	ld t2, 112(sp)
	ble t2, zero, label736
	slliw t3, t0, 12
	add t1, s4, t3
	ble t2, s2, label476
	mv t0, t1
	mv t2, zero
.p2align 2
label131:
	sh2add t3, t2, a1
	lw t5, 0(t0)
	addiw t2, t2, 4
	lw t4, 0(t3)
	mulw t6, a2, t4
	addw a6, t5, t6
	sw a6, 0(t0)
	lw t4, 4(t0)
	lw t5, 4(t3)
	mulw t6, a2, t5
	addw a6, t4, t6
	sw a6, 4(t0)
	lw t5, 8(t0)
	lw t4, 8(t3)
	mulw a6, a2, t4
	addw t6, t5, a6
	sw t6, 8(t0)
	lw t4, 12(t0)
	lw a6, 12(t3)
	mulw t6, a2, a6
	addw t5, t4, t6
	sw t5, 12(t0)
	ble s0, t2, label505
	addi t0, t0, 16
	j label131
.p2align 2
label505:
	mv t3, t2
	ld t2, 112(sp)
	ble t2, t3, label739
.p2align 2
label138:
	sh2add t0, t3, t1
	mv t1, t3
.p2align 2
label139:
	sh2add t3, t1, a1
	lw t2, 0(t0)
	addiw t1, t1, 1
	lw t5, 0(t3)
	mulw t4, a2, t5
	addw t6, t2, t4
	sw t6, 0(t0)
	ld t2, 112(sp)
	ble t2, t1, label142
	addi t0, t0, 4
	j label139
.p2align 2
label257:
	addiw a2, a2, 1
	add a1, a1, s1
	ld t2, 112(sp)
	ble t2, a2, label755
.p2align 2
label21:
	ld t2, 112(sp)
	ble t2, s2, label207
	ble s0, s3, label210
	mv a3, a1
	mv a4, zero
	j label24
.p2align 2
label27:
	addi a3, a3, 64
.p2align 2
label24:
	addiw a4, a4, 16
	sd zero, 0(a3)
	sd zero, 8(a3)
	sd zero, 16(a3)
	sd zero, 24(a3)
	sd zero, 32(a3)
	sd zero, 40(a3)
	sd zero, 48(a3)
	sd zero, 56(a3)
	ld a5, 104(sp)
	bgt a5, a4, label27
	mv a5, a4
	ble s0, a4, label717
.p2align 2
label31:
	sh2add a3, a5, a1
	mv a4, a5
	j label32
.p2align 2
label35:
	addi a3, a3, 16
.p2align 2
label32:
	addiw a4, a4, 4
	sd zero, 0(a3)
	sd zero, 8(a3)
	bgt s0, a4, label35
	ld t2, 112(sp)
	ble t2, a4, label719
.p2align 2
label38:
	sh2add a3, a4, a1
.p2align 2
label39:
	addiw a4, a4, 1
	sw zero, 0(a3)
	ld t2, 112(sp)
	ble t2, a4, label257
	addi a3, a3, 4
	j label39
.p2align 2
label476:
	mv t3, zero
	ld t2, 112(sp)
	bgt t2, zero, label138
	add a4, a4, s1
	mv t0, a5
	bgt t2, a5, label126
	addiw a3, a3, 1
	add a1, a1, s1
	bgt t2, a3, label121
	j label735
.p2align 2
label739:
	add a4, a4, s1
	mv t0, a5
	ld t2, 112(sp)
	bgt t2, a5, label126
	addiw a3, a3, 1
	add a1, a1, s1
	bgt t2, a3, label121
	j label735
.p2align 2
label717:
	ld t2, 112(sp)
	bgt t2, a4, label38
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t2, a2, label21
	j label204
.p2align 2
label207:
	mv a4, zero
	ld t2, 112(sp)
	bgt t2, zero, label38
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t2, a2, label21
	j label204
.p2align 2
label210:
	mv a5, zero
	mv a4, zero
	bgt s0, zero, label31
	ld t2, 112(sp)
	bgt t2, zero, label38
	addiw a2, a2, 1
	add a1, a1, s1
	j label18
.p2align 2
label736:
	add a4, a4, s1
	mv t0, a5
	ld t2, 112(sp)
	bgt t2, a5, label126
	addiw a3, a3, 1
	add a1, a1, s1
	bgt t2, a3, label121
	j label735
label81:
	mv s5, zero
	mv a0, zero
	ld t2, 112(sp)
	bgt t2, zero, label86
	j label120
.p2align 2
label452:
	mv s5, a2
	addiw a0, a0, 1
	add s4, s4, s1
	ld t2, 112(sp)
	ble t2, a0, label120
.p2align 2
label86:
	ld t2, 112(sp)
	ble t2, s2, label358
	ble s0, s3, label361
	mv a1, s4
	mv a2, zero
	mv a3, s5
.p2align 2
label103:
	lw a4, 0(a1)
	addiw a2, a2, 16
	lw t2, 4(a1)
	addw t0, a3, a4
	lw t1, 8(a1)
	addw a5, t0, t2
	lw t0, 12(a1)
	addw a4, a5, t1
	lw t1, 16(a1)
	addw a3, a4, t0
	lw t0, 20(a1)
	addw a5, a3, t1
	lw t1, 24(a1)
	addw a4, a5, t0
	lw t0, 28(a1)
	addw a3, a4, t1
	lw t1, 32(a1)
	addw a5, a3, t0
	lw t0, 36(a1)
	addw a4, a5, t1
	lw t1, 40(a1)
	addw a3, a4, t0
	lw t0, 44(a1)
	addw a5, a3, t1
	lw t1, 48(a1)
	addw a4, a5, t0
	lw t0, 52(a1)
	addw a3, a4, t1
	lw t1, 56(a1)
	addw a5, a3, t0
	lw t0, 60(a1)
	addw a4, a5, t1
	ld a5, 104(sp)
	addw a3, a4, t0
	ble a5, a2, label436
	addi a1, a1, 64
	j label103
.p2align 2
label436:
	mv a4, a2
	mv s5, a3
	ble s0, a2, label732
.p2align 2
label96:
	sh2add a1, a4, s4
	mv a3, s5
	mv a2, a4
	j label97
.p2align 2
label101:
	addi a1, a1, 16
.p2align 2
label97:
	lw t0, 0(a1)
	addiw a2, a2, 4
	lw t2, 4(a1)
	addw a5, a3, t0
	lw t1, 8(a1)
	addw a4, a5, t2
	lw a5, 12(a1)
	addw t0, a4, t1
	addw a3, t0, a5
	bgt s0, a2, label101
	mv a1, a3
	ld t2, 112(sp)
	mv a3, a2
	mv a2, a1
	ble t2, a3, label731
.p2align 2
label114:
	sh2add a1, a3, s4
.p2align 2
label115:
	lw a4, 0(a1)
	addiw a3, a3, 1
	ld t2, 112(sp)
	addw a2, a2, a4
	ble t2, a3, label452
	addi a1, a1, 4
	j label115
label361:
	mv a4, zero
	mv a3, zero
	mv a2, zero
	bgt s0, zero, label96
	mv a1, zero
	ld t2, 112(sp)
	bgt t2, zero, label114
	mv s5, zero
	addiw a0, a0, 1
	add s4, s4, s1
	bgt t2, a0, label86
	j label120
.p2align 2
label732:
	mv a1, a3
	ld t2, 112(sp)
	mv a3, a2
	mv a2, a1
	bgt t2, a3, label114
	mv s5, a1
	addiw a0, a0, 1
	add s4, s4, s1
	bgt t2, a0, label86
	j label120
label358:
	mv a2, s5
	mv a3, zero
	mv a1, zero
	ld t2, 112(sp)
	bgt t2, zero, label114
	mv s5, zero
	addiw a0, a0, 1
	add s4, s4, s1
	bgt t2, a0, label86
	j label120
.p2align 2
label719:
	addiw a2, a2, 1
	add a1, a1, s1
	ld t2, 112(sp)
	bgt t2, a2, label21
label204:
	mv a1, s4
	mv a3, zero
	ld t2, 112(sp)
	bgt t2, zero, label48
	j label264
.p2align 2
label68:
	add a4, a4, s1
	mv t0, a5
	ld t2, 112(sp)
	ble t2, a5, label726
.p2align 2
label52:
	sh2add t1, a3, a4
	addiw a5, t0, 1
	lw a2, 0(t1)
	bne a2, zero, label276
	add a4, a4, s1
	mv t0, a5
	ld t2, 112(sp)
	bgt t2, a5, label52
	addiw a3, a3, 1
	add a1, a1, s1
	ble t2, a3, label758
.p2align 2
label48:
	mv a4, s6
	mv t0, zero
	ld t2, 112(sp)
	bgt t2, zero, label52
	addiw a3, a3, 1
	add a1, a1, s1
	bgt t2, a3, label48
	j label264
.p2align 2
label276:
	ld t2, 112(sp)
	ble t2, zero, label721
	slliw t3, t0, 12
	add t1, s5, t3
	ble t2, s2, label285
	mv t0, t1
	mv t2, zero
	j label57
.p2align 2
label60:
	addi t0, t0, 16
.p2align 2
label57:
	sh2add t3, t2, a1
	lw t4, 0(t0)
	addiw t2, t2, 4
	lw t5, 0(t3)
	mulw t6, a2, t5
	addw a6, t4, t6
	sw a6, 0(t0)
	lw t5, 4(t0)
	lw t6, 4(t3)
	mulw a6, a2, t6
	addw t4, t5, a6
	sw t4, 4(t0)
	lw t6, 8(t0)
	lw t5, 8(t3)
	mulw a6, a2, t5
	addw a7, t6, a6
	sw a7, 8(t0)
	lw t4, 12(t0)
	lw a6, 12(t3)
	mulw t5, a2, a6
	addw t6, t4, t5
	sw t6, 12(t0)
	bgt s0, t2, label60
	mv t3, t2
	ld t2, 112(sp)
	ble t2, t3, label724
.p2align 2
label64:
	sh2add t0, t3, t1
	mv t1, t3
.p2align 2
label65:
	sh2add t3, t1, a1
	lw t2, 0(t0)
	addiw t1, t1, 1
	lw t4, 0(t3)
	mulw t6, a2, t4
	addw t5, t2, t6
	sw t5, 0(t0)
	ld t2, 112(sp)
	ble t2, t1, label68
	addi t0, t0, 4
	j label65
.p2align 2
label285:
	mv t3, zero
	ld t2, 112(sp)
	bgt t2, zero, label64
	add a4, a4, s1
	mv t0, a5
	bgt t2, a5, label52
	addiw a3, a3, 1
	add a1, a1, s1
	bgt t2, a3, label48
	j label264
.p2align 2
label724:
	add a4, a4, s1
	mv t0, a5
	ld t2, 112(sp)
	bgt t2, a5, label52
	addiw a3, a3, 1
	add a1, a1, s1
	bgt t2, a3, label48
	j label264
.p2align 2
label721:
	add a4, a4, s1
	mv t0, a5
	ld t2, 112(sp)
	bgt t2, a5, label52
	addiw a3, a3, 1
	add a1, a1, s1
	bgt t2, a3, label48
	j label264
.p2align 2
label726:
	addiw a3, a3, 1
	add a1, a1, s1
	ld t2, 112(sp)
	bgt t2, a3, label48
label264:
	mv a1, s4
	mv a2, zero
	ld t2, 112(sp)
	bgt t2, zero, label145
	j label756
.p2align 2
label543:
	addiw a2, a2, 1
	add a1, a1, s1
	ld t2, 112(sp)
	ble t2, a2, label744
.p2align 2
label145:
	ld t2, 112(sp)
	ble t2, s2, label530
	ble s0, s3, label547
	mv a3, a1
	mv a4, zero
.p2align 2
label156:
	addiw a4, a4, 16
	sd zero, 0(a3)
	sd zero, 8(a3)
	sd zero, 16(a3)
	sd zero, 24(a3)
	sd zero, 32(a3)
	sd zero, 40(a3)
	sd zero, 48(a3)
	sd zero, 56(a3)
	ld a5, 104(sp)
	ble a5, a4, label567
	addi a3, a3, 64
	j label156
.p2align 2
label567:
	mv a5, a4
	ble s0, a4, label746
.p2align 2
label163:
	sh2add a3, a5, a1
	mv a4, a5
.p2align 2
label164:
	addiw a4, a4, 4
	sd zero, 0(a3)
	sd zero, 8(a3)
	ble s0, a4, label582
	addi a3, a3, 16
	j label164
.p2align 2
label582:
	ld t2, 112(sp)
	ble t2, a4, label748
.p2align 2
label149:
	sh2add a3, a4, a1
.p2align 2
label150:
	addiw a4, a4, 1
	sw zero, 0(a3)
	ld t2, 112(sp)
	ble t2, a4, label543
	addi a3, a3, 4
	j label150
.p2align 2
label530:
	mv a4, zero
	ld t2, 112(sp)
	bgt t2, zero, label149
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t2, a2, label145
	j label756
.p2align 2
label746:
	ld t2, 112(sp)
	bgt t2, a4, label149
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t2, a2, label145
	j label756
.p2align 2
label547:
	mv a5, zero
	mv a4, zero
	bgt s0, zero, label163
	ld t2, 112(sp)
	bgt t2, zero, label149
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t2, a2, label145
	j label756
.p2align 2
label748:
	addiw a2, a2, 1
	add a1, a1, s1
	ld t2, 112(sp)
	bgt t2, a2, label145
label756:
	mv a1, s5
	mv a3, zero
	ld t2, 112(sp)
	bgt t2, zero, label121
	j label80
label120:
	li a0, 84
	jal _sysy_stoptime
	mv a0, s5
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s6, 24(sp)
	ld s1, 32(sp)
	ld s4, 40(sp)
	ld s8, 48(sp)
	ld s9, 56(sp)
	ld s2, 64(sp)
	ld s3, 72(sp)
	ld s7, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 120
	ret
label765:
	addiw a0, a0, 1
	blt a0, s7, label16
	j label81
.p2align 2
label731:
	mv s5, a1
	addiw a0, a0, 1
	add s4, s4, s1
	ld t2, 112(sp)
	bgt t2, a0, label86
	j label120
label755:
	mv a1, s4
	mv a3, zero
	ld t2, 112(sp)
	bgt t2, zero, label48
	j label264
label744:
	mv a1, s5
	mv a3, zero
	ld t2, 112(sp)
	bgt t2, zero, label121
label80:
	addiw a0, a0, 1
	blt a0, s7, label16
	j label81
label758:
	mv a1, s4
	mv a2, zero
	ld t2, 112(sp)
	bgt t2, zero, label145
	j label756
