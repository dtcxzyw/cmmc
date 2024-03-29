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
	bgt a1, a0, label2
label235:
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
label2:
	ld s10, 104(sp)
	addw a2, s0, s10
	mv a1, a2
	bge a2, zero, label1004
	addiw a1, a2, 1
label1004:
	sraiw s4, a1, 1
	addiw s5, s0, 3
	addiw s6, s0, 15
pcrel1088:
	auipc a1, %pcrel_hi(buf)
	addiw s7, s4, -3
	slt s8, s0, s4
	addi a4, a1, %pcrel_lo(pcrel1088)
	addi s1, a4, 400
	sd a4, 112(sp)
	ld s10, 104(sp)
	addiw s3, s10, -18
	addiw s2, s10, -3
	bge a0, s4, label3
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
	sh2add t4, s9, a4
	sh2add t3, s0, a4
	lw t1, 0(t3)
	lw t2, 0(t4)
	blt t1, t2, label234
	sw t2, 0(a2)
	addiw a4, s9, 1
	slt t1, s0, s9
	slt t0, a4, s4
	addiw a3, s0, 1
	and t2, t1, t0
	bne t2, zero, label233
	j label940
label3:
	addiw a0, s4, 1
	ld s10, 104(sp)
	slt s9, s4, s10
	ble s10, a0, label81
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
	beq a2, zero, label271
	sh2add a1, s4, s1
	mv a5, s4
	mv a3, s11
	mv a2, s4
	ld a4, 112(sp)
	sh2add t3, s11, a4
	sh2add t2, s4, a4
	lw t0, 0(t2)
	lw t1, 0(t3)
	bge t0, t1, label283
.p2align 2
label16:
	sw t0, 0(a1)
	addiw a5, a5, 1
	addiw a2, a2, 1
	slt a4, a5, s11
	ld s10, 104(sp)
	slt t0, a3, s10
	and t1, a4, t0
	beq t1, zero, label290
.p2align 2
label14:
	addi a1, a1, 4
	ld a4, 112(sp)
	sh2add t3, a3, a4
	sh2add t2, a5, a4
	lw t0, 0(t2)
	lw t1, 0(t3)
	blt t0, t1, label16
	sw t1, 0(a1)
	addiw a3, a3, 1
	slt a4, a5, s11
	addiw a2, a2, 1
	ld s10, 104(sp)
	slt t0, a3, s10
	and t1, a4, t0
	bne t1, zero, label14
	j label290
label81:
	and a0, s8, s9
	beq a0, zero, label495
	sh2add a0, s0, s1
	mv a3, s0
	mv a2, s4
	mv a1, s0
	ld a4, 112(sp)
	sh2add t1, s4, a4
	sh2add t2, s0, a4
	lw a5, 0(t2)
	lw t0, 0(t1)
	bge a5, t0, label704
.p2align 2
label152:
	sw a5, 0(a0)
	addiw a3, a3, 1
	addiw a1, a1, 1
	slt a4, a3, s4
	ld s10, 104(sp)
	slt s9, a2, s10
	and a5, a4, s9
	beq a5, zero, label82
.p2align 2
label157:
	addi a0, a0, 4
	ld a4, 112(sp)
	sh2add t1, a2, a4
	sh2add t2, a3, a4
	lw a5, 0(t2)
	lw t0, 0(t1)
	blt a5, t0, label152
	sw t0, 0(a0)
	addiw a2, a2, 1
	slt a4, a3, s4
	addiw a1, a1, 1
	ld s10, 104(sp)
	slt s9, a2, s10
	and a5, a4, s9
	bne a5, zero, label157
	j label82
.p2align 2
label234:
	sw t1, 0(a2)
	addiw a5, a5, 1
	mv a4, t0
	addiw a3, a3, 1
	slt t1, a5, s9
	slt t0, t0, s4
	and t2, t1, t0
	beq t2, zero, label940
.p2align 2
label233:
	addi a2, a2, 4
	mv t0, a4
	ld a4, 112(sp)
	sh2add t4, t0, a4
	sh2add t3, a5, a4
	lw t1, 0(t3)
	lw t2, 0(t4)
	blt t1, t2, label234
	sw t2, 0(a2)
	addiw a4, t0, 1
	slt t1, a5, s9
	addiw a3, a3, 1
	slt t0, a4, s4
	and t2, t1, t0
	bne t2, zero, label233
	j label940
label82:
	beq a4, zero, label105
	addiw a4, a3, 3
	ble s4, a4, label503
	ld a4, 112(sp)
	sh2add a0, a3, a4
	j label100
.p2align 2
label104:
	addi a0, a0, 16
.p2align 2
label100:
	sh2add a4, a1, s1
	lw t0, 0(a0)
	addiw a3, a3, 4
	addiw a1, a1, 4
	sw t0, 0(a4)
	lw a5, 4(a0)
	sw a5, 4(a4)
	lw t0, 8(a0)
	sw t0, 8(a4)
	lw a5, 12(a0)
	sw a5, 12(a4)
	bgt s7, a3, label104
	mv a0, a1
label89:
	ble s4, a3, label105
	ld a4, 112(sp)
	sh2add a1, a3, a4
	j label94
label98:
	addi a1, a1, 4
label94:
	sh2add a4, a0, s1
	lw a5, 0(a1)
	addiw a3, a3, 1
	addiw a0, a0, 1
	sw a5, 0(a4)
	bgt s4, a3, label98
	mv a1, a0
label105:
	beq s9, zero, label107
	addiw a0, a2, 3
	ld s10, 104(sp)
	ble s10, a0, label131
	sh2add a0, a1, s1
	j label141
.p2align 2
label145:
	addi a0, a0, 16
.p2align 2
label141:
	ld a4, 112(sp)
	addiw a1, a1, 4
	sh2add a3, a2, a4
	addiw a2, a2, 4
	lw a5, 0(a3)
	sw a5, 0(a0)
	lw a4, 4(a3)
	sw a4, 4(a0)
	lw a5, 8(a3)
	sw a5, 8(a0)
	lw a4, 12(a3)
	sw a4, 12(a0)
	bgt s2, a2, label145
label131:
	ld s10, 104(sp)
	ble s10, a2, label107
	ld a4, 112(sp)
	sh2add a0, a2, a4
	j label135
label139:
	addi a0, a0, 4
label135:
	sh2add a3, a1, s1
	lw a4, 0(a0)
	addiw a2, a2, 1
	addiw a1, a1, 1
	sw a4, 0(a3)
	ld s10, 104(sp)
	bgt s10, a2, label139
label107:
	ld s10, 104(sp)
	bge s0, s10, label235
	ble s10, s5, label123
	bge s6, s2, label555
	sh2add a0, s0, s1
.p2align 2
label111:
	ld a4, 112(sp)
	lw a3, 0(a0)
	sh2add a1, s0, a4
	addiw s0, s0, 16
	sw a3, 0(a1)
	lw a2, 4(a0)
	sw a2, 4(a1)
	lw a4, 8(a0)
	sw a4, 8(a1)
	lw a3, 12(a0)
	sw a3, 12(a1)
	lw a2, 16(a0)
	sw a2, 16(a1)
	lw a3, 20(a0)
	sw a3, 20(a1)
	lw a2, 24(a0)
	sw a2, 24(a1)
	lw a4, 28(a0)
	sw a4, 28(a1)
	lw a3, 32(a0)
	sw a3, 32(a1)
	lw a2, 36(a0)
	sw a2, 36(a1)
	lw a4, 40(a0)
	sw a4, 40(a1)
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
	ble s3, s0, label610
	addi a0, a0, 64
	j label111
label610:
	mv a0, s0
label115:
	ble s2, a0, label123
	sh2add a1, a0, s1
	j label119
label122:
	addi a1, a1, 16
label119:
	ld a4, 112(sp)
	lw a5, 0(a1)
	sh2add a2, a0, a4
	addiw a0, a0, 4
	sw a5, 0(a2)
	lw a3, 4(a1)
	sw a3, 4(a2)
	lw a4, 8(a1)
	sw a4, 8(a2)
	lw a3, 12(a1)
	sw a3, 12(a2)
	bgt s2, a0, label122
	mv s0, a0
label123:
	ld s10, 104(sp)
	ble s10, s0, label235
	sh2add a0, s0, s1
	j label126
label129:
	addi a0, a0, 4
label126:
	ld a4, 112(sp)
	lw a2, 0(a0)
	sh2add a1, s0, a4
	addiw s0, s0, 1
	sw a2, 0(a1)
	ld s10, 104(sp)
	bgt s10, s0, label129
	j label235
label290:
	mv a1, t0
	mv t0, a5
label17:
	beq a4, zero, label296
	addiw a4, t0, 3
	ble s11, a4, label301
	sh2add a5, a2, s1
	j label25
label29:
	addi a5, a5, 16
label25:
	ld a4, 112(sp)
	addiw a2, a2, 4
	sh2add t1, t0, a4
	addiw t0, t0, 4
	lw t2, 0(t1)
	sw t2, 0(a5)
	lw t3, 4(t1)
	sw t3, 4(a5)
	lw a4, 8(t1)
	sw a4, 8(a5)
	lw t2, 12(t1)
	sw t2, 12(a5)
	bgt a0, t0, label29
	mv a5, a2
label30:
	ble s11, t0, label296
	ld a4, 112(sp)
	sh2add a0, t0, a4
	j label35
label39:
	addi a0, a0, 4
label35:
	sh2add a2, a5, s1
	lw a4, 0(a0)
	addiw t0, t0, 1
	addiw a5, a5, 1
	sw a4, 0(a2)
	bgt s11, t0, label39
	mv a0, a5
label40:
	beq a1, zero, label58
	addiw a1, a3, 3
	ld s10, 104(sp)
	ble s10, a1, label49
	sh2add a1, a0, s1
	j label44
label48:
	addi a1, a1, 16
label44:
	ld a4, 112(sp)
	addiw a0, a0, 4
	sh2add a2, a3, a4
	addiw a3, a3, 4
	lw a5, 0(a2)
	sw a5, 0(a1)
	lw a4, 4(a2)
	sw a4, 4(a1)
	lw a5, 8(a2)
	sw a5, 8(a1)
	lw a4, 12(a2)
	sw a4, 12(a1)
	bgt s2, a3, label48
label49:
	ld s10, 104(sp)
	ble s10, a3, label58
	ld a4, 112(sp)
	sh2add a1, a3, a4
label53:
	sh2add a2, a0, s1
	lw a4, 0(a1)
	addiw a3, a3, 1
	addiw a0, a0, 1
	sw a4, 0(a2)
	ld s10, 104(sp)
	ble s10, a3, label58
	addi a1, a1, 4
	j label53
label58:
	ld s10, 104(sp)
	ble s10, s4, label81
	addiw a1, s4, 3
	ble s10, a1, label391
	addiw a3, s4, 15
	ble s2, a3, label411
	sh2add a0, s4, s1
	mv a1, s4
	j label77
label80:
	addi a0, a0, 64
label77:
	ld a4, 112(sp)
	lw a5, 0(a0)
	sh2add a2, a1, a4
	addiw a1, a1, 16
	sw a5, 0(a2)
	lw a3, 4(a0)
	sw a3, 4(a2)
	lw a4, 8(a0)
	sw a4, 8(a2)
	lw a3, 12(a0)
	sw a3, 12(a2)
	lw a4, 16(a0)
	sw a4, 16(a2)
	lw a3, 20(a0)
	sw a3, 20(a2)
	lw a4, 24(a0)
	sw a4, 24(a2)
	lw a3, 28(a0)
	sw a3, 28(a2)
	lw a4, 32(a0)
	sw a4, 32(a2)
	lw a5, 36(a0)
	sw a5, 36(a2)
	lw a3, 40(a0)
	sw a3, 40(a2)
	lw a4, 44(a0)
	sw a4, 44(a2)
	lw a3, 48(a0)
	sw a3, 48(a2)
	lw a4, 52(a0)
	sw a4, 52(a2)
	lw a3, 56(a0)
	sw a3, 56(a2)
	lw a4, 60(a0)
	sw a4, 60(a2)
	bgt s3, a1, label80
	mv a2, a1
label68:
	ble s2, a2, label415
	sh2add a0, a2, s1
label72:
	ld a4, 112(sp)
	lw a5, 0(a0)
	sh2add a1, a2, a4
	addiw a2, a2, 4
	sw a5, 0(a1)
	lw a3, 4(a0)
	sw a3, 4(a1)
	lw a4, 8(a0)
	sw a4, 8(a1)
	lw a3, 12(a0)
	sw a3, 12(a1)
	ble s2, a2, label434
	addi a0, a0, 16
	j label72
label434:
	mv a0, a2
label60:
	ld s10, 104(sp)
	ble s10, a0, label81
	sh2add a1, a0, s1
label63:
	ld a4, 112(sp)
	lw a3, 0(a1)
	sh2add a2, a0, a4
	addiw a0, a0, 1
	sw a3, 0(a2)
	ld s10, 104(sp)
	ble s10, a0, label81
	addi a1, a1, 4
	j label63
label940:
	mv a2, a4
label159:
	beq t1, zero, label182
	addiw a4, a5, 3
	ble s9, a4, label732
	ld a4, 112(sp)
	sh2add a4, a5, a4
	j label177
label181:
	addi a4, a4, 16
label177:
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
	bgt a1, a5, label181
	mv t1, a3
label166:
	ble s9, a5, label182
	ld a4, 112(sp)
	sh2add a1, a5, a4
label171:
	sh2add a3, t1, s1
	lw a4, 0(a1)
	addiw a5, a5, 1
	addiw t1, t1, 1
	sw a4, 0(a3)
	ble s9, a5, label747
	addi a1, a1, 4
	j label171
label747:
	mv a3, t1
label182:
	beq t0, zero, label200
	addiw a1, a2, 3
	ble s4, a1, label191
	ld a4, 112(sp)
	sh2add a1, a2, a4
label186:
	sh2add a4, a3, s1
	lw a5, 0(a1)
	addiw a2, a2, 4
	addiw a3, a3, 4
	sw a5, 0(a4)
	lw t0, 4(a1)
	sw t0, 4(a4)
	lw a5, 8(a1)
	sw a5, 8(a4)
	lw t0, 12(a1)
	sw t0, 12(a4)
	ble s7, a2, label191
	addi a1, a1, 16
	j label186
label191:
	ble s4, a2, label200
	ld a4, 112(sp)
	sh2add a1, a2, a4
	j label195
label199:
	addi a1, a1, 4
label195:
	sh2add a4, a3, s1
	lw a5, 0(a1)
	addiw a2, a2, 1
	addiw a3, a3, 1
	sw a5, 0(a4)
	bgt s4, a2, label199
label200:
	bge s0, s4, label3
	ble s4, s5, label821
	ble s7, s6, label840
	sh2add a1, s0, s1
	mv a2, s0
label211:
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
	lw t0, 28(a1)
	sw t0, 28(a3)
	lw a5, 32(a1)
	sw a5, 32(a3)
	lw a4, 36(a1)
	sw a4, 36(a3)
	lw a5, 40(a1)
	sw a5, 40(a3)
	lw a4, 44(a1)
	sw a4, 44(a3)
	lw a5, 48(a1)
	sw a5, 48(a3)
	lw a4, 52(a1)
	sw a4, 52(a3)
	lw a5, 56(a1)
	sw a5, 56(a3)
	lw a4, 60(a1)
	sw a4, 60(a3)
	ble a0, a2, label895
	addi a1, a1, 64
	j label211
label895:
	mv a1, a2
label215:
	ble s7, a1, label900
	sh2add a0, a1, s1
label219:
	ld a4, 112(sp)
	lw a3, 0(a0)
	sh2add a2, a1, a4
	addiw a1, a1, 4
	sw a3, 0(a2)
	lw a4, 4(a0)
	sw a4, 4(a2)
	lw a3, 8(a0)
	sw a3, 8(a2)
	lw a4, 12(a0)
	sw a4, 12(a2)
	ble s7, a1, label919
	addi a0, a0, 16
	j label219
label919:
	mv a0, a1
label202:
	ble s4, a0, label3
	sh2add a1, a0, s1
label205:
	ld a4, 112(sp)
	lw a3, 0(a1)
	sh2add a2, a0, a4
	addiw a0, a0, 1
	sw a3, 0(a2)
	ble s4, a0, label3
	addi a1, a1, 4
	j label205
label283:
	sw t1, 0(a1)
	addiw a3, a3, 1
	slt a4, a5, s11
	addiw a2, a2, 1
	ld s10, 104(sp)
	slt t0, a3, s10
	and t1, a4, t0
	bne t1, zero, label14
	j label290
label296:
	mv a0, a2
	j label40
label704:
	sw t0, 0(a0)
	addiw a2, a2, 1
	slt a4, a3, s4
	addiw a1, a1, 1
	ld s10, 104(sp)
	slt s9, a2, s10
	and a5, a4, s9
	bne a5, zero, label157
	j label82
label900:
	mv a0, a2
	j label202
label840:
	mv a1, s0
	mv a2, zero
	j label215
label821:
	mv a0, s0
	j label202
label732:
	mv t1, a3
	mv a3, zero
	j label166
label411:
	mv a2, s4
	mv a1, zero
	j label68
label391:
	mv a0, s4
	j label60
label555:
	mv a0, s0
	mv s0, zero
	j label115
label495:
	mv a4, s8
	mv a3, s0
	mv a2, s4
	mv a1, s0
	j label82
label415:
	mv a0, a1
	j label60
label724:
	mv a5, s0
	mv a2, s9
	mv a3, s0
	j label159
label503:
	mv a0, a1
	mv a1, zero
	j label89
label301:
	mv a5, a2
	mv a2, zero
	j label30
label271:
	mv t0, s4
	mv a3, s11
	mv a2, s4
	j label17
.p2align 2
.globl main
main:
	addi sp, sp, -16
pcrel1096:
	auipc a1, %pcrel_hi(buf)
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel1096)
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
