.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
buf:
	.zero	800
.text
.p2align 2
merge_sort:
	# stack usage: CalleeArg[0] Local[0] RegSpill[16] CalleeSaved[104]
	addi sp, sp, -120
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s5, 16(sp)
	addiw a0, a0, 1
	sd s10, 24(sp)
	mv s10, a1
	sd s4, 32(sp)
	sd s8, 40(sp)
	sd s7, 48(sp)
	sd s1, 56(sp)
	sd s6, 64(sp)
	sd s2, 72(sp)
	sd s3, 80(sp)
	sd s9, 88(sp)
	sd s11, 96(sp)
	sd a1, 104(sp)
	ble a1, a0, label2
	addw a2, s0, a1
	mv a1, a2
	bge a2, zero, label1004
	addiw a1, a2, 1
label1004:
	sraiw s4, a1, 1
	addiw s5, s0, 3
	addiw s6, s0, 15
pcrel1084:
	auipc a1, %pcrel_hi(buf)
	addiw s7, s4, -3
	slt s8, s0, s4
	addi a4, a1, %pcrel_lo(pcrel1084)
	addi s1, a4, 400
	sd a4, 112(sp)
	ld s10, 104(sp)
	addiw s3, s10, -18
	addiw s2, s10, -3
	bge a0, s4, label4
	addw a0, s0, s4
	mv a2, a0
	bge a0, zero, label1008
	addiw a2, a0, 1
label1008:
	sraiw s9, a2, 1
	mv a0, s0
	mv a1, s9
	jal merge_sort
	mv a0, s9
	mv a1, s4
	jal merge_sort
	addiw a0, s4, -18
	addiw a1, s9, -3
	slt t1, s0, s9
	slt t0, s9, s4
	and a2, t0, t1
	beq a2, zero, label724
	sh2add a2, s0, s1
	mv a5, s0
	mv t0, s9
	mv a3, s0
	ld a4, 112(sp)
	sh2add t3, s9, a4
	sh2add t4, s0, a4
	lw t1, 0(t4)
	lw t2, 0(t3)
	blt t1, t2, label171
	sw t2, 0(a2)
	addiw a4, s9, 1
	slt t1, s0, s9
	slt t0, a4, s4
	addiw a3, s0, 1
	and t2, t1, t0
	bne t2, zero, label170
	j label744
.p2align 2
label171:
	sw t1, 0(a2)
	addiw a5, a5, 1
	mv a4, t0
	addiw a3, a3, 1
	slt t1, a5, s9
	slt t0, t0, s4
	and t2, t1, t0
	beq t2, zero, label744
.p2align 2
label170:
	addi a2, a2, 4
	mv t0, a4
	ld a4, 112(sp)
	sh2add t3, t0, a4
	sh2add t4, a5, a4
	lw t1, 0(t4)
	lw t2, 0(t3)
	blt t1, t2, label171
	sw t2, 0(a2)
	addiw a4, t0, 1
	slt t1, a5, s9
	addiw a3, a3, 1
	slt t0, a4, s4
	and t2, t1, t0
	bne t2, zero, label170
	j label744
label69:
	addi a0, a0, 4
label66:
	ld a4, 112(sp)
	lw a2, 0(a0)
	sh2add a1, s0, a4
	addiw s0, s0, 1
	sw a2, 0(a1)
	ld s10, 104(sp)
	bgt s10, s0, label69
label2:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s10, 24(sp)
	ld s4, 32(sp)
	ld s8, 40(sp)
	ld s7, 48(sp)
	ld s1, 56(sp)
	ld s6, 64(sp)
	ld s2, 72(sp)
	ld s3, 80(sp)
	ld s9, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 120
	ret
label204:
	addi a1, a1, 4
label201:
	ld a4, 112(sp)
	lw a3, 0(a1)
	sh2add a2, a0, a4
	addiw a0, a0, 1
	sw a3, 0(a2)
	bgt s4, a0, label204
label4:
	addiw a0, s4, 1
	ld s10, 104(sp)
	slt s9, s4, s10
	bgt s10, a0, label82
label5:
	and a0, s8, s9
	beq a0, zero, label266
	sh2add a0, s0, s1
	mv a3, s0
	mv a2, s4
	mv a1, s0
	ld a4, 112(sp)
	sh2add t2, s4, a4
	sh2add t1, s0, a4
	lw a5, 0(t1)
	lw t0, 0(t2)
	blt a5, t0, label81
	sw t0, 0(a0)
	addiw a2, s4, 1
	slt a4, s0, s4
	addiw a1, s0, 1
	ld s10, 104(sp)
	slt s9, a2, s10
	and a5, a4, s9
	bne a5, zero, label79
	j label6
.p2align 2
label81:
	sw a5, 0(a0)
	addiw a3, a3, 1
	addiw a1, a1, 1
	slt a4, a3, s4
	ld s10, 104(sp)
	slt s9, a2, s10
	and a5, a4, s9
	beq a5, zero, label6
.p2align 2
label79:
	addi a0, a0, 4
	ld a4, 112(sp)
	sh2add t2, a2, a4
	sh2add t1, a3, a4
	lw a5, 0(t1)
	lw t0, 0(t2)
	blt a5, t0, label81
	sw t0, 0(a0)
	addiw a2, a2, 1
	slt a4, a3, s4
	addiw a1, a1, 1
	ld s10, 104(sp)
	slt s9, a2, s10
	and a5, a4, s9
	bne a5, zero, label79
	j label6
label82:
	ld s10, 104(sp)
	addw a0, s10, s4
	mv a2, a0
	bge a0, zero, label1006
	addiw a2, a0, 1
label1006:
	sraiw s11, a2, 1
	mv a0, s4
	mv a1, s11
	jal merge_sort
	ld s10, 104(sp)
	mv a0, s11
	mv a1, s10
	jal merge_sort
	addiw a0, s11, -3
	slt a1, s11, s10
	slt a4, s4, s11
	and a2, a4, a1
	beq a2, zero, label494
	sh2add a1, s4, s1
	mv a5, s4
	mv a3, s11
	mv a2, s4
	ld a4, 112(sp)
	sh2add t3, s11, a4
	sh2add t2, s4, a4
	lw t0, 0(t2)
	lw t1, 0(t3)
	bge t0, t1, label704
.p2align 2
label157:
	sw t0, 0(a1)
	addiw a5, a5, 1
	addiw a2, a2, 1
	slt a4, a5, s11
	ld s10, 104(sp)
	slt t0, a3, s10
	and t1, a4, t0
	beq t1, zero, label711
.p2align 2
label156:
	addi a1, a1, 4
	ld a4, 112(sp)
	sh2add t3, a3, a4
	sh2add t2, a5, a4
	lw t0, 0(t2)
	lw t1, 0(t3)
	blt t0, t1, label157
	sw t1, 0(a1)
	addiw a3, a3, 1
	slt a4, a5, s11
	addiw a2, a2, 1
	ld s10, 104(sp)
	slt t0, a3, s10
	and t1, a4, t0
	bne t1, zero, label156
	j label711
label6:
	beq a4, zero, label29
	addiw a4, a3, 3
	ble s4, a4, label274
	ld a4, 112(sp)
	sh2add a0, a3, a4
	j label24
.p2align 2
label28:
	addi a0, a0, 16
.p2align 2
label24:
	sh2add a4, a1, s1
	lw a5, 0(a0)
	addiw a3, a3, 4
	addiw a1, a1, 4
	sw a5, 0(a4)
	lw t0, 4(a0)
	sw t0, 4(a4)
	lw a5, 8(a0)
	sw a5, 8(a4)
	lw t0, 12(a0)
	sw t0, 12(a4)
	bgt s7, a3, label28
	mv a0, a1
label13:
	ble s4, a3, label29
	ld a4, 112(sp)
	sh2add a1, a3, a4
	j label18
label22:
	addi a1, a1, 4
label18:
	sh2add a4, a0, s1
	lw a5, 0(a1)
	addiw a3, a3, 1
	addiw a0, a0, 1
	sw a5, 0(a4)
	bgt s4, a3, label22
	mv a1, a0
label29:
	beq s9, zero, label47
	addiw a0, a2, 3
	ld s10, 104(sp)
	ble s10, a0, label32
	ld a4, 112(sp)
	sh2add a0, a2, a4
	j label42
.p2align 2
label46:
	addi a0, a0, 16
.p2align 2
label42:
	sh2add a3, a1, s1
	lw a5, 0(a0)
	addiw a2, a2, 4
	addiw a1, a1, 4
	sw a5, 0(a3)
	lw a4, 4(a0)
	sw a4, 4(a3)
	lw a5, 8(a0)
	sw a5, 8(a3)
	lw a4, 12(a0)
	sw a4, 12(a3)
	bgt s2, a2, label46
label32:
	ld s10, 104(sp)
	ble s10, a2, label47
	ld a4, 112(sp)
	sh2add a0, a2, a4
	j label36
label40:
	addi a0, a0, 4
label36:
	sh2add a3, a1, s1
	lw a4, 0(a0)
	addiw a2, a2, 1
	addiw a1, a1, 1
	sw a4, 0(a3)
	ld s10, 104(sp)
	bgt s10, a2, label40
label47:
	ld s10, 104(sp)
	bge s0, s10, label2
	ble s10, s5, label63
	bge s6, s2, label368
	sh2add a0, s0, s1
.p2align 2
label51:
	ld a4, 112(sp)
	lw a2, 0(a0)
	sh2add a1, s0, a4
	addiw s0, s0, 16
	sw a2, 0(a1)
	lw a3, 4(a0)
	sw a3, 4(a1)
	lw a2, 8(a0)
	sw a2, 8(a1)
	lw a4, 12(a0)
	sw a4, 12(a1)
	lw a3, 16(a0)
	sw a3, 16(a1)
	lw a2, 20(a0)
	sw a2, 20(a1)
	lw a3, 24(a0)
	sw a3, 24(a1)
	lw a2, 28(a0)
	sw a2, 28(a1)
	lw a3, 32(a0)
	sw a3, 32(a1)
	lw a4, 36(a0)
	sw a4, 36(a1)
	lw a2, 40(a0)
	sw a2, 40(a1)
	lw a3, 44(a0)
	sw a3, 44(a1)
	lw a2, 48(a0)
	sw a2, 48(a1)
	lw a4, 52(a0)
	sw a4, 52(a1)
	lw a3, 56(a0)
	sw a3, 56(a1)
	lw a2, 60(a0)
	sw a2, 60(a1)
	ble s3, s0, label423
	addi a0, a0, 64
	j label51
label423:
	mv a0, s0
label55:
	ble s2, a0, label63
	sh2add a1, a0, s1
	j label59
label62:
	addi a1, a1, 16
label59:
	ld a4, 112(sp)
	lw a3, 0(a1)
	sh2add a2, a0, a4
	addiw a0, a0, 4
	sw a3, 0(a2)
	lw a4, 4(a1)
	sw a4, 4(a2)
	lw a3, 8(a1)
	sw a3, 8(a2)
	lw a4, 12(a1)
	sw a4, 12(a2)
	bgt s2, a0, label62
	mv s0, a0
label63:
	ld s10, 104(sp)
	ble s10, s0, label2
	sh2add a0, s0, s1
	j label66
label711:
	mv a1, t0
label83:
	beq a4, zero, label497
	addiw a4, a5, 3
	ble s11, a4, label502
	ld a4, 112(sp)
	sh2add a4, a5, a4
	j label91
label95:
	addi a4, a4, 16
label91:
	sh2add t0, a2, s1
	lw t1, 0(a4)
	addiw a5, a5, 4
	addiw a2, a2, 4
	sw t1, 0(t0)
	lw t2, 4(a4)
	sw t2, 4(t0)
	lw t1, 8(a4)
	sw t1, 8(t0)
	lw t2, 12(a4)
	sw t2, 12(t0)
	bgt a0, a5, label95
	mv t0, a2
label96:
	ble s11, a5, label497
	ld a4, 112(sp)
	sh2add a0, a5, a4
label101:
	sh2add a2, t0, s1
	lw a4, 0(a0)
	addiw a5, a5, 1
	addiw t0, t0, 1
	sw a4, 0(a2)
	ble s11, a5, label538
	addi a0, a0, 4
	j label101
label538:
	mv a0, t0
label106:
	beq a1, zero, label124
	addiw a1, a3, 3
	ld s10, 104(sp)
	ble s10, a1, label115
	ld a4, 112(sp)
	sh2add a1, a3, a4
	j label110
label114:
	addi a1, a1, 16
label110:
	sh2add a2, a0, s1
	lw a4, 0(a1)
	addiw a3, a3, 4
	addiw a0, a0, 4
	sw a4, 0(a2)
	lw a5, 4(a1)
	sw a5, 4(a2)
	lw a4, 8(a1)
	sw a4, 8(a2)
	lw a5, 12(a1)
	sw a5, 12(a2)
	bgt s2, a3, label114
label115:
	ld s10, 104(sp)
	ble s10, a3, label124
	ld a4, 112(sp)
	sh2add a1, a3, a4
	j label119
label123:
	addi a1, a1, 4
label119:
	sh2add a2, a0, s1
	lw a4, 0(a1)
	addiw a3, a3, 1
	addiw a0, a0, 1
	sw a4, 0(a2)
	ld s10, 104(sp)
	bgt s10, a3, label123
label124:
	ld s10, 104(sp)
	ble s10, s4, label5
	addiw a1, s4, 3
	ble s10, a1, label592
	addiw a0, s4, 15
	ble s2, a0, label597
	ld a4, 112(sp)
	mv a1, s4
	sh2add a0, s4, a4
	j label136
label139:
	addi a0, a0, 64
label136:
	sh2add a2, a1, s1
	addiw a1, a1, 16
	lw a4, 0(a2)
	sw a4, 0(a0)
	lw a3, 4(a2)
	sw a3, 4(a0)
	lw a4, 8(a2)
	sw a4, 8(a0)
	lw a3, 12(a2)
	sw a3, 12(a0)
	lw a4, 16(a2)
	sw a4, 16(a0)
	lw a3, 20(a2)
	sw a3, 20(a0)
	lw a4, 24(a2)
	sw a4, 24(a0)
	lw a5, 28(a2)
	sw a5, 28(a0)
	lw a3, 32(a2)
	sw a3, 32(a0)
	lw a4, 36(a2)
	sw a4, 36(a0)
	lw a5, 40(a2)
	sw a5, 40(a0)
	lw a3, 44(a2)
	sw a3, 44(a0)
	lw a4, 48(a2)
	sw a4, 48(a0)
	lw a3, 52(a2)
	sw a3, 52(a0)
	lw a4, 56(a2)
	sw a4, 56(a0)
	lw a3, 60(a2)
	sw a3, 60(a0)
	bgt s3, a1, label139
	mv a2, a1
label127:
	ble s2, a2, label601
	ld a4, 112(sp)
	sh2add a0, a2, a4
label131:
	sh2add a1, a2, s1
	addiw a2, a2, 4
	lw a3, 0(a1)
	sw a3, 0(a0)
	lw a4, 4(a1)
	sw a4, 4(a0)
	lw a3, 8(a1)
	sw a3, 8(a0)
	lw a4, 12(a1)
	sw a4, 12(a0)
	ble s2, a2, label620
	addi a0, a0, 16
	j label131
label620:
	mv a0, a2
label140:
	ld s10, 104(sp)
	ble s10, a0, label5
	sh2add a1, a0, s1
label143:
	ld a4, 112(sp)
	lw a3, 0(a1)
	sh2add a2, a0, a4
	addiw a0, a0, 1
	sw a3, 0(a2)
	ld s10, 104(sp)
	ble s10, a0, label5
	addi a1, a1, 4
	j label143
label744:
	mv a2, a4
label172:
	beq t1, zero, label178
	addiw a4, a5, 3
	ble s9, a4, label905
	ld a4, 112(sp)
	sh2add a4, a5, a4
	j label231
label235:
	addi a4, a4, 16
label231:
	sh2add t1, a3, s1
	lw t3, 0(a4)
	addiw a5, a5, 4
	addiw a3, a3, 4
	sw t3, 0(t1)
	lw t2, 4(a4)
	sw t2, 4(t1)
	lw t3, 8(a4)
	sw t3, 8(t1)
	lw t2, 12(a4)
	sw t2, 12(t1)
	bgt a1, a5, label235
	mv t1, a3
label220:
	ble s9, a5, label178
	ld a4, 112(sp)
	sh2add a1, a5, a4
	j label225
label229:
	addi a1, a1, 4
label225:
	sh2add a3, t1, s1
	lw a4, 0(a1)
	addiw a5, a5, 1
	addiw t1, t1, 1
	sw a4, 0(a3)
	bgt s9, a5, label229
	mv a3, t1
label178:
	beq t0, zero, label196
	addiw a1, a2, 3
	ble s4, a1, label187
	ld a4, 112(sp)
	sh2add a1, a2, a4
label182:
	sh2add a4, a3, s1
	lw t0, 0(a1)
	addiw a2, a2, 4
	addiw a3, a3, 4
	sw t0, 0(a4)
	lw a5, 4(a1)
	sw a5, 4(a4)
	lw t0, 8(a1)
	sw t0, 8(a4)
	lw a5, 12(a1)
	sw a5, 12(a4)
	ble s7, a2, label187
	addi a1, a1, 16
	j label182
label187:
	ble s4, a2, label196
	ld a4, 112(sp)
	sh2add a1, a2, a4
label191:
	sh2add a4, a3, s1
	lw a5, 0(a1)
	addiw a2, a2, 1
	addiw a3, a3, 1
	sw a5, 0(a4)
	ble s4, a2, label196
	addi a1, a1, 4
	j label191
label196:
	bge s0, s4, label4
	ble s4, s5, label801
	ble s7, s6, label820
	sh2add a1, s0, s1
	mv a2, s0
	j label207
label210:
	addi a1, a1, 64
label207:
	ld a4, 112(sp)
	lw t0, 0(a1)
	sh2add a3, a2, a4
	addiw a2, a2, 16
	sw t0, 0(a3)
	lw a5, 4(a1)
	sw a5, 4(a3)
	lw a4, 8(a1)
	sw a4, 8(a3)
	lw a5, 12(a1)
	sw a5, 12(a3)
	lw a4, 16(a1)
	sw a4, 16(a3)
	lw a5, 20(a1)
	sw a5, 20(a3)
	lw a4, 24(a1)
	sw a4, 24(a3)
	lw a5, 28(a1)
	sw a5, 28(a3)
	lw a4, 32(a1)
	sw a4, 32(a3)
	lw t0, 36(a1)
	sw t0, 36(a3)
	lw a5, 40(a1)
	sw a5, 40(a3)
	lw a4, 44(a1)
	sw a4, 44(a3)
	lw t0, 48(a1)
	sw t0, 48(a3)
	lw a5, 52(a1)
	sw a5, 52(a3)
	lw a4, 56(a1)
	sw a4, 56(a3)
	lw a5, 60(a1)
	sw a5, 60(a3)
	bgt a0, a2, label210
	mv a1, a2
label211:
	ble s7, a1, label880
	ld a4, 112(sp)
	sh2add a0, a1, a4
	j label215
label218:
	addi a0, a0, 16
label215:
	sh2add a2, a1, s1
	addiw a1, a1, 4
	lw a3, 0(a2)
	sw a3, 0(a0)
	lw a4, 4(a2)
	sw a4, 4(a0)
	lw a3, 8(a2)
	sw a3, 8(a0)
	lw a4, 12(a2)
	sw a4, 12(a0)
	bgt s7, a1, label218
	mv a0, a1
label198:
	ble s4, a0, label4
	sh2add a1, a0, s1
	j label201
label704:
	sw t1, 0(a1)
	addiw a3, a3, 1
	slt a4, a5, s11
	addiw a2, a2, 1
	ld s10, 104(sp)
	slt t0, a3, s10
	and t1, a4, t0
	bne t1, zero, label156
	j label711
label497:
	mv a0, a2
	j label106
label880:
	mv a0, a2
	j label198
label820:
	mv a1, s0
	mv a2, zero
	j label211
label801:
	mv a0, s0
	j label198
label905:
	mv t1, a3
	mv a3, zero
	j label220
label601:
	mv a0, a1
	j label140
label597:
	mv a2, s4
	mv a1, zero
	j label127
label266:
	mv a4, s8
	mv a3, s0
	mv a2, s4
	mv a1, s0
	j label6
label368:
	mv a0, s0
	mv s0, zero
	j label55
label494:
	mv a5, s4
	mv a3, s11
	mv a2, s4
	j label83
label724:
	mv a5, s0
	mv a2, s9
	mv a3, s0
	j label172
label592:
	mv a0, s4
	j label140
label502:
	mv t0, a2
	mv a2, zero
	j label96
label274:
	mv a0, a1
	mv a1, zero
	j label13
.p2align 2
.globl main
main:
	addi sp, sp, -16
pcrel1092:
	auipc a1, %pcrel_hi(buf)
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel1092)
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
