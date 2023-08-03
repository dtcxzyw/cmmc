.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
buf:
	.zero	800
.text
.p2align 2
merge_sort:
	addi sp, sp, -96
	addiw a2, a0, 1
	sd ra, 0(sp)
	sd s5, 8(sp)
	mv s5, a0
	sd s0, 16(sp)
	mv s0, a1
	sd s6, 24(sp)
	sd s1, 32(sp)
	sd s9, 40(sp)
	sd s2, 48(sp)
	sd s7, 56(sp)
	sd s8, 64(sp)
	sd s3, 72(sp)
	sd s4, 80(sp)
	sd s10, 88(sp)
	bgt a1, a2, label2
label192:
	ld ra, 0(sp)
	ld s5, 8(sp)
	ld s0, 16(sp)
	ld s6, 24(sp)
	ld s1, 32(sp)
	ld s9, 40(sp)
	ld s2, 48(sp)
	ld s7, 56(sp)
	ld s8, 64(sp)
	ld s3, 72(sp)
	ld s4, 80(sp)
	ld s10, 88(sp)
	addi sp, sp, 96
	ret
label2:
	addw a0, s5, s0
	addiw s7, s5, 4
	addiw s8, s5, 16
	addiw s3, s0, -4
	addiw s4, s0, -20
	srliw a3, a0, 31
	add a1, a0, a3
pcrel1025:
	auipc a0, %pcrel_hi(buf)
	sraiw s6, a1, 1
	addi s1, a0, %pcrel_lo(pcrel1025)
	addi s9, s6, -4
	addi s2, s1, 400
	blt a2, s6, label130
label3:
	addiw a0, s6, 1
	ble s0, a0, label542
	addw a1, s0, s6
	mv a0, s6
	srliw a2, a1, 31
	add a3, a1, a2
	sraiw s10, a3, 1
	mv a1, s10
	jal merge_sort
	mv a0, s10
	mv a1, s0
	jal merge_sort
	mv a3, s6
	mv a0, s10
	mv t0, s6
	sh2add a1, s6, s2
	sh2add a4, s10, s1
	addi a2, s10, -4
	sh2add a5, s6, s1
	slt t1, s6, s10
	slt t2, s10, s0
	and t3, t1, t2
	beq t3, zero, label76
.p2align 2
label73:
	lw t1, 0(a5)
	addiw t0, t0, 1
	lw t2, 0(a4)
	blt t1, t2, label74
	sw t2, 0(a1)
	addiw a0, a0, 1
	addi a4, a4, 4
	slt t1, a3, s10
	addi a1, a1, 4
	slt t2, a0, s0
	and t3, t1, t2
	bne t3, zero, label73
	j label76
.p2align 2
label74:
	sw t1, 0(a1)
	addiw a3, a3, 1
	addi a5, a5, 4
	slt t2, a0, s0
	addi a1, a1, 4
	slt t1, a3, s10
	and t3, t1, t2
	bne t3, zero, label73
label76:
	ble s10, a3, label455
	addiw a1, a3, 4
	ble s10, a1, label460
	sh2add a1, a3, s1
label79:
	lw a5, 0(a1)
	sh2add a4, t0, s2
	addiw a3, a3, 4
	addiw t0, t0, 4
	sw a5, 0(a4)
	lw t2, 4(a1)
	sw t2, 4(a4)
	lw t1, 8(a1)
	sw t1, 8(a4)
	lw a5, 12(a1)
	sw a5, 12(a4)
	ble a2, a3, label460
	addi a1, a1, 16
	j label79
label460:
	sh2add a1, a3, s1
label85:
	lw a2, 0(a1)
	sh2add a4, t0, s2
	addiw a3, a3, 1
	addiw t0, t0, 1
	sw a2, 0(a4)
	ble s10, a3, label455
	addi a1, a1, 4
	j label85
label4:
	slt t0, a4, s6
	slt t1, a0, s0
	and t2, t0, t1
	bne t2, zero, label62
	j label11
label542:
	sh2add a3, s5, s1
	mv a5, s5
	mv a0, s6
	mv a4, s5
	sh2add a2, s6, s1
	sh2add a1, s5, s2
	j label4
label11:
	ble s6, a4, label225
	addiw a1, a4, 4
	ble s6, a1, label230
	sh2add a1, a4, s1
.p2align 2
label19:
	lw a3, 0(a1)
	sh2add a2, a5, s2
	addiw a4, a4, 4
	addiw a5, a5, 4
	sw a3, 0(a2)
	lw t0, 4(a1)
	sw t0, 4(a2)
	lw a3, 8(a1)
	sw a3, 8(a2)
	lw t0, 12(a1)
	sw t0, 12(a2)
	ble s9, a4, label230
	addi a1, a1, 16
	j label19
.p2align 2
label62:
	lw t0, 0(a3)
	addiw a5, a5, 1
	lw t1, 0(a2)
	blt t0, t1, label63
	sw t1, 0(a1)
	addiw a0, a0, 1
	addi a2, a2, 4
	slt t0, a4, s6
	addi a1, a1, 4
	slt t1, a0, s0
	and t2, t0, t1
	bne t2, zero, label62
	j label11
.p2align 2
label63:
	sw t0, 0(a1)
	addiw a4, a4, 1
	addi a3, a3, 4
	slt t1, a0, s0
	addi a1, a1, 4
	slt t0, a4, s6
	and t2, t0, t1
	bne t2, zero, label62
	j label11
label225:
	mv a2, a5
	ble s0, a0, label42
	addiw a1, a0, 4
	ble s0, a1, label273
	sh2add a1, a0, s1
.p2align 2
label36:
	lw a4, 0(a1)
	sh2add a3, a2, s2
	addiw a0, a0, 4
	addiw a2, a2, 4
	sw a4, 0(a3)
	lw t0, 4(a1)
	sw t0, 4(a3)
	lw a5, 8(a1)
	sw a5, 8(a3)
	lw a4, 12(a1)
	sw a4, 12(a3)
	ble s3, a0, label273
	addi a1, a1, 16
	j label36
label273:
	sh2add a1, a0, s1
label29:
	lw a3, 0(a1)
	sh2add a4, a2, s2
	addiw a0, a0, 1
	addiw a2, a2, 1
	sw a3, 0(a4)
	ble s0, a0, label42
	addi a1, a1, 4
	j label29
label42:
	bge s5, s0, label192
	ble s0, s7, label44
	bge s8, s3, label331
	sh2add a0, s5, s2
.p2align 2
label51:
	lw a2, 0(a0)
	sh2add a1, s5, s1
	addiw s5, s5, 16
	sw a2, 0(a1)
	lw a4, 4(a0)
	sw a4, 4(a1)
	lw a3, 8(a0)
	sw a3, 8(a1)
	lw a2, 12(a0)
	sw a2, 12(a1)
	lw a3, 16(a0)
	sw a3, 16(a1)
	lw a4, 20(a0)
	sw a4, 20(a1)
	lw a2, 24(a0)
	sw a2, 24(a1)
	lw a3, 28(a0)
	sw a3, 28(a1)
	lw a2, 32(a0)
	sw a2, 32(a1)
	lw a3, 36(a0)
	sw a3, 36(a1)
	lw a2, 40(a0)
	sw a2, 40(a1)
	lw a3, 44(a0)
	sw a3, 44(a1)
	lw a2, 48(a0)
	sw a2, 48(a1)
	lw a3, 52(a0)
	sw a3, 52(a1)
	lw a2, 56(a0)
	sw a2, 56(a1)
	lw a3, 60(a0)
	sw a3, 60(a1)
	ble s4, s5, label331
	addi a0, a0, 64
	j label51
label331:
	sh2add a0, s5, s2
label56:
	lw a2, 0(a0)
	sh2add a1, s5, s1
	addiw s5, s5, 4
	sw a2, 0(a1)
	lw a3, 4(a0)
	sw a3, 4(a1)
	lw a2, 8(a0)
	sw a2, 8(a1)
	lw a3, 12(a0)
	sw a3, 12(a1)
	ble s3, s5, label44
	addi a0, a0, 16
	j label56
label44:
	sh2add a0, s5, s2
label45:
	lw a1, 0(a0)
	sh2add a2, s5, s1
	addiw s5, s5, 1
	sw a1, 0(a2)
	ble s0, s5, label192
	addi a0, a0, 4
	j label45
label230:
	sh2add a1, a4, s1
label13:
	lw a2, 0(a1)
	sh2add a3, a5, s2
	addiw a4, a4, 1
	addiw a5, a5, 1
	sw a2, 0(a3)
	ble s6, a4, label225
	addi a1, a1, 4
	j label13
label455:
	mv a2, t0
	ble s0, a0, label107
	addiw a1, a0, 4
	ble s0, a1, label503
	sh2add a1, a0, s1
label95:
	lw a4, 0(a1)
	sh2add a3, a2, s2
	addiw a0, a0, 4
	addiw a2, a2, 4
	sw a4, 0(a3)
	lw t0, 4(a1)
	sw t0, 4(a3)
	lw a5, 8(a1)
	sw a5, 8(a3)
	lw a4, 12(a1)
	sw a4, 12(a3)
	ble s3, a0, label503
	addi a1, a1, 16
	j label95
label130:
	addw a1, s5, s6
	mv a0, s5
	srliw a3, a1, 31
	add a2, a1, a3
	sraiw s10, a2, 1
	mv a1, s10
	jal merge_sort
	mv a0, s10
	mv a1, s6
	jal merge_sort
	mv t1, s5
	sh2add a2, s5, s2
	sh2add a5, s10, s1
	mv a1, s10
	addiw a0, s6, -20
	mv a4, s5
	addi a3, s10, -4
	sh2add t0, s5, s1
	slt t2, s5, s10
	slt t4, s10, s6
	and t3, t2, t4
	bne t3, zero, label189
label138:
	ble s10, a4, label680
	addiw a2, a4, 4
	ble s10, a2, label176
	sh2add a2, a4, s1
label178:
	lw t0, 0(a2)
	sh2add a5, t1, s2
	addiw a4, a4, 4
	addiw t1, t1, 4
	sw t0, 0(a5)
	lw t2, 4(a2)
	sw t2, 4(a5)
	lw t3, 8(a2)
	sw t3, 8(a5)
	lw t0, 12(a2)
	sw t0, 12(a5)
	ble a3, a4, label176
	addi a2, a2, 16
	j label178
.p2align 2
label189:
	lw t2, 0(t0)
	addiw t1, t1, 1
	lw t3, 0(a5)
	blt t2, t3, label190
	sw t3, 0(a2)
	addiw a1, a1, 1
	addi a5, a5, 4
	slt t2, a4, s10
	addi a2, a2, 4
	slt t4, a1, s6
	and t3, t2, t4
	bne t3, zero, label189
	j label138
.p2align 2
label190:
	sw t2, 0(a2)
	addiw a4, a4, 1
	addi t0, t0, 4
	slt t4, a1, s6
	addi a2, a2, 4
	slt t2, a4, s10
	and t3, t2, t4
	bne t3, zero, label189
	j label138
label176:
	sh2add a2, a4, s1
label184:
	lw a3, 0(a2)
	sh2add a5, t1, s2
	addiw a4, a4, 1
	addiw t1, t1, 1
	sw a3, 0(a5)
	ble s10, a4, label680
	addi a2, a2, 4
	j label184
label680:
	mv a3, t1
	ble s6, a1, label141
	addiw a2, a1, 4
	ble s6, a2, label791
	sh2add a2, a1, s1
label168:
	lw a5, 0(a2)
	sh2add a4, a3, s2
	addiw a1, a1, 4
	addiw a3, a3, 4
	sw a5, 0(a4)
	lw t1, 4(a2)
	sw t1, 4(a4)
	lw t0, 8(a2)
	sw t0, 8(a4)
	lw a5, 12(a2)
	sw a5, 12(a4)
	ble s9, a1, label791
	addi a2, a2, 16
	j label168
label503:
	sh2add a1, a0, s1
label102:
	lw a3, 0(a1)
	sh2add a4, a2, s2
	addiw a0, a0, 1
	addiw a2, a2, 1
	sw a3, 0(a4)
	ble s0, a0, label107
	addi a1, a1, 4
	j label102
label107:
	ble s0, s6, label542
	addiw a0, s6, 4
	ble s0, a0, label109
	addiw a0, s6, 16
	ble s3, a0, label569
	sh2add a0, s6, s2
	mv a1, s6
label123:
	lw a3, 0(a0)
	sh2add a2, a1, s1
	addiw a1, a1, 16
	sw a3, 0(a2)
	lw a4, 4(a0)
	sw a4, 4(a2)
	lw a3, 8(a0)
	sw a3, 8(a2)
	lw a4, 12(a0)
	sw a4, 12(a2)
	lw a3, 16(a0)
	sw a3, 16(a2)
	lw a4, 20(a0)
	sw a4, 20(a2)
	lw a3, 24(a0)
	sw a3, 24(a2)
	lw a4, 28(a0)
	sw a4, 28(a2)
	lw a3, 32(a0)
	sw a3, 32(a2)
	lw a4, 36(a0)
	sw a4, 36(a2)
	lw a5, 40(a0)
	sw a5, 40(a2)
	lw a3, 44(a0)
	sw a3, 44(a2)
	lw a4, 48(a0)
	sw a4, 48(a2)
	lw a3, 52(a0)
	sw a3, 52(a2)
	lw a4, 56(a0)
	sw a4, 56(a2)
	lw a3, 60(a0)
	sw a3, 60(a2)
	ble s4, a1, label646
	addi a0, a0, 64
	j label123
label116:
	lw a3, 0(a0)
	sh2add a2, a1, s1
	addiw a1, a1, 4
	sw a3, 0(a2)
	lw a5, 4(a0)
	sw a5, 4(a2)
	lw a4, 8(a0)
	sw a4, 8(a2)
	lw a3, 12(a0)
	sw a3, 12(a2)
	ble s3, a1, label119
	addi a0, a0, 16
	j label116
label646:
	sh2add a0, a1, s2
	j label116
label119:
	sh2add a0, a1, s2
label110:
	lw a2, 0(a0)
	sh2add a3, a1, s1
	addiw a1, a1, 1
	sw a2, 0(a3)
	ble s0, a1, label542
	addi a0, a0, 4
	j label110
label791:
	sh2add a2, a1, s1
label162:
	lw a4, 0(a2)
	sh2add a5, a3, s2
	addiw a1, a1, 1
	addiw a3, a3, 1
	sw a4, 0(a5)
	ble s6, a1, label141
	addi a2, a2, 4
	j label162
label141:
	bge s5, s6, label3
	ble s6, s7, label691
	ble s9, s8, label144
	sh2add a1, s5, s2
	mv a2, s5
label151:
	lw a4, 0(a1)
	sh2add a3, a2, s1
	addiw a2, a2, 16
	sw a4, 0(a3)
	lw a5, 4(a1)
	sw a5, 4(a3)
	lw a4, 8(a1)
	sw a4, 8(a3)
	lw a5, 12(a1)
	sw a5, 12(a3)
	lw t0, 16(a1)
	sw t0, 16(a3)
	lw a4, 20(a1)
	sw a4, 20(a3)
	lw a5, 24(a1)
	sw a5, 24(a3)
	lw t0, 28(a1)
	sw t0, 28(a3)
	lw a4, 32(a1)
	sw a4, 32(a3)
	lw a5, 36(a1)
	sw a5, 36(a3)
	lw a4, 40(a1)
	sw a4, 40(a3)
	lw a5, 44(a1)
	sw a5, 44(a3)
	lw t0, 48(a1)
	sw t0, 48(a3)
	lw a4, 52(a1)
	sw a4, 52(a3)
	lw a5, 56(a1)
	sw a5, 56(a3)
	lw a4, 60(a1)
	sw a4, 60(a3)
	ble a0, a2, label772
	addi a1, a1, 64
	j label151
label145:
	lw a3, 0(a0)
	sh2add a2, a1, s1
	addiw a1, a1, 4
	sw a3, 0(a2)
	lw a4, 4(a0)
	sw a4, 4(a2)
	lw a3, 8(a0)
	sw a3, 8(a2)
	lw a4, 12(a0)
	sw a4, 12(a2)
	ble s9, a1, label148
	addi a0, a0, 16
	j label145
label772:
	sh2add a0, a2, s2
	mv a1, a2
	j label145
label148:
	sh2add a0, a1, s2
label156:
	lw a3, 0(a0)
	sh2add a2, a1, s1
	addiw a1, a1, 1
	sw a3, 0(a2)
	ble s6, a1, label3
	addi a0, a0, 4
	j label156
label109:
	sh2add a0, s6, s2
	mv a1, s6
	j label110
label144:
	sh2add a0, s5, s2
	mv a1, s5
	j label145
label569:
	sh2add a0, s6, s2
	mv a1, s6
	j label116
label691:
	sh2add a0, s5, s2
	mv a1, s5
	j label156
.p2align 2
.globl main
main:
	addi sp, sp, -16
pcrel1033:
	auipc a1, %pcrel_hi(buf)
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel1033)
	mv a0, s0
	jal getarray
	mv t5, a0
	mv a1, a0
	mv a0, zero
	jal merge_sort
	mv a0, t5
	mv a1, s0
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	addi sp, sp, 16
	ret
