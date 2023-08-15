.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
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
	sd s3, 72(sp)
	sd s2, 80(sp)
	sd s9, 88(sp)
	sd s11, 96(sp)
	sd a1, 104(sp)
	ble a1, a0, label235
	addiw s5, s0, 3
	addiw s6, s0, 15
	addiw s2, a1, -3
	addiw s3, a1, -18
	addw a1, s0, a1
	srliw a3, a1, 31
	add a2, a1, a3
pcrel1088:
	auipc a1, %pcrel_hi(buf)
	sraiw s4, a2, 1
	addi a4, a1, %pcrel_lo(pcrel1088)
	addi s7, s4, -3
	slt s8, s0, s4
	addi s1, a4, 400
	sd a4, 112(sp)
	blt a0, s4, label158
label3:
	addiw a0, s4, 1
	ld s10, 104(sp)
	slt s9, s4, s10
	ble s10, a0, label4
	mv a0, s4
	addw a1, s10, s4
	srliw a2, a1, 31
	add a3, a1, a2
	sraiw s11, a3, 1
	mv a1, s11
	jal merge_sort
	mv a0, s11
	mv a1, s10
	jal merge_sort
	addi a0, s11, -3
	slt a1, s11, s10
	slt a4, s4, s11
	and a2, a4, a1
	beq a2, zero, label494
	sh2add a1, s4, s1
	mv a5, s4
	mv a3, s11
	mv a2, s4
	ld a4, 112(sp)
	sh2add t2, s11, a4
	sh2add t3, s4, a4
	lw t0, 0(t3)
	lw t1, 0(t2)
	blt t0, t1, label152
	sw t1, 0(a1)
	addiw a3, s11, 1
	slt a4, s4, s11
	addiw a2, s4, 1
	ld s10, 104(sp)
	slt t0, a3, s10
	and t1, a4, t0
	bne t1, zero, label156
	j label1028
label4:
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
	bge a5, t0, label11
.p2align 2
label12:
	sw a5, 0(a0)
	addiw a3, a3, 1
	slt a4, a3, s4
	addiw a1, a1, 1
	ld s10, 104(sp)
	slt s9, a2, s10
	and a5, a4, s9
	beq a5, zero, label17
.p2align 2
label16:
	addi a0, a0, 4
	ld a4, 112(sp)
	sh2add t2, a2, a4
	sh2add t1, a3, a4
	lw a5, 0(t1)
	lw t0, 0(t2)
	blt a5, t0, label12
	sw t0, 0(a0)
	addiw a2, a2, 1
	slt a4, a3, s4
	addiw a1, a1, 1
	ld s10, 104(sp)
	slt s9, a2, s10
	and a5, a4, s9
	bne a5, zero, label16
	j label17
.p2align 2
label152:
	sw t0, 0(a1)
	addiw a5, a5, 1
	slt a4, a5, s11
	addiw a2, a2, 1
	ld s10, 104(sp)
	slt t0, a3, s10
	and t1, a4, t0
	beq t1, zero, label1028
.p2align 2
label156:
	addi a1, a1, 4
	ld a4, 112(sp)
	sh2add t2, a3, a4
	sh2add t3, a5, a4
	lw t0, 0(t3)
	lw t1, 0(t2)
	blt t0, t1, label152
	sw t1, 0(a1)
	addiw a3, a3, 1
	slt a4, a5, s11
	addiw a2, a2, 1
	ld s10, 104(sp)
	slt t0, a3, s10
	and t1, a4, t0
	bne t1, zero, label156
	j label1028
label80:
	addi a0, a0, 4
label77:
	ld a4, 112(sp)
	lw a2, 0(a0)
	sh2add a1, s0, a4
	addiw s0, s0, 1
	sw a2, 0(a1)
	ld s10, 104(sp)
	bgt s10, s0, label80
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
	ld s3, 72(sp)
	ld s2, 80(sp)
	ld s9, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 120
	ret
label17:
	beq a4, zero, label40
	addiw a4, a3, 3
	ble s4, a4, label296
	sh2add a0, a1, s1
	j label35
.p2align 2
label39:
	addi a0, a0, 16
.p2align 2
label35:
	ld a4, 112(sp)
	addiw a1, a1, 4
	sh2add a5, a3, a4
	addiw a3, a3, 4
	lw t0, 0(a5)
	sw t0, 0(a0)
	lw a4, 4(a5)
	sw a4, 4(a0)
	lw t0, 8(a5)
	sw t0, 8(a0)
	lw a4, 12(a5)
	sw a4, 12(a0)
	bgt s7, a3, label39
	mv a0, a1
label24:
	ble s4, a3, label40
	ld a4, 112(sp)
	sh2add a1, a3, a4
label29:
	sh2add a4, a0, s1
	lw a5, 0(a1)
	addiw a3, a3, 1
	addiw a0, a0, 1
	sw a5, 0(a4)
	ble s4, a3, label311
	addi a1, a1, 4
	j label29
label311:
	mv a1, a0
label40:
	beq s9, zero, label58
	addiw a0, a2, 3
	ld s10, 104(sp)
	ble s10, a0, label43
	ld a4, 112(sp)
	sh2add a0, a2, a4
.p2align 2
label53:
	sh2add a3, a1, s1
	lw a4, 0(a0)
	addiw a2, a2, 4
	addiw a1, a1, 4
	sw a4, 0(a3)
	lw t0, 4(a0)
	sw t0, 4(a3)
	lw a5, 8(a0)
	sw a5, 8(a3)
	lw a4, 12(a0)
	sw a4, 12(a3)
	ble s2, a2, label43
	addi a0, a0, 16
	j label53
label43:
	ld s10, 104(sp)
	ble s10, a2, label58
	ld a4, 112(sp)
	sh2add a0, a2, a4
	j label47
label51:
	addi a0, a0, 4
label47:
	sh2add a3, a1, s1
	lw a4, 0(a0)
	addiw a2, a2, 1
	addiw a1, a1, 1
	sw a4, 0(a3)
	ld s10, 104(sp)
	bgt s10, a2, label51
label58:
	ld s10, 104(sp)
	bge s0, s10, label235
	ble s10, s5, label74
	bge s6, s2, label390
	sh2add a0, s0, s1
.p2align 2
label62:
	ld a4, 112(sp)
	lw a2, 0(a0)
	sh2add a1, s0, a4
	addiw s0, s0, 16
	sw a2, 0(a1)
	lw a3, 4(a0)
	sw a3, 4(a1)
	lw a4, 8(a0)
	sw a4, 8(a1)
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
	lw a4, 52(a0)
	sw a4, 52(a1)
	lw a3, 56(a0)
	sw a3, 56(a1)
	lw a2, 60(a0)
	sw a2, 60(a1)
	ble s3, s0, label445
	addi a0, a0, 64
	j label62
label445:
	mv a0, s0
label66:
	ble s2, a0, label74
	sh2add a1, a0, s1
	j label70
label73:
	addi a1, a1, 16
label70:
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
	bgt s2, a0, label73
	mv s0, a0
label74:
	ld s10, 104(sp)
	ble s10, s0, label235
	sh2add a0, s0, s1
	j label77
label158:
	addw a1, s0, s4
	mv a0, s0
	srliw a2, a1, 31
	add a3, a1, a2
	sraiw s9, a3, 1
	mv a1, s9
	jal merge_sort
	mv a0, s9
	mv a1, s4
	jal merge_sort
	addiw a0, s4, -18
	addi a1, s9, -3
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
label940:
	mv a2, a4
label159:
	beq t1, zero, label165
	addiw a4, a5, 3
	ble s9, a4, label883
	ld a4, 112(sp)
	sh2add a4, a5, a4
label218:
	sh2add t1, a3, s1
	lw t2, 0(a4)
	addiw a5, a5, 4
	addiw a3, a3, 4
	sw t2, 0(t1)
	lw t4, 4(a4)
	sw t4, 4(t1)
	lw t3, 8(a4)
	sw t3, 8(t1)
	lw t2, 12(a4)
	sw t2, 12(t1)
	ble a1, a5, label919
	addi a4, a4, 16
	j label218
label919:
	mv t1, a3
label207:
	ble s9, a5, label165
	ld a4, 112(sp)
	sh2add a1, a5, a4
label212:
	sh2add a3, t1, s1
	lw a4, 0(a1)
	addiw a5, a5, 1
	addiw t1, t1, 1
	sw a4, 0(a3)
	ble s9, a5, label898
	addi a1, a1, 4
	j label212
label898:
	mv a3, t1
label165:
	beq t0, zero, label167
	addiw a1, a2, 3
	ble s4, a1, label197
	ld a4, 112(sp)
	sh2add a1, a2, a4
label192:
	sh2add a4, a3, s1
	lw a5, 0(a1)
	addiw a2, a2, 4
	addiw a3, a3, 4
	sw a5, 0(a4)
	lw t1, 4(a1)
	sw t1, 4(a4)
	lw t0, 8(a1)
	sw t0, 8(a4)
	lw a5, 12(a1)
	sw a5, 12(a4)
	ble s7, a2, label197
	addi a1, a1, 16
	j label192
label197:
	ble s4, a2, label167
	ld a4, 112(sp)
	sh2add a1, a2, a4
label201:
	sh2add a4, a3, s1
	lw a5, 0(a1)
	addiw a2, a2, 1
	addiw a3, a3, 1
	sw a5, 0(a4)
	ble s4, a2, label167
	addi a1, a1, 4
	j label201
label167:
	bge s0, s4, label3
	ble s4, s5, label737
	ble s7, s6, label756
	sh2add a1, s0, s1
	mv a2, s0
label186:
	ld a4, 112(sp)
	lw a5, 0(a1)
	sh2add a3, a2, a4
	addiw a2, a2, 16
	sw a5, 0(a3)
	lw a4, 4(a1)
	sw a4, 4(a3)
	lw a5, 8(a1)
	sw a5, 8(a3)
	lw a4, 12(a1)
	sw a4, 12(a3)
	lw a5, 16(a1)
	sw a5, 16(a3)
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
	lw t0, 40(a1)
	sw t0, 40(a3)
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
	ble a0, a2, label835
	addi a1, a1, 64
	j label186
label11:
	sw t0, 0(a0)
	addiw a2, a2, 1
	slt a4, a3, s4
	addiw a1, a1, 1
	ld s10, 104(sp)
	slt s9, a2, s10
	and a5, a4, s9
	bne a5, zero, label16
	j label17
label1028:
	mv a1, t0
label82:
	beq a4, zero, label497
	addiw a4, a5, 3
	ble s11, a4, label655
	ld a4, 112(sp)
	sh2add a4, a5, a4
	j label141
label145:
	addi a4, a4, 16
label141:
	sh2add t0, a2, s1
	lw t2, 0(a4)
	addiw a5, a5, 4
	addiw a2, a2, 4
	sw t2, 0(t0)
	lw t1, 4(a4)
	sw t1, 4(t0)
	lw t2, 8(a4)
	sw t2, 8(t0)
	lw t1, 12(a4)
	sw t1, 12(t0)
	bgt a0, a5, label145
	mv t0, a2
label130:
	ble s11, a5, label497
	ld a4, 112(sp)
	sh2add a0, a5, a4
label135:
	sh2add a2, t0, s1
	lw a4, 0(a0)
	addiw a5, a5, 1
	addiw t0, t0, 1
	sw a4, 0(a2)
	ble s11, a5, label670
	addi a0, a0, 4
	j label135
label670:
	mv a0, t0
label88:
	beq a1, zero, label90
	addiw a1, a3, 3
	ld s10, 104(sp)
	ble s10, a1, label120
	ld a4, 112(sp)
	sh2add a1, a3, a4
label115:
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
	ble s2, a3, label120
	addi a1, a1, 16
	j label115
label120:
	ld s10, 104(sp)
	ble s10, a3, label90
	ld a4, 112(sp)
	sh2add a1, a3, a4
label124:
	sh2add a2, a0, s1
	lw a4, 0(a1)
	addiw a3, a3, 1
	addiw a0, a0, 1
	sw a4, 0(a2)
	ld s10, 104(sp)
	ble s10, a3, label90
	addi a1, a1, 4
	j label124
label90:
	ld s10, 104(sp)
	ble s10, s4, label4
	addiw a1, s4, 3
	ble s10, a1, label508
	addiw a3, s4, 15
	ble s2, a3, label528
	ld a4, 112(sp)
	mv a1, s4
	sh2add a0, s4, a4
	j label101
label104:
	addi a0, a0, 64
label101:
	sh2add a2, a1, s1
	addiw a1, a1, 16
	lw a4, 0(a2)
	sw a4, 0(a0)
	lw a3, 4(a2)
	sw a3, 4(a0)
	lw a5, 8(a2)
	sw a5, 8(a0)
	lw a4, 12(a2)
	sw a4, 12(a0)
	lw a3, 16(a2)
	sw a3, 16(a0)
	lw a4, 20(a2)
	sw a4, 20(a0)
	lw a3, 24(a2)
	sw a3, 24(a0)
	lw a4, 28(a2)
	sw a4, 28(a0)
	lw a3, 32(a2)
	sw a3, 32(a0)
	lw a4, 36(a2)
	sw a4, 36(a0)
	lw a3, 40(a2)
	sw a3, 40(a0)
	lw a5, 44(a2)
	sw a5, 44(a0)
	lw a4, 48(a2)
	sw a4, 48(a0)
	lw a3, 52(a2)
	sw a3, 52(a0)
	lw a4, 56(a2)
	sw a4, 56(a0)
	lw a3, 60(a2)
	sw a3, 60(a0)
	bgt s3, a1, label104
	mv a2, a1
label105:
	ble s2, a2, label588
	ld a4, 112(sp)
	sh2add a0, a2, a4
label109:
	sh2add a1, a2, s1
	addiw a2, a2, 4
	lw a4, 0(a1)
	sw a4, 0(a0)
	lw a3, 4(a1)
	sw a3, 4(a0)
	lw a4, 8(a1)
	sw a4, 8(a0)
	lw a3, 12(a1)
	sw a3, 12(a0)
	ble s2, a2, label607
	addi a0, a0, 16
	j label109
label607:
	mv a0, a2
label92:
	ld s10, 104(sp)
	ble s10, a0, label4
	sh2add a1, a0, s1
label95:
	ld a4, 112(sp)
	lw a3, 0(a1)
	sh2add a2, a0, a4
	addiw a0, a0, 1
	sw a3, 0(a2)
	ld s10, 104(sp)
	ble s10, a0, label4
	addi a1, a1, 4
	j label95
label835:
	mv a1, a2
label177:
	ble s7, a1, label760
	sh2add a0, a1, s1
	j label181
label184:
	addi a0, a0, 16
label181:
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
	bgt s7, a1, label184
	mv a0, a1
label169:
	ble s4, a0, label3
	sh2add a1, a0, s1
label172:
	ld a4, 112(sp)
	lw a3, 0(a1)
	sh2add a2, a0, a4
	addiw a0, a0, 1
	sw a3, 0(a2)
	ble s4, a0, label3
	addi a1, a1, 4
	j label172
label497:
	mv a0, a2
	j label88
label756:
	mv a1, s0
	mv a2, zero
	j label177
label296:
	mv a0, a1
	mv a1, zero
	j label24
label508:
	mv a0, s4
	j label92
label760:
	mv a0, a2
	j label169
label588:
	mv a0, a1
	j label92
label528:
	mv a2, s4
	mv a1, zero
	j label105
label655:
	mv t0, a2
	mv a2, zero
	j label130
label737:
	mv a0, s0
	j label169
label494:
	mv a5, s4
	mv a3, s11
	mv a2, s4
	j label82
label266:
	mv a4, s8
	mv a3, s0
	mv a2, s4
	mv a1, s0
	j label17
label390:
	mv a0, s0
	mv s0, zero
	j label66
label883:
	mv t1, a3
	mv a3, zero
	j label207
label724:
	mv a5, s0
	mv a2, s9
	mv a3, s0
	j label159
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
