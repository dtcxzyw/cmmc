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
	ble a1, a0, label232
	addiw s5, s0, 3
	addiw s6, s0, 15
	addiw s2, a1, -3
	addiw s3, a1, -18
	addw a1, s0, a1
	srliw a2, a1, 31
	add a3, a1, a2
pcrel1082:
	auipc a1, %pcrel_hi(buf)
	sraiw s4, a3, 1
	addi a4, a1, %pcrel_lo(pcrel1082)
	addi s7, s4, -3
	slt s8, s0, s4
	addi s1, a4, 400
	sd a4, 112(sp)
	bge a0, s4, label3
	addw a2, s0, s4
	mv a0, s0
	srliw a1, a2, 31
	add a3, a2, a1
	sraiw s9, a3, 1
	mv a1, s9
	jal merge_sort
	mv a0, s9
	mv a1, s4
	jal merge_sort
	addiw a0, s4, -18
	addi a1, s9, -3
	slt t0, s0, s9
	slt a3, s9, s4
	and a2, a3, t0
	beq a2, zero, label723
	sh2add a2, s0, s1
	mv a5, s0
	mv t0, s9
	mv a3, s0
	ld a4, 112(sp)
	sh2add t3, s9, a4
	sh2add t4, s0, a4
	lw t1, 0(t4)
	lw t2, 0(t3)
	bge t1, t2, label163
.p2align 2
label168:
	sw t1, 0(a2)
	addiw a5, a5, 1
	mv a4, t0
	addiw a3, a3, 1
	slt t2, t0, s4
	slt t0, a5, s9
	and t1, t0, t2
	beq t1, zero, label743
.p2align 2
label167:
	addi a2, a2, 4
	mv t0, a4
	ld a4, 112(sp)
	sh2add t3, t0, a4
	sh2add t4, a5, a4
	lw t1, 0(t4)
	lw t2, 0(t3)
	blt t1, t2, label168
	sw t2, 0(a2)
	addiw a4, t0, 1
	addiw a3, a3, 1
	slt t2, a4, s4
	slt t0, a5, s9
	and t1, t0, t2
	bne t1, zero, label167
	j label743
label125:
	addi a0, a0, 4
label122:
	ld a4, 112(sp)
	lw a2, 0(a0)
	sh2add a1, s0, a4
	addiw s0, s0, 1
	sw a2, 0(a1)
	ld s10, 104(sp)
	bgt s10, s0, label125
label232:
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
label3:
	addiw a0, s4, 1
	ld s10, 104(sp)
	slt s9, s4, s10
	bgt s10, a0, label4
label80:
	and a1, s8, s9
	beq a1, zero, label493
	sh2add a0, s0, s1
	mv a3, s0
	mv a2, s4
	mv a1, s0
	ld a4, 112(sp)
	sh2add t1, s4, a4
	sh2add t2, s0, a4
	lw a5, 0(t2)
	lw t0, 0(t1)
	blt a5, t0, label92
	sw t0, 0(a0)
	addiw a2, s4, 1
	slt a4, s0, s4
	addiw a1, s0, 1
	ld s10, 104(sp)
	slt t0, a2, s10
	and a5, a4, t0
	bne a5, zero, label90
	j label93
.p2align 2
label1023:
	sw t0, 0(a0)
	addiw a2, a2, 1
	slt a4, a3, s4
	addiw a1, a1, 1
	ld s10, 104(sp)
	slt t0, a2, s10
	and a5, a4, t0
	beq a5, zero, label93
.p2align 2
label90:
	addi a0, a0, 4
	ld a4, 112(sp)
	sh2add t1, a2, a4
	sh2add t2, a3, a4
	lw a5, 0(t2)
	lw t0, 0(t1)
	bge a5, t0, label1023
.p2align 2
label92:
	sw a5, 0(a0)
	addiw a3, a3, 1
	addiw a1, a1, 1
	slt a4, a3, s4
	ld s10, 104(sp)
	slt t0, a2, s10
	and a5, a4, t0
	bne a5, zero, label90
label93:
	beq a4, zero, label115
	addiw a4, a3, 3
	ble s4, a4, label523
	ld a4, 112(sp)
	sh2add a0, a3, a4
.p2align 2
label100:
	sh2add a4, a1, s1
	lw a5, 0(a0)
	addiw a3, a3, 4
	addiw a1, a1, 4
	sw a5, 0(a4)
	lw t1, 4(a0)
	sw t1, 4(a4)
	lw t0, 8(a0)
	sw t0, 8(a4)
	lw a5, 12(a0)
	sw a5, 12(a4)
	ble s7, a3, label543
	addi a0, a0, 16
	j label100
label4:
	ld s10, 104(sp)
	mv a0, s4
	addw a1, s10, s4
	srliw a3, a1, 31
	add a2, a1, a3
	sraiw s11, a2, 1
	mv a1, s11
	jal merge_sort
	mv a0, s11
	mv a1, s10
	jal merge_sort
	addi a0, s11, -3
	slt a2, s11, s10
	slt a4, s4, s11
	and a1, a4, a2
	beq a1, zero, label268
	sh2add a1, s4, s1
	mv a5, s4
	mv a3, s11
	mv a2, s4
	ld a4, 112(sp)
	sh2add t2, s11, a4
	sh2add t3, s4, a4
	lw t0, 0(t3)
	lw t1, 0(t2)
	bge t0, t1, label280
.p2align 2
label11:
	sw t0, 0(a1)
	addiw a5, a5, 1
	slt a4, a5, s11
	addiw a2, a2, 1
	ld s10, 104(sp)
	slt t1, a3, s10
	and t0, a4, t1
	beq t0, zero, label17
.p2align 2
label15:
	addi a1, a1, 4
	ld a4, 112(sp)
	sh2add t2, a3, a4
	sh2add t3, a5, a4
	lw t0, 0(t3)
	lw t1, 0(t2)
	blt t0, t1, label11
	sw t1, 0(a1)
	addiw a3, a3, 1
	slt a4, a5, s11
	addiw a2, a2, 1
	ld s10, 104(sp)
	slt t1, a3, s10
	and t0, a4, t1
	bne t0, zero, label15
	j label17
label543:
	mv a0, a1
label105:
	ble s4, a3, label115
	ld a4, 112(sp)
	sh2add a1, a3, a4
	j label110
label114:
	addi a1, a1, 4
label110:
	sh2add a4, a0, s1
	lw a5, 0(a1)
	addiw a3, a3, 1
	addiw a0, a0, 1
	sw a5, 0(a4)
	bgt s4, a3, label114
	mv a1, a0
label115:
	ld s10, 104(sp)
	ble s10, a2, label117
	addiw a3, a2, 3
	ble s10, a3, label147
	sh2add a0, a1, s1
	j label142
.p2align 2
label146:
	addi a0, a0, 16
.p2align 2
label142:
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
	bgt s2, a2, label146
label147:
	ld s10, 104(sp)
	ble s10, a2, label117
	ld a4, 112(sp)
	sh2add a0, a2, a4
label151:
	sh2add a3, a1, s1
	lw a4, 0(a0)
	addiw a2, a2, 1
	addiw a1, a1, 1
	sw a4, 0(a3)
	ld s10, 104(sp)
	ble s10, a2, label117
	addi a0, a0, 4
	j label151
label117:
	ld s10, 104(sp)
	bge s0, s10, label232
	ble s10, s5, label119
	bge s6, s2, label591
	sh2add a0, s0, s1
	j label128
.p2align 2
label131:
	addi a0, a0, 64
.p2align 2
label128:
	ld a4, 112(sp)
	lw a2, 0(a0)
	sh2add a1, s0, a4
	addiw s0, s0, 16
	sw a2, 0(a1)
	lw a3, 4(a0)
	sw a3, 4(a1)
	lw a2, 8(a0)
	sw a2, 8(a1)
	lw a3, 12(a0)
	sw a3, 12(a1)
	lw a2, 16(a0)
	sw a2, 16(a1)
	lw a3, 20(a0)
	sw a3, 20(a1)
	lw a4, 24(a0)
	sw a4, 24(a1)
	lw a2, 28(a0)
	sw a2, 28(a1)
	lw a3, 32(a0)
	sw a3, 32(a1)
	lw a2, 36(a0)
	sw a2, 36(a1)
	lw a3, 40(a0)
	sw a3, 40(a1)
	lw a2, 44(a0)
	sw a2, 44(a1)
	lw a3, 48(a0)
	sw a3, 48(a1)
	lw a2, 52(a0)
	sw a2, 52(a1)
	lw a3, 56(a0)
	sw a3, 56(a1)
	lw a2, 60(a0)
	sw a2, 60(a1)
	bgt s3, s0, label131
	mv a0, s0
label132:
	ble s2, a0, label119
	sh2add a1, a0, s1
	j label136
label139:
	addi a1, a1, 16
label136:
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
	bgt s2, a0, label139
	mv s0, a0
label119:
	ld s10, 104(sp)
	ble s10, s0, label232
	sh2add a0, s0, s1
	j label122
label743:
	mv a2, a4
label169:
	beq t0, zero, label174
	addiw a4, a5, 3
	ble s9, a4, label905
	ld a4, 112(sp)
	sh2add a4, a5, a4
	j label227
label231:
	addi a4, a4, 16
label227:
	sh2add t0, a3, s1
	lw t1, 0(a4)
	addiw a5, a5, 4
	addiw a3, a3, 4
	sw t1, 0(t0)
	lw t3, 4(a4)
	sw t3, 4(t0)
	lw t2, 8(a4)
	sw t2, 8(t0)
	lw t1, 12(a4)
	sw t1, 12(t0)
	bgt a1, a5, label231
	mv t0, a3
label216:
	ble s9, a5, label174
	ld a4, 112(sp)
	sh2add a1, a5, a4
	j label221
label225:
	addi a1, a1, 4
label221:
	sh2add a3, t0, s1
	lw a4, 0(a1)
	addiw a5, a5, 1
	addiw t0, t0, 1
	sw a4, 0(a3)
	bgt s9, a5, label225
	mv a3, t0
label174:
	ble s4, a2, label192
	addiw a1, a2, 3
	ble s4, a1, label183
	ld a4, 112(sp)
	sh2add a1, a2, a4
label178:
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
	ble s7, a2, label183
	addi a1, a1, 16
	j label178
label183:
	ble s4, a2, label192
	ld a4, 112(sp)
	sh2add a1, a2, a4
label187:
	sh2add a4, a3, s1
	lw a5, 0(a1)
	addiw a2, a2, 1
	addiw a3, a3, 1
	sw a5, 0(a4)
	ble s4, a2, label192
	addi a1, a1, 4
	j label187
label192:
	bge s0, s4, label3
	ble s4, s5, label801
	ble s7, s6, label805
	sh2add a1, s0, s1
	mv a2, s0
	j label196
label199:
	addi a1, a1, 64
label196:
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
	lw t0, 20(a1)
	sw t0, 20(a3)
	lw a4, 24(a1)
	sw a4, 24(a3)
	lw a5, 28(a1)
	sw a5, 28(a3)
	lw a4, 32(a1)
	sw a4, 32(a3)
	lw a5, 36(a1)
	sw a5, 36(a3)
	lw a4, 40(a1)
	sw a4, 40(a3)
	lw t0, 44(a1)
	sw t0, 44(a3)
	lw a5, 48(a1)
	sw a5, 48(a3)
	lw a4, 52(a1)
	sw a4, 52(a3)
	lw a5, 56(a1)
	sw a5, 56(a3)
	lw a4, 60(a1)
	sw a4, 60(a3)
	bgt a0, a2, label199
	mv a1, a2
label200:
	ble s7, a1, label865
	sh2add a0, a1, s1
	j label204
label207:
	addi a0, a0, 16
label204:
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
	bgt s7, a1, label207
	mv a0, a1
label208:
	ble s4, a0, label3
	sh2add a1, a0, s1
label211:
	ld a4, 112(sp)
	lw a3, 0(a1)
	sh2add a2, a0, a4
	addiw a0, a0, 1
	sw a3, 0(a2)
	ble s4, a0, label3
	addi a1, a1, 4
	j label211
label17:
	beq a4, zero, label293
	addiw a4, a5, 3
	ble s11, a4, label298
	sh2add a1, a2, s1
	j label24
label28:
	addi a1, a1, 16
label24:
	ld a4, 112(sp)
	addiw a2, a2, 4
	sh2add t0, a5, a4
	addiw a5, a5, 4
	lw t1, 0(t0)
	sw t1, 0(a1)
	lw a4, 4(t0)
	sw a4, 4(a1)
	lw t1, 8(t0)
	sw t1, 8(a1)
	lw a4, 12(t0)
	sw a4, 12(a1)
	bgt a0, a5, label28
	mv a1, a2
label29:
	ble s11, a5, label293
	ld a4, 112(sp)
	sh2add a0, a5, a4
label34:
	sh2add a2, a1, s1
	lw a4, 0(a0)
	addiw a5, a5, 1
	addiw a1, a1, 1
	sw a4, 0(a2)
	ble s11, a5, label334
	addi a0, a0, 4
	j label34
label334:
	mv a0, a1
label39:
	ld s10, 104(sp)
	ble s10, a3, label41
	addiw a2, a3, 3
	ble s10, a2, label71
	sh2add a1, a0, s1
	j label66
label70:
	addi a1, a1, 16
label66:
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
	bgt s2, a3, label70
label71:
	ld s10, 104(sp)
	ble s10, a3, label41
	ld a4, 112(sp)
	sh2add a1, a3, a4
	j label75
label79:
	addi a1, a1, 4
label75:
	sh2add a2, a0, s1
	lw a4, 0(a1)
	addiw a3, a3, 1
	addiw a0, a0, 1
	sw a4, 0(a2)
	ld s10, 104(sp)
	bgt s10, a3, label79
label41:
	ld s10, 104(sp)
	ble s10, s4, label80
	addiw a1, s4, 3
	ble s10, a1, label347
	addiw a3, s4, 15
	ble s2, a3, label367
	ld a4, 112(sp)
	mv a1, s4
	sh2add a0, s4, a4
	j label60
label63:
	addi a0, a0, 64
label60:
	sh2add a2, a1, s1
	lw a4, 0(a2)
	addiw a1, a1, 16
	sw a4, 0(a0)
	lw a3, 4(a2)
	sw a3, 4(a0)
	lw a4, 8(a2)
	sw a4, 8(a0)
	lw a5, 12(a2)
	sw a5, 12(a0)
	lw a3, 16(a2)
	sw a3, 16(a0)
	lw a4, 20(a2)
	sw a4, 20(a0)
	lw a3, 24(a2)
	sw a3, 24(a0)
	lw a4, 28(a2)
	sw a4, 28(a0)
	lw a5, 32(a2)
	sw a5, 32(a0)
	lw a3, 36(a2)
	sw a3, 36(a0)
	lw a4, 40(a2)
	sw a4, 40(a0)
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
	bgt s3, a1, label63
	mv a2, a1
label51:
	ble s2, a2, label371
	ld a4, 112(sp)
	sh2add a0, a2, a4
	j label55
label58:
	addi a0, a0, 16
label55:
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
	bgt s2, a2, label58
	mv a0, a2
label43:
	ld s10, 104(sp)
	ble s10, a0, label80
	sh2add a1, a0, s1
	j label46
label49:
	addi a1, a1, 4
label46:
	ld a4, 112(sp)
	lw a3, 0(a1)
	sh2add a2, a0, a4
	addiw a0, a0, 1
	sw a3, 0(a2)
	ld s10, 104(sp)
	bgt s10, a0, label49
	j label80
label163:
	sw t2, 0(a2)
	addiw a4, t0, 1
	slt t0, a5, s9
	slt t2, a4, s4
	addiw a3, a3, 1
	and t1, t0, t2
	bne t1, zero, label167
	j label743
label293:
	mv a0, a2
	j label39
label280:
	sw t1, 0(a1)
	addiw a3, a3, 1
	slt a4, a5, s11
	addiw a2, a2, 1
	ld s10, 104(sp)
	slt t1, a3, s10
	and t0, a4, t1
	bne t0, zero, label15
	j label17
label367:
	mv a2, s4
	mv a1, zero
	j label51
label347:
	mv a0, s4
	j label43
label298:
	mv a1, a2
	mv a2, zero
	j label29
label723:
	mv a5, s0
	mv a2, s9
	mv a3, s0
	j label169
label865:
	mv a0, a2
	j label208
label805:
	mv a1, s0
	mv a2, zero
	j label200
label801:
	mv a0, s0
	j label208
label371:
	mv a0, a1
	j label43
label493:
	mv a4, s8
	mv a3, s0
	mv a2, s4
	mv a1, s0
	j label93
label523:
	mv a0, a1
	mv a1, zero
	j label105
label905:
	mv t0, a3
	mv a3, zero
	j label216
label591:
	mv a0, s0
	mv s0, zero
	j label132
label268:
	mv a5, s4
	mv a3, s11
	mv a2, s4
	j label17
.p2align 2
.globl main
main:
	addi sp, sp, -16
pcrel1090:
	auipc a1, %pcrel_hi(buf)
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel1090)
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
